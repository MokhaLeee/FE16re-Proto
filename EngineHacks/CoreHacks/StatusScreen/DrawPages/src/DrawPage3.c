#include "gbafe.h"
#include "_gbafe16.h"

static void StatScreen_Draw3WpnExp();
static void DisplayWeaponExp(int num, int x, int y, int wtype);

void StatScreen_DrawPage3(void){
	//Unit* unit = gStatScreen.unit;
	StatScreen_Draw3WpnExp();
	
}



// ==========================================
// =============== Internal =================
// ==========================================

static void StatScreen_Draw3WpnExp(){
	DisplayWeaponExp(0, 1, 1, WT_SWORD);
	DisplayWeaponExp(1, 1, 3, WT_LANCE);
	DisplayWeaponExp(2, 1, 5, WT_AXE);
	DisplayWeaponExp(3, 1, 7, WT_BOW);
	DisplayWeaponExp(4, 1, 9, WT_BRAWL);
	DisplayWeaponExp(5, 1, 11, WT_REASON);
	DisplayWeaponExp(6, 1, 13, WT_FAITH);
	
	DisplayWeaponExp(7, 9, 1, WT_AUTH);
	DisplayWeaponExp(8, 9, 3, WT_RIDING);
	DisplayWeaponExp(9, 9, 5, WT_FLYING);
	DisplayWeaponExp(10, 9, 7, WT_HEAVY);
}


static void DisplayWeaponExp(int num, int x, int y, int wtype){
	int progress, progressMax, color;
	int wexp = gStatScreen.unit->ranks[wtype];

	// Display weapon type icon
	DrawIcon(
		gBmFrameTmap0 + TILEMAP_INDEX(x, y),
        ICON_FE16_WPNTYPE(wtype),
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




