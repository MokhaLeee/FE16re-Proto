#include "gbafe.h"
#include "MagicSystem.h"
#include "UnitExt.h"

static void SetBMag(u8* at, u8 use){
	*at = (*at&0xF0) | (use&0xF);
}

static void SetWMag(u8* at, u8 use){	// 留黑色
	*at = (*at&0xF) | ((use&0xF)<<4);
}



u8 GetBMagOffset(u16 item){
	int i=0;
	for(i=0; i<0xF; i++)
		if(   gpBMagList[i].index == ITEM_ID(item) )
			return i;
	return 0x10;
}


u8 GetWMagOffset(u16 item){
	int i=0;
	for(i=0; i<0xF; i++)
		if(   gpWMagList[i].index == ITEM_ID(item) )
			return i;
	return 0x10;
}


u8 GetBMagUse(UnitExt* ext, u8 offset){
	if( offset < 0x10 )
		return GET_B_MAG( ext->mlist.m[offset] );
	else
		return 0xFF;
}


u8 GetWMagUse(UnitExt* ext, u8 offset){
	if( offset < 0x10 )
		return GET_W_MAG( ext->mlist.m[offset] );
	else
		return 0xFF;
}


int SetBMagItem(UnitExt* ext, u16 item){
	u8 loc = GetBMagOffset(item);
	
	if( loc > 0x10 )
		return 0;
	
	SetBMag(
		&ext->mlist.m[loc],
		ITEM_USE(item) );
	return 1;
}

int SetWMagItem(UnitExt* ext, u16 item){
	u8 loc = GetWMagOffset(item);
	
	if( loc > 0x10 )
		return 0;
	
	SetWMag(
		&ext->mlist.m[loc],
		ITEM_USE(item) );
	return 1;
}

int IsItemMagic(u16 item){
	u32 attr = GetItemAttributes(item);
	
	int isWpnMag = (attr&IA_WEAPON) && (attr&IA_MAGIC);
	int isStaff = attr & IA_STAFF;
	
	return isWpnMag || isStaff;
}

/*
	0=Not Wpn; 1=Magic; 2=Physical Wpn
*/
int TestWpn(u16 item){
	u32 attr = GetItemAttributes(item);
	
	if( !(IA_WEAPON & attr) )
		return 0;
	else if( attr & IA_MAGIC )
		return 1;
	else
		return 2;
}

// 0=no, 1=yeah, 2=No ext
int isUnitMagSet(UnitExt* ext){
	return ext->mlist.stat && MAG_IS_SET;
}


// W.I.P.
int SetUnitMag(UnitExt* ext){
	ext->mlist.stat = ext->mlist.stat | MAG_IS_SET;
	for(int i=0; i<0xF; i++)
	{
		SetBMag( &ext->mlist.m[i], 5 );
		SetWMag( &ext->mlist.m[i], 5 );
	}
		
	return TRUE;
}


// W.I.P.
int isMagListEmpty(UnitExt* ext){
	int cnt = 0;
	
	if( isUnitMagSet(ext) )
		SetUnitMag(ext);
	for(int i=0; i<0xF; i++)
		cnt += (0 == GET_B_MAG(ext->mlist.m[i]) );
	
	return ( 0==cnt );
}

// W.I.P. On Chapter Init
void ResetUnitMagic(void){
	UnitExt* cur = gpUnitExtData;
	
	for(int i=0; i<UNIT_EXT_CNT; i++)
	{
		for(int j=0; j<0xF; j++)
			cur->mlist.m[j] = 5;
		(cur++)->mlist.stat &= ~MAG_IS_SET;
	}
}