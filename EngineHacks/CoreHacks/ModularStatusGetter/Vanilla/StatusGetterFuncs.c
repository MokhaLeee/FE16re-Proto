#include "StatusGetter.h"

// Hp
s8 HpMod_WpnHpBunus(Unit* unit){
	return GetItemHpBonus(GetUnitEquippedWeapon(unit));
}


// Pow
s8 PowMod_WpnPowBonus(Unit* unit){
	return GetItemPowBonus(GetUnitEquippedWeapon(unit));
}


// Spd
s8 SpdMod_WpnSpdBunus(Unit* unit){
	return GetItemSpdBonus(GetUnitEquippedWeapon(unit));
}



// Skl
s8 SklMod_WpnSklBunus(Unit* unit){
	return GetItemSklBonus(GetUnitEquippedWeapon(unit));
}



// Lck
s8 LckMod_WpnLckBunus(Unit* unit){
	return GetItemLckBonus(GetUnitEquippedWeapon(unit));
}


// Def
s8 DefMod_WpnDefBunus(Unit* unit){
	return GetItemDefBonus(GetUnitEquippedWeapon(unit));
}


// Res
s8 ResMod_WpnResBunus(Unit* unit){
	return GetItemResBonus(GetUnitEquippedWeapon(unit));
}