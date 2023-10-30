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
                                     34 	.globl _sprintf
                                     35 	.globl _printf
                                     36 	.globl _UART2_GetFlagStatus
                                     37 	.globl _UART2_SendData8
                                     38 	.globl _UART2_ReceiveData8
                                     39 	.globl _UART2_Init
                                     40 	.globl _UART2_DeInit
                                     41 	.globl _GPIO_WriteLow
                                     42 	.globl _GPIO_WriteHigh
                                     43 	.globl _GPIO_Init
                                     44 	.globl _GPIO_DeInit
                                     45 	.globl _CLK_GetFlagStatus
                                     46 	.globl _CLK_SYSCLKConfig
                                     47 	.globl _CLK_HSIPrescalerConfig
                                     48 	.globl _CLK_ClockSwitchConfig
                                     49 	.globl _CLK_PeripheralClockConfig
                                     50 	.globl _CLK_ClockSwitchCmd
                                     51 	.globl _CLK_LSICmd
                                     52 	.globl _CLK_HSICmd
                                     53 	.globl _CLK_HSECmd
                                     54 	.globl _CLK_DeInit
                                     55 	.globl _fBME280Temperature
                                     56 	.globl _fBME280Humidity
                                     57 	.globl _fAHTX0Temperature
                                     58 	.globl _fAHTX0Humidity
                                     59 	.globl _fDS18X20Temperature
                                     60 	.globl _str1
                                     61 	.globl _sString
                                     62 	.globl _iI2CRead
                                     63 	.globl _iI2CWrite
                                     64 	.globl _iDS18X20RomID
                                     65 	.globl _FloatToStr
                                     66 	.globl _putchar
                                     67 	.globl _getchar
                                     68 	.globl _assert_failed
                                     69 ;--------------------------------------------------------
                                     70 ; ram data
                                     71 ;--------------------------------------------------------
                                     72 	.area DATA
      000022                         73 _iDS18X20RomID::
      000022                         74 	.ds 8
      00002A                         75 _iI2CWrite::
      00002A                         76 	.ds 3
      00002D                         77 _iI2CRead::
      00002D                         78 	.ds 7
      000034                         79 _sString::
      000034                         80 	.ds 100
      000098                         81 _str1::
      000098                         82 	.ds 100
                                     83 ;--------------------------------------------------------
                                     84 ; ram data
                                     85 ;--------------------------------------------------------
                                     86 	.area INITIALIZED
      0004FE                         87 _fDS18X20Temperature::
      0004FE                         88 	.ds 4
      000502                         89 _fAHTX0Humidity::
      000502                         90 	.ds 4
      000506                         91 _fAHTX0Temperature::
      000506                         92 	.ds 4
      00050A                         93 _fBME280Humidity::
      00050A                         94 	.ds 4
      00050E                         95 _fBME280Temperature::
      00050E                         96 	.ds 4
                                     97 ;--------------------------------------------------------
                                     98 ; Stack segment in internal ram
                                     99 ;--------------------------------------------------------
                                    100 	.area	SSEG
      00BBB0                        101 __start__stack:
      00BBB0                        102 	.ds	1
                                    103 
                                    104 ;--------------------------------------------------------
                                    105 ; absolute external ram data
                                    106 ;--------------------------------------------------------
                                    107 	.area DABS (ABS)
                                    108 
                                    109 ; default segment ordering for linker
                                    110 	.area HOME
                                    111 	.area GSINIT
                                    112 	.area GSFINAL
                                    113 	.area CONST
                                    114 	.area INITIALIZER
                                    115 	.area CODE
                                    116 
                                    117 ;--------------------------------------------------------
                                    118 ; interrupt vector
                                    119 ;--------------------------------------------------------
                                    120 	.area HOME
      008000                        121 __interrupt_vect:
      008000 82 00 80 6F            122 	int s_GSINIT ; reset
      008004 82 00 AA 5B            123 	int _TRAP_IRQHandler ; trap
      008008 82 00 AA 5C            124 	int _TLI_IRQHandler ; int0
      00800C 82 00 AA 5D            125 	int _AWU_IRQHandler ; int1
      008010 82 00 AA 5E            126 	int _CLK_IRQHandler ; int2
      008014 82 00 AA 5F            127 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 AA 60            128 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 AA 61            129 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 AA 62            130 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 AA 63            131 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 00 00            132 	int 0x000000 ; int8
      00802C 82 00 00 00            133 	int 0x000000 ; int9
      008030 82 00 AA 64            134 	int _SPI_IRQHandler ; int10
      008034 82 00 AA 65            135 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 AA 66            136 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 AA 67            137 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 AA 68            138 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 AA 69            139 	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
      008048 82 00 AA 6A            140 	int _TIM3_CAP_COM_IRQHandler ; int16
      00804C 82 00 00 00            141 	int 0x000000 ; int17
      008050 82 00 00 00            142 	int 0x000000 ; int18
      008054 82 00 AA 6B            143 	int _I2C_IRQHandler ; int19
      008058 82 00 AA 6C            144 	int _UART2_TX_IRQHandler ; int20
      00805C 82 00 AA 6D            145 	int _UART2_RX_IRQHandler ; int21
      008060 82 00 AA 6E            146 	int _ADC1_IRQHandler ; int22
      008064 82 00 AA 6F            147 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 AA 70            148 	int _EEPROM_EEC_IRQHandler ; int24
                                    149 ;--------------------------------------------------------
                                    150 ; global & static initialisations
                                    151 ;--------------------------------------------------------
                                    152 	.area HOME
                                    153 	.area GSINIT
                                    154 	.area GSFINAL
                                    155 	.area GSINIT
      00806F                        156 __sdcc_init_data:
                                    157 ; stm8_genXINIT() start
      00806F AE 04 FD         [ 2]  158 	ldw x, #l_DATA
      008072 27 07            [ 1]  159 	jreq	00002$
      008074                        160 00001$:
      008074 72 4F 00 00      [ 1]  161 	clr (s_DATA - 1, x)
      008078 5A               [ 2]  162 	decw x
      008079 26 F9            [ 1]  163 	jrne	00001$
      00807B                        164 00002$:
      00807B AE 00 14         [ 2]  165 	ldw	x, #l_INITIALIZER
      00807E 27 09            [ 1]  166 	jreq	00004$
      008080                        167 00003$:
      008080 D6 82 73         [ 1]  168 	ld	a, (s_INITIALIZER - 1, x)
      008083 D7 04 FD         [ 1]  169 	ld	(s_INITIALIZED - 1, x), a
      008086 5A               [ 2]  170 	decw	x
      008087 26 F7            [ 1]  171 	jrne	00003$
      008089                        172 00004$:
                                    173 ; stm8_genXINIT() end
                                    174 	.area GSFINAL
      00808C CC 80 6C         [ 2]  175 	jp	__sdcc_program_startup
                                    176 ;--------------------------------------------------------
                                    177 ; Home
                                    178 ;--------------------------------------------------------
                                    179 	.area HOME
                                    180 	.area HOME
      00806C                        181 __sdcc_program_startup:
      00806C CC A2 9B         [ 2]  182 	jp	_main
                                    183 ;	return from main will return to caller
                                    184 ;--------------------------------------------------------
                                    185 ; code
                                    186 ;--------------------------------------------------------
                                    187 	.area CODE
                                    188 ;	src/main.c: 138: void Clock_Setup(void) {
                                    189 ;	-----------------------------------------
                                    190 ;	 function Clock_Setup
                                    191 ;	-----------------------------------------
      00A21D                        192 _Clock_Setup:
                                    193 ;	src/main.c: 139: CLK_DeInit();
      00A21D CD 82 88         [ 4]  194 	call	_CLK_DeInit
                                    195 ;	src/main.c: 140: CLK_HSECmd(DISABLE);
      00A220 4F               [ 1]  196 	clr	a
      00A221 CD 82 E9         [ 4]  197 	call	_CLK_HSECmd
                                    198 ;	src/main.c: 141: CLK_LSICmd(DISABLE);
      00A224 4F               [ 1]  199 	clr	a
      00A225 CD 83 3F         [ 4]  200 	call	_CLK_LSICmd
                                    201 ;	src/main.c: 142: CLK_HSICmd(ENABLE);
      00A228 A6 01            [ 1]  202 	ld	a, #0x01
      00A22A CD 83 14         [ 4]  203 	call	_CLK_HSICmd
                                    204 ;	src/main.c: 143: while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
      00A22D                        205 00101$:
      00A22D AE 01 02         [ 2]  206 	ldw	x, #0x0102
      00A230 CD 88 30         [ 4]  207 	call	_CLK_GetFlagStatus
      00A233 4D               [ 1]  208 	tnz	a
      00A234 27 F7            [ 1]  209 	jreq	00101$
                                    210 ;	src/main.c: 144: CLK_ClockSwitchCmd(ENABLE);
      00A236 A6 01            [ 1]  211 	ld	a, #0x01
      00A238 CD 83 95         [ 4]  212 	call	_CLK_ClockSwitchCmd
                                    213 ;	src/main.c: 145: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
      00A23B 4F               [ 1]  214 	clr	a
      00A23C CD 85 CE         [ 4]  215 	call	_CLK_HSIPrescalerConfig
                                    216 ;	src/main.c: 146: CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
      00A23F A6 80            [ 1]  217 	ld	a, #0x80
      00A241 CD 86 ED         [ 4]  218 	call	_CLK_SYSCLKConfig
                                    219 ;	src/main.c: 147: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
      00A244 4B 01            [ 1]  220 	push	#0x01
      00A246 4B 00            [ 1]  221 	push	#0x00
      00A248 4B E1            [ 1]  222 	push	#0xe1
      00A24A A6 01            [ 1]  223 	ld	a, #0x01
      00A24C CD 84 B6         [ 4]  224 	call	_CLK_ClockSwitchConfig
                                    225 ;	src/main.c: 149: CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
      00A24F 4B 00            [ 1]  226 	push	#0x00
      00A251 A6 01            [ 1]  227 	ld	a, #0x01
      00A253 CD 83 EB         [ 4]  228 	call	_CLK_PeripheralClockConfig
                                    229 ;	src/main.c: 150: CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
      00A256 4B 00            [ 1]  230 	push	#0x00
      00A258 A6 12            [ 1]  231 	ld	a, #0x12
      00A25A CD 83 EB         [ 4]  232 	call	_CLK_PeripheralClockConfig
                                    233 ;	src/main.c: 152: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
      00A25D 4B 00            [ 1]  234 	push	#0x00
      00A25F A6 07            [ 1]  235 	ld	a, #0x07
      00A261 CD 83 EB         [ 4]  236 	call	_CLK_PeripheralClockConfig
                                    237 ;	src/main.c: 153: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
      00A264 4B 00            [ 1]  238 	push	#0x00
      00A266 A6 05            [ 1]  239 	ld	a, #0x05
      00A268 CD 83 EB         [ 4]  240 	call	_CLK_PeripheralClockConfig
                                    241 ;	src/main.c: 154: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
      00A26B 4B 00            [ 1]  242 	push	#0x00
      00A26D A6 04            [ 1]  243 	ld	a, #0x04
      00A26F CD 83 EB         [ 4]  244 	call	_CLK_PeripheralClockConfig
                                    245 ;	src/main.c: 155: }
      00A272 81               [ 4]  246 	ret
                                    247 ;	src/main.c: 157: void GPIO_Setup(void) {
                                    248 ;	-----------------------------------------
                                    249 ;	 function GPIO_Setup
                                    250 ;	-----------------------------------------
      00A273                        251 _GPIO_Setup:
                                    252 ;	src/main.c: 162: GPIO_DeInit(GPIOE);
      00A273 AE 50 14         [ 2]  253 	ldw	x, #0x5014
      00A276 CD 89 1E         [ 4]  254 	call	_GPIO_DeInit
                                    255 ;	src/main.c: 163: GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
      00A279 4B F0            [ 1]  256 	push	#0xf0
      00A27B A6 20            [ 1]  257 	ld	a, #0x20
      00A27D AE 50 14         [ 2]  258 	ldw	x, #0x5014
      00A280 CD 89 2C         [ 4]  259 	call	_GPIO_Init
                                    260 ;	src/main.c: 164: }
      00A283 81               [ 4]  261 	ret
                                    262 ;	src/main.c: 166: void UART_Setup() {
                                    263 ;	-----------------------------------------
                                    264 ;	 function UART_Setup
                                    265 ;	-----------------------------------------
      00A284                        266 _UART_Setup:
                                    267 ;	src/main.c: 167: UART_DEINIT();
      00A284 CD 90 E4         [ 4]  268 	call	_UART2_DeInit
                                    269 ;	src/main.c: 177: UART_INIT((uint32_t)9600, UART_WORDLENGTH_8D, UART_STOPBITS_1, UART_PARITY_NO, UART_SYNCMODE_CLOCK_DISABLE, UART_MODE_TXRX_ENABLE);
      00A287 4B 0C            [ 1]  270 	push	#0x0c
      00A289 4B 80            [ 1]  271 	push	#0x80
      00A28B 4B 00            [ 1]  272 	push	#0x00
      00A28D 4B 00            [ 1]  273 	push	#0x00
      00A28F 4B 00            [ 1]  274 	push	#0x00
      00A291 4B 80            [ 1]  275 	push	#0x80
      00A293 4B 25            [ 1]  276 	push	#0x25
      00A295 5F               [ 1]  277 	clrw	x
      00A296 89               [ 2]  278 	pushw	x
      00A297 CD 91 0B         [ 4]  279 	call	_UART2_Init
                                    280 ;	src/main.c: 178: }
      00A29A 81               [ 4]  281 	ret
                                    282 ;	src/main.c: 188: void main(void) {
                                    283 ;	-----------------------------------------
                                    284 ;	 function main
                                    285 ;	-----------------------------------------
      00A29B                        286 _main:
      00A29B 90 96            [ 1]  287 	ldw	y, sp
      00A29D 72 A2 00 0F      [ 2]  288 	subw	y, #15
      00A2A1 52 FF            [ 2]  289 	sub	sp, #255
      00A2A3 52 05            [ 2]  290 	sub	sp, #5
                                    291 ;	src/main.c: 189: Clock_Setup();
      00A2A5 90 89            [ 2]  292 	pushw	y
      00A2A7 CD A2 1D         [ 4]  293 	call	_Clock_Setup
      00A2AA CD A2 73         [ 4]  294 	call	_GPIO_Setup
      00A2AD CD 9E 09         [ 4]  295 	call	_DS18X20_Setup
      00A2B0 CD 9E 1A         [ 4]  296 	call	_I2C_Setup
      00A2B3 CD A2 84         [ 4]  297 	call	_UART_Setup
      00A2B6 CD 99 FB         [ 4]  298 	call	_BME280_Setup
      00A2B9 CD 9A A6         [ 4]  299 	call	_BME280_ReadCoefficients
      00A2BC A6 08            [ 1]  300 	ld	a, #0x08
      00A2BE CD 9B 85         [ 4]  301 	call	_BME280_SetFilter
      00A2C1 A6 60            [ 1]  302 	ld	a, #0x60
      00A2C3 CD 9B 9F         [ 4]  303 	call	_BME280_SetOversamplingTemper
      00A2C6 A6 08            [ 1]  304 	ld	a, #0x08
      00A2C8 CD 9B B9         [ 4]  305 	call	_BME280_SetOversamplingPressure
      00A2CB A6 01            [ 1]  306 	ld	a, #0x01
      00A2CD CD 9B D3         [ 4]  307 	call	_BME280_SetOversamplingHum
      00A2D0 A6 03            [ 1]  308 	ld	a, #0x03
      00A2D2 CD 9B F8         [ 4]  309 	call	_BME280_SetMode
      00A2D5 90 85            [ 2]  310 	popw	y
                                    311 ;	src/main.c: 219: while (1) {
      00A2D7                        312 00111$:
                                    313 ;	src/main.c: 226: const char placeholderDS18X20String[] = "{\"topic\" : \"mqtt\/temperature-room\", \"value\" : \"%s\"}";
      00A2D7 A6 7B            [ 1]  314 	ld	a, #0x7b
      00A2D9 6B 01            [ 1]  315 	ld	(0x01, sp), a
      00A2DB A6 22            [ 1]  316 	ld	a, #0x22
      00A2DD 6B 02            [ 1]  317 	ld	(0x02, sp), a
      00A2DF A6 74            [ 1]  318 	ld	a, #0x74
      00A2E1 6B 03            [ 1]  319 	ld	(0x03, sp), a
      00A2E3 A6 6F            [ 1]  320 	ld	a, #0x6f
      00A2E5 6B 04            [ 1]  321 	ld	(0x04, sp), a
      00A2E7 A6 70            [ 1]  322 	ld	a, #0x70
      00A2E9 6B 05            [ 1]  323 	ld	(0x05, sp), a
      00A2EB A6 69            [ 1]  324 	ld	a, #0x69
      00A2ED 6B 06            [ 1]  325 	ld	(0x06, sp), a
      00A2EF A6 63            [ 1]  326 	ld	a, #0x63
      00A2F1 6B 07            [ 1]  327 	ld	(0x07, sp), a
      00A2F3 A6 22            [ 1]  328 	ld	a, #0x22
      00A2F5 6B 08            [ 1]  329 	ld	(0x08, sp), a
      00A2F7 A6 20            [ 1]  330 	ld	a, #0x20
      00A2F9 6B 09            [ 1]  331 	ld	(0x09, sp), a
      00A2FB A6 3A            [ 1]  332 	ld	a, #0x3a
      00A2FD 6B 0A            [ 1]  333 	ld	(0x0a, sp), a
      00A2FF A6 20            [ 1]  334 	ld	a, #0x20
      00A301 6B 0B            [ 1]  335 	ld	(0x0b, sp), a
      00A303 A6 22            [ 1]  336 	ld	a, #0x22
      00A305 6B 0C            [ 1]  337 	ld	(0x0c, sp), a
      00A307 A6 6D            [ 1]  338 	ld	a, #0x6d
      00A309 6B 0D            [ 1]  339 	ld	(0x0d, sp), a
      00A30B A6 71            [ 1]  340 	ld	a, #0x71
      00A30D 6B 0E            [ 1]  341 	ld	(0x0e, sp), a
      00A30F A6 74            [ 1]  342 	ld	a, #0x74
      00A311 6B 0F            [ 1]  343 	ld	(0x0f, sp), a
      00A313 6B 10            [ 1]  344 	ld	(0x10, sp), a
      00A315 A6 2F            [ 1]  345 	ld	a, #0x2f
      00A317 6B 11            [ 1]  346 	ld	(0x11, sp), a
      00A319 A6 74            [ 1]  347 	ld	a, #0x74
      00A31B 6B 12            [ 1]  348 	ld	(0x12, sp), a
      00A31D A6 65            [ 1]  349 	ld	a, #0x65
      00A31F 6B 13            [ 1]  350 	ld	(0x13, sp), a
      00A321 A6 6D            [ 1]  351 	ld	a, #0x6d
      00A323 6B 14            [ 1]  352 	ld	(0x14, sp), a
      00A325 A6 70            [ 1]  353 	ld	a, #0x70
      00A327 6B 15            [ 1]  354 	ld	(0x15, sp), a
      00A329 A6 65            [ 1]  355 	ld	a, #0x65
      00A32B 6B 16            [ 1]  356 	ld	(0x16, sp), a
      00A32D A6 72            [ 1]  357 	ld	a, #0x72
      00A32F 6B 17            [ 1]  358 	ld	(0x17, sp), a
      00A331 A6 61            [ 1]  359 	ld	a, #0x61
      00A333 6B 18            [ 1]  360 	ld	(0x18, sp), a
      00A335 A6 74            [ 1]  361 	ld	a, #0x74
      00A337 6B 19            [ 1]  362 	ld	(0x19, sp), a
      00A339 A6 75            [ 1]  363 	ld	a, #0x75
      00A33B 6B 1A            [ 1]  364 	ld	(0x1a, sp), a
      00A33D A6 72            [ 1]  365 	ld	a, #0x72
      00A33F 6B 1B            [ 1]  366 	ld	(0x1b, sp), a
      00A341 A6 65            [ 1]  367 	ld	a, #0x65
      00A343 6B 1C            [ 1]  368 	ld	(0x1c, sp), a
      00A345 A6 2D            [ 1]  369 	ld	a, #0x2d
      00A347 6B 1D            [ 1]  370 	ld	(0x1d, sp), a
      00A349 A6 72            [ 1]  371 	ld	a, #0x72
      00A34B 6B 1E            [ 1]  372 	ld	(0x1e, sp), a
      00A34D A6 6F            [ 1]  373 	ld	a, #0x6f
      00A34F 6B 1F            [ 1]  374 	ld	(0x1f, sp), a
      00A351 6B 20            [ 1]  375 	ld	(0x20, sp), a
      00A353 A6 6D            [ 1]  376 	ld	a, #0x6d
      00A355 6B 21            [ 1]  377 	ld	(0x21, sp), a
      00A357 A6 22            [ 1]  378 	ld	a, #0x22
      00A359 6B 22            [ 1]  379 	ld	(0x22, sp), a
      00A35B A6 2C            [ 1]  380 	ld	a, #0x2c
      00A35D 6B 23            [ 1]  381 	ld	(0x23, sp), a
      00A35F A6 20            [ 1]  382 	ld	a, #0x20
      00A361 6B 24            [ 1]  383 	ld	(0x24, sp), a
      00A363 A6 22            [ 1]  384 	ld	a, #0x22
      00A365 6B 25            [ 1]  385 	ld	(0x25, sp), a
      00A367 A6 76            [ 1]  386 	ld	a, #0x76
      00A369 6B 26            [ 1]  387 	ld	(0x26, sp), a
      00A36B A6 61            [ 1]  388 	ld	a, #0x61
      00A36D 6B 27            [ 1]  389 	ld	(0x27, sp), a
      00A36F A6 6C            [ 1]  390 	ld	a, #0x6c
      00A371 6B 28            [ 1]  391 	ld	(0x28, sp), a
      00A373 A6 75            [ 1]  392 	ld	a, #0x75
      00A375 6B 29            [ 1]  393 	ld	(0x29, sp), a
      00A377 A6 65            [ 1]  394 	ld	a, #0x65
      00A379 6B 2A            [ 1]  395 	ld	(0x2a, sp), a
      00A37B A6 22            [ 1]  396 	ld	a, #0x22
      00A37D 6B 2B            [ 1]  397 	ld	(0x2b, sp), a
      00A37F A6 20            [ 1]  398 	ld	a, #0x20
      00A381 6B 2C            [ 1]  399 	ld	(0x2c, sp), a
      00A383 A6 3A            [ 1]  400 	ld	a, #0x3a
      00A385 6B 2D            [ 1]  401 	ld	(0x2d, sp), a
      00A387 A6 20            [ 1]  402 	ld	a, #0x20
      00A389 6B 2E            [ 1]  403 	ld	(0x2e, sp), a
      00A38B A6 22            [ 1]  404 	ld	a, #0x22
      00A38D 6B 2F            [ 1]  405 	ld	(0x2f, sp), a
      00A38F A6 25            [ 1]  406 	ld	a, #0x25
      00A391 6B 30            [ 1]  407 	ld	(0x30, sp), a
      00A393 A6 73            [ 1]  408 	ld	a, #0x73
      00A395 6B 31            [ 1]  409 	ld	(0x31, sp), a
      00A397 A6 22            [ 1]  410 	ld	a, #0x22
      00A399 6B 32            [ 1]  411 	ld	(0x32, sp), a
      00A39B A6 7D            [ 1]  412 	ld	a, #0x7d
      00A39D 6B 33            [ 1]  413 	ld	(0x33, sp), a
      00A39F 0F 34            [ 1]  414 	clr	(0x34, sp)
                                    415 ;	src/main.c: 227: const char placeholderHumidityAHTX0String[] = "{\"topic\" : \"mqtt\/humidity-aht20\", \"value\": \"%s\"}";
      00A3A1 A6 7B            [ 1]  416 	ld	a, #0x7b
      00A3A3 6B 35            [ 1]  417 	ld	(0x35, sp), a
      00A3A5 A6 22            [ 1]  418 	ld	a, #0x22
      00A3A7 6B 36            [ 1]  419 	ld	(0x36, sp), a
      00A3A9 A6 74            [ 1]  420 	ld	a, #0x74
      00A3AB 6B 37            [ 1]  421 	ld	(0x37, sp), a
      00A3AD A6 6F            [ 1]  422 	ld	a, #0x6f
      00A3AF 6B 38            [ 1]  423 	ld	(0x38, sp), a
      00A3B1 A6 70            [ 1]  424 	ld	a, #0x70
      00A3B3 6B 39            [ 1]  425 	ld	(0x39, sp), a
      00A3B5 A6 69            [ 1]  426 	ld	a, #0x69
      00A3B7 6B 3A            [ 1]  427 	ld	(0x3a, sp), a
      00A3B9 A6 63            [ 1]  428 	ld	a, #0x63
      00A3BB 6B 3B            [ 1]  429 	ld	(0x3b, sp), a
      00A3BD A6 22            [ 1]  430 	ld	a, #0x22
      00A3BF 6B 3C            [ 1]  431 	ld	(0x3c, sp), a
      00A3C1 A6 20            [ 1]  432 	ld	a, #0x20
      00A3C3 6B 3D            [ 1]  433 	ld	(0x3d, sp), a
      00A3C5 A6 3A            [ 1]  434 	ld	a, #0x3a
      00A3C7 6B 3E            [ 1]  435 	ld	(0x3e, sp), a
      00A3C9 A6 20            [ 1]  436 	ld	a, #0x20
      00A3CB 6B 3F            [ 1]  437 	ld	(0x3f, sp), a
      00A3CD A6 22            [ 1]  438 	ld	a, #0x22
      00A3CF 6B 40            [ 1]  439 	ld	(0x40, sp), a
      00A3D1 A6 6D            [ 1]  440 	ld	a, #0x6d
      00A3D3 6B 41            [ 1]  441 	ld	(0x41, sp), a
      00A3D5 A6 71            [ 1]  442 	ld	a, #0x71
      00A3D7 6B 42            [ 1]  443 	ld	(0x42, sp), a
      00A3D9 A6 74            [ 1]  444 	ld	a, #0x74
      00A3DB 6B 43            [ 1]  445 	ld	(0x43, sp), a
      00A3DD 6B 44            [ 1]  446 	ld	(0x44, sp), a
      00A3DF A6 2F            [ 1]  447 	ld	a, #0x2f
      00A3E1 6B 45            [ 1]  448 	ld	(0x45, sp), a
      00A3E3 A6 68            [ 1]  449 	ld	a, #0x68
      00A3E5 6B 46            [ 1]  450 	ld	(0x46, sp), a
      00A3E7 A6 75            [ 1]  451 	ld	a, #0x75
      00A3E9 6B 47            [ 1]  452 	ld	(0x47, sp), a
      00A3EB A6 6D            [ 1]  453 	ld	a, #0x6d
      00A3ED 6B 48            [ 1]  454 	ld	(0x48, sp), a
      00A3EF A6 69            [ 1]  455 	ld	a, #0x69
      00A3F1 6B 49            [ 1]  456 	ld	(0x49, sp), a
      00A3F3 A6 64            [ 1]  457 	ld	a, #0x64
      00A3F5 6B 4A            [ 1]  458 	ld	(0x4a, sp), a
      00A3F7 A6 69            [ 1]  459 	ld	a, #0x69
      00A3F9 6B 4B            [ 1]  460 	ld	(0x4b, sp), a
      00A3FB A6 74            [ 1]  461 	ld	a, #0x74
      00A3FD 6B 4C            [ 1]  462 	ld	(0x4c, sp), a
      00A3FF A6 79            [ 1]  463 	ld	a, #0x79
      00A401 6B 4D            [ 1]  464 	ld	(0x4d, sp), a
      00A403 A6 2D            [ 1]  465 	ld	a, #0x2d
      00A405 6B 4E            [ 1]  466 	ld	(0x4e, sp), a
      00A407 A6 61            [ 1]  467 	ld	a, #0x61
      00A409 6B 4F            [ 1]  468 	ld	(0x4f, sp), a
      00A40B A6 68            [ 1]  469 	ld	a, #0x68
      00A40D 6B 50            [ 1]  470 	ld	(0x50, sp), a
      00A40F A6 74            [ 1]  471 	ld	a, #0x74
      00A411 6B 51            [ 1]  472 	ld	(0x51, sp), a
      00A413 A6 32            [ 1]  473 	ld	a, #0x32
      00A415 6B 52            [ 1]  474 	ld	(0x52, sp), a
      00A417 A6 30            [ 1]  475 	ld	a, #0x30
      00A419 6B 53            [ 1]  476 	ld	(0x53, sp), a
      00A41B A6 22            [ 1]  477 	ld	a, #0x22
      00A41D 6B 54            [ 1]  478 	ld	(0x54, sp), a
      00A41F A6 2C            [ 1]  479 	ld	a, #0x2c
      00A421 6B 55            [ 1]  480 	ld	(0x55, sp), a
      00A423 A6 20            [ 1]  481 	ld	a, #0x20
      00A425 6B 56            [ 1]  482 	ld	(0x56, sp), a
      00A427 A6 22            [ 1]  483 	ld	a, #0x22
      00A429 6B 57            [ 1]  484 	ld	(0x57, sp), a
      00A42B A6 76            [ 1]  485 	ld	a, #0x76
      00A42D 6B 58            [ 1]  486 	ld	(0x58, sp), a
      00A42F A6 61            [ 1]  487 	ld	a, #0x61
      00A431 6B 59            [ 1]  488 	ld	(0x59, sp), a
      00A433 A6 6C            [ 1]  489 	ld	a, #0x6c
      00A435 6B 5A            [ 1]  490 	ld	(0x5a, sp), a
      00A437 A6 75            [ 1]  491 	ld	a, #0x75
      00A439 6B 5B            [ 1]  492 	ld	(0x5b, sp), a
      00A43B A6 65            [ 1]  493 	ld	a, #0x65
      00A43D 6B 5C            [ 1]  494 	ld	(0x5c, sp), a
      00A43F A6 22            [ 1]  495 	ld	a, #0x22
      00A441 6B 5D            [ 1]  496 	ld	(0x5d, sp), a
      00A443 A6 3A            [ 1]  497 	ld	a, #0x3a
      00A445 6B 5E            [ 1]  498 	ld	(0x5e, sp), a
      00A447 A6 20            [ 1]  499 	ld	a, #0x20
      00A449 6B 5F            [ 1]  500 	ld	(0x5f, sp), a
      00A44B A6 22            [ 1]  501 	ld	a, #0x22
      00A44D 6B 60            [ 1]  502 	ld	(0x60, sp), a
      00A44F A6 25            [ 1]  503 	ld	a, #0x25
      00A451 6B 61            [ 1]  504 	ld	(0x61, sp), a
      00A453 A6 73            [ 1]  505 	ld	a, #0x73
      00A455 6B 62            [ 1]  506 	ld	(0x62, sp), a
      00A457 A6 22            [ 1]  507 	ld	a, #0x22
      00A459 6B 63            [ 1]  508 	ld	(0x63, sp), a
      00A45B A6 7D            [ 1]  509 	ld	a, #0x7d
      00A45D 6B 64            [ 1]  510 	ld	(0x64, sp), a
      00A45F 0F 65            [ 1]  511 	clr	(0x65, sp)
                                    512 ;	src/main.c: 228: const char placeholderTemperatureAHTX0String[] = "{\"topic\" : \"mqtt\/temperature-aht20\", \"value\": \"%s\"}";
      00A461 A6 7B            [ 1]  513 	ld	a, #0x7b
      00A463 6B 66            [ 1]  514 	ld	(0x66, sp), a
      00A465 A6 22            [ 1]  515 	ld	a, #0x22
      00A467 6B 67            [ 1]  516 	ld	(0x67, sp), a
      00A469 A6 74            [ 1]  517 	ld	a, #0x74
      00A46B 6B 68            [ 1]  518 	ld	(0x68, sp), a
      00A46D A6 6F            [ 1]  519 	ld	a, #0x6f
      00A46F 6B 69            [ 1]  520 	ld	(0x69, sp), a
      00A471 A6 70            [ 1]  521 	ld	a, #0x70
      00A473 6B 6A            [ 1]  522 	ld	(0x6a, sp), a
      00A475 A6 69            [ 1]  523 	ld	a, #0x69
      00A477 6B 6B            [ 1]  524 	ld	(0x6b, sp), a
      00A479 A6 63            [ 1]  525 	ld	a, #0x63
      00A47B 6B 6C            [ 1]  526 	ld	(0x6c, sp), a
      00A47D A6 22            [ 1]  527 	ld	a, #0x22
      00A47F 6B 6D            [ 1]  528 	ld	(0x6d, sp), a
      00A481 A6 20            [ 1]  529 	ld	a, #0x20
      00A483 6B 6E            [ 1]  530 	ld	(0x6e, sp), a
      00A485 A6 3A            [ 1]  531 	ld	a, #0x3a
      00A487 6B 6F            [ 1]  532 	ld	(0x6f, sp), a
      00A489 A6 20            [ 1]  533 	ld	a, #0x20
      00A48B 6B 70            [ 1]  534 	ld	(0x70, sp), a
      00A48D A6 22            [ 1]  535 	ld	a, #0x22
      00A48F 6B 71            [ 1]  536 	ld	(0x71, sp), a
      00A491 A6 6D            [ 1]  537 	ld	a, #0x6d
      00A493 6B 72            [ 1]  538 	ld	(0x72, sp), a
      00A495 A6 71            [ 1]  539 	ld	a, #0x71
      00A497 6B 73            [ 1]  540 	ld	(0x73, sp), a
      00A499 A6 74            [ 1]  541 	ld	a, #0x74
      00A49B 6B 74            [ 1]  542 	ld	(0x74, sp), a
      00A49D 6B 75            [ 1]  543 	ld	(0x75, sp), a
      00A49F A6 2F            [ 1]  544 	ld	a, #0x2f
      00A4A1 6B 76            [ 1]  545 	ld	(0x76, sp), a
      00A4A3 A6 74            [ 1]  546 	ld	a, #0x74
      00A4A5 6B 77            [ 1]  547 	ld	(0x77, sp), a
      00A4A7 A6 65            [ 1]  548 	ld	a, #0x65
      00A4A9 6B 78            [ 1]  549 	ld	(0x78, sp), a
      00A4AB A6 6D            [ 1]  550 	ld	a, #0x6d
      00A4AD 6B 79            [ 1]  551 	ld	(0x79, sp), a
      00A4AF A6 70            [ 1]  552 	ld	a, #0x70
      00A4B1 6B 7A            [ 1]  553 	ld	(0x7a, sp), a
      00A4B3 A6 65            [ 1]  554 	ld	a, #0x65
      00A4B5 6B 7B            [ 1]  555 	ld	(0x7b, sp), a
      00A4B7 A6 72            [ 1]  556 	ld	a, #0x72
      00A4B9 6B 7C            [ 1]  557 	ld	(0x7c, sp), a
      00A4BB A6 61            [ 1]  558 	ld	a, #0x61
      00A4BD 6B 7D            [ 1]  559 	ld	(0x7d, sp), a
      00A4BF A6 74            [ 1]  560 	ld	a, #0x74
      00A4C1 6B 7E            [ 1]  561 	ld	(0x7e, sp), a
      00A4C3 A6 75            [ 1]  562 	ld	a, #0x75
      00A4C5 6B 7F            [ 1]  563 	ld	(0x7f, sp), a
      00A4C7 A6 72            [ 1]  564 	ld	a, #0x72
      00A4C9 6B 80            [ 1]  565 	ld	(0x80, sp), a
      00A4CB A6 65            [ 1]  566 	ld	a, #0x65
      00A4CD 6B 81            [ 1]  567 	ld	(0x81, sp), a
      00A4CF A6 2D            [ 1]  568 	ld	a, #0x2d
      00A4D1 6B 82            [ 1]  569 	ld	(0x82, sp), a
      00A4D3 A6 61            [ 1]  570 	ld	a, #0x61
      00A4D5 6B 83            [ 1]  571 	ld	(0x83, sp), a
      00A4D7 A6 68            [ 1]  572 	ld	a, #0x68
      00A4D9 6B 84            [ 1]  573 	ld	(0x84, sp), a
      00A4DB A6 74            [ 1]  574 	ld	a, #0x74
      00A4DD 6B 85            [ 1]  575 	ld	(0x85, sp), a
      00A4DF A6 32            [ 1]  576 	ld	a, #0x32
      00A4E1 6B 86            [ 1]  577 	ld	(0x86, sp), a
      00A4E3 A6 30            [ 1]  578 	ld	a, #0x30
      00A4E5 6B 87            [ 1]  579 	ld	(0x87, sp), a
      00A4E7 A6 22            [ 1]  580 	ld	a, #0x22
      00A4E9 6B 88            [ 1]  581 	ld	(0x88, sp), a
      00A4EB A6 2C            [ 1]  582 	ld	a, #0x2c
      00A4ED 6B 89            [ 1]  583 	ld	(0x89, sp), a
      00A4EF A6 20            [ 1]  584 	ld	a, #0x20
      00A4F1 6B 8A            [ 1]  585 	ld	(0x8a, sp), a
      00A4F3 A6 22            [ 1]  586 	ld	a, #0x22
      00A4F5 6B 8B            [ 1]  587 	ld	(0x8b, sp), a
      00A4F7 A6 76            [ 1]  588 	ld	a, #0x76
      00A4F9 6B 8C            [ 1]  589 	ld	(0x8c, sp), a
      00A4FB A6 61            [ 1]  590 	ld	a, #0x61
      00A4FD 6B 8D            [ 1]  591 	ld	(0x8d, sp), a
      00A4FF A6 6C            [ 1]  592 	ld	a, #0x6c
      00A501 6B 8E            [ 1]  593 	ld	(0x8e, sp), a
      00A503 A6 75            [ 1]  594 	ld	a, #0x75
      00A505 6B 8F            [ 1]  595 	ld	(0x8f, sp), a
      00A507 A6 65            [ 1]  596 	ld	a, #0x65
      00A509 6B 90            [ 1]  597 	ld	(0x90, sp), a
      00A50B A6 22            [ 1]  598 	ld	a, #0x22
      00A50D 6B 91            [ 1]  599 	ld	(0x91, sp), a
      00A50F A6 3A            [ 1]  600 	ld	a, #0x3a
      00A511 6B 92            [ 1]  601 	ld	(0x92, sp), a
      00A513 A6 20            [ 1]  602 	ld	a, #0x20
      00A515 6B 93            [ 1]  603 	ld	(0x93, sp), a
      00A517 A6 22            [ 1]  604 	ld	a, #0x22
      00A519 6B 94            [ 1]  605 	ld	(0x94, sp), a
      00A51B A6 25            [ 1]  606 	ld	a, #0x25
      00A51D 6B 95            [ 1]  607 	ld	(0x95, sp), a
      00A51F A6 73            [ 1]  608 	ld	a, #0x73
      00A521 6B 96            [ 1]  609 	ld	(0x96, sp), a
      00A523 A6 22            [ 1]  610 	ld	a, #0x22
      00A525 6B 97            [ 1]  611 	ld	(0x97, sp), a
      00A527 A6 7D            [ 1]  612 	ld	a, #0x7d
      00A529 6B 98            [ 1]  613 	ld	(0x98, sp), a
      00A52B 0F 99            [ 1]  614 	clr	(0x99, sp)
                                    615 ;	src/main.c: 229: const char placeholderHumidityBME280String[] = "{\"topic\" : \"mqtt\/humidity-bme280\", \"value\": \"%s\"}";
      00A52D A6 7B            [ 1]  616 	ld	a, #0x7b
      00A52F 6B 9A            [ 1]  617 	ld	(0x9a, sp), a
      00A531 A6 22            [ 1]  618 	ld	a, #0x22
      00A533 6B 9B            [ 1]  619 	ld	(0x9b, sp), a
      00A535 A6 74            [ 1]  620 	ld	a, #0x74
      00A537 6B 9C            [ 1]  621 	ld	(0x9c, sp), a
      00A539 A6 6F            [ 1]  622 	ld	a, #0x6f
      00A53B 6B 9D            [ 1]  623 	ld	(0x9d, sp), a
      00A53D A6 70            [ 1]  624 	ld	a, #0x70
      00A53F 6B 9E            [ 1]  625 	ld	(0x9e, sp), a
      00A541 A6 69            [ 1]  626 	ld	a, #0x69
      00A543 6B 9F            [ 1]  627 	ld	(0x9f, sp), a
      00A545 A6 63            [ 1]  628 	ld	a, #0x63
      00A547 6B A0            [ 1]  629 	ld	(0xa0, sp), a
      00A549 A6 22            [ 1]  630 	ld	a, #0x22
      00A54B 6B A1            [ 1]  631 	ld	(0xa1, sp), a
      00A54D A6 20            [ 1]  632 	ld	a, #0x20
      00A54F 6B A2            [ 1]  633 	ld	(0xa2, sp), a
      00A551 A6 3A            [ 1]  634 	ld	a, #0x3a
      00A553 6B A3            [ 1]  635 	ld	(0xa3, sp), a
      00A555 A6 20            [ 1]  636 	ld	a, #0x20
      00A557 6B A4            [ 1]  637 	ld	(0xa4, sp), a
      00A559 A6 22            [ 1]  638 	ld	a, #0x22
      00A55B 6B A5            [ 1]  639 	ld	(0xa5, sp), a
      00A55D A6 6D            [ 1]  640 	ld	a, #0x6d
      00A55F 6B A6            [ 1]  641 	ld	(0xa6, sp), a
      00A561 A6 71            [ 1]  642 	ld	a, #0x71
      00A563 6B A7            [ 1]  643 	ld	(0xa7, sp), a
      00A565 A6 74            [ 1]  644 	ld	a, #0x74
      00A567 6B A8            [ 1]  645 	ld	(0xa8, sp), a
      00A569 6B A9            [ 1]  646 	ld	(0xa9, sp), a
      00A56B A6 2F            [ 1]  647 	ld	a, #0x2f
      00A56D 6B AA            [ 1]  648 	ld	(0xaa, sp), a
      00A56F A6 68            [ 1]  649 	ld	a, #0x68
      00A571 6B AB            [ 1]  650 	ld	(0xab, sp), a
      00A573 A6 75            [ 1]  651 	ld	a, #0x75
      00A575 6B AC            [ 1]  652 	ld	(0xac, sp), a
      00A577 A6 6D            [ 1]  653 	ld	a, #0x6d
      00A579 6B AD            [ 1]  654 	ld	(0xad, sp), a
      00A57B A6 69            [ 1]  655 	ld	a, #0x69
      00A57D 6B AE            [ 1]  656 	ld	(0xae, sp), a
      00A57F A6 64            [ 1]  657 	ld	a, #0x64
      00A581 6B AF            [ 1]  658 	ld	(0xaf, sp), a
      00A583 A6 69            [ 1]  659 	ld	a, #0x69
      00A585 6B B0            [ 1]  660 	ld	(0xb0, sp), a
      00A587 A6 74            [ 1]  661 	ld	a, #0x74
      00A589 6B B1            [ 1]  662 	ld	(0xb1, sp), a
      00A58B A6 79            [ 1]  663 	ld	a, #0x79
      00A58D 6B B2            [ 1]  664 	ld	(0xb2, sp), a
      00A58F A6 2D            [ 1]  665 	ld	a, #0x2d
      00A591 6B B3            [ 1]  666 	ld	(0xb3, sp), a
      00A593 A6 62            [ 1]  667 	ld	a, #0x62
      00A595 6B B4            [ 1]  668 	ld	(0xb4, sp), a
      00A597 A6 6D            [ 1]  669 	ld	a, #0x6d
      00A599 6B B5            [ 1]  670 	ld	(0xb5, sp), a
      00A59B A6 65            [ 1]  671 	ld	a, #0x65
      00A59D 6B B6            [ 1]  672 	ld	(0xb6, sp), a
      00A59F A6 32            [ 1]  673 	ld	a, #0x32
      00A5A1 6B B7            [ 1]  674 	ld	(0xb7, sp), a
      00A5A3 A6 38            [ 1]  675 	ld	a, #0x38
      00A5A5 6B B8            [ 1]  676 	ld	(0xb8, sp), a
      00A5A7 A6 30            [ 1]  677 	ld	a, #0x30
      00A5A9 6B B9            [ 1]  678 	ld	(0xb9, sp), a
      00A5AB A6 22            [ 1]  679 	ld	a, #0x22
      00A5AD 6B BA            [ 1]  680 	ld	(0xba, sp), a
      00A5AF A6 2C            [ 1]  681 	ld	a, #0x2c
      00A5B1 6B BB            [ 1]  682 	ld	(0xbb, sp), a
      00A5B3 A6 20            [ 1]  683 	ld	a, #0x20
      00A5B5 6B BC            [ 1]  684 	ld	(0xbc, sp), a
      00A5B7 A6 22            [ 1]  685 	ld	a, #0x22
      00A5B9 6B BD            [ 1]  686 	ld	(0xbd, sp), a
      00A5BB A6 76            [ 1]  687 	ld	a, #0x76
      00A5BD 6B BE            [ 1]  688 	ld	(0xbe, sp), a
      00A5BF A6 61            [ 1]  689 	ld	a, #0x61
      00A5C1 6B BF            [ 1]  690 	ld	(0xbf, sp), a
      00A5C3 A6 6C            [ 1]  691 	ld	a, #0x6c
      00A5C5 6B C0            [ 1]  692 	ld	(0xc0, sp), a
      00A5C7 A6 75            [ 1]  693 	ld	a, #0x75
      00A5C9 6B C1            [ 1]  694 	ld	(0xc1, sp), a
      00A5CB A6 65            [ 1]  695 	ld	a, #0x65
      00A5CD 6B C2            [ 1]  696 	ld	(0xc2, sp), a
      00A5CF A6 22            [ 1]  697 	ld	a, #0x22
      00A5D1 6B C3            [ 1]  698 	ld	(0xc3, sp), a
      00A5D3 A6 3A            [ 1]  699 	ld	a, #0x3a
      00A5D5 6B C4            [ 1]  700 	ld	(0xc4, sp), a
      00A5D7 A6 20            [ 1]  701 	ld	a, #0x20
      00A5D9 6B C5            [ 1]  702 	ld	(0xc5, sp), a
      00A5DB A6 22            [ 1]  703 	ld	a, #0x22
      00A5DD 6B C6            [ 1]  704 	ld	(0xc6, sp), a
      00A5DF A6 25            [ 1]  705 	ld	a, #0x25
      00A5E1 6B C7            [ 1]  706 	ld	(0xc7, sp), a
      00A5E3 A6 73            [ 1]  707 	ld	a, #0x73
      00A5E5 6B C8            [ 1]  708 	ld	(0xc8, sp), a
      00A5E7 A6 22            [ 1]  709 	ld	a, #0x22
      00A5E9 6B C9            [ 1]  710 	ld	(0xc9, sp), a
      00A5EB A6 7D            [ 1]  711 	ld	a, #0x7d
      00A5ED 6B CA            [ 1]  712 	ld	(0xca, sp), a
      00A5EF 0F CB            [ 1]  713 	clr	(0xcb, sp)
                                    714 ;	src/main.c: 230: const char placeholderTemperatureBME280String[] = "{\"topic\" : \"mqtt\/temperature-bme280\", \"value\": \"%s\"}";
      00A5F1 A6 7B            [ 1]  715 	ld	a, #0x7b
      00A5F3 6B CC            [ 1]  716 	ld	(0xcc, sp), a
      00A5F5 A6 22            [ 1]  717 	ld	a, #0x22
      00A5F7 6B CD            [ 1]  718 	ld	(0xcd, sp), a
      00A5F9 A6 74            [ 1]  719 	ld	a, #0x74
      00A5FB 6B CE            [ 1]  720 	ld	(0xce, sp), a
      00A5FD A6 6F            [ 1]  721 	ld	a, #0x6f
      00A5FF 6B CF            [ 1]  722 	ld	(0xcf, sp), a
      00A601 A6 70            [ 1]  723 	ld	a, #0x70
      00A603 6B D0            [ 1]  724 	ld	(0xd0, sp), a
      00A605 A6 69            [ 1]  725 	ld	a, #0x69
      00A607 6B D1            [ 1]  726 	ld	(0xd1, sp), a
      00A609 A6 63            [ 1]  727 	ld	a, #0x63
      00A60B 6B D2            [ 1]  728 	ld	(0xd2, sp), a
      00A60D A6 22            [ 1]  729 	ld	a, #0x22
      00A60F 6B D3            [ 1]  730 	ld	(0xd3, sp), a
      00A611 A6 20            [ 1]  731 	ld	a, #0x20
      00A613 6B D4            [ 1]  732 	ld	(0xd4, sp), a
      00A615 A6 3A            [ 1]  733 	ld	a, #0x3a
      00A617 6B D5            [ 1]  734 	ld	(0xd5, sp), a
      00A619 A6 20            [ 1]  735 	ld	a, #0x20
      00A61B 6B D6            [ 1]  736 	ld	(0xd6, sp), a
      00A61D A6 22            [ 1]  737 	ld	a, #0x22
      00A61F 6B D7            [ 1]  738 	ld	(0xd7, sp), a
      00A621 A6 6D            [ 1]  739 	ld	a, #0x6d
      00A623 6B D8            [ 1]  740 	ld	(0xd8, sp), a
      00A625 A6 71            [ 1]  741 	ld	a, #0x71
      00A627 6B D9            [ 1]  742 	ld	(0xd9, sp), a
      00A629 A6 74            [ 1]  743 	ld	a, #0x74
      00A62B 6B DA            [ 1]  744 	ld	(0xda, sp), a
      00A62D 6B DB            [ 1]  745 	ld	(0xdb, sp), a
      00A62F A6 2F            [ 1]  746 	ld	a, #0x2f
      00A631 6B DC            [ 1]  747 	ld	(0xdc, sp), a
      00A633 A6 74            [ 1]  748 	ld	a, #0x74
      00A635 6B DD            [ 1]  749 	ld	(0xdd, sp), a
      00A637 A6 65            [ 1]  750 	ld	a, #0x65
      00A639 6B DE            [ 1]  751 	ld	(0xde, sp), a
      00A63B A6 6D            [ 1]  752 	ld	a, #0x6d
      00A63D 6B DF            [ 1]  753 	ld	(0xdf, sp), a
      00A63F A6 70            [ 1]  754 	ld	a, #0x70
      00A641 6B E0            [ 1]  755 	ld	(0xe0, sp), a
      00A643 A6 65            [ 1]  756 	ld	a, #0x65
      00A645 6B E1            [ 1]  757 	ld	(0xe1, sp), a
      00A647 A6 72            [ 1]  758 	ld	a, #0x72
      00A649 6B E2            [ 1]  759 	ld	(0xe2, sp), a
      00A64B A6 61            [ 1]  760 	ld	a, #0x61
      00A64D 6B E3            [ 1]  761 	ld	(0xe3, sp), a
      00A64F A6 74            [ 1]  762 	ld	a, #0x74
      00A651 6B E4            [ 1]  763 	ld	(0xe4, sp), a
      00A653 A6 75            [ 1]  764 	ld	a, #0x75
      00A655 6B E5            [ 1]  765 	ld	(0xe5, sp), a
      00A657 A6 72            [ 1]  766 	ld	a, #0x72
      00A659 6B E6            [ 1]  767 	ld	(0xe6, sp), a
      00A65B A6 65            [ 1]  768 	ld	a, #0x65
      00A65D 6B E7            [ 1]  769 	ld	(0xe7, sp), a
      00A65F A6 2D            [ 1]  770 	ld	a, #0x2d
      00A661 6B E8            [ 1]  771 	ld	(0xe8, sp), a
      00A663 A6 62            [ 1]  772 	ld	a, #0x62
      00A665 6B E9            [ 1]  773 	ld	(0xe9, sp), a
      00A667 A6 6D            [ 1]  774 	ld	a, #0x6d
      00A669 6B EA            [ 1]  775 	ld	(0xea, sp), a
      00A66B A6 65            [ 1]  776 	ld	a, #0x65
      00A66D 6B EB            [ 1]  777 	ld	(0xeb, sp), a
      00A66F A6 32            [ 1]  778 	ld	a, #0x32
      00A671 6B EC            [ 1]  779 	ld	(0xec, sp), a
      00A673 A6 38            [ 1]  780 	ld	a, #0x38
      00A675 6B ED            [ 1]  781 	ld	(0xed, sp), a
      00A677 A6 30            [ 1]  782 	ld	a, #0x30
      00A679 6B EE            [ 1]  783 	ld	(0xee, sp), a
      00A67B A6 22            [ 1]  784 	ld	a, #0x22
      00A67D 6B EF            [ 1]  785 	ld	(0xef, sp), a
      00A67F A6 2C            [ 1]  786 	ld	a, #0x2c
      00A681 6B F0            [ 1]  787 	ld	(0xf0, sp), a
      00A683 A6 20            [ 1]  788 	ld	a, #0x20
      00A685 6B F1            [ 1]  789 	ld	(0xf1, sp), a
      00A687 A6 22            [ 1]  790 	ld	a, #0x22
      00A689 6B F2            [ 1]  791 	ld	(0xf2, sp), a
      00A68B A6 76            [ 1]  792 	ld	a, #0x76
      00A68D 6B F3            [ 1]  793 	ld	(0xf3, sp), a
      00A68F A6 61            [ 1]  794 	ld	a, #0x61
      00A691 6B F4            [ 1]  795 	ld	(0xf4, sp), a
      00A693 A6 6C            [ 1]  796 	ld	a, #0x6c
      00A695 6B F5            [ 1]  797 	ld	(0xf5, sp), a
      00A697 A6 75            [ 1]  798 	ld	a, #0x75
      00A699 6B F6            [ 1]  799 	ld	(0xf6, sp), a
      00A69B A6 65            [ 1]  800 	ld	a, #0x65
      00A69D 6B F7            [ 1]  801 	ld	(0xf7, sp), a
      00A69F A6 22            [ 1]  802 	ld	a, #0x22
      00A6A1 6B F8            [ 1]  803 	ld	(0xf8, sp), a
      00A6A3 A6 3A            [ 1]  804 	ld	a, #0x3a
      00A6A5 6B F9            [ 1]  805 	ld	(0xf9, sp), a
      00A6A7 A6 20            [ 1]  806 	ld	a, #0x20
      00A6A9 6B FA            [ 1]  807 	ld	(0xfa, sp), a
      00A6AB A6 22            [ 1]  808 	ld	a, #0x22
      00A6AD 6B FB            [ 1]  809 	ld	(0xfb, sp), a
      00A6AF A6 25            [ 1]  810 	ld	a, #0x25
      00A6B1 6B FC            [ 1]  811 	ld	(0xfc, sp), a
      00A6B3 A6 73            [ 1]  812 	ld	a, #0x73
      00A6B5 6B FD            [ 1]  813 	ld	(0xfd, sp), a
      00A6B7 A6 22            [ 1]  814 	ld	a, #0x22
      00A6B9 6B FE            [ 1]  815 	ld	(0xfe, sp), a
      00A6BB A6 7D            [ 1]  816 	ld	a, #0x7d
      00A6BD 6B FF            [ 1]  817 	ld	(0xff, sp), a
      00A6BF 90 6F 0B         [ 1]  818 	clr	(0xb, y)
                                    819 ;	src/main.c: 233: LED_ON;
      00A6C2 90 89            [ 2]  820 	pushw	y
      00A6C4 A6 20            [ 1]  821 	ld	a, #0x20
      00A6C6 AE 50 14         [ 2]  822 	ldw	x, #0x5014
      00A6C9 CD 8A 15         [ 4]  823 	call	_GPIO_WriteLow
      00A6CC CD 9C 4C         [ 4]  824 	call	_DS18X20_Reset
      00A6CF AE 07 D0         [ 2]  825 	ldw	x, #0x07d0
      00A6D2 CD 9C 3C         [ 4]  826 	call	_delay_ms
      00A6D5 AE 00 22         [ 2]  827 	ldw	x, #(_iDS18X20RomID+0)
      00A6D8 CD 9D 38         [ 4]  828 	call	_DS18X20_Read_ID
      00A6DB 90 85            [ 2]  829 	popw	y
      00A6DD 4D               [ 1]  830 	tnz	a
      00A6DE 26 0E            [ 1]  831 	jrne	00103$
                                    832 ;	src/main.c: 241: for (uint8_t i = 0; i < 8; i++) {
      00A6E0 4F               [ 1]  833 	clr	a
      00A6E1                        834 00114$:
      00A6E1 A1 08            [ 1]  835 	cp	a, #0x08
      00A6E3 24 09            [ 1]  836 	jrnc	00103$
                                    837 ;	src/main.c: 242: iDS18X20RomID[i] = 0;
      00A6E5 5F               [ 1]  838 	clrw	x
      00A6E6 97               [ 1]  839 	ld	xl, a
      00A6E7 1C 00 22         [ 2]  840 	addw	x, #(_iDS18X20RomID+0)
      00A6EA 7F               [ 1]  841 	clr	(x)
                                    842 ;	src/main.c: 241: for (uint8_t i = 0; i < 8; i++) {
      00A6EB 4C               [ 1]  843 	inc	a
      00A6EC 20 F3            [ 2]  844 	jra	00114$
      00A6EE                        845 00103$:
                                    846 ;	src/main.c: 257: fDS18X20Temperature = DS18X20_Get_Temperature();
      00A6EE 90 89            [ 2]  847 	pushw	y
      00A6F0 CD 9D 84         [ 4]  848 	call	_DS18X20_Get_Temperature
      00A6F3 90 89            [ 2]  849 	pushw	y
      00A6F5 16 03            [ 2]  850 	ldw	y, (3, sp)
      00A6F7 7B 02            [ 1]  851 	ld	a, (2, sp)
      00A6F9 90 E7 0D         [ 1]  852 	ld	(0xd, y), a
      00A6FC 7B 01            [ 1]  853 	ld	a, (1, sp)
      00A6FE 90 E7 0C         [ 1]  854 	ld	(0xc, y), a
      00A701 5B 04            [ 2]  855 	addw	sp, #4
      00A703 CF 05 00         [ 2]  856 	ldw	_fDS18X20Temperature+2, x
      00A706 90 E6 0D         [ 1]  857 	ld	a, (0xd, y)
      00A709 C7 04 FF         [ 1]  858 	ld	_fDS18X20Temperature+1, a
      00A70C 90 E6 0C         [ 1]  859 	ld	a, (0xc, y)
      00A70F C7 04 FE         [ 1]  860 	ld	_fDS18X20Temperature+0, a
                                    861 ;	src/main.c: 269: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00A712 90 89            [ 2]  862 	pushw	y
      00A714 AE 00 05         [ 2]  863 	ldw	x, #0x0005
      00A717 CD AE 2C         [ 4]  864 	call	_malloc
      00A71A 90 85            [ 2]  865 	popw	y
      00A71C 90 EF 0C         [ 2]  866 	ldw	(0xc, y), x
                                    867 ;	src/main.c: 270: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00A71F 90 89            [ 2]  868 	pushw	y
      00A721 AE 00 39         [ 2]  869 	ldw	x, #0x0039
      00A724 CD AE 2C         [ 4]  870 	call	_malloc
      00A727 90 85            [ 2]  871 	popw	y
      00A729 90 EF 0E         [ 2]  872 	ldw	(0xe, y), x
                                    873 ;	src/main.c: 272: FloatToStr(stringValue, fDS18X20Temperature, integer_bit, decimal_bit);
      00A72C 90 89            [ 2]  874 	pushw	y
      00A72E 4B 02            [ 1]  875 	push	#0x02
      00A730 4B 02            [ 1]  876 	push	#0x02
      00A732 CE 05 00         [ 2]  877 	ldw	x, _fDS18X20Temperature+2
      00A735 89               [ 2]  878 	pushw	x
      00A736 CE 04 FE         [ 2]  879 	ldw	x, _fDS18X20Temperature+0
      00A739 89               [ 2]  880 	pushw	x
      00A73A 93               [ 1]  881 	ldw	x, y
      00A73B EE 0C            [ 2]  882 	ldw	x, (0xc, x)
      00A73D CD A8 C0         [ 4]  883 	call	_FloatToStr
      00A740 90 85            [ 2]  884 	popw	y
                                    885 ;	src/main.c: 274: sprintf(stringSendUART, placeholderDS18X20String, stringValue);
      00A742 90 89            [ 2]  886 	pushw	y
      00A744 93               [ 1]  887 	ldw	x, y
      00A745 EE 0C            [ 2]  888 	ldw	x, (0xc, x)
      00A747 89               [ 2]  889 	pushw	x
      00A748 96               [ 1]  890 	ldw	x, sp
      00A749 1C 00 05         [ 2]  891 	addw	x, #5
      00A74C 89               [ 2]  892 	pushw	x
      00A74D 93               [ 1]  893 	ldw	x, y
      00A74E EE 0E            [ 2]  894 	ldw	x, (0xe, x)
      00A750 89               [ 2]  895 	pushw	x
      00A751 CD B1 0E         [ 4]  896 	call	_sprintf
      00A754 5B 06            [ 2]  897 	addw	sp, #6
      00A756 90 85            [ 2]  898 	popw	y
                                    899 ;	src/main.c: 275: printf("%s\r\n", stringSendUART);
      00A758 90 89            [ 2]  900 	pushw	y
      00A75A 93               [ 1]  901 	ldw	x, y
      00A75B EE 0E            [ 2]  902 	ldw	x, (0xe, x)
      00A75D 89               [ 2]  903 	pushw	x
      00A75E 4B 64            [ 1]  904 	push	#<(___str_5+0)
      00A760 4B 82            [ 1]  905 	push	#((___str_5+0) >> 8)
      00A762 CD B1 D2         [ 4]  906 	call	_printf
      00A765 5B 04            [ 2]  907 	addw	sp, #4
      00A767 90 85            [ 2]  908 	popw	y
                                    909 ;	src/main.c: 277: free(stringSendUART);
      00A769 93               [ 1]  910 	ldw	x, y
      00A76A EE 0E            [ 2]  911 	ldw	x, (0xe, x)
      00A76C 90 89            [ 2]  912 	pushw	y
      00A76E CD AA 9A         [ 4]  913 	call	_free
      00A771 90 85            [ 2]  914 	popw	y
                                    915 ;	src/main.c: 278: free(stringValue);
      00A773 93               [ 1]  916 	ldw	x, y
      00A774 EE 0C            [ 2]  917 	ldw	x, (0xc, x)
      00A776 90 89            [ 2]  918 	pushw	y
      00A778 CD AA 9A         [ 4]  919 	call	_free
      00A77B AE 13 88         [ 2]  920 	ldw	x, #0x1388
      00A77E CD 9C 3C         [ 4]  921 	call	_delay_ms
      00A781 A6 D0            [ 1]  922 	ld	a, #0xd0
      00A783 CD 9A 18         [ 4]  923 	call	_BME280_ReadReg
      00A786 90 85            [ 2]  924 	popw	y
                                    925 ;	src/main.c: 351: if (res != BME280_ID) {
      00A788 A1 60            [ 1]  926 	cp	a, #0x60
      00A78A 27 0A            [ 1]  927 	jreq	00105$
                                    928 ;	src/main.c: 352: Error();
      00A78C 90 89            [ 2]  929 	pushw	y
      00A78E CD 99 F3         [ 4]  930 	call	_Error
      00A791 90 85            [ 2]  931 	popw	y
                                    932 ;	src/main.c: 353: return;
      00A793 CC A8 BB         [ 2]  933 	jp	00119$
      00A796                        934 00105$:
                                    935 ;	src/main.c: 364: BME280_WriteReg(BME280_REG_SOFTRESET,BME280_SOFTRESET_VALUE);
      00A796 90 89            [ 2]  936 	pushw	y
      00A798 4B B6            [ 1]  937 	push	#0xb6
      00A79A A6 E0            [ 1]  938 	ld	a, #0xe0
      00A79C CD 9A 03         [ 4]  939 	call	_BME280_WriteReg
      00A79F 90 85            [ 2]  940 	popw	y
                                    941 ;	src/main.c: 365: while (BME280_ReadStatus() & BME280_STATUS_IM_UPDATE);
      00A7A1                        942 00106$:
      00A7A1 90 89            [ 2]  943 	pushw	y
      00A7A3 CD 9A 9E         [ 4]  944 	call	_BME280_ReadStatus
      00A7A6 90 85            [ 2]  945 	popw	y
      00A7A8 44               [ 1]  946 	srl	a
      00A7A9 25 F6            [ 1]  947 	jrc	00106$
                                    948 ;	src/main.c: 428: fBME280Humidity = 50;
      00A7AB 5F               [ 1]  949 	clrw	x
      00A7AC CF 05 0C         [ 2]  950 	ldw	_fBME280Humidity+2, x
      00A7AF AE 42 48         [ 2]  951 	ldw	x, #0x4248
      00A7B2 CF 05 0A         [ 2]  952 	ldw	_fBME280Humidity+0, x
                                    953 ;	src/main.c: 429: fBME280Temperature = -11.7;
      00A7B5 AE 33 33         [ 2]  954 	ldw	x, #0x3333
      00A7B8 CF 05 10         [ 2]  955 	ldw	_fBME280Temperature+2, x
      00A7BB AE C1 3B         [ 2]  956 	ldw	x, #0xc13b
      00A7BE CF 05 0E         [ 2]  957 	ldw	_fBME280Temperature+0, x
                                    958 ;	src/main.c: 436: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00A7C1 90 89            [ 2]  959 	pushw	y
      00A7C3 AE 00 05         [ 2]  960 	ldw	x, #0x0005
      00A7C6 CD AE 2C         [ 4]  961 	call	_malloc
      00A7C9 90 85            [ 2]  962 	popw	y
      00A7CB 90 EF 0C         [ 2]  963 	ldw	(0xc, y), x
                                    964 ;	src/main.c: 437: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00A7CE 90 89            [ 2]  965 	pushw	y
      00A7D0 AE 00 37         [ 2]  966 	ldw	x, #0x0037
      00A7D3 CD AE 2C         [ 4]  967 	call	_malloc
      00A7D6 90 85            [ 2]  968 	popw	y
      00A7D8 90 EF 0E         [ 2]  969 	ldw	(0xe, y), x
                                    970 ;	src/main.c: 439: FloatToStr(stringValue, fBME280Humidity, integer_bit, decimal_bit);
      00A7DB 90 89            [ 2]  971 	pushw	y
      00A7DD 4B 02            [ 1]  972 	push	#0x02
      00A7DF 4B 02            [ 1]  973 	push	#0x02
      00A7E1 CE 05 0C         [ 2]  974 	ldw	x, _fBME280Humidity+2
      00A7E4 89               [ 2]  975 	pushw	x
      00A7E5 CE 05 0A         [ 2]  976 	ldw	x, _fBME280Humidity+0
      00A7E8 89               [ 2]  977 	pushw	x
      00A7E9 93               [ 1]  978 	ldw	x, y
      00A7EA EE 0C            [ 2]  979 	ldw	x, (0xc, x)
      00A7EC CD A8 C0         [ 4]  980 	call	_FloatToStr
      00A7EF 90 85            [ 2]  981 	popw	y
                                    982 ;	src/main.c: 441: sprintf(stringSendUART, placeholderHumidityBME280String, stringValue);
      00A7F1 90 89            [ 2]  983 	pushw	y
      00A7F3 93               [ 1]  984 	ldw	x, y
      00A7F4 EE 0C            [ 2]  985 	ldw	x, (0xc, x)
      00A7F6 89               [ 2]  986 	pushw	x
      00A7F7 96               [ 1]  987 	ldw	x, sp
      00A7F8 1C 00 9E         [ 2]  988 	addw	x, #158
      00A7FB 89               [ 2]  989 	pushw	x
      00A7FC 93               [ 1]  990 	ldw	x, y
      00A7FD EE 0E            [ 2]  991 	ldw	x, (0xe, x)
      00A7FF 89               [ 2]  992 	pushw	x
      00A800 CD B1 0E         [ 4]  993 	call	_sprintf
      00A803 5B 06            [ 2]  994 	addw	sp, #6
      00A805 90 85            [ 2]  995 	popw	y
                                    996 ;	src/main.c: 442: printf("%s\r\n", stringSendUART);
      00A807 90 89            [ 2]  997 	pushw	y
      00A809 93               [ 1]  998 	ldw	x, y
      00A80A EE 0E            [ 2]  999 	ldw	x, (0xe, x)
      00A80C 89               [ 2] 1000 	pushw	x
      00A80D 4B 64            [ 1] 1001 	push	#<(___str_5+0)
      00A80F 4B 82            [ 1] 1002 	push	#((___str_5+0) >> 8)
      00A811 CD B1 D2         [ 4] 1003 	call	_printf
      00A814 5B 04            [ 2] 1004 	addw	sp, #4
      00A816 90 85            [ 2] 1005 	popw	y
                                   1006 ;	src/main.c: 444: free(stringSendUART);
      00A818 93               [ 1] 1007 	ldw	x, y
      00A819 EE 0E            [ 2] 1008 	ldw	x, (0xe, x)
      00A81B 90 89            [ 2] 1009 	pushw	y
      00A81D CD AA 9A         [ 4] 1010 	call	_free
      00A820 90 85            [ 2] 1011 	popw	y
                                   1012 ;	src/main.c: 445: free(stringValue);
      00A822 93               [ 1] 1013 	ldw	x, y
      00A823 EE 0C            [ 2] 1014 	ldw	x, (0xc, x)
      00A825 90 89            [ 2] 1015 	pushw	y
      00A827 CD AA 9A         [ 4] 1016 	call	_free
      00A82A AE 13 88         [ 2] 1017 	ldw	x, #0x1388
      00A82D CD 9C 3C         [ 4] 1018 	call	_delay_ms
      00A830 AE 00 08         [ 2] 1019 	ldw	x, #0x0008
      00A833 CD AE 2C         [ 4] 1020 	call	_malloc
      00A836 90 85            [ 2] 1021 	popw	y
      00A838 90 EF 0C         [ 2] 1022 	ldw	(0xc, y), x
                                   1023 ;	src/main.c: 456: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00A83B 90 89            [ 2] 1024 	pushw	y
      00A83D AE 00 3D         [ 2] 1025 	ldw	x, #0x003d
      00A840 CD AE 2C         [ 4] 1026 	call	_malloc
      00A843 90 85            [ 2] 1027 	popw	y
      00A845 90 EF 0E         [ 2] 1028 	ldw	(0xe, y), x
                                   1029 ;	src/main.c: 458: FloatToStr(stringValue, fBME280Temperature, integer_bit, decimal_bit);
      00A848 90 89            [ 2] 1030 	pushw	y
      00A84A 4B 02            [ 1] 1031 	push	#0x02
      00A84C 4B 05            [ 1] 1032 	push	#0x05
      00A84E CE 05 10         [ 2] 1033 	ldw	x, _fBME280Temperature+2
      00A851 89               [ 2] 1034 	pushw	x
      00A852 CE 05 0E         [ 2] 1035 	ldw	x, _fBME280Temperature+0
      00A855 89               [ 2] 1036 	pushw	x
      00A856 93               [ 1] 1037 	ldw	x, y
      00A857 EE 0C            [ 2] 1038 	ldw	x, (0xc, x)
      00A859 CD A8 C0         [ 4] 1039 	call	_FloatToStr
      00A85C 90 85            [ 2] 1040 	popw	y
                                   1041 ;	src/main.c: 460: sprintf(stringSendUART, placeholderTemperatureBME280String, stringValue);
      00A85E 90 89            [ 2] 1042 	pushw	y
      00A860 93               [ 1] 1043 	ldw	x, y
      00A861 EE 0C            [ 2] 1044 	ldw	x, (0xc, x)
      00A863 89               [ 2] 1045 	pushw	x
      00A864 96               [ 1] 1046 	ldw	x, sp
      00A865 1C 00 D0         [ 2] 1047 	addw	x, #208
      00A868 89               [ 2] 1048 	pushw	x
      00A869 93               [ 1] 1049 	ldw	x, y
      00A86A EE 0E            [ 2] 1050 	ldw	x, (0xe, x)
      00A86C 89               [ 2] 1051 	pushw	x
      00A86D CD B1 0E         [ 4] 1052 	call	_sprintf
      00A870 5B 06            [ 2] 1053 	addw	sp, #6
      00A872 90 85            [ 2] 1054 	popw	y
                                   1055 ;	src/main.c: 461: printf("%s\r\n", stringSendUART);
      00A874 90 89            [ 2] 1056 	pushw	y
      00A876 93               [ 1] 1057 	ldw	x, y
      00A877 EE 0E            [ 2] 1058 	ldw	x, (0xe, x)
      00A879 89               [ 2] 1059 	pushw	x
      00A87A 4B 64            [ 1] 1060 	push	#<(___str_5+0)
      00A87C 4B 82            [ 1] 1061 	push	#((___str_5+0) >> 8)
      00A87E CD B1 D2         [ 4] 1062 	call	_printf
      00A881 5B 04            [ 2] 1063 	addw	sp, #4
      00A883 90 85            [ 2] 1064 	popw	y
                                   1065 ;	src/main.c: 463: free(stringSendUART);
      00A885 93               [ 1] 1066 	ldw	x, y
      00A886 EE 0E            [ 2] 1067 	ldw	x, (0xe, x)
      00A888 90 89            [ 2] 1068 	pushw	y
      00A88A CD AA 9A         [ 4] 1069 	call	_free
      00A88D 90 85            [ 2] 1070 	popw	y
                                   1071 ;	src/main.c: 464: free(stringValue);
      00A88F 93               [ 1] 1072 	ldw	x, y
      00A890 EE 0C            [ 2] 1073 	ldw	x, (0xc, x)
      00A892 90 89            [ 2] 1074 	pushw	y
      00A894 CD AA 9A         [ 4] 1075 	call	_free
      00A897 90 85            [ 2] 1076 	popw	y
                                   1077 ;	src/main.c: 474: for (uint8_t i = 0; i < 9; i++) {
      00A899 4F               [ 1] 1078 	clr	a
      00A89A                       1079 00117$:
      00A89A A1 09            [ 1] 1080 	cp	a, #0x09
      00A89C 24 0E            [ 1] 1081 	jrnc	00109$
                                   1082 ;	src/main.c: 475: delay_ms(65535);
      00A89E 88               [ 1] 1083 	push	a
      00A89F 90 89            [ 2] 1084 	pushw	y
      00A8A1 5F               [ 1] 1085 	clrw	x
      00A8A2 5A               [ 2] 1086 	decw	x
      00A8A3 CD 9C 3C         [ 4] 1087 	call	_delay_ms
      00A8A6 90 85            [ 2] 1088 	popw	y
      00A8A8 84               [ 1] 1089 	pop	a
                                   1090 ;	src/main.c: 474: for (uint8_t i = 0; i < 9; i++) {
      00A8A9 4C               [ 1] 1091 	inc	a
      00A8AA 20 EE            [ 2] 1092 	jra	00117$
      00A8AC                       1093 00109$:
                                   1094 ;	src/main.c: 479: LED_OFF;
      00A8AC 90 89            [ 2] 1095 	pushw	y
      00A8AE A6 20            [ 1] 1096 	ld	a, #0x20
      00A8B0 AE 50 14         [ 2] 1097 	ldw	x, #0x5014
      00A8B3 CD 8A 0C         [ 4] 1098 	call	_GPIO_WriteHigh
      00A8B6 90 85            [ 2] 1099 	popw	y
      00A8B8 CC A2 D7         [ 2] 1100 	jp	00111$
      00A8BB                       1101 00119$:
                                   1102 ;	src/main.c: 489: }
      00A8BB 5B FF            [ 2] 1103 	addw	sp, #255
      00A8BD 5B 05            [ 2] 1104 	addw	sp, #5
      00A8BF 81               [ 4] 1105 	ret
                                   1106 ;	src/main.c: 491: void FloatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit) {
                                   1107 ;	-----------------------------------------
                                   1108 ;	 function FloatToStr
                                   1109 ;	-----------------------------------------
      00A8C0                       1110 _FloatToStr:
      00A8C0 52 17            [ 2] 1111 	sub	sp, #23
      00A8C2 1F 15            [ 2] 1112 	ldw	(0x15, sp), x
                                   1113 ;	src/main.c: 493: uint8_t minus = 0;
      00A8C4 0F 05            [ 1] 1114 	clr	(0x05, sp)
                                   1115 ;	src/main.c: 496: uint8_t trailing_zero_count = 0;
      00A8C6 0F 06            [ 1] 1116 	clr	(0x06, sp)
                                   1117 ;	src/main.c: 498: if (number < 0) {
      00A8C8 5F               [ 1] 1118 	clrw	x
      00A8C9 89               [ 2] 1119 	pushw	x
      00A8CA 5F               [ 1] 1120 	clrw	x
      00A8CB 89               [ 2] 1121 	pushw	x
      00A8CC 1E 20            [ 2] 1122 	ldw	x, (0x20, sp)
      00A8CE 89               [ 2] 1123 	pushw	x
      00A8CF 1E 20            [ 2] 1124 	ldw	x, (0x20, sp)
      00A8D1 89               [ 2] 1125 	pushw	x
      00A8D2 CD AD 86         [ 4] 1126 	call	___fslt
      00A8D5 4D               [ 1] 1127 	tnz	a
      00A8D6 27 14            [ 1] 1128 	jreq	00102$
                                   1129 ;	src/main.c: 499: str[0] = 0x2D;
      00A8D8 1E 15            [ 2] 1130 	ldw	x, (0x15, sp)
      00A8DA A6 2D            [ 1] 1131 	ld	a, #0x2d
      00A8DC F7               [ 1] 1132 	ld	(x), a
                                   1133 ;	src/main.c: 500: number *= -1;
      00A8DD 16 1C            [ 2] 1134 	ldw	y, (0x1c, sp)
      00A8DF 1E 1A            [ 2] 1135 	ldw	x, (0x1a, sp)
      00A8E1 58               [ 2] 1136 	sllw	x
      00A8E2 8C               [ 1] 1137 	ccf
      00A8E3 56               [ 2] 1138 	rrcw	x
      00A8E4 17 1C            [ 2] 1139 	ldw	(0x1c, sp), y
      00A8E6 1F 1A            [ 2] 1140 	ldw	(0x1a, sp), x
                                   1141 ;	src/main.c: 501: minus = 1;
      00A8E8 A6 01            [ 1] 1142 	ld	a, #0x01
      00A8EA 6B 05            [ 1] 1143 	ld	(0x05, sp), a
      00A8EC                       1144 00102$:
                                   1145 ;	src/main.c: 504: temp = (uint32_t)(number/1);
      00A8EC 16 1C            [ 2] 1146 	ldw	y, (0x1c, sp)
      00A8EE 17 09            [ 2] 1147 	ldw	(0x09, sp), y
      00A8F0 16 1A            [ 2] 1148 	ldw	y, (0x1a, sp)
      00A8F2 17 07            [ 2] 1149 	ldw	(0x07, sp), y
      00A8F4 1E 09            [ 2] 1150 	ldw	x, (0x09, sp)
      00A8F6 89               [ 2] 1151 	pushw	x
      00A8F7 1E 09            [ 2] 1152 	ldw	x, (0x09, sp)
      00A8F9 89               [ 2] 1153 	pushw	x
      00A8FA CD AC BF         [ 4] 1154 	call	___fs2ulong
      00A8FD 5B 04            [ 2] 1155 	addw	sp, #4
      00A8FF 1F 0F            [ 2] 1156 	ldw	(0x0f, sp), x
                                   1157 ;	src/main.c: 506: for (i = 1; i <= integer_bit; i++) {
      00A901 A6 01            [ 1] 1158 	ld	a, #0x01
      00A903 6B 17            [ 1] 1159 	ld	(0x17, sp), a
      00A905                       1160 00114$:
                                   1161 ;	src/main.c: 508: str[integer_bit - i + minus] = table[0];
      00A905 7B 1E            [ 1] 1162 	ld	a, (0x1e, sp)
      00A907 6B 12            [ 1] 1163 	ld	(0x12, sp), a
      00A909 0F 11            [ 1] 1164 	clr	(0x11, sp)
      00A90B 7B 05            [ 1] 1165 	ld	a, (0x05, sp)
      00A90D 6B 0C            [ 1] 1166 	ld	(0x0c, sp), a
      00A90F 0F 0B            [ 1] 1167 	clr	(0x0b, sp)
                                   1168 ;	src/main.c: 506: for (i = 1; i <= integer_bit; i++) {
      00A911 7B 17            [ 1] 1169 	ld	a, (0x17, sp)
      00A913 11 1E            [ 1] 1170 	cp	a, (0x1e, sp)
      00A915 22 3D            [ 1] 1171 	jrugt	00106$
                                   1172 ;	src/main.c: 508: str[integer_bit - i + minus] = table[0];
      00A917 5F               [ 1] 1173 	clrw	x
      00A918 7B 17            [ 1] 1174 	ld	a, (0x17, sp)
      00A91A 97               [ 1] 1175 	ld	xl, a
                                   1176 ;	src/main.c: 510: str[integer_bit - i + minus] = table[temp%10];
      00A91B 16 0F            [ 2] 1177 	ldw	y, (0x0f, sp)
      00A91D 17 13            [ 2] 1178 	ldw	(0x13, sp), y
                                   1179 ;	src/main.c: 508: str[integer_bit - i + minus] = table[0];
      00A91F 50               [ 2] 1180 	negw	x
      00A920 72 FB 11         [ 2] 1181 	addw	x, (0x11, sp)
      00A923 72 FB 0B         [ 2] 1182 	addw	x, (0x0b, sp)
      00A926 72 FB 15         [ 2] 1183 	addw	x, (0x15, sp)
      00A929 1F 11            [ 2] 1184 	ldw	(0x11, sp), x
                                   1185 ;	src/main.c: 507: if (temp == 0) {
      00A92B 1E 0F            [ 2] 1186 	ldw	x, (0x0f, sp)
      00A92D 26 08            [ 1] 1187 	jrne	00104$
                                   1188 ;	src/main.c: 508: str[integer_bit - i + minus] = table[0];
      00A92F C6 82 5A         [ 1] 1189 	ld	a, _table+0
      00A932 1E 11            [ 2] 1190 	ldw	x, (0x11, sp)
      00A934 F7               [ 1] 1191 	ld	(x), a
      00A935 20 10            [ 2] 1192 	jra	00105$
      00A937                       1193 00104$:
                                   1194 ;	src/main.c: 510: str[integer_bit - i + minus] = table[temp%10];
      00A937 1E 13            [ 2] 1195 	ldw	x, (0x13, sp)
      00A939 90 AE 00 0A      [ 2] 1196 	ldw	y, #0x000a
      00A93D 65               [ 2] 1197 	divw	x, y
      00A93E 17 0F            [ 2] 1198 	ldw	(0x0f, sp), y
      00A940 93               [ 1] 1199 	ldw	x, y
      00A941 D6 82 5A         [ 1] 1200 	ld	a, (_table+0, x)
      00A944 1E 11            [ 2] 1201 	ldw	x, (0x11, sp)
      00A946 F7               [ 1] 1202 	ld	(x), a
      00A947                       1203 00105$:
                                   1204 ;	src/main.c: 512: temp /= 10;
      00A947 1E 13            [ 2] 1205 	ldw	x, (0x13, sp)
      00A949 90 AE 00 0A      [ 2] 1206 	ldw	y, #0x000a
      00A94D 65               [ 2] 1207 	divw	x, y
      00A94E 1F 0F            [ 2] 1208 	ldw	(0x0f, sp), x
                                   1209 ;	src/main.c: 506: for (i = 1; i <= integer_bit; i++) {
      00A950 0C 17            [ 1] 1210 	inc	(0x17, sp)
      00A952 20 B1            [ 2] 1211 	jra	00114$
      00A954                       1212 00106$:
                                   1213 ;	src/main.c: 515: for (i = 0; i < (integer_bit - 1); i++) {
      00A954 0F 17            [ 1] 1214 	clr	(0x17, sp)
      00A956                       1215 00117$:
      00A956 16 11            [ 2] 1216 	ldw	y, (0x11, sp)
      00A958 17 0D            [ 2] 1217 	ldw	(0x0d, sp), y
      00A95A 1E 11            [ 2] 1218 	ldw	x, (0x11, sp)
      00A95C 5A               [ 2] 1219 	decw	x
      00A95D 1F 13            [ 2] 1220 	ldw	(0x13, sp), x
      00A95F 5F               [ 1] 1221 	clrw	x
      00A960 7B 17            [ 1] 1222 	ld	a, (0x17, sp)
      00A962 97               [ 1] 1223 	ld	xl, a
      00A963 13 13            [ 2] 1224 	cpw	x, (0x13, sp)
      00A965 2E 11            [ 1] 1225 	jrsge	00110$
                                   1226 ;	src/main.c: 516: if (str[i + minus] == '0') {
      00A967 72 FB 0B         [ 2] 1227 	addw	x, (0x0b, sp)
      00A96A 72 FB 15         [ 2] 1228 	addw	x, (0x15, sp)
      00A96D F6               [ 1] 1229 	ld	a, (x)
      00A96E A1 30            [ 1] 1230 	cp	a, #0x30
      00A970 26 06            [ 1] 1231 	jrne	00110$
                                   1232 ;	src/main.c: 517: trailing_zero_count += 1;
      00A972 0C 06            [ 1] 1233 	inc	(0x06, sp)
                                   1234 ;	src/main.c: 515: for (i = 0; i < (integer_bit - 1); i++) {
      00A974 0C 17            [ 1] 1235 	inc	(0x17, sp)
      00A976 20 DE            [ 2] 1236 	jra	00117$
      00A978                       1237 00110$:
                                   1238 ;	src/main.c: 528: for (i = minus; i <= trailing_zero_count + minus; i++) {
      00A978 7B 05            [ 1] 1239 	ld	a, (0x05, sp)
      00A97A 6B 17            [ 1] 1240 	ld	(0x17, sp), a
      00A97C                       1241 00120$:
      00A97C 7B 06            [ 1] 1242 	ld	a, (0x06, sp)
      00A97E 6B 10            [ 1] 1243 	ld	(0x10, sp), a
      00A980 0F 0F            [ 1] 1244 	clr	(0x0f, sp)
      00A982 16 0B            [ 2] 1245 	ldw	y, (0x0b, sp)
      00A984 17 11            [ 2] 1246 	ldw	(0x11, sp), y
      00A986 1E 0F            [ 2] 1247 	ldw	x, (0x0f, sp)
      00A988 72 FB 0B         [ 2] 1248 	addw	x, (0x0b, sp)
      00A98B 7B 17            [ 1] 1249 	ld	a, (0x17, sp)
      00A98D 6B 14            [ 1] 1250 	ld	(0x14, sp), a
      00A98F 0F 13            [ 1] 1251 	clr	(0x13, sp)
      00A991 13 13            [ 2] 1252 	cpw	x, (0x13, sp)
      00A993 2F 16            [ 1] 1253 	jrslt	00111$
                                   1254 ;	src/main.c: 529: str[i] = str[i + trailing_zero_count];
      00A995 5F               [ 1] 1255 	clrw	x
      00A996 7B 17            [ 1] 1256 	ld	a, (0x17, sp)
      00A998 97               [ 1] 1257 	ld	xl, a
      00A999 72 FB 15         [ 2] 1258 	addw	x, (0x15, sp)
      00A99C 16 13            [ 2] 1259 	ldw	y, (0x13, sp)
      00A99E 72 F9 0F         [ 2] 1260 	addw	y, (0x0f, sp)
      00A9A1 72 F9 15         [ 2] 1261 	addw	y, (0x15, sp)
      00A9A4 90 F6            [ 1] 1262 	ld	a, (y)
      00A9A6 F7               [ 1] 1263 	ld	(x), a
                                   1264 ;	src/main.c: 528: for (i = minus; i <= trailing_zero_count + minus; i++) {
      00A9A7 0C 17            [ 1] 1265 	inc	(0x17, sp)
      00A9A9 20 D1            [ 2] 1266 	jra	00120$
      00A9AB                       1267 00111$:
                                   1268 ;	src/main.c: 532: *(str + integer_bit - trailing_zero_count + minus) = '.';
      00A9AB 5F               [ 1] 1269 	clrw	x
      00A9AC 7B 1E            [ 1] 1270 	ld	a, (0x1e, sp)
      00A9AE 97               [ 1] 1271 	ld	xl, a
      00A9AF 72 FB 15         [ 2] 1272 	addw	x, (0x15, sp)
      00A9B2 1F 13            [ 2] 1273 	ldw	(0x13, sp), x
      00A9B4 72 F0 0F         [ 2] 1274 	subw	x, (0x0f, sp)
      00A9B7 9F               [ 1] 1275 	ld	a, xl
      00A9B8 1B 05            [ 1] 1276 	add	a, (0x05, sp)
      00A9BA 02               [ 1] 1277 	rlwa	x
      00A9BB A9 00            [ 1] 1278 	adc	a, #0x00
      00A9BD 95               [ 1] 1279 	ld	xh, a
      00A9BE A6 2E            [ 1] 1280 	ld	a, #0x2e
      00A9C0 F7               [ 1] 1281 	ld	(x), a
                                   1282 ;	src/main.c: 534: t2 = number;
      00A9C1 16 09            [ 2] 1283 	ldw	y, (0x09, sp)
      00A9C3 17 03            [ 2] 1284 	ldw	(0x03, sp), y
      00A9C5 16 07            [ 2] 1285 	ldw	y, (0x07, sp)
      00A9C7 17 01            [ 2] 1286 	ldw	(0x01, sp), y
                                   1287 ;	src/main.c: 536: for (i = 1; i <= decimal_bit; i++) {
      00A9C9 A6 01            [ 1] 1288 	ld	a, #0x01
      00A9CB 6B 17            [ 1] 1289 	ld	(0x17, sp), a
      00A9CD                       1290 00123$:
      00A9CD 7B 17            [ 1] 1291 	ld	a, (0x17, sp)
      00A9CF 11 1F            [ 1] 1292 	cp	a, (0x1f, sp)
      00A9D1 22 46            [ 1] 1293 	jrugt	00112$
                                   1294 ;	src/main.c: 537: temp = t2 * 10;
      00A9D3 1E 03            [ 2] 1295 	ldw	x, (0x03, sp)
      00A9D5 89               [ 2] 1296 	pushw	x
      00A9D6 1E 03            [ 2] 1297 	ldw	x, (0x03, sp)
      00A9D8 89               [ 2] 1298 	pushw	x
      00A9D9 5F               [ 1] 1299 	clrw	x
      00A9DA 89               [ 2] 1300 	pushw	x
      00A9DB 4B 20            [ 1] 1301 	push	#0x20
      00A9DD 4B 41            [ 1] 1302 	push	#0x41
      00A9DF CD AB 05         [ 4] 1303 	call	___fsmul
      00A9E2 1F 0B            [ 2] 1304 	ldw	(0x0b, sp), x
      00A9E4 17 09            [ 2] 1305 	ldw	(0x09, sp), y
      00A9E6 1E 0B            [ 2] 1306 	ldw	x, (0x0b, sp)
      00A9E8 89               [ 2] 1307 	pushw	x
      00A9E9 1E 0B            [ 2] 1308 	ldw	x, (0x0b, sp)
      00A9EB 89               [ 2] 1309 	pushw	x
      00A9EC CD B1 9A         [ 4] 1310 	call	___fs2uint
      00A9EF 51               [ 1] 1311 	exgw	x, y
                                   1312 ;	src/main.c: 538: str[integer_bit + i - trailing_zero_count + minus] = table[temp%10];
      00A9F0 7B 17            [ 1] 1313 	ld	a, (0x17, sp)
      00A9F2 5F               [ 1] 1314 	clrw	x
      00A9F3 97               [ 1] 1315 	ld	xl, a
      00A9F4 72 FB 0D         [ 2] 1316 	addw	x, (0x0d, sp)
      00A9F7 72 F0 0F         [ 2] 1317 	subw	x, (0x0f, sp)
      00A9FA 72 FB 11         [ 2] 1318 	addw	x, (0x11, sp)
      00A9FD 72 FB 15         [ 2] 1319 	addw	x, (0x15, sp)
      00AA00 89               [ 2] 1320 	pushw	x
      00AA01 93               [ 1] 1321 	ldw	x, y
      00AA02 90 AE 00 0A      [ 2] 1322 	ldw	y, #0x000a
      00AA06 65               [ 2] 1323 	divw	x, y
      00AA07 85               [ 2] 1324 	popw	x
      00AA08 90 D6 82 5A      [ 1] 1325 	ld	a, (_table+0, y)
      00AA0C F7               [ 1] 1326 	ld	(x), a
                                   1327 ;	src/main.c: 539: t2 *= 10;
      00AA0D 1E 0B            [ 2] 1328 	ldw	x, (0x0b, sp)
      00AA0F 16 09            [ 2] 1329 	ldw	y, (0x09, sp)
      00AA11 1F 03            [ 2] 1330 	ldw	(0x03, sp), x
      00AA13 17 01            [ 2] 1331 	ldw	(0x01, sp), y
                                   1332 ;	src/main.c: 536: for (i = 1; i <= decimal_bit; i++) {
      00AA15 0C 17            [ 1] 1333 	inc	(0x17, sp)
      00AA17 20 B4            [ 2] 1334 	jra	00123$
      00AA19                       1335 00112$:
                                   1336 ;	src/main.c: 542: *(str + integer_bit + 1 + decimal_bit - trailing_zero_count + minus) = '\0';
      00AA19 1E 13            [ 2] 1337 	ldw	x, (0x13, sp)
      00AA1B 5C               [ 1] 1338 	incw	x
      00AA1C 9F               [ 1] 1339 	ld	a, xl
      00AA1D 1B 1F            [ 1] 1340 	add	a, (0x1f, sp)
      00AA1F 02               [ 1] 1341 	rlwa	x
      00AA20 A9 00            [ 1] 1342 	adc	a, #0x00
      00AA22 95               [ 1] 1343 	ld	xh, a
      00AA23 72 F0 0F         [ 2] 1344 	subw	x, (0x0f, sp)
      00AA26 9F               [ 1] 1345 	ld	a, xl
      00AA27 1B 05            [ 1] 1346 	add	a, (0x05, sp)
      00AA29 02               [ 1] 1347 	rlwa	x
      00AA2A A9 00            [ 1] 1348 	adc	a, #0x00
      00AA2C 95               [ 1] 1349 	ld	xh, a
      00AA2D 7F               [ 1] 1350 	clr	(x)
                                   1351 ;	src/main.c: 543: }
      00AA2E 1E 18            [ 2] 1352 	ldw	x, (24, sp)
      00AA30 5B 1F            [ 2] 1353 	addw	sp, #31
      00AA32 FC               [ 2] 1354 	jp	(x)
                                   1355 ;	src/main.c: 550: PUTCHAR_PROTOTYPE
                                   1356 ;	-----------------------------------------
                                   1357 ;	 function putchar
                                   1358 ;	-----------------------------------------
      00AA33                       1359 _putchar:
                                   1360 ;	src/main.c: 553: UART_SENDDATA8(c);
      00AA33 9F               [ 1] 1361 	ld	a, xl
      00AA34 89               [ 2] 1362 	pushw	x
      00AA35 CD 96 3F         [ 4] 1363 	call	_UART2_SendData8
      00AA38 85               [ 2] 1364 	popw	x
                                   1365 ;	src/main.c: 555: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
      00AA39                       1366 00101$:
      00AA39 89               [ 2] 1367 	pushw	x
      00AA3A AE 00 80         [ 2] 1368 	ldw	x, #0x0080
      00AA3D CD 96 92         [ 4] 1369 	call	_UART2_GetFlagStatus
      00AA40 85               [ 2] 1370 	popw	x
      00AA41 4D               [ 1] 1371 	tnz	a
      00AA42 27 F5            [ 1] 1372 	jreq	00101$
                                   1373 ;	src/main.c: 557: return (c);
                                   1374 ;	src/main.c: 558: }
      00AA44 81               [ 4] 1375 	ret
                                   1376 ;	src/main.c: 565: GETCHAR_PROTOTYPE
                                   1377 ;	-----------------------------------------
                                   1378 ;	 function getchar
                                   1379 ;	-----------------------------------------
      00AA45                       1380 _getchar:
                                   1381 ;	src/main.c: 573: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
      00AA45                       1382 00101$:
      00AA45 AE 00 80         [ 2] 1383 	ldw	x, #0x0080
      00AA48 CD 96 92         [ 4] 1384 	call	_UART2_GetFlagStatus
      00AA4B 4D               [ 1] 1385 	tnz	a
      00AA4C 27 F7            [ 1] 1386 	jreq	00101$
                                   1387 ;	src/main.c: 574: c = UART_RECEIVEDATA8();
      00AA4E CD 96 20         [ 4] 1388 	call	_UART2_ReceiveData8
      00AA51 5F               [ 1] 1389 	clrw	x
                                   1390 ;	src/main.c: 575: return (c);
      00AA52 97               [ 1] 1391 	ld	xl, a
                                   1392 ;	src/main.c: 576: }
      00AA53 81               [ 4] 1393 	ret
                                   1394 ;	src/main.c: 587: void assert_failed(uint8_t* file, uint32_t line)
                                   1395 ;	-----------------------------------------
                                   1396 ;	 function assert_failed
                                   1397 ;	-----------------------------------------
      00AA54                       1398 _assert_failed:
                                   1399 ;	src/main.c: 594: while (1)
      00AA54                       1400 00102$:
      00AA54 20 FE            [ 2] 1401 	jra	00102$
                                   1402 ;	src/main.c: 597: }
      00AA56 1E 01            [ 2] 1403 	ldw	x, (1, sp)
      00AA58 5B 06            [ 2] 1404 	addw	sp, #6
      00AA5A FC               [ 2] 1405 	jp	(x)
                                   1406 	.area CODE
                                   1407 	.area CONST
      00825A                       1408 _table:
      00825A 30                    1409 	.db #0x30	; 48	'0'
      00825B 31                    1410 	.db #0x31	; 49	'1'
      00825C 32                    1411 	.db #0x32	; 50	'2'
      00825D 33                    1412 	.db #0x33	; 51	'3'
      00825E 34                    1413 	.db #0x34	; 52	'4'
      00825F 35                    1414 	.db #0x35	; 53	'5'
      008260 36                    1415 	.db #0x36	; 54	'6'
      008261 37                    1416 	.db #0x37	; 55	'7'
      008262 38                    1417 	.db #0x38	; 56	'8'
      008263 39                    1418 	.db #0x39	; 57	'9'
                                   1419 	.area CONST
      008264                       1420 ___str_5:
      008264 25 73                 1421 	.ascii "%s"
      008266 0D                    1422 	.db 0x0d
      008267 0A                    1423 	.db 0x0a
      008268 00                    1424 	.db 0x00
                                   1425 	.area CODE
                                   1426 	.area INITIALIZER
      008274                       1427 __xinit__fDS18X20Temperature:
      008274 C2 C8 00 00           1428 	.byte #0xc2, #0xc8, #0x00, #0x00	; -1.000000e+02
      008278                       1429 __xinit__fAHTX0Humidity:
      008278 00 00 00 00           1430 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
      00827C                       1431 __xinit__fAHTX0Temperature:
      00827C 00 00 00 00           1432 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
      008280                       1433 __xinit__fBME280Humidity:
      008280 00 00 00 00           1434 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
      008284                       1435 __xinit__fBME280Temperature:
      008284 00 00 00 00           1436 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
                                   1437 	.area CABS (ABS)
