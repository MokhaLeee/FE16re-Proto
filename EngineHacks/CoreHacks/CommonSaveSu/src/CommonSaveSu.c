#include "gbafe.h"
#include "Common.h"

extern u8* gpCommonSaveSu;

void Reset_CommonSaveSu(void){
	for(u8 i=0; i<0x41; i++)
		gpCommonSaveSu[i] = 0;
}


void MsuSave_Conmon(void* dest, unsigned size){
	WriteAndVerifySramFast( (const u8*)gpCommonSaveSu, dest, size);
	return;
}


void MsuLoad_Common(const void* src, unsigned size){
	(*ReadSramFast)(src, gpCommonSaveSu, size);
	return;
}
