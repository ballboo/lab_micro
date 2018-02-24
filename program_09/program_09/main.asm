;
; program_09.asm
;
; Created: 2/22/2018 9:48:24 AM
; Author : s5735512002
;


; Replace with your application code
.include"m328pdef.inc"

.def v_AL = R16
.def v_AH = R17
.def v_B = R18
.def v_C = R19

.CSEG
.ORG 0x0000
	rjmp RESET

RESET :
	ldi v_B,220
	ldi v_C,15
	mul v_B,v_C
	ldi v_AL,low(500)
	ldi v_AH,high(500)
	add v_AL,R0
	adc v_AH,R1

.DSEG
.ESEG
