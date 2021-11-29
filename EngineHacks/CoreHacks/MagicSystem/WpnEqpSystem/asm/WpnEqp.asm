.thumb
.include "_Definitions.h.s"
.set ReturnMagRoutine, 0x802A853
.set ReturnNormalRoutine, 0x802A765


SET_FUNC_INLINE newSetupBattleWpnData

@ORG 0x2A75C
newSetupBattleWpnData:
	push	{r3-r7, lr}
	push	{r1-r3}
	mov		r0, r5
	_blh1	SetupBattleWpnCore	@ struct BattleUnit
	pop		{r1-r3}
	
	cmp		r0, #1
	beq		.Mag

.align
.ltorg	
.Phy:
	
	pop		{r3-r7}
	pop		{r1}
	mov		lr, r1
	
	@Vanilla 2A75C
	mov		r1, r5
	add		r1, #0x52
	mov		r0, #1
	strb	r0,[r1]
	mov		r9, r1
	ldr		r2, =ReturnNormalRoutine
	bx		r2
	
.align
.ltorg
.Mag:
	pop		{r3-r7}
	pop		{r1}
	mov		lr, r1
	
	mov		r2, r5
	add		r2, #0x52
	mov		r9, r2
	add		r2, #-1
	mov		r8, r2
	mov		r1, r5
	add		r1, #0x48		@BattleStruct.WpnAfter
	mov		r4, r1
	ldr		r0, =ReturnMagRoutine
	bx		r0


	