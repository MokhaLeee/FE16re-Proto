#include "StatusGetter.h"
static s8 StatusModfiy(MSG_Func* funcs, Unit* unit){
	s8 base = 0;
	MSG_Func* it = funcs;
	while(*it)
		base += (*it++)(unit);
	
	return base;	
}




s8 GetPow(Unit* unit){
	
	s8 stat = unit->pow;
	stat += StatusModfiy(PowMods,unit);
	
	if(stat<0)
		stat = 0;
	return stat;
}

s8 GetSpd(Unit* unit){

	s8 stat = unit->spd;
	stat += StatusModfiy(SpdMods,unit);
	
	if(stat<0)
		stat = 0;
	return stat;
}

s8 GetSkl(Unit* unit){
	
	s8 stat = unit->skl;
	stat += StatusModfiy(SklMods,unit);
	
	if(stat<0)
		stat = 0;
	return stat;
}


s8 GetLck(Unit* unit){
	
	s8 stat = unit->lck;
	stat += StatusModfiy(LckMods,unit);
	
	if(stat<0)
		stat = 0;
	return stat;
}

s8 GetRes(Unit* unit){
	
	s8 stat = unit->res;
	stat += StatusModfiy(ResMods,unit);
	
	if(stat<0)
		stat = 0;
	return stat;
}

s8 GetDef(Unit* unit){
	
	s8 stat = unit->def;
	stat += StatusModfiy(PowMods,unit);	
	if(stat<0)
		stat = 0;
	return stat;
}

s8 GetHpCur(Unit* unit){
	
	s8 HpCur = unit->curHP;
	s8 HpMax = unit->maxHP;
	
	s8 Bonus = 0;
	Bonus += StatusModfiy(HpCurMods,unit);	
	if(Bonus<0)
		Bonus = 0;
	
	if( HpCur > HpMax+Bonus )
		HpCur = HpMax+Bonus;
	
	unit->curHP = HpCur;
	return HpCur;
}

s8 GetHpMax(Unit* unit){
	
	s8 stat = unit->maxHP;
	stat += StatusModfiy(HpMaxMods,unit);	
	if(stat<0)
		stat = 0;
	return stat;
}
