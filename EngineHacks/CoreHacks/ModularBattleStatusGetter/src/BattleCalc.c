#include "gbafe.h"
#include "StrMagCha.h"

#include "BattleCalc.h"


static int Bts_CalcLoop(BattleUnit* atk,  BattleUnit* def, BTSfunc* table){
	int result = 0;

	while(*table)
		result += (*table++)(atk,def);
	return result;
}


static int CheckAttackRes(BattleUnit* bu){
	u32 isMag = IA_MAGIC | IA_MAGICDAMAGE | IA_STAFF;
	return bu->weaponAttributes & isMag;
}

static int CheckLuna(BattleUnit* bu)
{	return (bu->weaponAttributes & IA_NEGATE_DEFENSE); }



// CalcLoop
void Calc_FillPreBattleStats(BattleUnit* attacker, BattleUnit* defender){
	BTCLoopFunc* it = gpBTPreLoopTable;
	while(*it)
		(*it++)( attacker, defender);
}









// Modular Battle Status Getter
void BC_Atk(BattleUnit* attacker, BattleUnit* defender){
	s16 base = 0;
	s16 bonus = 0;
	u16 wpn = 0;
	
	if( FALSE == CheckAttackRes(attacker) )
	{
		base = attacker->unit.pow;
		bonus = Bts_CalcLoop(attacker,defender,gpBuStrCalcTable);	// Mod
	}
	else
	{
		base = *GetMagAt((Unit*)attacker);
		bonus = Bts_CalcLoop(attacker,defender,gpBuMagCalcTable);
	}
	
	wpn = attacker->weapon;
	bonus += GetItemMight(wpn) + attacker->wTriangleDmgBonus;
	
	// Minus zero
	if( bonus < 0 )
		bonus = 0;
	
	if( IsItemEffectiveAgainst(wpn,defender) )
		bonus = bonus*3;
	
	attacker->battleAttack = base + bonus;
	return;
}



void BC_ASpd(BattleUnit* attacker, BattleUnit* defender){
	
	s8 as = attacker->battleSpeed;
	s8 wt = GetItemWeight( attacker->weapon );
	s8 strFloor = attacker->unit.pow/5;
	
	if( strFloor < wt )
		as -= wt - attacker->unit.pow;
	
	// Modular
	as += Bts_CalcLoop(attacker,defender,gpBuASCalcTable);
	
	// Minus zero
	if( as < 0 )
		as = 0;
	
	// return;
	attacker->battleSpeed = as;
}


// Phy: Hit = Weapon Hit + unit.skl + (skill+support+Battlion)
// Mag: Hit = Weapon Hit + (unit.skl+unit.spd)/2 + (skill+support+Battlion)
void BC_Hit(BattleUnit* attacker, BattleUnit* defender){
	s16 base = 0;
	s16 bonus = 0;
	s16 result = 0;
	
	if( FALSE == CheckAttackRes(attacker) )
		base = attacker->unit.skl;
	else
		base = ( attacker->unit.skl + attacker->unit.lck )/2;
	
	bonus = GetItemHit( attacker->weapon );
	
	// Modular
	result = base + bonus + Bts_CalcLoop(attacker,defender,gpBuHitCalcTable);
	
	// Minus zero
	if( result < 0 )
		result = 0;
	
	// return
	attacker->battleHitRate = result;
}



// Avo = unit.spd - [weight - floor(unit.pow/5)] + fix
void BC_Avo(BattleUnit* attacker, BattleUnit* defender){
	s16 base = 0;
	s16 debuff = 0;
	s16 result = 0;
	s8 wt = GetItemWeight( attacker->weapon );
	s8 strFloor = attacker->unit.pow/5;
	
	base = attacker->unit.spd;
	
	if( wt > strFloor )
		debuff = wt - strFloor;
	
	result = base - debuff + attacker->terrainAvoid;
	
	// Modular
	result += Bts_CalcLoop(attacker,defender,gpBuAvoCalcTable);
	
	// Minus zero
	if( result < 0 )
		result = 0;
	
	attacker->battleAvoidRate = result;
}



// Crit = Weapon Hit + (skl+lck)/2
void BC_Crit(BattleUnit* attacker, BattleUnit* defender){
	
	s16 crit = 
		GetItemCrit(attacker->weapon) + 
		(attacker->unit.skl + attacker->unit.lck)/2 +
		Bts_CalcLoop(attacker,defender,gpBuCritCalcTable);	// Modular
	
	// Minus zero
	if( crit < 0 )
		crit = 0;
	
	attacker->battleCritRate = crit;
}





// Doge = lck
void BC_Dodge(BattleUnit* attacker, BattleUnit* defender){

	// Modular
	s16 dodge = 
		attacker->unit.lck + 
		Bts_CalcLoop(attacker,defender,gpBuDodgeCalcTable);
	
	// Minus Zero
	if( dodge < 0 )
		dodge = 0;
	
	attacker->battleDodgeRate = dodge;
}




void BC_DefRes(BattleUnit* attacker, BattleUnit* defender){
	s16 defres = 0;
	s16 resBonus = 0;
	s16 defBonus = 0;
	
	// Modualr
	if( FALSE == CheckLuna(defender) )
	{
		defBonus = Bts_CalcLoop(attacker,defender,gpBuDefCalcTable);
		resBonus = Bts_CalcLoop(attacker,defender,gpBuResCalcTable);
	}
	
	if( FALSE == CheckAttackRes(defender) )
		defres = attacker->unit.def + attacker->terrainDefense + defBonus;
	else
		defres = attacker->unit.res + attacker->terrainResistance + resBonus;
	
	
	// Minus Zero
	if( defres < 0 )
		defres = 0;
	
	attacker->battleDefense = defres;
}