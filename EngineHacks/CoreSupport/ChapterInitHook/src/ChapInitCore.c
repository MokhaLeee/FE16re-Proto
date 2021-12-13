#include "gbafe.h"

typedef u8 (*ChapterInitFunc) (struct Proc*);
extern ChapterInitFunc ChapterInitFuncList[];

void ChapterInitHook(struct Proc* E_MAPMAIN){
	ChapterInitFunc* it= ChapterInitFuncList;
	
	while(*it)
		(*it++)(E_MAPMAIN);
	
	// Vanilla
	MapMain_StartIntroFx(E_MAPMAIN);
	return;
}

