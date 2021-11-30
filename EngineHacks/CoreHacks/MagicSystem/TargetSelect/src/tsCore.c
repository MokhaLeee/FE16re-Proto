#include "gbafe.h"
#include "StrMagCha.h"
#include "UnitExt.h"

#include "MagicSystem.h"

extern const ProcCode gProc_tsBMag_onBPress[];
extern const ProcCode gProc_tsWMag_onBPress[];

static int tsMag_onBPress(TargetSelectionProc* pts, TargetEntry* tar, int magType){
	const ProcCode *pc = 0;
	if( EBMAG == magType )
		pc = gProc_tsBMag_onBPress;
	else if( EWMAG == magType )
		pc = gProc_tsWMag_onBPress;
	else
		return TSE_PLAY_BOOP | TSE_END | TSE_DISABLE;
	
	
	if( MapEventEngineExists() )
		return TSE_NONE;
	
	ProcStart(pc,(Proc*)3);
	return TSE_PLAY_BOOP | TSE_END | TSE_DISABLE;
}



int tsBMag_onBPress(TargetSelectionProc* pts, TargetEntry* tar){
	return tsMag_onBPress(pts,tar,EBMAG);
}

int tsWMag_onBPress(TargetSelectionProc* pts, TargetEntry* tar){
	return tsMag_onBPress(pts,tar,EWMAG);
}

