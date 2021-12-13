#pragma once
#include "gbafe.h"

typedef void (*BTCLoopFunc) (BattleUnit*,BattleUnit*);
extern BTCLoopFunc* gpBTPreLoopTable;

typedef s16 (*BTSfunc) (BattleUnit*,BattleUnit*);
extern BTSfunc* gpBuStrCalcTable;
extern BTSfunc* gpBuMagCalcTable;
extern BTSfunc* gpBuASCalcTable;
extern BTSfunc* gpBuHitCalcTable;
extern BTSfunc* gpBuAvoCalcTable;
extern BTSfunc* gpBuCritCalcTable;
extern BTSfunc* gpBuDodgeCalcTable;
extern BTSfunc* gpBuDefCalcTable;
extern BTSfunc* gpBuResCalcTable;


// atk = str/mag + WpnMight + (skill+support+Battlion)
void BC_Atk(BattleUnit*,BattleUnit*);

// AS = spd + [Weapon Mt - floor[str/5] - fix] + (skill+support+Battlion)
void BC_ASpd(BattleUnit*,BattleUnit*);

// Phy: Hit = Weapon Hit + unit.skl + (skill+support+Battlion)
// Mag: Hit = Weapon Hit + ( unit.skl + unit.lck )/2 + (skill+support+Battlion)
void BC_Hit(BattleUnit*, BattleUnit*);

// Crit = Weapon Hit + (skl+lck)/2
void BC_Crit(BattleUnit*, BattleUnit*);

// Avo = unit.spd - [weight - floor(unit.pow/5)] + terrain + fix
void BC_Avo(BattleUnit*, BattleUnit*);

// Doge = lck
void BC_Dodge(BattleUnit*, BattleUnit*);

// def = def/res + terrain + fix
void BC_DefRes(BattleUnit*,BattleUnit*);

