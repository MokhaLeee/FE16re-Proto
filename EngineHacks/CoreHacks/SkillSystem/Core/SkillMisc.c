#include "gbafe.h"
#include "SkillSystem.h"
#include "StrMagCha.h"
#include "UnitExt.h"

int IsSkill(u8 SkillID){
	if( SkillID < MAX_SKILL_COUNT )
		if( NULL != SkillInfoTable[SkillID] )
			return TRUE;
	return FALSE;	
}

int GetSkillNameMsg(u8 skillId){
    return SkillInfoTable[skillId]->msgName;
}

int GetSkillDescriptionMsg(u8 skillId){
    return SkillInfoTable[skillId]->msgDesc;
}

const void* GetSkillIconGfx(u8 skillId){
    return SkillInfoTable[skillId]->icon;
}


