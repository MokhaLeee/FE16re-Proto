#include "gbafe.h"
#include "_gbafe16.h"


void StartBMagicMenuPanel(MenuProc* pmu, Unit* unit, u8 xPos, u8 yPos){
	ForceMenuItemPanel(pmu, unit, xPos, yPos);
	return;
}







void UpdateMenuPanelBMag(u16 item){	
	PanelProc* panel;
	
	if( 0 == item )
		return;

	panel = (PanelProc*)ProcFind( gProc_MenuItemPanel );
	
	if( NULL == panel )
		return;
	
	panel->_unk64 = TRUE;

	MenuPanel_UpdateBuSimple(item, BU_ISLOT_BMAG);
	MenuPanel_DrawWpn( GetItemType(item) + 0x70 );
	
	
	
	return;
}


void EndMenuPanelBMag(void){
	EndEachProc(gProc_MenuItemPanel);
}
