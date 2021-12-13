#include "UnitExt.h"
#include "gbafe.h"


// Mod Save
void UnitExt_SaveSu(void* dest, unsigned size){
	WriteAndVerifySramFast( (const u8*)gpUnitExtData, dest, size);
	return;
}

void UnitExt_LoadSu(const void* src, unsigned size){
	(*ReadSramFast)(src, gpUnitExtData, size);
	return;
}




void UnitExt_SaveSa(void* dest, unsigned size){
	//Totally UNIT_EXT_CNT * UNIT_EXT_SIZE_SA = 0x430
	UnitExt* cur = gpUnitExtData;
	
	for(int i=0; i<UNIT_EXT_CNT; i++)
		WriteAndVerifySramFast( cur++, dest, UNIT_EXT_SIZE_SA);
	
	return;
}


void UnitExt_LoadSa(const void* src, unsigned size){
	//Totally UNIT_EXT_CNT * UNIT_EXT_SIZE_SA = 0x430
	UnitExt* cur = gpUnitExtData;
	for(int i=0; i<UNIT_EXT_CNT; i++)
		(*ReadSramFast)(cur, gpUnitExtData, UNIT_EXT_SIZE_SA);
	return;
}
