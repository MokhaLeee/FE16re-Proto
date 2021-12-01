.thumb
.global LoadUnit_jpt
.type LoadUnit_jpt, function

@ ORG 17E34
LoadUnit_jpt:
	push	{r4-r5, lr}
	mov		r4, r0
	mov		r5, r1
	
	ldr		r2, =LoadUnitStats_MagCha
	bl		BXR2
	
	mov		r1, r5
	ldr		r2, [r4, #4]
	mov		r3, #0
	ldr		r0, =0x8017E45
	bx		r0

BXR2:
	bx		r2
	