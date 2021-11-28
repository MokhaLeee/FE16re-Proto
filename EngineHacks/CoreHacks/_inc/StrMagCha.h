#pragma once
#include "gbafe.h"

#define MAG_OFFSET 0x3A
#define CHA_OFFSET 0x3B

typedef struct{
	u8 Base;
	u8 Growth;
} Stat_CharTable;

typedef struct{
	u8 Base;
	u8 Growth;
	u8 Cap;
	u8 PromoBonus;
} Stat_ClassTable;

extern Stat_CharTable* gpUnitMagicTable;
extern Stat_ClassTable* gpClassMagicTable;

extern Stat_CharTable* gpUnitCharmTable;
extern Stat_ClassTable* gpClassCharmTable;

// Base Funcs
s8* GetMagAt(Unit*);
s8* GetChaAt(Unit*);
s8* GetBu_ChangeMagAt(struct BattleUnit*);
s8* GetBu_ChangeChaAt(struct BattleUnit*);
s8 GetClassMaxMag(Unit*);
s8 GetClassMaxCha(Unit*);

s8 prGotoMagGetter(Unit*); // 0x191B8 in MSG_Internal
s8 prGotoChaGetter(Unit*); // 0x191C0 in MSG_Internal

// Load Unit
void LoadUnitStats_MagCha(Unit*,CharacterData*);


// Save Data
// Size = 0x3D + 0x13 + 0x31 + 0x4 = 0x85
// 0x85*2 = 0x10A
void MsaSave_MagCha(void*, unsigned);
void MsaLoad_MagCha(void*, unsigned);
void MsuSave_MagCha(void*, unsigned);
void MsuLoad_MagCha(void*, unsigned);
