#include "gbafe.h"
#include "UnitExt.h"
#include "MagicSystem.h"

static void unk_Draw(u8 xPos, u8 yPos, u8 style);
static void MenuPanelBMag_Idle(PanelProc* proc);
// static void const (*MenuPanelBMag_Idle)(Proc*) = (const void*)(0x801E684+1);

const ProcInstruction gProc_MenuPanelBMag[] = {
	PROC_15,
	PROC_REPEAT(MenuPanelBMag_Idle),
	PROC_END
}; 


// 0x801E684
static void MenuPanelBMag_Idle(PanelProc* proc){
	if( FALSE == proc->_unk64 )
		return;
	
	if( proc->ItemSlotIndex < 0 )
		return;
	
	// Atk
	if( gBattleActor.battleAttack > gBattleTarget.battleAttack )
		unk_Draw( proc->xPos*8+0x33, (proc->yPos+3)*8, 0 );
	
	if( gBattleActor.battleAttack < gBattleTarget.battleAttack )
		unk_Draw( proc->xPos*8+0x33, (proc->yPos+3)*8, 1 );
	
	// Hit
	if( gBattleActor.battleHitRate > gBattleTarget.battleHitRate )
		unk_Draw( proc->xPos*8+0x33, (proc->yPos+5)*8, 0 );
	if( gBattleActor.battleHitRate < gBattleTarget.battleHitRate )
		unk_Draw( proc->xPos*8+0x33, (proc->yPos+5)*8, 1 );
	
	// Crit
	if( gBattleActor.battleCritRate > gBattleTarget.battleCritRate )
		unk_Draw( proc->xPos*8+0x63, (proc->yPos+3)*8, 0 );
	if( gBattleActor.battleCritRate < gBattleTarget.battleCritRate )
		unk_Draw( proc->xPos*8+0x63, (proc->yPos+3)*8, 1 );
	
	// Avo
	if(gBattleActor.battleAvoidRate > gBattleTarget.battleAvoidRate)
		unk_Draw( proc->xPos*8+0x63, (proc->yPos+5)*8, 0 );
	if( gBattleActor.battleAvoidRate < gBattleTarget.battleAvoidRate )
		unk_Draw( proc->xPos*8+0x63, (proc->yPos+5)*8, 1 );
	
	return;
}


static void unk_Draw(u8 xPos, u8 yPos, u8 style){
	const struct ObjData** ppData;
	int mod = Mod(GetGameClock()/8,3);
	
	if( 0 == style )
		ppData = ObjData_859A530;
	else
		ppData = ObjData_859A53C;
	
	//(int node, u16 xBase, u16 yBase, const struct ObjData* pData, u16 tileBase);
	ObjInsertSafe(4, xPos, yPos, ppData[mod], 0);
}






// 0x801E684
void StartBMagicMenuPanel(MenuProc* pmu, Unit* unit, u8 xPos, u8 yPos){
	PanelProc* panel;
	
	if( 0 != ProcFind( gProc_MenuPanelBMag ) )
		return;
	
	panel = (PanelProc*)ProcStart(gProc_MenuPanelBMag, (Proc*)pmu);
	
	panel->unit = unit;
	panel->xPos = xPos;
	panel->yPos = yPos;
	panel->IconPalIndex = 3;
	
	// panel->ItemSlotIndex = GetUnitEquippedWeaponSlot(unit);
	panel->_unk64 = TRUE;
	
	Text_InitDB( &panel->text[0], 0xC );
	Text_InitDB( &panel->text[1], 0xC );
	Text_InitDB( &panel->text[2], 0xC );
	
	LoadIconPalette( 1 , panel->IconPalIndex );
	
	
	BattleGenerateUiStats( panel->unit, BU_ISLOT_AUTO );

	
	gBattleTarget.battleAttack = gBattleActor.battleAttack;
	gBattleTarget.battleHitRate = gBattleActor.battleHitRate;
	gBattleTarget.battleCritRate = gBattleActor.battleCritRate;
	gBattleTarget.battleAvoidRate = gBattleActor.battleAvoidRate;
}







void UpdateMenuPanelBMag(u16 item){
	PanelProc* panel = (PanelProc*)ProcFind( gProc_MenuPanelBMag );
	
	Text_Clear(&panel->text[0]);
	Text_Clear(&panel->text[1]);
	Text_Clear(&panel->text[2]);
	
	// (int x, int y, int w, int h, int style)
	MakeUIWindowTileMap_BG0BG1(
		panel->xPos,
		panel->yPos,
		0xE, 0x8, 0 );
	
	if( 0 == item )
		return;
	
	// For BattleUnitUI
	gBattleActor.weaponSlotIndex = BU_ISLOT_BMAG;
	gBattleActor.weapon = item;
	gBattleActor.weaponBefore = item;
	gBattleActor.canCounter = FALSE;
	SetWpnEqp(&gBattleActor.unit,item);
	FillPreBattleStats(&gBattleActor, &gBattleTarget);


	// Draw
	// Text_InsertString(struct TextHandle*, int xPos, int color, const char*)
	// "Affin"
	Text_InsertString(
		&panel->text[0],
		0x1C,
		TEXT_COLOR_NORMAL,
		GetStringFromIndex(0x4F1) );
	
	// "Atk"
	Text_InsertString(
		&panel->text[1],
		0x2,
		TEXT_COLOR_NORMAL,
		GetStringFromIndex(0x4F3) );
	
	// "Hit"
	Text_InsertString(
		&panel->text[2],
		0x2,
		TEXT_COLOR_NORMAL,
		GetStringFromIndex(0x4F4) );
	
	// "Crit"
	Text_InsertString(
		&panel->text[1],
		0x32,
		TEXT_COLOR_NORMAL,
		GetStringFromIndex(0x501) );
	
	// "Avoid"
	Text_InsertString(
		&panel->text[2],
		0x32,
		TEXT_COLOR_NORMAL,
		GetStringFromIndex(0x4F5) );
	
	
	
	// Text_InsertNumberOr2Dashes(struct TextHandle*, int xPos, int color, u8); 
	// Bu.Atk
	Text_InsertNumberOr2Dashes(
		&panel->text[1],
		0x24,
		TEXT_COLOR_BLUE,
		gBattleActor.battleAttack );
	
	// Bu.Hit
	Text_InsertNumberOr2Dashes(
		&panel->text[2],
		0x24,
		TEXT_COLOR_BLUE,
		gBattleActor.battleHitRate );
	
	// Bu.Crit
	Text_InsertNumberOr2Dashes(
		&panel->text[1],
		0x54,
		TEXT_COLOR_BLUE,
		gBattleActor.battleCritRate );
	
	// Bu.Avoid
	Text_InsertNumberOr2Dashes(
		&panel->text[2],
		0x54,
		TEXT_COLOR_BLUE,
		gBattleActor.battleAvoidRate );
		
	
	// Text_Display(struct TextHandle*, u16* bgMap)
	Text_Display(
		&panel->text[0],
		TILEMAP_LOCATED(gBg0MapBuffer, panel->xPos+1, panel->yPos+1) );
	
	Text_Display(
		&panel->text[1],
		TILEMAP_LOCATED(gBg0MapBuffer, panel->xPos+1, panel->yPos+3) );
	
	Text_Display(
		&panel->text[2],
		TILEMAP_LOCATED(gBg0MapBuffer, panel->xPos+1, panel->yPos+5) );
	
	// (u16* bgOut, int iconId, int oam2Base)
	DrawIcon(
		TILEMAP_LOCATED(GetBgMapBuffer(0), panel->xPos+8, panel->yPos+1),
		GetItemType(item) + 0x70,
		panel->IconPalIndex << 0xC );
	
	
	
	// End
	EnableBgSyncByMask(0b1);
	return;
}


void EndMenuPanelBMag(void){
	EndEachProc(gProc_MenuPanelBMag);
}
