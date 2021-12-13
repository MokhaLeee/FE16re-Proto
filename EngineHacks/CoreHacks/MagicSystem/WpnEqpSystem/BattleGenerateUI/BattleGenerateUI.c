#include "gbafe.h"
#include "MagicSystem.h"
#include "UnitExt.h"


static void null_BattleAtk(){
	gBattleActor.battleAttack = 0xFF;
	gBattleActor.battleHitRate = 0xFF;
	gBattleActor.battleCritRate = 0xFF;
}

// 2A400
void new_BattleGenerateUiStats(struct Unit* unit, s8 itemSlot) 
{
	u16 wpn;
//	UnitExt* ext;
	
	gBattleStats.config = BATTLE_CONFIG_BIT2;

	if ((itemSlot >= 0) && (itemSlot < UNIT_ITEM_COUNT)) 
	{
		struct Unit tmpUnit = *unit;

		EquipUnitItemSlot(&tmpUnit, itemSlot);
		itemSlot = 0;

		InitBattleUnit(&gBattleActor, &tmpUnit);
	} else
		InitBattleUnit(&gBattleActor, unit);


	SetBattleUnitTerrainBonusesAuto(&gBattleActor);

	// <!> now here is replaced as newSetBattleUnitWeapon
	SetBattleUnitWeapon(&gBattleActor, itemSlot);

//	ext = GetUnitExtByCharID(UNIT_CHARIDunit);
//	if( ext )
//		if( 0 == ext->WpnEqp )
//			SetWpnEqpAuto(unit);

	FillPreBattleStats(&gBattleActor, &gBattleTarget);

	wpn = gBattleActor.weapon;

	if (!wpn) 
		null_BattleAtk();

	if (GetItemWeaponEffect(wpn) == WPN_EFFECT_HPHALVE)
		gBattleActor.battleAttack = 0xFF;

	// new for weapon system
	if( IsItemWhiteMagic(wpn) )
		null_BattleAtk();
	
}

