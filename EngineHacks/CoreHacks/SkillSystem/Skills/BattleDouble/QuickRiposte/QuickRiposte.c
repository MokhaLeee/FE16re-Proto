#include "gbafe.h"
#include "SkillSystem.h"
#include "StatusGetter.h"

extern u8 QuickRiposteID;

// 回击
int QuickRiposte(BattleUnit* bu){
	
	// Cause BattleUnit's Hp may change
	Unit* unit = GetUnit(bu->unit.index);
	
	if( &gBattleTarget == bu )
		if( (*SkillTesterBuTar)(bu,QuickRiposteID) )
			if( GetHpCur(unit) > (GetHpMax(unit)/2) )
				return TRUE;

	return FALSE;
}
