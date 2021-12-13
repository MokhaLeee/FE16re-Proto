#include "gbafe.h"
#include "StrMagCha.h"

#include "BattleCalc.h"


static s16 Bts_CalcLoop(BattleUnit* atk,  BattleUnit* def, BTSfunc* table){
	s16 result = 0;

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
void BC_OnInit(BattleUnit* attacker, BattleUnit* defender){
	attacker->battleAttack = 0;
	attacker->battleDefense = 0;
	attacker->battleSpeed = 0;
	attacker->battleHitRate = 0;
	attacker->battleAvoidRate = 0;
	attacker->battleCritRate = 0;
	attacker->battleDodgeRate = 0;
	// attacker->battleEffectiveHitRate = 0;
	// attacker->battleEffectiveCritRate = 0;
	// attacker->battleSilencerRate = 0;
}


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
	bonus += attacker->battleAttack;
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
	as += attacker->battleSpeed;
	if( as < 0 )
		as = 0;
	
	// return;
	attacker->battleSpeed = as;
}


// Phy: Hit = Weapon Hit + unit.skl + (skill+support+Battlion)
// Mag: Hit = Weapon Hit + (unit.skl+unit.spd)/2 + (skill+support+Battlion)
void BC_Hit(BattleUnit* attacker, BattleUnit* defender){
	s16 base, bonus, hit;
	
	if( FALSE == CheckAttackRes(attacker) )
		base = attacker->unit.skl;
	else
		base = ( attacker->unit.skl + attacker->unit.lck )/2;
	
	bonus = GetItemHit( attacker->weapon );
	
	// Modular
	hit = base + bonus + Bts_CalcLoop(attacker,defender,gpBuHitCalcTable);
	
	// Minus zero
	hit += attacker->battleHitRate;
	if( hit < 0 )
		hit = 0;
	
	// return
	attacker->battleHitRate = hit;
}



// Avo = unit.spd - [weight - floor(unit.pow/5)] + fix
void BC_Avo(BattleUnit* attacker, BattleUnit* defender){
	s16 base,debuff,avo;
	
	s8 wt = GetItemWeight( attacker->weapon );
	s8 strFloor = attacker->unit.pow/5;
	
	base = attacker->unit.spd;
	
	if( wt > strFloor )
		debuff = wt - strFloor;
	else
		debuff = 0;
	
	avo = base - debuff + attacker->terrainAvoid;
	
	// Modular
	avo += Bts_CalcLoop(attacker,defender,gpBuAvoCalcTable);
	
	// Minus zero
	avo += attacker->battleAvoidRate;
	if( avo < 0 )
		avo = 0;
	
	attacker->battleAvoidRate = avo;
}



// Crit = Weapon Hit + (skl+lck)/2
void BC_Crit(BattleUnit* attacker, BattleUnit* defender){
	
	s16 crit = 
		GetItemCrit(attacker->weapon) + 
		(attacker->unit.skl + attacker->unit.lck)/2 +
		Bts_CalcLoop(attacker,defender,gpBuCritCalcTable);	// Modular
	
	// Minus zero
	crit += attacker->battleCritRate;
	if( crit < 0 )
		crit = 0;
	
	attacker->battleCritRate = crit;
}





// Doge = lck
void BC_Dodge(BattleUnit* attacker, BattleUnit* defender){

	// Modular
	attacker->battleDodgeRate +=
		attacker->unit.lck + 
		Bts_CalcLoop(attacker,defender,gpBuDodgeCalcTable);
	
	// Minus Zero
	if( attacker->battleDodgeRate < 0 )
		attacker->battleDodgeRate = 0;

}




void BC_DefRes(BattleUnit* attacker, BattleUnit* defender){
	
	// If Luna = defender Weapon, return 0
	if( CheckLuna(defender) )
	{
		attacker->battleDefense = 0;
		return;
	}
	
	// On Calc
	if( !CheckAttackRes(defender) )
		attacker->battleDefense +=
			attacker->unit.def +
			attacker->terrainDefense +
			Bts_CalcLoop(attacker,defender,gpBuDefCalcTable);
	else
		attacker->battleDefense +=
			attacker->unit.res +
			attacker->terrainResistance +
			Bts_CalcLoop(attacker,defender,gpBuResCalcTable);
	
	// Minus Zero
	if( attacker->battleDefense < 0 )
		attacker->battleDefense = 0;

}