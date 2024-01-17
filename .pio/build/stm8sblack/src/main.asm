;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
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
	.globl _BME280_ReadHumidity
	.globl _BME280_ReadPressure
	.globl _BME280_ReadTemperature
	.globl _BME280_Setup
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
	.globl _sizeSendUARTString
	.globl _sizeValueString
	.globl _stringValue
	.globl _stringSendUART
	.globl _fBME280Pressure
	.globl _fBME280Humidity
	.globl _fBME280Temperature
	.globl _fDS18X20Temperature
	.globl _decimal_bit
	.globl _integer_bit
	.globl _str1
	.globl _sString
	.globl _iI2CRead
	.globl _iI2CWrite
	.globl _iDS18X20RomID
	.globl _floatToStr
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
	.ds 128
_str1::
	.ds 128
_integer_bit::
	.ds 1
_decimal_bit::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_fDS18X20Temperature::
	.ds 4
_fBME280Temperature::
	.ds 4
_fBME280Humidity::
	.ds 4
_fBME280Pressure::
	.ds 4
_stringSendUART::
	.ds 2
_stringValue::
	.ds 2
_sizeValueString::
	.ds 1
_sizeSendUARTString::
	.ds 1
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
;	src\main.c: 162: void Clock_Setup(void) {
;	-----------------------------------------
;	 function Clock_Setup
;	-----------------------------------------
_Clock_Setup:
;	src\main.c: 163: CLK_DeInit();
	call	_CLK_DeInit
;	src\main.c: 164: CLK_HSECmd(DISABLE);
	clr	a
	call	_CLK_HSECmd
;	src\main.c: 165: CLK_LSICmd(DISABLE);
	clr	a
	call	_CLK_LSICmd
;	src\main.c: 166: CLK_HSICmd(ENABLE);
	ld	a, #0x01
	call	_CLK_HSICmd
;	src\main.c: 167: while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
00101$:
	ldw	x, #0x0102
	call	_CLK_GetFlagStatus
	tnz	a
	jreq	00101$
;	src\main.c: 168: CLK_ClockSwitchCmd(ENABLE);
	ld	a, #0x01
	call	_CLK_ClockSwitchCmd
;	src\main.c: 169: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	clr	a
	call	_CLK_HSIPrescalerConfig
;	src\main.c: 170: CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
	ld	a, #0x80
	call	_CLK_SYSCLKConfig
;	src\main.c: 171: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
	push	#0x01
	push	#0x00
	push	#0xe1
	ld	a, #0x01
	call	_CLK_ClockSwitchConfig
;	src\main.c: 173: CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
	push	#0x00
	ld	a, #0x01
	call	_CLK_PeripheralClockConfig
;	src\main.c: 174: CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
	push	#0x00
	ld	a, #0x12
	call	_CLK_PeripheralClockConfig
;	src\main.c: 176: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
	push	#0x00
	ld	a, #0x07
	call	_CLK_PeripheralClockConfig
;	src\main.c: 177: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
	push	#0x00
	ld	a, #0x05
	call	_CLK_PeripheralClockConfig
;	src\main.c: 178: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
	push	#0x00
	ld	a, #0x04
	call	_CLK_PeripheralClockConfig
;	src\main.c: 179: }
	ret
;	src\main.c: 181: void GPIO_Setup(void) {
;	-----------------------------------------
;	 function GPIO_Setup
;	-----------------------------------------
_GPIO_Setup:
;	src\main.c: 186: GPIO_DeInit(GPIOE);
	ldw	x, #0x5014
	call	_GPIO_DeInit
;	src\main.c: 187: GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
	push	#0xf0
	ld	a, #0x20
	ldw	x, #0x5014
	call	_GPIO_Init
;	src\main.c: 188: }
	ret
;	src\main.c: 190: void UART_Setup() {
;	-----------------------------------------
;	 function UART_Setup
;	-----------------------------------------
_UART_Setup:
;	src\main.c: 191: UART_DEINIT();
	call	_UART2_DeInit
;	src\main.c: 201: UART_INIT((uint32_t)9600, UART_WORDLENGTH_8D, UART_STOPBITS_1, UART_PARITY_NO, UART_SYNCMODE_CLOCK_DISABLE, UART_MODE_TXRX_ENABLE);
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
;	src\main.c: 202: }
	ret
;	src\main.c: 212: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src\main.c: 213: Clock_Setup();
	call	_Clock_Setup
;	src\main.c: 214: GPIO_Setup();
	call	_GPIO_Setup
;	src\main.c: 215: DS18X20_Setup();
	call	_DS18X20_Setup
;	src\main.c: 216: I2C_Setup();
	call	_I2C_Setup
;	src\main.c: 217: UART_Setup();
	call	_UART_Setup
;	src\main.c: 219: BME280_Setup();
	call	_BME280_Setup
;	src\main.c: 235: LED_ON;
	ld	a, #0x20
	ldw	x, #0x5014
	call	_GPIO_WriteLow
;	src\main.c: 237: while (1) {
00106$:
;	src\main.c: 240: DS18X20_Reset();
	call	_DS18X20_Reset
;	src\main.c: 242: delay_ms(2000);
	ldw	x, #0x07d0
	call	_delay_ms
;	src\main.c: 244: if (!DS18X20_Read_ID(iDS18X20RomID)) {
	ldw	x, #(_iDS18X20RomID+0)
	call	_DS18X20_Read_ID
	tnz	a
	jrne	00103$
;	src\main.c: 245: for (uint8_t i = 0; i < 8; i++) {
	clr	a
00109$:
	cp	a, #0x08
	jrnc	00103$
;	src\main.c: 246: iDS18X20RomID[i] = 0;
	clrw	x
	ld	xl, a
	addw	x, #(_iDS18X20RomID+0)
	clr	(x)
;	src\main.c: 245: for (uint8_t i = 0; i < 8; i++) {
	inc	a
	jra	00109$
00103$:
;	src\main.c: 250: fDS18X20Temperature = DS18X20_Get_Temperature();
	call	_DS18X20_Get_Temperature
	ldw	_fDS18X20Temperature+2, x
	ldw	_fDS18X20Temperature+0, y
;	src\main.c: 251: integer_bit = 2;
	mov	_integer_bit+0, #0x02
;	src\main.c: 252: decimal_bit = 2;
	mov	_decimal_bit+0, #0x02
;	src\main.c: 268: sizeValueString = integer_bit + decimal_bit + 1;
	mov	_sizeValueString+0, #0x05
;	src\main.c: 269: sizeSendUARTString = sizeof(placeholderDS18X20String) + sizeValueString;
	mov	_sizeSendUARTString+0, #0x39
;	src\main.c: 270: stringValue = (char*)malloc(sizeValueString * sizeof(char));
	ldw	x, #0x0005
	call	_malloc
	ldw	_stringValue+0, x
;	src\main.c: 271: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
	ld	a, _sizeSendUARTString+0
	clrw	x
	ld	xl, a
	call	_malloc
	ldw	_stringSendUART+0, x
;	src\main.c: 273: floatToStr(stringValue, fDS18X20Temperature, integer_bit, decimal_bit);
	push	_decimal_bit+0
	push	_integer_bit+0
	ldw	x, _fDS18X20Temperature+2
	pushw	x
	ldw	x, _fDS18X20Temperature+0
	pushw	x
	ldw	x, _stringValue+0
	call	_floatToStr
;	src\main.c: 275: sprintf(stringSendUART, placeholderDS18X20String, stringValue);
	ldw	x, _stringValue+0
	pushw	x
	push	#<(_main_placeholderDS18X20String_65537_192+0)
	push	#((_main_placeholderDS18X20String_65537_192+0) >> 8)
	ldw	x, _stringSendUART+0
	pushw	x
	call	_sprintf
	addw	sp, #6
;	src\main.c: 276: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 277: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 278: putchar(0x18);
	ldw	x, #0x0018
	call	_putchar
;	src\main.c: 279: printf("%s\r\n", stringSendUART);
	ldw	x, _stringSendUART+0
	pushw	x
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src\main.c: 281: free(stringSendUART);
	ldw	x, _stringSendUART+0
	call	_free
;	src\main.c: 282: free(stringValue);
	ldw	x, _stringValue+0
	call	_free
;	src\main.c: 284: delay_ms(5000);
	ldw	x, #0x1388
	call	_delay_ms
;	src\main.c: 343: integer_bit = 3;
	mov	_integer_bit+0, #0x03
;	src\main.c: 344: decimal_bit = 2;
	mov	_decimal_bit+0, #0x02
;	src\main.c: 346: fBME280Temperature = BME280_ReadTemperature();
	call	_BME280_ReadTemperature
	ldw	_fBME280Temperature+2, x
	ldw	_fBME280Temperature+0, y
;	src\main.c: 347: delay_ms(2000);
	ldw	x, #0x07d0
	call	_delay_ms
;	src\main.c: 349: sizeValueString = integer_bit + decimal_bit + 1;
	ld	a, _integer_bit+0
	add	a, _decimal_bit+0
	inc	a
;	src\main.c: 350: stringValue = (char*)malloc(sizeValueString * sizeof(char));
	ld	_sizeValueString+0, a
	clrw	x
	ld	xl, a
	call	_malloc
	ldw	_stringValue+0, x
;	src\main.c: 351: sizeSendUARTString = sizeof(placeholderTemperatureBME280String) + sizeValueString;
	ld	a, _sizeValueString+0
	add	a, #0x35
;	src\main.c: 352: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
	ld	_sizeSendUARTString+0, a
	clrw	x
	ld	xl, a
	call	_malloc
	ldw	_stringSendUART+0, x
;	src\main.c: 354: floatToStr(stringValue, fBME280Temperature, integer_bit, decimal_bit);
	push	_decimal_bit+0
	push	_integer_bit+0
	ldw	x, _fBME280Temperature+2
	pushw	x
	ldw	x, _fBME280Temperature+0
	pushw	x
	ldw	x, _stringValue+0
	call	_floatToStr
;	src\main.c: 355: sprintf(stringSendUART, placeholderTemperatureBME280String, stringValue);
	ldw	x, _stringValue+0
	pushw	x
	push	#<(_main_placeholderTemperatureBME280String_65537_192+0)
	push	#((_main_placeholderTemperatureBME280String_65537_192+0) >> 8)
	ldw	x, _stringSendUART+0
	pushw	x
	call	_sprintf
	addw	sp, #6
;	src\main.c: 356: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 357: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 358: putchar(0x18);
	ldw	x, #0x0018
	call	_putchar
;	src\main.c: 359: printf("%s\r\n", stringSendUART);
	ldw	x, _stringSendUART+0
	pushw	x
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src\main.c: 361: free(stringSendUART);
	ldw	x, _stringSendUART+0
	call	_free
;	src\main.c: 362: free(stringValue);
	ldw	x, _stringValue+0
	call	_free
;	src\main.c: 364: integer_bit = 2;
	mov	_integer_bit+0, #0x02
;	src\main.c: 365: decimal_bit = 2;
	mov	_decimal_bit+0, #0x02
;	src\main.c: 367: fBME280Humidity = BME280_ReadHumidity();
	call	_BME280_ReadHumidity
	ldw	_fBME280Humidity+2, x
	ldw	_fBME280Humidity+0, y
;	src\main.c: 368: delay_ms(2000);
	ldw	x, #0x07d0
	call	_delay_ms
;	src\main.c: 370: sizeValueString = integer_bit + decimal_bit + 1;
	ld	a, _integer_bit+0
	add	a, _decimal_bit+0
	inc	a
;	src\main.c: 371: sizeSendUARTString = sizeof(placeholderHumidityBME280String) + sizeValueString;
	ld	_sizeValueString+0, a
	add	a, #0x32
	ld	_sizeSendUARTString+0, a
;	src\main.c: 372: stringValue = (char*)malloc(sizeValueString * sizeof(char));
	ld	a, _sizeValueString+0
	clrw	x
	ld	xl, a
	call	_malloc
	ldw	_stringValue+0, x
;	src\main.c: 373: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
	ld	a, _sizeSendUARTString+0
	clrw	x
	ld	xl, a
	call	_malloc
	ldw	_stringSendUART+0, x
;	src\main.c: 375: floatToStr(stringValue, fBME280Humidity, integer_bit, decimal_bit);
	push	_decimal_bit+0
	push	_integer_bit+0
	ldw	x, _fBME280Humidity+2
	pushw	x
	ldw	x, _fBME280Humidity+0
	pushw	x
	ldw	x, _stringValue+0
	call	_floatToStr
;	src\main.c: 376: sprintf(stringSendUART, placeholderHumidityBME280String, stringValue);
	ldw	x, _stringValue+0
	pushw	x
	push	#<(_main_placeholderHumidityBME280String_65537_192+0)
	push	#((_main_placeholderHumidityBME280String_65537_192+0) >> 8)
	ldw	x, _stringSendUART+0
	pushw	x
	call	_sprintf
	addw	sp, #6
;	src\main.c: 381: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 382: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 383: putchar(0x18);
	ldw	x, #0x0018
	call	_putchar
;	src\main.c: 384: printf("%s\r\n", stringSendUART);
	ldw	x, _stringSendUART+0
	pushw	x
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src\main.c: 386: free(stringSendUART);
	ldw	x, _stringSendUART+0
	call	_free
;	src\main.c: 387: free(stringValue);
	ldw	x, _stringValue+0
	call	_free
;	src\main.c: 389: integer_bit = 5;
	mov	_integer_bit+0, #0x05
;	src\main.c: 390: decimal_bit = 1;
	mov	_decimal_bit+0, #0x01
;	src\main.c: 392: fBME280Pressure = BME280_ReadPressure();
	call	_BME280_ReadPressure
	pushw	x
	pushw	y
	call	___fs2ulong
	addw	sp, #4
	ldw	_fBME280Pressure+2, x
	ldw	_fBME280Pressure+0, y
;	src\main.c: 393: delay_ms(2000);
	ldw	x, #0x07d0
	call	_delay_ms
;	src\main.c: 395: sizeValueString = integer_bit + decimal_bit + 1;
	ld	a, _integer_bit+0
	add	a, _decimal_bit+0
	inc	a
;	src\main.c: 396: sizeSendUARTString = sizeof(placeholderPressureBME280String) + sizeValueString;
	ld	_sizeValueString+0, a
	add	a, #0x32
	ld	_sizeSendUARTString+0, a
;	src\main.c: 397: stringValue = (char*)malloc(sizeValueString * sizeof(char));
	clrw	x
	ld	a, _sizeValueString+0
	ld	xl, a
	call	_malloc
	ldw	_stringValue+0, x
;	src\main.c: 398: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
	ld	a, _sizeSendUARTString+0
	clrw	x
	ld	xl, a
	call	_malloc
	ldw	_stringSendUART+0, x
;	src\main.c: 400: floatToStr(stringValue, (float)fBME280Pressure, integer_bit, decimal_bit);
	ldw	x, _fBME280Pressure+2
	pushw	x
	ldw	x, _fBME280Pressure+0
	pushw	x
	call	___ulong2fs
	addw	sp, #4
	push	_decimal_bit+0
	push	_integer_bit+0
	pushw	x
	pushw	y
	ldw	x, _stringValue+0
	call	_floatToStr
;	src\main.c: 401: sprintf(stringSendUART, placeholderPressureBME280String, stringValue);
	ldw	x, _stringValue+0
	pushw	x
	push	#<(_main_placeholderPressureBME280String_65537_192+0)
	push	#((_main_placeholderPressureBME280String_65537_192+0) >> 8)
	ldw	x, _stringSendUART+0
	pushw	x
	call	_sprintf
	addw	sp, #6
;	src\main.c: 406: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 407: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 408: putchar(0x18);
	ldw	x, #0x0018
	call	_putchar
;	src\main.c: 409: printf("%s\r\n", stringSendUART);
	ldw	x, _stringSendUART+0
	pushw	x
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src\main.c: 411: free(stringSendUART);
	ldw	x, _stringSendUART+0
	call	_free
;	src\main.c: 412: free(stringValue);
	ldw	x, _stringValue+0
	call	_free
;	src\main.c: 422: for (uint8_t i = 0; i < 9; i++) {
	clr	a
00112$:
	cp	a, #0x09
	jrnc	00104$
;	src\main.c: 423: delay_ms(65535);
	push	a
	clrw	x
	decw	x
	call	_delay_ms
	pop	a
;	src\main.c: 422: for (uint8_t i = 0; i < 9; i++) {
	inc	a
	jra	00112$
00104$:
;	src\main.c: 427: LED_OFF;
	ld	a, #0x20
	ldw	x, #0x5014
	call	_GPIO_WriteHigh
;	src\main.c: 437: }
	jp	00106$
;	src\main.c: 439: void floatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit) {
;	-----------------------------------------
;	 function floatToStr
;	-----------------------------------------
_floatToStr:
	sub	sp, #23
	ldw	(0x15, sp), x
;	src\main.c: 441: uint8_t minus = 0;
	clr	(0x05, sp)
;	src\main.c: 444: uint8_t trailing_zero_count = 0;
	clr	(0x06, sp)
;	src\main.c: 446: if (number < 0) {
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
;	src\main.c: 447: str[0] = 0x2D;
	ldw	x, (0x15, sp)
	ld	a, #0x2d
	ld	(x), a
;	src\main.c: 448: number *= -1;
	ldw	y, (0x1c, sp)
	ldw	x, (0x1a, sp)
	sllw	x
	ccf
	rrcw	x
	ldw	(0x1c, sp), y
	ldw	(0x1a, sp), x
;	src\main.c: 449: minus = 1;
	ld	a, #0x01
	ld	(0x05, sp), a
00102$:
;	src\main.c: 452: temp = (uint32_t)(number/1);
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
;	src\main.c: 454: for (i = 1; i <= integer_bit; i++) {
	ld	a, #0x01
	ld	(0x17, sp), a
00114$:
;	src\main.c: 456: str[integer_bit - i + minus] = table[0];
	ld	a, (0x1e, sp)
	ld	(0x12, sp), a
	clr	(0x11, sp)
	ld	a, (0x05, sp)
	ld	(0x0c, sp), a
	clr	(0x0b, sp)
;	src\main.c: 454: for (i = 1; i <= integer_bit; i++) {
	ld	a, (0x17, sp)
	cp	a, (0x1e, sp)
	jrugt	00106$
;	src\main.c: 456: str[integer_bit - i + minus] = table[0];
	clrw	x
	ld	a, (0x17, sp)
	ld	xl, a
;	src\main.c: 458: str[integer_bit - i + minus] = table[temp%10];
	ldw	y, (0x0f, sp)
	ldw	(0x13, sp), y
;	src\main.c: 456: str[integer_bit - i + minus] = table[0];
	negw	x
	addw	x, (0x11, sp)
	addw	x, (0x0b, sp)
	addw	x, (0x15, sp)
	ldw	(0x11, sp), x
;	src\main.c: 455: if (temp == 0) {
	ldw	x, (0x0f, sp)
	jrne	00104$
;	src\main.c: 456: str[integer_bit - i + minus] = table[0];
	ld	a, _table+0
	ldw	x, (0x11, sp)
	ld	(x), a
	jra	00105$
00104$:
;	src\main.c: 458: str[integer_bit - i + minus] = table[temp%10];
	ldw	x, (0x13, sp)
	ldw	y, #0x000a
	divw	x, y
	ldw	x, y
	ld	a, yl
	ld	xl, a
	ld	a, (_table+0, x)
	ldw	x, (0x11, sp)
	ld	(x), a
00105$:
;	src\main.c: 460: temp /= 10;
	ldw	x, (0x13, sp)
	ldw	y, #0x000a
	divw	x, y
	ldw	(0x0f, sp), x
;	src\main.c: 454: for (i = 1; i <= integer_bit; i++) {
	inc	(0x17, sp)
	jra	00114$
00106$:
;	src\main.c: 463: for (i = 0; i < (integer_bit - 1); i++) {
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
;	src\main.c: 464: if (str[i + minus] == '0') {
	addw	x, (0x0b, sp)
	addw	x, (0x15, sp)
	ld	a, (x)
	cp	a, #0x30
	jrne	00110$
;	src\main.c: 465: trailing_zero_count += 1;
	inc	(0x06, sp)
;	src\main.c: 463: for (i = 0; i < (integer_bit - 1); i++) {
	inc	(0x17, sp)
	jra	00117$
00110$:
;	src\main.c: 471: for (i = minus; i <= trailing_zero_count + minus; i++) {
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
;	src\main.c: 472: str[i] = str[i + trailing_zero_count];
	clrw	x
	ld	a, (0x17, sp)
	ld	xl, a
	addw	x, (0x15, sp)
	ldw	y, (0x13, sp)
	addw	y, (0x0f, sp)
	addw	y, (0x15, sp)
	ld	a, (y)
	ld	(x), a
;	src\main.c: 471: for (i = minus; i <= trailing_zero_count + minus; i++) {
	inc	(0x17, sp)
	jra	00120$
00111$:
;	src\main.c: 475: *(str + integer_bit - trailing_zero_count + minus) = '.';
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
;	src\main.c: 477: t2 = number;
	ldw	y, (0x09, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x07, sp)
	ldw	(0x01, sp), y
;	src\main.c: 479: for (i = 1; i <= decimal_bit; i++) {
	ld	a, #0x01
	ld	(0x17, sp), a
00123$:
	ld	a, (0x17, sp)
	cp	a, (0x1f, sp)
	jrugt	00112$
;	src\main.c: 480: temp = t2 * 10;
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
;	src\main.c: 481: str[integer_bit + i - trailing_zero_count + minus] = table[temp%10];
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
;	src\main.c: 482: t2 *= 10;
	ldw	x, (0x0b, sp)
	ldw	y, (0x09, sp)
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	src\main.c: 479: for (i = 1; i <= decimal_bit; i++) {
	inc	(0x17, sp)
	jra	00123$
00112$:
;	src\main.c: 485: *(str + integer_bit + 1 + decimal_bit - trailing_zero_count + minus) = '\0';
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
;	src\main.c: 486: }
	ldw	x, (24, sp)
	addw	sp, #31
	jp	(x)
;	src\main.c: 542: PUTCHAR_PROTOTYPE
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	src\main.c: 545: UART_SENDDATA8(c);
	ld	a, xl
	pushw	x
	call	_UART2_SendData8
	popw	x
;	src\main.c: 547: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
00101$:
	pushw	x
	ldw	x, #0x0080
	call	_UART2_GetFlagStatus
	popw	x
	tnz	a
	jreq	00101$
;	src\main.c: 549: return (c);
;	src\main.c: 550: }
	ret
;	src\main.c: 557: GETCHAR_PROTOTYPE
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	src\main.c: 565: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
00101$:
	ldw	x, #0x0080
	call	_UART2_GetFlagStatus
	tnz	a
	jreq	00101$
;	src\main.c: 566: c = UART_RECEIVEDATA8();
	call	_UART2_ReceiveData8
	clrw	x
;	src\main.c: 567: return (c);
	ld	xl, a
;	src\main.c: 568: }
	ret
;	src\main.c: 579: void assert_failed(uint8_t* file, uint32_t line)
;	-----------------------------------------
;	 function assert_failed
;	-----------------------------------------
_assert_failed:
;	src\main.c: 586: while (1)
00102$:
	jra	00102$
;	src\main.c: 589: }
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
_main_placeholderDS18X20String_65537_192:
	.ascii "{"
	.db 0x22
	.ascii "topic"
	.db 0x22
	.ascii " : "
	.db 0x22
	.ascii "mqtt/temperature-room"
	.db 0x22
	.ascii ", "
	.db 0x22
	.ascii "value"
	.db 0x22
	.ascii " : "
	.db 0x22
	.ascii "%s"
	.db 0x22
	.ascii "}"
	.db 0x00
_main_placeholderTemperatureBME280String_65537_192:
	.ascii "{"
	.db 0x22
	.ascii "topic"
	.db 0x22
	.ascii " : "
	.db 0x22
	.ascii "mqtt/temperature-bme280"
	.db 0x22
	.ascii ", "
	.db 0x22
	.ascii "value"
	.db 0x22
	.ascii ": "
	.db 0x22
	.ascii "%s"
	.db 0x22
	.ascii "}"
	.db 0x00
_main_placeholderHumidityBME280String_65537_192:
	.ascii "{"
	.db 0x22
	.ascii "topic"
	.db 0x22
	.ascii " : "
	.db 0x22
	.ascii "mqtt/humidity-bme280"
	.db 0x22
	.ascii ", "
	.db 0x22
	.ascii "value"
	.db 0x22
	.ascii ": "
	.db 0x22
	.ascii "%s"
	.db 0x22
	.ascii "}"
	.db 0x00
_main_placeholderPressureBME280String_65537_192:
	.ascii "{"
	.db 0x22
	.ascii "topic"
	.db 0x22
	.ascii " : "
	.db 0x22
	.ascii "mqtt/pressure-bme280"
	.db 0x22
	.ascii ", "
	.db 0x22
	.ascii "value"
	.db 0x22
	.ascii ": "
	.db 0x22
	.ascii "%s"
	.db 0x22
	.ascii "}"
	.db 0x00
	.area CONST
___str_4:
	.ascii "%s"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area INITIALIZER
__xinit__fDS18X20Temperature:
	.byte #0xc2, #0xc8, #0x00, #0x00	; -1.000000e+02
__xinit__fBME280Temperature:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
__xinit__fBME280Humidity:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
__xinit__fBME280Pressure:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__stringSendUART:
	.dw #0x0000
__xinit__stringValue:
	.dw #0x0000
__xinit__sizeValueString:
	.db #0x00	; 0
__xinit__sizeSendUARTString:
	.db #0x00	; 0
	.area CABS (ABS)
