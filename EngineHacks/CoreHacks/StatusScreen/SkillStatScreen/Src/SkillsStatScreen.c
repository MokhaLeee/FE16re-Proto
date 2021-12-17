
#include "gbafe.h"
#include "SkillSystem.h"



static struct StatScreenSt* const STATSCREEN = (struct StatScreenSt*) 0x02003BFC;

static u16* const TM_PAGEFRAME = (u16*) 0x02003D2C;

static struct HelpBoxInfo const* const HI_SS0_HP  = (struct HelpBoxInfo const*) 0x08A00BA8;
static struct HelpBoxInfo const* const HI_SS0_RES = (struct HelpBoxInfo const*) 0x08A00C50;
static struct HelpBoxInfo const* const HI_SS0_CND = (struct HelpBoxInfo const*) 0x08A00CF8;

static int (* const TryRelocateHbUp)(struct HelpBoxProc* proc) = (void const*) 0x08089355;
/* 
static int (* const TryRelocateHbDown)(struct HelpBoxProc* proc) = (void const*) 0x08089385;
static int (* const TryRelocateHbLeft)(struct HelpBoxProc* proc) = (void const*) 0x080893B5;
static int (* const TryRelocateHbRight)(struct HelpBoxProc* proc) = (void const*) 0x080893E5;
 */
 
void NuDrawStatScreenBwl(void)
{
    static int const X = 1;
    static int const Y = 15;

    struct TextHandle* const text = STATSCREEN->text + STATSCREEN_TEXT_BWL;

    Text_Clear(text);

    Text_SetColorId(text, TEXT_COLOR_GOLD);
    Text_DrawString(text, "Skills");

	
    if (GetSkillListLength(STATSCREEN->unit) == 0)
    {
        Text_SetColorId(text, TEXT_COLOR_GRAY);
        Text_SetXCursor(text, 32);
        Text_DrawString(text, "None");
		Text_Display(text, TM_PAGEFRAME + TILEMAP_INDEX(X, Y));
		return;
    }

    Text_Display(text, TM_PAGEFRAME + TILEMAP_INDEX(X, Y));
	SkillListRAM const* const list = UnitGetSkillList(STATSCREEN->unit);
	
    for (int i = 0; i < UNIT_SKILL_COUNT_SCREEN; ++i)
    {
        if (IsSkill(list->skills[i]))
            DrawIcon(TM_PAGEFRAME + TILEMAP_INDEX(X + 4 + 2*i, Y), SKILL_ICON(list->skills[i]), TILEREF(0, 4));
    }
}

void HbRedirect_Skill(struct HelpBoxProc* proc)
{
    SkillListRAM const* const list = UnitGetSkillList(STATSCREEN->unit);
    int const skillnum = proc->info->mid;

    if (!IsSkill(list->skills[skillnum]))
        TryRelocateHbUp(proc);
}

void HbPopuplate_Skill(struct HelpBoxProc* proc)
{
    SkillListRAM const* const list = UnitGetSkillList(STATSCREEN->unit);
    int const skillnum = proc->info->mid;

    proc->mid = GetSkillDescriptionMsg(list->skills[skillnum]);
}

const struct HelpBoxInfo HelpInfo_Ss0Skill0;
const struct HelpBoxInfo HelpInfo_Ss0Skill1;
const struct HelpBoxInfo HelpInfo_Ss0Skill2;
const struct HelpBoxInfo HelpInfo_Ss0Skill3;
const struct HelpBoxInfo HelpInfo_Ss0Skill4;
const struct HelpBoxInfo HelpInfo_Ss0Skill5;

const struct HelpBoxInfo HelpInfo_Ss0Skill0 =
{
    HI_SS0_RES, NULL, HI_SS0_HP, &HelpInfo_Ss0Skill1,
    136, 136, 0, HbRedirect_Skill, HbPopuplate_Skill,
};

const struct HelpBoxInfo HelpInfo_Ss0Skill1 =
{
    HI_SS0_RES, NULL, &HelpInfo_Ss0Skill0, &HelpInfo_Ss0Skill2,
    152, 136, 1, HbRedirect_Skill, HbPopuplate_Skill,
};

const struct HelpBoxInfo HelpInfo_Ss0Skill2 =
{
    HI_SS0_CND, NULL, &HelpInfo_Ss0Skill1, &HelpInfo_Ss0Skill3,
    168, 136, 2, HbRedirect_Skill, HbPopuplate_Skill,
};

const struct HelpBoxInfo HelpInfo_Ss0Skill3 =
{
    HI_SS0_CND, NULL, &HelpInfo_Ss0Skill2, &HelpInfo_Ss0Skill4,
    184, 136, 3, HbRedirect_Skill, HbPopuplate_Skill,
};

const struct HelpBoxInfo HelpInfo_Ss0Skill4 =
{
    HI_SS0_CND, NULL, &HelpInfo_Ss0Skill3, &HelpInfo_Ss0Skill5,
    200, 136, 4, HbRedirect_Skill, HbPopuplate_Skill,
};

const struct HelpBoxInfo HelpInfo_Ss0Skill5 =
{
    HI_SS0_CND, NULL, &HelpInfo_Ss0Skill4, NULL,
    216, 136, 5, HbRedirect_Skill, HbPopuplate_Skill,
};
