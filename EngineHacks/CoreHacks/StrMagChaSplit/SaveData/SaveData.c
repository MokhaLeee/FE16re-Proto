#include "gbafe.h"
#include "StrMagCha.h"


void MsaSave_MagCha(void* dest, unsigned size){
	
	u8* DestCur = dest;
	
	for( u8 i=1; i<0x3F; i++  )
	{
		Unit* unit = GetUnit(i);
		if( NULL == unit )
			continue;
		
		WriteAndVerifySramFast( GetMagAt(unit), DestCur++, 1);
		WriteAndVerifySramFast( GetChaAt(unit), DestCur++, 1);
	}
	return;
}


void MsaLoad_MagCha(void* src, unsigned size){
	u8* SrcCur = src;
	
	for( u8 i=1; i<0x3F; i++  )
	{
		Unit* unit = GetUnit(i);
		if( NULL == unit )
			continue;
		
		(*ReadSramFast)(SrcCur++, GetMagAt(unit), 1);
		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	}
	return;
}




void MsuSave_MagCha(void* dest, unsigned size){
	
	u8* DestCur = dest;
	
	for( u8 i=1; i<0xC8; i++  )
	{
		Unit* unit = GetUnit(i);
		if( NULL == unit )
			continue;
		
		WriteAndVerifySramFast( GetMagAt(unit), DestCur++, 1);
		WriteAndVerifySramFast( GetChaAt(unit), DestCur++, 1);
	}
	return;
}


void MsuLoad_MagCha(void* src, unsigned size){
	u8* SrcCur = src;
	
	for( u8 i=1; i<0xC8; i++  )
	{
		Unit* unit = GetUnit(i);
		if( NULL == unit )
			continue;
		
		(*ReadSramFast)(SrcCur++, GetMagAt(unit), 1);
		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	}
	return;
}








