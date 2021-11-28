#include "gbafe.h"
#include "StatusScreen.h"
#include "StatusGetter.h"
#include "StrMagCha.h"



static
void DisplayWeaponExp(int num, int x, int y, int wtype){
	int progress, progressMax, color;
	int wexp = gStatScreen.unit->ranks[wtype];

	// Display weapon type icon
	DrawIcon(
		gBmFrameTmap0 + TILEMAP_INDEX(x, y),
        0x70 + wtype,
        TILEREF(0, STATSCREEN_BGPAL_EXTICONS));
	
	color = wexp >= WPN_EXP_S
        ? TEXT_COLOR_GREEN
        : TEXT_COLOR_BLUE;
	
	// Display rank letter
	DrawSpecialUiChar(gBmFrameTmap0 + TILEMAP_INDEX(x + 4, y),
        color,
        GetDisplayRankSpecialCharFromExp(wexp));
		
	GetWeaponExpProgressState(wexp, &progress, &progressMax);
	DrawBarsInternal(0x401 + num*6, 5,
        gBmFrameTmap1 + TILEMAP_INDEX(x + 2, y + 1), TILEREF(0, STATSCREEN_BGPAL_6),
        0x22, (progress*34)/(progressMax-1), 0);
}

static void StatScreen_Draw3WpnExp(){
	DisplayWeaponExp(0, 1, 1, ITYPE_SWORD);
	DisplayWeaponExp(1, 1, 3, ITYPE_LANCE);
	DisplayWeaponExp(2, 1, 5, ITYPE_AXE);
	DisplayWeaponExp(3, 1, 7, ITYPE_BOW);
	DisplayWeaponExp(8, 1, 9, 0xB);
	
	DisplayWeaponExp(4, 9, 1, ITYPE_DARK);
	DisplayWeaponExp(5, 9, 3, ITYPE_STAFF);
	DisplayWeaponExp(6, 9, 5, 0x11);
	DisplayWeaponExp(7, 9, 7, 0x12);
	DisplayWeaponExp(9, 9, 9, 0xC);
}

void StatScreen_DrawPage3(void){
	Unit* unit = gStatScreen.unit;
	StatScreen_Draw3WpnExp();
	
}

