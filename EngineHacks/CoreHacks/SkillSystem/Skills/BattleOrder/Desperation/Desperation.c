#include "gbafe.h"
#include "SkillSystem.h"
#include "StatusGetter.h"

extern u8 DesperationID;
extern u8 DesperationBattalionID;

// 猛攻
int Desperation(BattleUnit* bu){

	// Cause BattleUnit's Hp may change
	Unit* unit = GetUnit(bu->unit.index);
	
	if( &gBattleTarget == bu )
		if( (*SkillTesterBuAct)(bu,DesperationID) )
			if( GetHpCur(unit) < GetHpMax(unit)/2 )
				return TRUE;

	return FALSE;
}

int DesperationBattalion(BattleUnit* bu){
	
	if( &gBattleActor == bu )
		if( (*SkillTesterBuAct)(bu,DesperationBattalionID) )
			return TRUE;
	
	return FALSE;
}
