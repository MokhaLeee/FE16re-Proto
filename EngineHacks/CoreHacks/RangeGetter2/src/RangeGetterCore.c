#include "gbafe.h"
#include "StatusGetter.h"

#include "RangeGetter.h"

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







