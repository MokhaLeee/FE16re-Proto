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











/* ================================
   ========== Wpn Select ==========
   ================================ */
// Usability
int CA_WpnSelectUsability(MenuProc* pmu, int index){
	
	u8 wpnType;
	u16 item;
	CombatArtInfo* cur;
	
	cur = &gpCombatArtConigList[gpBattleFlagSu->artId];
	wpnType = cur->wpnType;
	
	// 只需要调用标志位
	// 因为上一层, Unhover只清除了标志位
	gpBattleFlagSu->isCombat = 1;
	
	// Judge Item
	item = gActiveUnit->items[index];
		
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
	return MCA_NONUSABLE;
}






int CA_WpnSelectEffect(MenuProc* pmu, MenuCommandProc* pcmd){
	
	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	
	// Set Wpn-Eqp System
	SetWpnEqpForce(gActiveUnit,wpn);
	EquipUnitItemSlot(
		gActiveUnit, 
		pcmd->commandDefinitionIndex);

	ClearBG0BG1();
	MakeTargetListForWeapon(gActiveUnit,wpn);
	StartTargetSelection(gtsFuncs_CA);
	
	return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}



// On B Press
int CA_WpnSelectBPress(MenuProc* pmu, MenuCommandProc* pcmd){
	
	// 清除标志位
	gpBattleFlagSu->isCombat = 0;
	
	// Vanilla 8022860
	FillBgMap(gBg2MapBuffer,0);
	EnableBgSyncByMask(0b100);
	Text_ResetTileAllocation();	// This is reset font!
	
	StartMenu(CAselectMenu);
	
	HideMoveRangeGraphics();
	return 0x3B; // W.I.P.
}



// Hover
int CA_WpnSelectHover(MenuProc* pmu, MenuCommandProc* pcmd){
	
	// On Init
	u16 item;
	UnitExt* ext;
	
	ext = GetUnitExtByUnit(gActiveUnit);
	
	if( NULL == ext )
		return 0;
	
	// Set Battle Info ext( for RangeGetter)
	// SetCombatArtInfo(gActiveUnit,artId);
	gpBattleFlagSu->isCombat = 1;
	
	// Update Side  window
	UpdateMenuItemPanel(pcmd->commandDefinitionIndex);
	
	// Draw Map
	BmMapFill(gMapMovement,-1);
	BmMapFill(gMapRange,0);
	
	item = gActiveUnit->items[pcmd->commandDefinitionIndex];
		
	if( item )
	if( IA_WEAPON & GetItemAttributes(item) )
	if( CanUnitUseWeapon(gActiveUnit, item) )
		FillMapForSingleItem(gActiveUnit,item);
	
	DisplayMoveRangeGraphics(RNG_RED);
	return 0;
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




/* ================================
   ======= Target Selection =======
   ================================ */
int TS_ReturnB_CA(void){
	
	if( MapEventEngineExists() )
		return TSE_NONE;
	
	else
	{
		ProcStart(gProc_PostTs_Return,(Proc*)3);
		return TSE_PLAY_BOOP | TSE_END | TSE_DISABLE;
	}
}



void BuildWpnSelectReturnMenu_CA(Proc* parent){
	_ResetIconGraphics();
	LoadIconPalettes(0x4);
	
	MenuProc* um = StartMenu(CAwpnSelectMenu);
	ForceMenuItemPanel(um,gActiveUnit,0xF,0xB);
	
	StartFace(0,GetUnitPortraitId(gActiveUnit),0xB0,0xC,0x2);
	SetFaceBlinkControlById(0,5);
	
	gpBattleFlagSu->isCombat = 1;
}






