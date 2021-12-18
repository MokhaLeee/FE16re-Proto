#include "gbafe.h"
#include "_gbafe16.h"
static void MenuPanel_DrawCombatArt(CombatArtInfo* caInfo);
extern u16 text_CA_PhyAtk;
extern u16 text_CA_MagAtk;


void StartMenuPanel_CombatArt(MenuProc* pmu, Unit* unit, u8 xPos, u8 yPos){
	ForceMenuItemPanel(pmu, unit, xPos, yPos);
	
	
	gBattleActor.battleAttack = 0;
	gBattleActor.battleCritRate = 0;
	gBattleActor.battleHitRate = 0;
	gBattleActor.battleAvoidRate =0;
	
	gBattleTarget.battleAttack = 0;
	gBattleTarget.battleCritRate = 0;
	gBattleTarget.battleHitRate = 0;
	gBattleTarget.battleAvoidRate = 0;
	
	return;
}


void UpdateMenuPanel_CombatArt(CombatArtInfo* caInfo){	

	gBattleActor.battleAttack = caInfo->mtBonus;
	gBattleActor.battleCritRate = caInfo->critBonus;
	gBattleActor.battleHitRate = caInfo->hitBonus;
	gBattleActor.battleAvoidRate =caInfo->avoBonus;
	
	MenuPanel_DrawCombatArt( caInfo );
	return;
}

void EndMenuPanel_CombatArt(void){
	EndEachProc(gProc_MenuItemPanel);
}











// internal
static void MenuPanel_DrawCombatArt(CombatArtInfo* caInfo){
	
	u8 color;
	PanelProc* panel = (PanelProc*)ProcFind( gProc_MenuItemPanel );
	
	if( NULL == panel )
		return;
	
	// 不再显示箭头了
	panel->_unk64 = FALSE;
	
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
	// "Attack Def or Res"
	if( ATTR_CA_INFO_MAGIC_SWARD & caInfo->attr )
		Text_InsertString(
			&panel->text[0],
			0x1C,
			TEXT_COLOR_GREEN,
			GetStringFromIndex(text_CA_MagAtk) );
	else
		Text_InsertString(
			&panel->text[0],
			0x1C,
			TEXT_COLOR_NORMAL,
			GetStringFromIndex(text_CA_PhyAtk) );
		
	
	// "Mt"
	Text_InsertString(
		&panel->text[1],
		0x2,
		TEXT_COLOR_NORMAL,
		GetStringFromIndex(0x503) );
	
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
	if( gBattleActor.battleAttack > 0 )
		color = TEXT_COLOR_GREEN;
	else
		color = TEXT_COLOR_NORMAL;
	
	Text_InsertNumberOr2Dashes(
		&panel->text[1],
		0x24,
		color,
		gBattleActor.battleAttack );
	
	
	// Bu.Hit
	if( gBattleActor.battleHitRate > 0 )
		color = TEXT_COLOR_GREEN;
	else
		color = TEXT_COLOR_NORMAL;
	
	Text_InsertNumberOr2Dashes(
		&panel->text[2],
		0x24,
		color,
		gBattleActor.battleHitRate );
	
	
	// Bu.Crit
	if( gBattleActor.battleCritRate > 0 )
		color = TEXT_COLOR_GREEN;
	else
		color = TEXT_COLOR_NORMAL;
	
	Text_InsertNumberOr2Dashes(
		&panel->text[1],
		0x54,
		color,
		gBattleActor.battleCritRate );
	
	
	// Bu.Avoid
	if( gBattleActor.battleAvoidRate > 0 )
		color = TEXT_COLOR_GREEN;
	else
		color = TEXT_COLOR_NORMAL;
	
	Text_InsertNumberOr2Dashes(
		&panel->text[2],
		0x54,
		color,
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
		
	
	// End
	EnableBgSyncByMask(0b1);
	
}
