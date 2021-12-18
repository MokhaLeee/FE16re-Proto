#include "gbafe.h"
#include "_gbafe16.h"

void MenuPanel_UpdateBuSimple(u16 item, s8 itemSlot){

	gBattleActor.weaponSlotIndex = itemSlot;
	gBattleActor.weapon = item;
	gBattleActor.weaponBefore = item;
	gBattleActor.canCounter = FALSE;
	SetWpnEqp(&gBattleActor.unit,item);
	FillPreBattleStats(&gBattleActor, &gBattleTarget);

}

void MenuPanel_DrawWpn(u16 IconIndex){
	
	PanelProc* panel = (PanelProc*)ProcFind( gProc_MenuItemPanel );
	
	if( NULL == panel )
		return;
	
	Text_Clear(&panel->text[0]);
	Text_Clear(&panel->text[1]);
	Text_Clear(&panel->text[2]);
	
	// (int x, int y, int w, int h, int style)
	MakeUIWindowTileMap_BG0BG1(
		panel->xPos,
		panel->yPos,
		0xE, 0x8, 0 );
	
	
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
		IconIndex,
		panel->IconPalIndex << 0xC );
		
	
	// End
	EnableBgSyncByMask(0b1);
	
}