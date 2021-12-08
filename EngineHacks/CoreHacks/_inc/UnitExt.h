#ifndef UNIT_EXT
#define UNIT_EXT

#include "gbafe.h"

#define UNIT_EXT_SIZE_SA 0x10
#define UNIT_EXT_SIZE_SU 0x20
#define UNIT_EXT_CNT 0x43
#define UNIT_EXT_SIZEMAX_SA UNIT_EXT_SIZE_SA*UNIT_EXT_CNT
#define UNIT_EXT_SIZEMAX_SU UNIT_EXT_SIZE_SU*UNIT_EXT_CNT

typedef struct MagList MagList;
struct MagList{
	u8 isSet : 1;
	u8 align : 7;
	u8 m[0xF];
	/* 0x10 Long */
};


enum{
	MAX_SIZE_COMBATART = 5,
	MAX_SIZE_SIKLL = 5,
};

typedef struct UnitExt UnitExt;
struct UnitExt{
	/* 00 */ u8 skillbattle[MAX_SIZE_COMBATART];
	/* 05 */ u8 skills[MAX_SIZE_SIKLL];
	/* 0A */ u8 ClassRank;
	/* 0B */ u8 BattalionIndex;
	/* 0C */ u8 BattalionUseHp;
	/* 0D */ u8 JewelryItemID;
	/* 0E */ u16 WpnEqp;
	
	// Below is not in SaveSa
	/* 10 */ struct MagList mlist;
};
extern UnitExt* gpUnitExtData;	// 0x02026E70, 43*0x20=0x560


// Gets Func
int UnitHasExt(Unit* unit);
UnitExt* GetUnitExt(u8 index);
UnitExt* GetUnitExtByCharID(u8 number);
UnitExt* GetUnitExtByUnit(Unit* unit);
u8 GetCharIdByExt(const UnitExt*);
Unit* GetUnitByExt(const UnitExt*);

// Mod Save
void UnitExt_SaveSa(void* dest, unsigned size);
void UnitExt_LoadSa(const void* src, unsigned size);


// Core
void ClearAllUnitExtSpace(void);
void UnitExtReset(Unit* unit);		// W.I.P.

#endif // UNIT_EXT
