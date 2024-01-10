;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module stm8s_i2c
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _I2C_DeInit
	.globl _I2C_Init
	.globl _I2C_Cmd
	.globl _I2C_GeneralCallCmd
	.globl _I2C_GenerateSTART
	.globl _I2C_GenerateSTOP
	.globl _I2C_SoftwareResetCmd
	.globl _I2C_StretchClockCmd
	.globl _I2C_AcknowledgeConfig
	.globl _I2C_ITConfig
	.globl _I2C_FastModeDutyCycleConfig
	.globl _I2C_ReceiveData
	.globl _I2C_Send7bitAddress
	.globl _I2C_SendData
	.globl _I2C_CheckEvent
	.globl _I2C_GetLastEvent
	.globl _I2C_GetFlagStatus
	.globl _I2C_ClearFlag
	.globl _I2C_GetITStatus
	.globl _I2C_ClearITPendingBit
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
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 67: void I2C_DeInit(void)
;	-----------------------------------------
;	 function I2C_DeInit
;	-----------------------------------------
_I2C_DeInit:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 69: I2C->CR1 = I2C_CR1_RESET_VALUE;
	mov	0x5210+0, #0x00
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 70: I2C->CR2 = I2C_CR2_RESET_VALUE;
	mov	0x5211+0, #0x00
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 71: I2C->FREQR = I2C_FREQR_RESET_VALUE;
	mov	0x5212+0, #0x00
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 72: I2C->OARL = I2C_OARL_RESET_VALUE;
	mov	0x5213+0, #0x00
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 73: I2C->OARH = I2C_OARH_RESET_VALUE;
	mov	0x5214+0, #0x00
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 74: I2C->ITR = I2C_ITR_RESET_VALUE;
	mov	0x521a+0, #0x00
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 75: I2C->CCRL = I2C_CCRL_RESET_VALUE;
	mov	0x521b+0, #0x00
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 76: I2C->CCRH = I2C_CCRH_RESET_VALUE;
	mov	0x521c+0, #0x00
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 77: I2C->TRISER = I2C_TRISER_RESET_VALUE;
	mov	0x521d+0, #0x02
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 78: }
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 96: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
;	-----------------------------------------
;	 function I2C_Init
;	-----------------------------------------
_I2C_Init:
	sub	sp, #7
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 102: uint8_t tmpccrh = 0;
	clr	(0x05, sp)
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 105: assert_param(IS_I2C_ACK_OK(Ack));
	tnz	(0x11, sp)
	jreq	00114$
	ld	a, (0x11, sp)
	dec	a
	jreq	00114$
	ld	a, (0x11, sp)
	cp	a, #0x02
	jreq	00114$
	push	#0x69
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00114$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 106: assert_param(IS_I2C_ADDMODE_OK(AddMode));
	tnz	(0x12, sp)
	jreq	00122$
	ld	a, (0x12, sp)
	cp	a, #0x80
	jreq	00122$
	push	#0x6a
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00122$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 107: assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
	ldw	x, (0x0e, sp)
	cpw	x, #0x03ff
	jrule	00127$
	push	#0x6b
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00127$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 108: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
	tnz	(0x10, sp)
	jreq	00129$
	ld	a, (0x10, sp)
	cp	a, #0x40
	jreq	00129$
	push	#0x6c
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00129$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 109: assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
	ld	a, (0x13, sp)
	cp	a, #0x01
	jrc	00133$
	ld	a, (0x13, sp)
	cp	a, #0x10
	jrule	00134$
00133$:
	push	#0x6d
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00134$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 110: assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
	ldw	x, (0x0c, sp)
	cpw	x, #0x0001
	ld	a, (0x0b, sp)
	sbc	a, #0x00
	ld	a, (0x0a, sp)
	sbc	a, #0x00
	jrc	00138$
	ldw	x, #0x1a80
	cpw	x, (0x0c, sp)
	ld	a, #0x06
	sbc	a, (0x0b, sp)
	clr	a
	sbc	a, (0x0a, sp)
	jrnc	00139$
00138$:
	push	#0x6e
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00139$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 115: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
	ld	a, 0x5212
	and	a, #0xc0
	ld	0x5212, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 117: I2C->FREQR |= InputClockFrequencyMHz;
	ld	a, 0x5212
	or	a, (0x13, sp)
	ld	0x5212, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 121: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
	bres	0x5210, #0
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 124: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
	ld	a, 0x521c
	and	a, #0x30
	ld	0x521c, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 125: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
	ld	a, 0x521b
	mov	0x521b+0, #0x00
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
	clrw	x
	ld	a, (0x13, sp)
	ld	xl, a
	clrw	y
	pushw	x
	pushw	y
	push	#0x40
	push	#0x42
	push	#0x0f
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 128: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
	ldw	x, #0x86a0
	cpw	x, (0x0c, sp)
	ld	a, #0x01
	sbc	a, (0x0b, sp)
	clr	a
	sbc	a, (0x0a, sp)
	jrnc	00109$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 131: tmpccrh = I2C_CCRH_FS;
	ld	a, #0x80
	ld	(0x05, sp), a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 133: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
	tnz	(0x10, sp)
	jrne	00102$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
	ldw	x, (0x0c, sp)
	pushw	x
	ldw	x, (0x0c, sp)
	pushw	x
	push	#0x03
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	jra	00103$
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 141: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
	ldw	x, (0x0c, sp)
	pushw	x
	ldw	x, (0x0c, sp)
	pushw	x
	push	#0x19
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ld	a, xl
	push	a
	ld	a, xh
	push	a
	pushw	y
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 143: tmpccrh |= I2C_CCRH_DUTY;
	ld	a, #0xc0
	ld	(0x05, sp), a
00103$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 147: if (result < (uint16_t)0x01)
	cpw	x, #0x0001
	jrnc	00105$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 150: result = (uint16_t)0x0001;
	clrw	x
	incw	x
00105$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 156: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
	ld	a, (0x13, sp)
	ld	(0x07, sp), a
	clr	(0x06, sp)
	pushw	x
	ldw	x, (0x08, sp)
	sllw	x
	addw	x, (0x08, sp)
	exgw	x, y
	push	#0x0a
	push	#0x00
	ldw	x, y
	call	__divsint
	ldw	y, x
	ld	a, xl
	popw	x
	inc	a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 157: I2C->TRISER = (uint8_t)tmpval;
	ld	0x521d, a
	jra	00110$
00109$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 164: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
	ldw	x, (0x0c, sp)
	ldw	y, (0x0a, sp)
	sllw	x
	rlcw	y
	pushw	x
	pushw	y
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 167: if (result < (uint16_t)0x0004)
	cpw	x, #0x0004
	jrnc	00107$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 170: result = (uint16_t)0x0004;
	ldw	x, #0x0004
00107$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 176: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
	ld	a, (0x13, sp)
	inc	a
	ld	0x521d, a
00110$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 181: I2C->CCRL = (uint8_t)result;
	ld	a, xl
	ld	0x521b, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 182: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
	ld	a, xh
	and	a, #0x0f
	or	a, (0x05, sp)
	ld	0x521c, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 185: I2C->CR1 |= I2C_CR1_PE;
	bset	0x5210, #0
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 188: I2C_AcknowledgeConfig(Ack);
	ld	a, (0x11, sp)
	call	_I2C_AcknowledgeConfig
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 191: I2C->OARL = (uint8_t)(OwnAddress);
	ld	a, (0x0f, sp)
	ld	0x5213, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 192: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
	ld	a, (0x12, sp)
	or	a, #0x40
	ld	(0x07, sp), a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 193: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
	clr	a
	ld	xl, a
	ld	a, (0x0e, sp)
	and	a, #0x03
	ld	xh, a
	ld	a, #0x80
	div	x, a
	ld	a, xl
	or	a, (0x07, sp)
	ld	0x5214, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 194: }
	ldw	x, (8, sp)
	addw	sp, #19
	jp	(x)
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 202: void I2C_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_Cmd
;	-----------------------------------------
_I2C_Cmd:
	push	a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 205: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0xcd
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
	ld	a, 0x5210
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 207: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
	or	a, #0x01
	ld	0x5210, a
	jra	00104$
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 215: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
	and	a, #0xfe
	ld	0x5210, a
00104$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 217: }
	pop	a
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 225: void I2C_GeneralCallCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_GeneralCallCmd
;	-----------------------------------------
_I2C_GeneralCallCmd:
	push	a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 228: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0xe4
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 233: I2C->CR1 |= I2C_CR1_ENGC;
	ld	a, 0x5210
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 230: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 233: I2C->CR1 |= I2C_CR1_ENGC;
	or	a, #0x40
	ld	0x5210, a
	jra	00104$
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 238: I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
	and	a, #0xbf
	ld	0x5210, a
00104$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 240: }
	pop	a
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 250: void I2C_GenerateSTART(FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_GenerateSTART
;	-----------------------------------------
_I2C_GenerateSTART:
	push	a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 253: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0xfd
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 258: I2C->CR2 |= I2C_CR2_START;
	ld	a, 0x5211
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 255: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 258: I2C->CR2 |= I2C_CR2_START;
	or	a, #0x01
	ld	0x5211, a
	jra	00104$
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 263: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
	and	a, #0xfe
	ld	0x5211, a
00104$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 265: }
	pop	a
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 273: void I2C_GenerateSTOP(FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_GenerateSTOP
;	-----------------------------------------
_I2C_GenerateSTOP:
	push	a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 276: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0x14
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 281: I2C->CR2 |= I2C_CR2_STOP;
	ld	a, 0x5211
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 278: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 281: I2C->CR2 |= I2C_CR2_STOP;
	or	a, #0x02
	ld	0x5211, a
	jra	00104$
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 286: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
	and	a, #0xfd
	ld	0x5211, a
00104$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 288: }
	pop	a
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 296: void I2C_SoftwareResetCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_SoftwareResetCmd
;	-----------------------------------------
_I2C_SoftwareResetCmd:
	push	a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 299: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0x2b
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 304: I2C->CR2 |= I2C_CR2_SWRST;
	ld	a, 0x5211
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 301: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 304: I2C->CR2 |= I2C_CR2_SWRST;
	or	a, #0x80
	ld	0x5211, a
	jra	00104$
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 309: I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
	and	a, #0x7f
	ld	0x5211, a
00104$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 311: }
	pop	a
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 320: void I2C_StretchClockCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_StretchClockCmd
;	-----------------------------------------
_I2C_StretchClockCmd:
	push	a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 323: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	ld	(0x01, sp), a
	jreq	00107$
	ld	a, (0x01, sp)
	dec	a
	jreq	00107$
	push	#0x43
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 328: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
	ld	a, 0x5210
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 325: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 328: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
	and	a, #0x7f
	ld	0x5210, a
	jra	00104$
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 334: I2C->CR1 |= I2C_CR1_NOSTRETCH;
	or	a, #0x80
	ld	0x5210, a
00104$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 336: }
	pop	a
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 345: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
;	-----------------------------------------
;	 function I2C_AcknowledgeConfig
;	-----------------------------------------
_I2C_AcknowledgeConfig:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 348: assert_param(IS_I2C_ACK_OK(Ack));
	ld	xl, a
	dec	a
	jrne	00143$
	ld	a, #0x01
	ld	xh, a
	jra	00144$
00143$:
	clr	a
	ld	xh, a
00144$:
	ld	a, xl
	tnz	a
	jreq	00110$
	ld	a, xh
	tnz	a
	jrne	00110$
	ld	a, xl
	cp	a, #0x02
	jreq	00110$
	pushw	x
	push	#0x5c
	push	#0x01
	push	#0x00
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
	popw	x
00110$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
	ld	a, 0x5211
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 350: if (Ack == I2C_ACK_NONE)
	exg	a, xl
	tnz	a
	exg	a, xl
	jrne	00105$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
	and	a, #0xfb
	ld	0x5211, a
	ret
00105$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 358: I2C->CR2 |= I2C_CR2_ACK;
	or	a, #0x04
	ld	0x5211, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
	ld	a, 0x5211
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 360: if (Ack == I2C_ACK_CURR)
	push	a
	ld	a, xh
	tnz	a
	pop	a
	jreq	00102$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 363: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
	and	a, #0xf7
	ld	0x5211, a
	ret
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 368: I2C->CR2 |= I2C_CR2_POS;
	or	a, #0x08
	ld	0x5211, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 371: }
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 381: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_ITConfig
;	-----------------------------------------
_I2C_ITConfig:
	push	a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 384: assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
	cp	a, #0x01
	jreq	00107$
	cp	a, #0x02
	jreq	00107$
	cp	a, #0x04
	jreq	00107$
	cp	a, #0x03
	jreq	00107$
	cp	a, #0x05
	jreq	00107$
	cp	a, #0x06
	jreq	00107$
	cp	a, #0x07
	jreq	00107$
	push	a
	push	#0x80
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
	pop	a
00107$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 385: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x04, sp)
	jreq	00127$
	push	a
	ld	a, (0x05, sp)
	dec	a
	pop	a
	jreq	00127$
	push	a
	push	#0x81
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
	pop	a
00127$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 390: I2C->ITR |= (uint8_t)I2C_IT;
	ldw	x, #0x521a
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 387: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 390: I2C->ITR |= (uint8_t)I2C_IT;
	or	a, (0x01, sp)
	ld	0x521a, a
	jra	00104$
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 395: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
	cpl	a
	and	a, (0x01, sp)
	ld	0x521a, a
00104$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 397: }
	pop	a
	popw	x
	pop	a
	jp	(x)
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 405: void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
;	-----------------------------------------
;	 function I2C_FastModeDutyCycleConfig
;	-----------------------------------------
_I2C_FastModeDutyCycleConfig:
	push	a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 408: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
	cp	a, #0x40
	jrne	00127$
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	.byte 0xc5
00127$:
	clr	(0x01, sp)
00128$:
	tnz	a
	jreq	00107$
	tnz	(0x01, sp)
	jrne	00107$
	push	#0x98
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00107$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 413: I2C->CCRH |= I2C_CCRH_DUTY;
	ld	a, 0x521c
	ld	xl, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 410: if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
	ld	a, (0x01, sp)
	jreq	00102$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 413: I2C->CCRH |= I2C_CCRH_DUTY;
	ld	a, xl
	or	a, #0x40
	ld	0x521c, a
	jra	00104$
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 418: I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
	ld	a, xl
	and	a, #0xbf
	ld	0x521c, a
00104$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 420: }
	pop	a
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 427: uint8_t I2C_ReceiveData(void)
;	-----------------------------------------
;	 function I2C_ReceiveData
;	-----------------------------------------
_I2C_ReceiveData:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 430: return ((uint8_t)I2C->DR);
	ld	a, 0x5216
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 431: }
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 440: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
;	-----------------------------------------
;	 function I2C_Send7bitAddress
;	-----------------------------------------
_I2C_Send7bitAddress:
	push	a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 443: assert_param(IS_I2C_ADDRESS_OK(Address));
	ld	(0x01, sp), a
	srl	a
	jrnc	00104$
	push	#0xbb
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00104$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 444: assert_param(IS_I2C_DIRECTION_OK(Direction));
	tnz	(0x04, sp)
	jreq	00106$
	ld	a, (0x04, sp)
	dec	a
	jreq	00106$
	push	#0xbc
	push	#0x01
	clrw	x
	pushw	x
	ldw	x, #(___str_0+0)
	call	_assert_failed
00106$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 447: Address &= (uint8_t)0xFE;
	ld	a, (0x01, sp)
	and	a, #0xfe
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 450: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
	or	a, (0x04, sp)
	ld	0x5216, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 451: }
	pop	a
	popw	x
	pop	a
	jp	(x)
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 458: void I2C_SendData(uint8_t Data)
;	-----------------------------------------
;	 function I2C_SendData
;	-----------------------------------------
_I2C_SendData:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 461: I2C->DR = Data;
	ld	0x5216, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 462: }
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 578: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
;	-----------------------------------------
;	 function I2C_CheckEvent
;	-----------------------------------------
_I2C_CheckEvent:
	sub	sp, #6
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 580: __IO uint16_t lastevent = 0x00;
	clr	(0x02, sp)
	clr	(0x01, sp)
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 586: assert_param(IS_I2C_EVENT_OK(I2C_Event));
	cpw	x, #0x0004
	jrne	00247$
	ld	a, #0x01
	.byte 0x21
00247$:
	clr	a
00248$:
	cpw	x, #0x0682
	jreq	00110$
	cpw	x, #0x0202
	jreq	00110$
	cpw	x, #0x1200
	jreq	00110$
	cpw	x, #0x0240
	jreq	00110$
	cpw	x, #0x0350
	jreq	00110$
	cpw	x, #0x0684
	jreq	00110$
	cpw	x, #0x0794
	jreq	00110$
	tnz	a
	jrne	00110$
	cpw	x, #0x0010
	jreq	00110$
	cpw	x, #0x0301
	jreq	00110$
	cpw	x, #0x0782
	jreq	00110$
	cpw	x, #0x0302
	jreq	00110$
	cpw	x, #0x0340
	jreq	00110$
	cpw	x, #0x0784
	jreq	00110$
	cpw	x, #0x0780
	jreq	00110$
	cpw	x, #0x0308
	jreq	00110$
	push	a
	pushw	x
	push	#0x4a
	push	#0x02
	push	#0x00
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
	popw	x
	pop	a
00110$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 588: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
	tnz	a
	jreq	00102$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 590: lastevent = I2C->SR2 & I2C_SR2_AF;
	ld	a, 0x5218
	and	a, #0x04
	clrw	y
	ld	yl, a
	ldw	(0x01, sp), y
	jra	00103$
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 594: flag1 = I2C->SR1;
	ld	a, 0x5217
	ld	(0x06, sp), a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 595: flag2 = I2C->SR3;
	ld	a, 0x5219
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 596: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
	ld	yh, a
	clr	(0x04, sp)
	ld	a, (0x06, sp)
	clr	(0x05, sp)
	or	a, (0x04, sp)
	rlwa	y
	or	a, (0x05, sp)
	ld	yh, a
	ldw	(0x01, sp), y
00103$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 599: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
	ld	a, xl
	and	a, (0x02, sp)
	ld	(0x06, sp), a
	ld	a, xh
	and	a, (0x01, sp)
	ld	(0x05, sp), a
	cpw	x, (0x05, sp)
	jrne	00105$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 602: status = SUCCESS;
	ld	a, #0x01
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 607: status = ERROR;
	.byte 0x21
00105$:
	clr	a
00106$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 611: return status;
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 612: }
	addw	sp, #6
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 628: I2C_Event_TypeDef I2C_GetLastEvent(void)
;	-----------------------------------------
;	 function I2C_GetLastEvent
;	-----------------------------------------
_I2C_GetLastEvent:
	sub	sp, #4
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 630: __IO uint16_t lastevent = 0;
	clrw	x
	ldw	(0x01, sp), x
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 634: if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
	btjf	0x5218, #2, 00102$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 636: lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
	ldw	x, #0x0004
	ldw	(0x01, sp), x
	jra	00103$
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 641: flag1 = I2C->SR1;
	ld	a, 0x5217
	ld	(0x04, sp), a
	clr	(0x03, sp)
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 642: flag2 = I2C->SR3;
	ld	a, 0x5219
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 645: lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
	ld	xh, a
	ld	a, (0x04, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
	ldw	(0x01, sp), x
00103$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 648: return (I2C_Event_TypeDef)lastevent;
	ldw	x, (0x01, sp)
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 649: }
	addw	sp, #4
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 679: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
;	-----------------------------------------
;	 function I2C_GetFlagStatus
;	-----------------------------------------
_I2C_GetFlagStatus:
	sub	sp, #3
	ldw	(0x02, sp), x
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 681: uint8_t tempreg = 0;
	clr	(0x01, sp)
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 686: assert_param(IS_I2C_FLAG_OK(I2C_Flag));
	ldw	x, (0x02, sp)
	cpw	x, #0x0180
	jreq	00112$
	cpw	x, #0x0140
	jreq	00112$
	cpw	x, #0x0110
	jreq	00112$
	cpw	x, #0x0108
	jreq	00112$
	cpw	x, #0x0104
	jreq	00112$
	cpw	x, #0x0102
	jreq	00112$
	cpw	x, #0x0101
	jreq	00112$
	cpw	x, #0x0220
	jreq	00112$
	cpw	x, #0x0208
	jreq	00112$
	cpw	x, #0x0204
	jreq	00112$
	cpw	x, #0x0202
	jreq	00112$
	cpw	x, #0x0201
	jreq	00112$
	cpw	x, #0x0310
	jreq	00112$
	cpw	x, #0x0304
	jreq	00112$
	cpw	x, #0x0302
	jreq	00112$
	cpw	x, #0x0301
	jreq	00112$
	pushw	x
	push	#0xae
	push	#0x02
	push	#0x00
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
	popw	x
00112$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 689: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
	ld	a, xh
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 691: switch (regindex)
	cp	a, #0x01
	jreq	00101$
	cp	a, #0x02
	jreq	00102$
	cp	a, #0x03
	jreq	00103$
	jra	00105$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 694: case 0x01:
00101$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 695: tempreg = (uint8_t)I2C->SR1;
	ld	a, 0x5217
	ld	(0x01, sp), a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 696: break;
	jra	00105$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 699: case 0x02:
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 700: tempreg = (uint8_t)I2C->SR2;
	ld	a, 0x5218
	ld	(0x01, sp), a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 701: break;
	jra	00105$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 704: case 0x03:
00103$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 705: tempreg = (uint8_t)I2C->SR3;
	ld	a, 0x5219
	ld	(0x01, sp), a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 710: }
00105$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 713: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
	ld	a, (0x03, sp)
	and	a, (0x01, sp)
	jreq	00107$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 716: bitstatus = SET;
	ld	a, #0x01
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 721: bitstatus = RESET;
	.byte 0x21
00107$:
	clr	a
00108$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 724: return bitstatus;
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 725: }
	addw	sp, #3
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 759: void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
;	-----------------------------------------
;	 function I2C_ClearFlag
;	-----------------------------------------
_I2C_ClearFlag:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 763: assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
	ld	a, xh
	bcp	a, #0xfd
	jrne	00103$
	tnzw	x
	jrne	00104$
00103$:
	pushw	x
	push	#0xfb
	push	#0x02
	push	#0x00
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
	popw	x
00104$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 766: flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
	clr	a
	ld	xh, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 768: I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
	cplw	x
	ld	a, xl
	ld	0x5218, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 769: }
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 791: ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
;	-----------------------------------------
;	 function I2C_GetITStatus
;	-----------------------------------------
_I2C_GetITStatus:
	sub	sp, #6
	ldw	(0x05, sp), x
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 794: __IO uint8_t enablestatus = 0;
	clr	(0x03, sp)
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 798: assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
	ldw	x, (0x05, sp)
	cpw	x, #0x1680
	jreq	00115$
	cpw	x, #0x1640
	jreq	00115$
	cpw	x, #0x1210
	jreq	00115$
	cpw	x, #0x1208
	jreq	00115$
	cpw	x, #0x1204
	jreq	00115$
	cpw	x, #0x1202
	jreq	00115$
	cpw	x, #0x1201
	jreq	00115$
	cpw	x, #0x2220
	jreq	00115$
	cpw	x, #0x2108
	jreq	00115$
	cpw	x, #0x2104
	jreq	00115$
	cpw	x, #0x2102
	jreq	00115$
	cpw	x, #0x2101
	jreq	00115$
	pushw	x
	push	#0x1e
	push	#0x03
	push	#0x00
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
	popw	x
00115$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 800: tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
	clr	(0x02, sp)
	ld	a, xh
	and	a, #0x07
	ld	(0x04, sp), a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 803: enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
	ld	a, 0x521a
	and	a, (0x04, sp)
	ld	(0x03, sp), a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 805: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
	clr	a
	rlwa	x
	and	a, #0x30
	ld	xh, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 808: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
	ld	a, (0x06, sp)
	ld	(0x04, sp), a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 805: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
	cpw	x, #0x0100
	jrne	00110$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 808: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
	ld	a, 0x5217
	and	a, (0x04, sp)
	jreq	00102$
	tnz	(0x03, sp)
	jreq	00102$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 811: bitstatus = SET;
	ld	a, #0x01
	jra	00111$
00102$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 816: bitstatus = RESET;
	clr	a
	jra	00111$
00110$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 822: if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
	ld	a, 0x5218
	and	a, (0x04, sp)
	jreq	00106$
	tnz	(0x03, sp)
	jreq	00106$
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 825: bitstatus = SET;
	ld	a, #0x01
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 830: bitstatus = RESET;
	.byte 0x21
00106$:
	clr	a
00111$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 834: return  bitstatus;
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 835: }
	addw	sp, #6
	ret
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 871: void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
;	-----------------------------------------
;	 function I2C_ClearITPendingBit
;	-----------------------------------------
_I2C_ClearITPendingBit:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 876: assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
	cpw	x, #0x2220
	jreq	00104$
	cpw	x, #0x2108
	jreq	00104$
	cpw	x, #0x2104
	jreq	00104$
	cpw	x, #0x2102
	jreq	00104$
	cpw	x, #0x2101
	jreq	00104$
	pushw	x
	push	#0x6c
	push	#0x03
	push	#0x00
	push	#0x00
	ldw	x, #(___str_0+0)
	call	_assert_failed
	popw	x
00104$:
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 879: flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
	clr	a
	ld	xh, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 882: I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
	cplw	x
	ld	a, xl
	ld	0x5218, a
;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 883: }
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	.ascii "C:"
	.db 0x5c
	.ascii "Users"
	.db 0x5c
	.ascii "disan"
	.db 0x5c
	.ascii ".platformio"
	.db 0x5c
	.ascii "packages"
	.db 0x5c
	.ascii "framework-ststm8spl"
	.db 0x5c
	.ascii "Libraries"
	.db 0x5c
	.ascii "STM8S_StdPeriph_Driver"
	.db 0x5c
	.ascii "src"
	.db 0x5c
	.ascii "stm8s_i2c.c"
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
