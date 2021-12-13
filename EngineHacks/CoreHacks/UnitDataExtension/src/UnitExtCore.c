#include "UnitExt.h"


// Gets Func
int UnitHasExt(Unit* unit){
	return ( UNIT_CHARID(unit) < UNIT_EXT_CNT );
}

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


u8 GetCharIdByExt(const UnitExt* ext){	
	for(int i=0; i<UNIT_EXT_CNT; i++)
		if( ext == &gpUnitExtData[i] )
			return i;
	return 0;
}

Unit* GetUnitByExt(const UnitExt* ext){
	u8 charId = GetCharIdByExt(ext);
	if( 0 != charId )
		return GetUnitByCharId(charId);
	else
		return NULL;
}

// Core
void ClearAllUnitExtSpace(void){
	for(int i=0; i<UNIT_EXT_SIZEMAX_SU; i++)
		*( i+ (u8*)gpUnitExtData ) = 0;
}


// W.I.P.
void UnitExtReset(Unit* unit){
	
	UnitExt* ext = GetUnitExt(UNIT_CHARID(unit));
	
	if( NULL == ext )
		return;
	
	// W.I.P
	
	// Wpn Eqp
	ext->WpnEqp = 0;
	
	// Combat Art
	for(int i=0; i < MAX_SIZE_COMBATART; i++)
		ext->skillbattle[i] = 0;

	// Skills
	for(int i=0; i < MAX_SIZE_SIKLL; i++)
		ext->skills[i] = 0;
	
	return;
}