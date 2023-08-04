;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8s_clk
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLKPrescTable
	.globl _HSIDivFactor
	.globl _assert_failed
	.globl _CLK_DeInit
	.globl _CLK_FastHaltWakeUpCmd
	.globl _CLK_HSECmd
	.globl _CLK_HSICmd
	.globl _CLK_LSICmd
	.globl _CLK_CCOCmd
	.globl _CLK_ClockSwitchCmd
	.globl _CLK_SlowActiveHaltWakeUpCmd
	.globl _CLK_PeripheralClockConfig
	.globl _CLK_ClockSwitchConfig
	.globl _CLK_HSIPrescalerConfig
	.globl _CLK_CCOConfig
	.globl _CLK_ITConfig
	.globl _CLK_SYSCLKConfig
	.globl _CLK_SWIMConfig
	.globl _CLK_ClockSecuritySystemEnable
	.globl _CLK_GetSYSCLKSource
	.globl _CLK_GetClockFreq
	.globl _CLK_AdjustHSICalibrationValue
	.globl _CLK_SYSCLKEmergencyClear
	.globl _CLK_GetFlagStatus
	.globl _CLK_GetITStatus
	.globl _CLK_ClearITPendingBit
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 72: void CLK_DeInit(void)
;	-----------------------------------------
;	 function CLK_DeInit
;	-----------------------------------------
_CLK_DeInit:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
	mov	0x50c0+0, #0x01
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
	mov	0x50c1+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
	mov	0x50c4+0, #0xe1
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
	mov	0x50c5+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
	mov	0x50c6+0, #0x18
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
	mov	0x50c7+0, #0xff
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
	mov	0x50ca+0, #0xff
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
	mov	0x50c8+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
	mov	0x50c9+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
00101$:
	btjt	0x50c9, #0, 00101$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
	mov	0x50c9+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
	mov	0x50cc+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
	mov	0x50cd+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 88: }
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_FastHaltWakeUpCmd
;	-----------------------------------------
_CLK_FastHaltWakeUpCmd:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 102: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0x66
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
	ld	a, 0x50c0
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 104: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
	or	a, #0x04
	ld	0x50c0, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
	and	a, #0xfb
	ld	0x50c0, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 114: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_HSECmd
;	-----------------------------------------
_CLK_HSECmd:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 124: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0x7c
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
	ld	a, 0x50c1
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 126: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
	or	a, #0x01
	ld	0x50c1, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
	and	a, #0xfe
	ld	0x50c1, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 136: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_HSICmd
;	-----------------------------------------
_CLK_HSICmd:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 146: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0x92
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
	ld	a, 0x50c0
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 148: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
	or	a, #0x01
	ld	0x50c0, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
	and	a, #0xfe
	ld	0x50c0, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 158: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_LSICmd
;	-----------------------------------------
_CLK_LSICmd:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 169: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0xa9
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
	ld	a, 0x50c0
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 171: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
	or	a, #0x08
	ld	0x50c0, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
	and	a, #0xf7
	ld	0x50c0, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 181: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_CCOCmd
;	-----------------------------------------
_CLK_CCOCmd:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 192: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0xc0
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
	ld	a, 0x50c9
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 194: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
	or	a, #0x01
	ld	0x50c9, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
	and	a, #0xfe
	ld	0x50c9, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 204: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_ClockSwitchCmd
;	-----------------------------------------
_CLK_ClockSwitchCmd:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0xd8
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
	ld	a, 0x50c5
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 218: if (NewState != DISABLE )
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
	or	a, #0x02
	ld	0x50c5, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
	and	a, #0xfd
	ld	0x50c5, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 228: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_SlowActiveHaltWakeUpCmd
;	-----------------------------------------
_CLK_SlowActiveHaltWakeUpCmd:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 241: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0xf1
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
	ld	a, 0x50c0
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 243: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
	or	a, #0x20
	ld	0x50c0, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
	and	a, #0xdf
	ld	0x50c0, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 253: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_PeripheralClockConfig
;	-----------------------------------------
_CLK_PeripheralClockConfig:
	sub	sp, #3
	ld	(0x03, sp), a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 266: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x06, sp)
	jreq	00113$
	ld	a, (0x06, sp)
	dec	a
	jreq	00113$
	push	#0x0a
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00113$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 267: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
	tnz	(0x03, sp)
	jreq	00118$
	ld	a, (0x03, sp)
	dec	a
	jreq	00118$
	ld	a, (0x03, sp)
	sub	a, #0x03
	jrne	00262$
	inc	a
	.byte 0x21
00262$:
	clr	a
00263$:
	tnz	a
	jrne	00118$
	tnz	a
	jrne	00118$
	tnz	a
	jrne	00118$
	ld	a, (0x03, sp)
	sub	a, #0x04
	jrne	00268$
	inc	a
	ld	xl, a
	jra	00269$
00268$:
	clr	a
	ld	xl, a
00269$:
	ld	a, xl
	tnz	a
	jrne	00118$
	ld	a, (0x03, sp)
	sub	a, #0x05
	jrne	00272$
	inc	a
	.byte 0x21
00272$:
	clr	a
00273$:
	tnz	a
	jrne	00118$
	tnz	a
	jrne	00118$
	ld	a, xl
	tnz	a
	jrne	00118$
	ld	a, (0x03, sp)
	cp	a, #0x06
	jreq	00118$
	ld	a, (0x03, sp)
	cp	a, #0x07
	jreq	00118$
	ld	a, (0x03, sp)
	cp	a, #0x17
	jreq	00118$
	ld	a, (0x03, sp)
	cp	a, #0x13
	jreq	00118$
	ld	a, (0x03, sp)
	cp	a, #0x12
	jreq	00118$
	push	#0x0b
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00118$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ld	a, (0x03, sp)
	and	a, #0x0f
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00293$
00292$:
	sll	(0x01, sp)
	dec	a
	jrne	00292$
00293$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	ld	a, (0x01, sp)
	cpl	a
	ld	(0x02, sp), a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
	ld	a, (0x03, sp)
	bcp	a, #0x10
	jrne	00108$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ld	a, 0x50c7
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 271: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	or	a, (0x01, sp)
	ld	0x50c7, a
	jra	00110$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	and	a, (0x02, sp)
	ld	0x50c7, a
	jra	00110$
00108$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ld	a, 0x50ca
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 284: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00105$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	or	a, (0x01, sp)
	ld	0x50ca, a
	jra	00110$
00105$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	and	a, (0x02, sp)
	ld	0x50ca, a
00110$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 295: }
	addw	sp, #3
	popw	x
	pop	a
	jp	(x)
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
;	-----------------------------------------
;	 function CLK_ClockSwitchConfig
;	-----------------------------------------
_CLK_ClockSwitchConfig:
	pushw	x
	ld	(0x02, sp), a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 316: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
	ld	a, (0x05, sp)
	cp	a, #0xe1
	jreq	00140$
	ld	a, (0x05, sp)
	cp	a, #0xd2
	jreq	00140$
	ld	a, (0x05, sp)
	cp	a, #0xb4
	jreq	00140$
	push	#0x3c
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00140$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 317: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
	ld	a, (0x02, sp)
	dec	a
	jrne	00309$
	ld	a, #0x01
	ld	(0x01, sp), a
	.byte 0xc5
00309$:
	clr	(0x01, sp)
00310$:
	tnz	(0x02, sp)
	jreq	00148$
	tnz	(0x01, sp)
	jrne	00148$
	push	#0x3d
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00148$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 318: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
	tnz	(0x06, sp)
	jreq	00153$
	ld	a, (0x06, sp)
	dec	a
	jreq	00153$
	push	#0x3e
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00153$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 319: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
	tnz	(0x07, sp)
	jreq	00158$
	ld	a, (0x07, sp)
	dec	a
	jreq	00158$
	push	#0x3f
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00158$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
	ld	a, 0x50c3
	ld	yl, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
	ld	a, 0x50c5
	ld	xl, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
	ld	a, (0x01, sp)
	jreq	00122$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
	ld	a, xl
	or	a, #0x02
	ld	0x50c5, a
	ld	a, 0x50c5
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 331: if (ITState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
	or	a, #0x04
	ld	0x50c5, a
	jra	00103$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
	and	a, #0xfb
	ld	0x50c5, a
00103$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
	ldw	x, #0x50c4
	ld	a, (0x05, sp)
	ld	(x), a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
	clrw	x
	decw	x
00105$:
	btjf	0x50c5, #0, 00107$
	tnzw	x
	jreq	00107$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 346: DownCounter--;
	decw	x
	jra	00105$
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 349: if(DownCounter != 0)
	tnzw	x
	jreq	00109$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 351: Swif = SUCCESS;
	ld	a, #0x01
	ld	xl, a
	jra	00123$
00109$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 355: Swif = ERROR;
	clrw	x
	jra	00123$
00122$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 361: if (ITState != DISABLE)
	tnz	(0x06, sp)
	jreq	00112$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
	ld	a, xl
	or	a, #0x04
	ld	0x50c5, a
	jra	00113$
00112$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
	ld	a, xl
	and	a, #0xfb
	ld	0x50c5, a
00113$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
	ldw	x, #0x50c4
	ld	a, (0x05, sp)
	ld	(x), a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
	clrw	x
	decw	x
00115$:
	btjf	0x50c5, #3, 00117$
	tnzw	x
	jreq	00117$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 376: DownCounter--;
	decw	x
	jra	00115$
00117$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 379: if(DownCounter != 0)
	tnzw	x
	jreq	00119$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
	bset	0x50c5, #1
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 383: Swif = SUCCESS;
	ld	a, #0x01
	ld	xl, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 387: Swif = ERROR;
	.byte 0x21
00119$:
	clrw	x
00123$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 390: if(Swif != ERROR)
	ld	a, xl
	tnz	a
	jreq	00136$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
	tnz	(0x07, sp)
	jrne	00132$
	ld	a, yl
	cp	a, #0xe1
	jrne	00132$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
	bres	0x50c0, #0
	jra	00136$
00132$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
	tnz	(0x07, sp)
	jrne	00128$
	ld	a, yl
	cp	a, #0xd2
	jrne	00128$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
	bres	0x50c0, #3
	jra	00136$
00128$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
	tnz	(0x07, sp)
	jrne	00136$
	ld	a, yl
	cp	a, #0xb4
	jrne	00136$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
	bres	0x50c1, #0
00136$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 406: return(Swif);
	ld	a, xl
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 407: }
	ldw	x, (3, sp)
	addw	sp, #7
	jp	(x)
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
;	-----------------------------------------
;	 function CLK_HSIPrescalerConfig
;	-----------------------------------------
_CLK_HSIPrescalerConfig:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 418: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
	ld	(0x01, sp), a
	jreq	00104$
	ld	a, (0x01, sp)
	cp	a, #0x08
	jreq	00104$
	ld	a, (0x01, sp)
	cp	a, #0x10
	jreq	00104$
	ld	a, (0x01, sp)
	cp	a, #0x18
	jreq	00104$
	push	#0xa2
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
	ld	a, 0x50c6
	and	a, #0xe7
	ld	0x50c6, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
	ld	a, 0x50c6
	or	a, (0x01, sp)
	ld	0x50c6, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 425: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
;	-----------------------------------------
;	 function CLK_CCOConfig
;	-----------------------------------------
_CLK_CCOConfig:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 439: assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
	tnz	a
	jreq	00104$
	cp	a, #0x04
	jreq	00104$
	cp	a, #0x02
	jreq	00104$
	cp	a, #0x08
	jreq	00104$
	cp	a, #0x0a
	jreq	00104$
	cp	a, #0x0c
	jreq	00104$
	cp	a, #0x0e
	jreq	00104$
	cp	a, #0x10
	jreq	00104$
	cp	a, #0x12
	jreq	00104$
	cp	a, #0x14
	jreq	00104$
	cp	a, #0x16
	jreq	00104$
	cp	a, #0x18
	jreq	00104$
	cp	a, #0x1a
	jreq	00104$
	push	a
	push	#0xb7
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
	pop	a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
	ldw	x, #0x50c9
	push	a
	ld	a, (x)
	and	a, #0xe1
	ld	(0x02, sp), a
	pop	a
	ldw	x, #0x50c9
	push	a
	ld	a, (0x02, sp)
	ld	(x), a
	pop	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
	ldw	x, #0x50c9
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
	or	a, (0x01, sp)
	ld	0x50c9, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
	bset	0x50c9, #0
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 449: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_ITConfig
;	-----------------------------------------
_CLK_ITConfig:
	pushw	x
	ld	(0x02, sp), a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 462: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x05, sp)
	jreq	00115$
	ld	a, (0x05, sp)
	dec	a
	jreq	00115$
	push	#0xce
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00115$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 463: assert_param(IS_CLK_IT_OK(CLK_IT));
	ld	a, (0x02, sp)
	sub	a, #0x0c
	jrne	00174$
	inc	a
	.byte 0x21
00174$:
	clr	a
00175$:
	push	a
	ld	a, (0x03, sp)
	cp	a, #0x1c
	pop	a
	jrne	00177$
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	.byte 0xc5
00177$:
	clr	(0x01, sp)
00178$:
	tnz	a
	jrne	00120$
	tnz	(0x01, sp)
	jrne	00120$
	push	a
	push	#0xcf
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
	pop	a
00120$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 465: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00110$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 467: switch (CLK_IT)
	tnz	a
	jrne	00102$
	ld	a, (0x01, sp)
	jreq	00112$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
	ld	a, 0x50c5
	or	a, #0x04
	ld	0x50c5, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 471: break;
	jra	00112$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
	ld	a, 0x50c8
	or	a, #0x04
	ld	0x50c8, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 474: break;
	jra	00112$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 477: }
00110$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 481: switch (CLK_IT)
	tnz	a
	jrne	00106$
	ld	a, (0x01, sp)
	jreq	00112$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
	ld	a, 0x50c5
	and	a, #0xfb
	ld	0x50c5, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 485: break;
	jra	00112$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
00106$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
	ld	a, 0x50c8
	and	a, #0xfb
	ld	0x50c8, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 491: }
00112$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 493: }
	popw	x
	popw	x
	pop	a
	jp	(x)
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
;	-----------------------------------------
;	 function CLK_SYSCLKConfig
;	-----------------------------------------
_CLK_SYSCLKConfig:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 503: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
	ld	xh, a
	tnz	a
	jreq	00107$
	ld	a, xh
	cp	a, #0x08
	jreq	00107$
	ld	a, xh
	cp	a, #0x10
	jreq	00107$
	ld	a, xh
	cp	a, #0x18
	jreq	00107$
	ld	a, xh
	cp	a, #0x80
	jreq	00107$
	ld	a, xh
	cp	a, #0x81
	jreq	00107$
	ld	a, xh
	cp	a, #0x82
	jreq	00107$
	ld	a, xh
	cp	a, #0x83
	jreq	00107$
	ld	a, xh
	cp	a, #0x84
	jreq	00107$
	ld	a, xh
	cp	a, #0x85
	jreq	00107$
	ld	a, xh
	cp	a, #0x86
	jreq	00107$
	ld	a, xh
	cp	a, #0x87
	jreq	00107$
	pushw	x
	push	#0xf7
	push	#0x01
	push	#0x00
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
	rlwa	x
	pop	a
	rrwa	x
	pop	a
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
	ld	a, 0x50c6
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
	tnzw	x
	jrmi	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
	and	a, #0xe7
	ld	0x50c6, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
	ld	a, 0x50c6
	ld	(0x01, sp), a
	ld	a, xh
	and	a, #0x18
	or	a, (0x01, sp)
	ld	0x50c6, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
	and	a, #0xf8
	ld	0x50c6, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
	ld	a, 0x50c6
	ld	(0x01, sp), a
	ld	a, xh
	and	a, #0x07
	or	a, (0x01, sp)
	ld	0x50c6, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 515: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
;	-----------------------------------------
;	 function CLK_SWIMConfig
;	-----------------------------------------
_CLK_SWIMConfig:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 526: assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0x0e
	push	#0x02
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
	ld	a, 0x50cd
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
	or	a, #0x01
	ld	0x50cd, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
	and	a, #0xfe
	ld	0x50cd, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 538: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
;	-----------------------------------------
;	 function CLK_ClockSecuritySystemEnable
;	-----------------------------------------
_CLK_ClockSecuritySystemEnable:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
	bset	0x50c8, #0
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 551: }
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
;	-----------------------------------------
;	 function CLK_GetSYSCLKSource
;	-----------------------------------------
_CLK_GetSYSCLKSource:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
	ld	a, 0x50c3
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 562: }
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
;	-----------------------------------------
;	 function CLK_GetClockFreq
;	-----------------------------------------
_CLK_GetClockFreq:
	sub	sp, #4
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
	ld	a, 0x50c3
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
	ld	(0x04, sp), a
	cp	a, #0xe1
	jrne	00105$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
	ld	a, 0x50c6
	and	a, #0x18
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
	srl	a
	srl	a
	srl	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
	clrw	x
	ld	xl, a
	ld	a, (_HSIDivFactor+0, x)
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
	clrw	x
	ld	xl, a
	clrw	y
	pushw	x
	pushw	y
	push	#0x00
	push	#0x24
	push	#0xf4
	push	#0x00
	call	__divulong
	addw	sp, #8
	exgw	x, y
	ldw	(0x03, sp), y
	jra	00106$
00105$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
	ld	a, (0x04, sp)
	cp	a, #0xd2
	jrne	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
	ldw	x, #0xf400
	ldw	(0x03, sp), x
	clrw	x
	incw	x
	jra	00106$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
	ldw	x, #0x2400
	ldw	(0x03, sp), x
	ldw	x, #0x00f4
00106$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
	exgw	x, y
	ldw	x, (0x03, sp)
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 595: }
	addw	sp, #4
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
;	-----------------------------------------
;	 function CLK_AdjustHSICalibrationValue
;	-----------------------------------------
_CLK_AdjustHSICalibrationValue:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 607: assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
	tnz	a
	jreq	00104$
	cp	a, #0x01
	jreq	00104$
	cp	a, #0x02
	jreq	00104$
	cp	a, #0x03
	jreq	00104$
	cp	a, #0x04
	jreq	00104$
	cp	a, #0x05
	jreq	00104$
	cp	a, #0x06
	jreq	00104$
	cp	a, #0x07
	jreq	00104$
	push	a
	push	#0x5f
	push	#0x02
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
	pop	a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
	ldw	x, #0x50cc
	push	a
	ld	a, (x)
	and	a, #0xf8
	ld	(0x02, sp), a
	pop	a
	or	a, (0x01, sp)
	ld	0x50cc, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 611: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
;	-----------------------------------------
;	 function CLK_SYSCLKEmergencyClear
;	-----------------------------------------
_CLK_SYSCLKEmergencyClear:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
	bres	0x50c5, #0
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 625: }
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
;	-----------------------------------------
;	 function CLK_GetFlagStatus
;	-----------------------------------------
_CLK_GetFlagStatus:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 641: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
	ldw	y, x
	cpw	x, #0x0110
	jreq	00119$
	cpw	x, #0x0102
	jreq	00119$
	cpw	x, #0x0202
	jreq	00119$
	cpw	x, #0x0308
	jreq	00119$
	cpw	x, #0x0301
	jreq	00119$
	cpw	x, #0x0408
	jreq	00119$
	cpw	x, #0x0402
	jreq	00119$
	cpw	x, #0x0504
	jreq	00119$
	cpw	x, #0x0502
	jreq	00119$
	pushw	x
	pushw	y
	push	#0x81
	push	#0x02
	push	#0x00
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
	popw	y
	popw	x
00119$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
	clr	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
	ld	xl, a
	cpw	x, #0x0100
	jrne	00111$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
	ld	a, 0x50c0
	jra	00112$
00111$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
	cpw	x, #0x0200
	jrne	00108$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
	ld	a, 0x50c1
	jra	00112$
00108$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
	cpw	x, #0x0300
	jrne	00105$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
	ld	a, 0x50c5
	jra	00112$
00105$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
	cpw	x, #0x0400
	jrne	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
	ld	a, 0x50c8
	jra	00112$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
	ld	a, 0x50c9
00112$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
	ldw	x, y
	pushw	x
	and	a, (2, sp)
	popw	x
	tnz	a
	jreq	00114$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 670: bitstatus = SET;
	ld	a, #0x01
	ret
00114$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 674: bitstatus = RESET;
	clr	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 679: }
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
;	-----------------------------------------
;	 function CLK_GetITStatus
;	-----------------------------------------
_CLK_GetITStatus:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 692: assert_param(IS_CLK_IT_OK(CLK_IT));
	ld	(0x01, sp), a
	sub	a, #0x1c
	jrne	00143$
	inc	a
	.byte 0x21
00143$:
	clr	a
00144$:
	push	a
	ld	a, (0x02, sp)
	cp	a, #0x0c
	pop	a
	jreq	00113$
	tnz	a
	jrne	00113$
	push	a
	push	#0xb4
	push	#0x02
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
	pop	a
00113$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
	tnz	a
	jreq	00108$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
	ld	a, 0x50c5
	and	a, (0x01, sp)
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 699: bitstatus = SET;
	sub	a, #0x0c
	jrne	00102$
	inc	a
	jra	00109$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 703: bitstatus = RESET;
	clr	a
	jra	00109$
00108$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
	ld	a, 0x50c8
	and	a, (0x01, sp)
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 711: bitstatus = SET;
	sub	a, #0x0c
	jrne	00105$
	inc	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 715: bitstatus = RESET;
	.byte 0x21
00105$:
	clr	a
00109$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 720: return bitstatus;
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 721: }
	addw	sp, #1
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
;	-----------------------------------------
;	 function CLK_ClearITPendingBit
;	-----------------------------------------
_CLK_ClearITPendingBit:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 732: assert_param(IS_CLK_IT_OK(CLK_IT));
	ld	xl, a
	sub	a, #0x0c
	jrne	00127$
	inc	a
	.byte 0x21
00127$:
	clr	a
00128$:
	tnz	a
	jrne	00107$
	push	a
	ld	a, xl
	cp	a, #0x1c
	pop	a
	jreq	00107$
	push	a
	push	#0xdc
	push	#0x02
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
	pop	a
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
	tnz	a
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
	bres	0x50c8, #3
	ret
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
	bres	0x50c5, #3
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 745: }
	ret
	.area CODE
	.area CONST
_HSIDivFactor:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
_CLKPrescTable:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x10	; 16
	.db #0x14	; 20
	.db #0x28	; 40
	.area CONST
___str_0:
	.ascii "/Users/alekseydunaev/.platformio/packages/framework-ststm8sp"
	.ascii "l/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c"
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
