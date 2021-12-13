.thumb
.include "_Definitions.h.s"

.global Get_New_Charm
.type Get_New_Charm, function

Get_New_Charm:
	ldr		r1, =gMapAnimData
	lsl		r0, r2, #2
	add		r0, r0, r2
	lsl		r0, r0, #2
	add		r1, #4
	add		r0, r1
	ldr		r0,[r0]
	blh		GetBu_ChangeChaAt
	ldrb	r0,[r0]
	lsl		r0, #0x18
	lsr		r0, #0x18

	pop		{r1}
	bx		r1

.ltorg
.align


.global Get_New_Magic
.type Get_New_Magic, function

Get_New_Magic:
	ldr		r1, =gMapAnimData
	lsl		r0, r2, #2
	add		r0, r0, r2
	lsl		r0, r0, #2
	add		r1, #4
	add		r0, r1
	ldr		r0,[r0]
	blh		GetBu_ChangeMagAt
	ldrb	r0,[r0]
	lsl		r0, #0x18
	lsr		r0, #0x18

	pop		{r1}
	bx		r1

.ltorg
.align


.global Get_Original_Charm
.type Get_Original_Charm, function

Get_Original_Charm:
	mov		r0, r2
	_blh1	GetChaAt
	ldrb	r0,[r0]
	lsl		r0, #0x18
	lsr		r0, #0x18
	pop		{r4, r5}			@Vanilla 7EDE4
	pop		{r1}
	bx		r1


.ltorg
.align


.global Get_Original_Magic
.type Get_Original_Magic, function

Get_Original_Magic:
	mov		r0, r2
	_blh1	GetMagAt
	ldrb	r0,[r0]
	lsl		r0, #0x18
	lsr		r0, #0x18
	pop		{r4, r5}			@Vanilla 7EDE4
	pop		{r1}
	bx		r1
