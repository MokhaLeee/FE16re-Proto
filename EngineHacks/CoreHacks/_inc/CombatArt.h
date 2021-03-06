#pragma once
#include "gbafe.h"

#include "Common.h"
struct CAramSpace;

// Define this in your own C file
// extern struct CAramSpace* gpCommonSaveSu;

enum{
	// CombatArtInfo->attr
	
	ATTR_CA_INFO_MAGIC_SWARD = 1 << 0,

};


typedef int (*UsabilityRoutine) (Unit*);

typedef struct CombatArtInfo CombatArtInfo;
struct CombatArtInfo{
	/* 0x00 */ u8 skillID;
	/* 0x01 */ s8 rangeBonus;
	/* 0x02 */ u16 name;
	/* 0x04 */ u16 Desc;
	/* 0x06 */ u8 wpnType;
	/* 0x07 */ u8 wpnRank;
	
	/* 0x08 */ UsabilityRoutine canUse;
	/* 0x0C */ s16 durCost;
	/* 0x0E */ s16 mtBonus;
	/* 0x10 */ s16 hitBonus;
	/* 0x12 */ s16 avoBonus;
	/* 0x14 */ s16 critBonus;
	/* 0x16 */ u8 unuse16[0x1C-0x16];
	/* 0x1C */ u32 attr;
	
	/* Total 0x20 */
};

extern CombatArtInfo* gpCombatArtConigList;


typedef struct CAramSpace CAramSpace;
struct CAramSpace{
	u8 curUnitId;
	u8 listLength;
	u8 list[0xE];
	
};


// Core
int CanUnitUseCA(Unit*, u8 CAid);
int UnitHasCA(Unit*);
int SetUnitCAauto(Unit*);

// Gets
u8 GetCS_RangeBonus(u8 CAid);
s16 GetCS_mtBonus(u8 CAid);
s16 GetCS_hitBonus(u8 CAid);
s16 GetCS_avoBonus(u8 CAid);
s16 GetCS_CritBonus(u8 CAid);


// Battle Info Misc
void SetCombatArtInfo(Unit* unit, u8 combatId);
void ResetCombatArtInfo(void);


// MenuPanel
void StartMenuPanel_CombatArt(MenuProc* pmu, Unit* unit, u8 xPos, u8 yPos);
void UpdateMenuPanel_CombatArt(CombatArtInfo* caInfo);
void EndMenuPanel_CombatArt(void);

