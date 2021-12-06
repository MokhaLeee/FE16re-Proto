#include "gbafe.h"
#include "UnitExt.h"
#include "CombatArt.h"


int UnitHasCA(Unit* unit){
	UnitExt* ext = GetUnitExtByUnit(unit);
	if( NULL == ext )
		return FALSE;
	
	for( int i=0; i < MAX_SIZE_COMBATART; i++ )
		if( ext->skillbattle[i] )
			return TRUE;
	
	SetUnitCAauto(unit);
	
	for( int i=0; i < MAX_SIZE_COMBATART; i++ )
		if( ext->skillbattle[i] )
			return TRUE;
		
	return FALSE;
}

// Gets funcs
u8 GetCS_RangeBonus(u8 CAid){
	return gpCombatArtConigList[CAid].rangeBonus;
}

s16 GetCS_mtBonus(u8 CAid){
	return gpCombatArtConigList[CAid].mtBonus;
}

s16 GetCS_hitBonus(u8 CAid){
	return gpCombatArtConigList[CAid].hitBonus;
}

s16 GetCS_avoBonus(u8 CAid){
	return gpCombatArtConigList[CAid].avoBonus;
}

s16 GetCS_CritBonus(u8 CAid){
	return gpCombatArtConigList[CAid].critBonus;
}




// W.I.P.
int CanUnitUseCA(Unit* unit, u8 CAid){
	UnitExt* ext;
	
	ext = GetUnitExtByUnit(unit);
	
	if( NULL == ext )
		return FALSE;
	
	for( int i=0; i < MAX_SIZE_COMBATART; i++)
		if( CAid == ext->skillbattle[i] )
			return TRUE;
	return FALSE;
}



// W.I.P
int SetUnitCAauto(Unit* unit){
	UnitExt* ext = GetUnitExtByUnit(unit);
	
	if( NULL == ext )
		return FALSE;
	
	ext->skillbattle[0] = 1;
	ext->skillbattle[1] = 2;
	ext->skillbattle[2] = 3;
	ext->skillbattle[3] = 4;
	ext->skillbattle[4] = 5;
	return TRUE;
}



void SetCombatArtInfo(Unit* unit, u8 combatId){
	gpBattleFlagSu->isCombat = 1;
	gpBattleFlagSu->ActorId = unit->index;
	gpBattleFlagSu->artId = combatId;
}


void ResetCombatArtInfo(void){
	gpBattleFlagSu->isCombat = 0;
	gpBattleFlagSu->ActorId = 0;
	gpBattleFlagSu->artId = 0;
}

