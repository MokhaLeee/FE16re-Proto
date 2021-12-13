#include "gbafe.h"
#include "UnitExt.h"
#include "CombatArt.h"
#include "Common.h"

// in StatusGetter->RangeGetter
s8 Apply_CombatArt_RangeBonus(Unit* unit, u16 item)
{
	if( gpBattleFlagSu->isCombat )
		if( unit->index == gpBattleFlagSu->ActorId )
			return GetCS_RangeBonus(gpBattleFlagSu->artId);
	return 0;
}



// in Pre-Battle Calc
s16 Apply_CombatArt_MtBonus(BattleUnit* actor, BattleUnit* target){
	if( gpBattleFlagSu->isCombat )
	if( &gBattleActor == actor )
	if( actor->unit.index == gpBattleFlagSu->ActorId )
		return GetCS_mtBonus(gpBattleFlagSu->artId);
	return 0;
}

s16 Apply_CombatArt_HitBonus(BattleUnit* actor, BattleUnit* target){
	if( gpBattleFlagSu->isCombat )
	if( &gBattleActor == actor )
	if( actor->unit.index == gpBattleFlagSu->ActorId )
		return GetCS_hitBonus(gpBattleFlagSu->artId);
	return 0;
}

s16 Apply_CombatArt_AvoBonus(BattleUnit* actor, BattleUnit* target){
	if( gpBattleFlagSu->isCombat )
	if( &gBattleActor == actor )
	if( actor->unit.index == gpBattleFlagSu->ActorId )
		return GetCS_avoBonus(gpBattleFlagSu->artId);
	return 0;
}


s16 Apply_CombatArt_CritBonus(BattleUnit* actor, BattleUnit* target){
	if( gpBattleFlagSu->isCombat )
	if( &gBattleActor == actor )
	if( actor->unit.index == gpBattleFlagSu->ActorId )
		return GetCS_CritBonus(gpBattleFlagSu->artId);
	return 0;
}


// in Check Double
int nullDouble_CombatArt(BattleUnit* bu){
	if( &gBattleActor == bu )
	if( gpBattleFlagSu->isCombat )
	if( bu->unit.index == gpBattleFlagSu->ActorId )
		return TRUE;
	return FALSE;
}
