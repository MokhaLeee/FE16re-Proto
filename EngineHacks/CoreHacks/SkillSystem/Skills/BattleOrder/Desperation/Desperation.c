#include "gbafe.h"
#include "SkillSystem.h"
#include "StatusGetter.h"

extern u8 DesperationID;
extern u8 DesperationBattalionID;

// 猛攻
int Desperation(BattleUnit* bu){
	
	Unit* unit = GetUnit(bu->unit.index);
	
	if( &gBattleTarget != bu )
		return FALSE;
	
	if( GetHpCur(unit) > GetHpMax(unit) )
		return FALSE;

	if( (*SkillTester)(unit,DesperationID) )
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
