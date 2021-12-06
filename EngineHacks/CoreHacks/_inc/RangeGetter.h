#pragma once
#include "gbafe.h"

/*
You can count this func as GetRangeMask + FillMapByMask;
Usage:

BmMapFill(gMapMovement,-1);
BmMapFill(gMapRange,0);
FillMapForSingleItem(gActiveUnit,item);	// Now Fill map = gMapRange
DisplayMoveRangeGraphics(4); 		// staff=4; Wpn=2

*/
void FillMapForSingleItem(Unit* unit, u16 item);
//void FillMapForItems(Unit* unit, u16 itemList[]);

// 这一个函数同样适配maxRange=0的情况
u32 ItemRange2Mask(u16 item, Unit* unit);