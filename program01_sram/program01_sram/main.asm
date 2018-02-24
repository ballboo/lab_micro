;
; program01_sram.asm
;
; Created: 2/22/2018 9:44:28 AM
; Author : s5735512002
;


; Replace with your application code

.include"m328pdef.inc"
.def VAR_I = R16
.def VAR_J = R17
.def VAR_K = R18

.cseg
.org	0x00
	ldi VAR_I,3
	ldi VAR_J,12
	ldi VAR_K,20
	mov VAR_I,VAR_J
	add VAR_I,VAR_K
	inc VAR_K
	mov VAR_J,VAR_K
	subi VAR_J,5
	ldi ZL,low(TMP_I)
	ldi ZH,high(TMP_I)
	st Z+,VAR_I
	st Z+,VAR_J
	st Z+,VAR_K
END:	rjmp END

.dseg
.org	0x100
TMP_I: .byte 1
TMP_J: .byte 1
TMP_K: .byte 1
.eseg

