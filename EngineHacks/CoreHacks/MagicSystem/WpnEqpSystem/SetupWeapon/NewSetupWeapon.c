#include "gbafe.h"
#include "MagicSystem.h"
#include "UnitExt.h"

// In Modular Counter Check
extern int ModularCheckCanCounter(BattleUnit*);

// =================================
// ======= Some Common Funcs =======
// =================================

static int isUnitAlly(Unit* unit){
	if( unit->index < 0x40 )
		return TRUE;
	else
		return FALSE;
}

extern u16 GetBallistaItemAt(u8 x, u8 y); // 0x803798D






// =================================
// ======== Remake SetupWpn ========
// =================================
static int TrySetMag(BattleUnit* bu, int slot)
{
	u16 wpn = 0;
	UnitExt* ext = GetUnitExtByUnit(&bu->unit);
	
	// 首先看一下是否是我方角色且存在ext
	if( NULL == ext )
		return FALSE;
	
	if( !isUnitAlly(&bu->unit) )
		return FALSE;

	// 如果被击且无Eqp, SetWpnEqpAuto
	if( BU_ISLOT_AUTO == slot )
		if( 0 == ITEM_USE(ext->WpnEqp) )
			if( FALSE == SetWpnEqpAuto_bu(bu) )
				return FALSE;
	
	wpn = ext->WpnEqp;
	
	// 看一下是否是魔法,是的话按照特殊处理(直接在这里处理了)
	if( IsItemBlackMagic(wpn) )
	{
		bu->weaponSlotIndex = BU_ISLOT_BMAG;
		bu->weapon = wpn;
		bu->weaponBefore = wpn;
		return TRUE;
	}
	else if( IsItemWhiteMagic(wpn) )
	{
		bu->weaponSlotIndex = BU_ISLOT_WMAG;
		bu->weapon = wpn;
		bu->weaponBefore = wpn;
		bu->canCounter = FALSE;
		return TRUE;
	}
	else
		return FALSE;

}



void newSetBattleUnitWeapon(struct BattleUnit* bu, int itemSlot) {
	
	bu->canCounter = TRUE;
	
	if( TrySetMag(bu,itemSlot) )	// 如果不为0, 则为B/W mag,此时weaponSlotIndex已经设定好了
		itemSlot = bu->weaponSlotIndex;
	
	// 被击的情况
	// 实际上这里可以看一下WpnEqp,但是又得辨别是否是我军
	// 如果我们维持原本系统的五个道具槽不变
	// 并且确保装备槽的武器依旧会保留在角色的五个道具中的话
	// 这里就不用再动了
	if (itemSlot == BU_ISLOT_AUTO )
		itemSlot = GetUnitEquippedWeaponSlot(&bu->unit);

	if (bu->unit.state & US_IN_BALLISTA)
		itemSlot = BU_ISLOT_BALLISTA;


	switch (itemSlot) {

	case 0:
	case 1:
	case 2:
	case 3:
	case 4:
		// regular item slots
		bu->weaponSlotIndex = itemSlot;
		bu->weapon = bu->unit.items[bu->weaponSlotIndex];
		break;
		
	case BU_ISLOT_BALLISTA:
		// riding ballista
		bu->weaponSlotIndex = 0xFF;
		bu->weapon = GetBallistaItemAt(bu->unit.xPos, bu->unit.yPos);
		bu->canCounter = FALSE;
		break;

	case BU_ISLOT_BMAG:
	case BU_ISLOT_WMAG:
		// 黑白魔法已经在 static PreSetupWpn 中设定完成了
		break;
		
	default:
		bu->weaponSlotIndex = 0xFF;
		bu->weapon = 0;
		bu->canCounter = FALSE;
		break;
	} // switch (itemSlot)

	bu->weaponBefore = bu->weapon;
	bu->weaponAttributes = GetItemAttributes(bu->weapon);
	bu->weaponType = GetItemType(bu->weapon);
	
	// CONFIG_BIT2 = UI Battle Unit Mode
	if (gBattleStats.config & BATTLE_CONFIG_BIT2)
		return;
	
	if (bu->weaponAttributes & IA_MAGICDAMAGE) 
	{
		switch (GetItemIndex(bu->weapon)) {

		case ITEM_SWORD_WINDSWORD:
			bu->weaponType = ITYPE_ANIMA;
			break;

		case ITEM_SWORD_LIGHTBRAND:
			bu->weaponType = ITYPE_LIGHT;
			break;

		case ITEM_SWORD_RUNESWORD:
			bu->weaponType = ITYPE_DARK;
			break;
		} // switch (GetItemIndex(bu->weapon))
	} // if (bu->weaponAttributes & IA_MAGICDAMAGE)


	// Check For Can-Counter:
	// now in Modular Counter Check
	ModularCheckCanCounter(bu);
}
