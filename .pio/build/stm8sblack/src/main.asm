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
	.globl _fBME280Temperature
	.globl _fBME280Humidity
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
_fBME280Humidity::
	.ds 4
_fBME280Temperature::
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
;	src/main.c: 138: void Clock_Setup(void) {
;	-----------------------------------------
;	 function Clock_Setup
;	-----------------------------------------
_Clock_Setup:
;	src/main.c: 139: CLK_DeInit();
	call	_CLK_DeInit
;	src/main.c: 140: CLK_HSECmd(DISABLE);
	clr	a
	call	_CLK_HSECmd
;	src/main.c: 141: CLK_LSICmd(DISABLE);
	clr	a
	call	_CLK_LSICmd
;	src/main.c: 142: CLK_HSICmd(ENABLE);
	ld	a, #0x01
	call	_CLK_HSICmd
;	src/main.c: 143: while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
00101$:
	ldw	x, #0x0102
	call	_CLK_GetFlagStatus
	tnz	a
	jreq	00101$
;	src/main.c: 144: CLK_ClockSwitchCmd(ENABLE);
	ld	a, #0x01
	call	_CLK_ClockSwitchCmd
;	src/main.c: 145: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	clr	a
	call	_CLK_HSIPrescalerConfig
;	src/main.c: 146: CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
	ld	a, #0x80
	call	_CLK_SYSCLKConfig
;	src/main.c: 147: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
	push	#0x01
	push	#0x00
	push	#0xe1
	ld	a, #0x01
	call	_CLK_ClockSwitchConfig
;	src/main.c: 149: CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
	push	#0x00
	ld	a, #0x01
	call	_CLK_PeripheralClockConfig
;	src/main.c: 150: CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
	push	#0x00
	ld	a, #0x12
	call	_CLK_PeripheralClockConfig
;	src/main.c: 152: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
	push	#0x00
	ld	a, #0x07
	call	_CLK_PeripheralClockConfig
;	src/main.c: 153: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
	push	#0x00
	ld	a, #0x05
	call	_CLK_PeripheralClockConfig
;	src/main.c: 154: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
	push	#0x00
	ld	a, #0x04
	call	_CLK_PeripheralClockConfig
;	src/main.c: 155: }
	ret
;	src/main.c: 157: void GPIO_Setup(void) {
;	-----------------------------------------
;	 function GPIO_Setup
;	-----------------------------------------
_GPIO_Setup:
;	src/main.c: 162: GPIO_DeInit(GPIOE);
	ldw	x, #0x5014
	call	_GPIO_DeInit
;	src/main.c: 163: GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
	push	#0xf0
	ld	a, #0x20
	ldw	x, #0x5014
	call	_GPIO_Init
;	src/main.c: 164: }
	ret
;	src/main.c: 166: void UART_Setup() {
;	-----------------------------------------
;	 function UART_Setup
;	-----------------------------------------
_UART_Setup:
;	src/main.c: 167: UART_DEINIT();
	call	_UART2_DeInit
;	src/main.c: 177: UART_INIT((uint32_t)9600, UART_WORDLENGTH_8D, UART_STOPBITS_1, UART_PARITY_NO, UART_SYNCMODE_CLOCK_DISABLE, UART_MODE_TXRX_ENABLE);
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
;	src/main.c: 178: }
	ret
;	src/main.c: 188: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ldw	y, sp
	subw	y, #15
	sub	sp, #255
	sub	sp, #5
;	src/main.c: 189: Clock_Setup();
	pushw	y
	call	_Clock_Setup
	call	_GPIO_Setup
	call	_DS18X20_Setup
	call	_I2C_Setup
	call	_UART_Setup
	call	_BME280_Setup
	call	_BME280_ReadCoefficients
	ld	a, #0x08
	call	_BME280_SetFilter
	ld	a, #0x60
	call	_BME280_SetOversamplingTemper
	ld	a, #0x08
	call	_BME280_SetOversamplingPressure
	ld	a, #0x01
	call	_BME280_SetOversamplingHum
	ld	a, #0x03
	call	_BME280_SetMode
	popw	y
;	src/main.c: 219: while (1) {
00111$:
;	src/main.c: 226: const char placeholderDS18X20String[] = "{\"topic\" : \"mqtt\/temperature-room\", \"value\" : \"%s\"}";
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
;	src/main.c: 227: const char placeholderHumidityAHTX0String[] = "{\"topic\" : \"mqtt\/humidity-aht20\", \"value\": \"%s\"}";
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
;	src/main.c: 228: const char placeholderTemperatureAHTX0String[] = "{\"topic\" : \"mqtt\/temperature-aht20\", \"value\": \"%s\"}";
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
;	src/main.c: 229: const char placeholderHumidityBME280String[] = "{\"topic\" : \"mqtt\/humidity-bme280\", \"value\": \"%s\"}";
	ld	a, #0x7b
	ld	(0x9a, sp), a
	ld	a, #0x22
	ld	(0x9b, sp), a
	ld	a, #0x74
	ld	(0x9c, sp), a
	ld	a, #0x6f
	ld	(0x9d, sp), a
	ld	a, #0x70
	ld	(0x9e, sp), a
	ld	a, #0x69
	ld	(0x9f, sp), a
	ld	a, #0x63
	ld	(0xa0, sp), a
	ld	a, #0x22
	ld	(0xa1, sp), a
	ld	a, #0x20
	ld	(0xa2, sp), a
	ld	a, #0x3a
	ld	(0xa3, sp), a
	ld	a, #0x20
	ld	(0xa4, sp), a
	ld	a, #0x22
	ld	(0xa5, sp), a
	ld	a, #0x6d
	ld	(0xa6, sp), a
	ld	a, #0x71
	ld	(0xa7, sp), a
	ld	a, #0x74
	ld	(0xa8, sp), a
	ld	(0xa9, sp), a
	ld	a, #0x2f
	ld	(0xaa, sp), a
	ld	a, #0x68
	ld	(0xab, sp), a
	ld	a, #0x75
	ld	(0xac, sp), a
	ld	a, #0x6d
	ld	(0xad, sp), a
	ld	a, #0x69
	ld	(0xae, sp), a
	ld	a, #0x64
	ld	(0xaf, sp), a
	ld	a, #0x69
	ld	(0xb0, sp), a
	ld	a, #0x74
	ld	(0xb1, sp), a
	ld	a, #0x79
	ld	(0xb2, sp), a
	ld	a, #0x2d
	ld	(0xb3, sp), a
	ld	a, #0x62
	ld	(0xb4, sp), a
	ld	a, #0x6d
	ld	(0xb5, sp), a
	ld	a, #0x65
	ld	(0xb6, sp), a
	ld	a, #0x32
	ld	(0xb7, sp), a
	ld	a, #0x38
	ld	(0xb8, sp), a
	ld	a, #0x30
	ld	(0xb9, sp), a
	ld	a, #0x22
	ld	(0xba, sp), a
	ld	a, #0x2c
	ld	(0xbb, sp), a
	ld	a, #0x20
	ld	(0xbc, sp), a
	ld	a, #0x22
	ld	(0xbd, sp), a
	ld	a, #0x76
	ld	(0xbe, sp), a
	ld	a, #0x61
	ld	(0xbf, sp), a
	ld	a, #0x6c
	ld	(0xc0, sp), a
	ld	a, #0x75
	ld	(0xc1, sp), a
	ld	a, #0x65
	ld	(0xc2, sp), a
	ld	a, #0x22
	ld	(0xc3, sp), a
	ld	a, #0x3a
	ld	(0xc4, sp), a
	ld	a, #0x20
	ld	(0xc5, sp), a
	ld	a, #0x22
	ld	(0xc6, sp), a
	ld	a, #0x25
	ld	(0xc7, sp), a
	ld	a, #0x73
	ld	(0xc8, sp), a
	ld	a, #0x22
	ld	(0xc9, sp), a
	ld	a, #0x7d
	ld	(0xca, sp), a
	clr	(0xcb, sp)
;	src/main.c: 230: const char placeholderTemperatureBME280String[] = "{\"topic\" : \"mqtt\/temperature-bme280\", \"value\": \"%s\"}";
	ld	a, #0x7b
	ld	(0xcc, sp), a
	ld	a, #0x22
	ld	(0xcd, sp), a
	ld	a, #0x74
	ld	(0xce, sp), a
	ld	a, #0x6f
	ld	(0xcf, sp), a
	ld	a, #0x70
	ld	(0xd0, sp), a
	ld	a, #0x69
	ld	(0xd1, sp), a
	ld	a, #0x63
	ld	(0xd2, sp), a
	ld	a, #0x22
	ld	(0xd3, sp), a
	ld	a, #0x20
	ld	(0xd4, sp), a
	ld	a, #0x3a
	ld	(0xd5, sp), a
	ld	a, #0x20
	ld	(0xd6, sp), a
	ld	a, #0x22
	ld	(0xd7, sp), a
	ld	a, #0x6d
	ld	(0xd8, sp), a
	ld	a, #0x71
	ld	(0xd9, sp), a
	ld	a, #0x74
	ld	(0xda, sp), a
	ld	(0xdb, sp), a
	ld	a, #0x2f
	ld	(0xdc, sp), a
	ld	a, #0x74
	ld	(0xdd, sp), a
	ld	a, #0x65
	ld	(0xde, sp), a
	ld	a, #0x6d
	ld	(0xdf, sp), a
	ld	a, #0x70
	ld	(0xe0, sp), a
	ld	a, #0x65
	ld	(0xe1, sp), a
	ld	a, #0x72
	ld	(0xe2, sp), a
	ld	a, #0x61
	ld	(0xe3, sp), a
	ld	a, #0x74
	ld	(0xe4, sp), a
	ld	a, #0x75
	ld	(0xe5, sp), a
	ld	a, #0x72
	ld	(0xe6, sp), a
	ld	a, #0x65
	ld	(0xe7, sp), a
	ld	a, #0x2d
	ld	(0xe8, sp), a
	ld	a, #0x62
	ld	(0xe9, sp), a
	ld	a, #0x6d
	ld	(0xea, sp), a
	ld	a, #0x65
	ld	(0xeb, sp), a
	ld	a, #0x32
	ld	(0xec, sp), a
	ld	a, #0x38
	ld	(0xed, sp), a
	ld	a, #0x30
	ld	(0xee, sp), a
	ld	a, #0x22
	ld	(0xef, sp), a
	ld	a, #0x2c
	ld	(0xf0, sp), a
	ld	a, #0x20
	ld	(0xf1, sp), a
	ld	a, #0x22
	ld	(0xf2, sp), a
	ld	a, #0x76
	ld	(0xf3, sp), a
	ld	a, #0x61
	ld	(0xf4, sp), a
	ld	a, #0x6c
	ld	(0xf5, sp), a
	ld	a, #0x75
	ld	(0xf6, sp), a
	ld	a, #0x65
	ld	(0xf7, sp), a
	ld	a, #0x22
	ld	(0xf8, sp), a
	ld	a, #0x3a
	ld	(0xf9, sp), a
	ld	a, #0x20
	ld	(0xfa, sp), a
	ld	a, #0x22
	ld	(0xfb, sp), a
	ld	a, #0x25
	ld	(0xfc, sp), a
	ld	a, #0x73
	ld	(0xfd, sp), a
	ld	a, #0x22
	ld	(0xfe, sp), a
	ld	a, #0x7d
	ld	(0xff, sp), a
	clr	(0xb, y)
;	src/main.c: 233: LED_ON;
	pushw	y
	ld	a, #0x20
	ldw	x, #0x5014
	call	_GPIO_WriteLow
	call	_DS18X20_Reset
	ldw	x, #0x07d0
	call	_delay_ms
	ldw	x, #(_iDS18X20RomID+0)
	call	_DS18X20_Read_ID
	popw	y
	tnz	a
	jrne	00103$
;	src/main.c: 241: for (uint8_t i = 0; i < 8; i++) {
	clr	a
00114$:
	cp	a, #0x08
	jrnc	00103$
;	src/main.c: 242: iDS18X20RomID[i] = 0;
	clrw	x
	ld	xl, a
	addw	x, #(_iDS18X20RomID+0)
	clr	(x)
;	src/main.c: 241: for (uint8_t i = 0; i < 8; i++) {
	inc	a
	jra	00114$
00103$:
;	src/main.c: 257: fDS18X20Temperature = DS18X20_Get_Temperature();
	pushw	y
	call	_DS18X20_Get_Temperature
	pushw	y
	ldw	y, (3, sp)
	ld	a, (2, sp)
	ld	(0xd, y), a
	ld	a, (1, sp)
	ld	(0xc, y), a
	addw	sp, #4
	ldw	_fDS18X20Temperature+2, x
	ld	a, (0xd, y)
	ld	_fDS18X20Temperature+1, a
	ld	a, (0xc, y)
	ld	_fDS18X20Temperature+0, a
;	src/main.c: 269: stringValue = (char*)malloc(sizeValueString * sizeof(char));
	pushw	y
	ldw	x, #0x0005
	call	_malloc
	popw	y
	ldw	(0xc, y), x
;	src/main.c: 270: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
	pushw	y
	ldw	x, #0x0039
	call	_malloc
	popw	y
	ldw	(0xe, y), x
;	src/main.c: 272: FloatToStr(stringValue, fDS18X20Temperature, integer_bit, decimal_bit);
	pushw	y
	push	#0x02
	push	#0x02
	ldw	x, _fDS18X20Temperature+2
	pushw	x
	ldw	x, _fDS18X20Temperature+0
	pushw	x
	ldw	x, y
	ldw	x, (0xc, x)
	call	_FloatToStr
	popw	y
;	src/main.c: 274: sprintf(stringSendUART, placeholderDS18X20String, stringValue);
	pushw	y
	ldw	x, y
	ldw	x, (0xc, x)
	pushw	x
	ldw	x, sp
	addw	x, #5
	pushw	x
	ldw	x, y
	ldw	x, (0xe, x)
	pushw	x
	call	_sprintf
	addw	sp, #6
	popw	y
;	src/main.c: 275: printf("%s\r\n", stringSendUART);
	pushw	y
	ldw	x, y
	ldw	x, (0xe, x)
	pushw	x
	push	#<(___str_5+0)
	push	#((___str_5+0) >> 8)
	call	_printf
	addw	sp, #4
	popw	y
;	src/main.c: 277: free(stringSendUART);
	ldw	x, y
	ldw	x, (0xe, x)
	pushw	y
	call	_free
	popw	y
;	src/main.c: 278: free(stringValue);
	ldw	x, y
	ldw	x, (0xc, x)
	pushw	y
	call	_free
	ldw	x, #0x1388
	call	_delay_ms
	ld	a, #0xd0
	call	_BME280_ReadReg
	popw	y
;	src/main.c: 351: if (res != BME280_ID) {
	cp	a, #0x60
	jreq	00105$
;	src/main.c: 352: Error();
	pushw	y
	call	_Error
	popw	y
;	src/main.c: 353: return;
	jp	00119$
00105$:
;	src/main.c: 364: BME280_WriteReg(BME280_REG_SOFTRESET,BME280_SOFTRESET_VALUE);
	pushw	y
	push	#0xb6
	ld	a, #0xe0
	call	_BME280_WriteReg
	popw	y
;	src/main.c: 365: while (BME280_ReadStatus() & BME280_STATUS_IM_UPDATE);
00106$:
	pushw	y
	call	_BME280_ReadStatus
	popw	y
	srl	a
	jrc	00106$
;	src/main.c: 428: fBME280Humidity = 50;
	clrw	x
	ldw	_fBME280Humidity+2, x
	ldw	x, #0x4248
	ldw	_fBME280Humidity+0, x
;	src/main.c: 429: fBME280Temperature = -11.7;
	ldw	x, #0x3333
	ldw	_fBME280Temperature+2, x
	ldw	x, #0xc13b
	ldw	_fBME280Temperature+0, x
;	src/main.c: 436: stringValue = (char*)malloc(sizeValueString * sizeof(char));
	pushw	y
	ldw	x, #0x0005
	call	_malloc
	popw	y
	ldw	(0xc, y), x
;	src/main.c: 437: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
	pushw	y
	ldw	x, #0x0037
	call	_malloc
	popw	y
	ldw	(0xe, y), x
;	src/main.c: 439: FloatToStr(stringValue, fBME280Humidity, integer_bit, decimal_bit);
	pushw	y
	push	#0x02
	push	#0x02
	ldw	x, _fBME280Humidity+2
	pushw	x
	ldw	x, _fBME280Humidity+0
	pushw	x
	ldw	x, y
	ldw	x, (0xc, x)
	call	_FloatToStr
	popw	y
;	src/main.c: 441: sprintf(stringSendUART, placeholderHumidityBME280String, stringValue);
	pushw	y
	ldw	x, y
	ldw	x, (0xc, x)
	pushw	x
	ldw	x, sp
	addw	x, #158
	pushw	x
	ldw	x, y
	ldw	x, (0xe, x)
	pushw	x
	call	_sprintf
	addw	sp, #6
	popw	y
;	src/main.c: 442: printf("%s\r\n", stringSendUART);
	pushw	y
	ldw	x, y
	ldw	x, (0xe, x)
	pushw	x
	push	#<(___str_5+0)
	push	#((___str_5+0) >> 8)
	call	_printf
	addw	sp, #4
	popw	y
;	src/main.c: 444: free(stringSendUART);
	ldw	x, y
	ldw	x, (0xe, x)
	pushw	y
	call	_free
	popw	y
;	src/main.c: 445: free(stringValue);
	ldw	x, y
	ldw	x, (0xc, x)
	pushw	y
	call	_free
	ldw	x, #0x1388
	call	_delay_ms
	ldw	x, #0x0008
	call	_malloc
	popw	y
	ldw	(0xc, y), x
;	src/main.c: 456: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
	pushw	y
	ldw	x, #0x003d
	call	_malloc
	popw	y
	ldw	(0xe, y), x
;	src/main.c: 458: FloatToStr(stringValue, fBME280Temperature, integer_bit, decimal_bit);
	pushw	y
	push	#0x02
	push	#0x05
	ldw	x, _fBME280Temperature+2
	pushw	x
	ldw	x, _fBME280Temperature+0
	pushw	x
	ldw	x, y
	ldw	x, (0xc, x)
	call	_FloatToStr
	popw	y
;	src/main.c: 460: sprintf(stringSendUART, placeholderTemperatureBME280String, stringValue);
	pushw	y
	ldw	x, y
	ldw	x, (0xc, x)
	pushw	x
	ldw	x, sp
	addw	x, #208
	pushw	x
	ldw	x, y
	ldw	x, (0xe, x)
	pushw	x
	call	_sprintf
	addw	sp, #6
	popw	y
;	src/main.c: 461: printf("%s\r\n", stringSendUART);
	pushw	y
	ldw	x, y
	ldw	x, (0xe, x)
	pushw	x
	push	#<(___str_5+0)
	push	#((___str_5+0) >> 8)
	call	_printf
	addw	sp, #4
	popw	y
;	src/main.c: 463: free(stringSendUART);
	ldw	x, y
	ldw	x, (0xe, x)
	pushw	y
	call	_free
	popw	y
;	src/main.c: 464: free(stringValue);
	ldw	x, y
	ldw	x, (0xc, x)
	pushw	y
	call	_free
	popw	y
;	src/main.c: 474: for (uint8_t i = 0; i < 9; i++) {
	clr	a
00117$:
	cp	a, #0x09
	jrnc	00109$
;	src/main.c: 475: delay_ms(65535);
	push	a
	pushw	y
	clrw	x
	decw	x
	call	_delay_ms
	popw	y
	pop	a
;	src/main.c: 474: for (uint8_t i = 0; i < 9; i++) {
	inc	a
	jra	00117$
00109$:
;	src/main.c: 479: LED_OFF;
	pushw	y
	ld	a, #0x20
	ldw	x, #0x5014
	call	_GPIO_WriteHigh
	popw	y
	jp	00111$
00119$:
;	src/main.c: 489: }
	addw	sp, #255
	addw	sp, #5
	ret
;	src/main.c: 491: void FloatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit) {
;	-----------------------------------------
;	 function FloatToStr
;	-----------------------------------------
_FloatToStr:
	sub	sp, #23
	ldw	(0x15, sp), x
;	src/main.c: 493: uint8_t minus = 0;
	clr	(0x05, sp)
;	src/main.c: 496: uint8_t trailing_zero_count = 0;
	clr	(0x06, sp)
;	src/main.c: 498: if (number < 0) {
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x20, sp)
	pushw	x
	ldw	x, (0x20, sp)
	pushw	x
	call	___fslt
	tnz	a
	jreq	00102$
;	src/main.c: 499: str[0] = 0x2D;
	ldw	x, (0x15, sp)
	ld	a, #0x2d
	ld	(x), a
;	src/main.c: 500: number *= -1;
	ldw	y, (0x1c, sp)
	ldw	x, (0x1a, sp)
	sllw	x
	ccf
	rrcw	x
	ldw	(0x1c, sp), y
	ldw	(0x1a, sp), x
;	src/main.c: 501: minus = 1;
	ld	a, #0x01
	ld	(0x05, sp), a
00102$:
;	src/main.c: 504: temp = (uint32_t)(number/1);
	ldw	y, (0x1c, sp)
	ldw	(0x09, sp), y
	ldw	y, (0x1a, sp)
	ldw	(0x07, sp), y
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	___fs2ulong
	addw	sp, #4
	ldw	(0x0f, sp), x
;	src/main.c: 506: for (i = 1; i <= integer_bit; i++) {
	ld	a, #0x01
	ld	(0x17, sp), a
00114$:
;	src/main.c: 508: str[integer_bit - i + minus] = table[0];
	ld	a, (0x1e, sp)
	ld	(0x12, sp), a
	clr	(0x11, sp)
	ld	a, (0x05, sp)
	ld	(0x0c, sp), a
	clr	(0x0b, sp)
;	src/main.c: 506: for (i = 1; i <= integer_bit; i++) {
	ld	a, (0x17, sp)
	cp	a, (0x1e, sp)
	jrugt	00106$
;	src/main.c: 508: str[integer_bit - i + minus] = table[0];
	clrw	x
	ld	a, (0x17, sp)
	ld	xl, a
;	src/main.c: 510: str[integer_bit - i + minus] = table[temp%10];
	ldw	y, (0x0f, sp)
	ldw	(0x13, sp), y
;	src/main.c: 508: str[integer_bit - i + minus] = table[0];
	negw	x
	addw	x, (0x11, sp)
	addw	x, (0x0b, sp)
	addw	x, (0x15, sp)
	ldw	(0x11, sp), x
;	src/main.c: 507: if (temp == 0) {
	ldw	x, (0x0f, sp)
	jrne	00104$
;	src/main.c: 508: str[integer_bit - i + minus] = table[0];
	ld	a, _table+0
	ldw	x, (0x11, sp)
	ld	(x), a
	jra	00105$
00104$:
;	src/main.c: 510: str[integer_bit - i + minus] = table[temp%10];
	ldw	x, (0x13, sp)
	ldw	y, #0x000a
	divw	x, y
	ldw	(0x0f, sp), y
	ldw	x, y
	ld	a, (_table+0, x)
	ldw	x, (0x11, sp)
	ld	(x), a
00105$:
;	src/main.c: 512: temp /= 10;
	ldw	x, (0x13, sp)
	ldw	y, #0x000a
	divw	x, y
	ldw	(0x0f, sp), x
;	src/main.c: 506: for (i = 1; i <= integer_bit; i++) {
	inc	(0x17, sp)
	jra	00114$
00106$:
;	src/main.c: 515: for (i = 0; i < (integer_bit - 1); i++) {
	clr	(0x17, sp)
00117$:
	ldw	y, (0x11, sp)
	ldw	(0x0d, sp), y
	ldw	x, (0x11, sp)
	decw	x
	ldw	(0x13, sp), x
	clrw	x
	ld	a, (0x17, sp)
	ld	xl, a
	cpw	x, (0x13, sp)
	jrsge	00110$
;	src/main.c: 516: if (str[i + minus] == '0') {
	addw	x, (0x0b, sp)
	addw	x, (0x15, sp)
	ld	a, (x)
	cp	a, #0x30
	jrne	00110$
;	src/main.c: 517: trailing_zero_count += 1;
	inc	(0x06, sp)
;	src/main.c: 515: for (i = 0; i < (integer_bit - 1); i++) {
	inc	(0x17, sp)
	jra	00117$
00110$:
;	src/main.c: 528: for (i = minus; i <= trailing_zero_count + minus; i++) {
	ld	a, (0x05, sp)
	ld	(0x17, sp), a
00120$:
	ld	a, (0x06, sp)
	ld	(0x10, sp), a
	clr	(0x0f, sp)
	ldw	y, (0x0b, sp)
	ldw	(0x11, sp), y
	ldw	x, (0x0f, sp)
	addw	x, (0x0b, sp)
	ld	a, (0x17, sp)
	ld	(0x14, sp), a
	clr	(0x13, sp)
	cpw	x, (0x13, sp)
	jrslt	00111$
;	src/main.c: 529: str[i] = str[i + trailing_zero_count];
	clrw	x
	ld	a, (0x17, sp)
	ld	xl, a
	addw	x, (0x15, sp)
	ldw	y, (0x13, sp)
	addw	y, (0x0f, sp)
	addw	y, (0x15, sp)
	ld	a, (y)
	ld	(x), a
;	src/main.c: 528: for (i = minus; i <= trailing_zero_count + minus; i++) {
	inc	(0x17, sp)
	jra	00120$
00111$:
;	src/main.c: 532: *(str + integer_bit - trailing_zero_count + minus) = '.';
	clrw	x
	ld	a, (0x1e, sp)
	ld	xl, a
	addw	x, (0x15, sp)
	ldw	(0x13, sp), x
	subw	x, (0x0f, sp)
	ld	a, xl
	add	a, (0x05, sp)
	rlwa	x
	adc	a, #0x00
	ld	xh, a
	ld	a, #0x2e
	ld	(x), a
;	src/main.c: 534: t2 = number;
	ldw	y, (0x09, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x07, sp)
	ldw	(0x01, sp), y
;	src/main.c: 536: for (i = 1; i <= decimal_bit; i++) {
	ld	a, #0x01
	ld	(0x17, sp), a
00123$:
	ld	a, (0x17, sp)
	cp	a, (0x1f, sp)
	jrugt	00112$
;	src/main.c: 537: temp = t2 * 10;
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x20
	push	#0x41
	call	___fsmul
	ldw	(0x0b, sp), x
	ldw	(0x09, sp), y
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___fs2uint
	exgw	x, y
;	src/main.c: 538: str[integer_bit + i - trailing_zero_count + minus] = table[temp%10];
	ld	a, (0x17, sp)
	clrw	x
	ld	xl, a
	addw	x, (0x0d, sp)
	subw	x, (0x0f, sp)
	addw	x, (0x11, sp)
	addw	x, (0x15, sp)
	pushw	x
	ldw	x, y
	ldw	y, #0x000a
	divw	x, y
	popw	x
	ld	a, (_table+0, y)
	ld	(x), a
;	src/main.c: 539: t2 *= 10;
	ldw	x, (0x0b, sp)
	ldw	y, (0x09, sp)
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	src/main.c: 536: for (i = 1; i <= decimal_bit; i++) {
	inc	(0x17, sp)
	jra	00123$
00112$:
;	src/main.c: 542: *(str + integer_bit + 1 + decimal_bit - trailing_zero_count + minus) = '\0';
	ldw	x, (0x13, sp)
	incw	x
	ld	a, xl
	add	a, (0x1f, sp)
	rlwa	x
	adc	a, #0x00
	ld	xh, a
	subw	x, (0x0f, sp)
	ld	a, xl
	add	a, (0x05, sp)
	rlwa	x
	adc	a, #0x00
	ld	xh, a
	clr	(x)
;	src/main.c: 543: }
	ldw	x, (24, sp)
	addw	sp, #31
	jp	(x)
;	src/main.c: 550: PUTCHAR_PROTOTYPE
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	src/main.c: 553: UART_SENDDATA8(c);
	ld	a, xl
	pushw	x
	call	_UART2_SendData8
	popw	x
;	src/main.c: 555: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
00101$:
	pushw	x
	ldw	x, #0x0080
	call	_UART2_GetFlagStatus
	popw	x
	tnz	a
	jreq	00101$
;	src/main.c: 557: return (c);
;	src/main.c: 558: }
	ret
;	src/main.c: 565: GETCHAR_PROTOTYPE
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	src/main.c: 573: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
00101$:
	ldw	x, #0x0080
	call	_UART2_GetFlagStatus
	tnz	a
	jreq	00101$
;	src/main.c: 574: c = UART_RECEIVEDATA8();
	call	_UART2_ReceiveData8
	clrw	x
;	src/main.c: 575: return (c);
	ld	xl, a
;	src/main.c: 576: }
	ret
;	src/main.c: 587: void assert_failed(uint8_t* file, uint32_t line)
;	-----------------------------------------
;	 function assert_failed
;	-----------------------------------------
_assert_failed:
;	src/main.c: 594: while (1)
00102$:
	jra	00102$
;	src/main.c: 597: }
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
___str_5:
	.ascii "%s"
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
__xinit__fBME280Humidity:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
__xinit__fBME280Temperature:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.area CABS (ABS)
