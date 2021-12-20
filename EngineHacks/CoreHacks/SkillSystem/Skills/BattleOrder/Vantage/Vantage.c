#include "gbafe.h"
#include "SkillSystem.h"
#include "StatusGetter.h"

extern u8 VantageID;
extern u8 VantageBattalionID;

// 伏
int Vantage(BattleUnit* bu){
	
	// Cause BattleUnit's Hp may change
	Unit* unit = unit = GetUnit(bu->unit.index);
	
	if( &gBattleTarget == bu )
		if( (*SkillTesterBuTar)(bu,VantageID) )
			if( GetHpCur(unit) < GetHpMax(unit)/2 )
				return TRUE;

	return FALSE;
}

int VantageBattalion(BattleUnit* bu){
	
	if( &gBattleTarget == bu )
		if( (*SkillTesterBuTar)(bu,VantageBattalionID) )
			return TRUE;
	
	return FALSE;
}
