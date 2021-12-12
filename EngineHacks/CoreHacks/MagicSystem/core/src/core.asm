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
	.file	"core.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetMagOffset, %function
GetMagOffset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/core/src/core.c:16: 	for(i=0; i<0xF; i++)
	movs	r3, #0	@ i,
@ MagicSystem/core/src/core.c:17: 		if(   list[i].index == ITEM_ID(item) )
	lsls	r0, r0, #24	@ tmp127, tmp131,
	lsrs	r0, r0, #24	@ tmp127, tmp127,
.L4:
@ MagicSystem/core/src/core.c:17: 		if(   list[i].index == ITEM_ID(item) )
	lsls	r2, r3, #3	@ tmp123, i,
	ldrb	r2, [r1, r2]	@ MEM[(unsigned char *)list_11(D) + _7 * 1], MEM[(unsigned char *)list_11(D) + _7 * 1]
@ MagicSystem/core/src/core.c:17: 		if(   list[i].index == ITEM_ID(item) )
	cmp	r2, r0	@ MEM[(unsigned char *)list_11(D) + _7 * 1], tmp127
	bne	.L2		@,
@ MagicSystem/core/src/core.c:18: 			return i;
	lsls	r0, r3, #24	@ <retval>, i,
	lsrs	r0, r0, #24	@ <retval>, <retval>,
.L3:
@ MagicSystem/core/src/core.c:20: }
	@ sp needed	@
	bx	lr
.L2:
@ MagicSystem/core/src/core.c:16: 	for(i=0; i<0xF; i++)
	adds	r3, r3, #1	@ i,
@ MagicSystem/core/src/core.c:16: 	for(i=0; i<0xF; i++)
	cmp	r3, #15	@ i,
	bne	.L4		@,
@ MagicSystem/core/src/core.c:19: 	return 0x10;
	movs	r0, #16	@ <retval>,
	b	.L3		@
	.size	GetMagOffset, .-GetMagOffset
	.align	1
	.global	GetBMagOffset
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetBMagOffset, %function
GetBMagOffset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MagicSystem/core/src/core.c:22: u8 GetBMagOffset(u16 item){ return GetMagOffset(item,gpBMagList); }
	ldr	r3, .L7	@ tmp116,
@ MagicSystem/core/src/core.c:22: u8 GetBMagOffset(u16 item){ return GetMagOffset(item,gpBMagList); }
	@ sp needed	@
@ MagicSystem/core/src/core.c:22: u8 GetBMagOffset(u16 item){ return GetMagOffset(item,gpBMagList); }
	ldr	r1, [r3]	@, gpBMagList
	bl	GetMagOffset		@
@ MagicSystem/core/src/core.c:22: u8 GetBMagOffset(u16 item){ return GetMagOffset(item,gpBMagList); }
	pop	{r4}
	pop	{r1}
	bx	r1
.L8:
	.align	2
.L7:
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
	push	{r4, lr}	@
@ MagicSystem/core/src/core.c:23: u8 GetWMagOffset(u16 item){ return GetMagOffset(item,gpWMagList); }
	ldr	r3, .L10	@ tmp116,
@ MagicSystem/core/src/core.c:23: u8 GetWMagOffset(u16 item){ return GetMagOffset(item,gpWMagList); }
	@ sp needed	@
@ MagicSystem/core/src/core.c:23: u8 GetWMagOffset(u16 item){ return GetMagOffset(item,gpWMagList); }
	ldr	r1, [r3]	@, gpWMagList
	bl	GetMagOffset		@
@ MagicSystem/core/src/core.c:23: u8 GetWMagOffset(u16 item){ return GetMagOffset(item,gpWMagList); }
	pop	{r4}
	pop	{r1}
	bx	r1
.L11:
	.align	2
.L10:
	.word	gpWMagList
	.size	GetWMagOffset, .-GetWMagOffset
	.align	1
	.global	GetBMagIndex
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetBMagIndex, %function
GetBMagIndex:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/core/src/core.c:32: u8 GetBMagIndex(u8 loc){ return GetMagIndex(loc,gpBMagList); }
	movs	r3, r0	@ loc, tmp125
@ MagicSystem/core/src/core.c:28: 		return 0;
	movs	r0, #0	@ <retval>,
@ MagicSystem/core/src/core.c:27: 	if( loc > MAGIC_LIST_SIZE )
	cmp	r3, #15	@ loc,
	bhi	.L13		@,
@ MagicSystem/core/src/core.c:29: 	return list[loc].index;
	ldr	r2, .L15	@ tmp122,
	ldr	r2, [r2]	@ gpBMagList, gpBMagList
	lsls	r3, r3, #3	@ tmp123, loc,
	ldrb	r0, [r3, r2]	@ <retval>, *_7
.L13:
@ MagicSystem/core/src/core.c:32: u8 GetBMagIndex(u8 loc){ return GetMagIndex(loc,gpBMagList); }
	@ sp needed	@
	bx	lr
.L16:
	.align	2
.L15:
	.word	gpBMagList
	.size	GetBMagIndex, .-GetBMagIndex
	.align	1
	.global	GetWMagIndex
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetWMagIndex, %function
GetWMagIndex:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/core/src/core.c:33: u8 GetWMagIndex(u8 loc){ return GetMagIndex(loc,gpWMagList); }
	movs	r3, r0	@ loc, tmp125
@ MagicSystem/core/src/core.c:28: 		return 0;
	movs	r0, #0	@ <retval>,
@ MagicSystem/core/src/core.c:27: 	if( loc > MAGIC_LIST_SIZE )
	cmp	r3, #15	@ loc,
	bhi	.L18		@,
@ MagicSystem/core/src/core.c:29: 	return list[loc].index;
	ldr	r2, .L20	@ tmp122,
	ldr	r2, [r2]	@ gpWMagList, gpWMagList
	lsls	r3, r3, #3	@ tmp123, loc,
	ldrb	r0, [r3, r2]	@ <retval>, *_7
.L18:
@ MagicSystem/core/src/core.c:33: u8 GetWMagIndex(u8 loc){ return GetMagIndex(loc,gpWMagList); }
	@ sp needed	@
	bx	lr
.L21:
	.align	2
.L20:
	.word	gpWMagList
	.size	GetWMagIndex, .-GetWMagIndex
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
@ MagicSystem/core/src/core.c:49: u8 GetBMagUse(UnitExt* ext, u8 offset){ return GetMagUse(ext,offset,EBMAG); }
	movs	r3, r0	@ ext, tmp127
@ MagicSystem/core/src/core.c:47: 	return 0xFF;
	movs	r0, #255	@ <retval>,
@ MagicSystem/core/src/core.c:39: 	if( offset < 0x10 )
	cmp	r1, #15	@ offset,
	bhi	.L23		@,
@ MagicSystem/core/src/core.c:42: 			return GET_B_MAG( ext->mlist.m[offset] );
	adds	r3, r3, r1	@ tmp120, ext, offset
	ldrb	r0, [r3, #17]	@ tmp122, *ext_2(D)
	movs	r3, #15	@ tmp124,
	ands	r0, r3	@ <retval>, tmp124
.L23:
@ MagicSystem/core/src/core.c:49: u8 GetBMagUse(UnitExt* ext, u8 offset){ return GetMagUse(ext,offset,EBMAG); }
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
@ MagicSystem/core/src/core.c:50: u8 GetWMagUse(UnitExt* ext, u8 offset){ return GetMagUse(ext,offset,EWMAG); }
	movs	r3, r0	@ ext, tmp125
@ MagicSystem/core/src/core.c:47: 	return 0xFF;
	movs	r0, #255	@ <retval>,
@ MagicSystem/core/src/core.c:39: 	if( offset < 0x10 )
	cmp	r1, #15	@ offset,
	bhi	.L26		@,
@ MagicSystem/core/src/core.c:44: 			return GET_W_MAG( ext->mlist.m[offset] );
	adds	r3, r3, r1	@ tmp120, ext, offset
	ldrb	r0, [r3, #17]	@ tmp121, *ext_2(D)
	lsrs	r0, r0, #4	@ <retval>, tmp121,
.L26:
@ MagicSystem/core/src/core.c:50: u8 GetWMagUse(UnitExt* ext, u8 offset){ return GetMagUse(ext,offset,EWMAG); }
	@ sp needed	@
	bx	lr
	.size	GetWMagUse, .-GetWMagUse
	.align	1
	.global	GetBMagItem
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetBMagItem, %function
GetBMagItem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/core/src/core.c:55: {
	movs	r5, r1	@ offset, tmp142
@ MagicSystem/core/src/core.c:56: 	u8 use = GetBMagUse(ext,offset);
	bl	GetBMagUse		@
@ MagicSystem/core/src/core.c:57: 	if( (0==use) | (0xFF==use) )
	subs	r3, r0, #1	@ tmp126, tmp124,
@ MagicSystem/core/src/core.c:57: 	if( (0==use) | (0xFF==use) )
	lsls	r3, r3, #24	@ tmp129, tmp126,
@ MagicSystem/core/src/core.c:56: 	u8 use = GetBMagUse(ext,offset);
	movs	r4, r0	@ tmp124, tmp143
@ MagicSystem/core/src/core.c:57: 	if( (0==use) | (0xFF==use) )
	lsrs	r3, r3, #24	@ tmp129, tmp129,
@ MagicSystem/core/src/core.c:58: 		return 0;
	movs	r0, #0	@ <retval>,
@ MagicSystem/core/src/core.c:57: 	if( (0==use) | (0xFF==use) )
	cmp	r3, #253	@ tmp129,
	bhi	.L29		@,
@ MagicSystem/core/src/core.c:59: 	else if( offset > MAGIC_LIST_SIZE )
	cmp	r5, #15	@ offset,
	bhi	.L29		@,
@ MagicSystem/core/src/core.c:62: 		return MAKE_ITEM(GetBMagIndex(offset), use);
	movs	r0, r5	@, offset
	bl	GetBMagIndex		@
	lsls	r4, r4, #8	@ tmp135, tmp124,
	orrs	r0, r4	@ tmp138, tmp135
	lsls	r0, r0, #16	@ <retval>, tmp138,
	lsrs	r0, r0, #16	@ <retval>, <retval>,
.L29:
@ MagicSystem/core/src/core.c:63: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.size	GetBMagItem, .-GetBMagItem
	.align	1
	.global	GetWMagItem
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetWMagItem, %function
GetWMagItem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/core/src/core.c:66: {
	movs	r5, r1	@ offset, tmp142
@ MagicSystem/core/src/core.c:67: 	u8 use = GetWMagUse(ext,offset);
	bl	GetWMagUse		@
@ MagicSystem/core/src/core.c:68: 	if( (0==use) | (0xFF==use) )
	subs	r3, r0, #1	@ tmp126, tmp124,
@ MagicSystem/core/src/core.c:68: 	if( (0==use) | (0xFF==use) )
	lsls	r3, r3, #24	@ tmp129, tmp126,
@ MagicSystem/core/src/core.c:67: 	u8 use = GetWMagUse(ext,offset);
	movs	r4, r0	@ tmp124, tmp143
@ MagicSystem/core/src/core.c:68: 	if( (0==use) | (0xFF==use) )
	lsrs	r3, r3, #24	@ tmp129, tmp129,
@ MagicSystem/core/src/core.c:69: 		return 0;
	movs	r0, #0	@ <retval>,
@ MagicSystem/core/src/core.c:68: 	if( (0==use) | (0xFF==use) )
	cmp	r3, #253	@ tmp129,
	bhi	.L33		@,
@ MagicSystem/core/src/core.c:70: 	else if( offset > MAGIC_LIST_SIZE )
	cmp	r5, #15	@ offset,
	bhi	.L33		@,
@ MagicSystem/core/src/core.c:73: 		return MAKE_ITEM(GetWMagIndex(offset), use);
	movs	r0, r5	@, offset
	bl	GetWMagIndex		@
	lsls	r4, r4, #8	@ tmp135, tmp124,
	orrs	r0, r4	@ tmp138, tmp135
	lsls	r0, r0, #16	@ <retval>, tmp138,
	lsrs	r0, r0, #16	@ <retval>, <retval>,
.L33:
@ MagicSystem/core/src/core.c:74: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.size	GetWMagItem, .-GetWMagItem
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
@ MagicSystem/core/src/core.c:77: int SetWMagItem(UnitExt* ext, u16 item){
	movs	r4, r1	@ item, tmp149
@ MagicSystem/core/src/core.c:78: 	u8 loc = GetMagOffset(item,gpWMagList);
	ldr	r3, .L39	@ tmp128,
@ MagicSystem/core/src/core.c:77: int SetWMagItem(UnitExt* ext, u16 item){
	movs	r5, r0	@ ext, tmp148
@ MagicSystem/core/src/core.c:78: 	u8 loc = GetMagOffset(item,gpWMagList);
	ldr	r1, [r3]	@, gpWMagList
	movs	r0, r4	@, item
	bl	GetMagOffset		@
	movs	r3, r0	@ tmp129, tmp150
@ MagicSystem/core/src/core.c:80: 		return 0;
	movs	r0, #0	@ <retval>,
@ MagicSystem/core/src/core.c:79: 	if( loc > 0xF )
	cmp	r3, #15	@ tmp129,
	bhi	.L36		@,
@ MagicSystem/core/src/core.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	movs	r2, #15	@ tmp138,
@ MagicSystem/core/src/core.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	adds	r5, r5, r3	@ tmp133, ext, tmp129
@ MagicSystem/core/src/core.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	ldrb	r3, [r5, #17]	@ tmp136, MEM <struct UnitExt> [(u8 *)ext_11(D)]
@ MagicSystem/core/src/core.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	lsrs	r4, r4, #8	@ tmp140, item,
@ MagicSystem/core/src/core.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	ands	r3, r2	@ tmp137, tmp138
@ MagicSystem/core/src/core.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	lsls	r4, r4, #4	@ tmp142, tmp140,
@ MagicSystem/core/src/core.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	orrs	r3, r4	@ tmp145, tmp142
@ MagicSystem/core/src/core.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	strb	r3, [r5, #17]	@ tmp145, MEM <struct UnitExt> [(u8 *)ext_11(D)].mlist.m[_2]
@ MagicSystem/core/src/core.c:84: 	return 1;
	adds	r0, r0, #1	@ <retval>,
.L36:
@ MagicSystem/core/src/core.c:85: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L40:
	.align	2
.L39:
	.word	gpWMagList
	.size	SetWMagItem, .-SetWMagItem
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
@ MagicSystem/core/src/core.c:88: int SetBMagItem(UnitExt* ext, u16 item){
	movs	r4, r1	@ item, tmp148
@ MagicSystem/core/src/core.c:89: 	u8 loc = GetMagOffset(item,gpBMagList);
	ldr	r3, .L44	@ tmp127,
@ MagicSystem/core/src/core.c:88: int SetBMagItem(UnitExt* ext, u16 item){
	movs	r5, r0	@ ext, tmp147
@ MagicSystem/core/src/core.c:89: 	u8 loc = GetMagOffset(item,gpBMagList);
	ldr	r1, [r3]	@, gpBMagList
	movs	r0, r4	@, item
	bl	GetMagOffset		@
	movs	r3, r0	@ tmp128, tmp149
@ MagicSystem/core/src/core.c:91: 		return 0;
	movs	r0, #0	@ <retval>,
@ MagicSystem/core/src/core.c:90: 	if( loc > 0xF )
	cmp	r3, #15	@ tmp128,
	bhi	.L41		@,
@ MagicSystem/core/src/core.c:6: 	*at = (*at&0xF0) | (use&0xF);
	movs	r2, #15	@ tmp137,
@ MagicSystem/core/src/core.c:6: 	*at = (*at&0xF0) | (use&0xF);
	adds	r5, r5, r3	@ tmp132, ext, tmp128
@ MagicSystem/core/src/core.c:6: 	*at = (*at&0xF0) | (use&0xF);
	ldrb	r3, [r5, #17]	@ tmp135, MEM <struct UnitExt> [(u8 *)ext_11(D)]
@ MagicSystem/core/src/core.c:93: 	SetBMag(
	lsrs	r4, r4, #8	@ tmp138, item,
@ MagicSystem/core/src/core.c:6: 	*at = (*at&0xF0) | (use&0xF);
	bics	r3, r2	@ tmp136, tmp137
@ MagicSystem/core/src/core.c:6: 	*at = (*at&0xF0) | (use&0xF);
	ands	r4, r2	@ tmp140, tmp137
@ MagicSystem/core/src/core.c:6: 	*at = (*at&0xF0) | (use&0xF);
	orrs	r3, r4	@ tmp144, tmp140
@ MagicSystem/core/src/core.c:6: 	*at = (*at&0xF0) | (use&0xF);
	strb	r3, [r5, #17]	@ tmp144, MEM <struct UnitExt> [(u8 *)ext_11(D)].mlist.m[_2]
@ MagicSystem/core/src/core.c:96: 	return 1;
	adds	r0, r0, #1	@ <retval>,
.L41:
@ MagicSystem/core/src/core.c:98: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L45:
	.align	2
.L44:
	.word	gpBMagList
	.size	SetBMagItem, .-SetBMagItem
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
@ MagicSystem/core/src/core.c:110: 	u32 attr = GetItemAttributes(item);
	ldr	r3, .L50	@ tmp120,
@ MagicSystem/core/src/core.c:109: int IsItemMagic(u16 item){
	push	{r4, lr}	@
@ MagicSystem/core/src/core.c:110: 	u32 attr = GetItemAttributes(item);
	bl	.L52		@
	movs	r2, #1	@ <retval>,
@ MagicSystem/core/src/core.c:112: 	if( (attr&IA_WEAPON) && (attr&IA_MAGIC) )
	mvns	r1, r0	@ tmp121, attr
@ MagicSystem/core/src/core.c:110: 	u32 attr = GetItemAttributes(item);
	movs	r3, r0	@ attr, tmp129
@ MagicSystem/core/src/core.c:113: 		return TRUE;
	movs	r0, r2	@ <retval>, <retval>
@ MagicSystem/core/src/core.c:112: 	if( (attr&IA_WEAPON) && (attr&IA_MAGIC) )
	lsls	r1, r1, #30	@ tmp130, tmp121,
	beq	.L46		@,
@ MagicSystem/core/src/core.c:115: 	if( attr & IA_STAFF )
	lsrs	r0, r3, #2	@ tmp123, attr,
	ands	r0, r2	@ <retval>, <retval>
.L46:
@ MagicSystem/core/src/core.c:119: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L51:
	.align	2
.L50:
	.word	GetItemAttributes
	.size	IsItemMagic, .-IsItemMagic
	.align	1
	.global	IsItemBlackMagic
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	IsItemBlackMagic, %function
IsItemBlackMagic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/core/src/core.c:123: 		if( gpBMagList[i].index == ITEM_ID(item) )
	ldr	r3, .L58	@ tmp123,
	ldr	r3, [r3]	@ ivtmp.81, gpBMagList
	movs	r2, r3	@ _21, ivtmp.81
@ MagicSystem/core/src/core.c:123: 		if( gpBMagList[i].index == ITEM_ID(item) )
	lsls	r0, r0, #24	@ tmp127, tmp130,
	adds	r2, r2, #120	@ _21,
	lsrs	r0, r0, #24	@ tmp127, tmp127,
.L55:
@ MagicSystem/core/src/core.c:123: 		if( gpBMagList[i].index == ITEM_ID(item) )
	ldrb	r1, [r3]	@ MEM[(unsigned char *)_19], MEM[(unsigned char *)_19]
@ MagicSystem/core/src/core.c:123: 		if( gpBMagList[i].index == ITEM_ID(item) )
	cmp	r1, r0	@ MEM[(unsigned char *)_19], tmp127
	beq	.L56		@,
@ MagicSystem/core/src/core.c:122: 	for(int i=0; i<MAGIC_LIST_SIZE; i++)
	adds	r3, r3, #8	@ ivtmp.81,
	cmp	r3, r2	@ ivtmp.81, _21
	bne	.L55		@,
@ MagicSystem/core/src/core.c:125: 	return FALSE;
	movs	r0, #0	@ <retval>,
.L53:
@ MagicSystem/core/src/core.c:126: }
	@ sp needed	@
	bx	lr
.L56:
@ MagicSystem/core/src/core.c:124: 			return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L53		@
.L59:
	.align	2
.L58:
	.word	gpBMagList
	.size	IsItemBlackMagic, .-IsItemBlackMagic
	.align	1
	.global	IsItemWhiteMagic
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	IsItemWhiteMagic, %function
IsItemWhiteMagic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/core/src/core.c:130: 		if( gpWMagList[i].index == ITEM_ID(item) )
	ldr	r3, .L65	@ tmp123,
	ldr	r3, [r3]	@ ivtmp.90, gpWMagList
	movs	r2, r3	@ _21, ivtmp.90
@ MagicSystem/core/src/core.c:130: 		if( gpWMagList[i].index == ITEM_ID(item) )
	lsls	r0, r0, #24	@ tmp127, tmp130,
	adds	r2, r2, #120	@ _21,
	lsrs	r0, r0, #24	@ tmp127, tmp127,
.L62:
@ MagicSystem/core/src/core.c:130: 		if( gpWMagList[i].index == ITEM_ID(item) )
	ldrb	r1, [r3]	@ MEM[(unsigned char *)_19], MEM[(unsigned char *)_19]
@ MagicSystem/core/src/core.c:130: 		if( gpWMagList[i].index == ITEM_ID(item) )
	cmp	r1, r0	@ MEM[(unsigned char *)_19], tmp127
	beq	.L63		@,
@ MagicSystem/core/src/core.c:129: 	for(int i=0; i<MAGIC_LIST_SIZE; i++)
	adds	r3, r3, #8	@ ivtmp.90,
	cmp	r3, r2	@ ivtmp.90, _21
	bne	.L62		@,
@ MagicSystem/core/src/core.c:132: 	return FALSE;
	movs	r0, #0	@ <retval>,
.L60:
@ MagicSystem/core/src/core.c:133: }
	@ sp needed	@
	bx	lr
.L63:
@ MagicSystem/core/src/core.c:131: 			return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L60		@
.L66:
	.align	2
.L65:
	.word	gpWMagList
	.size	IsItemWhiteMagic, .-IsItemWhiteMagic
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
	push	{r4, lr}	@
@ MagicSystem/core/src/core.c:139: int TestWpn(u16 item){
	movs	r4, r0	@ item, tmp135
@ MagicSystem/core/src/core.c:140: 	u32 attr = GetItemAttributes(item);
	ldr	r3, .L72	@ tmp120,
	bl	.L52		@
@ MagicSystem/core/src/core.c:142: 	if( 0 == ITEM_ID(item) )
	lsls	r4, r4, #24	@ tmp124, item,
	lsrs	r4, r4, #24	@ tmp124, tmp124,
@ MagicSystem/core/src/core.c:140: 	u32 attr = GetItemAttributes(item);
	movs	r3, r0	@ attr, tmp136
@ MagicSystem/core/src/core.c:143: 		return 0;
	subs	r0, r4, #0	@ <retval>, tmp124,
@ MagicSystem/core/src/core.c:142: 	if( 0 == ITEM_ID(item) )
	beq	.L67		@,
@ MagicSystem/core/src/core.c:144: 	else if( !(IA_WEAPON & attr) )
	movs	r2, #1	@ tmp127,
	movs	r0, r3	@ tmp126, attr
	ands	r0, r2	@ tmp126, tmp127
@ MagicSystem/core/src/core.c:144: 	else if( !(IA_WEAPON & attr) )
	tst	r3, r2	@ attr, tmp127
	beq	.L67		@,
@ MagicSystem/core/src/core.c:146: 	else if( IA_MAGIC & attr )
	adds	r2, r2, r2	@ tmp129, tmp129,
	ands	r3, r2	@ tmp128, tmp129
@ MagicSystem/core/src/core.c:149: 		return 2;
	rsbs	r2, r3, #0	@ tmp134, tmp128
	adcs	r3, r3, r2	@ tmp133, tmp128, tmp134
	adds	r0, r3, #1	@ <retval>, tmp133,
.L67:
@ MagicSystem/core/src/core.c:150: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L73:
	.align	2
.L72:
	.word	GetItemAttributes
	.size	TestWpn, .-TestWpn
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L52:
	bx	r3
