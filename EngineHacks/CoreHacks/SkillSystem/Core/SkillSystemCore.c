#include "gbafe.h"
#include "SkillSystem.h"
#include "StrMagCha.h"
#include "UnitExt.h"


static int CheckRomSkill_Char(Unit* unit, int skillId){
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
static int CheckRomSkill_Class(Unit* unit, int skillId){
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

static int JudgeSkillROM(Unit* unit, int skillId){
	if( TRUE == CheckRomSkill_Char(unit,skillId) )
		return TRUE;
	else if( TRUE == CheckRomSkill_Class(unit,skillId) )
		return TRUE;
	else
		return FALSE;
}

/*
需要注意UnitExt并不是所有人都有的
*/
int JudgeSkill(Unit* unit, int skillId){
	UnitExt* unitext = GetUnitExtByUnit(unit);
	if( 0 == skillId )
		return FALSE;
	if( skillId > 0xFE )
		return FALSE;
	
	if( NULL != unitext )
		for(int i=0; i<5; i++)
			if( skillId == GetUnitExtByUnit(unit)->skills[i] )
				return 1;
		
	return JudgeSkillROM(unit,skillId);
}

/*
需要注意, List必须要以UnitID为基础
因为并不存在CharID的限制
且敌方会存在多个敌人共享ID的情况
*/


static int IsSkillListHandled(Unit* unit, SkillListRAM* list){
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


int GetSkillListLength(Unit* unit){
	if( 0==IsSkillListHandled(unit,gpUnitSkillList0) )
		MakeSkillListRAM(unit,gpUnitSkillList0);
	
	return gpUnitSkillList0->Count;
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



int JudgeSkillFast(Unit* unit, int skillId){
	if( 0 == skillId )
		return FALSE;
	if( skillId > 0xFE )
		return FALSE;
	

	if( 0==IsSkillListHandled(unit,gpUnitSkillList0) )
		MakeSkillListRAM(unit,gpUnitSkillList0);
	
	for( int i=0; i<gpUnitSkillList0->Count; i++ )
		if( skillId == gpUnitSkillList0->skills[i] )
			return 1;
	
	return 0;
}



int IsSkill(u8 SkillID){
	if( (SkillID < MAX_SKILL_COUNT) & (SkillID>0) )
		if( NULL != SkillInfoTable[SkillID] )
			return TRUE;
	return FALSE;	
}


