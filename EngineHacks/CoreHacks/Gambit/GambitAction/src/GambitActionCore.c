#include "gbafe.h"
#include "Gambit.h"

#include "Common.h"
extern u8* gpCommonSaveSu;
#define COMMON_NUM (gpCommonSaveSu[0])
#define COMMON_TARGIT_AT (&gpCommonSaveSu[1])

static inline u8 GetGambitDmgReal(Unit* TargetUnit, u8 MaxDmg);

int GambitAction(Proc* proc){
	ProcGamAction* newProc = 
		(ProcGamAction*)ProcStartBlocking(gpProc_GambitAction, proc);
	newProc->Counter = COMMON_NUM;
	newProc->gpCurUnitID = COMMON_TARGIT_AT;
	return 0;
}


void cProc_AttackPriority(ProcGamAction* proc){
	Unit* TargetUnit=GetUnit(gActionData.targetIndex);
	MakeGambitAnime(proc,TargetUnit);
	MakeGambitEffect(proc,TargetUnit);

	if( 1 == proc->Counter )
		ProcGoto((Proc*)proc, 0x2);
	return;
}


void cProc_AttackNext(ProcGamAction* proc){	
	u8 TargetID= *(proc->gpCurUnitID);
	
	if( TargetID != gActionData.targetIndex  )
	{
		Unit* TargetUnit=GetUnit(TargetID);
		MakeGambitAnime(proc,TargetUnit);
		MakeGambitEffect(proc,TargetUnit);
	}	
	return;
}


void cProc_SetNextGambitTarget(ProcGamAction* proc){
	u8 iCounter = --proc->Counter;
	if(0==iCounter)
		ProcGoto((Proc*)proc, 0x2);
	
	proc->gpCurUnitID++;
	return;
}





void MakeGambitAnime(ProcGamAction* proc, Unit* TargetUnit){
	
	Unit* SubjectUnit=GetUnit(gActionData.subjectIndex);
	
	//配置BattleStruct
	SetupSubjectBattleUnitForStaff(SubjectUnit, gActionData.itemSlotIndex);
	SetupTargetBattleUnitForStaff(TargetUnit);
	
	//GambitEffect
	u8 u8Dmg = GetGambitDmgReal(TargetUnit,0xA);
	// TargetUnit->curHP -= u8Dmg;
	
	//配置动画DIY内容
	*(0x3+(u8*)gpCurrentRound) = u8Dmg;
	gBattleActor.weaponBefore = 0x074;
	
	//避免 BattleApplyItemEffect->BattleApplyItemExpGains 加经验
	gBattleActor.weaponAttributes = 0x0;
	gBattleActor.weaponType= 0x0;
	
	//开启动画
	BattleApplyItemEffect((Proc*)proc);
	BeginBattleAnimations();
	return;
}



void MakeGambitEffect(ProcGamAction* proc, Unit* TargetUnit){
	u8 u8Dmg = GetGambitDmgReal(TargetUnit,0xA);
	TargetUnit->curHP -= u8Dmg;
	return;
}


static inline u8 GetGambitDmgReal(Unit* TargetUnit, u8 MaxDmg){
	u8 UnitCurHp=GetUnitCurrentHp(TargetUnit);
	if( UnitCurHp > MaxDmg)
		return MaxDmg;
	else
		return (UnitCurHp-1);
}