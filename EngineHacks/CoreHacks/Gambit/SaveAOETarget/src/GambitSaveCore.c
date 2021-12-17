#include "Gambit.h"

#include "Common.h"
extern u8* gpCommonSaveSu;
#define COMMON_SUBEFFECT_INDEX (gpCommonSaveSu[0])
#define COMMON_NUM (gpCommonSaveSu[0])
#define COMMON_TARGIT_AT (&gpCommonSaveSu[1])

void SaveTarget_PostGambitTargetSelection(void){
	s8 size = (s8)gTargetArraySize;
	if( size>0x40 )
		size = 0x40;
	COMMON_NUM = size;
	
	for(u8 i=0; i<size; i++)
		gpCommonSaveSu[i+1] = gTargetArray[i].unitIndex;
}



