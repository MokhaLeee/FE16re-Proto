#include "gbafe.h"
#include "MagicSystem.h"
#include "UnitExt.h"

static inline void SetBMag(u8* at, u8 use){
	*at = (*at&0xF0) | (use&0xF);
}

static inline void SetWMag(u8* at, u8 use){	// 留黑色
	*at = (*at&0xF) | ((use&0xF)<<4);
}


// 0=no, 1=yeah, 2=No ext
int isUnitMagSet(UnitExt* ext){
	return ext->mlist.stat && MAG_IS_SET;
}


// W.I.P.
static int ResetUnitMagicCore(UnitExt* ext){
	ext->mlist.stat |= MAG_IS_SET;
	for(int i=0; i<0xF; i++)
	{
		SetBMag( &ext->mlist.m[i], 5 );
		SetWMag( &ext->mlist.m[i], 5 );
	}
		
	return TRUE;
}


// W.I.P. On Chapter Init
void ResetUnitsMagic(void){
	UnitExt* cur = gpUnitExtData;
	
	for(int i=0; i<UNIT_EXT_CNT; i++)
		ResetUnitMagicCore(cur++);
}


// W.I.P.
int isBMagListEmpty(UnitExt* ext){
	int cnt = 0;
	
	if( isUnitMagSet(ext) )
		ResetUnitMagicCore(ext);
	for(int i=0; i<0xF; i++)
		cnt += (0 == GET_B_MAG(ext->mlist.m[i]) );
	
	return ( 0==cnt );
}

