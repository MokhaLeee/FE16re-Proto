#pragma once
#include "gbafe.h"

enum{
	// for FillMapByMask
	
	NU_RANGE_MAP = 0,
	ON_RANGE_MAP = 1,
	
	NU_MOVE_MAP = -1,
	ON_MOVE_MAP = 1,
};


enum{
	// for DisplayMoveRangeGraphics
	
	MOV_BLUE 	= 1 << 0,
	MOV_RED 	= 1 << 5, 		// $20
	MOV_GREEN 	= 1 << 6,		// $40
	
	RNG_RED		= 1 << 1,		// $2
	RNG_BLUE	= 1 << 4, 		// $10
	RNG_GREEN	= 1 << 2,		// $4
};





/*
You can count this func as GetRangeMask + FillMapByMask;
Usage:

BmMapFill(gMapMovement,-1);
BmMapFill(gMapRange,0);
FillMapForSingleItem(gActiveUnit,item);
DisplayMoveRangeGraphics(RNG_GREEN);

*/
void FillMapForSingleItem(Unit* unit, u16 item);


/* 
这一个函数同样适配maxRange=0的情况
现在可以这样组合使用:
for each item:
	mask |= ItemRange2Mask(item,unit);
BmMapFill(gMapRange,0);
FillMapByMask(unit,mask);
DisplayMoveRangeGraphics(RNG_GREEN);
即可实现在任意地图上进行展示了
*/
u32 ItemRange2Mask(u16 item, Unit* unit);
void FillMapMaster(Unit* unit, u32 mask, MapData*, s8 nullVal);
void FillMapMovement(Unit* unit, u32 mask);
void FillMapRange(Unit* unit, u32 mask);


// 可以事先设定 gpSubjectMap 来实现对任意函数遍历
void ForEachUnitMaster(void(func)(Unit*),MapData*,s8 nullVal);
void ForEachUnitMapRange(void(func)(Unit*));
void ForEachUnitMapMovement(void(func)(Unit*));
