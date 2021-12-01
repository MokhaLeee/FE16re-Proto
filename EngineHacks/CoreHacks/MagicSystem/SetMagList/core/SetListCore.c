#include "gbafe.h"
#include "MagicSystem.h"
#include "UnitExt.h"
#include "MagList.h"

/* 
static void SetBMag(u8* at, u8 use){
	*at = (*at&0xF0) | (use&0xF);
}

static void SetWMag(u8* at, u8 use){	// 留黑色
	*at = (*at&0xF) | ((use&0xF)<<4);
} */


// 0=no, 1=yeah, 2=No ext
int isUnitMagSet(UnitExt* ext){
	return ext->mlist.isSet; 
}




/* 
static int ResetUnitMagic(UnitExt* ext){
	ext->mlist.isSet = 1; 
	for(int i=0; i<0xF; i++)
	{
		SetBMag( &ext->mlist.m[i], 5 );
		SetWMag( &ext->mlist.m[i], 5 );
	}
		
	return TRUE;
} */


// On Chapter Init
void ResetUnitsMagic(void){
	for(int i=0; i<UNIT_EXT_CNT; i++)
		if( UNIT_IS_VALID(GetUnitByCharId(i)) )
			//ResetUnitMagic(GetUnitExtByCharId(i));
			SetUnitMagList(GetUnitByCharId(i));
}


// W.I.P.
int isBMagListEmpty(UnitExt* ext){
	if( !isUnitMagSet(ext) )
		SetUnitMagList(GetUnitByExt(ext));
	
	for(int i=0; i<MAGIC_LIST_SIZE; i++)
		if( 0 != GET_B_MAG(ext->mlist.m[i]) )
			return FALSE;
	
	return TRUE;
}

int isWMagListEmpty(UnitExt* ext){
	int cnt = 0;
	
	if( isUnitMagSet(ext) )
		SetUnitMagList(GetUnitByExt(ext));
	
	for(int i=0; i<MAGIC_LIST_SIZE; i++)
		cnt += (0 == GET_W_MAG(ext->mlist.m[i]) );
	
	return ( 0==cnt );
}
