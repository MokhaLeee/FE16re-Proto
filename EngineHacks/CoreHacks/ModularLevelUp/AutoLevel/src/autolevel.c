#include "gbafe.h"
#include "StrMagCha.h"
#include "ModularLu.h"

void MagCha_AutolevelCore_ByClass(Unit* unit, int level){
	u8 CharID = unit->pClassData->number;
	
	*GetMagAt(unit) +=
		GetAutoleveledStatIncrease(gpClassMagicTable[CharID].Growth,level);
	*GetChaAt(unit) +=
		GetAutoleveledStatIncrease(gpClassCharmTable[CharID].Growth,level);
}
