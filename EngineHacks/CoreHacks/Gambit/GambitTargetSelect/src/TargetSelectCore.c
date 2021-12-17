#include "Gambit.h"
extern const ProcCode gProcCode_tsGambitReturn[];

#include "Common.h"
extern u8* gpCommonSaveSu;
#define COMMON_SUBEFFECT_INDEX (gpCommonSaveSu[0])
#define COMMON_NUM (gpCommonSaveSu[0])
#define COMMON_TARGIT_AT (&gpCommonSaveSu[1])

#include "MapMaster.h"

void MakeTargetListFor_SubGambitMenu(Unit* unit,u8 range){
	InitTargets(unit->xPos,unit->yPos);
	BmMapFill(gMapRange,0);
	MapIncInBoundedRange(unit->xPos,unit->yPos,1,range);
	ForEachUnitInRange(AddUnitToTargetListIfNotAllied);
	
	return;
}

void MakeTargetListFor_AfterSelectAPressed(u8 x, u8 y, u8 GambitIndex){
	InitTargets(x,y);
	
	//gpSubjectMap = gMapMovement;
	//ForEachUnitInRange_ByRangeMovement(AddUnitToTargetListIfNotAllied);
	ForEachUnitMaster(
		AddUnitToTargetListIfNotAllied,
		&gMapMovement,
		NU_MOVE_MAP);
	
	return;
}

void ForEachUnitInRange_ByRangeMovement(void(func)(struct Unit*)){
	if( (gMapSize.x<0) | (gMapSize.y<0) )
		return;
	
	for( u8 y=0; y<gMapSize.y; y++ )
		for( u8 x=0; x<gMapSize.x; x++ )
		{
			if( -1 == gMapMovement[y][x] )
				continue;
			if( gMapUnit[y][x] )
				func( GetUnit(gMapUnit[y][x]) );
		}
	return;
}




// Funcs
void _TargetSelect_Gambit4_TargetChange(struct TargetSelectionProc* proc, struct TargetEntry* entry){
		
	u8 GambitIndex = COMMON_SUBEFFECT_INDEX;
	
	FillAOEEffectMay_OnChangeTarget(entry->x,entry->y,GambitIndex);
	BmMapFill(gMapRange,0);
	FillRangeMapForHover(gActiveUnit,2);
	DisplayMoveRangeGraphics(MOV_RED | RNG_GREEN);
	
	TargetSelect_ChangeTarget(proc,entry);
	return;
}


int _TargetSelect_Gambit5_APressed(struct TargetSelectionProc* proc, struct TargetEntry* entry){
	gActionData.unitActionType = Gambit_ActionIndex;
	gActionData.targetIndex = entry->unitIndex;
	
	MakeTargetListFor_AfterSelectAPressed(entry->x,entry->y,0);
	
	SaveTarget_PostGambitTargetSelection();
	return TSE_CLEAR_GFX | TSE_PLAY_BEEP | TSE_END | TSE_DISABLE;
}


int _TargetSelect_Gambit6_BPressed(struct TargetSelectionProc* proc, struct TargetEntry* entry){
	if( MapEventEngineExists() )
		return TSE_NONE;
	else
	{
		ProcStart(gProcCode_tsGambitReturn,(Proc*)3);
		return TSE_PLAY_BOOP | TSE_END | TSE_DISABLE;
	}
}


void BuildGambitReturnMenu_OnTS(Proc* parent){
	_ResetIconGraphics();
	LoadIconPalettes(0x4);
	Text_ResetTileAllocation();
	StartMenu(GambitSelectMenu);
}
