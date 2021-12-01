#include "gbafe.h"
#include "StrMagCha.h"

void UnitToBattle_StatUpClear(BattleUnit* bu, Unit* unit){
	*GetBu_ChangeMagAt(bu) = 0;
	*GetBu_ChangeChaAt(bu) = 0;
}


void UnitToBattle_SetMagCha(BattleUnit* bu, Unit* unit){
	*GetMagAt((Unit*)bu) = *GetMagAt(unit);
	*GetChaAt((Unit*)bu) = *GetChaAt(unit);
}

void BattleToUnit_SaveMagCha(BattleUnit* bu, Unit* unit){
	*GetMagAt(unit) = *GetMagAt((Unit*)bu);
	*GetChaAt(unit) = *GetChaAt((Unit*)bu);
}
