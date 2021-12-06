#include "gbafe.h"
#include "StatusGetter.h"
#include "SkillSystem.h"

static int IsUnitHasItem(Unit* unit, u16 item){	// W.I.P.
	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
		if( ITEM_ID(unit->items[i]) == ITEM_ID(item) )
			return TRUE;
	return FALSE;
}



// 按技能生效:
extern const u8 NoJugRange_SkillIDs[];
extern const u8 NullCounter_SkillIDs[];

int AutoNoJugRange_BySkillId(BattleUnit* bu){
	
	for(int i=0; NoJugRange_SkillIDs[i]!=0; i++)
		if( (*SkillTester)(&bu->unit,NoJugRange_SkillIDs[i]) )
			return TRUE;
	return FALSE;
}

int AutoNullCounter_BySkillId(void){
	
	for(int i=0; NullCounter_SkillIDs[i]!=0; i++)
		if( (*SkillTester)(&gBattleActor.unit,NullCounter_SkillIDs[i]) )
			return TRUE;
	return FALSE;
}


// 按物品生效:
extern const u8 NoJugRange_ItemIDs[];
extern const u8 NullCounter_ItemIDs[];

int AutoNoJugRange_ByItemID(BattleUnit* bu){
	
	for(int i=0; NoJugRange_ItemIDs[i]!=0; i++)
		if( IsUnitHasItem(&bu->unit,NoJugRange_ItemIDs[i]) )
			return TRUE;
	return FALSE;
}

int AutoNullCounter_ByItemID(void){
	
	for(int i=0; NullCounter_ItemIDs[i]!=0; i++)
		if( IsUnitHasItem(&gBattleActor.unit,NullCounter_ItemIDs[i]) )
			return TRUE;
	return FALSE;
}


