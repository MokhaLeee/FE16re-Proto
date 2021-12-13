#include "RecoverableRN.h"

/*
*
* Core
*
*/
void InitRN2(void){
	 for(u8 i=0; i<0x20; i++)
		RandNext();
	 
     for(u8 i=0; i<3; i++)
		gpRNState2[i] = gRNState[i];

	return;	
}

u16 NextRN2s(u16 count) {
	for(int i=0; i<3; i++){
		gpRNtmp[i] = gRNState[i];
		gRNState[i] = gpRNState2[i];
	}
	
	for(u16 i=0; i<count; i++)
		RandNext();
	u16 rn = RandNext();
	
	for(int i=0; i<3; i++)
		gRNState[i] = gpRNtmp[i];
	
    return rn;
}


u16 NextRN2(void){
	return NextRN2s(1);
}


u16 NextRN2s_100(u16 count) {
    return NextRN2s(count) * 100 / 0x10000;
}




/*
*
* Mod Save
*
*/

void RN2_SaveSu(void* dest, unsigned size){
	WriteAndVerifySramFast( (const u8*)gpRNState2, dest, 0xC/*size*/);
	return;
}

void RN2_LoadSu(const void* src, unsigned size){
	(*ReadSramFast)(src, gpRNState2, 0xC/*size*/);
	return;
}





