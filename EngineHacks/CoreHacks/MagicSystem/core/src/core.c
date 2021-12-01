#include "gbafe.h"
#include "MagicSystem.h"
#include "UnitExt.h"

static void SetBMag(u8* at, u8 use){
	*at = (*at&0xF0) | (use&0xF);
}

static void SetWMag(u8* at, u8 use){	// 留黑色
	*at = (*at&0xF) | ((use&0xF)<<4);
}

static u8 GetMagOffset(u16 item, const MagListInfo* list){
	int i=0;
		
	for(i=0; i<0xF; i++)
		if(   list[i].index == ITEM_ID(item) )
			return i;
	return 0x10;
}

u8 GetBMagOffset(u16 item){ return GetMagOffset(item,gpBMagList); }
u8 GetWMagOffset(u16 item){ return GetMagOffset(item,gpWMagList); }


static u8 GetMagIndex(u8 loc, const MagListInfo* list){	
	if( loc > MAGIC_LIST_SIZE )
		return 0;
	return list[loc].index;
		
}
u8 GetBMagIndex(u8 loc){ return GetMagIndex(loc,gpBMagList); }
u8 GetWMagIndex(u8 loc){ return GetMagIndex(loc,gpWMagList); }




static u8 GetMagUse(UnitExt* ext, u8 offset, int magType){
	if( offset < 0x10 )
	{
		if( EBMAG == magType )
			return GET_B_MAG( ext->mlist.m[offset] );
		else if( EWMAG == magType )
			return GET_W_MAG( ext->mlist.m[offset] );
	}

	return 0xFF;
}
u8 GetBMagUse(UnitExt* ext, u8 offset){ return GetMagUse(ext,offset,EBMAG); }
u8 GetWMagUse(UnitExt* ext, u8 offset){ return GetMagUse(ext,offset,EWMAG); }



u16 GetBMagItem( UnitExt* ext, u8 offset )
{
	u8 use = GetBMagUse(ext,offset);
	if( 0 == use )
		return 0;
	else if( offset > MAGIC_LIST_SIZE )
		return 0;
	else
		return MAKE_ITEM(GetBMagIndex(offset), use);
}

u16 GetWMagItem( UnitExt* ext, u8 offset )
{
	u8 use = GetWMagUse(ext,offset);
	if( (0==use) & (0xFF==use) )
		return 0;
	else if( offset > MAGIC_LIST_SIZE )
		return 0;
	else
		return MAKE_ITEM(GetWMagIndex(offset), use);
}


int SetWMagItem(UnitExt* ext, u16 item){
	u8 loc = GetMagOffset(item,gpWMagList);
	if( loc > 0xF )
		return 0;
	SetWMag(
		&ext->mlist.m[loc],
		ITEM_USE(item) );
	return 1;
}


int SetBMagItem(UnitExt* ext, u16 item){
	u8 loc = GetMagOffset(item,gpBMagList);
	if( loc > 0xF )
		return 0;
	
	SetBMag(
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



