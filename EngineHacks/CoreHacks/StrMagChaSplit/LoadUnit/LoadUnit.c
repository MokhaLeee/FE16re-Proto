#include "gbafe.h"
#include "StrMagCha.h"

// Hacked From 17E38
void LoadUnitStats_MagCha(Unit* unit, CharacterData* RomChar){
	u8 CharID = unit->pCharacterData->number;
	u8 ClassID= unit->pClassData->number;
	
	*GetMagAt(unit) = 
		gpUnitMagicTable[CharID].Base +
		gpClassMagicTable[ClassID].Base;
	
	*GetChaAt(unit) = 
		gpUnitCharmTable[CharID].Base +
		gpClassCharmTable[ClassID].Base;
		
	unit->curHP = 
		unit->pCharacterData->baseHP + 
		unit->pClassData->baseHP;
		
	unit->maxHP = 
		unit->pCharacterData->baseHP + 
		unit->pClassData->baseHP;
}