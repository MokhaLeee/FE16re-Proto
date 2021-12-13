.thumb

.macro blh to,reg=r4
	push {\reg}
	ldr \reg,=\to
	mov r14,\reg
	pop {\reg}
	.short 0xF800
.endm

.macro SET_FUNC name, value
	.global \name
	.type   \name, function
	.set    \name, \value
.endm
.macro SET_DATA name, value
	.global \name
	.type   \name, object
	.set    \name, \value
.endm


SET_DATA gBattleHitIterator, 0x203A608



.global	BattleGenerateHitFix
.type 	BattleGenerateHitFix, function

@ ORG $2B884
BattleGenerateHitFix:
	push	{r0-r3, lr}
	blh		isCombatArt
	cmp		r0, #1
	bne		.L1_Nope

.L0_CombatArt:
	@ gBattleHitIterator->info |= BATTLE_HIT_ATTR_SURESHOT
	ldr		r3, =gBattleHitIterator
	ldr		r3,[r3]
	ldr		r0,[r3]
	ldr		r1, =0x4000
	orr		r0, r1, r0
	str		r0,[r3]	
	
	

.L1_Nope:	
	pop		{r0-r3}
	pop		{r0}
	mov		lr, r0
	
	@ Vanilla 2BB84
	mov		r0, #0x13
	ldsb	r0,[r4, r0]
	cmp		r0, #0
	bne		.L2
	ldr		r1, =0x802B893
	bx		r1
	
.L2:	
	ldsb	r0,[r5, r0]
	ldr		r1, =0x802B88F
	bx		r1

.align
.ltorg

