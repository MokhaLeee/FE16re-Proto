#include "StatusGetter.h"
#include "StrMagCha.h"

static s8 StatusModfiy(MSG_Func* funcs, Unit* unit){
	s8 base = 0;
	MSG_Func* it = funcs;
	while(*it)
		base += (*it++)(unit);
	
	return base;	
}

s8 GetMag(Unit* unt){
	
	// to ensure current unit is not &bu->unit
	Unit* unit = GetUnit(unt->index);
	
	s8 stat = *GetMagAt(unit);
	stat += StatusModfiy(MagMods,unit);	
	if(stat<0)
		stat = 0;
	return stat;
}

s8 GetCha(Unit* unt){
	
	// to ensure current unit is not &bu->unit
	Unit* unit = GetUnit(unt->index);
	
	s8 stat = *GetChaAt(unit);
	stat += StatusModfiy(ChaMods,unit);	
	if(stat<0)
		stat = 0;
	return stat;
}