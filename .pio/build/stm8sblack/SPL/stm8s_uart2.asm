;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8s_uart2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _CLK_GetClockFreq
	.globl _UART2_DeInit
	.globl _UART2_Init
	.globl _UART2_Cmd
	.globl _UART2_ITConfig
	.globl _UART2_IrDAConfig
	.globl _UART2_IrDACmd
	.globl _UART2_LINBreakDetectionConfig
	.globl _UART2_LINConfig
	.globl _UART2_LINCmd
	.globl _UART2_SmartCardCmd
	.globl _UART2_SmartCardNACKCmd
	.globl _UART2_WakeUpConfig
	.globl _UART2_ReceiverWakeUpCmd
	.globl _UART2_ReceiveData8
	.globl _UART2_ReceiveData9
	.globl _UART2_SendData8
	.globl _UART2_SendData9
	.globl _UART2_SendBreak
	.globl _UART2_SetAddress
	.globl _UART2_SetGuardTime
	.globl _UART2_SetPrescaler
	.globl _UART2_GetFlagStatus
	.globl _UART2_ClearFlag
	.globl _UART2_GetITStatus
	.globl _UART2_ClearITPendingBit
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
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 53: void UART2_DeInit(void)
;	-----------------------------------------
;	 function UART2_DeInit
;	-----------------------------------------
_UART2_DeInit:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 57: (void) UART2->SR;
	ld	a, 0x5240
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 58: (void)UART2->DR;
	ld	a, 0x5241
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
	mov	0x5243+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
	mov	0x5242+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
	mov	0x5244+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
	mov	0x5245+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
	mov	0x5246+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
	mov	0x5247+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
	mov	0x5248+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
	mov	0x5249+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 69: }
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
;	-----------------------------------------
;	 function UART2_Init
;	-----------------------------------------
_UART2_Init:
	sub	sp, #12
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 91: assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
	ldw	x, #0x8968
	cpw	x, (0x11, sp)
	ld	a, #0x09
	sbc	a, (0x10, sp)
	clr	a
	sbc	a, (0x0f, sp)
	jrnc	00113$
	push	#0x5b
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00113$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 92: assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
	tnz	(0x13, sp)
	jreq	00115$
	ld	a, (0x13, sp)
	cp	a, #0x10
	jreq	00115$
	push	#0x5c
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00115$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 93: assert_param(IS_UART2_STOPBITS_OK(StopBits));
	tnz	(0x14, sp)
	jreq	00120$
	ld	a, (0x14, sp)
	cp	a, #0x10
	jreq	00120$
	ld	a, (0x14, sp)
	cp	a, #0x20
	jreq	00120$
	ld	a, (0x14, sp)
	cp	a, #0x30
	jreq	00120$
	push	#0x5d
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00120$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 94: assert_param(IS_UART2_PARITY_OK(Parity));
	tnz	(0x15, sp)
	jreq	00131$
	ld	a, (0x15, sp)
	cp	a, #0x04
	jreq	00131$
	ld	a, (0x15, sp)
	cp	a, #0x06
	jreq	00131$
	push	#0x5e
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00131$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 95: assert_param(IS_UART2_MODE_OK((uint8_t)Mode));
	ld	a, (0x17, sp)
	cp	a, #0x08
	jreq	00139$
	ld	a, (0x17, sp)
	cp	a, #0x40
	jreq	00139$
	ld	a, (0x17, sp)
	cp	a, #0x04
	jreq	00139$
	ld	a, (0x17, sp)
	cp	a, #0x80
	jreq	00139$
	ld	a, (0x17, sp)
	sub	a, #0x0c
	jrne	00339$
	inc	a
	.byte 0x21
00339$:
	clr	a
00340$:
	tnz	a
	jrne	00139$
	tnz	a
	jrne	00139$
	ld	a, (0x17, sp)
	cp	a, #0x44
	jreq	00139$
	ld	a, (0x17, sp)
	cp	a, #0xc0
	jreq	00139$
	ld	a, (0x17, sp)
	cp	a, #0x88
	jreq	00139$
	push	#0x5f
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00139$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 96: assert_param(IS_UART2_SYNCMODE_OK((uint8_t)SyncMode));
	ld	a, (0x16, sp)
	cpl	a
	bcp	a, #0x88
	jreq	00167$
	ld	a, (0x16, sp)
	cpl	a
	bcp	a, #0x44
	jreq	00167$
	ld	a, (0x16, sp)
	cpl	a
	bcp	a, #0x22
	jreq	00167$
	ld	a, (0x16, sp)
	cpl	a
	bcp	a, #0x11
	jrne	00165$
00167$:
	push	#0x60
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00165$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
	bres	0x5244, #4
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
	ld	a, 0x5244
	or	a, (0x13, sp)
	ld	0x5244, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
	ld	a, 0x5246
	and	a, #0xcf
	ld	0x5246, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
	ld	a, 0x5246
	or	a, (0x14, sp)
	ld	0x5246, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
	ld	a, 0x5244
	and	a, #0xf9
	ld	0x5244, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
	ld	a, 0x5244
	or	a, (0x15, sp)
	ld	0x5244, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
	ld	a, 0x5242
	mov	0x5242+0, #0x00
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
	ld	a, 0x5243
	and	a, #0x0f
	ld	0x5243, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
	ld	a, 0x5243
	and	a, #0xf0
	ld	0x5243, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
	call	_CLK_GetClockFreq
	ldw	(0x0b, sp), x
	ldw	x, (0x0f, sp)
	ldw	(0x05, sp), x
	ldw	x, (0x11, sp)
	ld	a, #0x04
00364$:
	sllw	x
	rlc	(0x06, sp)
	rlc	(0x05, sp)
	dec	a
	jrne	00364$
	ldw	(0x07, sp), x
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
	call	_CLK_GetClockFreq
	pushw	x
	pushw	y
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x0b, sp), x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ld	a, yh
	ldw	(0x07, sp), x
	ld	(0x05, sp), a
	ld	a, yl
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
	push	a
	ldw	x, (0x04, sp)
	pushw	x
	ldw	x, (0x04, sp)
	pushw	x
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x0c, sp), x
	ldw	(0x0a, sp), y
	pop	a
	ldw	y, (0x07, sp)
	subw	y, (0x0b, sp)
	sbc	a, (0x0a, sp)
	ld	xl, a
	ld	a, (0x05, sp)
	sbc	a, (0x09, sp)
	ld	xh, a
	ld	a, #0x04
00366$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00366$
	push	#0x64
	push	#0x00
	push	#0x00
	push	#0x00
	pushw	y
	pushw	x
	call	__divulong
	addw	sp, #8
	ld	a, xl
	and	a, #0x0f
	ld	(0x0c, sp), a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
	ldw	x, (0x03, sp)
	ld	a, #0x10
	div	x, a
	ldw	y, x
	ld	a, xl
	and	a, #0xf0
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
	or	a, (0x0c, sp)
	ld	0x5243, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
	ld	a, (0x04, sp)
	ld	0x5242, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
	ld	a, 0x5245
	and	a, #0xf3
	ld	0x5245, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
	ld	a, 0x5246
	and	a, #0xf8
	ld	0x5246, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
	ld	a, 0x5246
	ld	(0x0c, sp), a
	ld	a, (0x16, sp)
	and	a, #0x07
	or	a, (0x0c, sp)
	ld	0x5246, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
	ld	a, 0x5245
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
	push	a
	ld	a, (0x18, sp)
	bcp	a, #0x04
	pop	a
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
	or	a, #0x08
	ld	0x5245, a
	jra	00103$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
	and	a, #0xf7
	ld	0x5245, a
00103$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
	ld	a, 0x5245
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
	push	a
	ld	a, (0x18, sp)
	bcp	a, #0x08
	pop	a
	jreq	00105$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
	or	a, #0x04
	ld	0x5245, a
	jra	00106$
00105$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
	and	a, #0xfb
	ld	0x5245, a
00106$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
	ld	a, 0x5246
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
	tnz	(0x16, sp)
	jrpl	00108$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
	and	a, #0xf7
	ld	0x5246, a
	jra	00110$
00108$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
	push	a
	ld	a, (0x17, sp)
	and	a, #0x08
	ld	(0x0d, sp), a
	pop	a
	or	a, (0x0c, sp)
	ld	0x5246, a
00110$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 173: }
	ldw	x, (13, sp)
	addw	sp, #23
	jp	(x)
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_Cmd
;	-----------------------------------------
_UART2_Cmd:
	push	a
	ld	(0x01, sp), a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
	ld	a, 0x5244
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 183: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
	and	a, #0xdf
	ld	0x5244, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
	or	a, #0x20
	ld	0x5244, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 193: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_ITConfig
;	-----------------------------------------
_UART2_ITConfig:
	sub	sp, #7
	ldw	(0x06, sp), x
	ld	(0x05, sp), a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 215: assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
	ldw	x, (0x06, sp)
	cpw	x, #0x0100
	jreq	00125$
	cpw	x, #0x0277
	jreq	00125$
	cpw	x, #0x0266
	jreq	00125$
	cpw	x, #0x0205
	jreq	00125$
	cpw	x, #0x0244
	jreq	00125$
	cpw	x, #0x0412
	jreq	00125$
	cpw	x, #0x0346
	jreq	00125$
	pushw	x
	push	#0xd7
	push	#0x00
	push	#0x00
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
	popw	x
00125$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x05, sp)
	jreq	00145$
	ld	a, (0x05, sp)
	dec	a
	jreq	00145$
	pushw	x
	push	#0xd8
	push	#0x00
	push	#0x00
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
	popw	x
00145$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
	ld	a, (0x07, sp)
	and	a, #0x0f
	push	a
	ld	a, #0x01
	ld	(0x05, sp), a
	pop	a
	tnz	a
	jreq	00255$
00254$:
	sll	(0x04, sp)
	dec	a
	jrne	00254$
00255$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
	ld	a, xh
	dec	a
	jrne	00257$
	ld	a, #0x01
	ld	(0x01, sp), a
	.byte 0xc5
00257$:
	clr	(0x01, sp)
00258$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
	ld	a, xh
	sub	a, #0x02
	jrne	00260$
	inc	a
	ld	(0x02, sp), a
	.byte 0xc5
00260$:
	clr	(0x02, sp)
00261$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
	ld	a, xh
	sub	a, #0x03
	jrne	00263$
	inc	a
	ld	(0x03, sp), a
	.byte 0xc5
00263$:
	clr	(0x03, sp)
00264$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 224: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00120$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
	tnz	(0x01, sp)
	jreq	00108$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 229: UART2->CR1 |= itpos;
	ld	a, 0x5244
	or	a, (0x04, sp)
	ld	0x5244, a
	jra	00122$
00108$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
	tnz	(0x02, sp)
	jreq	00105$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 233: UART2->CR2 |= itpos;
	ld	a, 0x5245
	or	a, (0x04, sp)
	ld	0x5245, a
	jra	00122$
00105$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
	tnz	(0x03, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 237: UART2->CR4 |= itpos;
	ld	a, 0x5247
	or	a, (0x04, sp)
	ld	0x5247, a
	jra	00122$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 241: UART2->CR6 |= itpos;
	ld	a, 0x5249
	or	a, (0x04, sp)
	ld	0x5249, a
	jra	00122$
00120$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
	cpl	(0x04, sp)
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 247: if (uartreg == 0x01)
	tnz	(0x01, sp)
	jreq	00117$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
	ld	a, 0x5244
	ld	(0x03, sp), a
	and	a, (0x04, sp)
	ld	0x5244, a
	jra	00122$
00117$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 251: else if (uartreg == 0x02)
	tnz	(0x02, sp)
	jreq	00114$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
	ld	a, 0x5245
	and	a, (0x04, sp)
	ld	0x5245, a
	jra	00122$
00114$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 255: else if (uartreg == 0x03)
	tnz	(0x03, sp)
	jreq	00111$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
	ld	a, 0x5247
	and	a, (0x04, sp)
	ld	0x5247, a
	jra	00122$
00111$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
	ld	a, 0x5249
	and	a, (0x04, sp)
	ld	0x5249, a
00122$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 264: }
	addw	sp, #7
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
;	-----------------------------------------
;	 function UART2_IrDAConfig
;	-----------------------------------------
_UART2_IrDAConfig:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 274: assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
	ld	(0x01, sp), a
	dec	a
	jreq	00107$
	tnz	(0x01, sp)
	jreq	00107$
	push	#0x12
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
	ld	a, 0x5248
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
	or	a, #0x04
	ld	0x5248, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
	and	a, #0xfb
	ld	0x5248, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 284: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_IrDACmd
;	-----------------------------------------
_UART2_IrDACmd:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 295: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0x27
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
	ld	a, 0x5248
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 297: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
	or	a, #0x02
	ld	0x5248, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
	and	a, #0xfd
	ld	0x5248, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 307: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
;	-----------------------------------------
;	 function UART2_LINBreakDetectionConfig
;	-----------------------------------------
_UART2_LINBreakDetectionConfig:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 319: assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0x3f
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
	ld	a, 0x5247
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
	or	a, #0x20
	ld	0x5247, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
	and	a, #0xdf
	ld	0x5247, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 329: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
;	-----------------------------------------
;	 function UART2_LINConfig
;	-----------------------------------------
_UART2_LINConfig:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 346: assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
	ld	(0x01, sp), a
	jreq	00113$
	ld	a, (0x01, sp)
	dec	a
	jreq	00113$
	push	#0x5a
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00113$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 347: assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
	ld	a, (0x04, sp)
	dec	a
	jreq	00118$
	tnz	(0x04, sp)
	jreq	00118$
	push	#0x5b
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00118$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 348: assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
	tnz	(0x05, sp)
	jreq	00123$
	ld	a, (0x05, sp)
	dec	a
	jreq	00123$
	push	#0x5c
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00123$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
	ld	a, 0x5249
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
	or	a, #0x20
	ld	0x5249, a
	jra	00103$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
	and	a, #0xdf
	ld	0x5249, a
00103$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
	ld	a, 0x5249
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
	tnz	(0x04, sp)
	jreq	00105$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
	or	a, #0x10
	ld	0x5249, a
	jra	00106$
00105$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
	and	a, #0xef
	ld	0x5249, a
00106$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
	ld	a, 0x5249
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
	tnz	(0x05, sp)
	jreq	00108$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
	or	a, #0x80
	ld	0x5249, a
	jra	00110$
00108$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
	and	a, #0x7f
	ld	0x5249, a
00110$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 376: }
	ldw	x, (2, sp)
	addw	sp, #5
	jp	(x)
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_LINCmd
;	-----------------------------------------
_UART2_LINCmd:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 386: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0x82
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
	ld	a, 0x5246
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 388: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
	or	a, #0x40
	ld	0x5246, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
	and	a, #0xbf
	ld	0x5246, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 398: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_SmartCardCmd
;	-----------------------------------------
_UART2_SmartCardCmd:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 409: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0x99
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
	ld	a, 0x5248
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 411: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
	or	a, #0x20
	ld	0x5248, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
	and	a, #0xdf
	ld	0x5248, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 421: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_SmartCardNACKCmd
;	-----------------------------------------
_UART2_SmartCardNACKCmd:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 432: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0xb0
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
	ld	a, 0x5248
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 434: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
	or	a, #0x10
	ld	0x5248, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
	and	a, #0xef
	ld	0x5248, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 444: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
;	-----------------------------------------
;	 function UART2_WakeUpConfig
;	-----------------------------------------
_UART2_WakeUpConfig:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 454: assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
	ld	(0x01, sp), a
	jreq	00104$
	ld	a, (0x01, sp)
	cp	a, #0x08
	jreq	00104$
	push	#0xc6
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
	bres	0x5244, #3
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
	ld	a, 0x5244
	or	a, (0x01, sp)
	ld	0x5244, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 458: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_ReceiverWakeUpCmd
;	-----------------------------------------
_UART2_ReceiverWakeUpCmd:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 468: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0xd4
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
	ld	a, 0x5245
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 470: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
	or	a, #0x02
	ld	0x5245, a
	jra	00104$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
	and	a, #0xfd
	ld	0x5245, a
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 480: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
;	-----------------------------------------
;	 function UART2_ReceiveData8
;	-----------------------------------------
_UART2_ReceiveData8:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
	ld	a, 0x5241
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 490: }
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
;	-----------------------------------------
;	 function UART2_ReceiveData9
;	-----------------------------------------
_UART2_ReceiveData9:
	pushw	x
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
	ld	a, 0x5244
	and	a, #0x80
	ld	xl, a
	clr	a
	ld	xh, a
	sllw	x
	ldw	(0x01, sp), x
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
	ld	a, 0x5241
	clrw	x
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x01, sp)
	and	a, #0x01
	ld	xh, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 504: }
	addw	sp, #2
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
;	-----------------------------------------
;	 function UART2_SendData8
;	-----------------------------------------
_UART2_SendData8:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 514: UART2->DR = Data;
	ld	0x5241, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 515: }
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
;	-----------------------------------------
;	 function UART2_SendData9
;	-----------------------------------------
_UART2_SendData9:
	push	a
	exgw	x, y
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
	bres	0x5244, #6
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
	ld	a, 0x5244
	ld	(0x01, sp), a
	ldw	x, y
	srlw	x
	srlw	x
	ld	a, xl
	and	a, #0x40
	or	a, (0x01, sp)
	ld	0x5244, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
	ld	a, yl
	ld	0x5241, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 532: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 539: void UART2_SendBreak(void)
;	-----------------------------------------
;	 function UART2_SendBreak
;	-----------------------------------------
_UART2_SendBreak:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
	bset	0x5245, #0
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 542: }
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
;	-----------------------------------------
;	 function UART2_SetAddress
;	-----------------------------------------
_UART2_SetAddress:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 552: assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
	ld	(0x01, sp), a
	cp	a, #0x10
	jrc	00104$
	push	#0x28
	push	#0x02
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00104$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
	ld	a, 0x5247
	and	a, #0xf0
	ld	0x5247, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
	ld	a, 0x5247
	or	a, (0x01, sp)
	ld	0x5247, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 558: }
	pop	a
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
;	-----------------------------------------
;	 function UART2_SetGuardTime
;	-----------------------------------------
_UART2_SetGuardTime:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
	ld	0x524a, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 570: }
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
;	-----------------------------------------
;	 function UART2_SetPrescaler
;	-----------------------------------------
_UART2_SetPrescaler:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
	ld	0x524b, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 598: }
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
;	-----------------------------------------
;	 function UART2_GetFlagStatus
;	-----------------------------------------
_UART2_GetFlagStatus:
	sub	sp, #4
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 611: assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
	ldw	y, x
	cpw	x, #0x0101
	jrne	00256$
	ld	a, #0x01
	ld	(0x01, sp), a
	.byte 0xc5
00256$:
	clr	(0x01, sp)
00257$:
	cpw	x, #0x0301
	jrne	00259$
	ld	a, #0x01
	ld	(0x02, sp), a
	.byte 0xc5
00259$:
	clr	(0x02, sp)
00260$:
	cpw	x, #0x0302
	jrne	00262$
	ld	a, #0x01
	ld	(0x03, sp), a
	.byte 0xc5
00262$:
	clr	(0x03, sp)
00263$:
	cpw	x, #0x0210
	jrne	00265$
	ld	a, #0x01
	.byte 0x21
00265$:
	clr	a
00266$:
	cpw	x, #0x0080
	jreq	00126$
	cpw	x, #0x0040
	jreq	00126$
	cpw	x, #0x0020
	jreq	00126$
	cpw	x, #0x0010
	jreq	00126$
	cpw	x, #0x0008
	jreq	00126$
	cpw	x, #0x0004
	jreq	00126$
	cpw	x, #0x0002
	jreq	00126$
	decw	x
	jreq	00126$
	tnz	(0x01, sp)
	jrne	00126$
	tnz	(0x02, sp)
	jrne	00126$
	tnz	(0x03, sp)
	jrne	00126$
	tnz	a
	jrne	00126$
	push	a
	pushw	y
	push	#0x63
	push	#0x02
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
	popw	y
	pop	a
00126$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	exg	a, yl
	ld	(0x04, sp), a
	exg	a, yl
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
	tnz	a
	jreq	00121$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ld	a, 0x5247
	and	a, (0x04, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 619: status = SET;
	ld	a, #0x01
	jra	00122$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 624: status = RESET;
	clr	a
	jra	00122$
00121$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
	ld	a, (0x01, sp)
	jreq	00118$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ld	a, 0x5245
	and	a, (0x04, sp)
	jreq	00105$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 632: status = SET;
	ld	a, #0x01
	jra	00122$
00105$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 637: status = RESET;
	clr	a
	jra	00122$
00118$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
	ld	a, (0x03, sp)
	jrne	00113$
	ld	a, (0x02, sp)
	jreq	00114$
00113$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ld	a, 0x5249
	and	a, (0x04, sp)
	jreq	00108$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 645: status = SET;
	ld	a, #0x01
	jra	00122$
00108$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 650: status = RESET;
	clr	a
	jra	00122$
00114$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ld	a, 0x5240
	and	a, (0x04, sp)
	jreq	00111$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 658: status = SET;
	ld	a, #0x01
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 663: status = RESET;
	.byte 0x21
00111$:
	clr	a
00122$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 668: return  status;
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 669: }
	addw	sp, #4
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
;	-----------------------------------------
;	 function UART2_ClearFlag
;	-----------------------------------------
_UART2_ClearFlag:
	sub	sp, #3
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 701: assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
	cpw	x, #0x0020
	jrne	00159$
	ld	a, #0x01
	ld	(0x01, sp), a
	.byte 0xc5
00159$:
	clr	(0x01, sp)
00160$:
	cpw	x, #0x0302
	jrne	00162$
	ld	a, #0x01
	ld	(0x02, sp), a
	.byte 0xc5
00162$:
	clr	(0x02, sp)
00163$:
	cpw	x, #0x0210
	jrne	00165$
	ld	a, #0x01
	ld	(0x03, sp), a
	.byte 0xc5
00165$:
	clr	(0x03, sp)
00166$:
	tnz	(0x01, sp)
	jrne	00113$
	tnz	(0x02, sp)
	jrne	00113$
	cpw	x, #0x0301
	jreq	00113$
	tnz	(0x03, sp)
	jrne	00113$
	push	#0xbd
	push	#0x02
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00113$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
	ld	a, (0x01, sp)
	jreq	00108$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
	mov	0x5240+0, #0xdf
	jra	00110$
00108$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
	ld	a, (0x03, sp)
	jreq	00105$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
	bres	0x5247, #4
	jra	00110$
00105$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
	ld	a, 0x5249
	ld	xl, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
	ld	a, (0x02, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
	ld	a, xl
	and	a, #0xfd
	ld	0x5249, a
	jra	00110$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
	ld	a, xl
	and	a, #0xfe
	ld	0x5249, a
00110$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 723: }
	addw	sp, #3
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
;	-----------------------------------------
;	 function UART2_GetITStatus
;	-----------------------------------------
_UART2_GetITStatus:
	sub	sp, #5
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 747: assert_param(IS_UART2_GET_IT_OK(UART2_IT));
	ldw	y, x
	cpw	x, #0x0346
	jrne	00247$
	ld	a, #0x01
	ld	(0x01, sp), a
	.byte 0xc5
00247$:
	clr	(0x01, sp)
00248$:
	cpw	x, #0x0412
	jrne	00250$
	ld	a, #0x01
	ld	(0x02, sp), a
	.byte 0xc5
00250$:
	clr	(0x02, sp)
00251$:
	cpw	x, #0x0100
	jrne	00253$
	ld	a, #0x01
	ld	(0x03, sp), a
	.byte 0xc5
00253$:
	clr	(0x03, sp)
00254$:
	cpw	x, #0x0277
	jreq	00129$
	cpw	x, #0x0266
	jreq	00129$
	cpw	x, #0x0255
	jreq	00129$
	cpw	x, #0x0244
	jreq	00129$
	cpw	x, #0x0235
	jreq	00129$
	tnz	(0x01, sp)
	jrne	00129$
	tnz	(0x02, sp)
	jrne	00129$
	tnz	(0x03, sp)
	jrne	00129$
	pushw	y
	push	#0xeb
	push	#0x02
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
	popw	y
00129$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
	ldw	x, y
	ld	a, xl
	and	a, #0x0f
	push	a
	ld	a, #0x01
	ld	(0x05, sp), a
	pop	a
	tnz	a
	jreq	00274$
00273$:
	sll	(0x04, sp)
	dec	a
	jrne	00273$
00274$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
	ld	a, xl
	swap	a
	and	a, #0x0f
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
	push	a
	ld	a, #0x01
	ld	(0x06, sp), a
	pop	a
	tnz	a
	jreq	00276$
00275$:
	sll	(0x05, sp)
	dec	a
	jrne	00275$
00276$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
	ld	a, (0x03, sp)
	jreq	00124$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
	ld	a, 0x5244
	and	a, (0x05, sp)
	ld	xl, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5240
	and	a, (0x04, sp)
	jreq	00102$
	ld	a, xl
	tnz	a
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 766: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00125$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 771: pendingbitstatus = RESET;
	clr	a
	jra	00125$
00124$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
	ld	a, (0x01, sp)
	jreq	00121$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
	ld	a, 0x5247
	and	a, (0x05, sp)
	ld	xl, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5247
	and	a, (0x04, sp)
	jreq	00106$
	ld	a, xl
	tnz	a
	jreq	00106$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 782: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00125$
00106$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 787: pendingbitstatus = RESET;
	clr	a
	jra	00125$
00121$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
	ld	a, (0x02, sp)
	jreq	00118$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
	ld	a, 0x5249
	and	a, (0x05, sp)
	ld	xl, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5249
	and	a, (0x04, sp)
	jreq	00110$
	ld	a, xl
	tnz	a
	jreq	00110$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 798: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00125$
00110$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 803: pendingbitstatus = RESET;
	clr	a
	jra	00125$
00118$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
	ld	a, 0x5245
	and	a, (0x05, sp)
	ld	xl, a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5240
	and	a, (0x04, sp)
	jreq	00114$
	ld	a, xl
	tnz	a
	jreq	00114$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 814: pendingbitstatus = SET;
	ld	a, #0x01
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 819: pendingbitstatus = RESET;
	.byte 0x21
00114$:
	clr	a
00125$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 823: return  pendingbitstatus;
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 824: }
	addw	sp, #5
	ret
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
;	-----------------------------------------
;	 function UART2_ClearITPendingBit
;	-----------------------------------------
_UART2_ClearITPendingBit:
	push	a
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 854: assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
	cpw	x, #0x0255
	jrne	00143$
	ld	a, #0x01
	.byte 0x21
00143$:
	clr	a
00144$:
	cpw	x, #0x0346
	jrne	00146$
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	.byte 0xc5
00146$:
	clr	(0x01, sp)
00147$:
	tnz	a
	jrne	00110$
	cpw	x, #0x0412
	jreq	00110$
	tnz	(0x01, sp)
	jrne	00110$
	push	a
	push	#0x56
	push	#0x03
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
	pop	a
00110$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
	tnz	a
	jreq	00105$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
	mov	0x5240+0, #0xdf
	jra	00107$
00105$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
	ld	a, (0x01, sp)
	jreq	00102$
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
	bres	0x5247, #4
	jra	00107$
00102$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
	bres	0x5249, #1
00107$:
;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 871: }
	pop	a
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	.ascii "/Users/alekseydunaev/.platformio/packages/framework-ststm8sp"
	.ascii "l/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c"
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
