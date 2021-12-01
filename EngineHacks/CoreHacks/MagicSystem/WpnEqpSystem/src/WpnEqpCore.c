#include "gbafe.h"
#include "MagicSystem.h"
#include "UnitExt.h"
#include "StrMagCha.h"
#include "StatusGetter.h"

extern TargetSelectionDefinition gpTargetSelectFuncs_Attack[];



static int isUnitAlly(Unit* unit){
	if( unit->index < 0x40 )
		return TRUE;
	else
		return FALSE;
}

u16 GetWpnEqp(UnitExt* ext){ return ext->WpnEqp; }


static int SetWpnEqp(Unit* unit, u16 item){
	UnitExt* unitExt = GetUnitExtByUnit(unit);
	
	if( NULL == unitExt )
		return FALSE;
	
	if( 0 == TestWpn(item) )
		return FALSE;		
	
	unitExt->WpnEqp = item;
	
	if( 0 == ITEM_USE(item) )
		unitExt->WpnEqp = 0;
	
	return TRUE;
}


int SetWpnEqpForce(Unit* unit, u16 item){
	UnitExt* unitExt = GetUnitExtByUnit(unit);
	
	if( NULL == unitExt )
		return FALSE;	
	
	unitExt->WpnEqp = item;
	if( 0 == ITEM_USE(item) )
		unitExt->WpnEqp = 0;
	return TRUE;
}


static int trySetEqpMag(Unit* unit){
	u16 mag = 0;
	UnitExt* ext = GetUnitExtByUnit(unit);
	if( NULL == ext )
		return FALSE;
	
	for(int i=0; i<0xF; i++)
	{
		if( 0!=GetBMagUse(ext,i) )
		{
			mag = MAKE_ITEM( gpBMagList[i].index, GetBMagUse(ext,i) );
			SetWpnEqp(unit, mag);
			return TRUE;
		}
	}
	
		return FALSE;
}

static int trySetEqpPhy(Unit* unit){
	u16 item = GetUnitEquippedWeapon(unit);
	if( 0 == item )
		return 0;
	SetWpnEqp(unit,item);
	return 1;
	
}






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
	UnitExt* ext = GetUnitExtByUnit(unit);
	if( NULL == ext )
		return 2;
	
	if( 0 != ITEM_USE(ext->WpnEqp) )
		if( 0!=TestWpn(ext->WpnEqp) )
			return 0;
	
	if( GetMag(unit) > GetPow(unit) )
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
	u8 shouldAuto = FALSE;
	UnitExt* ext = GetUnitExtByUnit((Unit*)bu);
	
	if( NULL == ext )
		return 0;
	
	if( !isUnitAlly( (Unit*)bu ) )
		return 0;
	
	// No equipment or equip with W.Mag
	if( &gBattleActor == bu )	// 默认攻击者已经装备好了(默认不处理Cp)
		shouldAuto = FALSE;
	else if( 0 == ITEM_USE(ext->WpnEqp) )
		shouldAuto = TRUE;
	else if( 0==TestWpn(ext->WpnEqp) )
		shouldAuto = TRUE;		// 去掉W.Mag
	
	if( shouldAuto )
		if( 0 == SetWpnEqpAuto((Unit*)bu) )
			return 0;
	
	//if( 1 != TestWpn(ext->WpnEqp) )
	if( !IsItemMagic(ext->WpnEqp) )
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
	SetWpnEqpForce(gActiveUnit,wpn);
	EquipUnitItemSlot(
		gActiveUnit, 
		pcmd->commandDefinitionIndex);

	ClearBG0BG1();
	MakeTargetListForWeapon(gActiveUnit,wpn);
	StartTargetSelection(gpTargetSelectFuncs_Attack);
	
	return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
}
