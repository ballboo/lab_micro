;
; program_19.asm
;
; Created: 2/22/2018 11:50:58 AM
; Author : s5735512002
;


; Replace with your application code
.include"m328pdef.inc"

.def v_a = R16
.def v_b = R17
.def t_0 = R18
.def v_i = R19

.CSEG
.ORG 0x0000
	rjmp RESET

	RESET:	ldi v_a,10
			ldi v_b,2
			ldi v_i,0

	START:	cp v_b,v_a
			brlt LOOP
			rjmp END
	LOOP:	ldi t_0,3
			muls v_b,t_0
			mov v_b,R0
			inc v_i
			rjmp START
	END:	rjmp END

.DSEG
.ESEG