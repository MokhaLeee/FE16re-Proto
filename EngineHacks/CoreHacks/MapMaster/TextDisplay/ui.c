#include "gbafe.h"
#include "_gbafe16.h"

#define STR_LEN 5

static char* strcpy_const(char ch[]){
	int i;
	
	for( i=0; ch[i] != '\0'; i++ )
		gCurrentTextString[i] = ch[i];
	
	gCurrentTextString[i] = '\0';
	return gCurrentTextString;
}

static char* strcpy_var(char ch[], int len){
	
	if( len > STR_LEN )
		return strcpy_const("nope\0");
	
	// make some space
	for( int i=0; i < STR_LEN - len; i++ )
		gCurrentTextString[i] = ' ';
	
	// strcpy
	for( int i=0; i < len; i++ )
		gCurrentTextString[STR_LEN - len + i] = ch[i];
	
	// On End
	gCurrentTextString[STR_LEN] = '\0';
	return gCurrentTextString;
}


static char* GetStringCore(s8 rngMin, s8 rngMax){
	
	char ch[6];
	int len = 0;
	
	// min range
	if( rngMin > 9 ){
		s8 num = rngMax/10;
		ch[len++] = '0' + num;
		ch[len++] = '0' + rngMax - num*10;
	}
	else
		ch[len++] = '0' + rngMin;
	
	// If min=max then just draw one number
	if( rngMin == rngMax )
		return strcpy_var(ch, len);
	
	ch[len++] = '-';
	
	// max range
	if( rngMax > 9 ){
		s8 num = rngMax/10;
		ch[len++] = '0' + num;
		ch[len++] = '0' + rngMax - num*10;
	}
	else
		ch[len++] = '0' + rngMax;
	
	return strcpy_var(ch, len);
}


char* _GetItemDisplayRangeString(u16 item) {

	s8 rngMax, rngMin;
	
	if( !item )
		return strcpy_const("nope\0");

	// W.I.P.
	rngMax = GetItemMaxRange(item);
	rngMin = GetItemMinRange(item);
	
	return GetStringCore(rngMin, rngMax);
}


char* new_UnitRangeString(Unit* unit) {

	u16 item;
	s8 rngMax, rngMin;
	UnitExt* ext;
	
	if( NULL == unit )
		unit = gStatScreen.unit;
	
	if( NULL == unit )
		return strcpy_const("nope\0");
	
	ext = GetUnitExtByUnit(unit);
	
	if( NULL != ext && 0 != ext->WpnEqp )
		item = ext->WpnEqp;
	else
		item = GetUnitEquippedWeapon(unit);
	
	if( !item )
		return strcpy_const("nope\0");

	// W.I.P.
	rngMax = GetRngMax(item, unit);
	rngMin = GetRngMin(item, unit);
	
	return GetStringCore(rngMin, rngMax);
}

#undef STR_LEN
