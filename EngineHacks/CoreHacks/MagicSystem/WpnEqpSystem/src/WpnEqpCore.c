#include "gbafe.h"
#include "MagicSystem.h"
#include "UnitExt.h"
#include "StrMagCha.h"
extern TargetSelectionDefinition gpTargetSelectFuncs_Attack[];
static u16 itemDura(u8 use){ return (u16)use << 8; }


static int isUnitAlly(Unit* unit){
	if( unit->index < 0x40 )
		return TRUE;
	else
		return FALSE;
}

// W.I.P.
static int trySetEqpMag(Unit* unit){
	UnitExt* ext = GetUnitExtByUnit(unit);
	if( NULL == ext )
		return FALSE;
	
	if( 1 == isMagListEmpty(ext) )
		return FALSE;
	
	u16 item = itemDura(ext->mlist.m[0]) | 0x3D;
	SetWpnEqp(unit, item);
	return TRUE;
}

static int trySetEqpPhy(Unit* unit){
	u16 item = GetUnitEquippedWeapon(unit);
	if( 0 == item )
		return 0;
	SetWpnEqp(unit,item);
	return 1;
	
}

int SetWpnEqp(Unit* unit, u16 item){
	UnitExt* unitExt = GetUnitExtByUnit(unit);
	
	if( NULL == unitExt )
		return FALSE;
	
	if( 0 == TestWpn(item) )
		return FALSE;		
	
	unitExt->WpnEqp = item;
	if( 0 == (item&0xFF) )
		unitExt->WpnEqp = 0;
	return TRUE;
}

// W.I.P Used in Battle2Unit
int SaveEqpToMag(UnitExt* ext, u16 item){
	if( FALSE == IsItemMagic(item) )
		return FALSE;
	
	if( 1 == SetBMagItem(ext,item) )
		return TRUE;
	
	if( 1 == SetWMagItem(ext,item) )
		return TRUE;
	
	return FALSE;
}

int SetWpnEqpAuto(Unit* unit){
	UnitExt* unitExt = GetUnitExtByUnit(unit);
	if( NULL == unitExt )
		return 2;
	
	if( 0 != unitExt->WpnEqp )
		return 0;
	
	if( *GetMagAt(unit) > unit->pow )
		if( 1==trySetEqpMag(unit) )
			return 1;
	if( 1==trySetEqpPhy(unit) )
		return 1;
	if( 1==trySetEqpMag(unit) )
		return 1;
	
	return 0;
}


// with asm
// 0=normal; 1=mag
int SetupBattleWpnCore(struct BattleUnit* bu){
	UnitExt* ext = GetUnitExtByUnit((Unit*)bu);
	
	if( NULL == ext )
		return 0;
	
	if( !isUnitAlly( (Unit*)bu ) )
		return 0;
	
	if( 0 == ext->WpnEqp )
		if( 0 == SetWpnEqpAuto((Unit*)bu) )
			return 0;
	
	if( 1 != TestWpn(ext->WpnEqp) )
		return 0;
	
	// W.I.P
	// Acturally it dependes on diff
	bu->canCounter = 1;
	
	// <!>
	bu->weaponSlotIndex = MAG_SLOTBU;	// 9
	
	bu->weapon = ext->WpnEqp;
	bu->weaponBefore = ext->WpnEqp;
	return 1;
	
	
	
		
}



// Misc

// Remake SubAttack-Effect(0x22CF0)
int newSubAttackEffect(MenuProc* pmu, MenuCommandProc* pcmd){
	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	
	// Set Wpn-Eqp System
	SetWpnEqp(gActiveUnit,wpn);
	EquipUnitItemSlot(
		gActiveUnit, 
		pcmd->commandDefinitionIndex);

	ClearBG0BG1();
	MakeTargetListForWeapon(gActiveUnit,wpn);
	StartTargetSelection(gpTargetSelectFuncs_Attack);
	
	return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}
