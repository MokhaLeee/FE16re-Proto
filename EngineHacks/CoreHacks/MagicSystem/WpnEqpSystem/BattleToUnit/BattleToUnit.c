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



void BattleToUnitVanilla_WpnExcept(Unit* Object, BattleUnit* ObjectBattle){
	Object->level 	= ObjectBattle->unit.level;
	Object->exp 	= ObjectBattle->unit.exp;
	Object->curHP 	= ObjectBattle->unit.curHP;
	Object->state 	= ObjectBattle->unit.state;
	
	// State
	*sStatusBufferMaybe &= ( (Object->state>>0x11)&0x3 );
	if( ObjectBattle->statusOut >= 0 )
		SetUnitStatus(Object,ObjectBattle->statusOut );
	
	// Status Up
	Object->maxHP	+=	ObjectBattle->changeHP;
	Object->pow		+=	ObjectBattle->changePow;
	Object->skl		+=	ObjectBattle->changeSkl;
	Object->spd		+=	ObjectBattle->changeSpd;
	Object->def		+=	ObjectBattle->changeDef;
	Object->res		+=	ObjectBattle->changeRes;
	Object->lck		+=	ObjectBattle->changeLck;
	UnitCheckStatCaps(Object);
	
	//WpnRank
	u8 iWpnExp = GetBattleUnitUpdatedWeaponExp(ObjectBattle);
	if( iWpnExp>0 )
		Object->ranks[ObjectBattle->weaponType] += iWpnExp;
	
	return;
}

void BattleToUnitSaveMagWpn(Unit* unit, BattleUnit* bu){
	u16 sItem = bu->weapon;
	UnitExt* ext = GetUnitExtByUnit((Unit*)bu);
	if( 0 == ITEM_USE(bu->weapon) )	//WpnAfter
		sItem = ITEM_ID(bu->weaponBefore);
	
	
	if( (NULL!=ext) && (1==isUnitAlly(unit)) )
	{										//只对我军生效
		SetWpnEqp(unit,sItem);
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