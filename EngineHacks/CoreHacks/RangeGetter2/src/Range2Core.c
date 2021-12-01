#include "gbafe.h"
#include "StatusGetter.h"

#include "RangeGetter.h"
/* 
static s16 RangeModfiy(RangeGetter_Func* funcs, Unit* unit, u16 item){
	s16 base = 0;
	RangeGetter_Func* it = funcs;
	while(*it)
		base += (*it++)(unit,item);
	
	return base;
} */

static s16 MaxRangeFilter(Unit* unit, u16 item){
	u16 rngMax = prMaxRangeGetter(item,unit);
	if( 0 == rngMax )
		//rngMax = GetMag(unit) + RangeModfiy(RangeMaxMods,unit,item);
		rngMax = GetUnitMagBy2Range(unit);
	return rngMax;
}

// (1,2) -> 0110
static u32 Num2Mask(u16 min, u16 max){
	u32 mask = 1 << min;
	
	if( 0 == max )
		return 0;
	if( min == max )
		return 1<<min;
	
	for(int i=min; i<max; i++)
		mask = (mask<<1) + 2;
	return mask;
}

/*0b0110*/
static void FillMapByNewMask(Unit* unit, u32 mask){
	const u8 x = unit->xPos;
	const u8 y = unit->yPos;
	u32 pre = mask;
	s8 value = -1;
	
	if( 0 == mask )
		return;
	
	for(int i=0; i<32; i++)
	{
		pre = mask;
		mask = mask >> 1;
		if( pre != (mask<<1) )	// 找到最大范围了
		{
			MapAddInRange(x,y,i,value);
			value = ~value;
		}
	}
}

void FillMapForItems(Unit* unit, u16 itemList[]){
	u32 mask = 0;
	u16* cur = 0;
	
	for( cur=itemList; 0!=*cur; cur++ )
	{
		u16 rngMin = prMinRangeGetter(*cur,unit);
		u16 rngMax = MaxRangeFilter(unit,*cur);
	
		mask |= Num2Mask(rngMin, rngMax);
	}
	
	FillMapByNewMask(unit,mask);
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







