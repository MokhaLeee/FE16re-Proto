#include "gbafe.h"
#include "SkillSystem.h"
#include "StatusGetter.h"

extern u8 QuickRiposteID;

// 回击
int QuickRiposte(BattleUnit* bu){
	
	Unit* unit = GetUnit(bu->unit.index);
	
	if( &gBattleTarget != bu )
		return FALSE;
	
	if( GetHpCur(unit) < (GetHpMax(unit)/2) )
		return FALSE;
	
	if( (*SkillTester)(unit,QuickRiposteID) )
		return TRUE;
	else
		return FALSE;
}
