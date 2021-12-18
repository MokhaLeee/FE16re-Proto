#include "gbafe.h"
#include "_gbafe16.h"


void StartBMagicMenuPanel(MenuProc* pmu, Unit* unit, u8 xPos, u8 yPos){
	ForceMenuItemPanel(pmu, unit, xPos, yPos);
	
	PanelProc* panel = (PanelProc*)ProcFind( gProc_MenuItemPanel );
	
	panel->_unk64 = TRUE;
	panel->ItemSlotIndex = 0;
	
	return;
}







void UpdateMenuPanelBMag(u16 item){		
	if( 0 == item )
		return;

	MenuPanel_UpdateBuSimple(item, BU_ISLOT_BMAG);
	MenuPanel_DrawWpn( GetItemType(item) + 0x70 );
	
	return;
}


void EndMenuPanelBMag(void){
	EndEachProc(gProc_MenuItemPanel);
}
