#include "gbafe.h"
#include "SkillSystem.h"

extern u8 BlowDartingID, BlowDeathID, BlowArmoredID;
extern u8 BlowFiendishID, BlowWardingID, BlowDuelistID, BlowUncannyID;


static int CheckBlow(BattleUnit* attacker, BattleUnit* defender, u8 skillId){
	if( &gBattleActor == attacker )
		if( TRUE == (*SkillTester)((Unit*)attacker,skillId) )
			return TRUE;
	return FALSE;
}


// Darting Blow: AS +6
s16 DartingBlow(BattleUnit* atk, BattleUnit* def)
{	return CheckBlow(atk,def,BlowDartingID)?6:0; }

// Death Blow: Str +6
s16 DeathBlow(BattleUnit* atk, BattleUnit* def)
{	return CheckBlow(atk,def,BlowDeathID)?6:0; }

// Armored Blow: Def +6
s16 ArmoredBlow(BattleUnit* atk, BattleUnit* def)
{	return CheckBlow(atk,def,BlowArmoredID)?6:0; }

// Fiendish Blow: Mag+6
s16 FiendishBlow(BattleUnit* atk, BattleUnit* def)
{	return CheckBlow(atk,def,BlowFiendishID)?6:0; }

// Warding Blow: Res +6
s16 WardingBlow(BattleUnit* atk, BattleUnit* def)
{	return CheckBlow(atk,def,BlowWardingID)?6:0; }

// Duelist's Blow: Avo +20	
s16 DuelistsBlow(BattleUnit* atk, BattleUnit* def)
{	return CheckBlow(atk,def,BlowDuelistID)?20:0; }

// Uncanny Blow: Hit +30
s16 UncannyBlow(BattleUnit* atk, BattleUnit* def)
{	return CheckBlow(atk,def,BlowUncannyID)?30:0; }

