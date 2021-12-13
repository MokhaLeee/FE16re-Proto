#include "StatusGetter.h"

static s16 StatusModfiy(RangeGetter_Func* funcs, Unit* unit, u16 item){
	s16 base = 0;
	RangeGetter_Func* it = funcs;
	while(*it)
		base += (*it++)(unit,item);
	
	return base;	
}


u16 prMinRangeGetter(u16 item, Unit* unt){
	
	// to ensure current unit is not &bu->unit
	// Unit* unit = GetUnit(unt->index);
	
	s16 Stat = GetItemMinRange(item);
	return Stat;
}

u16 prMaxRangeGetter(u16 item, Unit* unt){
	
	// to ensure current unit is not &bu->unit
	Unit* unit = GetUnit(unt->index);
	
	s16 Stat = GetItemMaxRange(item);
	if( 0==Stat )
		return 0;
	
	Stat += StatusModfiy(RangeMaxMods,unit,item);
	if( Stat>0xF)
		Stat = 0xF;
	return Stat;
}




s16 MSG_RngMax_ArchBonus(Unit* unit, u16 item){
	if( ITYPE_BOW == GetItemType(item) )
		if( CA_BALLISTAE & UNIT_CATTRIBUTES(unit) )
			return 1;
	return 0;
}