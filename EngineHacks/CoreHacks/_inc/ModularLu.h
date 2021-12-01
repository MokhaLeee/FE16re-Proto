#pragma once

typedef s8 (*MLU_Func)(Unit*);
extern MLU_Func Groth_HpMod[];
extern MLU_Func Groth_PowMod[];
extern MLU_Func Groth_SklMod[];
extern MLU_Func Groth_SpdMod[];
extern MLU_Func Groth_LckMod[];
extern MLU_Func Groth_DefMod[];
extern MLU_Func Groth_ResMod[];
extern MLU_Func Groth_MagMod[];
extern MLU_Func Groth_ChaMod[];


s8 Growth_HpGetter(Unit*);
s8 Growth_PowGetter(Unit*);
s8 Growth_SklGetter(Unit*);
s8 Growth_SpdGetter(Unit*);
s8 Growth_LckGetter(Unit*);
s8 Growth_DefGetter(Unit*);
s8 Growth_ResGetter(Unit*);
s8 Growth_MagGetter(Unit*);
s8 Growth_ChaGetter(Unit*);


// Auto-Leveling
void MagCha_AutolevelCore_ByClass(Unit*, int level);

// Misc
void MLUPromStatGains_MagCha(struct Unit* unit, u8 classId);
void LevelUp_FE16Style(struct BattleUnit* bu);

extern int GetAutoleveledStatIncrease(int growth, int level);
