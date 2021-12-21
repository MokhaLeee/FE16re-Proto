#include "gbafe.h"
#include "SkillSystem.h"
#include "StrMagCha.h"
#include "UnitExt.h"


static int CheckRomSkill_Char(Unit* unit, u8 skillId){
	s8 level = unit->level;
	u8 CharID = unit->pCharacterData->number;
	
	// For Level 0
	for(int i=0; i<3; i++)
		if( skillId == gpSkillTable_Char[CharID].skills0[i] )
			return 1;
	
	// Lv 5/10/15/20/25
	for(int i=0; i<5; i++)
	{
		level -= 5;
		if( level>0 )
			if( skillId == gpSkillTable_Char[CharID].skillLv[i] )
				return 1;
	}
	return 0;
}
static int CheckRomSkill_Class(Unit* unit, u8 skillId){
	s8 level = unit->level;
	u8 ClassID = unit->pClassData->number;
	
	// Lv 0
	for(int i=0; i<3; i++)
		if( skillId == gpSkillTable_Class[ClassID].skills0[i] )
			return 1;
	
	// Lv 5/10/15/20/25
	for(int i=0; i<5; i++)
	{
		level -= 5;
		if( level>0 )
			if( skillId == gpSkillTable_Class[ClassID].skillLv[i] )
				return 1;
	}
	return 0;
}

static int JudgeSkillROM(Unit* unit, u8 skillId){
	if( TRUE == CheckRomSkill_Char(unit,skillId) )
		return TRUE;
	else if( TRUE == CheckRomSkill_Class(unit,skillId) )
		return TRUE;
	else
		return FALSE;
}



/*
需要注意, List必须要以UnitID为基础
因为并不存在CharID的限制
且敌方会存在多个敌人共享ID的情况
*/


static inline int IsSkillListHandled(Unit* unit, SkillListRAM* list){
	return list->unitID == unit->index;
}


static void ResetSkillList_byList(SkillListRAM* list){
	list->unitID = 0;
	list->Count = 0;
	for(int i=0; i<UNIT_SKILL_COUNT_LIST; i++)
		list->skills[i] = 0;
}

void ResetSkillList(void){
	ResetSkillList_byList(gpUnitSkillList0);
	ResetSkillList_byList(gpUnitSkillList1);
}





static int MakeSkillListRAM(Unit* unit, SkillListRAM* list){
	ResetSkillList_byList(list);
	
	list->unitID = unit->index;
	
	for(int i=1; i<MAX_SKILL_COUNT; i++)
		if( 1 == JudgeSkill(unit,i) )
		{
			if( 0x1E < list->Count )
				return 1;
			else
				list->skills[list->Count++] = i;
		}
	
	return 1;
}



SkillListRAM* UnitGetSkillList(Unit* unit){
	SkillListRAM* list = gpUnitSkillList1;
	
	if( 1 == IsSkillListHandled(unit,list) )
		return list;
	else
		list = gpUnitSkillList0;
	
	if( 1 == IsSkillListHandled(unit,list) )
		return list;
	
	MakeSkillListRAM(unit,gpUnitSkillList0);
	return gpUnitSkillList0;
}

int GetSkillListLength(Unit* unit){
	SkillListRAM* list;
	
	list = UnitGetSkillList(unit);
	
	return list->Count;
}


/*
需要注意UnitExt并不是所有人都有的
*/

// SkillTester Core
int JudgeSkill(Unit* unit, u8 skillId){
	UnitExt* ext;
	
	if( 0 == skillId )
		return TRUE;
	else if( 0xFF == skillId )
		return FALSE;
	
	// Judge UnitExt
	ext = GetUnitExtByCharID(unit->pCharacterData->number);
	
	if( NULL != ext )
		for( int i=0; i<MAX_SIZE_SIKLL; i++ )
			if(skillId == ext->skills[i])
				return TRUE;
	
	// Rom
	return JudgeSkillROM(unit, skillId);
	
}



// SkillTester
int JudgeSkillFast(Unit* unit, u8 skillId){
	SkillListRAM* list;
	
	if( 0 == skillId )
		return TRUE;
	else if( 0xFF == skillId )
		return FALSE;
	
	list = UnitGetSkillList(unit);
	
	for( int i=0; i<list->Count; i++ )
		if( skillId == list->skills[i] )
			return 1;
	
	return 0;
}


// SkillTesterBu
int JudgeSkillBattle(BattleUnit* bu, u8 skillId){
	SkillListRAM* list;
	
	if( 0 == skillId )
		return TRUE;
	else if( 0xFF == skillId )
		return FALSE;
	
	if( &gBattleActor == bu )
		list = gpUnitSkillList0;
	else
		list = gpUnitSkillList1;
	
	// IsSkillListHandled
	if( bu->unit.index != list->unitID )
		MakeSkillListRAM(&bu->unit,list);
	
	for( int i=0; i<list->Count; i++ )
		if( skillId == list->skills[i] )
			return 1;
	
	return 0;
}

// SkillTesterBuAct
int JudgeSkillBuActor(BattleUnit* bu, u8 skillId){

	if( 0 == skillId )
		return TRUE;
	else if( 0xFF == skillId )
		return FALSE;
	
	// IsSkillListHandled
	if( bu->unit.index != gpUnitSkillList0->unitID )
		MakeSkillListRAM(&bu->unit,gpUnitSkillList0);
	
	for( int i=0; i<gpUnitSkillList0->Count; i++ )
		if( skillId == gpUnitSkillList0->skills[i] )
			return 1;
	
	return 0;
}


// SkillTesterBuTar
int JudgeSkillBuTarget(BattleUnit* bu, u8 skillId){

	if( 0 == skillId )
		return TRUE;
	else if( 0xFF == skillId )
		return FALSE;
	
	// IsSkillListHandled
	if( bu->unit.index != gpUnitSkillList1->unitID )
		MakeSkillListRAM(&bu->unit,gpUnitSkillList1);
	
	for( int i=0; i<gpUnitSkillList1->Count; i++ )
		if( skillId == gpUnitSkillList1->skills[i] )
			return 1;
	
	return 0;
}





