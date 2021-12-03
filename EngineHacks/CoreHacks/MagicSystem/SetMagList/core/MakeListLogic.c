#include "gbafe.h"
#include "MagicSystem.h"
#include "UnitExt.h"
#include "StatusGetter.h"

#include "MagList.h"

// Basic
static void SetBMag(u8* at, u8 use){
	*at = (*at&0xF0) | (use&0xF);
}

static void SetWMag(u8* at, u8 use){	// 留黑色
	*at = (*at&0xF) | ((use&0xF)<<4);
}

static void AddBMag(u8* at){
	*at = (*at&0xF0) | ( ((*at&0xF)+1)&0xF);
}

static void AddWMag(u8* at){	// 留黑色
	*at = (*at&0xF) | ( ((*at&0xF0)+0x10)&0xF0);
}

static void RemoveMag(UnitExt* ext){
	for(int i=0; i<MAGIC_LIST_SIZE; i++)
		ext->mlist.m[i] = 0;
}


// Can Class use Magic
static int CanClassUseMag(int classID, const u8* ClassList){
	const u8 *cur = ClassList;
	while(*cur)
		if( *cur++ == classID )
			return TRUE;
	return FALSE;
}

int IsClassHandleMag(int classID)
{ 	return CanClassUseMag(classID,ClassHandleMag); }

int IsClassLearningMag(int classID)
{ 	return CanClassUseMag(classID,ClassLeaningMag); }

int IsClassBMagMaster(int classID)
{ 	return CanClassUseMag(classID,ClassBMagMaster); }

int IsClassWMagMaster(int classID)
{ 	return CanClassUseMag(classID,ClassWMagMaster); }




// Set Mag duration by ClassList
static void SetBMagDouble(UnitExt* ext){
	u8 use = 0;
	
	for( int i=0; i<MAGIC_LIST_SIZE; i++ )
		if( 0 != GET_B_MAG( ext->mlist.m[i] ) )
		{
			use = gpBMagList[i].baseUse << 1;
			if( use > 0xF )
				use = 0xF;
			SetBMag( &ext->mlist.m[i],use );
		}
}

static void SetWMagDouble(UnitExt* ext){
	u8 use = 0;
	
	for( int i=0; i<MAGIC_LIST_SIZE; i++ )
		if( 0 != GET_W_MAG( ext->mlist.m[i] ) ){
			use = gpWMagList[i].baseUse << 1;
			if( use > 0xF )
				use = 0xF;
			SetWMag( &ext->mlist.m[i],use );
		}
}

static void SetBMagHalve(UnitExt* ext){
	u8 use = 0;
	
	for( int i=0; i<MAGIC_LIST_SIZE; i++ )
		if( 0 != GET_B_MAG( ext->mlist.m[i] ) )
		{
			use = gpBMagList[i].baseUse >> 1;
			if( 0 == use )
				use = 1;
			SetBMag( &ext->mlist.m[i],use );
		}
}

static void SetWMagHalve(UnitExt* ext){
	u8 use = 0;
	
	for( int i=0; i<MAGIC_LIST_SIZE; i++ )
		if( 0 != GET_W_MAG( ext->mlist.m[i] ) )
		{
			use = gpWMagList[i].baseUse >> 1;
			if( 0 == use )
				use = 1;
			SetWMag( &ext->mlist.m[i],use );
		}
}


static void SetBMagNormal(UnitExt* ext){
	for( int i=0; i<MAGIC_LIST_SIZE; i++ )
		if( 0 != GET_B_MAG( ext->mlist.m[i] ) )
			SetBMag( &ext->mlist.m[i],gpBMagList[i].baseUse );
}

static void SetWMagNormal(UnitExt* ext){
	for( int i=0; i<MAGIC_LIST_SIZE; i++ )
		if( 0 != GET_W_MAG( ext->mlist.m[i] ) )
			SetWMag( &ext->mlist.m[i],gpWMagList[i].baseUse );
}


// Set Mag list-base (by class)
static void SetBMagBaseClass(Unit* unit){
	u8 classId = unit->pClassData->number;
	UnitExt* ext = GetUnitExtByUnit(unit);
	
	for( int i=0; i<MAGLIST_CLASS_MAXSIZE; i++ )
	{
		u8 magCur = gpClassBasedBMagList[classId].mags[i];
		if( magCur )
		{
			u8 offset = GetBMagOffset(magCur);
			if( offset < 0x10 )
				AddBMag(&ext->mlist.m[offset]);
		}
	}
}

static void SetWMagBaseClass(Unit* unit){
	u8 classId = unit->pClassData->number;
	UnitExt* ext = GetUnitExtByUnit(unit);
	
	for( int i=0; i<MAGLIST_CLASS_MAXSIZE; i++ )
	{
		u8 magCur = gpClassBasedWMagList[classId].mags[i];
		if( magCur )
		{
			u8 offset = GetWMagOffset(magCur);
			if( offset < 0x10 )
				AddWMag(&ext->mlist.m[offset]);
		}
	}
}



// Set Mag list-base (by unit)
void SetBMagBaseChar(Unit* unit){
	UnitExt* ext = GetUnitExtByUnit(unit);
	const u8 charId = unit->pCharacterData->number;
	const u8 bmagRank = GetRankReason(unit);
	
	for( int i=0; i<MAGLIST_UNIT_BASESIZE; i++ )
	{
		u8 magCur = gpUnitBasedBMagList[charId].mags[i];
		if( magCur )
		{
			u8 offset = GetBMagOffset(magCur);
			if( offset < 0x10 )
				AddBMag(&ext->mlist.m[offset]);
		}
	}
	
	if( bmagRank == TH_CLASS_SP )
		AddBMag(
			&ext->mlist.m[GetBMagOffset(gpUnitBasedBMagList[charId].mags[UNIT_SP])]);
	if( bmagRank > TH_CLASS_AP )
		AddBMag(
			&ext->mlist.m[GetBMagOffset(gpUnitBasedBMagList[charId].mags[UNIT_S])]);
	if( bmagRank > TH_CLASS_A )
		AddBMag(
			&ext->mlist.m[GetBMagOffset(gpUnitBasedBMagList[charId].mags[UNIT_AP])]);
	if( bmagRank > TH_CLASS_BP )
		AddBMag(
			&ext->mlist.m[GetBMagOffset(gpUnitBasedBMagList[charId].mags[UNIT_A])]);
	if( bmagRank > TH_CLASS_B )
		AddBMag(
			&ext->mlist.m[GetBMagOffset(gpUnitBasedBMagList[charId].mags[UNIT_BP])]);
	if( bmagRank > TH_CLASS_CP )
		AddBMag(
			&ext->mlist.m[GetBMagOffset(gpUnitBasedBMagList[charId].mags[UNIT_B])]);
	if( bmagRank > TH_CLASS_C )
		AddBMag(
			&ext->mlist.m[GetBMagOffset(gpUnitBasedBMagList[charId].mags[UNIT_CP])]);
	if( bmagRank > TH_CLASS_DP )
		AddBMag(
			&ext->mlist.m[GetBMagOffset(gpUnitBasedBMagList[charId].mags[UNIT_C])]);
	if( bmagRank > TH_CLASS_D )
		AddBMag(
			&ext->mlist.m[GetBMagOffset(gpUnitBasedBMagList[charId].mags[UNIT_DP])]);
	if( bmagRank > TH_CLASS_EP )
		AddBMag(
			&ext->mlist.m[GetBMagOffset(gpUnitBasedBMagList[charId].mags[UNIT_D])]);
	if( bmagRank > TH_CLASS_E )
		AddBMag(
			&ext->mlist.m[GetBMagOffset(gpUnitBasedBMagList[charId].mags[UNIT_EP])]);
	
	AddBMag(
			&ext->mlist.m[GetBMagOffset(gpUnitBasedBMagList[charId].mags[UNIT_EP])]);
}


static void SetWMagBaseChar(Unit* unit){
	UnitExt* ext = GetUnitExtByUnit(unit);
	const u8 charId = unit->pCharacterData->number;
	const u8 WMagRank = GetRankReason(unit);
	
	for( int i=0; i<MAGLIST_UNIT_BASESIZE; i++ )
	{
		u8 magCur = gpUnitBasedWMagList[charId].mags[i];
		if( magCur )
		{
			u8 offset = GetWMagOffset(magCur);
			if( offset < 0x10 )
				AddWMag(&ext->mlist.m[offset]);
		}
	}
	
	if( WMagRank == TH_CLASS_SP )
		AddWMag(
			&ext->mlist.m[GetWMagOffset(gpUnitBasedWMagList[charId].mags[UNIT_SP])]);
	if( WMagRank > TH_CLASS_AP )
		AddWMag(
			&ext->mlist.m[GetWMagOffset(gpUnitBasedWMagList[charId].mags[UNIT_S])]);
	if( WMagRank > TH_CLASS_A )
		AddWMag(
			&ext->mlist.m[GetWMagOffset(gpUnitBasedWMagList[charId].mags[UNIT_AP])]);
	if( WMagRank > TH_CLASS_BP )
		AddWMag(
			&ext->mlist.m[GetWMagOffset(gpUnitBasedWMagList[charId].mags[UNIT_A])]);
	if( WMagRank > TH_CLASS_B )
		AddWMag(
			&ext->mlist.m[GetWMagOffset(gpUnitBasedWMagList[charId].mags[UNIT_BP])]);
	if( WMagRank > TH_CLASS_CP )
		AddWMag(
			&ext->mlist.m[GetWMagOffset(gpUnitBasedWMagList[charId].mags[UNIT_B])]);
	if( WMagRank > TH_CLASS_C )
		AddWMag(
			&ext->mlist.m[GetWMagOffset(gpUnitBasedWMagList[charId].mags[UNIT_CP])]);
	if( WMagRank > TH_CLASS_DP )
		AddWMag(
			&ext->mlist.m[GetWMagOffset(gpUnitBasedWMagList[charId].mags[UNIT_C])]);
	if( WMagRank > TH_CLASS_D )
		AddWMag(
			&ext->mlist.m[GetWMagOffset(gpUnitBasedWMagList[charId].mags[UNIT_DP])]);
	if( WMagRank > TH_CLASS_EP )
		AddWMag(
			&ext->mlist.m[GetWMagOffset(gpUnitBasedWMagList[charId].mags[UNIT_D])]);
	if( WMagRank > TH_CLASS_E )
		AddWMag(
			&ext->mlist.m[GetWMagOffset(gpUnitBasedWMagList[charId].mags[UNIT_EP])]);
	
	AddWMag(
			&ext->mlist.m[GetWMagOffset(gpUnitBasedWMagList[charId].mags[UNIT_EP])]);
}



/*
1. 根据Unit+Class构建List-base
2. 根据Class设定List-dura

*/

int SetUnitMagList(Unit* unit){
	u8 classId = unit->pClassData->number;
	UnitExt* ext = GetUnitExtByUnit(unit);
	
	RemoveMag(ext);
	
	if( NULL == ext )
		return FALSE;
	if( FALSE == IsClassHandleMag(classId) )
		return FALSE;
	
	SetBMagBaseClass(unit);
	SetWMagBaseClass(unit);
	
	SetBMagBaseChar(unit);
	SetWMagBaseChar(unit);
	
	if( IsClassBMagMaster(classId) )
		SetBMagDouble(ext);
	else if( IsClassLearningMag(classId) )
		SetBMagHalve(ext);
	else
		SetBMagNormal(ext);
	
	if( IsClassWMagMaster(classId) )
		SetWMagDouble(ext);
	else if( IsClassLearningMag(classId) )
		SetWMagHalve(ext);
	else
		SetWMagNormal(ext);
	
	ext->mlist.isSet = TRUE;
	return TRUE;
}