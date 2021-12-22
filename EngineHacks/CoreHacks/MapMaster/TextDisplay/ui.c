#include "gbafe.h"
#include "_gbafe16.h"



static const char ch00[] = "  ---";

static const char ch11[] = "    1";
static const char ch12[] = "  1-2";
static const char ch13[] = "  1-3";
static const char ch14[] = "  1-4";
static const char ch15[] = "  1-5";
static const char ch16[] = "  1-6";
static const char ch17[] = "  1-7";
static const char ch18[] = "  1-8";
static const char ch19[] = "  1-9";

static const char ch22[] = "    2";
static const char ch23[] = "  2-3";
static const char ch24[] = "  2-4";
static const char ch25[] = "  2-5";
static const char ch26[] = "  2-6";
static const char ch27[] = "  2-7";
static const char ch28[] = "  2-8";
static const char ch29[] = "  2-9";

static const char ch33[] = "    3";
static const char ch34[] = "  3-4";
static const char ch35[] = "  3-5";
static const char ch36[] = "  3-6";
static const char ch37[] = "  3-7";
static const char ch38[] = "  3-8";
static const char ch39[] = "  3-9";

static const char ch44[] = "    4";
static const char ch45[] = "  4-5";
static const char ch46[] = "  4-6";
static const char ch47[] = "  4-7";
static const char ch48[] = "  4-8";
static const char ch49[] = "  4-9";

static const char ch55[] = "    5";
static const char ch56[] = "  5-6";
static const char ch57[] = "  5-7";
static const char ch58[] = "  5-8";
static const char ch59[] = "  5-9";

static const char ch66[] = "    6";
static const char ch67[] = "  6-7";
static const char ch68[] = "  6-8";
static const char ch69[] = "  6-9";

static const char ch77[] = "    7";
static const char ch78[] = "  7-8";
static const char ch79[] = "  7-9";

static const char ch88[] = "    8";
static const char ch89[] = "  8-9";

static const char ch99[] = "    9";

static const char* chTable[] = {
	ch00, ch00, ch00, ch00, ch00,
	ch00, ch00, ch00, ch00, ch00,
	
	ch00, ch11, ch12, ch13, ch14,
	ch15, ch16, ch17, ch18, ch19,
	
	ch00, ch00, ch22, ch23, ch24,
	ch25, ch26, ch27, ch28, ch29,
	
	ch00, ch00, ch00, ch33, ch34,
	ch35, ch36, ch37, ch38, ch39,
	
	ch00, ch00, ch00, ch00, ch44,
	ch45, ch46, ch47, ch48, ch49,
	
	ch00, ch00, ch00, ch00, ch00,
	ch55, ch56, ch57, ch58, ch59,
	
	ch00, ch00, ch00, ch00, ch00,
	ch00, ch66, ch67, ch68, ch69,
	
	ch00, ch00, ch00, ch00, ch00,
	ch00, ch00, ch77, ch78, ch79,
	
	ch00, ch00, ch00, ch00, ch00,
	ch00, ch00, ch00, ch88, ch89,
	
	ch00, ch00, ch00, ch00, ch00,
	ch00, ch00, ch00, ch00, ch99,
};

static s8 RngMaxFillter(u16 item){
	s8 rng = GetItemMaxRange(item);
	
	if( rng > 0 && rng < 10 )
		return rng;
	else
		return 0;
}

static s8 RngMinFillter(u16 item){
	s8 rng = GetItemMinRange(item);
	
	if( rng > 0 && rng < 10 )
		return rng;
	else
		return 0;
}

// static char* buffer0202A6AC = (char*)0x0202A6AC;
// extern void String_StripSomeEndCharacters(void*);

char* _GetItemDisplayRangeString(u16 item) {

	// char* src;
	s8 rngMax, rngMin, index;
	
	rngMax = RngMaxFillter(item);
	rngMin = RngMinFillter(item);
	
	if( rngMax < rngMin )
		index = 0;
	else
		index = rngMin*10 + rngMax;
	
	return chTable[index];
	
	//src = (char*)( 0x80000000 | (u32)(chTable[index]) );
	//HuffmanTextDecomp(src, buffer0202A6AC);
	//String_StripSomeEndCharacters(buffer0202A6AC);
	//return buffer0202A6AC;
}