                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _UART_Setup
                                     13 	.globl _GPIO_Setup
                                     14 	.globl _Clock_Setup
                                     15 	.globl _BME280_ReadHumidity
                                     16 	.globl _BME280_ReadPressure
                                     17 	.globl _BME280_ReadTemperature
                                     18 	.globl _BME280_Setup
                                     19 	.globl _DS18X20_Setup
                                     20 	.globl _DS18X20_Get_Temperature
                                     21 	.globl _DS18X20_Read_ID
                                     22 	.globl _DS18X20_Reset
                                     23 	.globl _I2C_Setup
                                     24 	.globl _delay_ms
                                     25 	.globl _free
                                     26 	.globl _malloc
                                     27 	.globl _sprintf
                                     28 	.globl _printf
                                     29 	.globl _UART2_GetFlagStatus
                                     30 	.globl _UART2_SendData8
                                     31 	.globl _UART2_ReceiveData8
                                     32 	.globl _UART2_Init
                                     33 	.globl _UART2_DeInit
                                     34 	.globl _GPIO_WriteLow
                                     35 	.globl _GPIO_WriteHigh
                                     36 	.globl _GPIO_Init
                                     37 	.globl _GPIO_DeInit
                                     38 	.globl _CLK_GetFlagStatus
                                     39 	.globl _CLK_SYSCLKConfig
                                     40 	.globl _CLK_HSIPrescalerConfig
                                     41 	.globl _CLK_ClockSwitchConfig
                                     42 	.globl _CLK_PeripheralClockConfig
                                     43 	.globl _CLK_ClockSwitchCmd
                                     44 	.globl _CLK_LSICmd
                                     45 	.globl _CLK_HSICmd
                                     46 	.globl _CLK_HSECmd
                                     47 	.globl _CLK_DeInit
                                     48 	.globl _sizeSendUARTString
                                     49 	.globl _sizeValueString
                                     50 	.globl _stringValue
                                     51 	.globl _stringSendUART
                                     52 	.globl _fBME280Pressure
                                     53 	.globl _fBME280Humidity
                                     54 	.globl _fBME280Temperature
                                     55 	.globl _fDS18X20Temperature
                                     56 	.globl _decimal_bit
                                     57 	.globl _integer_bit
                                     58 	.globl _str1
                                     59 	.globl _sString
                                     60 	.globl _iI2CRead
                                     61 	.globl _iI2CWrite
                                     62 	.globl _iDS18X20RomID
                                     63 	.globl _floatToStr
                                     64 	.globl _putchar
                                     65 	.globl _getchar
                                     66 	.globl _assert_failed
                                     67 ;--------------------------------------------------------
                                     68 ; ram data
                                     69 ;--------------------------------------------------------
                                     70 	.area DATA
      000026                         71 _iDS18X20RomID::
      000026                         72 	.ds 8
      00002E                         73 _iI2CWrite::
      00002E                         74 	.ds 3
      000031                         75 _iI2CRead::
      000031                         76 	.ds 7
      000038                         77 _sString::
      000038                         78 	.ds 128
      0000B8                         79 _str1::
      0000B8                         80 	.ds 128
      000138                         81 _integer_bit::
      000138                         82 	.ds 1
      000139                         83 _decimal_bit::
      000139                         84 	.ds 1
                                     85 ;--------------------------------------------------------
                                     86 ; ram data
                                     87 ;--------------------------------------------------------
                                     88 	.area INITIALIZED
      00053C                         89 _fDS18X20Temperature::
      00053C                         90 	.ds 4
      000540                         91 _fBME280Temperature::
      000540                         92 	.ds 4
      000544                         93 _fBME280Humidity::
      000544                         94 	.ds 4
      000548                         95 _fBME280Pressure::
      000548                         96 	.ds 4
      00054C                         97 _stringSendUART::
      00054C                         98 	.ds 2
      00054E                         99 _stringValue::
      00054E                        100 	.ds 2
      000550                        101 _sizeValueString::
      000550                        102 	.ds 1
      000551                        103 _sizeSendUARTString::
      000551                        104 	.ds 1
                                    105 ;--------------------------------------------------------
                                    106 ; Stack segment in internal ram
                                    107 ;--------------------------------------------------------
                                    108 	.area	SSEG
      00BB8C                        109 __start__stack:
      00BB8C                        110 	.ds	1
                                    111 
                                    112 ;--------------------------------------------------------
                                    113 ; absolute external ram data
                                    114 ;--------------------------------------------------------
                                    115 	.area DABS (ABS)
                                    116 
                                    117 ; default segment ordering for linker
                                    118 	.area HOME
                                    119 	.area GSINIT
                                    120 	.area GSFINAL
                                    121 	.area CONST
                                    122 	.area INITIALIZER
                                    123 	.area CODE
                                    124 
                                    125 ;--------------------------------------------------------
                                    126 ; interrupt vector
                                    127 ;--------------------------------------------------------
                                    128 	.area HOME
      008000                        129 __interrupt_vect:
      008000 82 00 80 6F            130 	int s_GSINIT ; reset
      008004 82 00 AA 1E            131 	int _TRAP_IRQHandler ; trap
      008008 82 00 AA 1F            132 	int _TLI_IRQHandler ; int0
      00800C 82 00 AA 20            133 	int _AWU_IRQHandler ; int1
      008010 82 00 AA 21            134 	int _CLK_IRQHandler ; int2
      008014 82 00 AA 22            135 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 AA 23            136 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 AA 24            137 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 AA 25            138 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 AA 26            139 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 00 00            140 	int 0x000000 ; int8
      00802C 82 00 00 00            141 	int 0x000000 ; int9
      008030 82 00 AA 27            142 	int _SPI_IRQHandler ; int10
      008034 82 00 AA 28            143 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 AA 29            144 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 AA 2A            145 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 AA 2B            146 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 AA 2C            147 	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
      008048 82 00 AA 2D            148 	int _TIM3_CAP_COM_IRQHandler ; int16
      00804C 82 00 00 00            149 	int 0x000000 ; int17
      008050 82 00 00 00            150 	int 0x000000 ; int18
      008054 82 00 AA 2E            151 	int _I2C_IRQHandler ; int19
      008058 82 00 AA 2F            152 	int _UART2_TX_IRQHandler ; int20
      00805C 82 00 AA 30            153 	int _UART2_RX_IRQHandler ; int21
      008060 82 00 AA 31            154 	int _ADC1_IRQHandler ; int22
      008064 82 00 AA 32            155 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 AA 33            156 	int _EEPROM_EEC_IRQHandler ; int24
                                    157 ;--------------------------------------------------------
                                    158 ; global & static initialisations
                                    159 ;--------------------------------------------------------
                                    160 	.area HOME
                                    161 	.area GSINIT
                                    162 	.area GSFINAL
                                    163 	.area GSINIT
      00806F                        164 __sdcc_init_data:
                                    165 ; stm8_genXINIT() start
      00806F AE 05 3B         [ 2]  166 	ldw x, #l_DATA
      008072 27 07            [ 1]  167 	jreq	00002$
      008074                        168 00001$:
      008074 72 4F 00 00      [ 1]  169 	clr (s_DATA - 1, x)
      008078 5A               [ 2]  170 	decw x
      008079 26 F9            [ 1]  171 	jrne	00001$
      00807B                        172 00002$:
      00807B AE 00 16         [ 2]  173 	ldw	x, #l_INITIALIZER
      00807E 27 09            [ 1]  174 	jreq	00004$
      008080                        175 00003$:
      008080 D6 83 28         [ 1]  176 	ld	a, (s_INITIALIZER - 1, x)
      008083 D7 05 3B         [ 1]  177 	ld	(s_INITIALIZED - 1, x), a
      008086 5A               [ 2]  178 	decw	x
      008087 26 F7            [ 1]  179 	jrne	00003$
      008089                        180 00004$:
                                    181 ; stm8_genXINIT() end
                                    182 	.area GSFINAL
      00808C CC 80 6C         [ 2]  183 	jp	__sdcc_program_startup
                                    184 ;--------------------------------------------------------
                                    185 ; Home
                                    186 ;--------------------------------------------------------
                                    187 	.area HOME
                                    188 	.area HOME
      00806C                        189 __sdcc_program_startup:
      00806C CC A6 06         [ 2]  190 	jp	_main
                                    191 ;	return from main will return to caller
                                    192 ;--------------------------------------------------------
                                    193 ; code
                                    194 ;--------------------------------------------------------
                                    195 	.area CODE
                                    196 ;	src\main.c: 162: void Clock_Setup(void) {
                                    197 ;	-----------------------------------------
                                    198 ;	 function Clock_Setup
                                    199 ;	-----------------------------------------
      00A588                        200 _Clock_Setup:
                                    201 ;	src\main.c: 163: CLK_DeInit();
      00A588 CD 83 3F         [ 4]  202 	call	_CLK_DeInit
                                    203 ;	src\main.c: 164: CLK_HSECmd(DISABLE);
      00A58B 4F               [ 1]  204 	clr	a
      00A58C CD 83 75         [ 4]  205 	call	_CLK_HSECmd
                                    206 ;	src\main.c: 165: CLK_LSICmd(DISABLE);
      00A58F 4F               [ 1]  207 	clr	a
      00A590 CD 83 CB         [ 4]  208 	call	_CLK_LSICmd
                                    209 ;	src\main.c: 166: CLK_HSICmd(ENABLE);
      00A593 A6 01            [ 1]  210 	ld	a, #0x01
      00A595 CD 83 A0         [ 4]  211 	call	_CLK_HSICmd
                                    212 ;	src\main.c: 167: while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
      00A598                        213 00101$:
      00A598 AE 01 02         [ 2]  214 	ldw	x, #0x0102
      00A59B CD 87 04         [ 4]  215 	call	_CLK_GetFlagStatus
      00A59E 4D               [ 1]  216 	tnz	a
      00A59F 27 F7            [ 1]  217 	jreq	00101$
                                    218 ;	src\main.c: 168: CLK_ClockSwitchCmd(ENABLE);
      00A5A1 A6 01            [ 1]  219 	ld	a, #0x01
      00A5A3 CD 83 F6         [ 4]  220 	call	_CLK_ClockSwitchCmd
                                    221 ;	src\main.c: 169: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
      00A5A6 4F               [ 1]  222 	clr	a
      00A5A7 CD 86 04         [ 4]  223 	call	_CLK_HSIPrescalerConfig
                                    224 ;	src\main.c: 170: CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
      00A5AA A6 80            [ 1]  225 	ld	a, #0x80
      00A5AC CD 86 39         [ 4]  226 	call	_CLK_SYSCLKConfig
                                    227 ;	src\main.c: 171: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
      00A5AF 4B 01            [ 1]  228 	push	#0x01
      00A5B1 4B 00            [ 1]  229 	push	#0x00
      00A5B3 4B E1            [ 1]  230 	push	#0xe1
      00A5B5 A6 01            [ 1]  231 	ld	a, #0x01
      00A5B7 CD 84 EC         [ 4]  232 	call	_CLK_ClockSwitchConfig
                                    233 ;	src\main.c: 173: CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
      00A5BA 4B 00            [ 1]  234 	push	#0x00
      00A5BC A6 01            [ 1]  235 	ld	a, #0x01
      00A5BE CD 84 21         [ 4]  236 	call	_CLK_PeripheralClockConfig
                                    237 ;	src\main.c: 174: CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
      00A5C1 4B 00            [ 1]  238 	push	#0x00
      00A5C3 A6 12            [ 1]  239 	ld	a, #0x12
      00A5C5 CD 84 21         [ 4]  240 	call	_CLK_PeripheralClockConfig
                                    241 ;	src\main.c: 176: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
      00A5C8 4B 00            [ 1]  242 	push	#0x00
      00A5CA A6 07            [ 1]  243 	ld	a, #0x07
      00A5CC CD 84 21         [ 4]  244 	call	_CLK_PeripheralClockConfig
                                    245 ;	src\main.c: 177: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
      00A5CF 4B 00            [ 1]  246 	push	#0x00
      00A5D1 A6 05            [ 1]  247 	ld	a, #0x05
      00A5D3 CD 84 21         [ 4]  248 	call	_CLK_PeripheralClockConfig
                                    249 ;	src\main.c: 178: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
      00A5D6 4B 00            [ 1]  250 	push	#0x00
      00A5D8 A6 04            [ 1]  251 	ld	a, #0x04
      00A5DA CD 84 21         [ 4]  252 	call	_CLK_PeripheralClockConfig
                                    253 ;	src\main.c: 179: }
      00A5DD 81               [ 4]  254 	ret
                                    255 ;	src\main.c: 181: void GPIO_Setup(void) {
                                    256 ;	-----------------------------------------
                                    257 ;	 function GPIO_Setup
                                    258 ;	-----------------------------------------
      00A5DE                        259 _GPIO_Setup:
                                    260 ;	src\main.c: 186: GPIO_DeInit(GPIOE);
      00A5DE AE 50 14         [ 2]  261 	ldw	x, #0x5014
      00A5E1 CD 87 81         [ 4]  262 	call	_GPIO_DeInit
                                    263 ;	src\main.c: 187: GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
      00A5E4 4B F0            [ 1]  264 	push	#0xf0
      00A5E6 A6 20            [ 1]  265 	ld	a, #0x20
      00A5E8 AE 50 14         [ 2]  266 	ldw	x, #0x5014
      00A5EB CD 87 8F         [ 4]  267 	call	_GPIO_Init
                                    268 ;	src\main.c: 188: }
      00A5EE 81               [ 4]  269 	ret
                                    270 ;	src\main.c: 190: void UART_Setup() {
                                    271 ;	-----------------------------------------
                                    272 ;	 function UART_Setup
                                    273 ;	-----------------------------------------
      00A5EF                        274 _UART_Setup:
                                    275 ;	src\main.c: 191: UART_DEINIT();
      00A5EF CD 8C B9         [ 4]  276 	call	_UART2_DeInit
                                    277 ;	src\main.c: 201: UART_INIT((uint32_t)9600, UART_WORDLENGTH_8D, UART_STOPBITS_1, UART_PARITY_NO, UART_SYNCMODE_CLOCK_DISABLE, UART_MODE_TXRX_ENABLE);
      00A5F2 4B 0C            [ 1]  278 	push	#0x0c
      00A5F4 4B 80            [ 1]  279 	push	#0x80
      00A5F6 4B 00            [ 1]  280 	push	#0x00
      00A5F8 4B 00            [ 1]  281 	push	#0x00
      00A5FA 4B 00            [ 1]  282 	push	#0x00
      00A5FC 4B 80            [ 1]  283 	push	#0x80
      00A5FE 4B 25            [ 1]  284 	push	#0x25
      00A600 5F               [ 1]  285 	clrw	x
      00A601 89               [ 2]  286 	pushw	x
      00A602 CD 8C E0         [ 4]  287 	call	_UART2_Init
                                    288 ;	src\main.c: 202: }
      00A605 81               [ 4]  289 	ret
                                    290 ;	src\main.c: 212: void main(void) {
                                    291 ;	-----------------------------------------
                                    292 ;	 function main
                                    293 ;	-----------------------------------------
      00A606                        294 _main:
                                    295 ;	src\main.c: 213: Clock_Setup();
      00A606 CD A5 88         [ 4]  296 	call	_Clock_Setup
                                    297 ;	src\main.c: 214: GPIO_Setup();
      00A609 CD A5 DE         [ 4]  298 	call	_GPIO_Setup
                                    299 ;	src\main.c: 215: DS18X20_Setup();
      00A60C CD A1 69         [ 4]  300 	call	_DS18X20_Setup
                                    301 ;	src\main.c: 216: I2C_Setup();
      00A60F CD A1 7A         [ 4]  302 	call	_I2C_Setup
                                    303 ;	src\main.c: 217: UART_Setup();
      00A612 CD A5 EF         [ 4]  304 	call	_UART_Setup
                                    305 ;	src\main.c: 219: BME280_Setup();
      00A615 CD 95 F7         [ 4]  306 	call	_BME280_Setup
                                    307 ;	src\main.c: 235: LED_ON;
      00A618 A6 20            [ 1]  308 	ld	a, #0x20
      00A61A AE 50 14         [ 2]  309 	ldw	x, #0x5014
      00A61D CD 88 74         [ 4]  310 	call	_GPIO_WriteLow
                                    311 ;	src\main.c: 237: while (1) {
      00A620                        312 00106$:
                                    313 ;	src\main.c: 240: DS18X20_Reset();
      00A620 CD 9F AC         [ 4]  314 	call	_DS18X20_Reset
                                    315 ;	src\main.c: 242: delay_ms(2000);
      00A623 AE 07 D0         [ 2]  316 	ldw	x, #0x07d0
      00A626 CD 9F 9C         [ 4]  317 	call	_delay_ms
                                    318 ;	src\main.c: 244: if (!DS18X20_Read_ID(iDS18X20RomID)) {
      00A629 AE 00 26         [ 2]  319 	ldw	x, #(_iDS18X20RomID+0)
      00A62C CD A0 98         [ 4]  320 	call	_DS18X20_Read_ID
      00A62F 4D               [ 1]  321 	tnz	a
      00A630 26 0E            [ 1]  322 	jrne	00103$
                                    323 ;	src\main.c: 245: for (uint8_t i = 0; i < 8; i++) {
      00A632 4F               [ 1]  324 	clr	a
      00A633                        325 00109$:
      00A633 A1 08            [ 1]  326 	cp	a, #0x08
      00A635 24 09            [ 1]  327 	jrnc	00103$
                                    328 ;	src\main.c: 246: iDS18X20RomID[i] = 0;
      00A637 5F               [ 1]  329 	clrw	x
      00A638 97               [ 1]  330 	ld	xl, a
      00A639 1C 00 26         [ 2]  331 	addw	x, #(_iDS18X20RomID+0)
      00A63C 7F               [ 1]  332 	clr	(x)
                                    333 ;	src\main.c: 245: for (uint8_t i = 0; i < 8; i++) {
      00A63D 4C               [ 1]  334 	inc	a
      00A63E 20 F3            [ 2]  335 	jra	00109$
      00A640                        336 00103$:
                                    337 ;	src\main.c: 250: fDS18X20Temperature = DS18X20_Get_Temperature();
      00A640 CD A0 E4         [ 4]  338 	call	_DS18X20_Get_Temperature
      00A643 CF 05 3E         [ 2]  339 	ldw	_fDS18X20Temperature+2, x
      00A646 90 CF 05 3C      [ 2]  340 	ldw	_fDS18X20Temperature+0, y
                                    341 ;	src\main.c: 251: integer_bit = 2;
      00A64A 35 02 01 38      [ 1]  342 	mov	_integer_bit+0, #0x02
                                    343 ;	src\main.c: 252: decimal_bit = 2;
      00A64E 35 02 01 39      [ 1]  344 	mov	_decimal_bit+0, #0x02
                                    345 ;	src\main.c: 268: sizeValueString = integer_bit + decimal_bit + 1;
      00A652 35 05 05 50      [ 1]  346 	mov	_sizeValueString+0, #0x05
                                    347 ;	src\main.c: 269: sizeSendUARTString = sizeof(placeholderDS18X20String) + sizeValueString;
      00A656 35 39 05 51      [ 1]  348 	mov	_sizeSendUARTString+0, #0x39
                                    349 ;	src\main.c: 270: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00A65A AE 00 05         [ 2]  350 	ldw	x, #0x0005
      00A65D CD AE B3         [ 4]  351 	call	_malloc
      00A660 CF 05 4E         [ 2]  352 	ldw	_stringValue+0, x
                                    353 ;	src\main.c: 271: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00A663 C6 05 51         [ 1]  354 	ld	a, _sizeSendUARTString+0
      00A666 5F               [ 1]  355 	clrw	x
      00A667 97               [ 1]  356 	ld	xl, a
      00A668 CD AE B3         [ 4]  357 	call	_malloc
      00A66B CF 05 4C         [ 2]  358 	ldw	_stringSendUART+0, x
                                    359 ;	src\main.c: 273: floatToStr(stringValue, fDS18X20Temperature, integer_bit, decimal_bit);
      00A66E 3B 01 39         [ 1]  360 	push	_decimal_bit+0
      00A671 3B 01 38         [ 1]  361 	push	_integer_bit+0
      00A674 CE 05 3E         [ 2]  362 	ldw	x, _fDS18X20Temperature+2
      00A677 89               [ 2]  363 	pushw	x
      00A678 CE 05 3C         [ 2]  364 	ldw	x, _fDS18X20Temperature+0
      00A67B 89               [ 2]  365 	pushw	x
      00A67C CE 05 4E         [ 2]  366 	ldw	x, _stringValue+0
      00A67F CD A8 82         [ 4]  367 	call	_floatToStr
                                    368 ;	src\main.c: 275: sprintf(stringSendUART, placeholderDS18X20String, stringValue);
      00A682 CE 05 4E         [ 2]  369 	ldw	x, _stringValue+0
      00A685 89               [ 2]  370 	pushw	x
      00A686 4B 4C            [ 1]  371 	push	#<(_main_placeholderDS18X20String_65537_192+0)
      00A688 4B 82            [ 1]  372 	push	#((_main_placeholderDS18X20String_65537_192+0) >> 8)
      00A68A CE 05 4C         [ 2]  373 	ldw	x, _stringSendUART+0
      00A68D 89               [ 2]  374 	pushw	x
      00A68E CD B1 95         [ 4]  375 	call	_sprintf
      00A691 5B 06            [ 2]  376 	addw	sp, #6
                                    377 ;	src\main.c: 276: putchar(0x00);
      00A693 5F               [ 1]  378 	clrw	x
      00A694 CD A9 F6         [ 4]  379 	call	_putchar
                                    380 ;	src\main.c: 277: putchar(0x00);
      00A697 5F               [ 1]  381 	clrw	x
      00A698 CD A9 F6         [ 4]  382 	call	_putchar
                                    383 ;	src\main.c: 278: putchar(0x18);
      00A69B AE 00 18         [ 2]  384 	ldw	x, #0x0018
      00A69E CD A9 F6         [ 4]  385 	call	_putchar
                                    386 ;	src\main.c: 279: printf("%s\r\n", stringSendUART);
      00A6A1 CE 05 4C         [ 2]  387 	ldw	x, _stringSendUART+0
      00A6A4 89               [ 2]  388 	pushw	x
      00A6A5 4B 19            [ 1]  389 	push	#<(___str_4+0)
      00A6A7 4B 83            [ 1]  390 	push	#((___str_4+0) >> 8)
      00A6A9 CD B2 59         [ 4]  391 	call	_printf
      00A6AC 5B 04            [ 2]  392 	addw	sp, #4
                                    393 ;	src\main.c: 281: free(stringSendUART);
      00A6AE CE 05 4C         [ 2]  394 	ldw	x, _stringSendUART+0
      00A6B1 CD AA 5D         [ 4]  395 	call	_free
                                    396 ;	src\main.c: 282: free(stringValue);
      00A6B4 CE 05 4E         [ 2]  397 	ldw	x, _stringValue+0
      00A6B7 CD AA 5D         [ 4]  398 	call	_free
                                    399 ;	src\main.c: 284: delay_ms(5000);
      00A6BA AE 13 88         [ 2]  400 	ldw	x, #0x1388
      00A6BD CD 9F 9C         [ 4]  401 	call	_delay_ms
                                    402 ;	src\main.c: 343: integer_bit = 3;
      00A6C0 35 03 01 38      [ 1]  403 	mov	_integer_bit+0, #0x03
                                    404 ;	src\main.c: 344: decimal_bit = 2;
      00A6C4 35 02 01 39      [ 1]  405 	mov	_decimal_bit+0, #0x02
                                    406 ;	src\main.c: 346: fBME280Temperature = BME280_ReadTemperature();
      00A6C8 CD 9A 5E         [ 4]  407 	call	_BME280_ReadTemperature
      00A6CB CF 05 42         [ 2]  408 	ldw	_fBME280Temperature+2, x
      00A6CE 90 CF 05 40      [ 2]  409 	ldw	_fBME280Temperature+0, y
                                    410 ;	src\main.c: 347: delay_ms(2000);
      00A6D2 AE 07 D0         [ 2]  411 	ldw	x, #0x07d0
      00A6D5 CD 9F 9C         [ 4]  412 	call	_delay_ms
                                    413 ;	src\main.c: 349: sizeValueString = integer_bit + decimal_bit + 1;
      00A6D8 C6 01 38         [ 1]  414 	ld	a, _integer_bit+0
      00A6DB CB 01 39         [ 1]  415 	add	a, _decimal_bit+0
      00A6DE 4C               [ 1]  416 	inc	a
                                    417 ;	src\main.c: 350: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00A6DF C7 05 50         [ 1]  418 	ld	_sizeValueString+0, a
      00A6E2 5F               [ 1]  419 	clrw	x
      00A6E3 97               [ 1]  420 	ld	xl, a
      00A6E4 CD AE B3         [ 4]  421 	call	_malloc
      00A6E7 CF 05 4E         [ 2]  422 	ldw	_stringValue+0, x
                                    423 ;	src\main.c: 351: sizeSendUARTString = sizeof(placeholderTemperatureBME280String) + sizeValueString;
      00A6EA C6 05 50         [ 1]  424 	ld	a, _sizeValueString+0
      00A6ED AB 35            [ 1]  425 	add	a, #0x35
                                    426 ;	src\main.c: 352: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00A6EF C7 05 51         [ 1]  427 	ld	_sizeSendUARTString+0, a
      00A6F2 5F               [ 1]  428 	clrw	x
      00A6F3 97               [ 1]  429 	ld	xl, a
      00A6F4 CD AE B3         [ 4]  430 	call	_malloc
      00A6F7 CF 05 4C         [ 2]  431 	ldw	_stringSendUART+0, x
                                    432 ;	src\main.c: 354: floatToStr(stringValue, fBME280Temperature, integer_bit, decimal_bit);
      00A6FA 3B 01 39         [ 1]  433 	push	_decimal_bit+0
      00A6FD 3B 01 38         [ 1]  434 	push	_integer_bit+0
      00A700 CE 05 42         [ 2]  435 	ldw	x, _fBME280Temperature+2
      00A703 89               [ 2]  436 	pushw	x
      00A704 CE 05 40         [ 2]  437 	ldw	x, _fBME280Temperature+0
      00A707 89               [ 2]  438 	pushw	x
      00A708 CE 05 4E         [ 2]  439 	ldw	x, _stringValue+0
      00A70B CD A8 82         [ 4]  440 	call	_floatToStr
                                    441 ;	src\main.c: 355: sprintf(stringSendUART, placeholderTemperatureBME280String, stringValue);
      00A70E CE 05 4E         [ 2]  442 	ldw	x, _stringValue+0
      00A711 89               [ 2]  443 	pushw	x
      00A712 4B 80            [ 1]  444 	push	#<(_main_placeholderTemperatureBME280String_65537_192+0)
      00A714 4B 82            [ 1]  445 	push	#((_main_placeholderTemperatureBME280String_65537_192+0) >> 8)
      00A716 CE 05 4C         [ 2]  446 	ldw	x, _stringSendUART+0
      00A719 89               [ 2]  447 	pushw	x
      00A71A CD B1 95         [ 4]  448 	call	_sprintf
      00A71D 5B 06            [ 2]  449 	addw	sp, #6
                                    450 ;	src\main.c: 356: putchar(0x00);
      00A71F 5F               [ 1]  451 	clrw	x
      00A720 CD A9 F6         [ 4]  452 	call	_putchar
                                    453 ;	src\main.c: 357: putchar(0x00);
      00A723 5F               [ 1]  454 	clrw	x
      00A724 CD A9 F6         [ 4]  455 	call	_putchar
                                    456 ;	src\main.c: 358: putchar(0x18);
      00A727 AE 00 18         [ 2]  457 	ldw	x, #0x0018
      00A72A CD A9 F6         [ 4]  458 	call	_putchar
                                    459 ;	src\main.c: 359: printf("%s\r\n", stringSendUART);
      00A72D CE 05 4C         [ 2]  460 	ldw	x, _stringSendUART+0
      00A730 89               [ 2]  461 	pushw	x
      00A731 4B 19            [ 1]  462 	push	#<(___str_4+0)
      00A733 4B 83            [ 1]  463 	push	#((___str_4+0) >> 8)
      00A735 CD B2 59         [ 4]  464 	call	_printf
      00A738 5B 04            [ 2]  465 	addw	sp, #4
                                    466 ;	src\main.c: 361: free(stringSendUART);
      00A73A CE 05 4C         [ 2]  467 	ldw	x, _stringSendUART+0
      00A73D CD AA 5D         [ 4]  468 	call	_free
                                    469 ;	src\main.c: 362: free(stringValue);
      00A740 CE 05 4E         [ 2]  470 	ldw	x, _stringValue+0
      00A743 CD AA 5D         [ 4]  471 	call	_free
                                    472 ;	src\main.c: 364: integer_bit = 2;
      00A746 35 02 01 38      [ 1]  473 	mov	_integer_bit+0, #0x02
                                    474 ;	src\main.c: 365: decimal_bit = 2;
      00A74A 35 02 01 39      [ 1]  475 	mov	_decimal_bit+0, #0x02
                                    476 ;	src\main.c: 367: fBME280Humidity = BME280_ReadHumidity();
      00A74E CD 9D 2A         [ 4]  477 	call	_BME280_ReadHumidity
      00A751 CF 05 46         [ 2]  478 	ldw	_fBME280Humidity+2, x
      00A754 90 CF 05 44      [ 2]  479 	ldw	_fBME280Humidity+0, y
                                    480 ;	src\main.c: 368: delay_ms(2000);
      00A758 AE 07 D0         [ 2]  481 	ldw	x, #0x07d0
      00A75B CD 9F 9C         [ 4]  482 	call	_delay_ms
                                    483 ;	src\main.c: 370: sizeValueString = integer_bit + decimal_bit + 1;
      00A75E C6 01 38         [ 1]  484 	ld	a, _integer_bit+0
      00A761 CB 01 39         [ 1]  485 	add	a, _decimal_bit+0
      00A764 4C               [ 1]  486 	inc	a
                                    487 ;	src\main.c: 371: sizeSendUARTString = sizeof(placeholderHumidityBME280String) + sizeValueString;
      00A765 C7 05 50         [ 1]  488 	ld	_sizeValueString+0, a
      00A768 AB 32            [ 1]  489 	add	a, #0x32
      00A76A C7 05 51         [ 1]  490 	ld	_sizeSendUARTString+0, a
                                    491 ;	src\main.c: 372: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00A76D C6 05 50         [ 1]  492 	ld	a, _sizeValueString+0
      00A770 5F               [ 1]  493 	clrw	x
      00A771 97               [ 1]  494 	ld	xl, a
      00A772 CD AE B3         [ 4]  495 	call	_malloc
      00A775 CF 05 4E         [ 2]  496 	ldw	_stringValue+0, x
                                    497 ;	src\main.c: 373: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00A778 C6 05 51         [ 1]  498 	ld	a, _sizeSendUARTString+0
      00A77B 5F               [ 1]  499 	clrw	x
      00A77C 97               [ 1]  500 	ld	xl, a
      00A77D CD AE B3         [ 4]  501 	call	_malloc
      00A780 CF 05 4C         [ 2]  502 	ldw	_stringSendUART+0, x
                                    503 ;	src\main.c: 375: floatToStr(stringValue, fBME280Humidity, integer_bit, decimal_bit);
      00A783 3B 01 39         [ 1]  504 	push	_decimal_bit+0
      00A786 3B 01 38         [ 1]  505 	push	_integer_bit+0
      00A789 CE 05 46         [ 2]  506 	ldw	x, _fBME280Humidity+2
      00A78C 89               [ 2]  507 	pushw	x
      00A78D CE 05 44         [ 2]  508 	ldw	x, _fBME280Humidity+0
      00A790 89               [ 2]  509 	pushw	x
      00A791 CE 05 4E         [ 2]  510 	ldw	x, _stringValue+0
      00A794 CD A8 82         [ 4]  511 	call	_floatToStr
                                    512 ;	src\main.c: 376: sprintf(stringSendUART, placeholderHumidityBME280String, stringValue);
      00A797 CE 05 4E         [ 2]  513 	ldw	x, _stringValue+0
      00A79A 89               [ 2]  514 	pushw	x
      00A79B 4B B5            [ 1]  515 	push	#<(_main_placeholderHumidityBME280String_65537_192+0)
      00A79D 4B 82            [ 1]  516 	push	#((_main_placeholderHumidityBME280String_65537_192+0) >> 8)
      00A79F CE 05 4C         [ 2]  517 	ldw	x, _stringSendUART+0
      00A7A2 89               [ 2]  518 	pushw	x
      00A7A3 CD B1 95         [ 4]  519 	call	_sprintf
      00A7A6 5B 06            [ 2]  520 	addw	sp, #6
                                    521 ;	src\main.c: 381: putchar(0x00);
      00A7A8 5F               [ 1]  522 	clrw	x
      00A7A9 CD A9 F6         [ 4]  523 	call	_putchar
                                    524 ;	src\main.c: 382: putchar(0x00);
      00A7AC 5F               [ 1]  525 	clrw	x
      00A7AD CD A9 F6         [ 4]  526 	call	_putchar
                                    527 ;	src\main.c: 383: putchar(0x18);
      00A7B0 AE 00 18         [ 2]  528 	ldw	x, #0x0018
      00A7B3 CD A9 F6         [ 4]  529 	call	_putchar
                                    530 ;	src\main.c: 384: printf("%s\r\n", stringSendUART);
      00A7B6 CE 05 4C         [ 2]  531 	ldw	x, _stringSendUART+0
      00A7B9 89               [ 2]  532 	pushw	x
      00A7BA 4B 19            [ 1]  533 	push	#<(___str_4+0)
      00A7BC 4B 83            [ 1]  534 	push	#((___str_4+0) >> 8)
      00A7BE CD B2 59         [ 4]  535 	call	_printf
      00A7C1 5B 04            [ 2]  536 	addw	sp, #4
                                    537 ;	src\main.c: 386: free(stringSendUART);
      00A7C3 CE 05 4C         [ 2]  538 	ldw	x, _stringSendUART+0
      00A7C6 CD AA 5D         [ 4]  539 	call	_free
                                    540 ;	src\main.c: 387: free(stringValue);
      00A7C9 CE 05 4E         [ 2]  541 	ldw	x, _stringValue+0
      00A7CC CD AA 5D         [ 4]  542 	call	_free
                                    543 ;	src\main.c: 389: integer_bit = 5;
      00A7CF 35 05 01 38      [ 1]  544 	mov	_integer_bit+0, #0x05
                                    545 ;	src\main.c: 390: decimal_bit = 1;
      00A7D3 35 01 01 39      [ 1]  546 	mov	_decimal_bit+0, #0x01
                                    547 ;	src\main.c: 392: fBME280Pressure = BME280_ReadPressure();
      00A7D7 CD 9B 82         [ 4]  548 	call	_BME280_ReadPressure
      00A7DA 89               [ 2]  549 	pushw	x
      00A7DB 90 89            [ 2]  550 	pushw	y
      00A7DD CD AC AA         [ 4]  551 	call	___fs2ulong
      00A7E0 5B 04            [ 2]  552 	addw	sp, #4
      00A7E2 CF 05 4A         [ 2]  553 	ldw	_fBME280Pressure+2, x
      00A7E5 90 CF 05 48      [ 2]  554 	ldw	_fBME280Pressure+0, y
                                    555 ;	src\main.c: 393: delay_ms(2000);
      00A7E9 AE 07 D0         [ 2]  556 	ldw	x, #0x07d0
      00A7EC CD 9F 9C         [ 4]  557 	call	_delay_ms
                                    558 ;	src\main.c: 395: sizeValueString = integer_bit + decimal_bit + 1;
      00A7EF C6 01 38         [ 1]  559 	ld	a, _integer_bit+0
      00A7F2 CB 01 39         [ 1]  560 	add	a, _decimal_bit+0
      00A7F5 4C               [ 1]  561 	inc	a
                                    562 ;	src\main.c: 396: sizeSendUARTString = sizeof(placeholderPressureBME280String) + sizeValueString;
      00A7F6 C7 05 50         [ 1]  563 	ld	_sizeValueString+0, a
      00A7F9 AB 32            [ 1]  564 	add	a, #0x32
      00A7FB C7 05 51         [ 1]  565 	ld	_sizeSendUARTString+0, a
                                    566 ;	src\main.c: 397: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00A7FE 5F               [ 1]  567 	clrw	x
      00A7FF C6 05 50         [ 1]  568 	ld	a, _sizeValueString+0
      00A802 97               [ 1]  569 	ld	xl, a
      00A803 CD AE B3         [ 4]  570 	call	_malloc
      00A806 CF 05 4E         [ 2]  571 	ldw	_stringValue+0, x
                                    572 ;	src\main.c: 398: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00A809 C6 05 51         [ 1]  573 	ld	a, _sizeSendUARTString+0
      00A80C 5F               [ 1]  574 	clrw	x
      00A80D 97               [ 1]  575 	ld	xl, a
      00A80E CD AE B3         [ 4]  576 	call	_malloc
      00A811 CF 05 4C         [ 2]  577 	ldw	_stringSendUART+0, x
                                    578 ;	src\main.c: 400: floatToStr(stringValue, (float)fBME280Pressure, integer_bit, decimal_bit);
      00A814 CE 05 4A         [ 2]  579 	ldw	x, _fBME280Pressure+2
      00A817 89               [ 2]  580 	pushw	x
      00A818 CE 05 48         [ 2]  581 	ldw	x, _fBME280Pressure+0
      00A81B 89               [ 2]  582 	pushw	x
      00A81C CD AD 71         [ 4]  583 	call	___ulong2fs
      00A81F 5B 04            [ 2]  584 	addw	sp, #4
      00A821 3B 01 39         [ 1]  585 	push	_decimal_bit+0
      00A824 3B 01 38         [ 1]  586 	push	_integer_bit+0
      00A827 89               [ 2]  587 	pushw	x
      00A828 90 89            [ 2]  588 	pushw	y
      00A82A CE 05 4E         [ 2]  589 	ldw	x, _stringValue+0
      00A82D CD A8 82         [ 4]  590 	call	_floatToStr
                                    591 ;	src\main.c: 401: sprintf(stringSendUART, placeholderPressureBME280String, stringValue);
      00A830 CE 05 4E         [ 2]  592 	ldw	x, _stringValue+0
      00A833 89               [ 2]  593 	pushw	x
      00A834 4B E7            [ 1]  594 	push	#<(_main_placeholderPressureBME280String_65537_192+0)
      00A836 4B 82            [ 1]  595 	push	#((_main_placeholderPressureBME280String_65537_192+0) >> 8)
      00A838 CE 05 4C         [ 2]  596 	ldw	x, _stringSendUART+0
      00A83B 89               [ 2]  597 	pushw	x
      00A83C CD B1 95         [ 4]  598 	call	_sprintf
      00A83F 5B 06            [ 2]  599 	addw	sp, #6
                                    600 ;	src\main.c: 406: putchar(0x00);
      00A841 5F               [ 1]  601 	clrw	x
      00A842 CD A9 F6         [ 4]  602 	call	_putchar
                                    603 ;	src\main.c: 407: putchar(0x00);
      00A845 5F               [ 1]  604 	clrw	x
      00A846 CD A9 F6         [ 4]  605 	call	_putchar
                                    606 ;	src\main.c: 408: putchar(0x18);
      00A849 AE 00 18         [ 2]  607 	ldw	x, #0x0018
      00A84C CD A9 F6         [ 4]  608 	call	_putchar
                                    609 ;	src\main.c: 409: printf("%s\r\n", stringSendUART);
      00A84F CE 05 4C         [ 2]  610 	ldw	x, _stringSendUART+0
      00A852 89               [ 2]  611 	pushw	x
      00A853 4B 19            [ 1]  612 	push	#<(___str_4+0)
      00A855 4B 83            [ 1]  613 	push	#((___str_4+0) >> 8)
      00A857 CD B2 59         [ 4]  614 	call	_printf
      00A85A 5B 04            [ 2]  615 	addw	sp, #4
                                    616 ;	src\main.c: 411: free(stringSendUART);
      00A85C CE 05 4C         [ 2]  617 	ldw	x, _stringSendUART+0
      00A85F CD AA 5D         [ 4]  618 	call	_free
                                    619 ;	src\main.c: 412: free(stringValue);
      00A862 CE 05 4E         [ 2]  620 	ldw	x, _stringValue+0
      00A865 CD AA 5D         [ 4]  621 	call	_free
                                    622 ;	src\main.c: 422: for (uint8_t i = 0; i < 9; i++) {
      00A868 4F               [ 1]  623 	clr	a
      00A869                        624 00112$:
      00A869 A1 09            [ 1]  625 	cp	a, #0x09
      00A86B 24 0A            [ 1]  626 	jrnc	00104$
                                    627 ;	src\main.c: 423: delay_ms(65535);
      00A86D 88               [ 1]  628 	push	a
      00A86E 5F               [ 1]  629 	clrw	x
      00A86F 5A               [ 2]  630 	decw	x
      00A870 CD 9F 9C         [ 4]  631 	call	_delay_ms
      00A873 84               [ 1]  632 	pop	a
                                    633 ;	src\main.c: 422: for (uint8_t i = 0; i < 9; i++) {
      00A874 4C               [ 1]  634 	inc	a
      00A875 20 F2            [ 2]  635 	jra	00112$
      00A877                        636 00104$:
                                    637 ;	src\main.c: 427: LED_OFF;
      00A877 A6 20            [ 1]  638 	ld	a, #0x20
      00A879 AE 50 14         [ 2]  639 	ldw	x, #0x5014
      00A87C CD 88 6B         [ 4]  640 	call	_GPIO_WriteHigh
                                    641 ;	src\main.c: 437: }
      00A87F CC A6 20         [ 2]  642 	jp	00106$
                                    643 ;	src\main.c: 439: void floatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit) {
                                    644 ;	-----------------------------------------
                                    645 ;	 function floatToStr
                                    646 ;	-----------------------------------------
      00A882                        647 _floatToStr:
      00A882 52 17            [ 2]  648 	sub	sp, #23
      00A884 1F 15            [ 2]  649 	ldw	(0x15, sp), x
                                    650 ;	src\main.c: 441: uint8_t minus = 0;
      00A886 0F 05            [ 1]  651 	clr	(0x05, sp)
                                    652 ;	src\main.c: 444: uint8_t trailing_zero_count = 0;
      00A888 0F 06            [ 1]  653 	clr	(0x06, sp)
                                    654 ;	src\main.c: 446: if (number < 0) {
      00A88A 5F               [ 1]  655 	clrw	x
      00A88B 89               [ 2]  656 	pushw	x
      00A88C 5F               [ 1]  657 	clrw	x
      00A88D 89               [ 2]  658 	pushw	x
      00A88E 1E 20            [ 2]  659 	ldw	x, (0x20, sp)
      00A890 89               [ 2]  660 	pushw	x
      00A891 1E 20            [ 2]  661 	ldw	x, (0x20, sp)
      00A893 89               [ 2]  662 	pushw	x
      00A894 CD AE 0D         [ 4]  663 	call	___fslt
      00A897 4D               [ 1]  664 	tnz	a
      00A898 27 14            [ 1]  665 	jreq	00102$
                                    666 ;	src\main.c: 447: str[0] = 0x2D;
      00A89A 1E 15            [ 2]  667 	ldw	x, (0x15, sp)
      00A89C A6 2D            [ 1]  668 	ld	a, #0x2d
      00A89E F7               [ 1]  669 	ld	(x), a
                                    670 ;	src\main.c: 448: number *= -1;
      00A89F 16 1C            [ 2]  671 	ldw	y, (0x1c, sp)
      00A8A1 1E 1A            [ 2]  672 	ldw	x, (0x1a, sp)
      00A8A3 58               [ 2]  673 	sllw	x
      00A8A4 8C               [ 1]  674 	ccf
      00A8A5 56               [ 2]  675 	rrcw	x
      00A8A6 17 1C            [ 2]  676 	ldw	(0x1c, sp), y
      00A8A8 1F 1A            [ 2]  677 	ldw	(0x1a, sp), x
                                    678 ;	src\main.c: 449: minus = 1;
      00A8AA A6 01            [ 1]  679 	ld	a, #0x01
      00A8AC 6B 05            [ 1]  680 	ld	(0x05, sp), a
      00A8AE                        681 00102$:
                                    682 ;	src\main.c: 452: temp = (uint32_t)(number/1);
      00A8AE 16 1C            [ 2]  683 	ldw	y, (0x1c, sp)
      00A8B0 17 09            [ 2]  684 	ldw	(0x09, sp), y
      00A8B2 16 1A            [ 2]  685 	ldw	y, (0x1a, sp)
      00A8B4 17 07            [ 2]  686 	ldw	(0x07, sp), y
      00A8B6 1E 09            [ 2]  687 	ldw	x, (0x09, sp)
      00A8B8 89               [ 2]  688 	pushw	x
      00A8B9 1E 09            [ 2]  689 	ldw	x, (0x09, sp)
      00A8BB 89               [ 2]  690 	pushw	x
      00A8BC CD AC AA         [ 4]  691 	call	___fs2ulong
      00A8BF 5B 04            [ 2]  692 	addw	sp, #4
      00A8C1 1F 0F            [ 2]  693 	ldw	(0x0f, sp), x
                                    694 ;	src\main.c: 454: for (i = 1; i <= integer_bit; i++) {
      00A8C3 A6 01            [ 1]  695 	ld	a, #0x01
      00A8C5 6B 17            [ 1]  696 	ld	(0x17, sp), a
      00A8C7                        697 00114$:
                                    698 ;	src\main.c: 456: str[integer_bit - i + minus] = table[0];
      00A8C7 7B 1E            [ 1]  699 	ld	a, (0x1e, sp)
      00A8C9 6B 12            [ 1]  700 	ld	(0x12, sp), a
      00A8CB 0F 11            [ 1]  701 	clr	(0x11, sp)
      00A8CD 7B 05            [ 1]  702 	ld	a, (0x05, sp)
      00A8CF 6B 0C            [ 1]  703 	ld	(0x0c, sp), a
      00A8D1 0F 0B            [ 1]  704 	clr	(0x0b, sp)
                                    705 ;	src\main.c: 454: for (i = 1; i <= integer_bit; i++) {
      00A8D3 7B 17            [ 1]  706 	ld	a, (0x17, sp)
      00A8D5 11 1E            [ 1]  707 	cp	a, (0x1e, sp)
      00A8D7 22 3E            [ 1]  708 	jrugt	00106$
                                    709 ;	src\main.c: 456: str[integer_bit - i + minus] = table[0];
      00A8D9 5F               [ 1]  710 	clrw	x
      00A8DA 7B 17            [ 1]  711 	ld	a, (0x17, sp)
      00A8DC 97               [ 1]  712 	ld	xl, a
                                    713 ;	src\main.c: 458: str[integer_bit - i + minus] = table[temp%10];
      00A8DD 16 0F            [ 2]  714 	ldw	y, (0x0f, sp)
      00A8DF 17 13            [ 2]  715 	ldw	(0x13, sp), y
                                    716 ;	src\main.c: 456: str[integer_bit - i + minus] = table[0];
      00A8E1 50               [ 2]  717 	negw	x
      00A8E2 72 FB 11         [ 2]  718 	addw	x, (0x11, sp)
      00A8E5 72 FB 0B         [ 2]  719 	addw	x, (0x0b, sp)
      00A8E8 72 FB 15         [ 2]  720 	addw	x, (0x15, sp)
      00A8EB 1F 11            [ 2]  721 	ldw	(0x11, sp), x
                                    722 ;	src\main.c: 455: if (temp == 0) {
      00A8ED 1E 0F            [ 2]  723 	ldw	x, (0x0f, sp)
      00A8EF 26 08            [ 1]  724 	jrne	00104$
                                    725 ;	src\main.c: 456: str[integer_bit - i + minus] = table[0];
      00A8F1 C6 82 42         [ 1]  726 	ld	a, _table+0
      00A8F4 1E 11            [ 2]  727 	ldw	x, (0x11, sp)
      00A8F6 F7               [ 1]  728 	ld	(x), a
      00A8F7 20 11            [ 2]  729 	jra	00105$
      00A8F9                        730 00104$:
                                    731 ;	src\main.c: 458: str[integer_bit - i + minus] = table[temp%10];
      00A8F9 1E 13            [ 2]  732 	ldw	x, (0x13, sp)
      00A8FB 90 AE 00 0A      [ 2]  733 	ldw	y, #0x000a
      00A8FF 65               [ 2]  734 	divw	x, y
      00A900 93               [ 1]  735 	ldw	x, y
      00A901 90 9F            [ 1]  736 	ld	a, yl
      00A903 97               [ 1]  737 	ld	xl, a
      00A904 D6 82 42         [ 1]  738 	ld	a, (_table+0, x)
      00A907 1E 11            [ 2]  739 	ldw	x, (0x11, sp)
      00A909 F7               [ 1]  740 	ld	(x), a
      00A90A                        741 00105$:
                                    742 ;	src\main.c: 460: temp /= 10;
      00A90A 1E 13            [ 2]  743 	ldw	x, (0x13, sp)
      00A90C 90 AE 00 0A      [ 2]  744 	ldw	y, #0x000a
      00A910 65               [ 2]  745 	divw	x, y
      00A911 1F 0F            [ 2]  746 	ldw	(0x0f, sp), x
                                    747 ;	src\main.c: 454: for (i = 1; i <= integer_bit; i++) {
      00A913 0C 17            [ 1]  748 	inc	(0x17, sp)
      00A915 20 B0            [ 2]  749 	jra	00114$
      00A917                        750 00106$:
                                    751 ;	src\main.c: 463: for (i = 0; i < (integer_bit - 1); i++) {
      00A917 0F 17            [ 1]  752 	clr	(0x17, sp)
      00A919                        753 00117$:
      00A919 16 11            [ 2]  754 	ldw	y, (0x11, sp)
      00A91B 17 0D            [ 2]  755 	ldw	(0x0d, sp), y
      00A91D 1E 11            [ 2]  756 	ldw	x, (0x11, sp)
      00A91F 5A               [ 2]  757 	decw	x
      00A920 1F 13            [ 2]  758 	ldw	(0x13, sp), x
      00A922 5F               [ 1]  759 	clrw	x
      00A923 7B 17            [ 1]  760 	ld	a, (0x17, sp)
      00A925 97               [ 1]  761 	ld	xl, a
      00A926 13 13            [ 2]  762 	cpw	x, (0x13, sp)
      00A928 2E 11            [ 1]  763 	jrsge	00110$
                                    764 ;	src\main.c: 464: if (str[i + minus] == '0') {
      00A92A 72 FB 0B         [ 2]  765 	addw	x, (0x0b, sp)
      00A92D 72 FB 15         [ 2]  766 	addw	x, (0x15, sp)
      00A930 F6               [ 1]  767 	ld	a, (x)
      00A931 A1 30            [ 1]  768 	cp	a, #0x30
      00A933 26 06            [ 1]  769 	jrne	00110$
                                    770 ;	src\main.c: 465: trailing_zero_count += 1;
      00A935 0C 06            [ 1]  771 	inc	(0x06, sp)
                                    772 ;	src\main.c: 463: for (i = 0; i < (integer_bit - 1); i++) {
      00A937 0C 17            [ 1]  773 	inc	(0x17, sp)
      00A939 20 DE            [ 2]  774 	jra	00117$
      00A93B                        775 00110$:
                                    776 ;	src\main.c: 471: for (i = minus; i <= trailing_zero_count + minus; i++) {
      00A93B 7B 05            [ 1]  777 	ld	a, (0x05, sp)
      00A93D 6B 17            [ 1]  778 	ld	(0x17, sp), a
      00A93F                        779 00120$:
      00A93F 7B 06            [ 1]  780 	ld	a, (0x06, sp)
      00A941 6B 10            [ 1]  781 	ld	(0x10, sp), a
      00A943 0F 0F            [ 1]  782 	clr	(0x0f, sp)
      00A945 16 0B            [ 2]  783 	ldw	y, (0x0b, sp)
      00A947 17 11            [ 2]  784 	ldw	(0x11, sp), y
      00A949 1E 0F            [ 2]  785 	ldw	x, (0x0f, sp)
      00A94B 72 FB 0B         [ 2]  786 	addw	x, (0x0b, sp)
      00A94E 7B 17            [ 1]  787 	ld	a, (0x17, sp)
      00A950 6B 14            [ 1]  788 	ld	(0x14, sp), a
      00A952 0F 13            [ 1]  789 	clr	(0x13, sp)
      00A954 13 13            [ 2]  790 	cpw	x, (0x13, sp)
      00A956 2F 16            [ 1]  791 	jrslt	00111$
                                    792 ;	src\main.c: 472: str[i] = str[i + trailing_zero_count];
      00A958 5F               [ 1]  793 	clrw	x
      00A959 7B 17            [ 1]  794 	ld	a, (0x17, sp)
      00A95B 97               [ 1]  795 	ld	xl, a
      00A95C 72 FB 15         [ 2]  796 	addw	x, (0x15, sp)
      00A95F 16 13            [ 2]  797 	ldw	y, (0x13, sp)
      00A961 72 F9 0F         [ 2]  798 	addw	y, (0x0f, sp)
      00A964 72 F9 15         [ 2]  799 	addw	y, (0x15, sp)
      00A967 90 F6            [ 1]  800 	ld	a, (y)
      00A969 F7               [ 1]  801 	ld	(x), a
                                    802 ;	src\main.c: 471: for (i = minus; i <= trailing_zero_count + minus; i++) {
      00A96A 0C 17            [ 1]  803 	inc	(0x17, sp)
      00A96C 20 D1            [ 2]  804 	jra	00120$
      00A96E                        805 00111$:
                                    806 ;	src\main.c: 475: *(str + integer_bit - trailing_zero_count + minus) = '.';
      00A96E 5F               [ 1]  807 	clrw	x
      00A96F 7B 1E            [ 1]  808 	ld	a, (0x1e, sp)
      00A971 97               [ 1]  809 	ld	xl, a
      00A972 72 FB 15         [ 2]  810 	addw	x, (0x15, sp)
      00A975 1F 13            [ 2]  811 	ldw	(0x13, sp), x
      00A977 72 F0 0F         [ 2]  812 	subw	x, (0x0f, sp)
      00A97A 9F               [ 1]  813 	ld	a, xl
      00A97B 1B 05            [ 1]  814 	add	a, (0x05, sp)
      00A97D 02               [ 1]  815 	rlwa	x
      00A97E A9 00            [ 1]  816 	adc	a, #0x00
      00A980 95               [ 1]  817 	ld	xh, a
      00A981 A6 2E            [ 1]  818 	ld	a, #0x2e
      00A983 F7               [ 1]  819 	ld	(x), a
                                    820 ;	src\main.c: 477: t2 = number;
      00A984 16 09            [ 2]  821 	ldw	y, (0x09, sp)
      00A986 17 03            [ 2]  822 	ldw	(0x03, sp), y
      00A988 16 07            [ 2]  823 	ldw	y, (0x07, sp)
      00A98A 17 01            [ 2]  824 	ldw	(0x01, sp), y
                                    825 ;	src\main.c: 479: for (i = 1; i <= decimal_bit; i++) {
      00A98C A6 01            [ 1]  826 	ld	a, #0x01
      00A98E 6B 17            [ 1]  827 	ld	(0x17, sp), a
      00A990                        828 00123$:
      00A990 7B 17            [ 1]  829 	ld	a, (0x17, sp)
      00A992 11 1F            [ 1]  830 	cp	a, (0x1f, sp)
      00A994 22 46            [ 1]  831 	jrugt	00112$
                                    832 ;	src\main.c: 480: temp = t2 * 10;
      00A996 1E 03            [ 2]  833 	ldw	x, (0x03, sp)
      00A998 89               [ 2]  834 	pushw	x
      00A999 1E 03            [ 2]  835 	ldw	x, (0x03, sp)
      00A99B 89               [ 2]  836 	pushw	x
      00A99C 5F               [ 1]  837 	clrw	x
      00A99D 89               [ 2]  838 	pushw	x
      00A99E 4B 20            [ 1]  839 	push	#0x20
      00A9A0 4B 41            [ 1]  840 	push	#0x41
      00A9A2 CD AA C8         [ 4]  841 	call	___fsmul
      00A9A5 1F 0B            [ 2]  842 	ldw	(0x0b, sp), x
      00A9A7 17 09            [ 2]  843 	ldw	(0x09, sp), y
      00A9A9 1E 0B            [ 2]  844 	ldw	x, (0x0b, sp)
      00A9AB 89               [ 2]  845 	pushw	x
      00A9AC 1E 0B            [ 2]  846 	ldw	x, (0x0b, sp)
      00A9AE 89               [ 2]  847 	pushw	x
      00A9AF CD B2 16         [ 4]  848 	call	___fs2uint
      00A9B2 51               [ 1]  849 	exgw	x, y
                                    850 ;	src\main.c: 481: str[integer_bit + i - trailing_zero_count + minus] = table[temp%10];
      00A9B3 7B 17            [ 1]  851 	ld	a, (0x17, sp)
      00A9B5 5F               [ 1]  852 	clrw	x
      00A9B6 97               [ 1]  853 	ld	xl, a
      00A9B7 72 FB 0D         [ 2]  854 	addw	x, (0x0d, sp)
      00A9BA 72 F0 0F         [ 2]  855 	subw	x, (0x0f, sp)
      00A9BD 72 FB 11         [ 2]  856 	addw	x, (0x11, sp)
      00A9C0 72 FB 15         [ 2]  857 	addw	x, (0x15, sp)
      00A9C3 89               [ 2]  858 	pushw	x
      00A9C4 93               [ 1]  859 	ldw	x, y
      00A9C5 90 AE 00 0A      [ 2]  860 	ldw	y, #0x000a
      00A9C9 65               [ 2]  861 	divw	x, y
      00A9CA 85               [ 2]  862 	popw	x
      00A9CB 90 D6 82 42      [ 1]  863 	ld	a, (_table+0, y)
      00A9CF F7               [ 1]  864 	ld	(x), a
                                    865 ;	src\main.c: 482: t2 *= 10;
      00A9D0 1E 0B            [ 2]  866 	ldw	x, (0x0b, sp)
      00A9D2 16 09            [ 2]  867 	ldw	y, (0x09, sp)
      00A9D4 1F 03            [ 2]  868 	ldw	(0x03, sp), x
      00A9D6 17 01            [ 2]  869 	ldw	(0x01, sp), y
                                    870 ;	src\main.c: 479: for (i = 1; i <= decimal_bit; i++) {
      00A9D8 0C 17            [ 1]  871 	inc	(0x17, sp)
      00A9DA 20 B4            [ 2]  872 	jra	00123$
      00A9DC                        873 00112$:
                                    874 ;	src\main.c: 485: *(str + integer_bit + 1 + decimal_bit - trailing_zero_count + minus) = '\0';
      00A9DC 1E 13            [ 2]  875 	ldw	x, (0x13, sp)
      00A9DE 5C               [ 1]  876 	incw	x
      00A9DF 9F               [ 1]  877 	ld	a, xl
      00A9E0 1B 1F            [ 1]  878 	add	a, (0x1f, sp)
      00A9E2 02               [ 1]  879 	rlwa	x
      00A9E3 A9 00            [ 1]  880 	adc	a, #0x00
      00A9E5 95               [ 1]  881 	ld	xh, a
      00A9E6 72 F0 0F         [ 2]  882 	subw	x, (0x0f, sp)
      00A9E9 9F               [ 1]  883 	ld	a, xl
      00A9EA 1B 05            [ 1]  884 	add	a, (0x05, sp)
      00A9EC 02               [ 1]  885 	rlwa	x
      00A9ED A9 00            [ 1]  886 	adc	a, #0x00
      00A9EF 95               [ 1]  887 	ld	xh, a
      00A9F0 7F               [ 1]  888 	clr	(x)
                                    889 ;	src\main.c: 486: }
      00A9F1 1E 18            [ 2]  890 	ldw	x, (24, sp)
      00A9F3 5B 1F            [ 2]  891 	addw	sp, #31
      00A9F5 FC               [ 2]  892 	jp	(x)
                                    893 ;	src\main.c: 542: PUTCHAR_PROTOTYPE
                                    894 ;	-----------------------------------------
                                    895 ;	 function putchar
                                    896 ;	-----------------------------------------
      00A9F6                        897 _putchar:
                                    898 ;	src\main.c: 545: UART_SENDDATA8(c);
      00A9F6 9F               [ 1]  899 	ld	a, xl
      00A9F7 89               [ 2]  900 	pushw	x
      00A9F8 CD 92 3B         [ 4]  901 	call	_UART2_SendData8
      00A9FB 85               [ 2]  902 	popw	x
                                    903 ;	src\main.c: 547: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
      00A9FC                        904 00101$:
      00A9FC 89               [ 2]  905 	pushw	x
      00A9FD AE 00 80         [ 2]  906 	ldw	x, #0x0080
      00AA00 CD 92 8E         [ 4]  907 	call	_UART2_GetFlagStatus
      00AA03 85               [ 2]  908 	popw	x
      00AA04 4D               [ 1]  909 	tnz	a
      00AA05 27 F5            [ 1]  910 	jreq	00101$
                                    911 ;	src\main.c: 549: return (c);
                                    912 ;	src\main.c: 550: }
      00AA07 81               [ 4]  913 	ret
                                    914 ;	src\main.c: 557: GETCHAR_PROTOTYPE
                                    915 ;	-----------------------------------------
                                    916 ;	 function getchar
                                    917 ;	-----------------------------------------
      00AA08                        918 _getchar:
                                    919 ;	src\main.c: 565: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
      00AA08                        920 00101$:
      00AA08 AE 00 80         [ 2]  921 	ldw	x, #0x0080
      00AA0B CD 92 8E         [ 4]  922 	call	_UART2_GetFlagStatus
      00AA0E 4D               [ 1]  923 	tnz	a
      00AA0F 27 F7            [ 1]  924 	jreq	00101$
                                    925 ;	src\main.c: 566: c = UART_RECEIVEDATA8();
      00AA11 CD 92 1C         [ 4]  926 	call	_UART2_ReceiveData8
      00AA14 5F               [ 1]  927 	clrw	x
                                    928 ;	src\main.c: 567: return (c);
      00AA15 97               [ 1]  929 	ld	xl, a
                                    930 ;	src\main.c: 568: }
      00AA16 81               [ 4]  931 	ret
                                    932 ;	src\main.c: 579: void assert_failed(uint8_t* file, uint32_t line)
                                    933 ;	-----------------------------------------
                                    934 ;	 function assert_failed
                                    935 ;	-----------------------------------------
      00AA17                        936 _assert_failed:
                                    937 ;	src\main.c: 586: while (1)
      00AA17                        938 00102$:
      00AA17 20 FE            [ 2]  939 	jra	00102$
                                    940 ;	src\main.c: 589: }
      00AA19 1E 01            [ 2]  941 	ldw	x, (1, sp)
      00AA1B 5B 06            [ 2]  942 	addw	sp, #6
      00AA1D FC               [ 2]  943 	jp	(x)
                                    944 	.area CODE
                                    945 	.area CONST
      008242                        946 _table:
      008242 30                     947 	.db #0x30	; 48	'0'
      008243 31                     948 	.db #0x31	; 49	'1'
      008244 32                     949 	.db #0x32	; 50	'2'
      008245 33                     950 	.db #0x33	; 51	'3'
      008246 34                     951 	.db #0x34	; 52	'4'
      008247 35                     952 	.db #0x35	; 53	'5'
      008248 36                     953 	.db #0x36	; 54	'6'
      008249 37                     954 	.db #0x37	; 55	'7'
      00824A 38                     955 	.db #0x38	; 56	'8'
      00824B 39                     956 	.db #0x39	; 57	'9'
      00824C                        957 _main_placeholderDS18X20String_65537_192:
      00824C 7B                     958 	.ascii "{"
      00824D 22                     959 	.db 0x22
      00824E 74 6F 70 69 63         960 	.ascii "topic"
      008253 22                     961 	.db 0x22
      008254 20 3A 20               962 	.ascii " : "
      008257 22                     963 	.db 0x22
      008258 6D 71 74 74 2F 74 65   964 	.ascii "mqtt/temperature-room"
             6D 70 65 72 61 74 75
             72 65 2D 72 6F 6F 6D
      00826D 22                     965 	.db 0x22
      00826E 2C 20                  966 	.ascii ", "
      008270 22                     967 	.db 0x22
      008271 76 61 6C 75 65         968 	.ascii "value"
      008276 22                     969 	.db 0x22
      008277 20 3A 20               970 	.ascii " : "
      00827A 22                     971 	.db 0x22
      00827B 25 73                  972 	.ascii "%s"
      00827D 22                     973 	.db 0x22
      00827E 7D                     974 	.ascii "}"
      00827F 00                     975 	.db 0x00
      008280                        976 _main_placeholderTemperatureBME280String_65537_192:
      008280 7B                     977 	.ascii "{"
      008281 22                     978 	.db 0x22
      008282 74 6F 70 69 63         979 	.ascii "topic"
      008287 22                     980 	.db 0x22
      008288 20 3A 20               981 	.ascii " : "
      00828B 22                     982 	.db 0x22
      00828C 6D 71 74 74 2F 74 65   983 	.ascii "mqtt/temperature-bme280"
             6D 70 65 72 61 74 75
             72 65 2D 62 6D 65 32
             38 30
      0082A3 22                     984 	.db 0x22
      0082A4 2C 20                  985 	.ascii ", "
      0082A6 22                     986 	.db 0x22
      0082A7 76 61 6C 75 65         987 	.ascii "value"
      0082AC 22                     988 	.db 0x22
      0082AD 3A 20                  989 	.ascii ": "
      0082AF 22                     990 	.db 0x22
      0082B0 25 73                  991 	.ascii "%s"
      0082B2 22                     992 	.db 0x22
      0082B3 7D                     993 	.ascii "}"
      0082B4 00                     994 	.db 0x00
      0082B5                        995 _main_placeholderHumidityBME280String_65537_192:
      0082B5 7B                     996 	.ascii "{"
      0082B6 22                     997 	.db 0x22
      0082B7 74 6F 70 69 63         998 	.ascii "topic"
      0082BC 22                     999 	.db 0x22
      0082BD 20 3A 20              1000 	.ascii " : "
      0082C0 22                    1001 	.db 0x22
      0082C1 6D 71 74 74 2F 68 75  1002 	.ascii "mqtt/humidity-bme280"
             6D 69 64 69 74 79 2D
             62 6D 65 32 38 30
      0082D5 22                    1003 	.db 0x22
      0082D6 2C 20                 1004 	.ascii ", "
      0082D8 22                    1005 	.db 0x22
      0082D9 76 61 6C 75 65        1006 	.ascii "value"
      0082DE 22                    1007 	.db 0x22
      0082DF 3A 20                 1008 	.ascii ": "
      0082E1 22                    1009 	.db 0x22
      0082E2 25 73                 1010 	.ascii "%s"
      0082E4 22                    1011 	.db 0x22
      0082E5 7D                    1012 	.ascii "}"
      0082E6 00                    1013 	.db 0x00
      0082E7                       1014 _main_placeholderPressureBME280String_65537_192:
      0082E7 7B                    1015 	.ascii "{"
      0082E8 22                    1016 	.db 0x22
      0082E9 74 6F 70 69 63        1017 	.ascii "topic"
      0082EE 22                    1018 	.db 0x22
      0082EF 20 3A 20              1019 	.ascii " : "
      0082F2 22                    1020 	.db 0x22
      0082F3 6D 71 74 74 2F 70 72  1021 	.ascii "mqtt/pressure-bme280"
             65 73 73 75 72 65 2D
             62 6D 65 32 38 30
      008307 22                    1022 	.db 0x22
      008308 2C 20                 1023 	.ascii ", "
      00830A 22                    1024 	.db 0x22
      00830B 76 61 6C 75 65        1025 	.ascii "value"
      008310 22                    1026 	.db 0x22
      008311 3A 20                 1027 	.ascii ": "
      008313 22                    1028 	.db 0x22
      008314 25 73                 1029 	.ascii "%s"
      008316 22                    1030 	.db 0x22
      008317 7D                    1031 	.ascii "}"
      008318 00                    1032 	.db 0x00
                                   1033 	.area CONST
      008319                       1034 ___str_4:
      008319 25 73                 1035 	.ascii "%s"
      00831B 0D                    1036 	.db 0x0d
      00831C 0A                    1037 	.db 0x0a
      00831D 00                    1038 	.db 0x00
                                   1039 	.area CODE
                                   1040 	.area INITIALIZER
      008329                       1041 __xinit__fDS18X20Temperature:
      008329 C2 C8 00 00           1042 	.byte #0xc2, #0xc8, #0x00, #0x00	; -1.000000e+02
      00832D                       1043 __xinit__fBME280Temperature:
      00832D 00 00 00 00           1044 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
      008331                       1045 __xinit__fBME280Humidity:
      008331 00 00 00 00           1046 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
      008335                       1047 __xinit__fBME280Pressure:
      008335 00 00 00 00           1048 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      008339                       1049 __xinit__stringSendUART:
      008339 00 00                 1050 	.dw #0x0000
      00833B                       1051 __xinit__stringValue:
      00833B 00 00                 1052 	.dw #0x0000
      00833D                       1053 __xinit__sizeValueString:
      00833D 00                    1054 	.db #0x00	; 0
      00833E                       1055 __xinit__sizeSendUARTString:
      00833E 00                    1056 	.db #0x00	; 0
                                   1057 	.area CABS (ABS)
