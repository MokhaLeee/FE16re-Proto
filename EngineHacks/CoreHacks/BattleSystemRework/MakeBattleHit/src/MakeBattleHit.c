#include "gbafe.h"

typedef int (*MakeBattleFunc) (BattleUnit*);
extern MakeBattleFunc* gpCheckVantageTable;		// 待伏
extern MakeBattleFunc* gpCheckDesperationTable;	// 强攻
extern MakeBattleFunc* gpCheckDoubleTable;		// 回击
extern MakeBattleFunc* gpCheckNullDoubleTable;	// 不能双倍

static int _BattleGenerateRoundHits(BattleUnit* actor, BattleUnit* target);
static int GetBattleUnitHitCount(BattleUnit* actor);
int CanDouble(BattleUnit* actor, BattleUnit* target);


// On Moudular
int CheckVantage(void){
	
	for(int i=0; gpCheckVantageTable[i]; i++)
		if( gpCheckVantageTable[i](&gBattleTarget) )
			return TRUE;
		
	return FALSE;
}

int CheckDesperation(void){
	
	for(int i=0; gpCheckDesperationTable[i]; i++)
		if( gpCheckDesperationTable[i](&gBattleActor) )
			return TRUE;
		
	return FALSE;
}

int CheckDoubleLoop(BattleUnit* actor, BattleUnit* target){

	for(int i=0; gpCheckDoubleTable[i]; i++)
		if( gpCheckDoubleTable[i](actor) )
			return TRUE;
		
	return FALSE;	
}


int CheckNullDoubleLoop(BattleUnit* actor, BattleUnit* target){

	for(int i=0; gpCheckNullDoubleTable[i]; i++)
		if( gpCheckNullDoubleTable[i](actor) )
			return TRUE;
		
	return FALSE;	
}



enum{
	NOP_ATTACK = 0,
	ACT_ATTACK = 1,
	TAR_ATTACK = 2,
};

enum{
	UNWIND_VANTAGE = 1<<0,
	UNWIND_DESPERA = 1<<1,
	UNWIND_DOUBLE_ACT = 1<<2,
	UNWIND_DOUBLE_TAR = 1<<3,
};


static const u8 RoundArr[56] = {
	ACT_ATTACK, TAR_ATTACK, NOP_ATTACK, NOP_ATTACK,	// 0:default
	TAR_ATTACK, ACT_ATTACK, NOP_ATTACK, NOP_ATTACK,	// 1	= 1
	ACT_ATTACK, ACT_ATTACK, TAR_ATTACK, NOP_ATTACK, // 2	= 2	
	
	TAR_ATTACK, ACT_ATTACK, ACT_ATTACK, NOP_ATTACK, // 12	= 3
	ACT_ATTACK, TAR_ATTACK, ACT_ATTACK, NOP_ATTACK, // 3	= 4
	TAR_ATTACK, ACT_ATTACK, ACT_ATTACK, NOP_ATTACK, // 13	= 5
	ACT_ATTACK, TAR_ATTACK, NOP_ATTACK, NOP_ATTACK,	// 0:default
	ACT_ATTACK, TAR_ATTACK, NOP_ATTACK, NOP_ATTACK,	// 0:default
	ACT_ATTACK, TAR_ATTACK, TAR_ATTACK, NOP_ATTACK, // 4	= 8
	TAR_ATTACK, ACT_ATTACK, TAR_ATTACK, NOP_ATTACK, // 14	= 9
	ACT_ATTACK, ACT_ATTACK, TAR_ATTACK, TAR_ATTACK, // 24	= 10
	
	
	TAR_ATTACK, ACT_ATTACK, ACT_ATTACK, TAR_ATTACK, // 124	= 11
	ACT_ATTACK, TAR_ATTACK, ACT_ATTACK, TAR_ATTACK, // 34	= 12
	TAR_ATTACK, ACT_ATTACK, TAR_ATTACK, ACT_ATTACK  // 134	= 13
};


// 2AED0
void new_BattleUnwind(){
	s8 round[4] = {0};
	s8 roundInfo = 0;
	
	if( CheckVantage() )
		roundInfo |= UNWIND_VANTAGE;

	if( CanDouble(&gBattleActor, &gBattleTarget) )
	{
		// 此处我们让 UNWIND_DOUBLE_ACT 与 UNWIND_DESPERA 成为互不影响
		if( CheckDesperation() )
			roundInfo |= UNWIND_DESPERA;
		else
			roundInfo |= UNWIND_DOUBLE_ACT;	
	}
	if( CanDouble(&gBattleTarget, &gBattleActor) )
		roundInfo |= UNWIND_DOUBLE_TAR;
	
	for( int i=0; i<4; i++)
		round[i] = RoundArr[i+roundInfo*4];
	
	
	// Make Battle Real
	ClearBattleHits();
	gBattleHitIterator->info |= BATTLE_HIT_INFO_BEGIN;
	
	// 1st
	for( int i=0; i<4; i++)
	{
	
		if( (ACT_ATTACK == round[i]) )
		{
			if(!_BattleGenerateRoundHits(&gBattleActor, &gBattleTarget))
				gBattleHitIterator->attributes |= BATTLE_HIT_ATTR_RETALIATE;
			else
				break;
		}
			
		else if( (TAR_ATTACK == round[i]) )
		{
			if(!_BattleGenerateRoundHits(&gBattleTarget, &gBattleActor))
				gBattleHitIterator->attributes |= BATTLE_HIT_ATTR_RETALIATE;
			else
				break;
		}
		else
			break;
		
		if( (1==i) | (2==i) )
			gBattleHitIterator->attributes = BATTLE_HIT_ATTR_FOLLOWUP;
			
	}
	
	gBattleHitIterator->info |= BATTLE_HIT_INFO_END;
}





// Internal

// 角色的一轮攻击(勇者系武器的话同时判定两次)
static int _BattleGenerateRoundHits(BattleUnit* actor, BattleUnit* target) {
	int i, count;
	u32 attrs;

	if (!actor->weapon)
		return FALSE;

	attrs = gBattleHitIterator->attributes;
	count = GetBattleUnitHitCount(actor);

	for (i = 0; i < count; ++i) 
	{
		gBattleHitIterator->attributes |= attrs;

		if (BattleGenerateHit(actor, target))
			return TRUE;
    }

	return FALSE;
}


// 判定勇者系武器
static int GetBattleUnitHitCount(BattleUnit* actor){
	if ( (&gBattleActor == actor) & (actor->weaponAttributes & IA_BRAVE) )
	{
		gBattleHitIterator->attributes |= BATTLE_HIT_ATTR_BRAVE;
		return 2;
	}
	else
		return 1;
}



// 判定追击
int CanDouble(BattleUnit* actor, BattleUnit* target){
	int can;

	if( actor->battleSpeed < target->battleSpeed )
		can = FALSE;
	
	else if( (actor->battleSpeed - target->battleSpeed) > BATTLE_FOLLOWUP_SPEED_THRESHOLD )
		can = TRUE;
	else
		can = FALSE;


	// Modular
	if( CheckDoubleLoop(actor,target) )
		can = TRUE;
	
	if( CheckNullDoubleLoop(actor,target) )
		can = FALSE;
	
	return can;
}



//  ORG $2AF90 (Check Doubling vanilla)
s8 new_BattleGetFollowUpOrder(BattleUnit** outAttacker, BattleUnit** outDefender) {
    
	

    if ( CanDouble(&gBattleActor, &gBattleTarget) ) 
	{
        *outAttacker = &gBattleActor;
        *outDefender = &gBattleTarget;
    } 
	else if( CanDouble( &gBattleTarget, &gBattleActor ) )
	{
        *outAttacker = &gBattleTarget;
        *outDefender = &gBattleActor;
    }
	else
		return FALSE;

    if (GetItemWeaponEffect((*outAttacker)->weaponBefore) == WPN_EFFECT_HPHALVE)
        return FALSE;

    if (GetItemIndex((*outAttacker)->weapon) == ITEM_MONSTER_STONE)
        return FALSE;

    return TRUE;
}
