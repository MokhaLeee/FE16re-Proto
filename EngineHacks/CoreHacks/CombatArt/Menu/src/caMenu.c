#include "gbafe.h"
#include "UnitExt.h"
#include "CombatArt.h"

extern u16 TextId_umCAGrayBox;
extern const MenuDefinition CAselectMenu[];




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
	return ME_CLEAR_GFX | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}



/* ================================
   ========== CA Select ===========
   ================================ */
int CA_SelectUsability(MenuProc* pmu, int index)
{
	UnitExt* ext;
	
	ext = GetUnitExtByUnit(gActiveUnit);
	
	if( NULL == ext )
		return MCA_NONUSABLE;
	
	// 这里只要角色列表.index有战技,那就能用
	// 之于为什么列表里有这个战技,不归这里管
	if( ext->skillbattle[index] )
		return MCA_USABLE;
	else
		return MCA_GRAYED;
}


int CA_SelectEffect( MenuProc* pmu, MenuCommandProc* pcmd ){
	return pcmd->commandDefinitionIndex;
}


// decomp->uimenu: void RedrawMenu(struct MenuProc* proc)
int CA_SelectTextDraw(MenuProc* pmu, MenuCommandProc* pcmd){
	Text_AppendString(
		&pcmd->text,
		GetStringFromIndex(gpCombatArtConigList[pcmd->commandDefinitionIndex].name) );
	
	Text_Display(
		&pcmd->text,
		TILEMAP_LOCATED(gBg0MapBuffer, 
		pcmd->xDrawTile, 
		pcmd->yDrawTile) );
	
	return 0;
}
