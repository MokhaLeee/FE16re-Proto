// Misc
#include "gbafe.h"
#include "MagicSystem.h"
#include "UnitExt.h"
#include "StrMagCha.h"
#include "StatusGetter.h"


// Remake SubAttack-Effect(0x22CF0)
extern TargetSelectionDefinition gpTargetSelectFuncs_Attack[];

int newSubAttackEffect(MenuProc* pmu, MenuCommandProc* pcmd){
	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	
	// Set Wpn-Eqp System
	SetWpnEqpForce(gActiveUnit,wpn);
	EquipUnitItemSlot(
		gActiveUnit, 
		pcmd->commandDefinitionIndex);

	ClearBG0BG1();
	MakeTargetListForWeapon(gActiveUnit,wpn);
	StartTargetSelection(gpTargetSelectFuncs_Attack);
	
	return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}
