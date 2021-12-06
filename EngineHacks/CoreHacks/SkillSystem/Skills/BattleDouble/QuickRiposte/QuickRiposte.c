#include "gbafe.h"
#include "SkillSystem.h"

extern u8 QuickRiposteID;

// 回击
int QuickRiposte(BattleUnit* bu){
	if( &gBattleTarget != bu )
		return FALSE;
	
	if( bu->unit.curHP < (bu->unit.maxHP/2) )
		return FALSE;
	
	if( (*SkillTester)(&bu->unit,QuickRiposteID) )
		return TRUE;
	else
		return FALSE;
}
