#include "gbafe.h"
#include "SkillSystem.h"

extern u8 VantageID;
extern u8 VantageBattalionID;

// 伏
int Vantage(BattleUnit* bu){
	if( &gBattleTarget != bu )
		return FALSE;
	
	if( bu->unit.curHP > (bu->unit.maxHP/2) )
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
