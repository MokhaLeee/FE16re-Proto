#include "UnitExt.h"

// Gets Func
UnitExt* GetUnitExtByCharID(u8 number){
	if( number > UNIT_EXT_CNT )
		return NULL;
	else
		return &gpUnitExtData[number];
}

UnitExt* GetUnitExt(u8 index){
	return GetUnitExtByCharID( GetUnit(index)->pCharacterData->number );
}

UnitExt* GetUnitExtByUnit(Unit* unit){
	return GetUnitExtByCharID( unit->pCharacterData->number );
}





// Core
void UnitExtReset(void){
	for(int i=0; i<UNIT_EXT_SIZEMAX_SU; i++)
		*( i+ (u8*)gpUnitExtData ) = 0;
}
