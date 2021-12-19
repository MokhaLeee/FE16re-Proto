#include "gbafe.h"
#include "_gbafe16.h"

extern u8* gpCommonSaveSu;
#define CMD_CUR_NUM (*gpCommonSaveSu)	//  Total Count of SubMenu command number

typedef int (*FuncType1) (UnitExt*);
typedef u16 (*FuncType2) ( UnitExt*, u8);
extern void ItemEffect_Call(Unit*,u16);
extern short TextId_umMagGrayBox;
extern short TextId_umSubMagGrayBox;


/* ================================
   =========== Sub Menu ===========
   ================================ */
   
   
/* ================================
   =========== Usability ==========
   ================================ */

int BMagSelect_Usability(MenuProc* pmu, int index)
{
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	u8 mag = GetBMagItem( ext,index );
	
	if( (NULL==ext) | (0==mag) )
		return MCA_NONUSABLE;
	
	if( CMD_CUR_NUM > (MAX_CMD_NUM-1) )
		return MCA_NONUSABLE;
	
	// Count for total cmd-number
	CMD_CUR_NUM++;
	
	MakeTargetListForWeapon(gActiveUnit,mag);
	
	if( 0 == GetTargetListSize() )
		return MCA_GRAYED;
	else
		return MCA_USABLE;
}


int WMagSelect_Usability(MenuProc* pmu, int index)
{
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	u16 mag = GetWMagItem(ext,index);
	
	if( (NULL==ext) | (0==mag) )
		return MCA_NONUSABLE;
	
	if( CMD_CUR_NUM > (MAX_CMD_NUM-1) )
		return MCA_NONUSABLE;
	
	CMD_CUR_NUM ++;
	
	if( IA_STAFF & GetItemAttributes(mag) )
		if( CanUnitUseItem(gActiveUnit,mag) )
			return MCA_USABLE;
	
	return MCA_GRAYED;
}





/* ================================
   ============ Effect ============
   ================================ */

int BMagSelect_Effect(MenuProc* pmu, MenuCommandProc* pcmd){
	u16 mag = 0;
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	
	if( NULL == ext )
		return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
	
	// 如果不能用就用MenuHelpBox
	if( MCA_USABLE != pcmd->availability )
	{
		MenuCallHelpBox(pmu,TextId_umSubMagGrayBox);
		return ME_NONE; //ME_PLAY_BOOP;
	}
	
	mag = MAKE_ITEM(
		gpBMagList[pcmd->commandDefinitionIndex].index,
		GetBMagUse(ext,pcmd->commandDefinitionIndex) );
	
	// Set Wpn-Eqp System
	SetWpnEqpForce(gActiveUnit,mag);
	gActionData.itemSlotIndex = BU_ISLOT_BMAG;
	
	// Panel
	EndMenuPanelBMag();
	
	ClearIcons();
	ClearBG0BG1();
	
	MakeTargetListForWeapon(gActiveUnit,mag);
	StartTargetSelection(gTSfunc_BMag);
	DisplayMoveRangeGraphics(RNG_RED);
	
	// Reset cmd-count
	CMD_CUR_NUM = 0;
	return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}


// W.I.P
int WMagSelect_Effect(MenuProc* pmu, MenuCommandProc* pcmd){
	//return MagSelect_Effect(pmu,pcmd,EWMAG);
	u16 mag = 0;
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	
	if( NULL == ext )
		return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
	
	// 如果不能用就用MenuHelpBox
	if( MCA_USABLE != pcmd->availability )
	{
		MenuCallHelpBox(pmu,TextId_umSubMagGrayBox);
		return ME_NONE;//ME_PLAY_BOOP;
	}
	
	mag = MAKE_ITEM(
			gpWMagList[pcmd->commandDefinitionIndex].index,
			GetWMagUse(ext,pcmd->commandDefinitionIndex) );
			
	// Set Wpn-Eqp System
	SetWpnEqpForce(gActiveUnit,mag);
	gActionData.itemSlotIndex = BU_ISLOT_WMAG;

	//ClearIcons();
	ClearBG0BG1();
	
	// Reset cmd-count
	CMD_CUR_NUM = 0;
	
	// W.I.P
	ItemEffect_Call(gActiveUnit,mag);
	
	DisplayMoveRangeGraphics(RNG_GREEN);
	return ME_PLAY_BEEP | ME_END | ME_DISABLE;
	
}






/* ================================
   ============ Hover =============
   ================================ */



int BMagSelect_Hover(MenuProc* pmu, MenuCommandProc* pcmd){
	u16 mag = 0;
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	
	if( NULL == ext )
		return 0;
	
	mag = MAKE_ITEM(
		gpBMagList[pcmd->commandDefinitionIndex].index,
		GetBMagUse(ext,pcmd->commandDefinitionIndex) );
	
	// Panel
	UpdateMenuPanelBMag(mag);
	
	BmMapFill(gMapMovement,-1);
	BmMapFill(gMapRange,0);
	
	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(mag) );
	
	DisplayMoveRangeGraphics(RNG_RED);
	return 0;
}




int WMagSelect_Hover(MenuProc* pmu, MenuCommandProc* pcmd){
	//return MagSelect_Hover(pmu,pcmd,EWMAG);
	u16 mag = 0;
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	
	if( NULL == ext )
		return 0;
	
	mag = MAKE_ITEM(
		gpWMagList[pcmd->commandDefinitionIndex].index,
		GetWMagUse(ext,pcmd->commandDefinitionIndex) );
	
	BmMapFill(gMapMovement,-1);
	BmMapFill(gMapRange,0);
	
	FillMapForSingleItem(gActiveUnit,mag);
	DisplayMoveRangeGraphics(RNG_GREEN);
	return 0;
}


/*  
// Unused
int BWmagSelect_Unhover(MenuProc* pum, MenuCommandProc* pcmd){
	
	if( pum->stateBits & MENU_STATE_ENDING )
		HideMoveRangeGraphics();
	return 0;
}
 */



/* ================================
   ========== Draw Text ===========
   ================================ */

static int MagSelect_TextDraw(MenuProc* pmu, MenuCommandProc* pcmd, int magType){
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	u8 color = 0;
	u8 use = 0;
	u16 mag = 0;
	
	if( (magType!=EWMAG) && (magType!=EBMAG) )
		return 0;
	
	if( NULL == ext )
		return 0;
	
	if( EBMAG == magType )
		use = GetBMagUse(ext,pcmd->commandDefinitionIndex);
	else if( EWMAG == magType )
		use = GetWMagUse(ext,pcmd->commandDefinitionIndex);
	
	if( MCA_USABLE == pcmd->availability )
		color = 1;
	
	if( EBMAG == magType )
		mag = MAKE_ITEM(gpBMagList[pcmd->commandDefinitionIndex].index, use);
	else if( EWMAG == magType )
		mag = MAKE_ITEM(gpWMagList[pcmd->commandDefinitionIndex].index, use);

	DrawItemMenuLine( 
		&pcmd->text, 
		mag, 
		color,
		gBg0MapBuffer + TILEMAP_INDEX(pcmd->xDrawTile,pcmd->yDrawTile) );
	return 0;
}


int BMagSelect_TextDraw(MenuProc* pmu, MenuCommandProc* pcmd)
{	return MagSelect_TextDraw(pmu,pcmd,EBMAG); }

int WMagSelect_TextDraw(MenuProc* pmu, MenuCommandProc* pcmd)
{	return MagSelect_TextDraw(pmu,pcmd,EWMAG); }











/* ================================
   ========== Help Box ============
   ================================ */

void BMagSelect_HelpBox(MenuProc* pmu, MenuCommandProc* pcmd){
	
	UnitExt* ext;
	u16 mag;
	
	ext = GetUnitExtByUnit(gActiveUnit);
	if( NULL == ext )
		return;
	
	mag = MAKE_ITEM(
		gpBMagList[pcmd->commandDefinitionIndex].index, 
		GetBMagUse(ext,pcmd->commandDefinitionIndex) );
		
	SetHelpBox_ByItem(8*pcmd->xDrawTile, 8*pcmd->yDrawTile, mag);
}

void WMagSelect_HelpBox(MenuProc* pmu, MenuCommandProc* pcmd){
	UnitExt* ext;
	u16 mag;
	
	ext = GetUnitExtByUnit(gActiveUnit);
	if( NULL == ext )
		return;
	
	mag = MAKE_ITEM(
		gpWMagList[pcmd->commandDefinitionIndex].index, 
		GetWMagUse(ext,pcmd->commandDefinitionIndex) );
	
	SetHelpBox_ByItem(8*pcmd->xDrawTile, 8*pcmd->yDrawTile, mag);
}

