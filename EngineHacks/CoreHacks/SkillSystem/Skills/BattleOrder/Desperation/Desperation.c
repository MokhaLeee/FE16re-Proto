#include "gbafe.h"
#include "SkillSystem.h"

extern u8 DesperationID;
extern u8 DesperationBattalionID;

// 猛攻
int Desperation(BattleUnit* bu){
	if( &gBattleTarget != bu )
		return FALSE;
	
	if( bu->unit.curHP > (bu->unit.maxHP/2) )
		return FALSE;
	
	if( (*SkillTester)(&bu->unit,DesperationID) )
		return TRUE;
	else
		return FALSE;
}

int DesperationBattalion(BattleUnit* bu){
	
	if( (*SkillTester)(&bu->unit,DesperationBattalionID) )
		return TRUE;
	else
		return FALSE;
}
