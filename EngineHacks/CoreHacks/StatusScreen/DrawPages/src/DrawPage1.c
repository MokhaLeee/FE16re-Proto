#include "gbafe.h"
#include "StatusScreen.h"
#include "StatusGetter.h"
#include "StrMagCha.h"
#include "MagicSystem.h"

extern void StatScreen_DrawLeftText(void);

static void DrawPage1_Texts(){
	// Draw Text
	DrawTextInline(		// Str
		&gStatScreen.text[STATSCREEN_TEXT_POWLABEL],
		gBmFrameTmap0 + TILEMAP_INDEX(1, 1),
		TEXT_COLOR_GOLD, 0, 0,
		GetStringFromIndex(0x4FE));
		
	DrawTextInline(		// Mag
		&gStatScreen.text[STATSCREEN_TEXT_AIDLABEL],
		gBmFrameTmap0 + TILEMAP_INDEX(1, 3),
		TEXT_COLOR_GOLD, 0, 0,
		GetStringFromIndex(0x4FF));
	
	DrawTextInline(		// Skl
		&gStatScreen.text[STATSCREEN_TEXT_SKLLABEL],
		gBmFrameTmap0 + TILEMAP_INDEX(1, 5),
		TEXT_COLOR_GOLD, 0, 0,
		GetStringFromIndex(0x4EC));

	DrawTextInline(		// Spd
		&gStatScreen.text[STATSCREEN_TEXT_SPDLABEL],
		gBmFrameTmap0 + TILEMAP_INDEX(1, 7),
		TEXT_COLOR_GOLD, 0, 0,
		GetStringFromIndex(0x4ED));
		
	DrawTextInline(		// Def
		&gStatScreen.text[STATSCREEN_TEXT_DEFLABEL],
		gBmFrameTmap0 + TILEMAP_INDEX(1, 9),
		TEXT_COLOR_GOLD, 0, 0,
		GetStringFromIndex(0x4EF));
		
	DrawTextInline(		// Res
		&gStatScreen.text[STATSCREEN_TEXT_RESLABEL],
		gBmFrameTmap0 + TILEMAP_INDEX(1, 11),
		TEXT_COLOR_GOLD, 0, 0,
		GetStringFromIndex(0x4F0));
		
		
	
	DrawTextInline(		// Lck
		&gStatScreen.text[STATSCREEN_TEXT_LCKLABEL],
		gBmFrameTmap0 + TILEMAP_INDEX(9, 1),
		TEXT_COLOR_GOLD, 0, 0,
		GetStringFromIndex(gpLuckString));
		
	DrawTextInline(		// Cha
		&gStatScreen.text[STATSCREEN_TEXT_AFFINLABEL],
		gBmFrameTmap0 + TILEMAP_INDEX(9, 3),
		TEXT_COLOR_GOLD, 0, 0,
		GetStringFromIndex(gpCharmString));
		
	DrawTextInline(		// Mov
		&gStatScreen.text[STATSCREEN_TEXT_MOVLABEL],
		gBmFrameTmap0 + TILEMAP_INDEX(9, 5),
		TEXT_COLOR_GOLD, 0, 0,
		GetStringFromIndex(0x37));
		
	DrawTextInline(		// Con
		&gStatScreen.text[STATSCREEN_TEXT_CONLABEL],
		gBmFrameTmap0 + TILEMAP_INDEX(9, 7),
		TEXT_COLOR_GOLD, 0, 0,
		GetStringFromIndex(0x4F7));
	
	DrawTextInline(		// Status
		&gStatScreen.text[STATSCREEN_TEXT_STATUS],
		gBmFrameTmap0 + TILEMAP_INDEX(9, 11),
		TEXT_COLOR_GOLD, 0, 0,
		GetStringFromIndex(gpStatString));
}


static void DrawPage1_NumBar(Unit* unit){
	
	DrawStatScreenBar(0,5,1,	// Pow
	unit->pow,
	GetUnitPower(unit),
	unit->pClassData->maxPow );
	
	DrawStatScreenBar(1,5,3,	// Mag
	*GetMagAt(unit),
	GetMag(unit),
	GetClassMaxMag(unit) );
	
	DrawStatScreenBar(2,5,5,	// Skl
	unit->skl,
	GetUnitSkill(unit),
	unit->pClassData->maxSkl );
	
	DrawStatScreenBar(3,5,7,	// Spd
	unit->spd,
	GetUnitSpeed(unit),
	unit->pClassData->maxSpd );
	
	DrawStatScreenBar(4,5,9,	// Def
	unit->def,
	GetUnitDefense(unit),
	unit->pClassData->maxDef );
	
	DrawStatScreenBar(5,5,11,	// Res
	unit->res,
	GetUnitResistance(unit),
	unit->pClassData->maxRes );
	
	DrawStatScreenBar(6,13,1,	// Lck
	unit->lck,
	GetUnitLuck(unit),
	30 );
	
	DrawStatScreenBar(7,13,3,	// Cha
	*GetChaAt(unit),
	GetCha(unit),
	GetClassMaxCha(unit) );
	
	DrawStatScreenBar(8,13,5,	// Mov
	unit->pClassData->baseMov,
	GetMov(unit),
	0xF );
	
	DrawStatScreenBar(9,13,7,	// Con
	unit->pClassData->baseCon + unit->pCharacterData->baseCon,
	GetCon(unit),
	unit->pClassData->maxCon );
}


static void DrawPage1_WpnEqp(Unit* unit){
	UnitExt* ext = GetUnitExtByUnit(unit);
	if( NULL == ext )
		return;
	
	DrawTextInline(		// Status
		&gStatScreen.text[STATSCREEN_TEXT_RESCUENAME],
		gBmFrameTmap0 + TILEMAP_INDEX(9, 9),
		TEXT_COLOR_GOLD, 0, 0,
		GetStringFromIndex(gpEqpString));
	
	DrawIcon(
        gBmFrameTmap0 + TILEMAP_INDEX(12, 9),
        GetItemIconId(ext->WpnEqp),
        TILEREF(0, STATSCREEN_BGPAL_ITEMICONS));
}


// ORG 0x8087184
void StatScreen_DrawPage1(void){
	Unit* unit = gStatScreen.unit;
	
	DrawPage1_Texts();
	DrawPage1_NumBar(unit);
	DrawPage1_WpnEqp(unit);
	NuDrawStatScreenBwl();
	
}

