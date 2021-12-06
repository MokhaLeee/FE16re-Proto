#include "gbafe.h"
#include "UnitExt.h"
#include "CombatArt.h"
#include "RangeGetter.h"

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
	
	// Avoid Text in Tile overflow
	Text_InitFont();
	
	return ME_CLEAR_GFX | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}



/* ================================
   ========== CA Select ===========
   ================================ */
// Usability
int CA_SelectUsability(MenuProc* pmu, int index)
{
	// On Init
	u8 wpnType, artId;
	u16 item;
	CombatArtInfo* cur;
	UnitExt* ext;
	
	ext = GetUnitExtByUnit(gActiveUnit);
	
	if( NULL == ext )
		return MCA_NONUSABLE;
	
	if( !ext->skillbattle[index] )
		return MCA_NONUSABLE;
	
	artId = ext->skillbattle[index];
	cur = &gpCombatArtConigList[artId];
	wpnType = cur->wpnType;
	
	// Set Battle Info ext( for RangeGetter)
	SetCombatArtInfo(gActiveUnit,artId);
	
	
	
	// 这里只要角色列表.index有战技,那就能用
	// 之于为什么列表里有这个战技,不归这里管
	
	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	{
		item = gActiveUnit->items[i];
		
		if( item )
			if( IA_WEAPON & GetItemAttributes(item) )
				if( GetItemType(item) == wpnType )
					if( CanUnitUseWeapon(gActiveUnit, item) )
						if( ITEM_USE(item) > cur->durCost ) 
						{
							MakeTargetListForWeapon(gActiveUnit,item);
							if( GetTargetListSize() )
								return MCA_USABLE;
						}
	}
	
	return MCA_GRAYED;
}


// Effect
int CA_SelectEffect( MenuProc* pmu, MenuCommandProc* pcmd ){
	return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}


// Draw Text
// decomp->uimenu: void RedrawMenu(struct MenuProc* proc)
int CA_SelectTextDraw(MenuProc* pmu, MenuCommandProc* pcmd){

	u8 cmdId = pcmd->commandDefinitionIndex;
	u8 artId = GetUnitExtByUnit(gActiveUnit)->skillbattle[cmdId];
	
	if( MCA_USABLE != pcmd->availability )
		Text_SetColorId( &pcmd->text, TEXT_COLOR_GRAY );
	else
		Text_SetColorId( &pcmd->text ,TEXT_COLOR_NORMAL);
	
	Text_AppendString(
		&pcmd->text,
		GetStringFromIndex(gpCombatArtConigList[artId].name) );
	
	Text_Display(
		&pcmd->text,
		TILEMAP_LOCATED(gBg0MapBuffer, 
		pcmd->xDrawTile, 
		pcmd->yDrawTile) );
	
	return 0;
}


// Hover
int CA_SelectHover(MenuProc* pmu, MenuCommandProc* pcmd){
	
	// On Init
	u8 wpnType, cnt, artId;
	u16 item;
	u32 mask;
	CombatArtInfo* cur;
	UnitExt* ext;
	
	ext = GetUnitExtByUnit(gActiveUnit);
	
	if( NULL == ext )
		return 0;
	
	artId = ext->skillbattle[pcmd->commandDefinitionIndex];
	cur = &gpCombatArtConigList[artId];
	wpnType = cur->wpnType;
	
	// Set Battle Info ext( for RangeGetter)
	SetCombatArtInfo(gActiveUnit,artId);
	
	// Make mask
	cnt = 0;
	mask = 0;
	
	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	{
		item = gActiveUnit->items[i];
		
		if( item )
		if( IA_WEAPON & GetItemAttributes(item) )
		if( GetItemType(item) == wpnType )
		if( CanUnitUseWeapon(gActiveUnit, item) )
		if( ITEM_USE(item) > cur->durCost )
		{
			mask |= ItemRange2Mask(item,gActiveUnit);
			cnt++;
		}
	}
	
	if( 0 == cnt )
		return 0;
	
	// Draw Map
	BmMapFill(gMapMovement,-1);
	BmMapFill(gMapRange,0);
	FillRangeMapByRangeMask(gActiveUnit,mask);
	DisplayMoveRangeGraphics(2);
	return 0;
}


int CA_CommonUnHover(void){
	ResetCombatArtInfo();
	BmMapFill(gMapMovement,-1);
	BmMapFill(gMapRange,0);
	DisplayMoveRangeGraphics(0x3);
	HideMoveRangeGraphicsWrapper();
	return 0;
}