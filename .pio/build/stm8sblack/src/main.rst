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
                                     16 	.globl _BME280_ReadTemperature
                                     17 	.globl _BME280_Setup
                                     18 	.globl _DS18X20_Setup
                                     19 	.globl _DS18X20_Get_Temperature
                                     20 	.globl _DS18X20_Read_ID
                                     21 	.globl _DS18X20_Reset
                                     22 	.globl _I2C_Setup
                                     23 	.globl _delay_ms
                                     24 	.globl _free
                                     25 	.globl _malloc
                                     26 	.globl _sprintf
                                     27 	.globl _printf
                                     28 	.globl _UART2_GetFlagStatus
                                     29 	.globl _UART2_SendData8
                                     30 	.globl _UART2_ReceiveData8
                                     31 	.globl _UART2_Init
                                     32 	.globl _UART2_DeInit
                                     33 	.globl _GPIO_WriteLow
                                     34 	.globl _GPIO_WriteHigh
                                     35 	.globl _GPIO_Init
                                     36 	.globl _GPIO_DeInit
                                     37 	.globl _CLK_GetFlagStatus
                                     38 	.globl _CLK_SYSCLKConfig
                                     39 	.globl _CLK_HSIPrescalerConfig
                                     40 	.globl _CLK_ClockSwitchConfig
                                     41 	.globl _CLK_PeripheralClockConfig
                                     42 	.globl _CLK_ClockSwitchCmd
                                     43 	.globl _CLK_LSICmd
                                     44 	.globl _CLK_HSICmd
                                     45 	.globl _CLK_HSECmd
                                     46 	.globl _CLK_DeInit
                                     47 	.globl _fBME280Humidity
                                     48 	.globl _fBME280Temperature
                                     49 	.globl _fDS18X20Temperature
                                     50 	.globl _str1
                                     51 	.globl _sString
                                     52 	.globl _iI2CRead
                                     53 	.globl _iI2CWrite
                                     54 	.globl _iDS18X20RomID
                                     55 	.globl _FloatToStr
                                     56 	.globl _putchar
                                     57 	.globl _getchar
                                     58 	.globl _assert_failed
                                     59 ;--------------------------------------------------------
                                     60 ; ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area DATA
      000026                         63 _iDS18X20RomID::
      000026                         64 	.ds 8
      00002E                         65 _iI2CWrite::
      00002E                         66 	.ds 3
      000031                         67 _iI2CRead::
      000031                         68 	.ds 7
      000038                         69 _sString::
      000038                         70 	.ds 100
      00009C                         71 _str1::
      00009C                         72 	.ds 100
                                     73 ;--------------------------------------------------------
                                     74 ; ram data
                                     75 ;--------------------------------------------------------
                                     76 	.area INITIALIZED
      000502                         77 _fDS18X20Temperature::
      000502                         78 	.ds 4
      000506                         79 _fBME280Temperature::
      000506                         80 	.ds 4
      00050A                         81 _fBME280Humidity::
      00050A                         82 	.ds 4
                                     83 ;--------------------------------------------------------
                                     84 ; Stack segment in internal ram
                                     85 ;--------------------------------------------------------
                                     86 	.area	SSEG
      00BCA2                         87 __start__stack:
      00BCA2                         88 	.ds	1
                                     89 
                                     90 ;--------------------------------------------------------
                                     91 ; absolute external ram data
                                     92 ;--------------------------------------------------------
                                     93 	.area DABS (ABS)
                                     94 
                                     95 ; default segment ordering for linker
                                     96 	.area HOME
                                     97 	.area GSINIT
                                     98 	.area GSFINAL
                                     99 	.area CONST
                                    100 	.area INITIALIZER
                                    101 	.area CODE
                                    102 
                                    103 ;--------------------------------------------------------
                                    104 ; interrupt vector
                                    105 ;--------------------------------------------------------
                                    106 	.area HOME
      008000                        107 __interrupt_vect:
      008000 82 00 80 6F            108 	int s_GSINIT ; reset
      008004 82 00 AB 34            109 	int _TRAP_IRQHandler ; trap
      008008 82 00 AB 35            110 	int _TLI_IRQHandler ; int0
      00800C 82 00 AB 36            111 	int _AWU_IRQHandler ; int1
      008010 82 00 AB 37            112 	int _CLK_IRQHandler ; int2
      008014 82 00 AB 38            113 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 AB 39            114 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 AB 3A            115 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 AB 3B            116 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 AB 3C            117 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 00 00            118 	int 0x000000 ; int8
      00802C 82 00 00 00            119 	int 0x000000 ; int9
      008030 82 00 AB 3D            120 	int _SPI_IRQHandler ; int10
      008034 82 00 AB 3E            121 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 AB 3F            122 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 AB 40            123 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 AB 41            124 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 AB 42            125 	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
      008048 82 00 AB 43            126 	int _TIM3_CAP_COM_IRQHandler ; int16
      00804C 82 00 00 00            127 	int 0x000000 ; int17
      008050 82 00 00 00            128 	int 0x000000 ; int18
      008054 82 00 AB 44            129 	int _I2C_IRQHandler ; int19
      008058 82 00 AB 45            130 	int _UART2_TX_IRQHandler ; int20
      00805C 82 00 AB 46            131 	int _UART2_RX_IRQHandler ; int21
      008060 82 00 AB 47            132 	int _ADC1_IRQHandler ; int22
      008064 82 00 AB 48            133 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 AB 49            134 	int _EEPROM_EEC_IRQHandler ; int24
                                    135 ;--------------------------------------------------------
                                    136 ; global & static initialisations
                                    137 ;--------------------------------------------------------
                                    138 	.area HOME
                                    139 	.area GSINIT
                                    140 	.area GSFINAL
                                    141 	.area GSINIT
      00806F                        142 __sdcc_init_data:
                                    143 ; stm8_genXINIT() start
      00806F AE 05 01         [ 2]  144 	ldw x, #l_DATA
      008072 27 07            [ 1]  145 	jreq	00002$
      008074                        146 00001$:
      008074 72 4F 00 00      [ 1]  147 	clr (s_DATA - 1, x)
      008078 5A               [ 2]  148 	decw x
      008079 26 F9            [ 1]  149 	jrne	00001$
      00807B                        150 00002$:
      00807B AE 00 0C         [ 2]  151 	ldw	x, #l_INITIALIZER
      00807E 27 09            [ 1]  152 	jreq	00004$
      008080                        153 00003$:
      008080 D6 82 F6         [ 1]  154 	ld	a, (s_INITIALIZER - 1, x)
      008083 D7 05 01         [ 1]  155 	ld	(s_INITIALIZED - 1, x), a
      008086 5A               [ 2]  156 	decw	x
      008087 26 F7            [ 1]  157 	jrne	00003$
      008089                        158 00004$:
                                    159 ; stm8_genXINIT() end
                                    160 	.area GSFINAL
      00808C CC 80 6C         [ 2]  161 	jp	__sdcc_program_startup
                                    162 ;--------------------------------------------------------
                                    163 ; Home
                                    164 ;--------------------------------------------------------
                                    165 	.area HOME
                                    166 	.area HOME
      00806C                        167 __sdcc_program_startup:
      00806C CC A8 16         [ 2]  168 	jp	_main
                                    169 ;	return from main will return to caller
                                    170 ;--------------------------------------------------------
                                    171 ; code
                                    172 ;--------------------------------------------------------
                                    173 	.area CODE
                                    174 ;	src\main.c: 142: void Clock_Setup(void) {
                                    175 ;	-----------------------------------------
                                    176 ;	 function Clock_Setup
                                    177 ;	-----------------------------------------
      00A798                        178 _Clock_Setup:
                                    179 ;	src\main.c: 143: CLK_DeInit();
      00A798 CD 83 03         [ 4]  180 	call	_CLK_DeInit
                                    181 ;	src\main.c: 144: CLK_HSECmd(DISABLE);
      00A79B 4F               [ 1]  182 	clr	a
      00A79C CD 83 64         [ 4]  183 	call	_CLK_HSECmd
                                    184 ;	src\main.c: 145: CLK_LSICmd(DISABLE);
      00A79F 4F               [ 1]  185 	clr	a
      00A7A0 CD 83 BA         [ 4]  186 	call	_CLK_LSICmd
                                    187 ;	src\main.c: 146: CLK_HSICmd(ENABLE);
      00A7A3 A6 01            [ 1]  188 	ld	a, #0x01
      00A7A5 CD 83 8F         [ 4]  189 	call	_CLK_HSICmd
                                    190 ;	src\main.c: 147: while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
      00A7A8                        191 00101$:
      00A7A8 AE 01 02         [ 2]  192 	ldw	x, #0x0102
      00A7AB CD 88 AB         [ 4]  193 	call	_CLK_GetFlagStatus
      00A7AE 4D               [ 1]  194 	tnz	a
      00A7AF 27 F7            [ 1]  195 	jreq	00101$
                                    196 ;	src\main.c: 148: CLK_ClockSwitchCmd(ENABLE);
      00A7B1 A6 01            [ 1]  197 	ld	a, #0x01
      00A7B3 CD 84 10         [ 4]  198 	call	_CLK_ClockSwitchCmd
                                    199 ;	src\main.c: 149: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
      00A7B6 4F               [ 1]  200 	clr	a
      00A7B7 CD 86 49         [ 4]  201 	call	_CLK_HSIPrescalerConfig
                                    202 ;	src\main.c: 150: CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
      00A7BA A6 80            [ 1]  203 	ld	a, #0x80
      00A7BC CD 87 68         [ 4]  204 	call	_CLK_SYSCLKConfig
                                    205 ;	src\main.c: 151: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
      00A7BF 4B 01            [ 1]  206 	push	#0x01
      00A7C1 4B 00            [ 1]  207 	push	#0x00
      00A7C3 4B E1            [ 1]  208 	push	#0xe1
      00A7C5 A6 01            [ 1]  209 	ld	a, #0x01
      00A7C7 CD 85 31         [ 4]  210 	call	_CLK_ClockSwitchConfig
                                    211 ;	src\main.c: 153: CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
      00A7CA 4B 00            [ 1]  212 	push	#0x00
      00A7CC A6 01            [ 1]  213 	ld	a, #0x01
      00A7CE CD 84 66         [ 4]  214 	call	_CLK_PeripheralClockConfig
                                    215 ;	src\main.c: 154: CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
      00A7D1 4B 00            [ 1]  216 	push	#0x00
      00A7D3 A6 12            [ 1]  217 	ld	a, #0x12
      00A7D5 CD 84 66         [ 4]  218 	call	_CLK_PeripheralClockConfig
                                    219 ;	src\main.c: 156: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
      00A7D8 4B 00            [ 1]  220 	push	#0x00
      00A7DA A6 07            [ 1]  221 	ld	a, #0x07
      00A7DC CD 84 66         [ 4]  222 	call	_CLK_PeripheralClockConfig
                                    223 ;	src\main.c: 157: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
      00A7DF 4B 00            [ 1]  224 	push	#0x00
      00A7E1 A6 05            [ 1]  225 	ld	a, #0x05
      00A7E3 CD 84 66         [ 4]  226 	call	_CLK_PeripheralClockConfig
                                    227 ;	src\main.c: 158: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
      00A7E6 4B 00            [ 1]  228 	push	#0x00
      00A7E8 A6 04            [ 1]  229 	ld	a, #0x04
      00A7EA CD 84 66         [ 4]  230 	call	_CLK_PeripheralClockConfig
                                    231 ;	src\main.c: 159: }
      00A7ED 81               [ 4]  232 	ret
                                    233 ;	src\main.c: 161: void GPIO_Setup(void) {
                                    234 ;	-----------------------------------------
                                    235 ;	 function GPIO_Setup
                                    236 ;	-----------------------------------------
      00A7EE                        237 _GPIO_Setup:
                                    238 ;	src\main.c: 166: GPIO_DeInit(GPIOE);
      00A7EE AE 50 14         [ 2]  239 	ldw	x, #0x5014
      00A7F1 CD 89 99         [ 4]  240 	call	_GPIO_DeInit
                                    241 ;	src\main.c: 167: GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
      00A7F4 4B F0            [ 1]  242 	push	#0xf0
      00A7F6 A6 20            [ 1]  243 	ld	a, #0x20
      00A7F8 AE 50 14         [ 2]  244 	ldw	x, #0x5014
      00A7FB CD 89 A7         [ 4]  245 	call	_GPIO_Init
                                    246 ;	src\main.c: 168: }
      00A7FE 81               [ 4]  247 	ret
                                    248 ;	src\main.c: 170: void UART_Setup() {
                                    249 ;	-----------------------------------------
                                    250 ;	 function UART_Setup
                                    251 ;	-----------------------------------------
      00A7FF                        252 _UART_Setup:
                                    253 ;	src\main.c: 171: UART_DEINIT();
      00A7FF CD 91 4F         [ 4]  254 	call	_UART2_DeInit
                                    255 ;	src\main.c: 181: UART_INIT((uint32_t)9600, UART_WORDLENGTH_8D, UART_STOPBITS_1, UART_PARITY_NO, UART_SYNCMODE_CLOCK_DISABLE, UART_MODE_TXRX_ENABLE);
      00A802 4B 0C            [ 1]  256 	push	#0x0c
      00A804 4B 80            [ 1]  257 	push	#0x80
      00A806 4B 00            [ 1]  258 	push	#0x00
      00A808 4B 00            [ 1]  259 	push	#0x00
      00A80A 4B 00            [ 1]  260 	push	#0x00
      00A80C 4B 80            [ 1]  261 	push	#0x80
      00A80E 4B 25            [ 1]  262 	push	#0x25
      00A810 5F               [ 1]  263 	clrw	x
      00A811 89               [ 2]  264 	pushw	x
      00A812 CD 91 76         [ 4]  265 	call	_UART2_Init
                                    266 ;	src\main.c: 182: }
      00A815 81               [ 4]  267 	ret
                                    268 ;	src\main.c: 192: void main(void) {
                                    269 ;	-----------------------------------------
                                    270 ;	 function main
                                    271 ;	-----------------------------------------
      00A816                        272 _main:
      00A816 52 04            [ 2]  273 	sub	sp, #4
                                    274 ;	src\main.c: 193: Clock_Setup();
      00A818 CD A7 98         [ 4]  275 	call	_Clock_Setup
                                    276 ;	src\main.c: 194: GPIO_Setup();
      00A81B CD A7 EE         [ 4]  277 	call	_GPIO_Setup
                                    278 ;	src\main.c: 195: DS18X20_Setup();
      00A81E CD A3 79         [ 4]  279 	call	_DS18X20_Setup
                                    280 ;	src\main.c: 196: I2C_Setup();
      00A821 CD A3 8A         [ 4]  281 	call	_I2C_Setup
                                    282 ;	src\main.c: 197: UART_Setup();
      00A824 CD A7 FF         [ 4]  283 	call	_UART_Setup
                                    284 ;	src\main.c: 199: BME280_Setup();
      00A827 CD 9A 8D         [ 4]  285 	call	_BME280_Setup
                                    286 ;	src\main.c: 202: while (1) {
      00A82A                        287 00106$:
                                    288 ;	src\main.c: 215: LED_ON;
      00A82A A6 20            [ 1]  289 	ld	a, #0x20
      00A82C AE 50 14         [ 2]  290 	ldw	x, #0x5014
      00A82F CD 8A 8C         [ 4]  291 	call	_GPIO_WriteLow
                                    292 ;	src\main.c: 218: DS18X20_Reset();
      00A832 CD A1 BC         [ 4]  293 	call	_DS18X20_Reset
                                    294 ;	src\main.c: 220: delay_ms(2000);
      00A835 AE 07 D0         [ 2]  295 	ldw	x, #0x07d0
      00A838 CD A1 AC         [ 4]  296 	call	_delay_ms
                                    297 ;	src\main.c: 222: if (!DS18X20_Read_ID(iDS18X20RomID)) {
      00A83B AE 00 26         [ 2]  298 	ldw	x, #(_iDS18X20RomID+0)
      00A83E CD A2 A8         [ 4]  299 	call	_DS18X20_Read_ID
      00A841 4D               [ 1]  300 	tnz	a
      00A842 26 0E            [ 1]  301 	jrne	00103$
                                    302 ;	src\main.c: 223: for (uint8_t i = 0; i < 8; i++) {
      00A844 4F               [ 1]  303 	clr	a
      00A845                        304 00109$:
      00A845 A1 08            [ 1]  305 	cp	a, #0x08
      00A847 24 09            [ 1]  306 	jrnc	00103$
                                    307 ;	src\main.c: 224: iDS18X20RomID[i] = 0;
      00A849 5F               [ 1]  308 	clrw	x
      00A84A 97               [ 1]  309 	ld	xl, a
      00A84B 1C 00 26         [ 2]  310 	addw	x, #(_iDS18X20RomID+0)
      00A84E 7F               [ 1]  311 	clr	(x)
                                    312 ;	src\main.c: 223: for (uint8_t i = 0; i < 8; i++) {
      00A84F 4C               [ 1]  313 	inc	a
      00A850 20 F3            [ 2]  314 	jra	00109$
      00A852                        315 00103$:
                                    316 ;	src\main.c: 227: fDS18X20Temperature = DS18X20_Get_Temperature();
      00A852 CD A2 F4         [ 4]  317 	call	_DS18X20_Get_Temperature
      00A855 CF 05 04         [ 2]  318 	ldw	_fDS18X20Temperature+2, x
      00A858 90 CF 05 02      [ 2]  319 	ldw	_fDS18X20Temperature+0, y
                                    320 ;	src\main.c: 247: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00A85C AE 00 05         [ 2]  321 	ldw	x, #0x0005
      00A85F CD AF C9         [ 4]  322 	call	_malloc
      00A862 1F 01            [ 2]  323 	ldw	(0x01, sp), x
                                    324 ;	src\main.c: 248: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00A864 AE 00 39         [ 2]  325 	ldw	x, #0x0039
      00A867 CD AF C9         [ 4]  326 	call	_malloc
      00A86A 1F 03            [ 2]  327 	ldw	(0x03, sp), x
                                    328 ;	src\main.c: 250: FloatToStr(stringValue, fDS18X20Temperature, integer_bit, decimal_bit);
      00A86C 4B 02            [ 1]  329 	push	#0x02
      00A86E 4B 02            [ 1]  330 	push	#0x02
      00A870 CE 05 04         [ 2]  331 	ldw	x, _fDS18X20Temperature+2
      00A873 89               [ 2]  332 	pushw	x
      00A874 CE 05 02         [ 2]  333 	ldw	x, _fDS18X20Temperature+0
      00A877 89               [ 2]  334 	pushw	x
      00A878 1E 07            [ 2]  335 	ldw	x, (0x07, sp)
      00A87A CD A9 98         [ 4]  336 	call	_FloatToStr
                                    337 ;	src\main.c: 252: sprintf(stringSendUART, placeholderDS18X20String, stringValue);
      00A87D 1E 01            [ 2]  338 	ldw	x, (0x01, sp)
      00A87F 89               [ 2]  339 	pushw	x
      00A880 4B 4C            [ 1]  340 	push	#<(_main_placeholderDS18X20String_131072_214+0)
      00A882 4B 82            [ 1]  341 	push	#((_main_placeholderDS18X20String_131072_214+0) >> 8)
      00A884 1E 07            [ 2]  342 	ldw	x, (0x07, sp)
      00A886 89               [ 2]  343 	pushw	x
      00A887 CD B2 AB         [ 4]  344 	call	_sprintf
      00A88A 5B 06            [ 2]  345 	addw	sp, #6
                                    346 ;	src\main.c: 253: putchar(0x00);
      00A88C 5F               [ 1]  347 	clrw	x
      00A88D CD AB 0C         [ 4]  348 	call	_putchar
                                    349 ;	src\main.c: 254: putchar(0x00);
      00A890 5F               [ 1]  350 	clrw	x
      00A891 CD AB 0C         [ 4]  351 	call	_putchar
                                    352 ;	src\main.c: 255: putchar(0x18);
      00A894 AE 00 18         [ 2]  353 	ldw	x, #0x0018
      00A897 CD AB 0C         [ 4]  354 	call	_putchar
                                    355 ;	src\main.c: 256: printf("%s\r\n", stringSendUART);
      00A89A 1E 03            [ 2]  356 	ldw	x, (0x03, sp)
      00A89C 89               [ 2]  357 	pushw	x
      00A89D 4B E7            [ 1]  358 	push	#<(___str_3+0)
      00A89F 4B 82            [ 1]  359 	push	#((___str_3+0) >> 8)
      00A8A1 CD B3 6F         [ 4]  360 	call	_printf
      00A8A4 5B 04            [ 2]  361 	addw	sp, #4
                                    362 ;	src\main.c: 258: free(stringSendUART);
      00A8A6 1E 03            [ 2]  363 	ldw	x, (0x03, sp)
      00A8A8 CD AB 73         [ 4]  364 	call	_free
                                    365 ;	src\main.c: 259: free(stringValue);
      00A8AB 1E 01            [ 2]  366 	ldw	x, (0x01, sp)
      00A8AD CD AB 73         [ 4]  367 	call	_free
                                    368 ;	src\main.c: 261: delay_ms(5000);
      00A8B0 AE 13 88         [ 2]  369 	ldw	x, #0x1388
      00A8B3 CD A1 AC         [ 4]  370 	call	_delay_ms
                                    371 ;	src\main.c: 324: fBME280Temperature = BME280_ReadTemperature();
      00A8B6 CD 9E 16         [ 4]  372 	call	_BME280_ReadTemperature
      00A8B9 CF 05 08         [ 2]  373 	ldw	_fBME280Temperature+2, x
      00A8BC 90 CF 05 06      [ 2]  374 	ldw	_fBME280Temperature+0, y
                                    375 ;	src\main.c: 325: delay_ms(2000);
      00A8C0 AE 07 D0         [ 2]  376 	ldw	x, #0x07d0
      00A8C3 CD A1 AC         [ 4]  377 	call	_delay_ms
                                    378 ;	src\main.c: 328: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00A8C6 AE 00 06         [ 2]  379 	ldw	x, #0x0006
      00A8C9 CD AF C9         [ 4]  380 	call	_malloc
      00A8CC 1F 01            [ 2]  381 	ldw	(0x01, sp), x
                                    382 ;	src\main.c: 330: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00A8CE AE 00 3B         [ 2]  383 	ldw	x, #0x003b
      00A8D1 CD AF C9         [ 4]  384 	call	_malloc
      00A8D4 1F 03            [ 2]  385 	ldw	(0x03, sp), x
                                    386 ;	src\main.c: 332: FloatToStr(stringValue, fBME280Temperature, integer_bit, decimal_bit);
      00A8D6 4B 02            [ 1]  387 	push	#0x02
      00A8D8 4B 03            [ 1]  388 	push	#0x03
      00A8DA CE 05 08         [ 2]  389 	ldw	x, _fBME280Temperature+2
      00A8DD 89               [ 2]  390 	pushw	x
      00A8DE CE 05 06         [ 2]  391 	ldw	x, _fBME280Temperature+0
      00A8E1 89               [ 2]  392 	pushw	x
      00A8E2 1E 07            [ 2]  393 	ldw	x, (0x07, sp)
      00A8E4 CD A9 98         [ 4]  394 	call	_FloatToStr
                                    395 ;	src\main.c: 333: sprintf(stringSendUART, placeholderTemperatureBME280String, stringValue);
      00A8E7 1E 01            [ 2]  396 	ldw	x, (0x01, sp)
      00A8E9 89               [ 2]  397 	pushw	x
      00A8EA 4B B2            [ 1]  398 	push	#<(_main_placeholderTemperatureBME280String_131072_214+0)
      00A8EC 4B 82            [ 1]  399 	push	#((_main_placeholderTemperatureBME280String_131072_214+0) >> 8)
      00A8EE 1E 07            [ 2]  400 	ldw	x, (0x07, sp)
      00A8F0 89               [ 2]  401 	pushw	x
      00A8F1 CD B2 AB         [ 4]  402 	call	_sprintf
      00A8F4 5B 06            [ 2]  403 	addw	sp, #6
                                    404 ;	src\main.c: 334: putchar(0x00);
      00A8F6 5F               [ 1]  405 	clrw	x
      00A8F7 CD AB 0C         [ 4]  406 	call	_putchar
                                    407 ;	src\main.c: 335: putchar(0x00);
      00A8FA 5F               [ 1]  408 	clrw	x
      00A8FB CD AB 0C         [ 4]  409 	call	_putchar
                                    410 ;	src\main.c: 336: putchar(0x18);
      00A8FE AE 00 18         [ 2]  411 	ldw	x, #0x0018
      00A901 CD AB 0C         [ 4]  412 	call	_putchar
                                    413 ;	src\main.c: 337: printf("%s\r\n", stringSendUART);
      00A904 1E 03            [ 2]  414 	ldw	x, (0x03, sp)
      00A906 89               [ 2]  415 	pushw	x
      00A907 4B E7            [ 1]  416 	push	#<(___str_3+0)
      00A909 4B 82            [ 1]  417 	push	#((___str_3+0) >> 8)
      00A90B CD B3 6F         [ 4]  418 	call	_printf
      00A90E 5B 04            [ 2]  419 	addw	sp, #4
                                    420 ;	src\main.c: 339: free(stringSendUART);
      00A910 1E 03            [ 2]  421 	ldw	x, (0x03, sp)
      00A912 CD AB 73         [ 4]  422 	call	_free
                                    423 ;	src\main.c: 340: free(stringValue);
      00A915 1E 01            [ 2]  424 	ldw	x, (0x01, sp)
      00A917 CD AB 73         [ 4]  425 	call	_free
                                    426 ;	src\main.c: 345: fBME280Humidity = BME280_ReadHumidity();
      00A91A CD 9F 3A         [ 4]  427 	call	_BME280_ReadHumidity
      00A91D CF 05 0C         [ 2]  428 	ldw	_fBME280Humidity+2, x
      00A920 90 CF 05 0A      [ 2]  429 	ldw	_fBME280Humidity+0, y
                                    430 ;	src\main.c: 346: delay_ms(2000);
      00A924 AE 07 D0         [ 2]  431 	ldw	x, #0x07d0
      00A927 CD A1 AC         [ 4]  432 	call	_delay_ms
                                    433 ;	src\main.c: 350: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00A92A AE 00 05         [ 2]  434 	ldw	x, #0x0005
      00A92D CD AF C9         [ 4]  435 	call	_malloc
      00A930 1F 01            [ 2]  436 	ldw	(0x01, sp), x
                                    437 ;	src\main.c: 351: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00A932 AE 00 37         [ 2]  438 	ldw	x, #0x0037
      00A935 CD AF C9         [ 4]  439 	call	_malloc
      00A938 1F 03            [ 2]  440 	ldw	(0x03, sp), x
                                    441 ;	src\main.c: 353: FloatToStr(stringValue, fBME280Humidity, integer_bit, decimal_bit);
      00A93A 4B 02            [ 1]  442 	push	#0x02
      00A93C 4B 02            [ 1]  443 	push	#0x02
      00A93E CE 05 0C         [ 2]  444 	ldw	x, _fBME280Humidity+2
      00A941 89               [ 2]  445 	pushw	x
      00A942 CE 05 0A         [ 2]  446 	ldw	x, _fBME280Humidity+0
      00A945 89               [ 2]  447 	pushw	x
      00A946 1E 07            [ 2]  448 	ldw	x, (0x07, sp)
      00A948 CD A9 98         [ 4]  449 	call	_FloatToStr
                                    450 ;	src\main.c: 354: sprintf(stringSendUART, placeholderHumidityBME280String, stringValue);
      00A94B 1E 01            [ 2]  451 	ldw	x, (0x01, sp)
      00A94D 89               [ 2]  452 	pushw	x
      00A94E 4B 80            [ 1]  453 	push	#<(_main_placeholderHumidityBME280String_131072_214+0)
      00A950 4B 82            [ 1]  454 	push	#((_main_placeholderHumidityBME280String_131072_214+0) >> 8)
      00A952 1E 07            [ 2]  455 	ldw	x, (0x07, sp)
      00A954 89               [ 2]  456 	pushw	x
      00A955 CD B2 AB         [ 4]  457 	call	_sprintf
      00A958 5B 06            [ 2]  458 	addw	sp, #6
                                    459 ;	src\main.c: 355: putchar(0x00);
      00A95A 5F               [ 1]  460 	clrw	x
      00A95B CD AB 0C         [ 4]  461 	call	_putchar
                                    462 ;	src\main.c: 356: putchar(0x00);
      00A95E 5F               [ 1]  463 	clrw	x
      00A95F CD AB 0C         [ 4]  464 	call	_putchar
                                    465 ;	src\main.c: 357: putchar(0x18);
      00A962 AE 00 18         [ 2]  466 	ldw	x, #0x0018
      00A965 CD AB 0C         [ 4]  467 	call	_putchar
                                    468 ;	src\main.c: 358: printf("%s\r\n", stringSendUART);
      00A968 1E 03            [ 2]  469 	ldw	x, (0x03, sp)
      00A96A 89               [ 2]  470 	pushw	x
      00A96B 4B E7            [ 1]  471 	push	#<(___str_3+0)
      00A96D 4B 82            [ 1]  472 	push	#((___str_3+0) >> 8)
      00A96F CD B3 6F         [ 4]  473 	call	_printf
      00A972 5B 04            [ 2]  474 	addw	sp, #4
                                    475 ;	src\main.c: 360: free(stringSendUART);
      00A974 1E 03            [ 2]  476 	ldw	x, (0x03, sp)
      00A976 CD AB 73         [ 4]  477 	call	_free
                                    478 ;	src\main.c: 361: free(stringValue);
      00A979 1E 01            [ 2]  479 	ldw	x, (0x01, sp)
      00A97B CD AB 73         [ 4]  480 	call	_free
                                    481 ;	src\main.c: 370: for (uint8_t i = 0; i < 9; i++) {
      00A97E 4F               [ 1]  482 	clr	a
      00A97F                        483 00112$:
      00A97F A1 09            [ 1]  484 	cp	a, #0x09
      00A981 24 0A            [ 1]  485 	jrnc	00104$
                                    486 ;	src\main.c: 371: delay_ms(65535);
      00A983 88               [ 1]  487 	push	a
      00A984 5F               [ 1]  488 	clrw	x
      00A985 5A               [ 2]  489 	decw	x
      00A986 CD A1 AC         [ 4]  490 	call	_delay_ms
      00A989 84               [ 1]  491 	pop	a
                                    492 ;	src\main.c: 370: for (uint8_t i = 0; i < 9; i++) {
      00A98A 4C               [ 1]  493 	inc	a
      00A98B 20 F2            [ 2]  494 	jra	00112$
      00A98D                        495 00104$:
                                    496 ;	src\main.c: 375: LED_OFF;
      00A98D A6 20            [ 1]  497 	ld	a, #0x20
      00A98F AE 50 14         [ 2]  498 	ldw	x, #0x5014
      00A992 CD 8A 83         [ 4]  499 	call	_GPIO_WriteHigh
                                    500 ;	src\main.c: 385: }
      00A995 CC A8 2A         [ 2]  501 	jp	00106$
                                    502 ;	src\main.c: 387: void FloatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit) {
                                    503 ;	-----------------------------------------
                                    504 ;	 function FloatToStr
                                    505 ;	-----------------------------------------
      00A998                        506 _FloatToStr:
      00A998 52 17            [ 2]  507 	sub	sp, #23
      00A99A 1F 15            [ 2]  508 	ldw	(0x15, sp), x
                                    509 ;	src\main.c: 389: uint8_t minus = 0;
      00A99C 0F 05            [ 1]  510 	clr	(0x05, sp)
                                    511 ;	src\main.c: 392: uint8_t trailing_zero_count = 0;
      00A99E 0F 06            [ 1]  512 	clr	(0x06, sp)
                                    513 ;	src\main.c: 394: if (number < 0) {
      00A9A0 5F               [ 1]  514 	clrw	x
      00A9A1 89               [ 2]  515 	pushw	x
      00A9A2 5F               [ 1]  516 	clrw	x
      00A9A3 89               [ 2]  517 	pushw	x
      00A9A4 1E 20            [ 2]  518 	ldw	x, (0x20, sp)
      00A9A6 89               [ 2]  519 	pushw	x
      00A9A7 1E 20            [ 2]  520 	ldw	x, (0x20, sp)
      00A9A9 89               [ 2]  521 	pushw	x
      00A9AA CD AF 23         [ 4]  522 	call	___fslt
      00A9AD 4D               [ 1]  523 	tnz	a
      00A9AE 27 14            [ 1]  524 	jreq	00102$
                                    525 ;	src\main.c: 395: str[0] = 0x2D;
      00A9B0 1E 15            [ 2]  526 	ldw	x, (0x15, sp)
      00A9B2 A6 2D            [ 1]  527 	ld	a, #0x2d
      00A9B4 F7               [ 1]  528 	ld	(x), a
                                    529 ;	src\main.c: 396: number *= -1;
      00A9B5 16 1C            [ 2]  530 	ldw	y, (0x1c, sp)
      00A9B7 1E 1A            [ 2]  531 	ldw	x, (0x1a, sp)
      00A9B9 58               [ 2]  532 	sllw	x
      00A9BA 8C               [ 1]  533 	ccf
      00A9BB 56               [ 2]  534 	rrcw	x
      00A9BC 17 1C            [ 2]  535 	ldw	(0x1c, sp), y
      00A9BE 1F 1A            [ 2]  536 	ldw	(0x1a, sp), x
                                    537 ;	src\main.c: 397: minus = 1;
      00A9C0 A6 01            [ 1]  538 	ld	a, #0x01
      00A9C2 6B 05            [ 1]  539 	ld	(0x05, sp), a
      00A9C4                        540 00102$:
                                    541 ;	src\main.c: 400: temp = (uint32_t)(number/1);
      00A9C4 16 1C            [ 2]  542 	ldw	y, (0x1c, sp)
      00A9C6 17 09            [ 2]  543 	ldw	(0x09, sp), y
      00A9C8 16 1A            [ 2]  544 	ldw	y, (0x1a, sp)
      00A9CA 17 07            [ 2]  545 	ldw	(0x07, sp), y
      00A9CC 1E 09            [ 2]  546 	ldw	x, (0x09, sp)
      00A9CE 89               [ 2]  547 	pushw	x
      00A9CF 1E 09            [ 2]  548 	ldw	x, (0x09, sp)
      00A9D1 89               [ 2]  549 	pushw	x
      00A9D2 CD AE 5C         [ 4]  550 	call	___fs2ulong
      00A9D5 5B 04            [ 2]  551 	addw	sp, #4
      00A9D7 1F 0F            [ 2]  552 	ldw	(0x0f, sp), x
                                    553 ;	src\main.c: 402: for (i = 1; i <= integer_bit; i++) {
      00A9D9 A6 01            [ 1]  554 	ld	a, #0x01
      00A9DB 6B 17            [ 1]  555 	ld	(0x17, sp), a
      00A9DD                        556 00114$:
                                    557 ;	src\main.c: 404: str[integer_bit - i + minus] = table[0];
      00A9DD 7B 1E            [ 1]  558 	ld	a, (0x1e, sp)
      00A9DF 6B 12            [ 1]  559 	ld	(0x12, sp), a
      00A9E1 0F 11            [ 1]  560 	clr	(0x11, sp)
      00A9E3 7B 05            [ 1]  561 	ld	a, (0x05, sp)
      00A9E5 6B 0C            [ 1]  562 	ld	(0x0c, sp), a
      00A9E7 0F 0B            [ 1]  563 	clr	(0x0b, sp)
                                    564 ;	src\main.c: 402: for (i = 1; i <= integer_bit; i++) {
      00A9E9 7B 17            [ 1]  565 	ld	a, (0x17, sp)
      00A9EB 11 1E            [ 1]  566 	cp	a, (0x1e, sp)
      00A9ED 22 3E            [ 1]  567 	jrugt	00106$
                                    568 ;	src\main.c: 404: str[integer_bit - i + minus] = table[0];
      00A9EF 5F               [ 1]  569 	clrw	x
      00A9F0 7B 17            [ 1]  570 	ld	a, (0x17, sp)
      00A9F2 97               [ 1]  571 	ld	xl, a
                                    572 ;	src\main.c: 406: str[integer_bit - i + minus] = table[temp%10];
      00A9F3 16 0F            [ 2]  573 	ldw	y, (0x0f, sp)
      00A9F5 17 13            [ 2]  574 	ldw	(0x13, sp), y
                                    575 ;	src\main.c: 404: str[integer_bit - i + minus] = table[0];
      00A9F7 50               [ 2]  576 	negw	x
      00A9F8 72 FB 11         [ 2]  577 	addw	x, (0x11, sp)
      00A9FB 72 FB 0B         [ 2]  578 	addw	x, (0x0b, sp)
      00A9FE 72 FB 15         [ 2]  579 	addw	x, (0x15, sp)
      00AA01 1F 11            [ 2]  580 	ldw	(0x11, sp), x
                                    581 ;	src\main.c: 403: if (temp == 0) {
      00AA03 1E 0F            [ 2]  582 	ldw	x, (0x0f, sp)
      00AA05 26 08            [ 1]  583 	jrne	00104$
                                    584 ;	src\main.c: 404: str[integer_bit - i + minus] = table[0];
      00AA07 C6 82 42         [ 1]  585 	ld	a, _table+0
      00AA0A 1E 11            [ 2]  586 	ldw	x, (0x11, sp)
      00AA0C F7               [ 1]  587 	ld	(x), a
      00AA0D 20 11            [ 2]  588 	jra	00105$
      00AA0F                        589 00104$:
                                    590 ;	src\main.c: 406: str[integer_bit - i + minus] = table[temp%10];
      00AA0F 1E 13            [ 2]  591 	ldw	x, (0x13, sp)
      00AA11 90 AE 00 0A      [ 2]  592 	ldw	y, #0x000a
      00AA15 65               [ 2]  593 	divw	x, y
      00AA16 93               [ 1]  594 	ldw	x, y
      00AA17 90 9F            [ 1]  595 	ld	a, yl
      00AA19 97               [ 1]  596 	ld	xl, a
      00AA1A D6 82 42         [ 1]  597 	ld	a, (_table+0, x)
      00AA1D 1E 11            [ 2]  598 	ldw	x, (0x11, sp)
      00AA1F F7               [ 1]  599 	ld	(x), a
      00AA20                        600 00105$:
                                    601 ;	src\main.c: 408: temp /= 10;
      00AA20 1E 13            [ 2]  602 	ldw	x, (0x13, sp)
      00AA22 90 AE 00 0A      [ 2]  603 	ldw	y, #0x000a
      00AA26 65               [ 2]  604 	divw	x, y
      00AA27 1F 0F            [ 2]  605 	ldw	(0x0f, sp), x
                                    606 ;	src\main.c: 402: for (i = 1; i <= integer_bit; i++) {
      00AA29 0C 17            [ 1]  607 	inc	(0x17, sp)
      00AA2B 20 B0            [ 2]  608 	jra	00114$
      00AA2D                        609 00106$:
                                    610 ;	src\main.c: 411: for (i = 0; i < (integer_bit - 1); i++) {
      00AA2D 0F 17            [ 1]  611 	clr	(0x17, sp)
      00AA2F                        612 00117$:
      00AA2F 16 11            [ 2]  613 	ldw	y, (0x11, sp)
      00AA31 17 0D            [ 2]  614 	ldw	(0x0d, sp), y
      00AA33 1E 11            [ 2]  615 	ldw	x, (0x11, sp)
      00AA35 5A               [ 2]  616 	decw	x
      00AA36 1F 13            [ 2]  617 	ldw	(0x13, sp), x
      00AA38 5F               [ 1]  618 	clrw	x
      00AA39 7B 17            [ 1]  619 	ld	a, (0x17, sp)
      00AA3B 97               [ 1]  620 	ld	xl, a
      00AA3C 13 13            [ 2]  621 	cpw	x, (0x13, sp)
      00AA3E 2E 11            [ 1]  622 	jrsge	00110$
                                    623 ;	src\main.c: 412: if (str[i + minus] == '0') {
      00AA40 72 FB 0B         [ 2]  624 	addw	x, (0x0b, sp)
      00AA43 72 FB 15         [ 2]  625 	addw	x, (0x15, sp)
      00AA46 F6               [ 1]  626 	ld	a, (x)
      00AA47 A1 30            [ 1]  627 	cp	a, #0x30
      00AA49 26 06            [ 1]  628 	jrne	00110$
                                    629 ;	src\main.c: 413: trailing_zero_count += 1;
      00AA4B 0C 06            [ 1]  630 	inc	(0x06, sp)
                                    631 ;	src\main.c: 411: for (i = 0; i < (integer_bit - 1); i++) {
      00AA4D 0C 17            [ 1]  632 	inc	(0x17, sp)
      00AA4F 20 DE            [ 2]  633 	jra	00117$
      00AA51                        634 00110$:
                                    635 ;	src\main.c: 424: for (i = minus; i <= trailing_zero_count + minus; i++) {
      00AA51 7B 05            [ 1]  636 	ld	a, (0x05, sp)
      00AA53 6B 17            [ 1]  637 	ld	(0x17, sp), a
      00AA55                        638 00120$:
      00AA55 7B 06            [ 1]  639 	ld	a, (0x06, sp)
      00AA57 6B 10            [ 1]  640 	ld	(0x10, sp), a
      00AA59 0F 0F            [ 1]  641 	clr	(0x0f, sp)
      00AA5B 16 0B            [ 2]  642 	ldw	y, (0x0b, sp)
      00AA5D 17 11            [ 2]  643 	ldw	(0x11, sp), y
      00AA5F 1E 0F            [ 2]  644 	ldw	x, (0x0f, sp)
      00AA61 72 FB 0B         [ 2]  645 	addw	x, (0x0b, sp)
      00AA64 7B 17            [ 1]  646 	ld	a, (0x17, sp)
      00AA66 6B 14            [ 1]  647 	ld	(0x14, sp), a
      00AA68 0F 13            [ 1]  648 	clr	(0x13, sp)
      00AA6A 13 13            [ 2]  649 	cpw	x, (0x13, sp)
      00AA6C 2F 16            [ 1]  650 	jrslt	00111$
                                    651 ;	src\main.c: 425: str[i] = str[i + trailing_zero_count];
      00AA6E 5F               [ 1]  652 	clrw	x
      00AA6F 7B 17            [ 1]  653 	ld	a, (0x17, sp)
      00AA71 97               [ 1]  654 	ld	xl, a
      00AA72 72 FB 15         [ 2]  655 	addw	x, (0x15, sp)
      00AA75 16 13            [ 2]  656 	ldw	y, (0x13, sp)
      00AA77 72 F9 0F         [ 2]  657 	addw	y, (0x0f, sp)
      00AA7A 72 F9 15         [ 2]  658 	addw	y, (0x15, sp)
      00AA7D 90 F6            [ 1]  659 	ld	a, (y)
      00AA7F F7               [ 1]  660 	ld	(x), a
                                    661 ;	src\main.c: 424: for (i = minus; i <= trailing_zero_count + minus; i++) {
      00AA80 0C 17            [ 1]  662 	inc	(0x17, sp)
      00AA82 20 D1            [ 2]  663 	jra	00120$
      00AA84                        664 00111$:
                                    665 ;	src\main.c: 428: *(str + integer_bit - trailing_zero_count + minus) = '.';
      00AA84 5F               [ 1]  666 	clrw	x
      00AA85 7B 1E            [ 1]  667 	ld	a, (0x1e, sp)
      00AA87 97               [ 1]  668 	ld	xl, a
      00AA88 72 FB 15         [ 2]  669 	addw	x, (0x15, sp)
      00AA8B 1F 13            [ 2]  670 	ldw	(0x13, sp), x
      00AA8D 72 F0 0F         [ 2]  671 	subw	x, (0x0f, sp)
      00AA90 9F               [ 1]  672 	ld	a, xl
      00AA91 1B 05            [ 1]  673 	add	a, (0x05, sp)
      00AA93 02               [ 1]  674 	rlwa	x
      00AA94 A9 00            [ 1]  675 	adc	a, #0x00
      00AA96 95               [ 1]  676 	ld	xh, a
      00AA97 A6 2E            [ 1]  677 	ld	a, #0x2e
      00AA99 F7               [ 1]  678 	ld	(x), a
                                    679 ;	src\main.c: 430: t2 = number;
      00AA9A 16 09            [ 2]  680 	ldw	y, (0x09, sp)
      00AA9C 17 03            [ 2]  681 	ldw	(0x03, sp), y
      00AA9E 16 07            [ 2]  682 	ldw	y, (0x07, sp)
      00AAA0 17 01            [ 2]  683 	ldw	(0x01, sp), y
                                    684 ;	src\main.c: 432: for (i = 1; i <= decimal_bit; i++) {
      00AAA2 A6 01            [ 1]  685 	ld	a, #0x01
      00AAA4 6B 17            [ 1]  686 	ld	(0x17, sp), a
      00AAA6                        687 00123$:
      00AAA6 7B 17            [ 1]  688 	ld	a, (0x17, sp)
      00AAA8 11 1F            [ 1]  689 	cp	a, (0x1f, sp)
      00AAAA 22 46            [ 1]  690 	jrugt	00112$
                                    691 ;	src\main.c: 433: temp = t2 * 10;
      00AAAC 1E 03            [ 2]  692 	ldw	x, (0x03, sp)
      00AAAE 89               [ 2]  693 	pushw	x
      00AAAF 1E 03            [ 2]  694 	ldw	x, (0x03, sp)
      00AAB1 89               [ 2]  695 	pushw	x
      00AAB2 5F               [ 1]  696 	clrw	x
      00AAB3 89               [ 2]  697 	pushw	x
      00AAB4 4B 20            [ 1]  698 	push	#0x20
      00AAB6 4B 41            [ 1]  699 	push	#0x41
      00AAB8 CD AB DE         [ 4]  700 	call	___fsmul
      00AABB 1F 0B            [ 2]  701 	ldw	(0x0b, sp), x
      00AABD 17 09            [ 2]  702 	ldw	(0x09, sp), y
      00AABF 1E 0B            [ 2]  703 	ldw	x, (0x0b, sp)
      00AAC1 89               [ 2]  704 	pushw	x
      00AAC2 1E 0B            [ 2]  705 	ldw	x, (0x0b, sp)
      00AAC4 89               [ 2]  706 	pushw	x
      00AAC5 CD B3 37         [ 4]  707 	call	___fs2uint
      00AAC8 51               [ 1]  708 	exgw	x, y
                                    709 ;	src\main.c: 434: str[integer_bit + i - trailing_zero_count + minus] = table[temp%10];
      00AAC9 7B 17            [ 1]  710 	ld	a, (0x17, sp)
      00AACB 5F               [ 1]  711 	clrw	x
      00AACC 97               [ 1]  712 	ld	xl, a
      00AACD 72 FB 0D         [ 2]  713 	addw	x, (0x0d, sp)
      00AAD0 72 F0 0F         [ 2]  714 	subw	x, (0x0f, sp)
      00AAD3 72 FB 11         [ 2]  715 	addw	x, (0x11, sp)
      00AAD6 72 FB 15         [ 2]  716 	addw	x, (0x15, sp)
      00AAD9 89               [ 2]  717 	pushw	x
      00AADA 93               [ 1]  718 	ldw	x, y
      00AADB 90 AE 00 0A      [ 2]  719 	ldw	y, #0x000a
      00AADF 65               [ 2]  720 	divw	x, y
      00AAE0 85               [ 2]  721 	popw	x
      00AAE1 90 D6 82 42      [ 1]  722 	ld	a, (_table+0, y)
      00AAE5 F7               [ 1]  723 	ld	(x), a
                                    724 ;	src\main.c: 435: t2 *= 10;
      00AAE6 1E 0B            [ 2]  725 	ldw	x, (0x0b, sp)
      00AAE8 16 09            [ 2]  726 	ldw	y, (0x09, sp)
      00AAEA 1F 03            [ 2]  727 	ldw	(0x03, sp), x
      00AAEC 17 01            [ 2]  728 	ldw	(0x01, sp), y
                                    729 ;	src\main.c: 432: for (i = 1; i <= decimal_bit; i++) {
      00AAEE 0C 17            [ 1]  730 	inc	(0x17, sp)
      00AAF0 20 B4            [ 2]  731 	jra	00123$
      00AAF2                        732 00112$:
                                    733 ;	src\main.c: 438: *(str + integer_bit + 1 + decimal_bit - trailing_zero_count + minus) = '\0';
      00AAF2 1E 13            [ 2]  734 	ldw	x, (0x13, sp)
      00AAF4 5C               [ 1]  735 	incw	x
      00AAF5 9F               [ 1]  736 	ld	a, xl
      00AAF6 1B 1F            [ 1]  737 	add	a, (0x1f, sp)
      00AAF8 02               [ 1]  738 	rlwa	x
      00AAF9 A9 00            [ 1]  739 	adc	a, #0x00
      00AAFB 95               [ 1]  740 	ld	xh, a
      00AAFC 72 F0 0F         [ 2]  741 	subw	x, (0x0f, sp)
      00AAFF 9F               [ 1]  742 	ld	a, xl
      00AB00 1B 05            [ 1]  743 	add	a, (0x05, sp)
      00AB02 02               [ 1]  744 	rlwa	x
      00AB03 A9 00            [ 1]  745 	adc	a, #0x00
      00AB05 95               [ 1]  746 	ld	xh, a
      00AB06 7F               [ 1]  747 	clr	(x)
                                    748 ;	src\main.c: 439: }
      00AB07 1E 18            [ 2]  749 	ldw	x, (24, sp)
      00AB09 5B 1F            [ 2]  750 	addw	sp, #31
      00AB0B FC               [ 2]  751 	jp	(x)
                                    752 ;	src\main.c: 446: PUTCHAR_PROTOTYPE
                                    753 ;	-----------------------------------------
                                    754 ;	 function putchar
                                    755 ;	-----------------------------------------
      00AB0C                        756 _putchar:
                                    757 ;	src\main.c: 449: UART_SENDDATA8(c);
      00AB0C 9F               [ 1]  758 	ld	a, xl
      00AB0D 89               [ 2]  759 	pushw	x
      00AB0E CD 96 D1         [ 4]  760 	call	_UART2_SendData8
      00AB11 85               [ 2]  761 	popw	x
                                    762 ;	src\main.c: 451: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
      00AB12                        763 00101$:
      00AB12 89               [ 2]  764 	pushw	x
      00AB13 AE 00 80         [ 2]  765 	ldw	x, #0x0080
      00AB16 CD 97 24         [ 4]  766 	call	_UART2_GetFlagStatus
      00AB19 85               [ 2]  767 	popw	x
      00AB1A 4D               [ 1]  768 	tnz	a
      00AB1B 27 F5            [ 1]  769 	jreq	00101$
                                    770 ;	src\main.c: 453: return (c);
                                    771 ;	src\main.c: 454: }
      00AB1D 81               [ 4]  772 	ret
                                    773 ;	src\main.c: 461: GETCHAR_PROTOTYPE
                                    774 ;	-----------------------------------------
                                    775 ;	 function getchar
                                    776 ;	-----------------------------------------
      00AB1E                        777 _getchar:
                                    778 ;	src\main.c: 469: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
      00AB1E                        779 00101$:
      00AB1E AE 00 80         [ 2]  780 	ldw	x, #0x0080
      00AB21 CD 97 24         [ 4]  781 	call	_UART2_GetFlagStatus
      00AB24 4D               [ 1]  782 	tnz	a
      00AB25 27 F7            [ 1]  783 	jreq	00101$
                                    784 ;	src\main.c: 470: c = UART_RECEIVEDATA8();
      00AB27 CD 96 B2         [ 4]  785 	call	_UART2_ReceiveData8
      00AB2A 5F               [ 1]  786 	clrw	x
                                    787 ;	src\main.c: 471: return (c);
      00AB2B 97               [ 1]  788 	ld	xl, a
                                    789 ;	src\main.c: 472: }
      00AB2C 81               [ 4]  790 	ret
                                    791 ;	src\main.c: 483: void assert_failed(uint8_t* file, uint32_t line)
                                    792 ;	-----------------------------------------
                                    793 ;	 function assert_failed
                                    794 ;	-----------------------------------------
      00AB2D                        795 _assert_failed:
                                    796 ;	src\main.c: 490: while (1)
      00AB2D                        797 00102$:
      00AB2D 20 FE            [ 2]  798 	jra	00102$
                                    799 ;	src\main.c: 493: }
      00AB2F 1E 01            [ 2]  800 	ldw	x, (1, sp)
      00AB31 5B 06            [ 2]  801 	addw	sp, #6
      00AB33 FC               [ 2]  802 	jp	(x)
                                    803 	.area CODE
                                    804 	.area CONST
      008242                        805 _table:
      008242 30                     806 	.db #0x30	; 48	'0'
      008243 31                     807 	.db #0x31	; 49	'1'
      008244 32                     808 	.db #0x32	; 50	'2'
      008245 33                     809 	.db #0x33	; 51	'3'
      008246 34                     810 	.db #0x34	; 52	'4'
      008247 35                     811 	.db #0x35	; 53	'5'
      008248 36                     812 	.db #0x36	; 54	'6'
      008249 37                     813 	.db #0x37	; 55	'7'
      00824A 38                     814 	.db #0x38	; 56	'8'
      00824B 39                     815 	.db #0x39	; 57	'9'
      00824C                        816 _main_placeholderDS18X20String_131072_214:
      00824C 7B                     817 	.ascii "{"
      00824D 22                     818 	.db 0x22
      00824E 74 6F 70 69 63         819 	.ascii "topic"
      008253 22                     820 	.db 0x22
      008254 20 3A 20               821 	.ascii " : "
      008257 22                     822 	.db 0x22
      008258 6D 71 74 74 2F 74 65   823 	.ascii "mqtt/temperature-room"
             6D 70 65 72 61 74 75
             72 65 2D 72 6F 6F 6D
      00826D 22                     824 	.db 0x22
      00826E 2C 20                  825 	.ascii ", "
      008270 22                     826 	.db 0x22
      008271 76 61 6C 75 65         827 	.ascii "value"
      008276 22                     828 	.db 0x22
      008277 20 3A 20               829 	.ascii " : "
      00827A 22                     830 	.db 0x22
      00827B 25 73                  831 	.ascii "%s"
      00827D 22                     832 	.db 0x22
      00827E 7D                     833 	.ascii "}"
      00827F 00                     834 	.db 0x00
      008280                        835 _main_placeholderHumidityBME280String_131072_214:
      008280 7B                     836 	.ascii "{"
      008281 22                     837 	.db 0x22
      008282 74 6F 70 69 63         838 	.ascii "topic"
      008287 22                     839 	.db 0x22
      008288 20 3A 20               840 	.ascii " : "
      00828B 22                     841 	.db 0x22
      00828C 6D 71 74 74 2F 68 75   842 	.ascii "mqtt/humidity-bme280"
             6D 69 64 69 74 79 2D
             62 6D 65 32 38 30
      0082A0 22                     843 	.db 0x22
      0082A1 2C 20                  844 	.ascii ", "
      0082A3 22                     845 	.db 0x22
      0082A4 76 61 6C 75 65         846 	.ascii "value"
      0082A9 22                     847 	.db 0x22
      0082AA 3A 20                  848 	.ascii ": "
      0082AC 22                     849 	.db 0x22
      0082AD 25 73                  850 	.ascii "%s"
      0082AF 22                     851 	.db 0x22
      0082B0 7D                     852 	.ascii "}"
      0082B1 00                     853 	.db 0x00
      0082B2                        854 _main_placeholderTemperatureBME280String_131072_214:
      0082B2 7B                     855 	.ascii "{"
      0082B3 22                     856 	.db 0x22
      0082B4 74 6F 70 69 63         857 	.ascii "topic"
      0082B9 22                     858 	.db 0x22
      0082BA 20 3A 20               859 	.ascii " : "
      0082BD 22                     860 	.db 0x22
      0082BE 6D 71 74 74 2F 74 65   861 	.ascii "mqtt/temperature-bme280"
             6D 70 65 72 61 74 75
             72 65 2D 62 6D 65 32
             38 30
      0082D5 22                     862 	.db 0x22
      0082D6 2C 20                  863 	.ascii ", "
      0082D8 22                     864 	.db 0x22
      0082D9 76 61 6C 75 65         865 	.ascii "value"
      0082DE 22                     866 	.db 0x22
      0082DF 3A 20                  867 	.ascii ": "
      0082E1 22                     868 	.db 0x22
      0082E2 25 73                  869 	.ascii "%s"
      0082E4 22                     870 	.db 0x22
      0082E5 7D                     871 	.ascii "}"
      0082E6 00                     872 	.db 0x00
                                    873 	.area CONST
      0082E7                        874 ___str_3:
      0082E7 25 73                  875 	.ascii "%s"
      0082E9 0D                     876 	.db 0x0d
      0082EA 0A                     877 	.db 0x0a
      0082EB 00                     878 	.db 0x00
                                    879 	.area CODE
                                    880 	.area INITIALIZER
      0082F7                        881 __xinit__fDS18X20Temperature:
      0082F7 C2 C8 00 00            882 	.byte #0xc2, #0xc8, #0x00, #0x00	; -1.000000e+02
      0082FB                        883 __xinit__fBME280Temperature:
      0082FB 00 00 00 00            884 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
      0082FF                        885 __xinit__fBME280Humidity:
      0082FF 00 00 00 00            886 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
                                    887 	.area CABS (ABS)
