;
; program05_sram.asm
;
; Created: 2/22/2018 10:25:47 AM
; Author : s5735512002
;


; Replace with your application code

.include"m328pdef.inc"

.def v_a = R16
.def v_b = R17
.def v_c = R18

.CSEG
.ORG 0x0000
	rjmp RESET

RESET :		ldi v_b,2
			ldi v_c,4
			mul v_b,v_c
			mov v_a,R0
			ldi zl,low(V_AA)
			ldi zh,high(V_AA)
			st z+,v_a
			st z+,v_b
			st z+,v_c
.DSEG
.ORG 0x100
	V_AA : .byte 1
	V_BB : .byte 1
	v_CC : .byte 1