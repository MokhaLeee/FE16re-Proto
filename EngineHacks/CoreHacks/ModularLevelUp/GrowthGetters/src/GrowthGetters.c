#include "gbafe.h"
#include "ModularLu.h"
#include "StrMagCha.h"

static s8 GrowthModify(MLU_Func* funcs, Unit* unit){
	s8 base = 0;
	MLU_Func* it = funcs;
	while(*it)
		base += (*it++)(unit);
	
	return base;
}



s8 Growth_HpGetter(Unit* unit){
	s8 base = unit->pCharacterData->growthHP;
	base += GrowthModify(Groth_HpMod,unit);
	return base;
}

s8 Growth_PowGetter(Unit* unit){
	s8 base = unit->pCharacterData->growthPow;
	base += GrowthModify(Groth_PowMod,unit);
	return base;
}

s8 Growth_SklGetter(Unit* unit){
	s8 base = unit->pCharacterData->growthSkl;
	base += GrowthModify(Groth_SklMod,unit);
	return base;
}

s8 Growth_SpdGetter(Unit* unit){
	s8 base = unit->pCharacterData->growthSpd;
	base += GrowthModify(Groth_SpdMod,unit);
	return base;
}

s8 Growth_LckGetter(Unit* unit){
	s8 base = unit->pCharacterData->growthLck;
	base += GrowthModify(Groth_LckMod,unit);
	return base;
}

s8 Growth_DefGetter(Unit* unit){
	s8 base = unit->pCharacterData->growthDef;
	base += GrowthModify(Groth_DefMod,unit);
	return base;
}

s8 Growth_ResGetter(Unit* unit){
	s8 base = unit->pCharacterData->growthRes;
	base += GrowthModify(Groth_ResMod,unit);
	return base;
}

s8 Growth_MagGetter(Unit* unit){
	s8 base = gpUnitMagicTable[unit->pCharacterData->number].Growth;
	base += GrowthModify(Groth_MagMod,unit);
	return base;
}

s8 Growth_ChaGetter(Unit* unit){
	s8 base = gpUnitCharmTable[unit->pCharacterData->number].Growth;
	base += GrowthModify(Groth_ChaMod,unit);
	return base;
}



