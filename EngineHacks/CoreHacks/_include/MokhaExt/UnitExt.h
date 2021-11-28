#ifndef UNIT_EXIT_MOKHA
#define UNIT_EXIT_MOKHA

#define UnitExtSize 0x20
#define UnitExtCount 43
#define MaxSizeUnitExt UnitExtSize*UnitExtCount

typedef struct{
	/* 00 */ u8 skillbattle[5];
	/* 05 */ u8 skills[5];
	/* 0A */ u8 ClassRank;
	/* 0B */ u8 BattalionIndex;
	/* 0C */ u8 BattalionUseHp;
	/* 0D */ u8 JewelryItemID;
	/* 0E */ u16 WpnEqp;
	
	/* 10 */ u8 Free[0x10];
} UnitExt;
extern UnitExt gUnitExtDataSa[43];	// 43*0x20=0x560


// Gets Func
UnitExt* GetUnitExt(u8 index);
UnitExt* GetUnitExtByCharID(u8 number);
UnitExt* GetUnitExtByUnit(Unit* unit);


// Mod Save
void UnitExt_SaveSa(void* dest, unsigned size);
void UnitExt_LoadSa(const void* src, unsigned size);


// Core
void UnitExtReset(void);

#endif // UNIT_EXIT_MOKHA