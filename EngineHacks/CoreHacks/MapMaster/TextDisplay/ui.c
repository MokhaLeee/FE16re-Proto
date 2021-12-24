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




char* _GetItemDisplayRangeString(u16 item) {
	int len;
	s8 rngMax, rngMin;
	char ch[6];
	
	if( !item )
		return strcpy_const("nope\0");

	
	rngMax = GetItemMaxRange(item);
	rngMin = GetItemMinRange(item);
	
	// Make string
	len=0;
	
	// min range
	if( rngMin > 10 ){
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
	if( rngMax > 10 ){
		s8 num = rngMax/10;
		ch[len++] = '0' + num;
		ch[len++] = '0' + rngMax - num*10;
	}
	else
		ch[len++] = '0' + rngMax;
	
	return strcpy_var(ch, len);
}

#undef STR_LEN
