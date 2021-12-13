#include "gbafe.h"
#include "StrMagCha.h"
#include "ModularLu.h"
#include "RecoverableRN.h"

static int SetGrowthInline(MLU_Func func, u8 cnt, struct BattleUnit* bu, u8 bonus){
	u8 total = func((Unit*)bu) + bonus;
	
	if( total > NextRN2s_100(cnt) )
		return 1;
	else
		return 0;
}


static void LevelUpInternal(struct BattleUnit* bu, u8 growthBonus){
	u8 total = 0;
	u8 bonus = 0;
	u8 count = 10+4*(
		bu->unit.pCharacterData->number +
		bu->unit.level );
	
	count = (count+5) & 0xFF;
	bonus = SetGrowthInline(Growth_HpGetter, count, bu, growthBonus);
	bu->changeHP = bonus;
	//total += bonus;
	
	count = (count+5) & 0xFF;
	bonus = SetGrowthInline(Growth_PowGetter, count, bu, growthBonus);
	bu->changePow= bonus;
	total += bonus;
	
	count = (count+5) & 0xFF;
	bonus = SetGrowthInline(Growth_SklGetter, count, bu, growthBonus);
	bu->changeSkl= bonus;
	total += bonus;
	
	count = (count+5) & 0xFF;
	bonus = SetGrowthInline(Growth_SpdGetter, count, bu, growthBonus);
	bu->changeSpd = bonus;
	total += bonus;
	
	count = (count+5) & 0xFF;
	bonus = SetGrowthInline(Growth_DefGetter, count, bu, growthBonus);
	bu->changeDef= bonus;
	total += bonus;
	
	count = (count+5) & 0xFF;
	bonus = SetGrowthInline(Growth_ResGetter, count, bu, growthBonus);
	bu->changeRes= bonus;
	total += bonus;
	
	count = (count+5) & 0xFF;
	bonus = SetGrowthInline(Growth_LckGetter, count, bu, growthBonus);
	bu->changeLck= bonus;
	total += bonus;
	
	count = (count+5) & 0xFF;
	bonus = SetGrowthInline(Growth_MagGetter, count, bu, growthBonus);
	*GetBu_ChangeMagAt(bu) = bonus;
	total += bonus;
	
	count = (count+5) & 0xFF;
	bonus = SetGrowthInline(Growth_ChaGetter, count, bu, growthBonus);
	*GetBu_ChangeChaAt(bu) = bonus;
	total += bonus;
	
	if( total < 4 )
		LevelUpInternal(bu, growthBonus+10);
}


void LevelUp_FE16Style(struct BattleUnit* bu){
	LevelUpInternal(bu,0);
}
