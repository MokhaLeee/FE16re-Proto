#include "Gambit.h"

#include "Common.h"
extern u8* gpCommonSaveSu;
#define COMMON_SUBEFFECT_INDEX (gpCommonSaveSu[0])
#define COMMON_NUM (gpCommonSaveSu[0])
#define COMMON_TARGIT_AT (&gpCommonSaveSu[1])

int Gambit_UpperMenu_Usability(const MenuCommandDefinition* cmddef, int param){
	//if( gActiveUnit->state & 0x40 )
		//return 3;
	gUnitSubject = gActiveUnit;
	MakeTargetListFor_SubGambitMenu(gActiveUnit,0x2);
	if( 0 == gTargetArraySize )
		return 3;
	else
		return 1;
}


int Gambit_UpperMenu_Effect(MenuProc* procMU, MenuCommandProc* procCMD){
	_ResetIconGraphics();
	LoadIconPalettes(0x4);
	
	// Avoid Text in Tile overflow
	Text_InitFont();
	
	StartMenu(GambitSelectMenu);
	return ME_CLEAR_GFX | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}


void Gambit_UpperMenu_Hover(MenuProc* procMU, MenuCommandProc* procCMD){
	BmMapFill(gMapMovement,-1);
	BmMapFill(gMapRange,0);
	FillRangeMapForHover(gActiveUnit,2);
	
	Proc* proc = ProcFind(gProc_MoveLimitView);
	if( proc )
		*((u16*)proc+0x4A/2) = 0x24; 	//Load Red&Green(need new-MapDisplay)

	DisplayMoveRangeGraphics(0x24);
	
}


void Gambit_UpperMenu_Unhover(MenuProc* procMU, MenuCommandProc* procCMD){
	BmMapFill(gMapMovement,-1);
	BmMapFill(gMapRange,0);
	
	DisplayMoveRangeGraphics(0x3);
	HideMoveRangeGraphicsWrapper();
}








// Sub Menu
int GambitSelectMenu_Usability(const MenuCommandDefinition* cmddef, int para){
	return 1;
}


int GambitSelectMenu_Effect(MenuProc* procMU, MenuCommandProc* procCMD){
	COMMON_SUBEFFECT_INDEX = procCMD->commandDefinitionIndex;
	
	gActionData.itemSlotIndex = 0;
	
	ClearIcons();
	ClearBG0BG1();
	
	MakeTargetListFor_SubGambitMenu(gActiveUnit,0x2);
	StartTargetSelection(pGambit_TargetSelection_Func);
	
	return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}


void GambitSelectMenu_Hover(MenuProc* procMU, MenuCommandProc* procCMD){
	BmMapFill(gMapMovement,-1);
	BmMapFill(gMapRange,0);
	FillRangeMapForHover(gActiveUnit,2);

	DisplayMoveRangeGraphics(0x24);
}


void GambitSelectMenu_Unhover(MenuProc* procMU, MenuCommandProc* procCMD){
	BmMapFill(gMapRange,0);
	FillRangeMapForHover(gActiveUnit,2);
	DisplayMoveRangeGraphics(0x3);
	
	// Avoid Text in Tile overflow
	Text_InitFont();
	
	if( !(0x4 & procMU->stateBits) )
		HideMoveRangeGraphicsWrapper();
	return;
}



