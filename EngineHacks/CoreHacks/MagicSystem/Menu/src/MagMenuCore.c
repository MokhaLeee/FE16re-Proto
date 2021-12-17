#include "gbafe.h"
#include "UnitExt.h"
#include "StrMagCha.h"
#include "StatusGetter.h"
#include "MapMaster.h"
#include "Gambit.h"

#include "Common.h"
extern u8* gpCommonSaveSu;
#define CMD_CUR_NUM (*gpCommonSaveSu)	//  Total Count of SubMenu command number

#include "MagicSystem.h"




typedef int (*FuncType1) (UnitExt*);
typedef u16 (*FuncType2) ( UnitExt*, u8);
extern void ItemEffect_Call(Unit*,u16);
extern short TextId_umMagGrayBox;
extern short TextId_umSubMagGrayBox;


/* ================================
   ========== Unit  Menu ==========
   ================================ */
static int Mag_Usability(MenuProc* pmu, int index, FuncType1 IsEmpty){
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	
	gUnitSubject = gActiveUnit;
	
	// 三房特色判定法：不能用魔法当然不能用
	if( !IsClassHandleMag(UNIT_CLASSID(gActiveUnit)) )
		return MCA_NONUSABLE;
	
	if( NULL == ext )
		return MCA_NONUSABLE;
	
	if( FALSE == isUnitMagSet(ext) )
		SetUnitMagList(gActiveUnit);
	
	if( !IsEmpty(ext) )
		return MCA_USABLE;
	else
		return MCA_GRAYED;
}

int BMag_Usability(MenuProc* pmu, int index)
{	return Mag_Usability(pmu,index,isBMagListEmpty); }

int WMag_Usability(MenuProc* pmu, int index)
{	return Mag_Usability(pmu,index,isWMagListEmpty); }



static int Mag_Effect(MenuProc* pmu, MenuCommandProc* pcmd, const MenuDefinition* mdef){
	// 如果不能用就用MenuHelpBox
	if( MCA_USABLE != pcmd->availability )
	{
		MenuCallHelpBox(pmu,TextId_umMagGrayBox);
		return ME_NONE; //ME_PLAY_BOOP;
	}
	
	// Reset Sub-Menu num
	CMD_CUR_NUM = 0;
	
	_ResetIconGraphics();
	LoadIconPalettes(0x4);
	
	MenuProc* umMag = StartMenu(mdef);
	
	// Panel
	// 暂时只支持黑魔法
	if( BMagSelectMenu == mdef )
	{
		StartFace(0,GetUnitPortraitId(gActiveUnit),0xB0,0xC,0x2);
		SetFaceBlinkControlById(0,5);
		StartBMagicMenuPanel(umMag,gActiveUnit,0xF,0xB);
	}
	
	return ME_CLEAR_GFX | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}


int BMag_Effect(MenuProc* pmu, MenuCommandProc* pcmd){

	return Mag_Effect(pmu,pcmd,BMagSelectMenu);
}

int WMag_Effect(MenuProc* pmu, MenuCommandProc* pcmd)
{	return Mag_Effect(pmu,pcmd,WMagSelectMenu); }


/* ================================
   ========= Upper Hover ==========
   ================================ */


static int Mag_UpperHover(MenuProc* pmu, MenuCommandProc* pcmd,FuncType2 getmagitem, u8 mapDisplayStyle){	
	int magCnt = 0;
	u16 mag = 0;
	u32 mask = 0;
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	
	if( NULL == ext )
		return 0;
	if( MCA_USABLE != pcmd->availability )
		return 0;
	
	for(int i=0; i<MAGIC_LIST_SIZE; i++ )
	{
		mag = getmagitem(ext,i);//GetBMagItem(ext,i);
		if( 0 != mag )
		{
			mask = mask | ItemRange2Mask(mag,gActiveUnit);
			magCnt++;
		}
	}
	
	if( 0 == magCnt )
		return 0;
	
	BmMapFill(gMapMovement,-1);
	BmMapFill(gMapRange,0);
	
	// FillRangeMapByRangeMask(gActiveUnit,mask);
	// FillMapMaster(gActiveUnit, mask, &gMapRange, NU_RANGE_MAP);
	FillMapRange(gActiveUnit,mask);
	
	DisplayMoveRangeGraphics(mapDisplayStyle);
	return 0;
}

int BMag_UpperHover(MenuProc* pmu, MenuCommandProc* pcmd)
{	return Mag_UpperHover(pmu,pcmd,GetBMagItem,RNG_RED); }

int WMag_UpperHover(MenuProc* pmu, MenuCommandProc* pcmd)
{	return Mag_UpperHover(pmu,pcmd,GetWMagItem,RNG_GREEN); }




















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


int BWmagCommon_Unhover(void){
	BmMapFill(gMapMovement,-1);
	BmMapFill(gMapRange,0);
	DisplayMoveRangeGraphics(0x3);
	HideMoveRangeGraphicsWrapper();
	return 0;
}



