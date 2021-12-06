#include "gbafe.h"
#include "MagicSystem.h"
#include "UnitExt.h"
#include "StrMagCha.h"

static u32* const sStatusBufferMaybe = (u32* const) (0x3003060);

static int isUnitAlly(Unit* unit){
	if( unit->index < 0x40 )
		return TRUE;
	else
		return FALSE;
}



void BattleToUnitVanilla_WpnExcept(Unit* unit, BattleUnit* bu){
	unit->level = bu->unit.level;
	unit->exp 	= bu->unit.exp;
	unit->curHP = bu->unit.curHP;
	unit->state = bu->unit.state;
	
	// State
	*sStatusBufferMaybe &= ( (unit->state>>0x11)&0x3 );
	if( (bu->statusOut >0)|(0==bu->statusOut) )
		SetUnitStatus(unit,bu->statusOut );
	
	// Status Up
	unit->maxHP	+=	bu->changeHP;
	unit->pow	+=	bu->changePow;
	unit->skl	+=	bu->changeSkl;
	unit->spd	+=	bu->changeSpd;
	unit->def	+=	bu->changeDef;
	unit->res	+=	bu->changeRes;
	unit->lck	+=	bu->changeLck;
	UnitCheckStatCaps(unit);
	
	//WpnRank
	s8 iWpnExp = GetBattleUnitUpdatedWeaponExp(bu);
	if( iWpnExp>0 )
		unit->ranks[bu->weaponType] += iWpnExp;
	
	return;
}

void BattleToUnitSaveMagWpn(Unit* unit, BattleUnit* bu){
	u16 sItem = bu->weapon;
	UnitExt* ext = GetUnitExtByUnit((Unit*)bu);
	if( 0 == ITEM_USE(bu->weapon) )	//WpnAfter
		sItem = ITEM_ID(bu->weaponBefore);
	
	
	if( (NULL!=ext) && (1==isUnitAlly(unit)) )
	{										//只对我军生效
		SetWpnEqpForce(unit,sItem);
		if( TRUE == SaveEqpToMag(ext,sItem) )	//如果是魔法就不用再保存了
			return;
	}
	
	unit->items[4] = bu->unit.items[4];
	unit->items[3] = bu->unit.items[3];
	unit->items[2] = bu->unit.items[2];
	unit->items[1] = bu->unit.items[1];
	unit->items[0] = bu->unit.items[0];
	return;
}