#include "gbafe.h"
#include "SkillSystem.h"
#include "StrMagCha.h"
#include "UnitExt.h"

int GetSkillNameMsg(int skillId){
    return SkillInfoTable[skillId]->msgName;
}

int GetSkillDescriptionMsg(int skillId){
    return SkillInfoTable[skillId]->msgDesc;
}

const void* GetSkillIconGfx(int skillId){
    return SkillInfoTable[skillId]->icon;
}


