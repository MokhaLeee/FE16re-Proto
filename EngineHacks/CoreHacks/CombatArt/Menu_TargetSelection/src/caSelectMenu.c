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
	
	MenuProc* um;
	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	
	if( (NULL == ext) | (MCA_USABLE != pcmd->availability) )
	{
		MenuCallHelpBox(pmu,TextId_umCAselectGrayBox);
		return ME_NONE;
	}
	
	u8 artId = ext->skillbattle[pcmd->commandDefinitionIndex];
	
	// Set Battle Info ext( for RangeGetter)
	SetCombatArtInfo(gActiveUnit,artId);
	
	_ResetIconGraphics();
	LoadIconPalettes(0x4);
	
	um = StartMenu(CAwpnSelectMenu);
	ForceMenuItemPanel(um,gActiveUnit,0xF,0xB);
	
	StartFace(0,GetUnitPortraitId(gActiveUnit),0xB0,0xC,0x2);
	SetFaceBlinkControlById(0,5);
	
	return ME_CLEAR_GFX | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}



// On B Press
int CA_SelectBPress(MenuProc* pmu, MenuCommandProc* pcmd){
	
	// 清除标志位
	gpBattleFlagSu->isCombat = 0;
	
	// Vanilla 8022860
	FillBgMap(gBg2MapBuffer,0);
	EnableBgSyncByMask(0b100);
	Text_ResetTileAllocation();	// This is reset font!
	
	StartSemiCenteredOrphanMenu(
		gMenu_UnitMenu,
		gGameState.cursorPosMenu.x - gGameState.cameraRealPos.x,
		0x01, 0x14);
	HideMoveRangeGraphics();
	
	return 0x3B; // W.I.P.
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

