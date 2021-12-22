#include "Gambit.h"

#include "Common.h"
extern u8* gpCommonSaveSu;
#define COMMON_SUBEFFECT_INDEX (gpCommonSaveSu[0])
#define COMMON_NUM (gpCommonSaveSu[0])
#define COMMON_TARGIT(i) (gpCommonSaveSu[i+1])

void SaveTarget_PostGambitTargetSelection(void){
	s8 size = (s8)gTargetArraySize;
	if( size>MAX_SIZE_COMMON_SAVESU-1 )
		size = MAX_SIZE_COMMON_SAVESU-1;
	COMMON_NUM = size;
	
	for(u8 i=0; i<size; i++)
		COMMON_TARGIT(i) = gTargetArray[i].unitIndex;
}



