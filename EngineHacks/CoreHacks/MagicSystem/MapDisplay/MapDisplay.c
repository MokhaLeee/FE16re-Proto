#include "gbafe.h"
#include "_gbafe16.h"

extern int BMag_Usability(void);
extern int WMag_Usability(void);

// ==========================================
// ============== Core Hacks ================
// ==========================================

// 0x801CB70+1
void DisplayUnitEffectRange(Unit* unit){
	
	enum{
		FLAG_RANGE_RED = 1 << 0,
		FLAG_RANGE_GREEN = 1 << 1,
	};
	
	u8 useFlag;
	
	FillMovementMapForUnitAndMovement(
		gActiveUnit, 
		GetMov(gActiveUnit) - gActionData.moveCount );
	
	if( unit->state & US_CANTOING ){
		DisplayMoveRangeGraphics(MOV_BLUE);
		return;
	}
	
	BmMapFill(gMapMovement2,NU_MOVE2_MAP);
	
	useFlag = GetUnitWeaponUsabilityBits(unit);
	if( FACTION_BLUE == UNIT_FACTION(gActiveUnit) )
	{
		if( MCA_NONUSABLE != BMag_Usability() )
			useFlag |= FLAG_RANGE_RED;
		
		if( MCA_NONUSABLE != WMag_Usability() )
			useFlag |= FLAG_RANGE_GREEN;
		
	} // if( FACTION_BLUE == UNIT_FACTION(gActiveUnit) )
	

	if( useFlag == (FLAG_RANGE_RED + FLAG_RANGE_GREEN) )
	{
		if( gGameState.MapDisplayBit)
			useFlag = FLAG_RANGE_GREEN;
		else
			useFlag = FLAG_RANGE_RED;
		
	} // if( useFlag == (FLAG_RANGE_RED + FLAG_RANGE_GREEN) )
		
	if( FLAG_RANGE_RED == useFlag )
	{
		FillMapAttackRangeForUnit(unit);
		DisplayMoveRangeGraphics(RNG_RED + MOV_BLUE);
	}
	else if( FLAG_RANGE_GREEN == useFlag )
	{
		FillMapStaffRangeForUnit(unit);
		DisplayMoveRangeGraphics(RNG_GREEN + MOV_BLUE);
	}
	else
		DisplayMoveRangeGraphics(MOV_BLUE);
}





// 0x801ACBC+1
void FillMapAttackRangeForUnit(const Unit* _unit){
	u32 mask;
	u16 item;
	UnitExt* ext;
	Unit* unit = (Unit*)_unit;
	
	// Get Range Mask vanilla
	mask = 0;
	
	for(int i=0; i<UNIT_ITEM_COUNT; i++)
	{
		u16 item = unit->items[i];
		if( 0 == item )
			continue;
		
		if( !CanUnitUseWeapon(unit, item) )
			continue;
		
		mask |= ItemRange2Mask(item, unit);
	}
	
	ext = GetUnitExtByUnit(unit);
	
	// Get Range Mask for MagicSystem
	if( MCA_NONUSABLE != BMag_Usability() )
	for(int i=0; i<MAGIC_LIST_SIZE; i++)
	{
		item = GetBMagItem(ext,i);
		if( item )
			mask |= ItemRange2Mask(item, unit);	
	}
	
	
	// Fill Map
	BmMapFill(gMapRange,NU_RANGE_MAP);
	
	for(int y=0; y<gMapSize.y; y++)
		for( int x=0; x<gMapSize.x; x++ )
		{
			if( (u8)gMapMovement[y][x] > 120 )
				continue;
			
			if( 0 != gMapMovement2[y][x] )
				continue;
			
			if( 0 != gMapUnit[y][x] )
				continue;
			
			AddMapMasterCore(x,y,mask, gMapRange,NU_RANGE_MAP);
		}
	gpSubjectMap = gMapRange;
	return;
}



//! FE8U = 0x801B619
void FillMapStaffRangeForUnit(const struct Unit* _unit){
	u32 mask;
	u16 item;
	UnitExt* ext;
	Unit* unit = (Unit*)_unit;
	
	// Get Range Mask vanilla
	mask = 0;
	
	for(int i=0; i<UNIT_ITEM_COUNT; i++)
	{
		u16 item = unit->items[i];
		if( 0 == item )
			continue;
		
		if( !CanUnitUseStaff(unit, item) )
			continue;
		
		mask |= ItemRange2Mask(item, unit);
	}
	
	ext = GetUnitExtByUnit(unit);
	
	// Get Range Mask for MagicSystem
	if( MCA_NONUSABLE != WMag_Usability() )
	for(int i=0; i<MAGIC_LIST_SIZE; i++)
	{
		item = GetWMagItem(ext,i);
		if( item )
			mask |= ItemRange2Mask(item, unit);	
	}
	
	// Fill Map
	BmMapFill(gMapRange,NU_RANGE_MAP);
	
	for(int y=0; y<gMapSize.y; y++)
		for( int x=0; x<gMapSize.x; x++ )
			if( NU_MOVE_MAP != gMapMovement[y][x] &&
				NU_MOVE2_MAP == gMapMovement2[y][x] &&
				ON_UNIT_MAP == gMapUnit[y][x] )
				AddMapMasterCore(x,y,mask, gMapRange,NU_RANGE_MAP);
	
	gpSubjectMap = gMapRange;
	return;
}



