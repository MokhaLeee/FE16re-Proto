#pragma once
#include "gbafe.h"
#include "UnitExt.h"
#define MAG_SLOTBU 0x9

// B.Mag在低侧
#define GET_B_MAG(m) (m & 0xF)
#define GET_W_MAG(m) ((m>>0x4) & 0xF)


enum{
	MAG_IS_SET	= (1<<0),
};


typedef struct MagListInfo MagListInfo;
struct MagListInfo{
	u8 index;
	u8 baseUse;
	u8 unuse[6];
};

extern const MagListInfo* gpBMagList;
extern const MagListInfo* gpWMagList;
extern const MenuDefinition BMagSelectMenu;
extern const TargetSelectionDefinition gTSfunc_BMag;


// Get
// If not, return 0x10
u8 GetBMagOffset(u16 item);
u8 GetWMagOffset(u16 item);

// If not, return 0xFF
u8 GetBMagUse(UnitExt*, u8);
u8 GetWMagUse(UnitExt*, u8);


// Judgement
// 0=no, 1=yeah, 2=No ext
int isUnitMagSet(UnitExt* ext);
// SetUnitMagItem
int SaveEqpToMag(UnitExt* ext, u16);
int isMagListEmpty(UnitExt* ext);

// 0=Not Wpn; 1=Magic; 2=Physical Wpn
int TestWpn(u16 item);

// 0=no, 1=true
int IsItemMagic(u16 item);



// Set
int SetBMagItem(UnitExt* ext, u16 item);
int SetWMagItem(UnitExt* ext, u16 item);



// Weapon-Equipment System
int SetWpnEqp(Unit*,Item);
int SetWpnEqpAuto(Unit* unit);	// 2=Unit has not extension; 0=dont need set

// On Chapter Init
void ResetUnitMagic(void);