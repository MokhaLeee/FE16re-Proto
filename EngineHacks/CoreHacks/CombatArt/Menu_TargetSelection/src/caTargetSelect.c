#include "gbafe.h"
#include "UnitExt.h"
#include "CombatArt.h"
#include "RangeGetter.h"
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

