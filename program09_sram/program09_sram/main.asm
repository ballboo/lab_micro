;
; program09_sram.asm
;
; Created: 2/22/2018 9:57:03 AM
; Author : s5735512002
;


; Replace with your application code
.include"m328pdef.inc"

.def v_aal = R16
.def v_aah = R17
.def v_bb = R18
.def v_cl = R19
.def v_ch = R20
.def v_d = R21

.CSEG
.ORG 0x0000
	rjmp RESET

RESET :
	ldi v_bb,202
	ldi v_d,15
	mul v_bb,v_d
	movw v_aal,R0
	ldi v_cl,low(500)
	ldi v_ch,high(500)
	add v_aal,v_cl
	adc v_aah,v_ch
	ldi ZL,Low(v_a)
	ldi ZH,High(v_a)
	st z+,v_aal
	st z+,v_aah
	st z+,v_bb


.DSEG
.ORG 0x100
v_a : .byte 2
v_b : .byte 1
.ESEG