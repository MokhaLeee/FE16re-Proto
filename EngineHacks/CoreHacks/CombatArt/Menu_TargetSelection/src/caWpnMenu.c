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
	
	MenuProc* umCA;
	
	// 清除标志位
	gpBattleFlagSu->isCombat = 0;
	
	// Vanilla 8022860
	FillBgMap(gBg2MapBuffer,0);
	EnableBgSyncByMask(0b100);
	Text_ResetTileAllocation();	// This is reset font!
	_ResetIconGraphics();
	LoadIconPalettes(0x4);
	
	// Start Menu
	umCA = StartMenu(CAselectMenu);
	
	// Menu Panel
	StartFace(0,GetUnitPortraitId(gActiveUnit),0xB0,0xC,0x2);
	StartMenuPanel_CombatArt(umCA, gActiveUnit,0xF,0xB);
	
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
	
	// Update Side window
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
