#include "gbafe.h"
#include "SkillSystem.h"
#include "StatusGetter.h"

extern u8 VantageID;
extern u8 VantageBattalionID;

// 伏
int Vantage(BattleUnit* bu){
	
	Unit* unit = GetUnit(bu->unit.index);
	
	if( &gBattleTarget != bu )
		return FALSE;
	
	if( GetHpCur(unit) > GetHpMax(unit) )
		return FALSE;
	
	if( (*SkillTester)(&bu->unit,VantageID) )
		return TRUE;
	else
		return FALSE;
}

int VantageBattalion(BattleUnit* bu){
	
	if( (*SkillTester)(&bu->unit,VantageBattalionID) )
		return TRUE;
	else
		return FALSE;
}
