;
; program12.asm
;
; Created: 2/22/2018 10:34:17 AM
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

RESET :	ldi v_a,200
		ldi v_b,100
		cp v_a,v_b
		brlt L0
		breq EQ
		brge GR
L0:		ldi v_c,-1
	rjmp ENDIF
EQ:		ldi v_c,0
	rjmp ENDIF
GR:		ldi v_c,1
	rjmp ENDIF
ENDIF:	muls v_b,v_c
		mov v_a,R0
END:	rjmp END

.DSEG
.ESEG