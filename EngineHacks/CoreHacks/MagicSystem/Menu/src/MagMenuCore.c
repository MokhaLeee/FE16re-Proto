#include "gbafe.h"
#include "UnitExt.h"
#include "StrMagCha.h"

#include "MagicSystem.h"


/* ================================
   ========== Unit  Menu ==========
   ================================ */
int BMag_Usability(MenuProc* MUProc, MenuCommandProc* CmdProc){
	if( gActiveUnit )
		return MCA_USABLE;
	else
		return MCA_NONUSABLE;
}

int BMag_Effect(MenuProc* MUProc, MenuCommandProc* CmdProc){
	_ResetIconGraphics();
	LoadIconPalettes(0x4);
	
	MenuProc* umMag = StartMenu(&BMagSelectMenu);
	
	//StartFace(0,GetUnitPortraitId(gActiveUnit),0xB0,0xC,0x2);
	//SetFaceBlinkControlById(0,5);
	ForceMenuItemPanel(umMag,gActiveUnit,0xF,0xB);
	return ME_CLEAR_GFX | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}







/* ================================
   =========== Sub Menu ===========
   ================================ */
int BMagSelect_Usability(MenuProc* pmu, MenuCommandProc* pcmd){
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	
	if( NULL == ext )
		return MCA_NONUSABLE;
	
	if( 0 == GetBMagUse(ext,pcmd->commandDefinitionIndex) )
		return MCA_GRAYED;
	else
		return MCA_USABLE;
}

int BMagSelect_Effect(MenuProc* pmu, MenuCommandProc* pcmd){
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	
	u16 wpn = MAKE_ITEM(
		gpBMagList[pcmd->commandDefinitionIndex].index,
		GetBMagUse(ext,pcmd->commandDefinitionIndex) );
	
	// Set Wpn-Eqp System
	SetWpnEqp(gActiveUnit,wpn);

	ClearBG0BG1();
	MakeTargetListForWeapon(gActiveUnit,wpn);
	StartTargetSelection(&gTSfunc_BMag);
	
	return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}

int BMagSelect_Hover(MenuProc* pmu, MenuCommandProc* pcmd){
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	
	u16 wpn = MAKE_ITEM(
		gpBMagList[pcmd->commandDefinitionIndex].index,
		GetBMagUse(ext,pcmd->commandDefinitionIndex) );
	
	BmMapFill(gMapMovement,-1);
	BmMapFill(gMapRange,0);
	
	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(wpn) );
	DisplayMoveRangeGraphics(2);
	return 0;
}


int BMagSelect_TextDraw(MenuProc* pmu, MenuCommandProc* pcmd){
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	u8 color = 1;

	if( NULL == ext )
		return 0;
	
	u8 use = GetBMagUse(ext,pcmd->commandDefinitionIndex);
	if( 0 == use )
		color = 0;
	
	u16 wpn = MAKE_ITEM(gpBMagList[pcmd->commandDefinitionIndex].index, use);
	
	DrawItemMenuLine( 
		&pcmd->text, 
		wpn, 
		color,
		gBg0MapBuffer + TILEMAP_INDEX(pcmd->xDrawTile,pcmd->yDrawTile) );
	return 0;
}

