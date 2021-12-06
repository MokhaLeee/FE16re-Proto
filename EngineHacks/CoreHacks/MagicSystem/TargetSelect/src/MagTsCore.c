#include "gbafe.h"
#include "StrMagCha.h"
#include "UnitExt.h"

#include "Common.h"
extern u8* gpCommonSaveSu;
#define CMD_CUR_NUM (*gpCommonSaveSu)	//  Total Count of SubMenu command number

#include "MagicSystem.h"




extern ProcCode gProcCode_tsBmagReturn[];

// fork from $8022E64
static int tsMag_onBPress(TargetSelectionProc* pts, TargetEntry* tar, const ProcCode* pc){
	if( MapEventEngineExists() )
		return TSE_NONE;
	else
	{
		ProcStart(pc,(Proc*)3);
		return TSE_PLAY_BOOP | TSE_END | TSE_DISABLE;
	}
}



int tsBMag_onBPress(TargetSelectionProc* pts, TargetEntry* tar){
	return tsMag_onBPress(pts,tar,gProcCode_tsBmagReturn);
}



void BuildBmagReturnMenu_OnTS(Proc* parent){
	// Reset Sub-Menu num
	CMD_CUR_NUM = 0;
	
	_ResetIconGraphics();
	LoadIconPalettes(0x4);
	
	MenuProc* umMag = StartMenu(BMagSelectMenu);
	
	//StartFace(0,GetUnitPortraitId(gActiveUnit),0xB0,0xC,0x2);
	//SetFaceBlinkControlById(0,5);
	ForceMenuItemPanel(umMag,gActiveUnit,0xF,0xB);
}

