#pragma once

enum{
	MAG_HALF = 4,
	MAG_NORMAL = 8,
	MAG_DOUBLE = 15,
};

enum{
	MAGLIST_CLASS_MAXSIZE = 0x4,
	MAGLIST_UNIT_MAXSIZE = 0x10,
	MAGLIST_UNIT_BASESIZE = 0x3,
};

enum{	// Judged for MagListUnit
	UNIT_BASE1 = 0,
	UNIT_BASE2 = 1,
	UNIT_BASE3 = 2,
	UNIT_EP = 3,
	UNIT_D = 4,
	UNIT_DP = 5,
	UNIT_C = 6,
	UNIT_CP = 7,
	UNIT_B = 8,
	UNIT_BP = 9,
	UNIT_A = 10,
	UNIT_AP = 11,
	UNIT_S = 12,
	UNIT_SP = 13,
};

typedef struct MagListClass MagListClass;
struct MagListClass{
	u8 mags[MAGLIST_CLASS_MAXSIZE];
	/* Total 0x4 */
};


typedef struct MagListUnit MagListUnit;
struct MagListUnit{
	u8 mags[MAGLIST_UNIT_MAXSIZE];
	/* Total 0x10 */
};


extern MagListClass* gpClassBasedBMagList;
extern MagListClass* gpClassBasedWMagList;
extern MagListUnit* gpUnitBasedBMagList;
extern MagListUnit* gpUnitBasedWMagList;

extern u8 ClassHandleMag[];
extern u8 ClassLeaningMag[];
extern u8 ClassBMagMaster[];
extern u8 ClassWMagMaster[];
