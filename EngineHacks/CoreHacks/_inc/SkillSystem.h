#pragma once
#include "gbafe.h"

enum { UNIT_SKILL_COUNT_SCREEN = 0x6 };
enum { UNIT_SKILL_COUNT_LIST = 0x1E };
enum { UNIT_SKILL_COUNT_EXT = 0x5 };
enum { MAX_SKILL_COUNT = 0xFF };
#define SKILL_ICON(aSkillId) ((1 << 8) + (aSkillId))

typedef struct
{
    u16 msgName;      //* name text id
    u16 msgDesc;      //* description text id
    const void* icon; //* icon gfx address
	u8 unk[4];
} SkillInfo;

extern const SkillInfo* const SkillInfoTable[];



typedef struct{
	u8 skills0[3];
	u8 skillLv[5];
} SkillRomTable;

extern const SkillRomTable SkillTable_Char[];
extern const SkillRomTable SkillTable_Class[];

extern const SkillRomTable* gpSkillTable_Char;
extern const SkillRomTable* gpSkillTable_Class;

// RAM List Misc

typedef struct{
	s8 unitID;
	u8 Count;
	u8 skills[UNIT_SKILL_COUNT_LIST];
} SkillListRAM;
extern SkillListRAM* gpUnitSkillList0;
extern SkillListRAM* gpUnitSkillList1;


int GetSkillListLength(Unit*);
SkillListRAM* UnitGetSkillList(Unit*);
void ResetSkillList(void);

/**
 * Checks whether a unit has a given skill
 * 
 * @param unit the unit
 * @param skillId the id of the skill to check for
 * @return non-zero if the unit has the given skill
 */
int JudgeSkill(Unit* unit, u8 skillId);
int JudgeSkillFast(Unit* unit, u8 skillId);
int JudgeSkillBattle(BattleUnit* bu, u8 skillId);
int JudgeSkillBuActor(BattleUnit* bu, u8 skillId);
int JudgeSkillBuTarget(BattleUnit* bu, u8 skillId);

extern int (*SkillTester)(Unit* unit, u8 skillId);
extern int (*SkillTesterBu)(BattleUnit* bu, u8 skillId);
extern int (*SkillTesterBuAct)(BattleUnit* bu, u8 skillId);
extern int (*SkillTesterBuTar)(BattleUnit* bu, u8 skillId);
/**
 * Get skill name text id by skill id
 * 
 * @param skillId id of skill
 * @return name text id
 */
int GetSkillNameMsg(u8 skillId);

/**
 * Get skill description text id by skill id
 * 
 * @param skillId id of skill
 * @return description text id
 */
int GetSkillDescriptionMsg(u8 skillId);

/**
 * Gets address of skill icon image by skill id (for IconDisplay)
 * 
 * @param skillId id of skill
 * @return address of icon gfx
 */
const void* GetSkillIconGfx(u8 skillId);

int IsSkill(u8);