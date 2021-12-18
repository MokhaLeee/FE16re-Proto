#include "gbafe.h"
#include "StatusGetter.h"

typedef int (*NoJugRangeFunc) (BattleUnit*);
extern NoJugRangeFunc* gpNoJugRangeFuncs;	// 不判定距离则为真

typedef int (*NullCounterFunc) (void);
extern NullCounterFunc* gpNullCounterFuncs;

// =============================
// =========== basic ===========
// =============================
static int isUnitAlly(Unit* unit){
	if( unit->index < 0x40 )
		return TRUE;
	else
		return FALSE;
}


static void CanNotCounter(BattleUnit* bu){
	bu->weapon = 0;
	bu->canCounter = FALSE;
}









// =============================
// =========== main ===========
// =============================

// 判定距离
static int NotShouldJudgeRangeCalc(BattleUnit* bu){
	for(int i=0; 0 != gpNoJugRangeFuncs[i]; i++)
		if( gpNoJugRangeFuncs[i](bu) )
			return TRUE;
	return FALSE;
}


// 强行不可还击
static int NullCounterCalc(void){
		for(int i=0; 0 != gpNullCounterFuncs[i]; i++)
		if( gpNullCounterFuncs[i]() )
			return TRUE;
	return FALSE;
}

static int CanItemReachRange(BattleUnit* bu, u16 item, u8 range ){
	return !( GetRngMax(item,&bu->unit) < range) ;
}



// ORG
void ModularCheckCanCounter(BattleUnit* bu){
		
	// it will check some caces in SetupWeapon-process
	if( FALSE == bu->canCounter )
	{
		CanNotCounter(bu);
		return;
	}
	
	
	// ======================================
	// ======= Vanilla ORG 0x802A8BC ========
	// ======================================
	
	// 此时已经判定过BU_ISLOT_AUTO的情况
	// 因此weaponSlotIndex还是0xFF的话
	// 就说明角色真的没有装备武器
	// 黑白魔法也会提前设定成 BU_ISLOT_BMAG BU_ISLOT_WMAG
	if( 0xFF == bu->weaponSlotIndex ){
		CanNotCounter(bu);
		return;
	}
	
	// On Status
	switch (bu->unit.statusIndex)
	{
		case UNIT_STATUS_SLEEP:
		case UNIT_STATUS_PETRIFY:
		case UNIT_STATUS_13:
			CanNotCounter(bu);
			return;
			break;
	} // switch (bu->unit.statusIndex)
	
	
	
	// 判定距离
	if( !NotShouldJudgeRangeCalc(bu) )
		if( !CanItemReachRange(bu,bu->weapon,gBattleStats.range) ){
			CanNotCounter(bu);
			return;
		}
		
			
		
	
	
	// ======================================
	// ======= Check for Target only ========
	// ======================================
	if( &gBattleActor == bu )
		return;
	
	// Target cannot counter if either units are using "uncounterable" weapons
    if ((gBattleActor.weaponAttributes | gBattleTarget.weaponAttributes) & IA_UNCOUNTERABLE){
		CanNotCounter(bu);
		return;
	}
	
	// Target cannot counter if a berserked player unit is attacking another player unit
    if (gBattleActor.unit.statusIndex == UNIT_STATUS_BERSERK){
        if ( isUnitAlly(&gBattleActor.unit) & isUnitAlly(&gBattleTarget.unit) )
		{
			CanNotCounter(bu);
			return;
		}
	}
	
	// 判定风扫等
	if( TRUE == NullCounterCalc() )
	{
		CanNotCounter(bu);
		return;
	}
}