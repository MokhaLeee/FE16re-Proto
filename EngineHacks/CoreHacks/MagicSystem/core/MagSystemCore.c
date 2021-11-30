#include "gbafe.h"
#include "MagicSystem.h"
#include "UnitExt.h"

static inline void SetBMag(u8* at, u8 use){
	*at = (*at&0xF0) | (use&0xF);
}

static inline void SetWMag(u8* at, u8 use){	// 留黑色
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
	if( loc > 0xF )
		return 0;
	
	SetBMag(
		&ext->mlist.m[loc],
		ITEM_USE(item) );
	return 1;
}

int SetWMagItem(UnitExt* ext, u16 item){
	u8 loc = GetWMagOffset(item);
	if( loc > 0xF )
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



