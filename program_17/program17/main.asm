;
; program17.asm
;
; Created: 2/22/2018 11:17:38 AM
; Author : s5735512002
;


; Replace with your application code
.include"m328pdef.inc"

.def v_a = R16
.def v_b = R17
.def t = R18

.CSEG
.ORG 0x0000
	rjmp RESET

	RESET:	ldi v_a,30
	LOOP:	cpi v_a,10
			brlo END
			ldi t,2
			mul v_a,t
			mov v_a,R0
			add v_b,v_a
			brcs TRUE
			dec v_a
			rjmp LOOP
	END:	inc v_a
			rjmp RESET
	TRUE:	ldi v_a,0
			dec v_a
			rjmp LOOP
	.DSEG
	.ESEG
