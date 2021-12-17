#pragma once


typedef struct BattleFlagSu BattleFlagSu;
struct BattleFlagSu{
	u8 isCombat:1;
	u8 unused0:7;
	
	u8 ActorId;
	u8 artId;
	
	u8 free[7];
};

extern BattleFlagSu* gpBattleFlagSu;	// 0x10 long




#define MAX_SIZE_COMMON_SAVESU 0x40

//extern void* gpCommonSaveSu;
void Reset_CommonSaveSu(void);

/*************** Useage: *******************
a common space and will save in Suspend data, which defined as "gpCommonSaveSu" in _Val_Global.event

However, here we does not make a direct definition. If you want to use it, you need:
#include "gbafe.h"
#include "Common.h"
extern u8* gpCommonSaveSu;

You can also define it as and struct as you like.



1. Gambit:
	+0x0 as Sub-Effect command index to target selection and draw map.
	Target Selection on A press, +0x0 as number of target, +0x1~0x40 as target unit index list

2. Magic System:
	+0x0 as Sub-menu commond total number
	
	
	
********************************************/ 