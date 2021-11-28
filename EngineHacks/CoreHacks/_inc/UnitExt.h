#pragma once
#include "gbafe.h"

#define UNIT_EXT_SIZE_SA 0x10
#define UNIT_EXT_SIZE_SU 0x20
#define UNIT_EXT_CNT 0x43
#define UNIT_EXT_SIZEMAX_SA UNIT_EXT_SIZE_SA*UNIT_EXT_CNT
#define UNIT_EXT_SIZEMAX_SU UNIT_EXT_SIZE_SU*UNIT_EXT_CNT

typedef struct{
	/* 00 */ u8 skillbattle[5];
	/* 05 */ u8 skills[5];
	/* 0A */ u8 ClassRank;
	/* 0B */ u8 BattalionIndex;
	/* 0C */ u8 BattalionUseHp;
	/* 0D */ u8 JewelryItemID;
	/* 0E */ u16 WpnEqp;
	
	// Below is not in SaveSa
	/* 10 */ u8 Free[0x10];
} UnitExt;
extern UnitExt* gpUnitExtData;	// 0x02026E40, 43*0x20=0x560


// Gets Func
UnitExt* GetUnitExt(u8 index);
UnitExt* GetUnitExtByCharID(u8 number);
UnitExt* GetUnitExtByUnit(Unit* unit);


// Mod Save
void UnitExt_SaveSa(void* dest, unsigned size);
void UnitExt_LoadSa(const void* src, unsigned size);


// Core
void UnitExtReset(void);

