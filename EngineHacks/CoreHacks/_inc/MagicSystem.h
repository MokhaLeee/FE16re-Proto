#pragma once
#include "gbafe.h"
#include "UnitExt.h"
#define MAG_SLOTBU 0x9

// B.Mag在低侧
#define GET_B_MAG(m) (m & 0xF)
#define GET_W_MAG(m) ((m>>0x4) & 0xF)


enum{
	MAGIC_LIST_SIZE = 0xF,
};

enum{
	MAG_IS_SET	= (1<<0),
};

enum{	// mag type
	EPHY = 0,
	EBMAG = 1,
	EWMAG = 2,
};

// Special item slot identifiers understood by SetBattleUnitWeapon and other functions
enum{
	BU_ISLOT_BMAG	= UNIT_ITEM_COUNT + 4,	// 9
	BU_ISLOT_WMAG	= UNIT_ITEM_COUNT + 5,	// 10
};

// <!> Mag definition is in UnitExt.h

typedef struct MagListInfo MagListInfo;
struct MagListInfo{
	u8 index;
	u8 baseUse;
	u8 unuse[6];
};

extern const MagListInfo* gpBMagList;
extern const MagListInfo* gpWMagList;
extern const MenuDefinition BMagSelectMenu[];
extern const MenuDefinition WMagSelectMenu[];
extern const TargetSelectionDefinition gTSfunc_BMag[];
extern const TargetSelectionDefinition gTSfunc_WMag[];

// Get
u8 GetBMagOffset(u16 item);		// if not, return 0x10
u8 GetWMagOffset(u16 item);

u8 GetBMagIndex(u8 loc);		// Return item Index
u8 GetWMagIndex(u8 loc);		// if not, return 0;

u8 GetBMagUse(UnitExt*, u8);	// if not, return 0xFF
u8 GetWMagUse(UnitExt*, u8);

u16 GetBMagItem(UnitExt*, u8);	// if noUse or offset>0xF, return 0
u16 GetWMagItem(UnitExt*, u8);

u16 GetWpnEqp(UnitExt*);


// Judgement
int isUnitMagSet(UnitExt* ext);	// 0=no, 1=yeah, 2=No ext

int SaveEqpToMag(UnitExt* ext, u16);
int isBMagListEmpty(UnitExt* ext);
int isWMagListEmpty(UnitExt* ext);

int IsClassHandleMag(int classID);
int IsClassLearningMag(int classID);
int IsClassBMagMaster(int classID);
int IsClassWMagMaster(int classID);

int TestWpn(u16 item);	// 0=Not Wpn; 1=Magic; 2=Physical Wpn

int IsItemMagic(u16 item);	// 0=no, 1=true W.I.P.
int IsItemBlackMagic(u16 item);
int IsItemWhiteMagic(u16 item);


// Set
int SetBMagItem(UnitExt* ext, u16 item);
int SetWMagItem(UnitExt* ext, u16 item);
int SetBMagById(UnitExt* ext, u8 itemID, u8 use);
int SetWMagById(UnitExt* ext, u8 itemID, u8 use);


// Weapon-Equipment System
int SetWpnEqp(Unit* unit, u16 item);
int SetWpnEqpForce(Unit* unit, u16 item);
int SetWpnEqpAuto(Unit*);
int SetWpnEqpAuto_bu(BattleUnit*);
u16 GetWpnEqp(UnitExt*);

// On Chapter Init
void ResetUnitsMagic(void);
int SetUnitMagList(Unit* unit);
