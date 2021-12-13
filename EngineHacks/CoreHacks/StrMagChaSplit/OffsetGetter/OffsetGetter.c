#include "gbafe.h"
#include "StrMagCha.h"

s8* GetMagAt(Unit* unit){
	return ( (s8*)unit + 0x3A );
}

s8* GetChaAt(Unit* unit){
	return ( (s8*)unit + 0x3B );
}



s8* GetBu_ChangeMagAt(struct BattleUnit* bu){
	return &bu->changeCon;
}
s8* GetBu_ChangeChaAt(struct BattleUnit* bu){
	return ( (s8*)bu + 0x7F );
}



s8 GetClassMaxMag(Unit* unit){
	return gpClassMagicTable[unit->pClassData->number].Cap;
}
s8 GetClassMaxCha(Unit* unit){
	return gpClassCharmTable[unit->pClassData->number].Cap;
}


