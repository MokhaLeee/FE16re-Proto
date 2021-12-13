#include "gbafe.h"
#include "StrMagCha.h"

void UnitToBattle_StatUpClear(BattleUnit* bu, Unit* unit){
	*GetBu_ChangeMagAt(bu) = 0;
	return;
}


void UnitToBattle_SetMagCha(BattleUnit* bu, Unit* unit){
	*GetMagAt((Unit*)bu) = *GetMagAt(unit);
	*GetChaAt((Unit*)bu) = *GetChaAt(unit);
}



void BattleToUnit_SaveMagCha(Unit* unit, BattleUnit* bu){
	*GetMagAt(unit) += *GetBu_ChangeMagAt(bu);
	*GetChaAt(unit) += *GetBu_ChangeChaAt(bu);
	return;
}
