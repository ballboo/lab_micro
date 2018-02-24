;
; program_01.asm
;
; Created: 2/22/2018 9:20:26 AM
; Author : s5735512002
;


; Replace with your application code

.include"m328Pdef.inc"
.DEF VAR_I = R16
.DEF VAR_J = R17
.DEF VAR_K = R18

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
END:	rjmp END
.dseg
.eseg

