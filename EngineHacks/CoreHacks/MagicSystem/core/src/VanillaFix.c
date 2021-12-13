#include "gbafe.h"


int new_CanUnitUseStaff(const Unit* unit, int item){ //! FE8U = (0x080167A4+1)
	if( !( IA_STAFF & GetItemAttributes(item) ) )
		return FALSE;
	
	if( unit->statusIndex & ( UNIT_STATUS_SLEEP | UNIT_STATUS_SILENCED | UNIT_STATUS_BERSERK ) )
		return FALSE;
	else 
		return TRUE;
}
