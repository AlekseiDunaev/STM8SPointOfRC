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
	.globl _floatToStr
	.globl _BME280_ReadHumidity
	.globl _BME280_ReadPressure
	.globl _BME280_ReadTemperature
	.globl _BME280_SetMode
	.globl _BME280_ReadRegisters
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
;	src\main.c: 155: void Clock_Setup(void) {
;	-----------------------------------------
;	 function Clock_Setup
;	-----------------------------------------
_Clock_Setup:
;	src\main.c: 156: CLK_DeInit();
	call	_CLK_DeInit
;	src\main.c: 157: CLK_HSECmd(DISABLE);
	clr	a
	call	_CLK_HSECmd
;	src\main.c: 158: CLK_LSICmd(DISABLE);
	clr	a
	call	_CLK_LSICmd
;	src\main.c: 159: CLK_HSICmd(ENABLE);
	ld	a, #0x01
	call	_CLK_HSICmd
;	src\main.c: 160: while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
00101$:
	ldw	x, #0x0102
	call	_CLK_GetFlagStatus
	tnz	a
	jreq	00101$
;	src\main.c: 161: CLK_ClockSwitchCmd(ENABLE);
	ld	a, #0x01
	call	_CLK_ClockSwitchCmd
;	src\main.c: 162: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	clr	a
	call	_CLK_HSIPrescalerConfig
;	src\main.c: 163: CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
	ld	a, #0x80
	call	_CLK_SYSCLKConfig
;	src\main.c: 164: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
	push	#0x01
	push	#0x00
	push	#0xe1
	ld	a, #0x01
	call	_CLK_ClockSwitchConfig
;	src\main.c: 166: CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
	push	#0x00
	ld	a, #0x01
	call	_CLK_PeripheralClockConfig
;	src\main.c: 167: CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
	push	#0x00
	ld	a, #0x12
	call	_CLK_PeripheralClockConfig
;	src\main.c: 169: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
	push	#0x00
	ld	a, #0x07
	call	_CLK_PeripheralClockConfig
;	src\main.c: 170: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
	push	#0x00
	ld	a, #0x05
	call	_CLK_PeripheralClockConfig
;	src\main.c: 171: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
	push	#0x00
	ld	a, #0x04
	call	_CLK_PeripheralClockConfig
;	src\main.c: 172: }
	ret
;	src\main.c: 174: void GPIO_Setup(void) {
;	-----------------------------------------
;	 function GPIO_Setup
;	-----------------------------------------
_GPIO_Setup:
;	src\main.c: 179: GPIO_DeInit(GPIOE);
	ldw	x, #0x5014
	call	_GPIO_DeInit
;	src\main.c: 180: GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
	push	#0xf0
	ld	a, #0x20
	ldw	x, #0x5014
	call	_GPIO_Init
;	src\main.c: 181: }
	ret
;	src\main.c: 183: void UART_Setup() {
;	-----------------------------------------
;	 function UART_Setup
;	-----------------------------------------
_UART_Setup:
;	src\main.c: 184: UART_DEINIT();
	call	_UART2_DeInit
;	src\main.c: 194: UART_INIT((uint32_t)9600, UART_WORDLENGTH_8D, UART_STOPBITS_1, UART_PARITY_NO, UART_SYNCMODE_CLOCK_DISABLE, UART_MODE_TXRX_ENABLE);
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
;	src\main.c: 195: }
	ret
;	src\main.c: 205: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src\main.c: 206: Clock_Setup();
	call	_Clock_Setup
;	src\main.c: 207: GPIO_Setup();
	call	_GPIO_Setup
;	src\main.c: 208: DS18X20_Setup();
	call	_DS18X20_Setup
;	src\main.c: 209: I2C_Setup();
	call	_I2C_Setup
;	src\main.c: 210: UART_Setup();
	call	_UART_Setup
;	src\main.c: 212: BME280_Setup();
	call	_BME280_Setup
;	src\main.c: 228: LED_ON;
	ld	a, #0x20
	ldw	x, #0x5014
	call	_GPIO_WriteLow
;	src\main.c: 230: while (1) {
00106$:
;	src\main.c: 233: DS18X20_Reset();
	call	_DS18X20_Reset
;	src\main.c: 235: delay_ms(2000);
	ldw	x, #0x07d0
	call	_delay_ms
;	src\main.c: 237: if (!DS18X20_Read_ID(iDS18X20RomID)) {
	ldw	x, #(_iDS18X20RomID+0)
	call	_DS18X20_Read_ID
	tnz	a
	jrne	00103$
;	src\main.c: 238: for (uint8_t i = 0; i < 8; i++) {
	clr	a
00109$:
	cp	a, #0x08
	jrnc	00103$
;	src\main.c: 239: iDS18X20RomID[i] = 0;
	clrw	x
	ld	xl, a
	addw	x, #(_iDS18X20RomID+0)
	clr	(x)
;	src\main.c: 238: for (uint8_t i = 0; i < 8; i++) {
	inc	a
	jra	00109$
00103$:
;	src\main.c: 243: fDS18X20Temperature = DS18X20_Get_Temperature();
	call	_DS18X20_Get_Temperature
	ldw	_fDS18X20Temperature+2, x
	ldw	_fDS18X20Temperature+0, y
;	src\main.c: 244: integer_bit = 2;
	mov	_integer_bit+0, #0x02
;	src\main.c: 245: decimal_bit = 2;
	mov	_decimal_bit+0, #0x02
;	src\main.c: 261: sizeValueString = integer_bit + decimal_bit + 1;
	mov	_sizeValueString+0, #0x05
;	src\main.c: 262: sizeSendUARTString = sizeof(placeholderDS18X20String) + sizeValueString;
	mov	_sizeSendUARTString+0, #0x39
;	src\main.c: 263: stringValue = (char*)malloc(sizeValueString * sizeof(char));
	ldw	x, #0x0005
	call	_malloc
	ldw	_stringValue+0, x
;	src\main.c: 264: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
	ld	a, _sizeSendUARTString+0
	clrw	x
	ld	xl, a
	call	_malloc
	ldw	_stringSendUART+0, x
;	src\main.c: 266: floatToStr(stringValue, fDS18X20Temperature, integer_bit, decimal_bit);
	push	_decimal_bit+0
	push	_integer_bit+0
	ldw	x, _fDS18X20Temperature+2
	pushw	x
	ldw	x, _fDS18X20Temperature+0
	pushw	x
	ldw	x, _stringValue+0
	call	_floatToStr
;	src\main.c: 268: sprintf(stringSendUART, placeholderDS18X20String, stringValue);
	ldw	x, _stringValue+0
	pushw	x
	push	#<(_main_placeholderDS18X20String_65537_219+0)
	push	#((_main_placeholderDS18X20String_65537_219+0) >> 8)
	ldw	x, _stringSendUART+0
	pushw	x
	call	_sprintf
	addw	sp, #6
;	src\main.c: 269: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 270: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 271: putchar(0x18);
	ldw	x, #0x0018
	call	_putchar
;	src\main.c: 272: printf("%s\r\n", stringSendUART);
	ldw	x, _stringSendUART+0
	pushw	x
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src\main.c: 274: free(stringSendUART);
	ldw	x, _stringSendUART+0
	call	_free
;	src\main.c: 275: free(stringValue);
	ldw	x, _stringValue+0
	call	_free
;	src\main.c: 277: delay_ms(5000);
	ldw	x, #0x1388
	call	_delay_ms
;	src\main.c: 336: integer_bit = 3;
	mov	_integer_bit+0, #0x03
;	src\main.c: 337: decimal_bit = 2;
	mov	_decimal_bit+0, #0x02
;	src\main.c: 339: BME280_SetMode(BME280_MODE_FORCED);
	ld	a, #0x01
	call	_BME280_SetMode
;	src\main.c: 340: delay_ms(4000);
	ldw	x, #0x0fa0
	call	_delay_ms
;	src\main.c: 342: BME280_ReadRegisters();
	call	_BME280_ReadRegisters
;	src\main.c: 344: fBME280Temperature = BME280_ReadTemperature();
	call	_BME280_ReadTemperature
	ldw	_fBME280Temperature+2, x
	ldw	_fBME280Temperature+0, y
;	src\main.c: 346: sizeValueString = integer_bit + decimal_bit + 1;
	ld	a, _integer_bit+0
	add	a, _decimal_bit+0
	inc	a
;	src\main.c: 347: stringValue = (char*)malloc(sizeValueString * sizeof(char));
	ld	_sizeValueString+0, a
	clrw	x
	ld	xl, a
	call	_malloc
	ldw	_stringValue+0, x
;	src\main.c: 348: sizeSendUARTString = sizeof(placeholderTemperatureBME280String) + sizeValueString;
	ld	a, _sizeValueString+0
	add	a, #0x35
;	src\main.c: 349: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
	ld	_sizeSendUARTString+0, a
	clrw	x
	ld	xl, a
	call	_malloc
	ldw	_stringSendUART+0, x
;	src\main.c: 351: floatToStr(stringValue, fBME280Temperature, integer_bit, decimal_bit);
	push	_decimal_bit+0
	push	_integer_bit+0
	ldw	x, _fBME280Temperature+2
	pushw	x
	ldw	x, _fBME280Temperature+0
	pushw	x
	ldw	x, _stringValue+0
	call	_floatToStr
;	src\main.c: 352: sprintf(stringSendUART, placeholderTemperatureBME280String, stringValue);
	ldw	x, _stringValue+0
	pushw	x
	push	#<(_main_placeholderTemperatureBME280String_65537_219+0)
	push	#((_main_placeholderTemperatureBME280String_65537_219+0) >> 8)
	ldw	x, _stringSendUART+0
	pushw	x
	call	_sprintf
	addw	sp, #6
;	src\main.c: 353: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 354: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 355: putchar(0x18);
	ldw	x, #0x0018
	call	_putchar
;	src\main.c: 356: printf("%s\r\n", stringSendUART);
	ldw	x, _stringSendUART+0
	pushw	x
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src\main.c: 358: free(stringSendUART);
	ldw	x, _stringSendUART+0
	call	_free
;	src\main.c: 359: free(stringValue);
	ldw	x, _stringValue+0
	call	_free
;	src\main.c: 361: integer_bit = 2;
	mov	_integer_bit+0, #0x02
;	src\main.c: 362: decimal_bit = 2;
	mov	_decimal_bit+0, #0x02
;	src\main.c: 364: fBME280Humidity = BME280_ReadHumidity();
	call	_BME280_ReadHumidity
	ldw	_fBME280Humidity+2, x
	ldw	_fBME280Humidity+0, y
;	src\main.c: 365: delay_ms(2000);
	ldw	x, #0x07d0
	call	_delay_ms
;	src\main.c: 367: sizeValueString = integer_bit + decimal_bit + 1;
	ld	a, _integer_bit+0
	add	a, _decimal_bit+0
	inc	a
;	src\main.c: 368: sizeSendUARTString = sizeof(placeholderHumidityBME280String) + sizeValueString;
	ld	_sizeValueString+0, a
	add	a, #0x32
	ld	_sizeSendUARTString+0, a
;	src\main.c: 369: stringValue = (char*)malloc(sizeValueString * sizeof(char));
	ld	a, _sizeValueString+0
	clrw	x
	ld	xl, a
	call	_malloc
	ldw	_stringValue+0, x
;	src\main.c: 370: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
	ld	a, _sizeSendUARTString+0
	clrw	x
	ld	xl, a
	call	_malloc
	ldw	_stringSendUART+0, x
;	src\main.c: 372: floatToStr(stringValue, fBME280Humidity, integer_bit, decimal_bit);
	push	_decimal_bit+0
	push	_integer_bit+0
	ldw	x, _fBME280Humidity+2
	pushw	x
	ldw	x, _fBME280Humidity+0
	pushw	x
	ldw	x, _stringValue+0
	call	_floatToStr
;	src\main.c: 373: sprintf(stringSendUART, placeholderHumidityBME280String, stringValue);
	ldw	x, _stringValue+0
	pushw	x
	push	#<(_main_placeholderHumidityBME280String_65537_219+0)
	push	#((_main_placeholderHumidityBME280String_65537_219+0) >> 8)
	ldw	x, _stringSendUART+0
	pushw	x
	call	_sprintf
	addw	sp, #6
;	src\main.c: 378: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 379: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 380: putchar(0x18);
	ldw	x, #0x0018
	call	_putchar
;	src\main.c: 381: printf("%s\r\n", stringSendUART);
	ldw	x, _stringSendUART+0
	pushw	x
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src\main.c: 383: free(stringSendUART);
	ldw	x, _stringSendUART+0
	call	_free
;	src\main.c: 384: free(stringValue);
	ldw	x, _stringValue+0
	call	_free
;	src\main.c: 386: integer_bit = 5;
	mov	_integer_bit+0, #0x05
;	src\main.c: 387: decimal_bit = 1;
	mov	_decimal_bit+0, #0x01
;	src\main.c: 389: fBME280Pressure = BME280_ReadPressure();
	call	_BME280_ReadPressure
	pushw	x
	pushw	y
	call	___fs2ulong
	addw	sp, #4
	ldw	_fBME280Pressure+2, x
	ldw	_fBME280Pressure+0, y
;	src\main.c: 390: delay_ms(2000);
	ldw	x, #0x07d0
	call	_delay_ms
;	src\main.c: 392: sizeValueString = integer_bit + decimal_bit + 1;
	ld	a, _integer_bit+0
	add	a, _decimal_bit+0
	inc	a
;	src\main.c: 393: sizeSendUARTString = sizeof(placeholderPressureBME280String) + sizeValueString;
	ld	_sizeValueString+0, a
	add	a, #0x32
	ld	_sizeSendUARTString+0, a
;	src\main.c: 394: stringValue = (char*)malloc(sizeValueString * sizeof(char));
	clrw	x
	ld	a, _sizeValueString+0
	ld	xl, a
	call	_malloc
	ldw	_stringValue+0, x
;	src\main.c: 395: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
	ld	a, _sizeSendUARTString+0
	clrw	x
	ld	xl, a
	call	_malloc
	ldw	_stringSendUART+0, x
;	src\main.c: 397: floatToStr(stringValue, (float)fBME280Pressure, integer_bit, decimal_bit);
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
;	src\main.c: 398: sprintf(stringSendUART, placeholderPressureBME280String, stringValue);
	ldw	x, _stringValue+0
	pushw	x
	push	#<(_main_placeholderPressureBME280String_65537_219+0)
	push	#((_main_placeholderPressureBME280String_65537_219+0) >> 8)
	ldw	x, _stringSendUART+0
	pushw	x
	call	_sprintf
	addw	sp, #6
;	src\main.c: 403: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 404: putchar(0x00);
	clrw	x
	call	_putchar
;	src\main.c: 405: putchar(0x18);
	ldw	x, #0x0018
	call	_putchar
;	src\main.c: 406: printf("%s\r\n", stringSendUART);
	ldw	x, _stringSendUART+0
	pushw	x
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_printf
	addw	sp, #4
;	src\main.c: 408: free(stringSendUART);
	ldw	x, _stringSendUART+0
	call	_free
;	src\main.c: 409: free(stringValue);
	ldw	x, _stringValue+0
	call	_free
;	src\main.c: 419: for (uint8_t i = 0; i < 9; i++) {
	clr	a
00112$:
	cp	a, #0x09
	jrnc	00104$
;	src\main.c: 420: delay_ms(65535);
	push	a
	clrw	x
	decw	x
	call	_delay_ms
	pop	a
;	src\main.c: 419: for (uint8_t i = 0; i < 9; i++) {
	inc	a
	jra	00112$
00104$:
;	src\main.c: 424: LED_OFF;
	ld	a, #0x20
	ldw	x, #0x5014
	call	_GPIO_WriteHigh
;	src\main.c: 434: }
	jp	00106$
;	src\main.c: 441: PUTCHAR_PROTOTYPE
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	src\main.c: 444: UART_SENDDATA8(c);
	ld	a, xl
	pushw	x
	call	_UART2_SendData8
	popw	x
;	src\main.c: 446: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
00101$:
	pushw	x
	ldw	x, #0x0080
	call	_UART2_GetFlagStatus
	popw	x
	tnz	a
	jreq	00101$
;	src\main.c: 448: return (c);
;	src\main.c: 449: }
	ret
;	src\main.c: 456: GETCHAR_PROTOTYPE
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	src\main.c: 464: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
00101$:
	ldw	x, #0x0080
	call	_UART2_GetFlagStatus
	tnz	a
	jreq	00101$
;	src\main.c: 465: c = UART_RECEIVEDATA8();
	call	_UART2_ReceiveData8
	clrw	x
;	src\main.c: 466: return (c);
	ld	xl, a
;	src\main.c: 467: }
	ret
;	src\main.c: 478: void assert_failed(uint8_t* file, uint32_t line)
;	-----------------------------------------
;	 function assert_failed
;	-----------------------------------------
_assert_failed:
;	src\main.c: 485: while (1)
00102$:
	jra	00102$
;	src\main.c: 488: }
	ldw	x, (1, sp)
	addw	sp, #6
	jp	(x)
	.area CODE
	.area CONST
_main_placeholderDS18X20String_65537_219:
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
_main_placeholderTemperatureBME280String_65537_219:
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
_main_placeholderHumidityBME280String_65537_219:
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
_main_placeholderPressureBME280String_65537_219:
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
