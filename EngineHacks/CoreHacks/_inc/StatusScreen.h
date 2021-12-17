#pragma once
#include "gbafe.h"


// Mokha
extern u16 gpCharmString;
extern u16 gpLuckString;
extern u16 gpStatString;
extern u16 gpEqpString;

extern void DrawBarsInternal(int,int,u16* tilemap,int,int,int,int);// 0x8086B2C
extern int GetDisplayRankSpecialCharFromExp(int wexp);
extern u16* IconSheet3[];

void NuDrawStatScreenBwl(void);




