#pragma once
#include "gbafe.h"

/*
RN2的核心目标是为了实现类似固定成长的方案，即满足如下性能：
1. 每次调用乱数的时候，在满足特定输入的情况下获得相同输出；
2. 不同输入获得乱数输出；
3. 重启章节则重置乱数。

为实现此目标，对RN2设定为recoverable属性：额外配置一个内存空间设定为gpRNState2，每次获取rn后，将gpRNState2的数值进行恢复。
*/

extern u16* gpRNState2; 	// Defined in .event
extern u16* gpRNtmp; 		// Defined in .event


// Core
void InitRN2(void);
u16 NextRN2s(u16 count);
u16 NextRN2(void);
u16 NextRN2s_100(u16 count);



// Mod Save
void RN2_SaveSu(void* dest, unsigned size);
void RN2_LoadSu(const void* src, unsigned size);
