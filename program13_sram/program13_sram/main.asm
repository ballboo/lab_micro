;
; program13_sram.asm
;
; Created: 2/22/2018 10:47:10 AM
; Author : s5735512002
;


; Replace with your application code
.include"m328pdef.inc"

.def t_a = R16
.def t_b = R17
.def t_cl = R18
.def t_ch = R19

.ORG 0x0000
	rjmp RESET

	RESET:	ldi xl,low(v_a)
			ldi xh,high(v_a)
			ld t_a,x+
			ld t_b,x+
			ld t_cl,x+
			ld t_ch,x+
			ldi R20,0
			cp t_b,t_a
			brsh GR
			add t_cl,t_b
			adc t_ch,r20
			rjmp ENDIF

	GR:		add t_cl,t_a
			adc t_ch,R20

	ENDIF:	ldi zl,low(v_c)
			ldi zh,high(v_c)
			st z+,t_cl
			st z+,t_ch

	END:	rjmp END

	.DSEG
	.ORG 0x10a
		v_a : .byte 1
		v_b : .byte 1
		v_c : .byte 1
