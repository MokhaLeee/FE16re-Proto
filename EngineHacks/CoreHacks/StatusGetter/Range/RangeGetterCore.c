#include "StatusGetter.h"

// 0x803B558
void FillMovementAndRangeMapForItem(Unit* unit, u16 item);





// ==========================================
// ============ Status Getter ===============
// ==========================================

static s8 StatusModfiy(RangeGetter_Func* funcs, Unit* unit, u16 item){
	s8 base = 0;
	RangeGetter_Func* it = funcs;
	while(*it)
		base += (*it++)(unit,item);
	
	return base;	
}


s8 GetRngMin(u16 item, Unit* unit){
	
	s8 Stat = GetItemMinRange(item);
	return Stat;
}

s8 GetRngMax(u16 item, Unit* unit){
	
	s8 Stat = GetItemMaxRange(item);
	if( 0==Stat )
		return 0;
	
	Stat += StatusModfiy(RangeMaxMods,unit,item);
	
	// Minus Zero
	if( Stat > 0xF)
		Stat = 0xF;
	if(Stat < 0)
		Stat = 0;
	
	return Stat;
}






// ==========================================
// ============ Modular Funcs ===============
// ==========================================

s8 MSG_RngMax_ArchBonus(Unit* unit, u16 item){
	if( ITYPE_BOW == GetItemType(item) )
		if( CA_BALLISTAE & UNIT_CATTRIBUTES(unit) )
			return 1;
	return 0;
}