#include "gbafe.h"
#include "StrMagCha.h"
#include "ModularLu.h"
#include "RecoverableRN.h"

static inline int CheckCap_Inline(s8 cur, s8 bonus, s8 cap){
	if( 0==bonus )
		return 0;
	else if( cur+bonus > cap )
		return 0;
	else
		return 1;
}

void MLUCheckCap_OnBattle(BattleUnit* bu){
	
	bu->changeHP = CheckCap_Inline(
		bu->unit.maxHP,
		bu->changeHP,
		bu->unit.pClassData->maxHP
		);
	
	bu->changePow = CheckCap_Inline(
		bu->unit.pow,
		bu->changePow,
		bu->unit.pClassData->maxPow
		);
		
	bu->changeSkl = CheckCap_Inline(
		bu->unit.skl,
		bu->changeSkl,
		bu->unit.pClassData->maxSkl
		);
	
	bu->changeSpd = CheckCap_Inline(
		bu->unit.spd,
		bu->changeSpd,
		bu->unit.pClassData->maxSpd
		);
		
	bu->changeDef = CheckCap_Inline(
		bu->unit.def,
		bu->changeDef,
		bu->unit.pClassData->maxDef
		);
		
	bu->changeRes = CheckCap_Inline(
		bu->unit.res,
		bu->changeRes,
		bu->unit.pClassData->maxRes
		);
		
	bu->changeLck = CheckCap_Inline(
		bu->unit.lck,
		bu->changeLck,
		30
		);
		
	*GetBu_ChangeMagAt(bu) = CheckCap_Inline(
		*GetMagAt((Unit*)bu),
		*GetBu_ChangeMagAt(bu),
		gpClassMagicTable[bu->unit.pClassData->number].Cap
		);
		
	*GetBu_ChangeChaAt(bu) = CheckCap_Inline(
		*GetChaAt((Unit*)bu),
		*GetBu_ChangeChaAt(bu),
		gpClassCharmTable[bu->unit.pClassData->number].Cap
		);
	
}