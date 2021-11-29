	.cpu arm7tdmi
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 4	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"MagSystemCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	GetBMagOffset
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetBMagOffset, %function
GetBMagOffset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/GetFuncs/MagSystemCore.c:18: 		if(   gpBMagList[i].index == ITEM_ID(item) )
	ldr	r3, .L6	@ tmp123,
	ldr	r2, [r3]	@ gpBMagList.0_1, gpBMagList
@ MagicSystem/GetFuncs/MagSystemCore.c:17: 	for(i=0; i<0xF; i++)
	movs	r3, #0	@ i,
@ MagicSystem/GetFuncs/MagSystemCore.c:18: 		if(   gpBMagList[i].index == ITEM_ID(item) )
	lsls	r0, r0, #24	@ tmp128, tmp132,
	lsrs	r0, r0, #24	@ tmp128, tmp128,
.L4:
@ MagicSystem/GetFuncs/MagSystemCore.c:18: 		if(   gpBMagList[i].index == ITEM_ID(item) )
	lsls	r1, r3, #3	@ tmp124, i,
	ldrb	r1, [r2, r1]	@ MEM[(unsigned char *)gpBMagList.0_1 + _8 * 1], MEM[(unsigned char *)gpBMagList.0_1 + _8 * 1]
@ MagicSystem/GetFuncs/MagSystemCore.c:18: 		if(   gpBMagList[i].index == ITEM_ID(item) )
	cmp	r1, r0	@ MEM[(unsigned char *)gpBMagList.0_1 + _8 * 1], tmp128
	bne	.L2		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:19: 			return i;
	lsls	r0, r3, #24	@ <retval>, i,
	lsrs	r0, r0, #24	@ <retval>, <retval>,
.L3:
@ MagicSystem/GetFuncs/MagSystemCore.c:21: }
	@ sp needed	@
	bx	lr
.L2:
@ MagicSystem/GetFuncs/MagSystemCore.c:17: 	for(i=0; i<0xF; i++)
	adds	r3, r3, #1	@ i,
@ MagicSystem/GetFuncs/MagSystemCore.c:17: 	for(i=0; i<0xF; i++)
	cmp	r3, #15	@ i,
	bne	.L4		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:20: 	return 0x10;
	movs	r0, #16	@ <retval>,
	b	.L3		@
.L7:
	.align	2
.L6:
	.word	gpBMagList
	.size	GetBMagOffset, .-GetBMagOffset
	.align	1
	.global	GetWMagOffset
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetWMagOffset, %function
GetWMagOffset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/GetFuncs/MagSystemCore.c:27: 		if(   gpWMagList[i].index == ITEM_ID(item) )
	ldr	r3, .L13	@ tmp123,
	ldr	r2, [r3]	@ gpWMagList.2_1, gpWMagList
@ MagicSystem/GetFuncs/MagSystemCore.c:26: 	for(i=0; i<0xF; i++)
	movs	r3, #0	@ i,
@ MagicSystem/GetFuncs/MagSystemCore.c:27: 		if(   gpWMagList[i].index == ITEM_ID(item) )
	lsls	r0, r0, #24	@ tmp128, tmp132,
	lsrs	r0, r0, #24	@ tmp128, tmp128,
.L11:
@ MagicSystem/GetFuncs/MagSystemCore.c:27: 		if(   gpWMagList[i].index == ITEM_ID(item) )
	lsls	r1, r3, #3	@ tmp124, i,
	ldrb	r1, [r2, r1]	@ MEM[(unsigned char *)gpWMagList.2_1 + _8 * 1], MEM[(unsigned char *)gpWMagList.2_1 + _8 * 1]
@ MagicSystem/GetFuncs/MagSystemCore.c:27: 		if(   gpWMagList[i].index == ITEM_ID(item) )
	cmp	r1, r0	@ MEM[(unsigned char *)gpWMagList.2_1 + _8 * 1], tmp128
	bne	.L9		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:28: 			return i;
	lsls	r0, r3, #24	@ <retval>, i,
	lsrs	r0, r0, #24	@ <retval>, <retval>,
.L10:
@ MagicSystem/GetFuncs/MagSystemCore.c:30: }
	@ sp needed	@
	bx	lr
.L9:
@ MagicSystem/GetFuncs/MagSystemCore.c:26: 	for(i=0; i<0xF; i++)
	adds	r3, r3, #1	@ i,
@ MagicSystem/GetFuncs/MagSystemCore.c:26: 	for(i=0; i<0xF; i++)
	cmp	r3, #15	@ i,
	bne	.L11		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:29: 	return 0x10;
	movs	r0, #16	@ <retval>,
	b	.L10		@
.L14:
	.align	2
.L13:
	.word	gpWMagList
	.size	GetWMagOffset, .-GetWMagOffset
	.align	1
	.global	GetBMagUse
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetBMagUse, %function
GetBMagUse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/GetFuncs/MagSystemCore.c:33: u8 GetBMagUse(UnitExt* ext, u8 offset){
	movs	r3, r0	@ ext, tmp127
@ MagicSystem/GetFuncs/MagSystemCore.c:37: 		return 0xFF;
	movs	r0, #255	@ <retval>,
@ MagicSystem/GetFuncs/MagSystemCore.c:34: 	if( offset < 0x10 )
	cmp	r1, #15	@ offset,
	bhi	.L16		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:35: 		return GET_B_MAG( ext->mlist.m[offset] );
	adds	r3, r3, r1	@ tmp120, ext, offset
	ldrb	r0, [r3, #17]	@ tmp122, *ext_6(D)
	movs	r3, #15	@ tmp124,
	ands	r0, r3	@ <retval>, tmp124
.L16:
@ MagicSystem/GetFuncs/MagSystemCore.c:38: }
	@ sp needed	@
	bx	lr
	.size	GetBMagUse, .-GetBMagUse
	.align	1
	.global	GetWMagUse
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetWMagUse, %function
GetWMagUse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/GetFuncs/MagSystemCore.c:41: u8 GetWMagUse(UnitExt* ext, u8 offset){
	movs	r3, r0	@ ext, tmp125
@ MagicSystem/GetFuncs/MagSystemCore.c:45: 		return 0xFF;
	movs	r0, #255	@ <retval>,
@ MagicSystem/GetFuncs/MagSystemCore.c:42: 	if( offset < 0x10 )
	cmp	r1, #15	@ offset,
	bhi	.L19		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:43: 		return GET_W_MAG( ext->mlist.m[offset] );
	adds	r3, r3, r1	@ tmp120, ext, offset
	ldrb	r0, [r3, #17]	@ tmp121, *ext_6(D)
	lsrs	r0, r0, #4	@ <retval>, tmp121,
.L19:
@ MagicSystem/GetFuncs/MagSystemCore.c:46: }
	@ sp needed	@
	bx	lr
	.size	GetWMagUse, .-GetWMagUse
	.align	1
	.global	SetBMagItem
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetBMagItem, %function
SetBMagItem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/GetFuncs/MagSystemCore.c:49: int SetBMagItem(UnitExt* ext, u16 item){
	movs	r5, r0	@ ext, tmp145
@ MagicSystem/GetFuncs/MagSystemCore.c:50: 	u8 loc = GetBMagOffset(item);
	movs	r0, r1	@, item
@ MagicSystem/GetFuncs/MagSystemCore.c:49: int SetBMagItem(UnitExt* ext, u16 item){
	movs	r4, r1	@ item, tmp146
@ MagicSystem/GetFuncs/MagSystemCore.c:50: 	u8 loc = GetBMagOffset(item);
	bl	GetBMagOffset		@
	movs	r3, r0	@ tmp126, tmp147
@ MagicSystem/GetFuncs/MagSystemCore.c:53: 		return 0;
	movs	r0, #0	@ <retval>,
@ MagicSystem/GetFuncs/MagSystemCore.c:52: 	if( loc > 0x10 )
	cmp	r3, #16	@ tmp126,
	bhi	.L21		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:6: 	*at = (*at&0xF0) | (use&0xF);
	movs	r2, #15	@ tmp135,
@ MagicSystem/GetFuncs/MagSystemCore.c:6: 	*at = (*at&0xF0) | (use&0xF);
	adds	r5, r5, r3	@ tmp130, ext, tmp126
@ MagicSystem/GetFuncs/MagSystemCore.c:6: 	*at = (*at&0xF0) | (use&0xF);
	ldrb	r3, [r5, #17]	@ tmp133, MEM <struct UnitExt> [(u8 *)ext_10(D)]
@ MagicSystem/GetFuncs/MagSystemCore.c:55: 	SetBMag(
	lsrs	r4, r4, #8	@ tmp136, item,
@ MagicSystem/GetFuncs/MagSystemCore.c:6: 	*at = (*at&0xF0) | (use&0xF);
	bics	r3, r2	@ tmp134, tmp135
@ MagicSystem/GetFuncs/MagSystemCore.c:6: 	*at = (*at&0xF0) | (use&0xF);
	ands	r4, r2	@ tmp138, tmp135
@ MagicSystem/GetFuncs/MagSystemCore.c:6: 	*at = (*at&0xF0) | (use&0xF);
	orrs	r3, r4	@ tmp142, tmp138
@ MagicSystem/GetFuncs/MagSystemCore.c:6: 	*at = (*at&0xF0) | (use&0xF);
	strb	r3, [r5, #17]	@ tmp142, MEM <struct UnitExt> [(u8 *)ext_10(D)].mlist.m[_1]
@ MagicSystem/GetFuncs/MagSystemCore.c:58: 	return 1;
	adds	r0, r0, #1	@ <retval>,
.L21:
@ MagicSystem/GetFuncs/MagSystemCore.c:59: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.size	SetBMagItem, .-SetBMagItem
	.align	1
	.global	SetWMagItem
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetWMagItem, %function
SetWMagItem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/GetFuncs/MagSystemCore.c:61: int SetWMagItem(UnitExt* ext, u16 item){
	movs	r5, r0	@ ext, tmp146
@ MagicSystem/GetFuncs/MagSystemCore.c:62: 	u8 loc = GetWMagOffset(item);
	movs	r0, r1	@, item
@ MagicSystem/GetFuncs/MagSystemCore.c:61: int SetWMagItem(UnitExt* ext, u16 item){
	movs	r4, r1	@ item, tmp147
@ MagicSystem/GetFuncs/MagSystemCore.c:62: 	u8 loc = GetWMagOffset(item);
	bl	GetWMagOffset		@
	movs	r3, r0	@ tmp127, tmp148
@ MagicSystem/GetFuncs/MagSystemCore.c:65: 		return 0;
	movs	r0, #0	@ <retval>,
@ MagicSystem/GetFuncs/MagSystemCore.c:64: 	if( loc > 0x10 )
	cmp	r3, #16	@ tmp127,
	bhi	.L24		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	movs	r2, #15	@ tmp136,
@ MagicSystem/GetFuncs/MagSystemCore.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	adds	r5, r5, r3	@ tmp131, ext, tmp127
@ MagicSystem/GetFuncs/MagSystemCore.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	ldrb	r3, [r5, #17]	@ tmp134, MEM <struct UnitExt> [(u8 *)ext_10(D)]
@ MagicSystem/GetFuncs/MagSystemCore.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	lsrs	r4, r4, #8	@ tmp138, item,
@ MagicSystem/GetFuncs/MagSystemCore.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	ands	r3, r2	@ tmp135, tmp136
@ MagicSystem/GetFuncs/MagSystemCore.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	lsls	r4, r4, #4	@ tmp140, tmp138,
@ MagicSystem/GetFuncs/MagSystemCore.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	orrs	r3, r4	@ tmp143, tmp140
@ MagicSystem/GetFuncs/MagSystemCore.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	strb	r3, [r5, #17]	@ tmp143, MEM <struct UnitExt> [(u8 *)ext_10(D)].mlist.m[_1]
@ MagicSystem/GetFuncs/MagSystemCore.c:70: 	return 1;
	adds	r0, r0, #1	@ <retval>,
.L24:
@ MagicSystem/GetFuncs/MagSystemCore.c:71: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.size	SetWMagItem, .-SetWMagItem
	.align	1
	.global	IsItemMagic
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	IsItemMagic, %function
IsItemMagic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MagicSystem/GetFuncs/MagSystemCore.c:74: 	u32 attr = GetItemAttributes(item);
	ldr	r3, .L28	@ tmp124,
@ MagicSystem/GetFuncs/MagSystemCore.c:80: }
	@ sp needed	@
@ MagicSystem/GetFuncs/MagSystemCore.c:74: 	u32 attr = GetItemAttributes(item);
	bl	.L30		@
	movs	r3, r0	@ attr, tmp139
@ MagicSystem/GetFuncs/MagSystemCore.c:76: 	int isWpnMag = (attr&IA_WEAPON) && (attr&IA_MAGIC);
	movs	r0, #3	@ tmp127,
	ands	r0, r3	@ tmp126, attr
	subs	r0, r0, #3	@ tmp130,
	rsbs	r2, r0, #0	@ tmp131, tmp130
	adcs	r0, r0, r2	@ isWpnMag, tmp130, tmp131
@ MagicSystem/GetFuncs/MagSystemCore.c:77: 	int isStaff = attr & IA_STAFF;
	movs	r2, #4	@ tmp133,
	ands	r3, r2	@ isStaff, tmp133
@ MagicSystem/GetFuncs/MagSystemCore.c:79: 	return isWpnMag || isStaff;
	orrs	r0, r3	@ tmp134, isStaff
	subs	r3, r0, #1	@ tmp137, tmp134
	sbcs	r0, r0, r3	@ tmp136, tmp134, tmp137
@ MagicSystem/GetFuncs/MagSystemCore.c:80: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L29:
	.align	2
.L28:
	.word	GetItemAttributes
	.size	IsItemMagic, .-IsItemMagic
	.align	1
	.global	TestWpn
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	TestWpn, %function
TestWpn:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ MagicSystem/GetFuncs/MagSystemCore.c:86: 	u32 attr = GetItemAttributes(item);
	ldr	r3, .L35	@ tmp119,
@ MagicSystem/GetFuncs/MagSystemCore.c:85: int TestWpn(u16 item){
	push	{r4, lr}	@
@ MagicSystem/GetFuncs/MagSystemCore.c:86: 	u32 attr = GetItemAttributes(item);
	bl	.L30		@
@ MagicSystem/GetFuncs/MagSystemCore.c:88: 	if( !(IA_WEAPON & attr) )
	movs	r2, #1	@ tmp121,
@ MagicSystem/GetFuncs/MagSystemCore.c:86: 	u32 attr = GetItemAttributes(item);
	movs	r3, r0	@ attr, tmp130
@ MagicSystem/GetFuncs/MagSystemCore.c:88: 	if( !(IA_WEAPON & attr) )
	ands	r0, r2	@ tmp120, tmp121
@ MagicSystem/GetFuncs/MagSystemCore.c:88: 	if( !(IA_WEAPON & attr) )
	tst	r3, r2	@ attr, tmp121
	beq	.L31		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:90: 	else if( attr & IA_MAGIC )
	adds	r2, r2, r2	@ tmp123, tmp123,
	ands	r3, r2	@ tmp122, tmp123
@ MagicSystem/GetFuncs/MagSystemCore.c:93: 		return 2;
	rsbs	r2, r3, #0	@ tmp128, tmp122
	adcs	r3, r3, r2	@ tmp127, tmp122, tmp128
	adds	r0, r3, #1	@ <retval>, tmp127,
.L31:
@ MagicSystem/GetFuncs/MagSystemCore.c:94: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L36:
	.align	2
.L35:
	.word	GetItemAttributes
	.size	TestWpn, .-TestWpn
	.align	1
	.global	isUnitMagSet
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	isUnitMagSet, %function
isUnitMagSet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/GetFuncs/MagSystemCore.c:98: 	return ext->mlist.stat && MAG_IS_SET;
	ldrb	r0, [r0, #16]	@ tmp119,
@ MagicSystem/GetFuncs/MagSystemCore.c:99: }
	@ sp needed	@
@ MagicSystem/GetFuncs/MagSystemCore.c:98: 	return ext->mlist.stat && MAG_IS_SET;
	subs	r3, r0, #1	@ tmp121, tmp119
	sbcs	r0, r0, r3	@ tmp120, tmp119, tmp121
@ MagicSystem/GetFuncs/MagSystemCore.c:99: }
	bx	lr
	.size	isUnitMagSet, .-isUnitMagSet
	.align	1
	.global	SetUnitMag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetUnitMag, %function
SetUnitMag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/GetFuncs/MagSystemCore.c:104: 	ext->mlist.stat = ext->mlist.stat | MAG_IS_SET;
	movs	r3, #1	@ tmp125,
	ldrb	r2, [r0, #16]	@ tmp123,
	orrs	r3, r2	@ tmp124, tmp123
	strb	r3, [r0, #16]	@ tmp124, ext_6(D)->mlist.stat
	movs	r3, r0	@ ivtmp.69, ext
@ MagicSystem/GetFuncs/MagSystemCore.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	movs	r2, #85	@ tmp127,
	adds	r3, r3, #17	@ ivtmp.69,
	adds	r0, r0, #32	@ _18,
.L39:
@ MagicSystem/GetFuncs/MagSystemCore.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	strb	r2, [r3]	@ tmp127, MEM[(u8 *)_16]
@ MagicSystem/GetFuncs/MagSystemCore.c:105: 	for(int i=0; i<0xF; i++)
	adds	r3, r3, #1	@ ivtmp.69,
	cmp	r3, r0	@ ivtmp.69, _18
	bne	.L39		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:112: }
	movs	r0, #1	@,
	@ sp needed	@
	bx	lr
	.size	SetUnitMag, .-SetUnitMag
	.align	1
	.global	isMagListEmpty
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	isMagListEmpty, %function
isMagListEmpty:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/GetFuncs/MagSystemCore.c:119: 	if( isUnitMagSet(ext) )
	ldrb	r3, [r0, #16]	@ tmp127,
@ MagicSystem/GetFuncs/MagSystemCore.c:116: int isMagListEmpty(UnitExt* ext){
	movs	r4, r0	@ ext, tmp141
@ MagicSystem/GetFuncs/MagSystemCore.c:119: 	if( isUnitMagSet(ext) )
	cmp	r3, #0	@ tmp127,
	beq	.L42		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:120: 		SetUnitMag(ext);
	bl	SetUnitMag		@
.L42:
	movs	r2, r4	@ ivtmp.79, ext
@ MagicSystem/GetFuncs/MagSystemCore.c:117: 	int cnt = 0;
	movs	r0, #0	@ cnt,
@ MagicSystem/GetFuncs/MagSystemCore.c:122: 		cnt += (0 == GET_B_MAG(ext->mlist.m[i]) );
	movs	r1, #15	@ tmp131,
	adds	r2, r2, #17	@ ivtmp.79,
	adds	r4, r4, #32	@ _27,
.L43:
@ MagicSystem/GetFuncs/MagSystemCore.c:122: 		cnt += (0 == GET_B_MAG(ext->mlist.m[i]) );
	ldrb	r3, [r2]	@ MEM[(unsigned char *)_29], MEM[(unsigned char *)_29]
	ands	r3, r1	@ tmp133, tmp131
	rsbs	r5, r3, #0	@ tmp136, tmp133
	adcs	r3, r3, r5	@ tmp135, tmp133, tmp136
@ MagicSystem/GetFuncs/MagSystemCore.c:121: 	for(int i=0; i<0xF; i++)
	adds	r2, r2, #1	@ ivtmp.79,
@ MagicSystem/GetFuncs/MagSystemCore.c:122: 		cnt += (0 == GET_B_MAG(ext->mlist.m[i]) );
	adds	r0, r0, r3	@ cnt, cnt, tmp135
@ MagicSystem/GetFuncs/MagSystemCore.c:121: 	for(int i=0; i<0xF; i++)
	cmp	r4, r2	@ _27, ivtmp.79
	bne	.L43		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:124: 	return ( 0==cnt );
	rsbs	r3, r0, #0	@ tmp140, cnt
	adcs	r0, r0, r3	@ tmp139, cnt, tmp140
@ MagicSystem/GetFuncs/MagSystemCore.c:125: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.size	isMagListEmpty, .-isMagListEmpty
	.align	1
	.global	ResetUnitMagic
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ResetUnitMagic, %function
ResetUnitMagic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ MagicSystem/GetFuncs/MagSystemCore.c:129: 	UnitExt* cur = gpUnitExtData;
	ldr	r3, .L53	@ tmp124,
	ldr	r1, [r3]	@ cur, gpUnitExtData
	movs	r2, #135	@ tmp135,
	movs	r3, r1	@ ivtmp.99, cur
@ MagicSystem/GetFuncs/MagSystemCore.c:128: void ResetUnitMagic(void){
	push	{r4, r5, lr}	@
@ MagicSystem/GetFuncs/MagSystemCore.c:134: 			cur->mlist.m[j] = 5;
	movs	r4, #5	@ tmp125,
@ MagicSystem/GetFuncs/MagSystemCore.c:135: 		(cur++)->mlist.stat &= ~MAG_IS_SET;
	movs	r5, #1	@ tmp131,
	lsls	r2, r2, #4	@ tmp135, tmp135,
	adds	r3, r3, #16	@ ivtmp.99,
	adds	r1, r1, r2	@ _33, cur, tmp135
.L49:
@ MagicSystem/GetFuncs/MagSystemCore.c:133: 		for(int j=0; j<0xF; j++)
	movs	r0, r3	@ tmp127, ivtmp.99
	adds	r2, r3, #1	@ ivtmp.89, ivtmp.99,
	adds	r0, r0, #16	@ tmp127,
.L50:
@ MagicSystem/GetFuncs/MagSystemCore.c:134: 			cur->mlist.m[j] = 5;
	strb	r4, [r2]	@ tmp125, MEM[(unsigned char *)_21]
@ MagicSystem/GetFuncs/MagSystemCore.c:133: 		for(int j=0; j<0xF; j++)
	adds	r2, r2, #1	@ ivtmp.89,
	cmp	r2, r0	@ ivtmp.89, tmp127
	bne	.L50		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:135: 		(cur++)->mlist.stat &= ~MAG_IS_SET;
	ldrb	r2, [r3]	@ MEM[(unsigned char *)_30], MEM[(unsigned char *)_30]
	bics	r2, r5	@ tmp130, tmp131
	strb	r2, [r3]	@ tmp130, MEM[(unsigned char *)_30]
@ MagicSystem/GetFuncs/MagSystemCore.c:131: 	for(int i=0; i<UNIT_EXT_CNT; i++)
	adds	r3, r3, #32	@ ivtmp.99,
	cmp	r3, r1	@ ivtmp.99, _33
	bne	.L49		@,
@ MagicSystem/GetFuncs/MagSystemCore.c:137: }
	@ sp needed	@
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L54:
	.align	2
.L53:
	.word	gpUnitExtData
	.size	ResetUnitMagic, .-ResetUnitMagic
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L30:
	bx	r3
