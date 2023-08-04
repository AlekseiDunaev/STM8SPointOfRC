;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Mac OS X x86_64)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _UART_Setup
	.globl _GPIO_Setup
	.globl _Clock_Setup
	.globl _BME280_SetMode
	.globl _BME280_SetOversamplingHum
	.globl _BME280_SetOversamplingPressure
	.globl _BME280_SetOversamplingTemper
	.globl _BME280_SetFilter
	.globl _BME280_ReadCoefficients
	.globl _BME280_ReadStatus
	.globl _BME280_ReadReg
	.globl _BME280_WriteReg
	.globl _BME280_Setup
	.globl _Error
	.globl _DS18X20_Setup
	.globl _DS18X20_Get_Temperature
	.globl _DS18X20_Read_ID
	.globl _DS18X20_Reset
	.globl _I2C_Setup
	.globl _delay_ms
	.globl _free
	.globl _malloc
	.globl _puts
	.globl _sprintf
	.globl _printf
	.globl _UART2_GetFlagStatus
	.globl _UART2_SendData8
	.globl _UART2_ReceiveData8
	.globl _UART2_Init
	.globl _UART2_DeInit
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
	.globl _GPIO_Init
	.globl _GPIO_DeInit
	.globl _CLK_GetFlagStatus
	.globl _CLK_SYSCLKConfig
	.globl _CLK_HSIPrescalerConfig
	.globl _CLK_ClockSwitchConfig
	.globl _CLK_PeripheralClockConfig
	.globl _CLK_ClockSwitchCmd
	.globl _CLK_LSICmd
	.globl _CLK_HSICmd
	.globl _CLK_HSECmd
	.globl _CLK_DeInit
	.globl _fAHTX0Temperature
	.globl _fAHTX0Humidity
	.globl _fDS18X20Temperature
	.globl _str1
	.globl _sString
	.globl _iI2CRead
	.globl _iI2CWrite
	.globl _iDS18X20RomID
	.globl _FloatToStr
	.globl _putchar
	.globl _getchar
	.globl _assert_failed
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_iDS18X20RomID::
	.ds 8
_iI2CWrite::
	.ds 3
_iI2CRead::
	.ds 7
_sString::
	.ds 100
_str1::
	.ds 100
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_fDS18X20Temperature::
	.ds 4
_fAHTX0Humidity::
	.ds 4
_fAHTX0Temperature::
	.ds 4
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int _TRAP_IRQHandler ; trap
	int _TLI_IRQHandler ; int0
	int _AWU_IRQHandler ; int1
	int _CLK_IRQHandler ; int2
	int _EXTI_PORTA_IRQHandler ; int3
	int _EXTI_PORTB_IRQHandler ; int4
	int _EXTI_PORTC_IRQHandler ; int5
	int _EXTI_PORTD_IRQHandler ; int6
	int _EXTI_PORTE_IRQHandler ; int7
	int 0x000000 ; int8
	int 0x000000 ; int9
	int _SPI_IRQHandler ; int10
	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
	int _TIM1_CAP_COM_IRQHandler ; int12
	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
	int _TIM2_CAP_COM_IRQHandler ; int14
	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
	int _TIM3_CAP_COM_IRQHandler ; int16
	int 0x000000 ; int17
	int 0x000000 ; int18
	int _I2C_IRQHandler ; int19
	int _UART2_TX_IRQHandler ; int20
	int _UART2_RX_IRQHandler ; int21
	int _ADC1_IRQHandler ; int22
	int _TIM4_UPD_OVF_IRQHandler ; int23
	int _EEPROM_EEC_IRQHandler ; int24
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	src/main.c: 136: void Clock_Setup(void) {
;	-----------------------------------------
;	 function Clock_Setup
;	-----------------------------------------
_Clock_Setup:
;	src/main.c: 137: CLK_DeInit();
	call	_CLK_DeInit
;	src/main.c: 138: CLK_HSECmd(DISABLE);
	clr	a
	call	_CLK_HSECmd
;	src/main.c: 139: CLK_LSICmd(DISABLE);
	clr	a
	call	_CLK_LSICmd
;	src/main.c: 140: CLK_HSICmd(ENABLE);
	ld	a, #0x01
	call	_CLK_HSICmd
;	src/main.c: 141: while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
00101$:
	ldw	x, #0x0102
	call	_CLK_GetFlagStatus
	tnz	a
	jreq	00101$
;	src/main.c: 142: CLK_ClockSwitchCmd(ENABLE);
	ld	a, #0x01
	call	_CLK_ClockSwitchCmd
;	src/main.c: 143: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	clr	a
	call	_CLK_HSIPrescalerConfig
;	src/main.c: 144: CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
	ld	a, #0x80
	call	_CLK_SYSCLKConfig
;	src/main.c: 145: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
	push	#0x01
	push	#0x00
	push	#0xe1
	ld	a, #0x01
	call	_CLK_ClockSwitchConfig
;	src/main.c: 147: CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
	push	#0x00
	ld	a, #0x01
	call	_CLK_PeripheralClockConfig
;	src/main.c: 148: CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
	push	#0x00
	ld	a, #0x12
	call	_CLK_PeripheralClockConfig
;	src/main.c: 150: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
	push	#0x00
	ld	a, #0x07
	call	_CLK_PeripheralClockConfig
;	src/main.c: 151: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
	push	#0x00
	ld	a, #0x05
	call	_CLK_PeripheralClockConfig
;	src/main.c: 152: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
	push	#0x00
	ld	a, #0x04
	call	_CLK_PeripheralClockConfig
;	src/main.c: 153: }
	ret
;	src/main.c: 155: void GPIO_Setup(void) {
;	-----------------------------------------
;	 function GPIO_Setup
;	-----------------------------------------
_GPIO_Setup:
;	src/main.c: 160: GPIO_DeInit(GPIOE);
	ldw	x, #0x5014
	call	_GPIO_DeInit
;	src/main.c: 161: GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
	push	#0xf0
	ld	a, #0x20
	ldw	x, #0x5014
	call	_GPIO_Init
;	src/main.c: 162: }
	ret
;	src/main.c: 164: void UART_Setup() {
;	-----------------------------------------
;	 function UART_Setup
;	-----------------------------------------
_UART_Setup:
;	src/main.c: 165: UART_DEINIT();
	call	_UART2_DeInit
;	src/main.c: 175: UART_INIT((uint32_t)9600, UART_WORDLENGTH_8D, UART_STOPBITS_1, UART_PARITY_NO, UART_SYNCMODE_CLOCK_DISABLE, UART_MODE_TXRX_ENABLE);
	push	#0x0c
	push	#0x80
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x25
	clrw	x
	pushw	x
	call	_UART2_Init
;	src/main.c: 176: }
	ret
;	src/main.c: 186: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	sub	sp, #159
;	src/main.c: 187: Clock_Setup();
	call	_Clock_Setup
;	src/main.c: 188: GPIO_Setup();
	call	_GPIO_Setup
;	src/main.c: 189: DS18X20_Setup();
	call	_DS18X20_Setup
;	src/main.c: 190: I2C_Setup();
	call	_I2C_Setup
;	src/main.c: 191: UART_Setup();
	call	_UART_Setup
;	src/main.c: 192: BME280_Setup();
	call	_BME280_Setup
;	src/main.c: 195: BME280_ReadCoefficients();
	call	_BME280_ReadCoefficients
;	src/main.c: 196: BME280_SetFilter(BME280_FILTER_4);
	ld	a, #0x08
	call	_BME280_SetFilter
;	src/main.c: 197: BME280_SetOversamplingTemper(BME280_OSRS_T_x4);
	ld	a, #0x60
	call	_BME280_SetOversamplingTemper
;	src/main.c: 198: BME280_SetOversamplingPressure(BME280_OSRS_P_x2);
	ld	a, #0x08
	call	_BME280_SetOversamplingPressure
;	src/main.c: 199: BME280_SetOversamplingHum(BME280_OSRS_H_x1);
	ld	a, #0x01
	call	_BME280_SetOversamplingHum
;	src/main.c: 201: uint16_t value32 = BME280_ReadReg(BME280_REG_CTRL_MEAS);
	ld	a, #0xf4
	call	_BME280_ReadReg
	clrw	x
	ld	xl, a
;	src/main.c: 202: value32 |= BME280_ReadReg(BME280_REG_CTRL_HUM) << 8;
	pushw	x
	ld	a, #0xf2
	call	_BME280_ReadReg
	popw	x
	clr	(0x9f, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x9f, sp)
	ld	xl, a
;	src/main.c: 203: sprintf(str1, "Measurements status: %04X\r\n", value32);
	ldw	(0x9a, sp), x
	pushw	x
	push	#<(___str_3+0)
	push	#((___str_3+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 204: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 208: ((value32 >> 8) & BME280_OSRS_H_MSK) ? "ON" : "OFF");
	ld	a, (0x9a, sp)
	bcp	a, #0x07
	jreq	00121$
	ldw	x, #(___str_6+0)
	ldw	(0x9e, sp), x
	jra	00122$
00121$:
	ldw	x, #(___str_7+0)
	ldw	(0x9e, sp), x
00122$:
	ldw	y, (0x9e, sp)
	ldw	(0x9c, sp), y
;	src/main.c: 207: (value32 & BME280_OSRS_P_MSK) ? "ON" : "OFF",
	ld	a, (0x9b, sp)
	bcp	a, #0x1c
	jreq	00123$
	ldw	x, #___str_6+0
	.byte 0xbc
00123$:
	ldw	x, #(___str_7+0)
00124$:
	ldw	(0x9e, sp), x
;	src/main.c: 206: (value32 & BME280_OSRS_T_MSK) ? "ON" : "OFF",
	ld	a, (0x9b, sp)
	bcp	a, #0xe0
	jreq	00125$
	ldw	x, #___str_6+0
	.byte 0xbc
00125$:
	ldw	x, #(___str_7+0)
00126$:
;	src/main.c: 205: sprintf(str1, "Temperature: %s\r\nPressure: %s\r\nHumidity: %s\r\n",
	ldw	y, (0x9c, sp)
	pushw	y
	ldw	y, (0xa0, sp)
	pushw	y
	pushw	x
	push	#<(___str_5+0)
	push	#((___str_5+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #10
;	src/main.c: 209: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 210: BME280_SetMode(BME280_MODE_NORMAL);
	ld	a, #0x03
	call	_BME280_SetMode
;	src/main.c: 215: while (1) {
00111$:
;	src/main.c: 223: const char placeholderDS18X20String[] = "{\"topic\" : \"mqtt\/temperature-room\", \"value\" : \"%s\"}";
	ld	a, #0x7b
	ld	(0x01, sp), a
	ld	a, #0x22
	ld	(0x02, sp), a
	ld	a, #0x74
	ld	(0x03, sp), a
	ld	a, #0x6f
	ld	(0x04, sp), a
	ld	a, #0x70
	ld	(0x05, sp), a
	ld	a, #0x69
	ld	(0x06, sp), a
	ld	a, #0x63
	ld	(0x07, sp), a
	ld	a, #0x22
	ld	(0x08, sp), a
	ld	a, #0x20
	ld	(0x09, sp), a
	ld	a, #0x3a
	ld	(0x0a, sp), a
	ld	a, #0x20
	ld	(0x0b, sp), a
	ld	a, #0x22
	ld	(0x0c, sp), a
	ld	a, #0x6d
	ld	(0x0d, sp), a
	ld	a, #0x71
	ld	(0x0e, sp), a
	ld	a, #0x74
	ld	(0x0f, sp), a
	ld	(0x10, sp), a
	ld	a, #0x2f
	ld	(0x11, sp), a
	ld	a, #0x74
	ld	(0x12, sp), a
	ld	a, #0x65
	ld	(0x13, sp), a
	ld	a, #0x6d
	ld	(0x14, sp), a
	ld	a, #0x70
	ld	(0x15, sp), a
	ld	a, #0x65
	ld	(0x16, sp), a
	ld	a, #0x72
	ld	(0x17, sp), a
	ld	a, #0x61
	ld	(0x18, sp), a
	ld	a, #0x74
	ld	(0x19, sp), a
	ld	a, #0x75
	ld	(0x1a, sp), a
	ld	a, #0x72
	ld	(0x1b, sp), a
	ld	a, #0x65
	ld	(0x1c, sp), a
	ld	a, #0x2d
	ld	(0x1d, sp), a
	ld	a, #0x72
	ld	(0x1e, sp), a
	ld	a, #0x6f
	ld	(0x1f, sp), a
	ld	(0x20, sp), a
	ld	a, #0x6d
	ld	(0x21, sp), a
	ld	a, #0x22
	ld	(0x22, sp), a
	ld	a, #0x2c
	ld	(0x23, sp), a
	ld	a, #0x20
	ld	(0x24, sp), a
	ld	a, #0x22
	ld	(0x25, sp), a
	ld	a, #0x76
	ld	(0x26, sp), a
	ld	a, #0x61
	ld	(0x27, sp), a
	ld	a, #0x6c
	ld	(0x28, sp), a
	ld	a, #0x75
	ld	(0x29, sp), a
	ld	a, #0x65
	ld	(0x2a, sp), a
	ld	a, #0x22
	ld	(0x2b, sp), a
	ld	a, #0x20
	ld	(0x2c, sp), a
	ld	a, #0x3a
	ld	(0x2d, sp), a
	ld	a, #0x20
	ld	(0x2e, sp), a
	ld	a, #0x22
	ld	(0x2f, sp), a
	ld	a, #0x25
	ld	(0x30, sp), a
	ld	a, #0x73
	ld	(0x31, sp), a
	ld	a, #0x22
	ld	(0x32, sp), a
	ld	a, #0x7d
	ld	(0x33, sp), a
	clr	(0x34, sp)
;	src/main.c: 224: const char placeholderHumidityAHTX0String[] = "{\"topic\" : \"mqtt\/humidity-aht20\", \"value\": \"%s\"}";
	ld	a, #0x7b
	ld	(0x35, sp), a
	ld	a, #0x22
	ld	(0x36, sp), a
	ld	a, #0x74
	ld	(0x37, sp), a
	ld	a, #0x6f
	ld	(0x38, sp), a
	ld	a, #0x70
	ld	(0x39, sp), a
	ld	a, #0x69
	ld	(0x3a, sp), a
	ld	a, #0x63
	ld	(0x3b, sp), a
	ld	a, #0x22
	ld	(0x3c, sp), a
	ld	a, #0x20
	ld	(0x3d, sp), a
	ld	a, #0x3a
	ld	(0x3e, sp), a
	ld	a, #0x20
	ld	(0x3f, sp), a
	ld	a, #0x22
	ld	(0x40, sp), a
	ld	a, #0x6d
	ld	(0x41, sp), a
	ld	a, #0x71
	ld	(0x42, sp), a
	ld	a, #0x74
	ld	(0x43, sp), a
	ld	(0x44, sp), a
	ld	a, #0x2f
	ld	(0x45, sp), a
	ld	a, #0x68
	ld	(0x46, sp), a
	ld	a, #0x75
	ld	(0x47, sp), a
	ld	a, #0x6d
	ld	(0x48, sp), a
	ld	a, #0x69
	ld	(0x49, sp), a
	ld	a, #0x64
	ld	(0x4a, sp), a
	ld	a, #0x69
	ld	(0x4b, sp), a
	ld	a, #0x74
	ld	(0x4c, sp), a
	ld	a, #0x79
	ld	(0x4d, sp), a
	ld	a, #0x2d
	ld	(0x4e, sp), a
	ld	a, #0x61
	ld	(0x4f, sp), a
	ld	a, #0x68
	ld	(0x50, sp), a
	ld	a, #0x74
	ld	(0x51, sp), a
	ld	a, #0x32
	ld	(0x52, sp), a
	ld	a, #0x30
	ld	(0x53, sp), a
	ld	a, #0x22
	ld	(0x54, sp), a
	ld	a, #0x2c
	ld	(0x55, sp), a
	ld	a, #0x20
	ld	(0x56, sp), a
	ld	a, #0x22
	ld	(0x57, sp), a
	ld	a, #0x76
	ld	(0x58, sp), a
	ld	a, #0x61
	ld	(0x59, sp), a
	ld	a, #0x6c
	ld	(0x5a, sp), a
	ld	a, #0x75
	ld	(0x5b, sp), a
	ld	a, #0x65
	ld	(0x5c, sp), a
	ld	a, #0x22
	ld	(0x5d, sp), a
	ld	a, #0x3a
	ld	(0x5e, sp), a
	ld	a, #0x20
	ld	(0x5f, sp), a
	ld	a, #0x22
	ld	(0x60, sp), a
	ld	a, #0x25
	ld	(0x61, sp), a
	ld	a, #0x73
	ld	(0x62, sp), a
	ld	a, #0x22
	ld	(0x63, sp), a
	ld	a, #0x7d
	ld	(0x64, sp), a
	clr	(0x65, sp)
;	src/main.c: 225: const char placeholderTemperatureAHTX0String[] = "{\"topic\" : \"mqtt\/temperature-aht20\", \"value\": \"%s\"}";
	ld	a, #0x7b
	ld	(0x66, sp), a
	ld	a, #0x22
	ld	(0x67, sp), a
	ld	a, #0x74
	ld	(0x68, sp), a
	ld	a, #0x6f
	ld	(0x69, sp), a
	ld	a, #0x70
	ld	(0x6a, sp), a
	ld	a, #0x69
	ld	(0x6b, sp), a
	ld	a, #0x63
	ld	(0x6c, sp), a
	ld	a, #0x22
	ld	(0x6d, sp), a
	ld	a, #0x20
	ld	(0x6e, sp), a
	ld	a, #0x3a
	ld	(0x6f, sp), a
	ld	a, #0x20
	ld	(0x70, sp), a
	ld	a, #0x22
	ld	(0x71, sp), a
	ld	a, #0x6d
	ld	(0x72, sp), a
	ld	a, #0x71
	ld	(0x73, sp), a
	ld	a, #0x74
	ld	(0x74, sp), a
	ld	(0x75, sp), a
	ld	a, #0x2f
	ld	(0x76, sp), a
	ld	a, #0x74
	ld	(0x77, sp), a
	ld	a, #0x65
	ld	(0x78, sp), a
	ld	a, #0x6d
	ld	(0x79, sp), a
	ld	a, #0x70
	ld	(0x7a, sp), a
	ld	a, #0x65
	ld	(0x7b, sp), a
	ld	a, #0x72
	ld	(0x7c, sp), a
	ld	a, #0x61
	ld	(0x7d, sp), a
	ld	a, #0x74
	ld	(0x7e, sp), a
	ld	a, #0x75
	ld	(0x7f, sp), a
	ld	a, #0x72
	ld	(0x80, sp), a
	ld	a, #0x65
	ld	(0x81, sp), a
	ld	a, #0x2d
	ld	(0x82, sp), a
	ld	a, #0x61
	ld	(0x83, sp), a
	ld	a, #0x68
	ld	(0x84, sp), a
	ld	a, #0x74
	ld	(0x85, sp), a
	ld	a, #0x32
	ld	(0x86, sp), a
	ld	a, #0x30
	ld	(0x87, sp), a
	ld	a, #0x22
	ld	(0x88, sp), a
	ld	a, #0x2c
	ld	(0x89, sp), a
	ld	a, #0x20
	ld	(0x8a, sp), a
	ld	a, #0x22
	ld	(0x8b, sp), a
	ld	a, #0x76
	ld	(0x8c, sp), a
	ld	a, #0x61
	ld	(0x8d, sp), a
	ld	a, #0x6c
	ld	(0x8e, sp), a
	ld	a, #0x75
	ld	(0x8f, sp), a
	ld	a, #0x65
	ld	(0x90, sp), a
	ld	a, #0x22
	ld	(0x91, sp), a
	ld	a, #0x3a
	ld	(0x92, sp), a
	ld	a, #0x20
	ld	(0x93, sp), a
	ld	a, #0x22
	ld	(0x94, sp), a
	ld	a, #0x25
	ld	(0x95, sp), a
	ld	a, #0x73
	ld	(0x96, sp), a
	ld	a, #0x22
	ld	(0x97, sp), a
	ld	a, #0x7d
	ld	(0x98, sp), a
	clr	(0x99, sp)
;	src/main.c: 228: LED_ON;
	ld	a, #0x20
	ldw	x, #0x5014
	call	_GPIO_WriteLow
;	src/main.c: 231: DS18X20_Reset();
	call	_DS18X20_Reset
;	src/main.c: 233: delay_ms(2000);
	ldw	x, #0x07d0
	call	_delay_ms
;	src/main.c: 235: if (!DS18X20_Read_ID(iDS18X20RomID)) {
	ldw	x, #(_iDS18X20RomID+0)
	call	_DS18X20_Read_ID
	tnz	a
	jrne	00103$
;	src/main.c: 236: for (uint8_t i = 0; i < 8; i++) {
	clr	a
00114$:
	cp	a, #0x08
	jrnc	00103$
;	src/main.c: 237: iDS18X20RomID[i] = 0;
	clrw	x
	ld	xl, a
	clr	((_iDS18X20RomID+0), x)
;	src/main.c: 236: for (uint8_t i = 0; i < 8; i++) {
	inc	a
	jra	00114$
00103$:
;	src/main.c: 242: printf("Famaly ID: 0x%02x, ", iDS18X20RomID[0]);
	ld	a, _iDS18X20RomID+0
	clrw	x
	ld	xl, a
	pushw	x
	push	#<(___str_8+0)
	push	#((___str_8+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 243: printf("Sensor ID; ");
	push	#<(___str_9+0)
	push	#((___str_9+0) >> 8)
	call	_printf
	popw	x
;	src/main.c: 245: for (int8_t i = 6; i > 0 ; i--) {
	ld	a, #0x06
	ld	(0x9f, sp), a
00117$:
;	src/main.c: 246: printf("0x%02x ", iDS18X20RomID[i]);
	ld	a, (0x9f, sp)
	cp	a, #0x00
	jrsle	00104$
	ld	xl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	ld	a, (_iDS18X20RomID+0, x)
	clrw	x
	ld	xl, a
	pushw	x
	push	#<(___str_10+0)
	push	#((___str_10+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 245: for (int8_t i = 6; i > 0 ; i--) {
	dec	(0x9f, sp)
	jra	00117$
00104$:
;	src/main.c: 249: printf("\r\n");
	ldw	x, #(___str_12+0)
	call	_puts
;	src/main.c: 252: fDS18X20Temperature = DS18X20_Get_Temperature();
	call	_DS18X20_Get_Temperature
	ldw	_fDS18X20Temperature+2, x
	ldw	_fDS18X20Temperature+0, y
;	src/main.c: 257: FloatToStr(sString, fDS18X20Temperature, integer_bit, decimal_bit);
	push	#0x04
	push	#0x02
	ldw	x, _fDS18X20Temperature+2
	pushw	x
	ldw	x, _fDS18X20Temperature+0
	pushw	x
	ldw	x, #(_sString+0)
	call	_FloatToStr
;	src/main.c: 258: printf("DS18X20 temperature: %s\r\n", sString);
	push	#<(_sString+0)
	push	#((_sString+0) >> 8)
	push	#<(___str_13+0)
	push	#((___str_13+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 264: stringValue = (char*)malloc(sizeValueString * sizeof(char));
	ldw	x, #0x0007
	call	_malloc
	ldw	(0x9c, sp), x
;	src/main.c: 265: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
	ldw	x, #0x003b
	call	_malloc
	ldw	(0x9e, sp), x
;	src/main.c: 267: FloatToStr(stringValue, fDS18X20Temperature, integer_bit, decimal_bit);
	push	#0x04
	push	#0x02
	ldw	x, _fDS18X20Temperature+2
	pushw	x
	ldw	x, _fDS18X20Temperature+0
	pushw	x
	ldw	x, (0xa2, sp)
	call	_FloatToStr
;	src/main.c: 269: sprintf(stringSendUART, placeholderDS18X20String, stringValue);
	ldw	x, (0x9c, sp)
	pushw	x
	ldw	x, sp
	addw	x, #3
	pushw	x
	ldw	x, (0xa2, sp)
	pushw	x
	call	_sprintf
	addw	sp, #6
;	src/main.c: 270: printf("%s\r\n", stringSendUART);
	ldw	x, (0x9e, sp)
	pushw	x
	push	#<(___str_14+0)
	push	#((___str_14+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 272: free(stringSendUART);
	ldw	x, (0x9e, sp)
	call	_free
;	src/main.c: 273: free(stringValue);
	ldw	x, (0x9c, sp)
	call	_free
;	src/main.c: 275: delay_ms(5000);
	ldw	x, #0x1388
	call	_delay_ms
;	src/main.c: 345: uint8_t res = BME280_ReadReg(BME280_REG_ID);
	ld	a, #0xd0
	call	_BME280_ReadReg
;	src/main.c: 346: printf("BME280_ID: 0x%02x", res);
	clrw	x
	ld	xl, a
	push	a
	pushw	x
	push	#<(___str_15+0)
	push	#((___str_15+0) >> 8)
	call	_printf
	addw	sp, #4
	ldw	x, #(___str_12+0)
	call	_puts
	pop	a
;	src/main.c: 350: if (res != BME280_ID) {
	cp	a, #0x60
	jreq	00106$
;	src/main.c: 351: Error();
	call	_Error
;	src/main.c: 352: return;
	jp	00119$
00106$:
;	src/main.c: 355: BME280_WriteReg(BME280_REG_SOFTRESET,BME280_SOFTRESET_VALUE);
	push	#0xb6
	ld	a, #0xe0
	call	_BME280_WriteReg
;	src/main.c: 356: while (BME280_ReadStatus() & BME280_STATUS_IM_UPDATE);
00107$:
	call	_BME280_ReadStatus
	srl	a
	jrc	00107$
;	src/main.c: 358: sprintf(str1, "DIG_T1: %u\r\n", CalibData.dig_T1);
	ldw	x, _CalibData+0
	pushw	x
	push	#<(___str_17+0)
	push	#((___str_17+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 359: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 361: sprintf(str1, "DIG_T2: %d\r\n", CalibData.dig_T2);
	ldw	x, _CalibData+2
	pushw	x
	push	#<(___str_18+0)
	push	#((___str_18+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 362: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 364: sprintf(str1, "DIG_T3: %d\r\n", CalibData.dig_T3);
	ldw	x, _CalibData+4
	pushw	x
	push	#<(___str_19+0)
	push	#((___str_19+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 365: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 367: sprintf(str1, "DIG_P1: %u\r\n", CalibData.dig_P1);
	ldw	x, _CalibData+6
	pushw	x
	push	#<(___str_20+0)
	push	#((___str_20+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 368: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 370: sprintf(str1, "DIG_P2: %d\r\n", CalibData.dig_P2);
	ldw	x, _CalibData+8
	pushw	x
	push	#<(___str_21+0)
	push	#((___str_21+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 371: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 373: sprintf(str1, "DIG_P3: %d\r\n", CalibData.dig_P3);
	ldw	x, _CalibData+10
	pushw	x
	push	#<(___str_22+0)
	push	#((___str_22+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 374: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 376: sprintf(str1, "DIG_P4: %d\r\n", CalibData.dig_P4);
	ldw	x, _CalibData+12
	pushw	x
	push	#<(___str_23+0)
	push	#((___str_23+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 377: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 379: sprintf(str1, "DIG_P5: %d\r\n", CalibData.dig_P5);
	ldw	x, _CalibData+14
	pushw	x
	push	#<(___str_24+0)
	push	#((___str_24+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 380: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 382: sprintf(str1, "DIG_P6: %d\r\n", CalibData.dig_P6);
	ldw	x, _CalibData+16
	pushw	x
	push	#<(___str_25+0)
	push	#((___str_25+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 383: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 385: sprintf(str1, "DIG_P7: %d\r\n", CalibData.dig_P7);
	ldw	x, _CalibData+18
	pushw	x
	push	#<(___str_26+0)
	push	#((___str_26+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 386: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 388: sprintf(str1, "DIG_P8: %d\r\n", CalibData.dig_P8);
	ldw	x, _CalibData+20
	pushw	x
	push	#<(___str_27+0)
	push	#((___str_27+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 389: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 391: sprintf(str1, "DIG_P9: %d\r\n", CalibData.dig_P9);
	ldw	x, _CalibData+22
	pushw	x
	push	#<(___str_28+0)
	push	#((___str_28+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 392: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 394: sprintf(str1, "DIG_H1: %d\r\n", CalibData.dig_H1);
	ld	a, _CalibData+24
	clrw	x
	ld	xl, a
	pushw	x
	push	#<(___str_29+0)
	push	#((___str_29+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 395: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 397: sprintf(str1, "DIG_H2: %d\r\n", CalibData.dig_H2);
	ldw	x, _CalibData+25
	pushw	x
	push	#<(___str_30+0)
	push	#((___str_30+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 398: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 400: sprintf(str1, "DIG_H3: %d\r\n", CalibData.dig_H3);
	ld	a, _CalibData+27
	clrw	x
	ld	xl, a
	pushw	x
	push	#<(___str_31+0)
	push	#((___str_31+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 401: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 403: sprintf(str1, "DIG_H4: %d\r\n", CalibData.dig_H4);
	ldw	x, _CalibData+28
	pushw	x
	push	#<(___str_32+0)
	push	#((___str_32+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 404: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 406: sprintf(str1, "DIG_H5: %d\r\n", CalibData.dig_H5);
	ldw	x, _CalibData+30
	pushw	x
	push	#<(___str_33+0)
	push	#((___str_33+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 407: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 409: sprintf(str1, "DIG_H6: %d\r\n", CalibData.dig_H3);
	ld	a, _CalibData+27
	clrw	x
	ld	xl, a
	pushw	x
	push	#<(___str_34+0)
	push	#((___str_34+0) >> 8)
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	call	_sprintf
	addw	sp, #6
;	src/main.c: 410: printf("%s", str1);
	push	#<(_str1+0)
	push	#((_str1+0) >> 8)
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 416: delay_ms(10000);
	ldw	x, #0x2710
	call	_delay_ms
;	src/main.c: 425: LED_OFF;
	ld	a, #0x20
	ldw	x, #0x5014
	call	_GPIO_WriteHigh
	jp	00111$
00119$:
;	src/main.c: 435: }
	addw	sp, #159
	ret
;	src/main.c: 437: void FloatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit) {
;	-----------------------------------------
;	 function FloatToStr
;	-----------------------------------------
_FloatToStr:
	sub	sp, #17
	ldw	(0x0f, sp), x
;	src/main.c: 439: uint32_t temp = (uint8_t)number/1;
	ldw	x, (0x16, sp)
	pushw	x
	ldw	x, (0x16, sp)
	pushw	x
	call	___fs2uchar
	clrw	x
	ld	xl, a
	ldw	(0x0d, sp), x
	ld	a, (0x0d, sp)
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0c, sp), a
	ld	(0x0b, sp), a
;	src/main.c: 442: for (i = 1; i <= integer_bit; i++) {
	ld	a, #0x01
	ld	(0x11, sp), a
00107$:
;	src/main.c: 444: str[integer_bit - i] = table[0];
	ld	a, (0x18, sp)
	ld	(0x02, sp), a
	clr	(0x01, sp)
;	src/main.c: 442: for (i = 1; i <= integer_bit; i++) {
	ld	a, (0x11, sp)
	cp	a, (0x18, sp)
	jrugt	00104$
;	src/main.c: 444: str[integer_bit - i] = table[0];
	clrw	x
	ld	a, (0x11, sp)
	ld	xl, a
	negw	x
	addw	x, (0x01, sp)
	addw	x, (0x0f, sp)
	ldw	(0x09, sp), x
;	src/main.c: 443: if (temp == 0) {
	ldw	x, (0x0d, sp)
	jrne	00102$
	ldw	x, (0x0b, sp)
	jrne	00102$
;	src/main.c: 444: str[integer_bit - i] = table[0];
	ld	a, _table+0
	ldw	x, (0x09, sp)
	ld	(x), a
	jra	00103$
00102$:
;	src/main.c: 446: str[integer_bit - i] = table[temp%10];
	push	#0x0a
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	__modulong
	addw	sp, #8
	ld	a, (_table+0, x)
	ldw	x, (0x09, sp)
	ld	(x), a
00103$:
;	src/main.c: 448: temp /= 10;
	push	#0x0a
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	ldw	(0x0d, sp), x
	ldw	(0x0b, sp), y
;	src/main.c: 442: for (i = 1; i <= integer_bit; i++) {
	inc	(0x11, sp)
	jra	00107$
00104$:
;	src/main.c: 451: *(str + integer_bit) = '.';
	clrw	x
	ld	a, (0x18, sp)
	ld	xl, a
	addw	x, (0x0f, sp)
	ldw	(0x03, sp), x
	ld	a, #0x2e
	ld	(x), a
;	src/main.c: 453: t2 = number;
	ldw	y, (0x16, sp)
	ldw	(0x0d, sp), y
	ldw	y, (0x14, sp)
	ldw	(0x0b, sp), y
;	src/main.c: 455: for (i = 1; i <= decimal_bit; i++) {
	ld	a, #0x01
	ld	(0x11, sp), a
00110$:
	ld	a, (0x11, sp)
	cp	a, (0x19, sp)
	jrugt	00105$
;	src/main.c: 456: temp = t2 * 10;
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x20
	push	#0x41
	call	___fsmul
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	___fs2ulong
	addw	sp, #4
	ldw	(0x0b, sp), x
;	src/main.c: 457: str[integer_bit + i] = table[temp%10];
	ld	a, (0x11, sp)
	clrw	x
	ld	xl, a
	addw	x, (0x01, sp)
	addw	x, (0x0f, sp)
	ldw	(0x0d, sp), x
	push	#0x0a
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, (0x0f, sp)
	pushw	x
	pushw	y
	call	__modulong
	addw	sp, #8
	ld	a, (_table+0, x)
	ldw	x, (0x0d, sp)
	ld	(x), a
;	src/main.c: 458: t2 *= 10;
	ldw	x, (0x07, sp)
	ldw	y, (0x05, sp)
	ldw	(0x0d, sp), x
	ldw	(0x0b, sp), y
;	src/main.c: 455: for (i = 1; i <= decimal_bit; i++) {
	inc	(0x11, sp)
	jra	00110$
00105$:
;	src/main.c: 461: *(str + integer_bit + 1 + decimal_bit) = '\0';
	ldw	x, (0x03, sp)
	incw	x
	ld	a, xl
	add	a, (0x19, sp)
	rlwa	x
	adc	a, #0x00
	ld	xh, a
	clr	(x)
;	src/main.c: 462: }
	ldw	x, (18, sp)
	addw	sp, #25
	jp	(x)
;	src/main.c: 469: PUTCHAR_PROTOTYPE
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	src/main.c: 472: UART_SENDDATA8(c);
	ld	a, xl
	pushw	x
	call	_UART2_SendData8
	popw	x
;	src/main.c: 474: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
00101$:
	pushw	x
	ldw	x, #0x0080
	call	_UART2_GetFlagStatus
	popw	x
	tnz	a
	jreq	00101$
;	src/main.c: 476: return (c);
;	src/main.c: 477: }
	ret
;	src/main.c: 484: GETCHAR_PROTOTYPE
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	src/main.c: 492: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
00101$:
	ldw	x, #0x0080
	call	_UART2_GetFlagStatus
	tnz	a
	jreq	00101$
;	src/main.c: 493: c = UART_RECEIVEDATA8();
	call	_UART2_ReceiveData8
	clrw	x
;	src/main.c: 494: return (c);
	ld	xl, a
;	src/main.c: 495: }
	ret
;	src/main.c: 506: void assert_failed(uint8_t* file, uint32_t line)
;	-----------------------------------------
;	 function assert_failed
;	-----------------------------------------
_assert_failed:
;	src/main.c: 513: while (1)
00102$:
	jra	00102$
;	src/main.c: 516: }
	ldw	x, (1, sp)
	addw	sp, #6
	jp	(x)
	.area CODE
	.area CONST
_table:
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.area CONST
___str_3:
	.ascii "Measurements status: %04X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_4:
	.ascii "%s"
	.db 0x00
	.area CODE
	.area CONST
___str_5:
	.ascii "Temperature: %s"
	.db 0x0d
	.db 0x0a
	.ascii "Pressure: %s"
	.db 0x0d
	.db 0x0a
	.ascii "Humidity: %s"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_6:
	.ascii "ON"
	.db 0x00
	.area CODE
	.area CONST
___str_7:
	.ascii "OFF"
	.db 0x00
	.area CODE
	.area CONST
___str_8:
	.ascii "Famaly ID: 0x%02x, "
	.db 0x00
	.area CODE
	.area CONST
___str_9:
	.ascii "Sensor ID; "
	.db 0x00
	.area CODE
	.area CONST
___str_10:
	.ascii "0x%02x "
	.db 0x00
	.area CODE
	.area CONST
___str_12:
	.db 0x0d
	.db 0x00
	.area CODE
	.area CONST
___str_13:
	.ascii "DS18X20 temperature: %s"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_14:
	.ascii "%s"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_15:
	.ascii "BME280_ID: 0x%02x"
	.db 0x00
	.area CODE
	.area CONST
___str_17:
	.ascii "DIG_T1: %u"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_18:
	.ascii "DIG_T2: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_19:
	.ascii "DIG_T3: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_20:
	.ascii "DIG_P1: %u"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_21:
	.ascii "DIG_P2: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_22:
	.ascii "DIG_P3: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_23:
	.ascii "DIG_P4: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_24:
	.ascii "DIG_P5: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_25:
	.ascii "DIG_P6: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_26:
	.ascii "DIG_P7: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_27:
	.ascii "DIG_P8: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_28:
	.ascii "DIG_P9: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_29:
	.ascii "DIG_H1: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_30:
	.ascii "DIG_H2: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_31:
	.ascii "DIG_H3: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_32:
	.ascii "DIG_H4: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_33:
	.ascii "DIG_H5: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_34:
	.ascii "DIG_H6: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area INITIALIZER
__xinit__fDS18X20Temperature:
	.byte #0xc2, #0xc8, #0x00, #0x00	; -1.000000e+02
__xinit__fAHTX0Humidity:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
__xinit__fAHTX0Temperature:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.area CABS (ABS)
