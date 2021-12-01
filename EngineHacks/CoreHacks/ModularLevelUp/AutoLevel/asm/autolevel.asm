.thumb
.global MagCha_Autolevel_ByClass
.type MagCha_Autolevel_ByClass, function

@ ORG $18044
MagCha_Autolevel_ByClass:
	add		r1, r0
	strb	r1,[r4, #0x18]
	
	mov		r0, r4
	ldr		r3, =MagCha_AutolevelCore_ByClass
	bl		BXR3
	
	ldr		r0,[r4, #4]
	add		r0, #0x21
	ldrb	r0,[r0]
	lsl		r0, #0x18
	asr		r0, #0x18
	
	ldr		r1, =0x8018053
	bx		r1


.ltorg
.align
BXR3:
	bx		r3
