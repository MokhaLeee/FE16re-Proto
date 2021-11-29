#include "gbafe.h"
#include "StrMagCha.h"
#include "UnitExt.h"

#include "MagicSystem.h"

extern const ProcCode gProc_tsBMag_onBPress[];


int tsBMag_onBPress(struct TargetSelectionProc* pts, struct TargetEntry* tar){
	if( MapEventEngineExists() )
		return TSE_NONE;
	
	ProcStart(gProc_tsBMag_onBPress,(Proc*)3);
	return TSE_PLAY_BOOP | TSE_END | TSE_DISABLE;
}

