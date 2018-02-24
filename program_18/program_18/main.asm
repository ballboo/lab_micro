;
; program_18.asm
;
; Created: 2/22/2018 11:35:33 AM
; Author : s5735512002
;


; Replace with your application code
.include"m328pdef.inc"

.def v_a = R16
.def v_b = R17
.def v_cl = R18
.def v_ch = R19
.def v_d = R20
.def v_e = R21

.CSEG
.ORG 0x0000
	rjmp LOOP

LOOP:	
		ldi v_a,1
		ldi v_b,2
		ldi v_e,5
		mul v_a,v_e
		mov v_cl,R0
		sub v_d,v_b
		cp v_a,v_b
		brsh LOOP
END : rjmp END


.DSEG
.ESEG
