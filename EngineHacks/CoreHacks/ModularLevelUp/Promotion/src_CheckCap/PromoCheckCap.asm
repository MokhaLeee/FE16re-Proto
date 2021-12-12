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
	.file	"PromoCheckCap.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	MLUPromStatGains_MagCha
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MLUPromStatGains_MagCha, %function
MLUPromStatGains_MagCha:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:7: 	u8 MagCap = gpClassMagicTable[classId].Cap;
	ldr	r3, .L4	@ tmp143,
	ldr	r3, [r3]	@ gpClassMagicTable, gpClassMagicTable
	lsls	r5, r1, #2	@ _3, tmp162,
	adds	r3, r3, r5	@ _4, gpClassMagicTable, _3
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:7: 	u8 MagCap = gpClassMagicTable[classId].Cap;
	ldrb	r6, [r3, #2]	@ MagCap,
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:8: 	u8 MagBon = gpClassMagicTable[classId].PromoBonus;
	ldrb	r3, [r3, #3]	@ MagBon,
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:6: void MLUPromStatGains_MagCha(struct Unit* unit, u8 classId){
	sub	sp, sp, #28	@,,
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:8: 	u8 MagBon = gpClassMagicTable[classId].PromoBonus;
	str	r3, [sp, #8]	@ MagBon, %sfp
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:9: 	u8 MagCur = *GetMagAt(unit);
	ldr	r3, .L4+4	@ tmp145,
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:6: void MLUPromStatGains_MagCha(struct Unit* unit, u8 classId){
	movs	r4, r0	@ unit, tmp161
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:9: 	u8 MagCur = *GetMagAt(unit);
	str	r3, [sp, #4]	@ tmp145, %sfp
	bl	.L6		@
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:9: 	u8 MagCur = *GetMagAt(unit);
	ldrb	r3, [r0]	@ MagCur, *_5
	str	r3, [sp, #12]	@ MagCur, %sfp
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:11: 	u8 ChaCap = gpClassCharmTable[classId].Cap;
	ldr	r3, .L4+8	@ tmp146,
	ldr	r3, [r3]	@ gpClassCharmTable, gpClassCharmTable
	adds	r3, r3, r5	@ _8, gpClassCharmTable, _3
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:11: 	u8 ChaCap = gpClassCharmTable[classId].Cap;
	ldrb	r5, [r3, #2]	@ ChaCap,
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:12: 	u8 ChaBon = gpClassCharmTable[classId].PromoBonus;
	ldrb	r3, [r3, #3]	@ ChaBon,
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:13: 	u8 ChaCur = *GetChaAt(unit);
	movs	r0, r4	@, unit
	ldr	r7, .L4+12	@ tmp148,
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:12: 	u8 ChaBon = gpClassCharmTable[classId].PromoBonus;
	str	r3, [sp, #16]	@ ChaBon, %sfp
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:13: 	u8 ChaCur = *GetChaAt(unit);
	bl	.L7		@
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:16: 	if( MagCap > MagBon+MagCur )
	ldr	r2, [sp, #12]	@ MagCur, %sfp
	mov	ip, r2	@ MagCur, MagCur
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:13: 	u8 ChaCur = *GetChaAt(unit);
	ldrb	r3, [r0]	@ ChaCur, *_9
	str	r3, [sp, #20]	@ ChaCur, %sfp
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:16: 	if( MagCap > MagBon+MagCur )
	ldr	r3, [sp, #8]	@ MagBon, %sfp
	add	r3, r3, ip	@ MagBon, MagCur
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:16: 	if( MagCap > MagBon+MagCur )
	cmp	r6, r3	@ MagCap, tmp149
	ble	.L2		@,
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:17: 		MagCur += MagBon;
	lsls	r6, r3, #24	@ MagCap, tmp149,
	lsrs	r6, r6, #24	@ MagCap, MagCap,
.L2:
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:20: 	*GetMagAt(unit) = MagCur;
	ldr	r3, [sp, #4]	@ tmp145, %sfp
	movs	r0, r4	@, unit
	bl	.L6		@
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:23: 	if( ChaCap > ChaBon+ChaCur )
	ldr	r2, [sp, #20]	@ ChaCur, %sfp
	mov	ip, r2	@ ChaCur, ChaCur
	ldr	r3, [sp, #16]	@ ChaBon, %sfp
	add	r3, r3, ip	@ ChaBon, ChaCur
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:20: 	*GetMagAt(unit) = MagCur;
	strb	r6, [r0]	@ MagCap, *_15
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:23: 	if( ChaCap > ChaBon+ChaCur )
	cmp	r5, r3	@ ChaCap, tmp154
	ble	.L3		@,
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:24: 		ChaCur += ChaBon;
	lsls	r5, r3, #24	@ ChaCap, tmp154,
	lsrs	r5, r5, #24	@ ChaCap, ChaCap,
.L3:
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:27: 	*GetChaAt(unit) = ChaCur;
	movs	r0, r4	@, unit
	bl	.L7		@
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:27: 	*GetChaAt(unit) = ChaCur;
	strb	r5, [r0]	@ ChaCap, *_21
@ ModularLevelUp/Promotion/src_CheckCap/PromoCheckCap.c:29: }
	add	sp, sp, #28	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L5:
	.align	2
.L4:
	.word	gpClassMagicTable
	.word	GetMagAt
	.word	gpClassCharmTable
	.word	GetChaAt
	.size	MLUPromStatGains_MagCha, .-MLUPromStatGains_MagCha
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L6:
	bx	r3
.L7:
	bx	r7
