#include "gbafe.h"
#include "UnitExt.h"
#include "CombatArt.h"
#include "MapMaster.h"
#include "MagicSystem.h"

extern u16 TextId_umCAGrayBox;
extern u16 TextId_umCAselectGrayBox;
extern u16 TextId_umCAWpnSelectGrayBox;
extern const MenuDefinition gMenu_UnitMenu[];
extern const MenuDefinition CAselectMenu[];
extern const MenuDefinition CAwpnSelectMenu[];
extern TargetSelectionDefinition gtsFuncs_CA[];
extern const ProcCode gProc_PostTs_Return[];


/* ================================
   ========== Unit  Menu ==========
   ================================ */

int CA_UpperUsability( MenuProc* pmu, int index )
{	
	// 顶层需要考虑新加入角色的问题
	// 如果整个战技都是0的话,尝试重新设定一遍列表
	if( UnitHasCA(gActiveUnit) )
		return MCA_USABLE;
	else
		return MCA_GRAYED;
}


int CA_UpperEffect( MenuProc* pmu, MenuCommandProc* pcmd )
{	
	// 如果不能用就用MenuHelpBox
	if( MCA_USABLE != pcmd->availability )
	{
		MenuCallHelpBox(pmu,TextId_umCAGrayBox);
		return ME_NONE;
	}
	
	_ResetIconGraphics();
	LoadIconPalettes(0x4);
	
	StartMenu(CAselectMenu);
	
	// Avoid Text in Tile overflow
	Text_InitFont();
	
	return ME_CLEAR_GFX | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}



/* ================================
   ======== Common Unhover ========
   ================================ */

int CA_CommonUnHover(void){
	
	// 我们只清除标志位吧
	// 不去清战技信息,方便Weapon Select
	// 现在全都在B press的过程清除
	// ResetCombatArtInfo();
	// gpBattleFlagSu->isCombat = 0;
	
	BmMapFill(gMapMovement,-1);
	BmMapFill(gMapRange,0);
	DisplayMoveRangeGraphics(0x3);
	HideMoveRangeGraphicsWrapper();
	return 0;
}



