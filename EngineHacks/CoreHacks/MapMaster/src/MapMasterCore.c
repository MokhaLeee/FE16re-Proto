#include "gbafe.h"
#include "StatusGetter.h"

#include "MapMaster.h"

#define new_GetWeaponRangeMask  ( (u32(*)(u16 item, Unit* unit)) (0x80170D5) )   



static s16 MaxRangeFilter(Unit* unit, u16 item){
	u16 rngMax = prMaxRangeGetter(item,unit);
	if( 0 == rngMax )
		rngMax = GetUnitMagBy2Range(unit);
	return rngMax;
}



/*
BmMapFill(gMapMovement,-1);
BmMapFill(gMapRange,0);
FillMapForSingleItem(gActiveUnit,item);	// Now Fill map = gMapRange
DisplayMoveRangeGraphics(4); 		// staff=4; Wpn=2
*/
void FillMapForSingleItem(Unit* unit, u16 item){
	const u8 x = unit->xPos;
	const u8 y = unit->yPos;
	
	u16 rngMin = prMinRangeGetter(item,unit);
	u16 rngMax = MaxRangeFilter(unit,item);
	
	MapAddInRange(x,y,rngMax,1);
	
	if( 0!=rngMin )
		MapAddInRange(x,y,rngMin-1,-1);
	
	return;
}



u32 ItemRange2Mask(u16 item, Unit* unit){
	u32 mask = 0;
	
	int rngMin = (int)prMinRangeGetter(item,unit);
	int rngMax = (int)MaxRangeFilter(unit,item);
	int diff = rngMax - rngMin;
	
	for(int i=0; i <= rngMax; i++)
	{
		if( i <= diff )
			mask = (mask << 1) |1;
		else
			mask = (mask << 1);
	}
	return mask;

}


// 内嵌BmMapFill
void FillMapMaster(Unit* unit, u32 mask, MapData* map, s8 nullVal){
	
	// On init
	u8 start,end, cur,pre;
	s8 valOn, valOff;
	
	const s8 x = unit->xPos;
	const s8 y = unit->yPos;	
	
	valOn = 1;
	valOff = nullVal -1;
	
	// Fill Map
	BmMapFill(*map, nullVal);
	
	start = 0;
	
	for(int i=0; i <= 32; i++)
	{
		pre = mask & 1;
		mask /= 2;
		cur = mask & 1;
		
		if( cur == pre )
			continue;
		
		else if( 1 == cur )
			start = i;
		
		else if( 0 == cur )
		{
			end = i;
			MapAddInRange(x,y, end,valOn);
			
			if( 0 != start )
				MapAddInRange(x,y, start,valOff);
		}
		
		if( 0 == mask )
			break;
	}
	
	
}

void FillMapMovement(Unit* unit, u32 mask){
	FillMapMaster(unit,mask,&gMapMovement,NU_MOVE_MAP);
}

void FillMapRange(Unit* unit, u32 mask){
	FillMapMaster(unit,mask,&gMapRange,NU_RANGE_MAP);
}



void ForEachUnitMaster(void(func)(Unit*), MapData* map,s8 nullVal){
	
	if( (gMapSize.x<0) | (gMapSize.y<0) )
		return;
	
	for( u8 y=0; y<gMapSize.y; y++ )
		for( u8 x=0; x<gMapSize.x; x++ )
		{
			if( nullVal == *map[y][x] )
				continue;
			if( gMapUnit[y][x] )
				func( GetUnit(gMapUnit[y][x]) );
		}
	return;
}

void ForEachUnitMapRange(void(func)(Unit*)){
	ForEachUnitMaster(func,&gMapRange,NU_RANGE_MAP);
}

void ForEachUnitMapMovement(void(func)(Unit*)){
	ForEachUnitMaster(func,&gMapMovement,NU_MOVE_MAP);
}