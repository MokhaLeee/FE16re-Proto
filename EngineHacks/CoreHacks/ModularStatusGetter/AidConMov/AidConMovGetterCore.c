#include "StatusGetter.h"

static s8 StatusModfiy(MSG_Func* funcs, Unit* unit){
	s8 base = 0;
	MSG_Func* it = funcs;
	while(*it)
		base += (*it++)(unit);
	
	return base;	
}

s8 GetAid(Unit* unt){
	
	// to ensure current unit is not &bu->unit
	// Unit* unit = GetUnit(unt->index);
	
	return 0;
}

s8 GetCon(Unit* unt){
	
	// to ensure current unit is not &bu->unit
	Unit* unit = GetUnit(unt->index);
	
	s8 stat = unit->pClassData->baseCon + unit->pCharacterData->baseCon;
	return stat;
}

s8 GetMov(Unit* unt){
	
	// to ensure current unit is not &bu->unit
	Unit* unit = GetUnit(unt->index);
	
	s8 stat = unit->pClassData->baseMov;
	stat += StatusModfiy(MovMods,unit);
	
	if(stat<0)
		stat = 0;
	return stat;
}

