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
   ========== Unit  Menu ==========
   ================================ */
static int Mag_Usability(MenuProc* pmu, int index, FuncType1 IsEmpty){
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	
	gUnitSubject = gActiveUnit;
	
	// 不是我方不能用
	if( FACTION_BLUE != UNIT_FACTION(gActiveUnit) )
		return MCA_NONUSABLE;
	
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
		//SetFaceBlinkControlById(0,5);
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




