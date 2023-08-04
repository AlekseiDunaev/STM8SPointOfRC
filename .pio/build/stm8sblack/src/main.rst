                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Mac OS X x86_64)
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
                                     15 	.globl _BME280_SetMode
                                     16 	.globl _BME280_SetOversamplingHum
                                     17 	.globl _BME280_SetOversamplingPressure
                                     18 	.globl _BME280_SetOversamplingTemper
                                     19 	.globl _BME280_SetFilter
                                     20 	.globl _BME280_ReadCoefficients
                                     21 	.globl _BME280_ReadStatus
                                     22 	.globl _BME280_ReadReg
                                     23 	.globl _BME280_WriteReg
                                     24 	.globl _BME280_Setup
                                     25 	.globl _Error
                                     26 	.globl _DS18X20_Setup
                                     27 	.globl _DS18X20_Get_Temperature
                                     28 	.globl _DS18X20_Read_ID
                                     29 	.globl _DS18X20_Reset
                                     30 	.globl _I2C_Setup
                                     31 	.globl _delay_ms
                                     32 	.globl _free
                                     33 	.globl _malloc
                                     34 	.globl _puts
                                     35 	.globl _sprintf
                                     36 	.globl _printf
                                     37 	.globl _UART2_GetFlagStatus
                                     38 	.globl _UART2_SendData8
                                     39 	.globl _UART2_ReceiveData8
                                     40 	.globl _UART2_Init
                                     41 	.globl _UART2_DeInit
                                     42 	.globl _GPIO_WriteLow
                                     43 	.globl _GPIO_WriteHigh
                                     44 	.globl _GPIO_Init
                                     45 	.globl _GPIO_DeInit
                                     46 	.globl _CLK_GetFlagStatus
                                     47 	.globl _CLK_SYSCLKConfig
                                     48 	.globl _CLK_HSIPrescalerConfig
                                     49 	.globl _CLK_ClockSwitchConfig
                                     50 	.globl _CLK_PeripheralClockConfig
                                     51 	.globl _CLK_ClockSwitchCmd
                                     52 	.globl _CLK_LSICmd
                                     53 	.globl _CLK_HSICmd
                                     54 	.globl _CLK_HSECmd
                                     55 	.globl _CLK_DeInit
                                     56 	.globl _fAHTX0Temperature
                                     57 	.globl _fAHTX0Humidity
                                     58 	.globl _fDS18X20Temperature
                                     59 	.globl _str1
                                     60 	.globl _sString
                                     61 	.globl _iI2CRead
                                     62 	.globl _iI2CWrite
                                     63 	.globl _iDS18X20RomID
                                     64 	.globl _FloatToStr
                                     65 	.globl _putchar
                                     66 	.globl _getchar
                                     67 	.globl _assert_failed
                                     68 ;--------------------------------------------------------
                                     69 ; ram data
                                     70 ;--------------------------------------------------------
                                     71 	.area DATA
      000022                         72 _iDS18X20RomID::
      000022                         73 	.ds 8
      00002A                         74 _iI2CWrite::
      00002A                         75 	.ds 3
      00002D                         76 _iI2CRead::
      00002D                         77 	.ds 7
      000034                         78 _sString::
      000034                         79 	.ds 100
      000098                         80 _str1::
      000098                         81 	.ds 100
                                     82 ;--------------------------------------------------------
                                     83 ; ram data
                                     84 ;--------------------------------------------------------
                                     85 	.area INITIALIZED
      0004FE                         86 _fDS18X20Temperature::
      0004FE                         87 	.ds 4
      000502                         88 _fAHTX0Humidity::
      000502                         89 	.ds 4
      000506                         90 _fAHTX0Temperature::
      000506                         91 	.ds 4
                                     92 ;--------------------------------------------------------
                                     93 ; Stack segment in internal ram
                                     94 ;--------------------------------------------------------
                                     95 	.area	SSEG
      00BD91                         96 __start__stack:
      00BD91                         97 	.ds	1
                                     98 
                                     99 ;--------------------------------------------------------
                                    100 ; absolute external ram data
                                    101 ;--------------------------------------------------------
                                    102 	.area DABS (ABS)
                                    103 
                                    104 ; default segment ordering for linker
                                    105 	.area HOME
                                    106 	.area GSINIT
                                    107 	.area GSFINAL
                                    108 	.area CONST
                                    109 	.area INITIALIZER
                                    110 	.area CODE
                                    111 
                                    112 ;--------------------------------------------------------
                                    113 ; interrupt vector
                                    114 ;--------------------------------------------------------
                                    115 	.area HOME
      008000                        116 __interrupt_vect:
      008000 82 00 80 6F            117 	int s_GSINIT ; reset
      008004 82 00 AB 97            118 	int _TRAP_IRQHandler ; trap
      008008 82 00 AB 98            119 	int _TLI_IRQHandler ; int0
      00800C 82 00 AB 99            120 	int _AWU_IRQHandler ; int1
      008010 82 00 AB 9A            121 	int _CLK_IRQHandler ; int2
      008014 82 00 AB 9B            122 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 AB 9C            123 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 AB 9D            124 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 AB 9E            125 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 AB 9F            126 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 00 00            127 	int 0x000000 ; int8
      00802C 82 00 00 00            128 	int 0x000000 ; int9
      008030 82 00 AB A0            129 	int _SPI_IRQHandler ; int10
      008034 82 00 AB A1            130 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 AB A2            131 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 AB A3            132 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 AB A4            133 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 AB A5            134 	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
      008048 82 00 AB A6            135 	int _TIM3_CAP_COM_IRQHandler ; int16
      00804C 82 00 00 00            136 	int 0x000000 ; int17
      008050 82 00 00 00            137 	int 0x000000 ; int18
      008054 82 00 AB A7            138 	int _I2C_IRQHandler ; int19
      008058 82 00 AB A8            139 	int _UART2_TX_IRQHandler ; int20
      00805C 82 00 AB A9            140 	int _UART2_RX_IRQHandler ; int21
      008060 82 00 AB AA            141 	int _ADC1_IRQHandler ; int22
      008064 82 00 AB AB            142 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 AB AC            143 	int _EEPROM_EEC_IRQHandler ; int24
                                    144 ;--------------------------------------------------------
                                    145 ; global & static initialisations
                                    146 ;--------------------------------------------------------
                                    147 	.area HOME
                                    148 	.area GSINIT
                                    149 	.area GSFINAL
                                    150 	.area GSINIT
      00806F                        151 __sdcc_init_data:
                                    152 ; stm8_genXINIT() start
      00806F AE 04 FD         [ 2]  153 	ldw x, #l_DATA
      008072 27 07            [ 1]  154 	jreq	00002$
      008074                        155 00001$:
      008074 72 4F 00 00      [ 1]  156 	clr (s_DATA - 1, x)
      008078 5A               [ 2]  157 	decw x
      008079 26 F9            [ 1]  158 	jrne	00001$
      00807B                        159 00002$:
      00807B AE 00 0C         [ 2]  160 	ldw	x, #l_INITIALIZER
      00807E 27 09            [ 1]  161 	jreq	00004$
      008080                        162 00003$:
      008080 D6 84 07         [ 1]  163 	ld	a, (s_INITIALIZER - 1, x)
      008083 D7 04 FD         [ 1]  164 	ld	(s_INITIALIZED - 1, x), a
      008086 5A               [ 2]  165 	decw	x
      008087 26 F7            [ 1]  166 	jrne	00003$
      008089                        167 00004$:
                                    168 ; stm8_genXINIT() end
                                    169 	.area GSFINAL
      00808C CC 80 6C         [ 2]  170 	jp	__sdcc_program_startup
                                    171 ;--------------------------------------------------------
                                    172 ; Home
                                    173 ;--------------------------------------------------------
                                    174 	.area HOME
                                    175 	.area HOME
      00806C                        176 __sdcc_program_startup:
      00806C CC A4 27         [ 2]  177 	jp	_main
                                    178 ;	return from main will return to caller
                                    179 ;--------------------------------------------------------
                                    180 ; code
                                    181 ;--------------------------------------------------------
                                    182 	.area CODE
                                    183 ;	src/main.c: 136: void Clock_Setup(void) {
                                    184 ;	-----------------------------------------
                                    185 ;	 function Clock_Setup
                                    186 ;	-----------------------------------------
      00A3A9                        187 _Clock_Setup:
                                    188 ;	src/main.c: 137: CLK_DeInit();
      00A3A9 CD 84 14         [ 4]  189 	call	_CLK_DeInit
                                    190 ;	src/main.c: 138: CLK_HSECmd(DISABLE);
      00A3AC 4F               [ 1]  191 	clr	a
      00A3AD CD 84 75         [ 4]  192 	call	_CLK_HSECmd
                                    193 ;	src/main.c: 139: CLK_LSICmd(DISABLE);
      00A3B0 4F               [ 1]  194 	clr	a
      00A3B1 CD 84 CB         [ 4]  195 	call	_CLK_LSICmd
                                    196 ;	src/main.c: 140: CLK_HSICmd(ENABLE);
      00A3B4 A6 01            [ 1]  197 	ld	a, #0x01
      00A3B6 CD 84 A0         [ 4]  198 	call	_CLK_HSICmd
                                    199 ;	src/main.c: 141: while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
      00A3B9                        200 00101$:
      00A3B9 AE 01 02         [ 2]  201 	ldw	x, #0x0102
      00A3BC CD 89 BC         [ 4]  202 	call	_CLK_GetFlagStatus
      00A3BF 4D               [ 1]  203 	tnz	a
      00A3C0 27 F7            [ 1]  204 	jreq	00101$
                                    205 ;	src/main.c: 142: CLK_ClockSwitchCmd(ENABLE);
      00A3C2 A6 01            [ 1]  206 	ld	a, #0x01
      00A3C4 CD 85 21         [ 4]  207 	call	_CLK_ClockSwitchCmd
                                    208 ;	src/main.c: 143: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
      00A3C7 4F               [ 1]  209 	clr	a
      00A3C8 CD 87 5A         [ 4]  210 	call	_CLK_HSIPrescalerConfig
                                    211 ;	src/main.c: 144: CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
      00A3CB A6 80            [ 1]  212 	ld	a, #0x80
      00A3CD CD 88 79         [ 4]  213 	call	_CLK_SYSCLKConfig
                                    214 ;	src/main.c: 145: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
      00A3D0 4B 01            [ 1]  215 	push	#0x01
      00A3D2 4B 00            [ 1]  216 	push	#0x00
      00A3D4 4B E1            [ 1]  217 	push	#0xe1
      00A3D6 A6 01            [ 1]  218 	ld	a, #0x01
      00A3D8 CD 86 42         [ 4]  219 	call	_CLK_ClockSwitchConfig
                                    220 ;	src/main.c: 147: CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
      00A3DB 4B 00            [ 1]  221 	push	#0x00
      00A3DD A6 01            [ 1]  222 	ld	a, #0x01
      00A3DF CD 85 77         [ 4]  223 	call	_CLK_PeripheralClockConfig
                                    224 ;	src/main.c: 148: CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
      00A3E2 4B 00            [ 1]  225 	push	#0x00
      00A3E4 A6 12            [ 1]  226 	ld	a, #0x12
      00A3E6 CD 85 77         [ 4]  227 	call	_CLK_PeripheralClockConfig
                                    228 ;	src/main.c: 150: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
      00A3E9 4B 00            [ 1]  229 	push	#0x00
      00A3EB A6 07            [ 1]  230 	ld	a, #0x07
      00A3ED CD 85 77         [ 4]  231 	call	_CLK_PeripheralClockConfig
                                    232 ;	src/main.c: 151: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
      00A3F0 4B 00            [ 1]  233 	push	#0x00
      00A3F2 A6 05            [ 1]  234 	ld	a, #0x05
      00A3F4 CD 85 77         [ 4]  235 	call	_CLK_PeripheralClockConfig
                                    236 ;	src/main.c: 152: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
      00A3F7 4B 00            [ 1]  237 	push	#0x00
      00A3F9 A6 04            [ 1]  238 	ld	a, #0x04
      00A3FB CD 85 77         [ 4]  239 	call	_CLK_PeripheralClockConfig
                                    240 ;	src/main.c: 153: }
      00A3FE 81               [ 4]  241 	ret
                                    242 ;	src/main.c: 155: void GPIO_Setup(void) {
                                    243 ;	-----------------------------------------
                                    244 ;	 function GPIO_Setup
                                    245 ;	-----------------------------------------
      00A3FF                        246 _GPIO_Setup:
                                    247 ;	src/main.c: 160: GPIO_DeInit(GPIOE);
      00A3FF AE 50 14         [ 2]  248 	ldw	x, #0x5014
      00A402 CD 8A AA         [ 4]  249 	call	_GPIO_DeInit
                                    250 ;	src/main.c: 161: GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
      00A405 4B F0            [ 1]  251 	push	#0xf0
      00A407 A6 20            [ 1]  252 	ld	a, #0x20
      00A409 AE 50 14         [ 2]  253 	ldw	x, #0x5014
      00A40C CD 8A B8         [ 4]  254 	call	_GPIO_Init
                                    255 ;	src/main.c: 162: }
      00A40F 81               [ 4]  256 	ret
                                    257 ;	src/main.c: 164: void UART_Setup() {
                                    258 ;	-----------------------------------------
                                    259 ;	 function UART_Setup
                                    260 ;	-----------------------------------------
      00A410                        261 _UART_Setup:
                                    262 ;	src/main.c: 165: UART_DEINIT();
      00A410 CD 92 70         [ 4]  263 	call	_UART2_DeInit
                                    264 ;	src/main.c: 175: UART_INIT((uint32_t)9600, UART_WORDLENGTH_8D, UART_STOPBITS_1, UART_PARITY_NO, UART_SYNCMODE_CLOCK_DISABLE, UART_MODE_TXRX_ENABLE);
      00A413 4B 0C            [ 1]  265 	push	#0x0c
      00A415 4B 80            [ 1]  266 	push	#0x80
      00A417 4B 00            [ 1]  267 	push	#0x00
      00A419 4B 00            [ 1]  268 	push	#0x00
      00A41B 4B 00            [ 1]  269 	push	#0x00
      00A41D 4B 80            [ 1]  270 	push	#0x80
      00A41F 4B 25            [ 1]  271 	push	#0x25
      00A421 5F               [ 1]  272 	clrw	x
      00A422 89               [ 2]  273 	pushw	x
      00A423 CD 92 97         [ 4]  274 	call	_UART2_Init
                                    275 ;	src/main.c: 176: }
      00A426 81               [ 4]  276 	ret
                                    277 ;	src/main.c: 186: void main(void) {
                                    278 ;	-----------------------------------------
                                    279 ;	 function main
                                    280 ;	-----------------------------------------
      00A427                        281 _main:
      00A427 52 9F            [ 2]  282 	sub	sp, #159
                                    283 ;	src/main.c: 187: Clock_Setup();
      00A429 CD A3 A9         [ 4]  284 	call	_Clock_Setup
                                    285 ;	src/main.c: 188: GPIO_Setup();
      00A42C CD A3 FF         [ 4]  286 	call	_GPIO_Setup
                                    287 ;	src/main.c: 189: DS18X20_Setup();
      00A42F CD 9F 95         [ 4]  288 	call	_DS18X20_Setup
                                    289 ;	src/main.c: 190: I2C_Setup();
      00A432 CD 9F A6         [ 4]  290 	call	_I2C_Setup
                                    291 ;	src/main.c: 191: UART_Setup();
      00A435 CD A4 10         [ 4]  292 	call	_UART_Setup
                                    293 ;	src/main.c: 192: BME280_Setup();
      00A438 CD 9B 87         [ 4]  294 	call	_BME280_Setup
                                    295 ;	src/main.c: 195: BME280_ReadCoefficients();
      00A43B CD 9C 32         [ 4]  296 	call	_BME280_ReadCoefficients
                                    297 ;	src/main.c: 196: BME280_SetFilter(BME280_FILTER_4);
      00A43E A6 08            [ 1]  298 	ld	a, #0x08
      00A440 CD 9D 11         [ 4]  299 	call	_BME280_SetFilter
                                    300 ;	src/main.c: 197: BME280_SetOversamplingTemper(BME280_OSRS_T_x4);
      00A443 A6 60            [ 1]  301 	ld	a, #0x60
      00A445 CD 9D 2B         [ 4]  302 	call	_BME280_SetOversamplingTemper
                                    303 ;	src/main.c: 198: BME280_SetOversamplingPressure(BME280_OSRS_P_x2);
      00A448 A6 08            [ 1]  304 	ld	a, #0x08
      00A44A CD 9D 45         [ 4]  305 	call	_BME280_SetOversamplingPressure
                                    306 ;	src/main.c: 199: BME280_SetOversamplingHum(BME280_OSRS_H_x1);
      00A44D A6 01            [ 1]  307 	ld	a, #0x01
      00A44F CD 9D 5F         [ 4]  308 	call	_BME280_SetOversamplingHum
                                    309 ;	src/main.c: 201: uint16_t value32 = BME280_ReadReg(BME280_REG_CTRL_MEAS);
      00A452 A6 F4            [ 1]  310 	ld	a, #0xf4
      00A454 CD 9B A4         [ 4]  311 	call	_BME280_ReadReg
      00A457 5F               [ 1]  312 	clrw	x
      00A458 97               [ 1]  313 	ld	xl, a
                                    314 ;	src/main.c: 202: value32 |= BME280_ReadReg(BME280_REG_CTRL_HUM) << 8;
      00A459 89               [ 2]  315 	pushw	x
      00A45A A6 F2            [ 1]  316 	ld	a, #0xf2
      00A45C CD 9B A4         [ 4]  317 	call	_BME280_ReadReg
      00A45F 85               [ 2]  318 	popw	x
      00A460 0F 9F            [ 1]  319 	clr	(0x9f, sp)
      00A462 89               [ 2]  320 	pushw	x
      00A463 1A 01            [ 1]  321 	or	a, (1, sp)
      00A465 85               [ 2]  322 	popw	x
      00A466 01               [ 1]  323 	rrwa	x
      00A467 1A 9F            [ 1]  324 	or	a, (0x9f, sp)
      00A469 97               [ 1]  325 	ld	xl, a
                                    326 ;	src/main.c: 203: sprintf(str1, "Measurements status: %04X\r\n", value32);
      00A46A 1F 9A            [ 2]  327 	ldw	(0x9a, sp), x
      00A46C 89               [ 2]  328 	pushw	x
      00A46D 4B 64            [ 1]  329 	push	#<(___str_3+0)
      00A46F 4B 82            [ 1]  330 	push	#((___str_3+0) >> 8)
      00A471 4B 98            [ 1]  331 	push	#<(_str1+0)
      00A473 4B 00            [ 1]  332 	push	#((_str1+0) >> 8)
      00A475 CD B2 22         [ 4]  333 	call	_sprintf
      00A478 5B 06            [ 2]  334 	addw	sp, #6
                                    335 ;	src/main.c: 204: printf("%s", str1);
      00A47A 4B 98            [ 1]  336 	push	#<(_str1+0)
      00A47C 4B 00            [ 1]  337 	push	#((_str1+0) >> 8)
      00A47E 4B 80            [ 1]  338 	push	#<(___str_4+0)
      00A480 4B 82            [ 1]  339 	push	#((___str_4+0) >> 8)
      00A482 CD B3 02         [ 4]  340 	call	_printf
      00A485 5B 04            [ 2]  341 	addw	sp, #4
                                    342 ;	src/main.c: 208: ((value32 >> 8) & BME280_OSRS_H_MSK) ? "ON" : "OFF");
      00A487 7B 9A            [ 1]  343 	ld	a, (0x9a, sp)
      00A489 A5 07            [ 1]  344 	bcp	a, #0x07
      00A48B 27 07            [ 1]  345 	jreq	00121$
      00A48D AE 82 B1         [ 2]  346 	ldw	x, #(___str_6+0)
      00A490 1F 9E            [ 2]  347 	ldw	(0x9e, sp), x
      00A492 20 05            [ 2]  348 	jra	00122$
      00A494                        349 00121$:
      00A494 AE 82 B4         [ 2]  350 	ldw	x, #(___str_7+0)
      00A497 1F 9E            [ 2]  351 	ldw	(0x9e, sp), x
      00A499                        352 00122$:
      00A499 16 9E            [ 2]  353 	ldw	y, (0x9e, sp)
      00A49B 17 9C            [ 2]  354 	ldw	(0x9c, sp), y
                                    355 ;	src/main.c: 207: (value32 & BME280_OSRS_P_MSK) ? "ON" : "OFF",
      00A49D 7B 9B            [ 1]  356 	ld	a, (0x9b, sp)
      00A49F A5 1C            [ 1]  357 	bcp	a, #0x1c
      00A4A1 27 04            [ 1]  358 	jreq	00123$
      00A4A3 AE 82 B1         [ 2]  359 	ldw	x, #___str_6+0
      00A4A6 BC                     360 	.byte 0xbc
      00A4A7                        361 00123$:
      00A4A7 AE 82 B4         [ 2]  362 	ldw	x, #(___str_7+0)
      00A4AA                        363 00124$:
      00A4AA 1F 9E            [ 2]  364 	ldw	(0x9e, sp), x
                                    365 ;	src/main.c: 206: (value32 & BME280_OSRS_T_MSK) ? "ON" : "OFF",
      00A4AC 7B 9B            [ 1]  366 	ld	a, (0x9b, sp)
      00A4AE A5 E0            [ 1]  367 	bcp	a, #0xe0
      00A4B0 27 04            [ 1]  368 	jreq	00125$
      00A4B2 AE 82 B1         [ 2]  369 	ldw	x, #___str_6+0
      00A4B5 BC                     370 	.byte 0xbc
      00A4B6                        371 00125$:
      00A4B6 AE 82 B4         [ 2]  372 	ldw	x, #(___str_7+0)
      00A4B9                        373 00126$:
                                    374 ;	src/main.c: 205: sprintf(str1, "Temperature: %s\r\nPressure: %s\r\nHumidity: %s\r\n",
      00A4B9 16 9C            [ 2]  375 	ldw	y, (0x9c, sp)
      00A4BB 90 89            [ 2]  376 	pushw	y
      00A4BD 16 A0            [ 2]  377 	ldw	y, (0xa0, sp)
      00A4BF 90 89            [ 2]  378 	pushw	y
      00A4C1 89               [ 2]  379 	pushw	x
      00A4C2 4B 83            [ 1]  380 	push	#<(___str_5+0)
      00A4C4 4B 82            [ 1]  381 	push	#((___str_5+0) >> 8)
      00A4C6 4B 98            [ 1]  382 	push	#<(_str1+0)
      00A4C8 4B 00            [ 1]  383 	push	#((_str1+0) >> 8)
      00A4CA CD B2 22         [ 4]  384 	call	_sprintf
      00A4CD 5B 0A            [ 2]  385 	addw	sp, #10
                                    386 ;	src/main.c: 209: printf("%s", str1);
      00A4CF 4B 98            [ 1]  387 	push	#<(_str1+0)
      00A4D1 4B 00            [ 1]  388 	push	#((_str1+0) >> 8)
      00A4D3 4B 80            [ 1]  389 	push	#<(___str_4+0)
      00A4D5 4B 82            [ 1]  390 	push	#((___str_4+0) >> 8)
      00A4D7 CD B3 02         [ 4]  391 	call	_printf
      00A4DA 5B 04            [ 2]  392 	addw	sp, #4
                                    393 ;	src/main.c: 210: BME280_SetMode(BME280_MODE_NORMAL);
      00A4DC A6 03            [ 1]  394 	ld	a, #0x03
      00A4DE CD 9D 84         [ 4]  395 	call	_BME280_SetMode
                                    396 ;	src/main.c: 215: while (1) {
      00A4E1                        397 00111$:
                                    398 ;	src/main.c: 223: const char placeholderDS18X20String[] = "{\"topic\" : \"mqtt\/temperature-room\", \"value\" : \"%s\"}";
      00A4E1 A6 7B            [ 1]  399 	ld	a, #0x7b
      00A4E3 6B 01            [ 1]  400 	ld	(0x01, sp), a
      00A4E5 A6 22            [ 1]  401 	ld	a, #0x22
      00A4E7 6B 02            [ 1]  402 	ld	(0x02, sp), a
      00A4E9 A6 74            [ 1]  403 	ld	a, #0x74
      00A4EB 6B 03            [ 1]  404 	ld	(0x03, sp), a
      00A4ED A6 6F            [ 1]  405 	ld	a, #0x6f
      00A4EF 6B 04            [ 1]  406 	ld	(0x04, sp), a
      00A4F1 A6 70            [ 1]  407 	ld	a, #0x70
      00A4F3 6B 05            [ 1]  408 	ld	(0x05, sp), a
      00A4F5 A6 69            [ 1]  409 	ld	a, #0x69
      00A4F7 6B 06            [ 1]  410 	ld	(0x06, sp), a
      00A4F9 A6 63            [ 1]  411 	ld	a, #0x63
      00A4FB 6B 07            [ 1]  412 	ld	(0x07, sp), a
      00A4FD A6 22            [ 1]  413 	ld	a, #0x22
      00A4FF 6B 08            [ 1]  414 	ld	(0x08, sp), a
      00A501 A6 20            [ 1]  415 	ld	a, #0x20
      00A503 6B 09            [ 1]  416 	ld	(0x09, sp), a
      00A505 A6 3A            [ 1]  417 	ld	a, #0x3a
      00A507 6B 0A            [ 1]  418 	ld	(0x0a, sp), a
      00A509 A6 20            [ 1]  419 	ld	a, #0x20
      00A50B 6B 0B            [ 1]  420 	ld	(0x0b, sp), a
      00A50D A6 22            [ 1]  421 	ld	a, #0x22
      00A50F 6B 0C            [ 1]  422 	ld	(0x0c, sp), a
      00A511 A6 6D            [ 1]  423 	ld	a, #0x6d
      00A513 6B 0D            [ 1]  424 	ld	(0x0d, sp), a
      00A515 A6 71            [ 1]  425 	ld	a, #0x71
      00A517 6B 0E            [ 1]  426 	ld	(0x0e, sp), a
      00A519 A6 74            [ 1]  427 	ld	a, #0x74
      00A51B 6B 0F            [ 1]  428 	ld	(0x0f, sp), a
      00A51D 6B 10            [ 1]  429 	ld	(0x10, sp), a
      00A51F A6 2F            [ 1]  430 	ld	a, #0x2f
      00A521 6B 11            [ 1]  431 	ld	(0x11, sp), a
      00A523 A6 74            [ 1]  432 	ld	a, #0x74
      00A525 6B 12            [ 1]  433 	ld	(0x12, sp), a
      00A527 A6 65            [ 1]  434 	ld	a, #0x65
      00A529 6B 13            [ 1]  435 	ld	(0x13, sp), a
      00A52B A6 6D            [ 1]  436 	ld	a, #0x6d
      00A52D 6B 14            [ 1]  437 	ld	(0x14, sp), a
      00A52F A6 70            [ 1]  438 	ld	a, #0x70
      00A531 6B 15            [ 1]  439 	ld	(0x15, sp), a
      00A533 A6 65            [ 1]  440 	ld	a, #0x65
      00A535 6B 16            [ 1]  441 	ld	(0x16, sp), a
      00A537 A6 72            [ 1]  442 	ld	a, #0x72
      00A539 6B 17            [ 1]  443 	ld	(0x17, sp), a
      00A53B A6 61            [ 1]  444 	ld	a, #0x61
      00A53D 6B 18            [ 1]  445 	ld	(0x18, sp), a
      00A53F A6 74            [ 1]  446 	ld	a, #0x74
      00A541 6B 19            [ 1]  447 	ld	(0x19, sp), a
      00A543 A6 75            [ 1]  448 	ld	a, #0x75
      00A545 6B 1A            [ 1]  449 	ld	(0x1a, sp), a
      00A547 A6 72            [ 1]  450 	ld	a, #0x72
      00A549 6B 1B            [ 1]  451 	ld	(0x1b, sp), a
      00A54B A6 65            [ 1]  452 	ld	a, #0x65
      00A54D 6B 1C            [ 1]  453 	ld	(0x1c, sp), a
      00A54F A6 2D            [ 1]  454 	ld	a, #0x2d
      00A551 6B 1D            [ 1]  455 	ld	(0x1d, sp), a
      00A553 A6 72            [ 1]  456 	ld	a, #0x72
      00A555 6B 1E            [ 1]  457 	ld	(0x1e, sp), a
      00A557 A6 6F            [ 1]  458 	ld	a, #0x6f
      00A559 6B 1F            [ 1]  459 	ld	(0x1f, sp), a
      00A55B 6B 20            [ 1]  460 	ld	(0x20, sp), a
      00A55D A6 6D            [ 1]  461 	ld	a, #0x6d
      00A55F 6B 21            [ 1]  462 	ld	(0x21, sp), a
      00A561 A6 22            [ 1]  463 	ld	a, #0x22
      00A563 6B 22            [ 1]  464 	ld	(0x22, sp), a
      00A565 A6 2C            [ 1]  465 	ld	a, #0x2c
      00A567 6B 23            [ 1]  466 	ld	(0x23, sp), a
      00A569 A6 20            [ 1]  467 	ld	a, #0x20
      00A56B 6B 24            [ 1]  468 	ld	(0x24, sp), a
      00A56D A6 22            [ 1]  469 	ld	a, #0x22
      00A56F 6B 25            [ 1]  470 	ld	(0x25, sp), a
      00A571 A6 76            [ 1]  471 	ld	a, #0x76
      00A573 6B 26            [ 1]  472 	ld	(0x26, sp), a
      00A575 A6 61            [ 1]  473 	ld	a, #0x61
      00A577 6B 27            [ 1]  474 	ld	(0x27, sp), a
      00A579 A6 6C            [ 1]  475 	ld	a, #0x6c
      00A57B 6B 28            [ 1]  476 	ld	(0x28, sp), a
      00A57D A6 75            [ 1]  477 	ld	a, #0x75
      00A57F 6B 29            [ 1]  478 	ld	(0x29, sp), a
      00A581 A6 65            [ 1]  479 	ld	a, #0x65
      00A583 6B 2A            [ 1]  480 	ld	(0x2a, sp), a
      00A585 A6 22            [ 1]  481 	ld	a, #0x22
      00A587 6B 2B            [ 1]  482 	ld	(0x2b, sp), a
      00A589 A6 20            [ 1]  483 	ld	a, #0x20
      00A58B 6B 2C            [ 1]  484 	ld	(0x2c, sp), a
      00A58D A6 3A            [ 1]  485 	ld	a, #0x3a
      00A58F 6B 2D            [ 1]  486 	ld	(0x2d, sp), a
      00A591 A6 20            [ 1]  487 	ld	a, #0x20
      00A593 6B 2E            [ 1]  488 	ld	(0x2e, sp), a
      00A595 A6 22            [ 1]  489 	ld	a, #0x22
      00A597 6B 2F            [ 1]  490 	ld	(0x2f, sp), a
      00A599 A6 25            [ 1]  491 	ld	a, #0x25
      00A59B 6B 30            [ 1]  492 	ld	(0x30, sp), a
      00A59D A6 73            [ 1]  493 	ld	a, #0x73
      00A59F 6B 31            [ 1]  494 	ld	(0x31, sp), a
      00A5A1 A6 22            [ 1]  495 	ld	a, #0x22
      00A5A3 6B 32            [ 1]  496 	ld	(0x32, sp), a
      00A5A5 A6 7D            [ 1]  497 	ld	a, #0x7d
      00A5A7 6B 33            [ 1]  498 	ld	(0x33, sp), a
      00A5A9 0F 34            [ 1]  499 	clr	(0x34, sp)
                                    500 ;	src/main.c: 224: const char placeholderHumidityAHTX0String[] = "{\"topic\" : \"mqtt\/humidity-aht20\", \"value\": \"%s\"}";
      00A5AB A6 7B            [ 1]  501 	ld	a, #0x7b
      00A5AD 6B 35            [ 1]  502 	ld	(0x35, sp), a
      00A5AF A6 22            [ 1]  503 	ld	a, #0x22
      00A5B1 6B 36            [ 1]  504 	ld	(0x36, sp), a
      00A5B3 A6 74            [ 1]  505 	ld	a, #0x74
      00A5B5 6B 37            [ 1]  506 	ld	(0x37, sp), a
      00A5B7 A6 6F            [ 1]  507 	ld	a, #0x6f
      00A5B9 6B 38            [ 1]  508 	ld	(0x38, sp), a
      00A5BB A6 70            [ 1]  509 	ld	a, #0x70
      00A5BD 6B 39            [ 1]  510 	ld	(0x39, sp), a
      00A5BF A6 69            [ 1]  511 	ld	a, #0x69
      00A5C1 6B 3A            [ 1]  512 	ld	(0x3a, sp), a
      00A5C3 A6 63            [ 1]  513 	ld	a, #0x63
      00A5C5 6B 3B            [ 1]  514 	ld	(0x3b, sp), a
      00A5C7 A6 22            [ 1]  515 	ld	a, #0x22
      00A5C9 6B 3C            [ 1]  516 	ld	(0x3c, sp), a
      00A5CB A6 20            [ 1]  517 	ld	a, #0x20
      00A5CD 6B 3D            [ 1]  518 	ld	(0x3d, sp), a
      00A5CF A6 3A            [ 1]  519 	ld	a, #0x3a
      00A5D1 6B 3E            [ 1]  520 	ld	(0x3e, sp), a
      00A5D3 A6 20            [ 1]  521 	ld	a, #0x20
      00A5D5 6B 3F            [ 1]  522 	ld	(0x3f, sp), a
      00A5D7 A6 22            [ 1]  523 	ld	a, #0x22
      00A5D9 6B 40            [ 1]  524 	ld	(0x40, sp), a
      00A5DB A6 6D            [ 1]  525 	ld	a, #0x6d
      00A5DD 6B 41            [ 1]  526 	ld	(0x41, sp), a
      00A5DF A6 71            [ 1]  527 	ld	a, #0x71
      00A5E1 6B 42            [ 1]  528 	ld	(0x42, sp), a
      00A5E3 A6 74            [ 1]  529 	ld	a, #0x74
      00A5E5 6B 43            [ 1]  530 	ld	(0x43, sp), a
      00A5E7 6B 44            [ 1]  531 	ld	(0x44, sp), a
      00A5E9 A6 2F            [ 1]  532 	ld	a, #0x2f
      00A5EB 6B 45            [ 1]  533 	ld	(0x45, sp), a
      00A5ED A6 68            [ 1]  534 	ld	a, #0x68
      00A5EF 6B 46            [ 1]  535 	ld	(0x46, sp), a
      00A5F1 A6 75            [ 1]  536 	ld	a, #0x75
      00A5F3 6B 47            [ 1]  537 	ld	(0x47, sp), a
      00A5F5 A6 6D            [ 1]  538 	ld	a, #0x6d
      00A5F7 6B 48            [ 1]  539 	ld	(0x48, sp), a
      00A5F9 A6 69            [ 1]  540 	ld	a, #0x69
      00A5FB 6B 49            [ 1]  541 	ld	(0x49, sp), a
      00A5FD A6 64            [ 1]  542 	ld	a, #0x64
      00A5FF 6B 4A            [ 1]  543 	ld	(0x4a, sp), a
      00A601 A6 69            [ 1]  544 	ld	a, #0x69
      00A603 6B 4B            [ 1]  545 	ld	(0x4b, sp), a
      00A605 A6 74            [ 1]  546 	ld	a, #0x74
      00A607 6B 4C            [ 1]  547 	ld	(0x4c, sp), a
      00A609 A6 79            [ 1]  548 	ld	a, #0x79
      00A60B 6B 4D            [ 1]  549 	ld	(0x4d, sp), a
      00A60D A6 2D            [ 1]  550 	ld	a, #0x2d
      00A60F 6B 4E            [ 1]  551 	ld	(0x4e, sp), a
      00A611 A6 61            [ 1]  552 	ld	a, #0x61
      00A613 6B 4F            [ 1]  553 	ld	(0x4f, sp), a
      00A615 A6 68            [ 1]  554 	ld	a, #0x68
      00A617 6B 50            [ 1]  555 	ld	(0x50, sp), a
      00A619 A6 74            [ 1]  556 	ld	a, #0x74
      00A61B 6B 51            [ 1]  557 	ld	(0x51, sp), a
      00A61D A6 32            [ 1]  558 	ld	a, #0x32
      00A61F 6B 52            [ 1]  559 	ld	(0x52, sp), a
      00A621 A6 30            [ 1]  560 	ld	a, #0x30
      00A623 6B 53            [ 1]  561 	ld	(0x53, sp), a
      00A625 A6 22            [ 1]  562 	ld	a, #0x22
      00A627 6B 54            [ 1]  563 	ld	(0x54, sp), a
      00A629 A6 2C            [ 1]  564 	ld	a, #0x2c
      00A62B 6B 55            [ 1]  565 	ld	(0x55, sp), a
      00A62D A6 20            [ 1]  566 	ld	a, #0x20
      00A62F 6B 56            [ 1]  567 	ld	(0x56, sp), a
      00A631 A6 22            [ 1]  568 	ld	a, #0x22
      00A633 6B 57            [ 1]  569 	ld	(0x57, sp), a
      00A635 A6 76            [ 1]  570 	ld	a, #0x76
      00A637 6B 58            [ 1]  571 	ld	(0x58, sp), a
      00A639 A6 61            [ 1]  572 	ld	a, #0x61
      00A63B 6B 59            [ 1]  573 	ld	(0x59, sp), a
      00A63D A6 6C            [ 1]  574 	ld	a, #0x6c
      00A63F 6B 5A            [ 1]  575 	ld	(0x5a, sp), a
      00A641 A6 75            [ 1]  576 	ld	a, #0x75
      00A643 6B 5B            [ 1]  577 	ld	(0x5b, sp), a
      00A645 A6 65            [ 1]  578 	ld	a, #0x65
      00A647 6B 5C            [ 1]  579 	ld	(0x5c, sp), a
      00A649 A6 22            [ 1]  580 	ld	a, #0x22
      00A64B 6B 5D            [ 1]  581 	ld	(0x5d, sp), a
      00A64D A6 3A            [ 1]  582 	ld	a, #0x3a
      00A64F 6B 5E            [ 1]  583 	ld	(0x5e, sp), a
      00A651 A6 20            [ 1]  584 	ld	a, #0x20
      00A653 6B 5F            [ 1]  585 	ld	(0x5f, sp), a
      00A655 A6 22            [ 1]  586 	ld	a, #0x22
      00A657 6B 60            [ 1]  587 	ld	(0x60, sp), a
      00A659 A6 25            [ 1]  588 	ld	a, #0x25
      00A65B 6B 61            [ 1]  589 	ld	(0x61, sp), a
      00A65D A6 73            [ 1]  590 	ld	a, #0x73
      00A65F 6B 62            [ 1]  591 	ld	(0x62, sp), a
      00A661 A6 22            [ 1]  592 	ld	a, #0x22
      00A663 6B 63            [ 1]  593 	ld	(0x63, sp), a
      00A665 A6 7D            [ 1]  594 	ld	a, #0x7d
      00A667 6B 64            [ 1]  595 	ld	(0x64, sp), a
      00A669 0F 65            [ 1]  596 	clr	(0x65, sp)
                                    597 ;	src/main.c: 225: const char placeholderTemperatureAHTX0String[] = "{\"topic\" : \"mqtt\/temperature-aht20\", \"value\": \"%s\"}";
      00A66B A6 7B            [ 1]  598 	ld	a, #0x7b
      00A66D 6B 66            [ 1]  599 	ld	(0x66, sp), a
      00A66F A6 22            [ 1]  600 	ld	a, #0x22
      00A671 6B 67            [ 1]  601 	ld	(0x67, sp), a
      00A673 A6 74            [ 1]  602 	ld	a, #0x74
      00A675 6B 68            [ 1]  603 	ld	(0x68, sp), a
      00A677 A6 6F            [ 1]  604 	ld	a, #0x6f
      00A679 6B 69            [ 1]  605 	ld	(0x69, sp), a
      00A67B A6 70            [ 1]  606 	ld	a, #0x70
      00A67D 6B 6A            [ 1]  607 	ld	(0x6a, sp), a
      00A67F A6 69            [ 1]  608 	ld	a, #0x69
      00A681 6B 6B            [ 1]  609 	ld	(0x6b, sp), a
      00A683 A6 63            [ 1]  610 	ld	a, #0x63
      00A685 6B 6C            [ 1]  611 	ld	(0x6c, sp), a
      00A687 A6 22            [ 1]  612 	ld	a, #0x22
      00A689 6B 6D            [ 1]  613 	ld	(0x6d, sp), a
      00A68B A6 20            [ 1]  614 	ld	a, #0x20
      00A68D 6B 6E            [ 1]  615 	ld	(0x6e, sp), a
      00A68F A6 3A            [ 1]  616 	ld	a, #0x3a
      00A691 6B 6F            [ 1]  617 	ld	(0x6f, sp), a
      00A693 A6 20            [ 1]  618 	ld	a, #0x20
      00A695 6B 70            [ 1]  619 	ld	(0x70, sp), a
      00A697 A6 22            [ 1]  620 	ld	a, #0x22
      00A699 6B 71            [ 1]  621 	ld	(0x71, sp), a
      00A69B A6 6D            [ 1]  622 	ld	a, #0x6d
      00A69D 6B 72            [ 1]  623 	ld	(0x72, sp), a
      00A69F A6 71            [ 1]  624 	ld	a, #0x71
      00A6A1 6B 73            [ 1]  625 	ld	(0x73, sp), a
      00A6A3 A6 74            [ 1]  626 	ld	a, #0x74
      00A6A5 6B 74            [ 1]  627 	ld	(0x74, sp), a
      00A6A7 6B 75            [ 1]  628 	ld	(0x75, sp), a
      00A6A9 A6 2F            [ 1]  629 	ld	a, #0x2f
      00A6AB 6B 76            [ 1]  630 	ld	(0x76, sp), a
      00A6AD A6 74            [ 1]  631 	ld	a, #0x74
      00A6AF 6B 77            [ 1]  632 	ld	(0x77, sp), a
      00A6B1 A6 65            [ 1]  633 	ld	a, #0x65
      00A6B3 6B 78            [ 1]  634 	ld	(0x78, sp), a
      00A6B5 A6 6D            [ 1]  635 	ld	a, #0x6d
      00A6B7 6B 79            [ 1]  636 	ld	(0x79, sp), a
      00A6B9 A6 70            [ 1]  637 	ld	a, #0x70
      00A6BB 6B 7A            [ 1]  638 	ld	(0x7a, sp), a
      00A6BD A6 65            [ 1]  639 	ld	a, #0x65
      00A6BF 6B 7B            [ 1]  640 	ld	(0x7b, sp), a
      00A6C1 A6 72            [ 1]  641 	ld	a, #0x72
      00A6C3 6B 7C            [ 1]  642 	ld	(0x7c, sp), a
      00A6C5 A6 61            [ 1]  643 	ld	a, #0x61
      00A6C7 6B 7D            [ 1]  644 	ld	(0x7d, sp), a
      00A6C9 A6 74            [ 1]  645 	ld	a, #0x74
      00A6CB 6B 7E            [ 1]  646 	ld	(0x7e, sp), a
      00A6CD A6 75            [ 1]  647 	ld	a, #0x75
      00A6CF 6B 7F            [ 1]  648 	ld	(0x7f, sp), a
      00A6D1 A6 72            [ 1]  649 	ld	a, #0x72
      00A6D3 6B 80            [ 1]  650 	ld	(0x80, sp), a
      00A6D5 A6 65            [ 1]  651 	ld	a, #0x65
      00A6D7 6B 81            [ 1]  652 	ld	(0x81, sp), a
      00A6D9 A6 2D            [ 1]  653 	ld	a, #0x2d
      00A6DB 6B 82            [ 1]  654 	ld	(0x82, sp), a
      00A6DD A6 61            [ 1]  655 	ld	a, #0x61
      00A6DF 6B 83            [ 1]  656 	ld	(0x83, sp), a
      00A6E1 A6 68            [ 1]  657 	ld	a, #0x68
      00A6E3 6B 84            [ 1]  658 	ld	(0x84, sp), a
      00A6E5 A6 74            [ 1]  659 	ld	a, #0x74
      00A6E7 6B 85            [ 1]  660 	ld	(0x85, sp), a
      00A6E9 A6 32            [ 1]  661 	ld	a, #0x32
      00A6EB 6B 86            [ 1]  662 	ld	(0x86, sp), a
      00A6ED A6 30            [ 1]  663 	ld	a, #0x30
      00A6EF 6B 87            [ 1]  664 	ld	(0x87, sp), a
      00A6F1 A6 22            [ 1]  665 	ld	a, #0x22
      00A6F3 6B 88            [ 1]  666 	ld	(0x88, sp), a
      00A6F5 A6 2C            [ 1]  667 	ld	a, #0x2c
      00A6F7 6B 89            [ 1]  668 	ld	(0x89, sp), a
      00A6F9 A6 20            [ 1]  669 	ld	a, #0x20
      00A6FB 6B 8A            [ 1]  670 	ld	(0x8a, sp), a
      00A6FD A6 22            [ 1]  671 	ld	a, #0x22
      00A6FF 6B 8B            [ 1]  672 	ld	(0x8b, sp), a
      00A701 A6 76            [ 1]  673 	ld	a, #0x76
      00A703 6B 8C            [ 1]  674 	ld	(0x8c, sp), a
      00A705 A6 61            [ 1]  675 	ld	a, #0x61
      00A707 6B 8D            [ 1]  676 	ld	(0x8d, sp), a
      00A709 A6 6C            [ 1]  677 	ld	a, #0x6c
      00A70B 6B 8E            [ 1]  678 	ld	(0x8e, sp), a
      00A70D A6 75            [ 1]  679 	ld	a, #0x75
      00A70F 6B 8F            [ 1]  680 	ld	(0x8f, sp), a
      00A711 A6 65            [ 1]  681 	ld	a, #0x65
      00A713 6B 90            [ 1]  682 	ld	(0x90, sp), a
      00A715 A6 22            [ 1]  683 	ld	a, #0x22
      00A717 6B 91            [ 1]  684 	ld	(0x91, sp), a
      00A719 A6 3A            [ 1]  685 	ld	a, #0x3a
      00A71B 6B 92            [ 1]  686 	ld	(0x92, sp), a
      00A71D A6 20            [ 1]  687 	ld	a, #0x20
      00A71F 6B 93            [ 1]  688 	ld	(0x93, sp), a
      00A721 A6 22            [ 1]  689 	ld	a, #0x22
      00A723 6B 94            [ 1]  690 	ld	(0x94, sp), a
      00A725 A6 25            [ 1]  691 	ld	a, #0x25
      00A727 6B 95            [ 1]  692 	ld	(0x95, sp), a
      00A729 A6 73            [ 1]  693 	ld	a, #0x73
      00A72B 6B 96            [ 1]  694 	ld	(0x96, sp), a
      00A72D A6 22            [ 1]  695 	ld	a, #0x22
      00A72F 6B 97            [ 1]  696 	ld	(0x97, sp), a
      00A731 A6 7D            [ 1]  697 	ld	a, #0x7d
      00A733 6B 98            [ 1]  698 	ld	(0x98, sp), a
      00A735 0F 99            [ 1]  699 	clr	(0x99, sp)
                                    700 ;	src/main.c: 228: LED_ON;
      00A737 A6 20            [ 1]  701 	ld	a, #0x20
      00A739 AE 50 14         [ 2]  702 	ldw	x, #0x5014
      00A73C CD 8B A1         [ 4]  703 	call	_GPIO_WriteLow
                                    704 ;	src/main.c: 231: DS18X20_Reset();
      00A73F CD 9D D8         [ 4]  705 	call	_DS18X20_Reset
                                    706 ;	src/main.c: 233: delay_ms(2000);
      00A742 AE 07 D0         [ 2]  707 	ldw	x, #0x07d0
      00A745 CD 9D C8         [ 4]  708 	call	_delay_ms
                                    709 ;	src/main.c: 235: if (!DS18X20_Read_ID(iDS18X20RomID)) {
      00A748 AE 00 22         [ 2]  710 	ldw	x, #(_iDS18X20RomID+0)
      00A74B CD 9E C4         [ 4]  711 	call	_DS18X20_Read_ID
      00A74E 4D               [ 1]  712 	tnz	a
      00A74F 26 0E            [ 1]  713 	jrne	00103$
                                    714 ;	src/main.c: 236: for (uint8_t i = 0; i < 8; i++) {
      00A751 4F               [ 1]  715 	clr	a
      00A752                        716 00114$:
      00A752 A1 08            [ 1]  717 	cp	a, #0x08
      00A754 24 09            [ 1]  718 	jrnc	00103$
                                    719 ;	src/main.c: 237: iDS18X20RomID[i] = 0;
      00A756 5F               [ 1]  720 	clrw	x
      00A757 97               [ 1]  721 	ld	xl, a
      00A758 72 4F 00 22      [ 1]  722 	clr	((_iDS18X20RomID+0), x)
                                    723 ;	src/main.c: 236: for (uint8_t i = 0; i < 8; i++) {
      00A75C 4C               [ 1]  724 	inc	a
      00A75D 20 F3            [ 2]  725 	jra	00114$
      00A75F                        726 00103$:
                                    727 ;	src/main.c: 242: printf("Famaly ID: 0x%02x, ", iDS18X20RomID[0]);
      00A75F C6 00 22         [ 1]  728 	ld	a, _iDS18X20RomID+0
      00A762 5F               [ 1]  729 	clrw	x
      00A763 97               [ 1]  730 	ld	xl, a
      00A764 89               [ 2]  731 	pushw	x
      00A765 4B B8            [ 1]  732 	push	#<(___str_8+0)
      00A767 4B 82            [ 1]  733 	push	#((___str_8+0) >> 8)
      00A769 CD B3 02         [ 4]  734 	call	_printf
      00A76C 5B 04            [ 2]  735 	addw	sp, #4
                                    736 ;	src/main.c: 243: printf("Sensor ID; ");
      00A76E 4B CC            [ 1]  737 	push	#<(___str_9+0)
      00A770 4B 82            [ 1]  738 	push	#((___str_9+0) >> 8)
      00A772 CD B3 02         [ 4]  739 	call	_printf
      00A775 85               [ 2]  740 	popw	x
                                    741 ;	src/main.c: 245: for (int8_t i = 6; i > 0 ; i--) {
      00A776 A6 06            [ 1]  742 	ld	a, #0x06
      00A778 6B 9F            [ 1]  743 	ld	(0x9f, sp), a
      00A77A                        744 00117$:
                                    745 ;	src/main.c: 246: printf("0x%02x ", iDS18X20RomID[i]);
      00A77A 7B 9F            [ 1]  746 	ld	a, (0x9f, sp)
      00A77C A1 00            [ 1]  747 	cp	a, #0x00
      00A77E 2D 19            [ 1]  748 	jrsle	00104$
      00A780 97               [ 1]  749 	ld	xl, a
      00A781 49               [ 1]  750 	rlc	a
      00A782 4F               [ 1]  751 	clr	a
      00A783 A2 00            [ 1]  752 	sbc	a, #0x00
      00A785 95               [ 1]  753 	ld	xh, a
      00A786 D6 00 22         [ 1]  754 	ld	a, (_iDS18X20RomID+0, x)
      00A789 5F               [ 1]  755 	clrw	x
      00A78A 97               [ 1]  756 	ld	xl, a
      00A78B 89               [ 2]  757 	pushw	x
      00A78C 4B D8            [ 1]  758 	push	#<(___str_10+0)
      00A78E 4B 82            [ 1]  759 	push	#((___str_10+0) >> 8)
      00A790 CD B3 02         [ 4]  760 	call	_printf
      00A793 5B 04            [ 2]  761 	addw	sp, #4
                                    762 ;	src/main.c: 245: for (int8_t i = 6; i > 0 ; i--) {
      00A795 0A 9F            [ 1]  763 	dec	(0x9f, sp)
      00A797 20 E1            [ 2]  764 	jra	00117$
      00A799                        765 00104$:
                                    766 ;	src/main.c: 249: printf("\r\n");
      00A799 AE 82 E0         [ 2]  767 	ldw	x, #(___str_12+0)
      00A79C CD B2 CE         [ 4]  768 	call	_puts
                                    769 ;	src/main.c: 252: fDS18X20Temperature = DS18X20_Get_Temperature();
      00A79F CD 9F 10         [ 4]  770 	call	_DS18X20_Get_Temperature
      00A7A2 CF 05 00         [ 2]  771 	ldw	_fDS18X20Temperature+2, x
      00A7A5 90 CF 04 FE      [ 2]  772 	ldw	_fDS18X20Temperature+0, y
                                    773 ;	src/main.c: 257: FloatToStr(sString, fDS18X20Temperature, integer_bit, decimal_bit);
      00A7A9 4B 04            [ 1]  774 	push	#0x04
      00A7AB 4B 02            [ 1]  775 	push	#0x02
      00A7AD CE 05 00         [ 2]  776 	ldw	x, _fDS18X20Temperature+2
      00A7B0 89               [ 2]  777 	pushw	x
      00A7B1 CE 04 FE         [ 2]  778 	ldw	x, _fDS18X20Temperature+0
      00A7B4 89               [ 2]  779 	pushw	x
      00A7B5 AE 00 34         [ 2]  780 	ldw	x, #(_sString+0)
      00A7B8 CD AA 7B         [ 4]  781 	call	_FloatToStr
                                    782 ;	src/main.c: 258: printf("DS18X20 temperature: %s\r\n", sString);
      00A7BB 4B 34            [ 1]  783 	push	#<(_sString+0)
      00A7BD 4B 00            [ 1]  784 	push	#((_sString+0) >> 8)
      00A7BF 4B E2            [ 1]  785 	push	#<(___str_13+0)
      00A7C1 4B 82            [ 1]  786 	push	#((___str_13+0) >> 8)
      00A7C3 CD B3 02         [ 4]  787 	call	_printf
      00A7C6 5B 04            [ 2]  788 	addw	sp, #4
                                    789 ;	src/main.c: 264: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00A7C8 AE 00 07         [ 2]  790 	ldw	x, #0x0007
      00A7CB CD AE D8         [ 4]  791 	call	_malloc
      00A7CE 1F 9C            [ 2]  792 	ldw	(0x9c, sp), x
                                    793 ;	src/main.c: 265: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00A7D0 AE 00 3B         [ 2]  794 	ldw	x, #0x003b
      00A7D3 CD AE D8         [ 4]  795 	call	_malloc
      00A7D6 1F 9E            [ 2]  796 	ldw	(0x9e, sp), x
                                    797 ;	src/main.c: 267: FloatToStr(stringValue, fDS18X20Temperature, integer_bit, decimal_bit);
      00A7D8 4B 04            [ 1]  798 	push	#0x04
      00A7DA 4B 02            [ 1]  799 	push	#0x02
      00A7DC CE 05 00         [ 2]  800 	ldw	x, _fDS18X20Temperature+2
      00A7DF 89               [ 2]  801 	pushw	x
      00A7E0 CE 04 FE         [ 2]  802 	ldw	x, _fDS18X20Temperature+0
      00A7E3 89               [ 2]  803 	pushw	x
      00A7E4 1E A2            [ 2]  804 	ldw	x, (0xa2, sp)
      00A7E6 CD AA 7B         [ 4]  805 	call	_FloatToStr
                                    806 ;	src/main.c: 269: sprintf(stringSendUART, placeholderDS18X20String, stringValue);
      00A7E9 1E 9C            [ 2]  807 	ldw	x, (0x9c, sp)
      00A7EB 89               [ 2]  808 	pushw	x
      00A7EC 96               [ 1]  809 	ldw	x, sp
      00A7ED 1C 00 03         [ 2]  810 	addw	x, #3
      00A7F0 89               [ 2]  811 	pushw	x
      00A7F1 1E A2            [ 2]  812 	ldw	x, (0xa2, sp)
      00A7F3 89               [ 2]  813 	pushw	x
      00A7F4 CD B2 22         [ 4]  814 	call	_sprintf
      00A7F7 5B 06            [ 2]  815 	addw	sp, #6
                                    816 ;	src/main.c: 270: printf("%s\r\n", stringSendUART);
      00A7F9 1E 9E            [ 2]  817 	ldw	x, (0x9e, sp)
      00A7FB 89               [ 2]  818 	pushw	x
      00A7FC 4B FC            [ 1]  819 	push	#<(___str_14+0)
      00A7FE 4B 82            [ 1]  820 	push	#((___str_14+0) >> 8)
      00A800 CD B3 02         [ 4]  821 	call	_printf
      00A803 5B 04            [ 2]  822 	addw	sp, #4
                                    823 ;	src/main.c: 272: free(stringSendUART);
      00A805 1E 9E            [ 2]  824 	ldw	x, (0x9e, sp)
      00A807 CD AB D6         [ 4]  825 	call	_free
                                    826 ;	src/main.c: 273: free(stringValue);
      00A80A 1E 9C            [ 2]  827 	ldw	x, (0x9c, sp)
      00A80C CD AB D6         [ 4]  828 	call	_free
                                    829 ;	src/main.c: 275: delay_ms(5000);
      00A80F AE 13 88         [ 2]  830 	ldw	x, #0x1388
      00A812 CD 9D C8         [ 4]  831 	call	_delay_ms
                                    832 ;	src/main.c: 345: uint8_t res = BME280_ReadReg(BME280_REG_ID);
      00A815 A6 D0            [ 1]  833 	ld	a, #0xd0
      00A817 CD 9B A4         [ 4]  834 	call	_BME280_ReadReg
                                    835 ;	src/main.c: 346: printf("BME280_ID: 0x%02x", res);
      00A81A 5F               [ 1]  836 	clrw	x
      00A81B 97               [ 1]  837 	ld	xl, a
      00A81C 88               [ 1]  838 	push	a
      00A81D 89               [ 2]  839 	pushw	x
      00A81E 4B 01            [ 1]  840 	push	#<(___str_15+0)
      00A820 4B 83            [ 1]  841 	push	#((___str_15+0) >> 8)
      00A822 CD B3 02         [ 4]  842 	call	_printf
      00A825 5B 04            [ 2]  843 	addw	sp, #4
      00A827 AE 82 E0         [ 2]  844 	ldw	x, #(___str_12+0)
      00A82A CD B2 CE         [ 4]  845 	call	_puts
      00A82D 84               [ 1]  846 	pop	a
                                    847 ;	src/main.c: 350: if (res != BME280_ID) {
      00A82E A1 60            [ 1]  848 	cp	a, #0x60
      00A830 27 06            [ 1]  849 	jreq	00106$
                                    850 ;	src/main.c: 351: Error();
      00A832 CD 9B 7F         [ 4]  851 	call	_Error
                                    852 ;	src/main.c: 352: return;
      00A835 CC AA 78         [ 2]  853 	jp	00119$
      00A838                        854 00106$:
                                    855 ;	src/main.c: 355: BME280_WriteReg(BME280_REG_SOFTRESET,BME280_SOFTRESET_VALUE);
      00A838 4B B6            [ 1]  856 	push	#0xb6
      00A83A A6 E0            [ 1]  857 	ld	a, #0xe0
      00A83C CD 9B 8F         [ 4]  858 	call	_BME280_WriteReg
                                    859 ;	src/main.c: 356: while (BME280_ReadStatus() & BME280_STATUS_IM_UPDATE);
      00A83F                        860 00107$:
      00A83F CD 9C 2A         [ 4]  861 	call	_BME280_ReadStatus
      00A842 44               [ 1]  862 	srl	a
      00A843 25 FA            [ 1]  863 	jrc	00107$
                                    864 ;	src/main.c: 358: sprintf(str1, "DIG_T1: %u\r\n", CalibData.dig_T1);
      00A845 CE 00 01         [ 2]  865 	ldw	x, _CalibData+0
      00A848 89               [ 2]  866 	pushw	x
      00A849 4B 13            [ 1]  867 	push	#<(___str_17+0)
      00A84B 4B 83            [ 1]  868 	push	#((___str_17+0) >> 8)
      00A84D 4B 98            [ 1]  869 	push	#<(_str1+0)
      00A84F 4B 00            [ 1]  870 	push	#((_str1+0) >> 8)
      00A851 CD B2 22         [ 4]  871 	call	_sprintf
      00A854 5B 06            [ 2]  872 	addw	sp, #6
                                    873 ;	src/main.c: 359: printf("%s", str1);
      00A856 4B 98            [ 1]  874 	push	#<(_str1+0)
      00A858 4B 00            [ 1]  875 	push	#((_str1+0) >> 8)
      00A85A 4B 80            [ 1]  876 	push	#<(___str_4+0)
      00A85C 4B 82            [ 1]  877 	push	#((___str_4+0) >> 8)
      00A85E CD B3 02         [ 4]  878 	call	_printf
      00A861 5B 04            [ 2]  879 	addw	sp, #4
                                    880 ;	src/main.c: 361: sprintf(str1, "DIG_T2: %d\r\n", CalibData.dig_T2);
      00A863 CE 00 03         [ 2]  881 	ldw	x, _CalibData+2
      00A866 89               [ 2]  882 	pushw	x
      00A867 4B 20            [ 1]  883 	push	#<(___str_18+0)
      00A869 4B 83            [ 1]  884 	push	#((___str_18+0) >> 8)
      00A86B 4B 98            [ 1]  885 	push	#<(_str1+0)
      00A86D 4B 00            [ 1]  886 	push	#((_str1+0) >> 8)
      00A86F CD B2 22         [ 4]  887 	call	_sprintf
      00A872 5B 06            [ 2]  888 	addw	sp, #6
                                    889 ;	src/main.c: 362: printf("%s", str1);
      00A874 4B 98            [ 1]  890 	push	#<(_str1+0)
      00A876 4B 00            [ 1]  891 	push	#((_str1+0) >> 8)
      00A878 4B 80            [ 1]  892 	push	#<(___str_4+0)
      00A87A 4B 82            [ 1]  893 	push	#((___str_4+0) >> 8)
      00A87C CD B3 02         [ 4]  894 	call	_printf
      00A87F 5B 04            [ 2]  895 	addw	sp, #4
                                    896 ;	src/main.c: 364: sprintf(str1, "DIG_T3: %d\r\n", CalibData.dig_T3);
      00A881 CE 00 05         [ 2]  897 	ldw	x, _CalibData+4
      00A884 89               [ 2]  898 	pushw	x
      00A885 4B 2D            [ 1]  899 	push	#<(___str_19+0)
      00A887 4B 83            [ 1]  900 	push	#((___str_19+0) >> 8)
      00A889 4B 98            [ 1]  901 	push	#<(_str1+0)
      00A88B 4B 00            [ 1]  902 	push	#((_str1+0) >> 8)
      00A88D CD B2 22         [ 4]  903 	call	_sprintf
      00A890 5B 06            [ 2]  904 	addw	sp, #6
                                    905 ;	src/main.c: 365: printf("%s", str1);
      00A892 4B 98            [ 1]  906 	push	#<(_str1+0)
      00A894 4B 00            [ 1]  907 	push	#((_str1+0) >> 8)
      00A896 4B 80            [ 1]  908 	push	#<(___str_4+0)
      00A898 4B 82            [ 1]  909 	push	#((___str_4+0) >> 8)
      00A89A CD B3 02         [ 4]  910 	call	_printf
      00A89D 5B 04            [ 2]  911 	addw	sp, #4
                                    912 ;	src/main.c: 367: sprintf(str1, "DIG_P1: %u\r\n", CalibData.dig_P1);
      00A89F CE 00 07         [ 2]  913 	ldw	x, _CalibData+6
      00A8A2 89               [ 2]  914 	pushw	x
      00A8A3 4B 3A            [ 1]  915 	push	#<(___str_20+0)
      00A8A5 4B 83            [ 1]  916 	push	#((___str_20+0) >> 8)
      00A8A7 4B 98            [ 1]  917 	push	#<(_str1+0)
      00A8A9 4B 00            [ 1]  918 	push	#((_str1+0) >> 8)
      00A8AB CD B2 22         [ 4]  919 	call	_sprintf
      00A8AE 5B 06            [ 2]  920 	addw	sp, #6
                                    921 ;	src/main.c: 368: printf("%s", str1);
      00A8B0 4B 98            [ 1]  922 	push	#<(_str1+0)
      00A8B2 4B 00            [ 1]  923 	push	#((_str1+0) >> 8)
      00A8B4 4B 80            [ 1]  924 	push	#<(___str_4+0)
      00A8B6 4B 82            [ 1]  925 	push	#((___str_4+0) >> 8)
      00A8B8 CD B3 02         [ 4]  926 	call	_printf
      00A8BB 5B 04            [ 2]  927 	addw	sp, #4
                                    928 ;	src/main.c: 370: sprintf(str1, "DIG_P2: %d\r\n", CalibData.dig_P2);
      00A8BD CE 00 09         [ 2]  929 	ldw	x, _CalibData+8
      00A8C0 89               [ 2]  930 	pushw	x
      00A8C1 4B 47            [ 1]  931 	push	#<(___str_21+0)
      00A8C3 4B 83            [ 1]  932 	push	#((___str_21+0) >> 8)
      00A8C5 4B 98            [ 1]  933 	push	#<(_str1+0)
      00A8C7 4B 00            [ 1]  934 	push	#((_str1+0) >> 8)
      00A8C9 CD B2 22         [ 4]  935 	call	_sprintf
      00A8CC 5B 06            [ 2]  936 	addw	sp, #6
                                    937 ;	src/main.c: 371: printf("%s", str1);
      00A8CE 4B 98            [ 1]  938 	push	#<(_str1+0)
      00A8D0 4B 00            [ 1]  939 	push	#((_str1+0) >> 8)
      00A8D2 4B 80            [ 1]  940 	push	#<(___str_4+0)
      00A8D4 4B 82            [ 1]  941 	push	#((___str_4+0) >> 8)
      00A8D6 CD B3 02         [ 4]  942 	call	_printf
      00A8D9 5B 04            [ 2]  943 	addw	sp, #4
                                    944 ;	src/main.c: 373: sprintf(str1, "DIG_P3: %d\r\n", CalibData.dig_P3);
      00A8DB CE 00 0B         [ 2]  945 	ldw	x, _CalibData+10
      00A8DE 89               [ 2]  946 	pushw	x
      00A8DF 4B 54            [ 1]  947 	push	#<(___str_22+0)
      00A8E1 4B 83            [ 1]  948 	push	#((___str_22+0) >> 8)
      00A8E3 4B 98            [ 1]  949 	push	#<(_str1+0)
      00A8E5 4B 00            [ 1]  950 	push	#((_str1+0) >> 8)
      00A8E7 CD B2 22         [ 4]  951 	call	_sprintf
      00A8EA 5B 06            [ 2]  952 	addw	sp, #6
                                    953 ;	src/main.c: 374: printf("%s", str1);
      00A8EC 4B 98            [ 1]  954 	push	#<(_str1+0)
      00A8EE 4B 00            [ 1]  955 	push	#((_str1+0) >> 8)
      00A8F0 4B 80            [ 1]  956 	push	#<(___str_4+0)
      00A8F2 4B 82            [ 1]  957 	push	#((___str_4+0) >> 8)
      00A8F4 CD B3 02         [ 4]  958 	call	_printf
      00A8F7 5B 04            [ 2]  959 	addw	sp, #4
                                    960 ;	src/main.c: 376: sprintf(str1, "DIG_P4: %d\r\n", CalibData.dig_P4);
      00A8F9 CE 00 0D         [ 2]  961 	ldw	x, _CalibData+12
      00A8FC 89               [ 2]  962 	pushw	x
      00A8FD 4B 61            [ 1]  963 	push	#<(___str_23+0)
      00A8FF 4B 83            [ 1]  964 	push	#((___str_23+0) >> 8)
      00A901 4B 98            [ 1]  965 	push	#<(_str1+0)
      00A903 4B 00            [ 1]  966 	push	#((_str1+0) >> 8)
      00A905 CD B2 22         [ 4]  967 	call	_sprintf
      00A908 5B 06            [ 2]  968 	addw	sp, #6
                                    969 ;	src/main.c: 377: printf("%s", str1);
      00A90A 4B 98            [ 1]  970 	push	#<(_str1+0)
      00A90C 4B 00            [ 1]  971 	push	#((_str1+0) >> 8)
      00A90E 4B 80            [ 1]  972 	push	#<(___str_4+0)
      00A910 4B 82            [ 1]  973 	push	#((___str_4+0) >> 8)
      00A912 CD B3 02         [ 4]  974 	call	_printf
      00A915 5B 04            [ 2]  975 	addw	sp, #4
                                    976 ;	src/main.c: 379: sprintf(str1, "DIG_P5: %d\r\n", CalibData.dig_P5);
      00A917 CE 00 0F         [ 2]  977 	ldw	x, _CalibData+14
      00A91A 89               [ 2]  978 	pushw	x
      00A91B 4B 6E            [ 1]  979 	push	#<(___str_24+0)
      00A91D 4B 83            [ 1]  980 	push	#((___str_24+0) >> 8)
      00A91F 4B 98            [ 1]  981 	push	#<(_str1+0)
      00A921 4B 00            [ 1]  982 	push	#((_str1+0) >> 8)
      00A923 CD B2 22         [ 4]  983 	call	_sprintf
      00A926 5B 06            [ 2]  984 	addw	sp, #6
                                    985 ;	src/main.c: 380: printf("%s", str1);
      00A928 4B 98            [ 1]  986 	push	#<(_str1+0)
      00A92A 4B 00            [ 1]  987 	push	#((_str1+0) >> 8)
      00A92C 4B 80            [ 1]  988 	push	#<(___str_4+0)
      00A92E 4B 82            [ 1]  989 	push	#((___str_4+0) >> 8)
      00A930 CD B3 02         [ 4]  990 	call	_printf
      00A933 5B 04            [ 2]  991 	addw	sp, #4
                                    992 ;	src/main.c: 382: sprintf(str1, "DIG_P6: %d\r\n", CalibData.dig_P6);
      00A935 CE 00 11         [ 2]  993 	ldw	x, _CalibData+16
      00A938 89               [ 2]  994 	pushw	x
      00A939 4B 7B            [ 1]  995 	push	#<(___str_25+0)
      00A93B 4B 83            [ 1]  996 	push	#((___str_25+0) >> 8)
      00A93D 4B 98            [ 1]  997 	push	#<(_str1+0)
      00A93F 4B 00            [ 1]  998 	push	#((_str1+0) >> 8)
      00A941 CD B2 22         [ 4]  999 	call	_sprintf
      00A944 5B 06            [ 2] 1000 	addw	sp, #6
                                   1001 ;	src/main.c: 383: printf("%s", str1);
      00A946 4B 98            [ 1] 1002 	push	#<(_str1+0)
      00A948 4B 00            [ 1] 1003 	push	#((_str1+0) >> 8)
      00A94A 4B 80            [ 1] 1004 	push	#<(___str_4+0)
      00A94C 4B 82            [ 1] 1005 	push	#((___str_4+0) >> 8)
      00A94E CD B3 02         [ 4] 1006 	call	_printf
      00A951 5B 04            [ 2] 1007 	addw	sp, #4
                                   1008 ;	src/main.c: 385: sprintf(str1, "DIG_P7: %d\r\n", CalibData.dig_P7);
      00A953 CE 00 13         [ 2] 1009 	ldw	x, _CalibData+18
      00A956 89               [ 2] 1010 	pushw	x
      00A957 4B 88            [ 1] 1011 	push	#<(___str_26+0)
      00A959 4B 83            [ 1] 1012 	push	#((___str_26+0) >> 8)
      00A95B 4B 98            [ 1] 1013 	push	#<(_str1+0)
      00A95D 4B 00            [ 1] 1014 	push	#((_str1+0) >> 8)
      00A95F CD B2 22         [ 4] 1015 	call	_sprintf
      00A962 5B 06            [ 2] 1016 	addw	sp, #6
                                   1017 ;	src/main.c: 386: printf("%s", str1);
      00A964 4B 98            [ 1] 1018 	push	#<(_str1+0)
      00A966 4B 00            [ 1] 1019 	push	#((_str1+0) >> 8)
      00A968 4B 80            [ 1] 1020 	push	#<(___str_4+0)
      00A96A 4B 82            [ 1] 1021 	push	#((___str_4+0) >> 8)
      00A96C CD B3 02         [ 4] 1022 	call	_printf
      00A96F 5B 04            [ 2] 1023 	addw	sp, #4
                                   1024 ;	src/main.c: 388: sprintf(str1, "DIG_P8: %d\r\n", CalibData.dig_P8);
      00A971 CE 00 15         [ 2] 1025 	ldw	x, _CalibData+20
      00A974 89               [ 2] 1026 	pushw	x
      00A975 4B 95            [ 1] 1027 	push	#<(___str_27+0)
      00A977 4B 83            [ 1] 1028 	push	#((___str_27+0) >> 8)
      00A979 4B 98            [ 1] 1029 	push	#<(_str1+0)
      00A97B 4B 00            [ 1] 1030 	push	#((_str1+0) >> 8)
      00A97D CD B2 22         [ 4] 1031 	call	_sprintf
      00A980 5B 06            [ 2] 1032 	addw	sp, #6
                                   1033 ;	src/main.c: 389: printf("%s", str1);
      00A982 4B 98            [ 1] 1034 	push	#<(_str1+0)
      00A984 4B 00            [ 1] 1035 	push	#((_str1+0) >> 8)
      00A986 4B 80            [ 1] 1036 	push	#<(___str_4+0)
      00A988 4B 82            [ 1] 1037 	push	#((___str_4+0) >> 8)
      00A98A CD B3 02         [ 4] 1038 	call	_printf
      00A98D 5B 04            [ 2] 1039 	addw	sp, #4
                                   1040 ;	src/main.c: 391: sprintf(str1, "DIG_P9: %d\r\n", CalibData.dig_P9);
      00A98F CE 00 17         [ 2] 1041 	ldw	x, _CalibData+22
      00A992 89               [ 2] 1042 	pushw	x
      00A993 4B A2            [ 1] 1043 	push	#<(___str_28+0)
      00A995 4B 83            [ 1] 1044 	push	#((___str_28+0) >> 8)
      00A997 4B 98            [ 1] 1045 	push	#<(_str1+0)
      00A999 4B 00            [ 1] 1046 	push	#((_str1+0) >> 8)
      00A99B CD B2 22         [ 4] 1047 	call	_sprintf
      00A99E 5B 06            [ 2] 1048 	addw	sp, #6
                                   1049 ;	src/main.c: 392: printf("%s", str1);
      00A9A0 4B 98            [ 1] 1050 	push	#<(_str1+0)
      00A9A2 4B 00            [ 1] 1051 	push	#((_str1+0) >> 8)
      00A9A4 4B 80            [ 1] 1052 	push	#<(___str_4+0)
      00A9A6 4B 82            [ 1] 1053 	push	#((___str_4+0) >> 8)
      00A9A8 CD B3 02         [ 4] 1054 	call	_printf
      00A9AB 5B 04            [ 2] 1055 	addw	sp, #4
                                   1056 ;	src/main.c: 394: sprintf(str1, "DIG_H1: %d\r\n", CalibData.dig_H1);
      00A9AD C6 00 19         [ 1] 1057 	ld	a, _CalibData+24
      00A9B0 5F               [ 1] 1058 	clrw	x
      00A9B1 97               [ 1] 1059 	ld	xl, a
      00A9B2 89               [ 2] 1060 	pushw	x
      00A9B3 4B AF            [ 1] 1061 	push	#<(___str_29+0)
      00A9B5 4B 83            [ 1] 1062 	push	#((___str_29+0) >> 8)
      00A9B7 4B 98            [ 1] 1063 	push	#<(_str1+0)
      00A9B9 4B 00            [ 1] 1064 	push	#((_str1+0) >> 8)
      00A9BB CD B2 22         [ 4] 1065 	call	_sprintf
      00A9BE 5B 06            [ 2] 1066 	addw	sp, #6
                                   1067 ;	src/main.c: 395: printf("%s", str1);
      00A9C0 4B 98            [ 1] 1068 	push	#<(_str1+0)
      00A9C2 4B 00            [ 1] 1069 	push	#((_str1+0) >> 8)
      00A9C4 4B 80            [ 1] 1070 	push	#<(___str_4+0)
      00A9C6 4B 82            [ 1] 1071 	push	#((___str_4+0) >> 8)
      00A9C8 CD B3 02         [ 4] 1072 	call	_printf
      00A9CB 5B 04            [ 2] 1073 	addw	sp, #4
                                   1074 ;	src/main.c: 397: sprintf(str1, "DIG_H2: %d\r\n", CalibData.dig_H2);
      00A9CD CE 00 1A         [ 2] 1075 	ldw	x, _CalibData+25
      00A9D0 89               [ 2] 1076 	pushw	x
      00A9D1 4B BC            [ 1] 1077 	push	#<(___str_30+0)
      00A9D3 4B 83            [ 1] 1078 	push	#((___str_30+0) >> 8)
      00A9D5 4B 98            [ 1] 1079 	push	#<(_str1+0)
      00A9D7 4B 00            [ 1] 1080 	push	#((_str1+0) >> 8)
      00A9D9 CD B2 22         [ 4] 1081 	call	_sprintf
      00A9DC 5B 06            [ 2] 1082 	addw	sp, #6
                                   1083 ;	src/main.c: 398: printf("%s", str1);
      00A9DE 4B 98            [ 1] 1084 	push	#<(_str1+0)
      00A9E0 4B 00            [ 1] 1085 	push	#((_str1+0) >> 8)
      00A9E2 4B 80            [ 1] 1086 	push	#<(___str_4+0)
      00A9E4 4B 82            [ 1] 1087 	push	#((___str_4+0) >> 8)
      00A9E6 CD B3 02         [ 4] 1088 	call	_printf
      00A9E9 5B 04            [ 2] 1089 	addw	sp, #4
                                   1090 ;	src/main.c: 400: sprintf(str1, "DIG_H3: %d\r\n", CalibData.dig_H3);
      00A9EB C6 00 1C         [ 1] 1091 	ld	a, _CalibData+27
      00A9EE 5F               [ 1] 1092 	clrw	x
      00A9EF 97               [ 1] 1093 	ld	xl, a
      00A9F0 89               [ 2] 1094 	pushw	x
      00A9F1 4B C9            [ 1] 1095 	push	#<(___str_31+0)
      00A9F3 4B 83            [ 1] 1096 	push	#((___str_31+0) >> 8)
      00A9F5 4B 98            [ 1] 1097 	push	#<(_str1+0)
      00A9F7 4B 00            [ 1] 1098 	push	#((_str1+0) >> 8)
      00A9F9 CD B2 22         [ 4] 1099 	call	_sprintf
      00A9FC 5B 06            [ 2] 1100 	addw	sp, #6
                                   1101 ;	src/main.c: 401: printf("%s", str1);
      00A9FE 4B 98            [ 1] 1102 	push	#<(_str1+0)
      00AA00 4B 00            [ 1] 1103 	push	#((_str1+0) >> 8)
      00AA02 4B 80            [ 1] 1104 	push	#<(___str_4+0)
      00AA04 4B 82            [ 1] 1105 	push	#((___str_4+0) >> 8)
      00AA06 CD B3 02         [ 4] 1106 	call	_printf
      00AA09 5B 04            [ 2] 1107 	addw	sp, #4
                                   1108 ;	src/main.c: 403: sprintf(str1, "DIG_H4: %d\r\n", CalibData.dig_H4);
      00AA0B CE 00 1D         [ 2] 1109 	ldw	x, _CalibData+28
      00AA0E 89               [ 2] 1110 	pushw	x
      00AA0F 4B D6            [ 1] 1111 	push	#<(___str_32+0)
      00AA11 4B 83            [ 1] 1112 	push	#((___str_32+0) >> 8)
      00AA13 4B 98            [ 1] 1113 	push	#<(_str1+0)
      00AA15 4B 00            [ 1] 1114 	push	#((_str1+0) >> 8)
      00AA17 CD B2 22         [ 4] 1115 	call	_sprintf
      00AA1A 5B 06            [ 2] 1116 	addw	sp, #6
                                   1117 ;	src/main.c: 404: printf("%s", str1);
      00AA1C 4B 98            [ 1] 1118 	push	#<(_str1+0)
      00AA1E 4B 00            [ 1] 1119 	push	#((_str1+0) >> 8)
      00AA20 4B 80            [ 1] 1120 	push	#<(___str_4+0)
      00AA22 4B 82            [ 1] 1121 	push	#((___str_4+0) >> 8)
      00AA24 CD B3 02         [ 4] 1122 	call	_printf
      00AA27 5B 04            [ 2] 1123 	addw	sp, #4
                                   1124 ;	src/main.c: 406: sprintf(str1, "DIG_H5: %d\r\n", CalibData.dig_H5);
      00AA29 CE 00 1F         [ 2] 1125 	ldw	x, _CalibData+30
      00AA2C 89               [ 2] 1126 	pushw	x
      00AA2D 4B E3            [ 1] 1127 	push	#<(___str_33+0)
      00AA2F 4B 83            [ 1] 1128 	push	#((___str_33+0) >> 8)
      00AA31 4B 98            [ 1] 1129 	push	#<(_str1+0)
      00AA33 4B 00            [ 1] 1130 	push	#((_str1+0) >> 8)
      00AA35 CD B2 22         [ 4] 1131 	call	_sprintf
      00AA38 5B 06            [ 2] 1132 	addw	sp, #6
                                   1133 ;	src/main.c: 407: printf("%s", str1);
      00AA3A 4B 98            [ 1] 1134 	push	#<(_str1+0)
      00AA3C 4B 00            [ 1] 1135 	push	#((_str1+0) >> 8)
      00AA3E 4B 80            [ 1] 1136 	push	#<(___str_4+0)
      00AA40 4B 82            [ 1] 1137 	push	#((___str_4+0) >> 8)
      00AA42 CD B3 02         [ 4] 1138 	call	_printf
      00AA45 5B 04            [ 2] 1139 	addw	sp, #4
                                   1140 ;	src/main.c: 409: sprintf(str1, "DIG_H6: %d\r\n", CalibData.dig_H3);
      00AA47 C6 00 1C         [ 1] 1141 	ld	a, _CalibData+27
      00AA4A 5F               [ 1] 1142 	clrw	x
      00AA4B 97               [ 1] 1143 	ld	xl, a
      00AA4C 89               [ 2] 1144 	pushw	x
      00AA4D 4B F0            [ 1] 1145 	push	#<(___str_34+0)
      00AA4F 4B 83            [ 1] 1146 	push	#((___str_34+0) >> 8)
      00AA51 4B 98            [ 1] 1147 	push	#<(_str1+0)
      00AA53 4B 00            [ 1] 1148 	push	#((_str1+0) >> 8)
      00AA55 CD B2 22         [ 4] 1149 	call	_sprintf
      00AA58 5B 06            [ 2] 1150 	addw	sp, #6
                                   1151 ;	src/main.c: 410: printf("%s", str1);
      00AA5A 4B 98            [ 1] 1152 	push	#<(_str1+0)
      00AA5C 4B 00            [ 1] 1153 	push	#((_str1+0) >> 8)
      00AA5E 4B 80            [ 1] 1154 	push	#<(___str_4+0)
      00AA60 4B 82            [ 1] 1155 	push	#((___str_4+0) >> 8)
      00AA62 CD B3 02         [ 4] 1156 	call	_printf
      00AA65 5B 04            [ 2] 1157 	addw	sp, #4
                                   1158 ;	src/main.c: 416: delay_ms(10000);
      00AA67 AE 27 10         [ 2] 1159 	ldw	x, #0x2710
      00AA6A CD 9D C8         [ 4] 1160 	call	_delay_ms
                                   1161 ;	src/main.c: 425: LED_OFF;
      00AA6D A6 20            [ 1] 1162 	ld	a, #0x20
      00AA6F AE 50 14         [ 2] 1163 	ldw	x, #0x5014
      00AA72 CD 8B 98         [ 4] 1164 	call	_GPIO_WriteHigh
      00AA75 CC A4 E1         [ 2] 1165 	jp	00111$
      00AA78                       1166 00119$:
                                   1167 ;	src/main.c: 435: }
      00AA78 5B 9F            [ 2] 1168 	addw	sp, #159
      00AA7A 81               [ 4] 1169 	ret
                                   1170 ;	src/main.c: 437: void FloatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit) {
                                   1171 ;	-----------------------------------------
                                   1172 ;	 function FloatToStr
                                   1173 ;	-----------------------------------------
      00AA7B                       1174 _FloatToStr:
      00AA7B 52 11            [ 2] 1175 	sub	sp, #17
      00AA7D 1F 0F            [ 2] 1176 	ldw	(0x0f, sp), x
                                   1177 ;	src/main.c: 439: uint32_t temp = (uint8_t)number/1;
      00AA7F 1E 16            [ 2] 1178 	ldw	x, (0x16, sp)
      00AA81 89               [ 2] 1179 	pushw	x
      00AA82 1E 16            [ 2] 1180 	ldw	x, (0x16, sp)
      00AA84 89               [ 2] 1181 	pushw	x
      00AA85 CD B5 2C         [ 4] 1182 	call	___fs2uchar
      00AA88 5F               [ 1] 1183 	clrw	x
      00AA89 97               [ 1] 1184 	ld	xl, a
      00AA8A 1F 0D            [ 2] 1185 	ldw	(0x0d, sp), x
      00AA8C 7B 0D            [ 1] 1186 	ld	a, (0x0d, sp)
      00AA8E 49               [ 1] 1187 	rlc	a
      00AA8F 4F               [ 1] 1188 	clr	a
      00AA90 A2 00            [ 1] 1189 	sbc	a, #0x00
      00AA92 6B 0C            [ 1] 1190 	ld	(0x0c, sp), a
      00AA94 6B 0B            [ 1] 1191 	ld	(0x0b, sp), a
                                   1192 ;	src/main.c: 442: for (i = 1; i <= integer_bit; i++) {
      00AA96 A6 01            [ 1] 1193 	ld	a, #0x01
      00AA98 6B 11            [ 1] 1194 	ld	(0x11, sp), a
      00AA9A                       1195 00107$:
                                   1196 ;	src/main.c: 444: str[integer_bit - i] = table[0];
      00AA9A 7B 18            [ 1] 1197 	ld	a, (0x18, sp)
      00AA9C 6B 02            [ 1] 1198 	ld	(0x02, sp), a
      00AA9E 0F 01            [ 1] 1199 	clr	(0x01, sp)
                                   1200 ;	src/main.c: 442: for (i = 1; i <= integer_bit; i++) {
      00AAA0 7B 11            [ 1] 1201 	ld	a, (0x11, sp)
      00AAA2 11 18            [ 1] 1202 	cp	a, (0x18, sp)
      00AAA4 22 4D            [ 1] 1203 	jrugt	00104$
                                   1204 ;	src/main.c: 444: str[integer_bit - i] = table[0];
      00AAA6 5F               [ 1] 1205 	clrw	x
      00AAA7 7B 11            [ 1] 1206 	ld	a, (0x11, sp)
      00AAA9 97               [ 1] 1207 	ld	xl, a
      00AAAA 50               [ 2] 1208 	negw	x
      00AAAB 72 FB 01         [ 2] 1209 	addw	x, (0x01, sp)
      00AAAE 72 FB 0F         [ 2] 1210 	addw	x, (0x0f, sp)
      00AAB1 1F 09            [ 2] 1211 	ldw	(0x09, sp), x
                                   1212 ;	src/main.c: 443: if (temp == 0) {
      00AAB3 1E 0D            [ 2] 1213 	ldw	x, (0x0d, sp)
      00AAB5 26 0C            [ 1] 1214 	jrne	00102$
      00AAB7 1E 0B            [ 2] 1215 	ldw	x, (0x0b, sp)
      00AAB9 26 08            [ 1] 1216 	jrne	00102$
                                   1217 ;	src/main.c: 444: str[integer_bit - i] = table[0];
      00AABB C6 82 5A         [ 1] 1218 	ld	a, _table+0
      00AABE 1E 09            [ 2] 1219 	ldw	x, (0x09, sp)
      00AAC0 F7               [ 1] 1220 	ld	(x), a
      00AAC1 20 17            [ 2] 1221 	jra	00103$
      00AAC3                       1222 00102$:
                                   1223 ;	src/main.c: 446: str[integer_bit - i] = table[temp%10];
      00AAC3 4B 0A            [ 1] 1224 	push	#0x0a
      00AAC5 5F               [ 1] 1225 	clrw	x
      00AAC6 89               [ 2] 1226 	pushw	x
      00AAC7 4B 00            [ 1] 1227 	push	#0x00
      00AAC9 1E 11            [ 2] 1228 	ldw	x, (0x11, sp)
      00AACB 89               [ 2] 1229 	pushw	x
      00AACC 1E 11            [ 2] 1230 	ldw	x, (0x11, sp)
      00AACE 89               [ 2] 1231 	pushw	x
      00AACF CD B1 8B         [ 4] 1232 	call	__modulong
      00AAD2 5B 08            [ 2] 1233 	addw	sp, #8
      00AAD4 D6 82 5A         [ 1] 1234 	ld	a, (_table+0, x)
      00AAD7 1E 09            [ 2] 1235 	ldw	x, (0x09, sp)
      00AAD9 F7               [ 1] 1236 	ld	(x), a
      00AADA                       1237 00103$:
                                   1238 ;	src/main.c: 448: temp /= 10;
      00AADA 4B 0A            [ 1] 1239 	push	#0x0a
      00AADC 5F               [ 1] 1240 	clrw	x
      00AADD 89               [ 2] 1241 	pushw	x
      00AADE 4B 00            [ 1] 1242 	push	#0x00
      00AAE0 1E 11            [ 2] 1243 	ldw	x, (0x11, sp)
      00AAE2 89               [ 2] 1244 	pushw	x
      00AAE3 1E 11            [ 2] 1245 	ldw	x, (0x11, sp)
      00AAE5 89               [ 2] 1246 	pushw	x
      00AAE6 CD B2 4A         [ 4] 1247 	call	__divulong
      00AAE9 5B 08            [ 2] 1248 	addw	sp, #8
      00AAEB 1F 0D            [ 2] 1249 	ldw	(0x0d, sp), x
      00AAED 17 0B            [ 2] 1250 	ldw	(0x0b, sp), y
                                   1251 ;	src/main.c: 442: for (i = 1; i <= integer_bit; i++) {
      00AAEF 0C 11            [ 1] 1252 	inc	(0x11, sp)
      00AAF1 20 A7            [ 2] 1253 	jra	00107$
      00AAF3                       1254 00104$:
                                   1255 ;	src/main.c: 451: *(str + integer_bit) = '.';
      00AAF3 5F               [ 1] 1256 	clrw	x
      00AAF4 7B 18            [ 1] 1257 	ld	a, (0x18, sp)
      00AAF6 97               [ 1] 1258 	ld	xl, a
      00AAF7 72 FB 0F         [ 2] 1259 	addw	x, (0x0f, sp)
      00AAFA 1F 03            [ 2] 1260 	ldw	(0x03, sp), x
      00AAFC A6 2E            [ 1] 1261 	ld	a, #0x2e
      00AAFE F7               [ 1] 1262 	ld	(x), a
                                   1263 ;	src/main.c: 453: t2 = number;
      00AAFF 16 16            [ 2] 1264 	ldw	y, (0x16, sp)
      00AB01 17 0D            [ 2] 1265 	ldw	(0x0d, sp), y
      00AB03 16 14            [ 2] 1266 	ldw	y, (0x14, sp)
      00AB05 17 0B            [ 2] 1267 	ldw	(0x0b, sp), y
                                   1268 ;	src/main.c: 455: for (i = 1; i <= decimal_bit; i++) {
      00AB07 A6 01            [ 1] 1269 	ld	a, #0x01
      00AB09 6B 11            [ 1] 1270 	ld	(0x11, sp), a
      00AB0B                       1271 00110$:
      00AB0B 7B 11            [ 1] 1272 	ld	a, (0x11, sp)
      00AB0D 11 19            [ 1] 1273 	cp	a, (0x19, sp)
      00AB0F 22 4E            [ 1] 1274 	jrugt	00105$
                                   1275 ;	src/main.c: 456: temp = t2 * 10;
      00AB11 1E 0D            [ 2] 1276 	ldw	x, (0x0d, sp)
      00AB13 89               [ 2] 1277 	pushw	x
      00AB14 1E 0D            [ 2] 1278 	ldw	x, (0x0d, sp)
      00AB16 89               [ 2] 1279 	pushw	x
      00AB17 5F               [ 1] 1280 	clrw	x
      00AB18 89               [ 2] 1281 	pushw	x
      00AB19 4B 20            [ 1] 1282 	push	#0x20
      00AB1B 4B 41            [ 1] 1283 	push	#0x41
      00AB1D CD AC 41         [ 4] 1284 	call	___fsmul
      00AB20 1F 07            [ 2] 1285 	ldw	(0x07, sp), x
      00AB22 17 05            [ 2] 1286 	ldw	(0x05, sp), y
      00AB24 1E 07            [ 2] 1287 	ldw	x, (0x07, sp)
      00AB26 89               [ 2] 1288 	pushw	x
      00AB27 1E 07            [ 2] 1289 	ldw	x, (0x07, sp)
      00AB29 89               [ 2] 1290 	pushw	x
      00AB2A CD AD FB         [ 4] 1291 	call	___fs2ulong
      00AB2D 5B 04            [ 2] 1292 	addw	sp, #4
      00AB2F 1F 0B            [ 2] 1293 	ldw	(0x0b, sp), x
                                   1294 ;	src/main.c: 457: str[integer_bit + i] = table[temp%10];
      00AB31 7B 11            [ 1] 1295 	ld	a, (0x11, sp)
      00AB33 5F               [ 1] 1296 	clrw	x
      00AB34 97               [ 1] 1297 	ld	xl, a
      00AB35 72 FB 01         [ 2] 1298 	addw	x, (0x01, sp)
      00AB38 72 FB 0F         [ 2] 1299 	addw	x, (0x0f, sp)
      00AB3B 1F 0D            [ 2] 1300 	ldw	(0x0d, sp), x
      00AB3D 4B 0A            [ 1] 1301 	push	#0x0a
      00AB3F 5F               [ 1] 1302 	clrw	x
      00AB40 89               [ 2] 1303 	pushw	x
      00AB41 4B 00            [ 1] 1304 	push	#0x00
      00AB43 1E 0F            [ 2] 1305 	ldw	x, (0x0f, sp)
      00AB45 89               [ 2] 1306 	pushw	x
      00AB46 90 89            [ 2] 1307 	pushw	y
      00AB48 CD B1 8B         [ 4] 1308 	call	__modulong
      00AB4B 5B 08            [ 2] 1309 	addw	sp, #8
      00AB4D D6 82 5A         [ 1] 1310 	ld	a, (_table+0, x)
      00AB50 1E 0D            [ 2] 1311 	ldw	x, (0x0d, sp)
      00AB52 F7               [ 1] 1312 	ld	(x), a
                                   1313 ;	src/main.c: 458: t2 *= 10;
      00AB53 1E 07            [ 2] 1314 	ldw	x, (0x07, sp)
      00AB55 16 05            [ 2] 1315 	ldw	y, (0x05, sp)
      00AB57 1F 0D            [ 2] 1316 	ldw	(0x0d, sp), x
      00AB59 17 0B            [ 2] 1317 	ldw	(0x0b, sp), y
                                   1318 ;	src/main.c: 455: for (i = 1; i <= decimal_bit; i++) {
      00AB5B 0C 11            [ 1] 1319 	inc	(0x11, sp)
      00AB5D 20 AC            [ 2] 1320 	jra	00110$
      00AB5F                       1321 00105$:
                                   1322 ;	src/main.c: 461: *(str + integer_bit + 1 + decimal_bit) = '\0';
      00AB5F 1E 03            [ 2] 1323 	ldw	x, (0x03, sp)
      00AB61 5C               [ 1] 1324 	incw	x
      00AB62 9F               [ 1] 1325 	ld	a, xl
      00AB63 1B 19            [ 1] 1326 	add	a, (0x19, sp)
      00AB65 02               [ 1] 1327 	rlwa	x
      00AB66 A9 00            [ 1] 1328 	adc	a, #0x00
      00AB68 95               [ 1] 1329 	ld	xh, a
      00AB69 7F               [ 1] 1330 	clr	(x)
                                   1331 ;	src/main.c: 462: }
      00AB6A 1E 12            [ 2] 1332 	ldw	x, (18, sp)
      00AB6C 5B 19            [ 2] 1333 	addw	sp, #25
      00AB6E FC               [ 2] 1334 	jp	(x)
                                   1335 ;	src/main.c: 469: PUTCHAR_PROTOTYPE
                                   1336 ;	-----------------------------------------
                                   1337 ;	 function putchar
                                   1338 ;	-----------------------------------------
      00AB6F                       1339 _putchar:
                                   1340 ;	src/main.c: 472: UART_SENDDATA8(c);
      00AB6F 9F               [ 1] 1341 	ld	a, xl
      00AB70 89               [ 2] 1342 	pushw	x
      00AB71 CD 97 CB         [ 4] 1343 	call	_UART2_SendData8
      00AB74 85               [ 2] 1344 	popw	x
                                   1345 ;	src/main.c: 474: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
      00AB75                       1346 00101$:
      00AB75 89               [ 2] 1347 	pushw	x
      00AB76 AE 00 80         [ 2] 1348 	ldw	x, #0x0080
      00AB79 CD 98 1E         [ 4] 1349 	call	_UART2_GetFlagStatus
      00AB7C 85               [ 2] 1350 	popw	x
      00AB7D 4D               [ 1] 1351 	tnz	a
      00AB7E 27 F5            [ 1] 1352 	jreq	00101$
                                   1353 ;	src/main.c: 476: return (c);
                                   1354 ;	src/main.c: 477: }
      00AB80 81               [ 4] 1355 	ret
                                   1356 ;	src/main.c: 484: GETCHAR_PROTOTYPE
                                   1357 ;	-----------------------------------------
                                   1358 ;	 function getchar
                                   1359 ;	-----------------------------------------
      00AB81                       1360 _getchar:
                                   1361 ;	src/main.c: 492: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
      00AB81                       1362 00101$:
      00AB81 AE 00 80         [ 2] 1363 	ldw	x, #0x0080
      00AB84 CD 98 1E         [ 4] 1364 	call	_UART2_GetFlagStatus
      00AB87 4D               [ 1] 1365 	tnz	a
      00AB88 27 F7            [ 1] 1366 	jreq	00101$
                                   1367 ;	src/main.c: 493: c = UART_RECEIVEDATA8();
      00AB8A CD 97 AC         [ 4] 1368 	call	_UART2_ReceiveData8
      00AB8D 5F               [ 1] 1369 	clrw	x
                                   1370 ;	src/main.c: 494: return (c);
      00AB8E 97               [ 1] 1371 	ld	xl, a
                                   1372 ;	src/main.c: 495: }
      00AB8F 81               [ 4] 1373 	ret
                                   1374 ;	src/main.c: 506: void assert_failed(uint8_t* file, uint32_t line)
                                   1375 ;	-----------------------------------------
                                   1376 ;	 function assert_failed
                                   1377 ;	-----------------------------------------
      00AB90                       1378 _assert_failed:
                                   1379 ;	src/main.c: 513: while (1)
      00AB90                       1380 00102$:
      00AB90 20 FE            [ 2] 1381 	jra	00102$
                                   1382 ;	src/main.c: 516: }
      00AB92 1E 01            [ 2] 1383 	ldw	x, (1, sp)
      00AB94 5B 06            [ 2] 1384 	addw	sp, #6
      00AB96 FC               [ 2] 1385 	jp	(x)
                                   1386 	.area CODE
                                   1387 	.area CONST
      00825A                       1388 _table:
      00825A 30                    1389 	.db #0x30	; 48	'0'
      00825B 31                    1390 	.db #0x31	; 49	'1'
      00825C 32                    1391 	.db #0x32	; 50	'2'
      00825D 33                    1392 	.db #0x33	; 51	'3'
      00825E 34                    1393 	.db #0x34	; 52	'4'
      00825F 35                    1394 	.db #0x35	; 53	'5'
      008260 36                    1395 	.db #0x36	; 54	'6'
      008261 37                    1396 	.db #0x37	; 55	'7'
      008262 38                    1397 	.db #0x38	; 56	'8'
      008263 39                    1398 	.db #0x39	; 57	'9'
                                   1399 	.area CONST
      008264                       1400 ___str_3:
      008264 4D 65 61 73 75 72 65  1401 	.ascii "Measurements status: %04X"
             6D 65 6E 74 73 20 73
             74 61 74 75 73 3A 20
             25 30 34 58
      00827D 0D                    1402 	.db 0x0d
      00827E 0A                    1403 	.db 0x0a
      00827F 00                    1404 	.db 0x00
                                   1405 	.area CODE
                                   1406 	.area CONST
      008280                       1407 ___str_4:
      008280 25 73                 1408 	.ascii "%s"
      008282 00                    1409 	.db 0x00
                                   1410 	.area CODE
                                   1411 	.area CONST
      008283                       1412 ___str_5:
      008283 54 65 6D 70 65 72 61  1413 	.ascii "Temperature: %s"
             74 75 72 65 3A 20 25
             73
      008292 0D                    1414 	.db 0x0d
      008293 0A                    1415 	.db 0x0a
      008294 50 72 65 73 73 75 72  1416 	.ascii "Pressure: %s"
             65 3A 20 25 73
      0082A0 0D                    1417 	.db 0x0d
      0082A1 0A                    1418 	.db 0x0a
      0082A2 48 75 6D 69 64 69 74  1419 	.ascii "Humidity: %s"
             79 3A 20 25 73
      0082AE 0D                    1420 	.db 0x0d
      0082AF 0A                    1421 	.db 0x0a
      0082B0 00                    1422 	.db 0x00
                                   1423 	.area CODE
                                   1424 	.area CONST
      0082B1                       1425 ___str_6:
      0082B1 4F 4E                 1426 	.ascii "ON"
      0082B3 00                    1427 	.db 0x00
                                   1428 	.area CODE
                                   1429 	.area CONST
      0082B4                       1430 ___str_7:
      0082B4 4F 46 46              1431 	.ascii "OFF"
      0082B7 00                    1432 	.db 0x00
                                   1433 	.area CODE
                                   1434 	.area CONST
      0082B8                       1435 ___str_8:
      0082B8 46 61 6D 61 6C 79 20  1436 	.ascii "Famaly ID: 0x%02x, "
             49 44 3A 20 30 78 25
             30 32 78 2C 20
      0082CB 00                    1437 	.db 0x00
                                   1438 	.area CODE
                                   1439 	.area CONST
      0082CC                       1440 ___str_9:
      0082CC 53 65 6E 73 6F 72 20  1441 	.ascii "Sensor ID; "
             49 44 3B 20
      0082D7 00                    1442 	.db 0x00
                                   1443 	.area CODE
                                   1444 	.area CONST
      0082D8                       1445 ___str_10:
      0082D8 30 78 25 30 32 78 20  1446 	.ascii "0x%02x "
      0082DF 00                    1447 	.db 0x00
                                   1448 	.area CODE
                                   1449 	.area CONST
      0082E0                       1450 ___str_12:
      0082E0 0D                    1451 	.db 0x0d
      0082E1 00                    1452 	.db 0x00
                                   1453 	.area CODE
                                   1454 	.area CONST
      0082E2                       1455 ___str_13:
      0082E2 44 53 31 38 58 32 30  1456 	.ascii "DS18X20 temperature: %s"
             20 74 65 6D 70 65 72
             61 74 75 72 65 3A 20
             25 73
      0082F9 0D                    1457 	.db 0x0d
      0082FA 0A                    1458 	.db 0x0a
      0082FB 00                    1459 	.db 0x00
                                   1460 	.area CODE
                                   1461 	.area CONST
      0082FC                       1462 ___str_14:
      0082FC 25 73                 1463 	.ascii "%s"
      0082FE 0D                    1464 	.db 0x0d
      0082FF 0A                    1465 	.db 0x0a
      008300 00                    1466 	.db 0x00
                                   1467 	.area CODE
                                   1468 	.area CONST
      008301                       1469 ___str_15:
      008301 42 4D 45 32 38 30 5F  1470 	.ascii "BME280_ID: 0x%02x"
             49 44 3A 20 30 78 25
             30 32 78
      008312 00                    1471 	.db 0x00
                                   1472 	.area CODE
                                   1473 	.area CONST
      008313                       1474 ___str_17:
      008313 44 49 47 5F 54 31 3A  1475 	.ascii "DIG_T1: %u"
             20 25 75
      00831D 0D                    1476 	.db 0x0d
      00831E 0A                    1477 	.db 0x0a
      00831F 00                    1478 	.db 0x00
                                   1479 	.area CODE
                                   1480 	.area CONST
      008320                       1481 ___str_18:
      008320 44 49 47 5F 54 32 3A  1482 	.ascii "DIG_T2: %d"
             20 25 64
      00832A 0D                    1483 	.db 0x0d
      00832B 0A                    1484 	.db 0x0a
      00832C 00                    1485 	.db 0x00
                                   1486 	.area CODE
                                   1487 	.area CONST
      00832D                       1488 ___str_19:
      00832D 44 49 47 5F 54 33 3A  1489 	.ascii "DIG_T3: %d"
             20 25 64
      008337 0D                    1490 	.db 0x0d
      008338 0A                    1491 	.db 0x0a
      008339 00                    1492 	.db 0x00
                                   1493 	.area CODE
                                   1494 	.area CONST
      00833A                       1495 ___str_20:
      00833A 44 49 47 5F 50 31 3A  1496 	.ascii "DIG_P1: %u"
             20 25 75
      008344 0D                    1497 	.db 0x0d
      008345 0A                    1498 	.db 0x0a
      008346 00                    1499 	.db 0x00
                                   1500 	.area CODE
                                   1501 	.area CONST
      008347                       1502 ___str_21:
      008347 44 49 47 5F 50 32 3A  1503 	.ascii "DIG_P2: %d"
             20 25 64
      008351 0D                    1504 	.db 0x0d
      008352 0A                    1505 	.db 0x0a
      008353 00                    1506 	.db 0x00
                                   1507 	.area CODE
                                   1508 	.area CONST
      008354                       1509 ___str_22:
      008354 44 49 47 5F 50 33 3A  1510 	.ascii "DIG_P3: %d"
             20 25 64
      00835E 0D                    1511 	.db 0x0d
      00835F 0A                    1512 	.db 0x0a
      008360 00                    1513 	.db 0x00
                                   1514 	.area CODE
                                   1515 	.area CONST
      008361                       1516 ___str_23:
      008361 44 49 47 5F 50 34 3A  1517 	.ascii "DIG_P4: %d"
             20 25 64
      00836B 0D                    1518 	.db 0x0d
      00836C 0A                    1519 	.db 0x0a
      00836D 00                    1520 	.db 0x00
                                   1521 	.area CODE
                                   1522 	.area CONST
      00836E                       1523 ___str_24:
      00836E 44 49 47 5F 50 35 3A  1524 	.ascii "DIG_P5: %d"
             20 25 64
      008378 0D                    1525 	.db 0x0d
      008379 0A                    1526 	.db 0x0a
      00837A 00                    1527 	.db 0x00
                                   1528 	.area CODE
                                   1529 	.area CONST
      00837B                       1530 ___str_25:
      00837B 44 49 47 5F 50 36 3A  1531 	.ascii "DIG_P6: %d"
             20 25 64
      008385 0D                    1532 	.db 0x0d
      008386 0A                    1533 	.db 0x0a
      008387 00                    1534 	.db 0x00
                                   1535 	.area CODE
                                   1536 	.area CONST
      008388                       1537 ___str_26:
      008388 44 49 47 5F 50 37 3A  1538 	.ascii "DIG_P7: %d"
             20 25 64
      008392 0D                    1539 	.db 0x0d
      008393 0A                    1540 	.db 0x0a
      008394 00                    1541 	.db 0x00
                                   1542 	.area CODE
                                   1543 	.area CONST
      008395                       1544 ___str_27:
      008395 44 49 47 5F 50 38 3A  1545 	.ascii "DIG_P8: %d"
             20 25 64
      00839F 0D                    1546 	.db 0x0d
      0083A0 0A                    1547 	.db 0x0a
      0083A1 00                    1548 	.db 0x00
                                   1549 	.area CODE
                                   1550 	.area CONST
      0083A2                       1551 ___str_28:
      0083A2 44 49 47 5F 50 39 3A  1552 	.ascii "DIG_P9: %d"
             20 25 64
      0083AC 0D                    1553 	.db 0x0d
      0083AD 0A                    1554 	.db 0x0a
      0083AE 00                    1555 	.db 0x00
                                   1556 	.area CODE
                                   1557 	.area CONST
      0083AF                       1558 ___str_29:
      0083AF 44 49 47 5F 48 31 3A  1559 	.ascii "DIG_H1: %d"
             20 25 64
      0083B9 0D                    1560 	.db 0x0d
      0083BA 0A                    1561 	.db 0x0a
      0083BB 00                    1562 	.db 0x00
                                   1563 	.area CODE
                                   1564 	.area CONST
      0083BC                       1565 ___str_30:
      0083BC 44 49 47 5F 48 32 3A  1566 	.ascii "DIG_H2: %d"
             20 25 64
      0083C6 0D                    1567 	.db 0x0d
      0083C7 0A                    1568 	.db 0x0a
      0083C8 00                    1569 	.db 0x00
                                   1570 	.area CODE
                                   1571 	.area CONST
      0083C9                       1572 ___str_31:
      0083C9 44 49 47 5F 48 33 3A  1573 	.ascii "DIG_H3: %d"
             20 25 64
      0083D3 0D                    1574 	.db 0x0d
      0083D4 0A                    1575 	.db 0x0a
      0083D5 00                    1576 	.db 0x00
                                   1577 	.area CODE
                                   1578 	.area CONST
      0083D6                       1579 ___str_32:
      0083D6 44 49 47 5F 48 34 3A  1580 	.ascii "DIG_H4: %d"
             20 25 64
      0083E0 0D                    1581 	.db 0x0d
      0083E1 0A                    1582 	.db 0x0a
      0083E2 00                    1583 	.db 0x00
                                   1584 	.area CODE
                                   1585 	.area CONST
      0083E3                       1586 ___str_33:
      0083E3 44 49 47 5F 48 35 3A  1587 	.ascii "DIG_H5: %d"
             20 25 64
      0083ED 0D                    1588 	.db 0x0d
      0083EE 0A                    1589 	.db 0x0a
      0083EF 00                    1590 	.db 0x00
                                   1591 	.area CODE
                                   1592 	.area CONST
      0083F0                       1593 ___str_34:
      0083F0 44 49 47 5F 48 36 3A  1594 	.ascii "DIG_H6: %d"
             20 25 64
      0083FA 0D                    1595 	.db 0x0d
      0083FB 0A                    1596 	.db 0x0a
      0083FC 00                    1597 	.db 0x00
                                   1598 	.area CODE
                                   1599 	.area INITIALIZER
      008408                       1600 __xinit__fDS18X20Temperature:
      008408 C2 C8 00 00           1601 	.byte #0xc2, #0xc8, #0x00, #0x00	; -1.000000e+02
      00840C                       1602 __xinit__fAHTX0Humidity:
      00840C 00 00 00 00           1603 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
      008410                       1604 __xinit__fAHTX0Temperature:
      008410 00 00 00 00           1605 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
                                   1606 	.area CABS (ABS)
