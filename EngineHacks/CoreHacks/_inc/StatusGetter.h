#pragma once
#include "gbafe.h"

enum{
	// For Class Rank
	TH_CLASS_E 	= 1,
	TH_CLASS_EP	= 2,
	TH_CLASS_D	= 3,
	TH_CLASS_DP	= 4,
	TH_CLASS_C	= 5,
	TH_CLASS_CP	= 6,
	TH_CLASS_B	= 7,
	TH_CLASS_BP	= 8,
	TH_CLASS_A	= 9,
	TH_CLASS_AP	= 10,
	TH_CLASS_S	= 11,
	TH_CLASS_SP	= 12,
};

// Status Getters
s8 GetPow(Unit* unit);
s8 GetSpd(Unit* unit);
s8 GetSkl(Unit* unit);
s8 GetLck(Unit* unit);
s8 GetRes(Unit* unit);
s8 GetDef(Unit* unit);
s8 GetHpCur(Unit* unit);
s8 GetHpMax(Unit* unit);
s8 GetAid(Unit* unit);
s8 GetCon(Unit* unit);
s8 GetMov(Unit* unit);
s8 GetMag(Unit* unit);
s8 GetCha(Unit* unit);
u16 prMinRangeGetter(u16 item, Unit* unit);
u16 prMaxRangeGetter(u16 item, Unit* unit);

int GetRankReason(Unit*);
int GetRankFaith(Unit*);

typedef s8 (*MSG_Func)(Unit*);
extern MSG_Func PowMods[];
extern MSG_Func SpdMods[];
extern MSG_Func SklMods[];
extern MSG_Func LckMods[];
extern MSG_Func DefMods[];
extern MSG_Func ResMods[];
extern MSG_Func HpCurMods[];
extern MSG_Func HpMaxMods[];
extern MSG_Func MovMods[];
extern MSG_Func MagMods[];
extern MSG_Func ChaMods[];

typedef s8 (*RangeGetter_Func)(Unit*,u16);
extern RangeGetter_Func RangeMinMods[];
extern RangeGetter_Func RangeMaxMods[];



// Modular Funcs

s8 PowMod_WpnPowBonus(Unit* unit);
s8 SpdMod_WpnSpdBunus(Unit* unit);
s8 SklMod_WpnSklBunus(Unit* unit);
s8 LckMod_WpnLckBunus(Unit* unit);
s8 DefMod_WpnDefBunus(Unit* unit);
s8 ResMod_WpnResBunus(Unit* unit);
s8 HpMod_WpnHpBunus(Unit* unit);


// Range Getters
#define new_GetWeaponRangeMask  ( (u32(*)(u16 item, Unit* unit)) (0x80170D5) )
