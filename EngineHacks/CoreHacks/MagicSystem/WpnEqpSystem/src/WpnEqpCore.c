#include "gbafe.h"
#include "MagicSystem.h"
#include "UnitExt.h"
#include "StrMagCha.h"
#include "StatusGetter.h"



u16 GetWpnEqp(UnitExt* ext){ return ext->WpnEqp; }


static int SetWpnEqp(Unit* unit, u16 item){
	UnitExt* unitExt = GetUnitExtByUnit(unit);
	
	if( NULL == unitExt )
		return FALSE;
	
	if( 0 == TestWpn(item) )
		return FALSE;		
	
	unitExt->WpnEqp = item;
	
	if( 0 == ITEM_USE(item) )
		unitExt->WpnEqp = 0;
	
	return TRUE;
}


int SetWpnEqpForce(Unit* unit, u16 item){
	UnitExt* unitExt = GetUnitExtByUnit(unit);
	
	if( NULL == unitExt )
		return FALSE;	
	
	unitExt->WpnEqp = item;
	if( 0 == ITEM_USE(item) )
		unitExt->WpnEqp = 0;
	return TRUE;
}


static int trySetEqpMag(Unit* unit){
	u16 mag = 0;
	UnitExt* ext = GetUnitExtByUnit(unit);
	if( NULL == ext )
		return FALSE;
	
	if( FALSE == isUnitMagSet(ext) )
		SetUnitMagList(unit);
	
	for(int i=0; i<0xF; i++)
	{
		if( 0!=GetBMagUse(ext,i) )
		{
			mag = MAKE_ITEM( gpBMagList[i].index, GetBMagUse(ext,i) );
			SetWpnEqp(unit, mag);
			return TRUE;
		}
	}
	
		return FALSE;
}

static int trySetEqpPhy(Unit* unit){
	u16 item = GetUnitEquippedWeapon(unit);
	if( 0 == item )
		return 0;
	SetWpnEqp(unit,item);
	return 1;
	
}






int SaveEqpToMag(UnitExt* ext, u16 item){
	if( FALSE == IsItemMagic(item) )
		return FALSE;
	
	if( 1 == SetBMagItem(ext,item) )
		return TRUE;
	
	if( 1 == SetWMagItem(ext,item) )
		return TRUE;
	
	return FALSE;
}

int SetWpnEqpAuto(Unit* unit){
	UnitExt* ext = GetUnitExtByUnit(unit);
	if( NULL == ext )
		return 2;
	
	if( 0 != ITEM_USE(ext->WpnEqp) )
		if( 0!=TestWpn(ext->WpnEqp) )
			return 0;
	
	if( GetMag(unit) > GetPow(unit) )
		if( 1==trySetEqpMag(unit) )
			return 1;
		
	if( 1==trySetEqpPhy(unit) )
		return 1;
	
	if( 1==trySetEqpMag(unit) )
		return 1;
	
	return 0;
}

int SetWpnEqpAuto_bu(BattleUnit* bu)
{	return  SetWpnEqpAuto( GetUnit(bu->unit.index) ); }




