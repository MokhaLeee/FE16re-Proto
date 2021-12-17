#include "gbafe.h"
#include "StrMagCha.h"
#include "ModularLu.h"


void MLUPromStatGains_MagCha(struct Unit* unit, u8 classId){
	u8 MagCap = gpClassMagicTable[classId].Cap;
	u8 MagBon = gpClassMagicTable[classId].PromoBonus;
	u8 MagCur = *GetMagAt(unit);
	
	u8 ChaCap = gpClassCharmTable[classId].Cap;
	u8 ChaBon = gpClassCharmTable[classId].PromoBonus;
	u8 ChaCur = *GetChaAt(unit);
	
	// Mag
	if( MagCap > MagBon+MagCur )
		MagCur += MagBon;
	else
		MagCur = MagCap;
	*GetMagAt(unit) = MagCur;
	
	// Cha
	if( ChaCap > ChaBon+ChaCur )
		ChaCur += ChaBon;
	else
		ChaCur = ChaCap;
	*GetChaAt(unit) = ChaCur;
	
}
