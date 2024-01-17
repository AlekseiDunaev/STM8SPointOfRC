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
                                     15 	.globl _floatToStr
                                     16 	.globl _BME280_ReadHumidity
                                     17 	.globl _BME280_ReadPressure
                                     18 	.globl _BME280_ReadTemperature
                                     19 	.globl _BME280_SetMode
                                     20 	.globl _BME280_ReadRegisters
                                     21 	.globl _BME280_Setup
                                     22 	.globl _DS18X20_Setup
                                     23 	.globl _DS18X20_Get_Temperature
                                     24 	.globl _DS18X20_Read_ID
                                     25 	.globl _DS18X20_Reset
                                     26 	.globl _I2C_Setup
                                     27 	.globl _delay_ms
                                     28 	.globl _free
                                     29 	.globl _malloc
                                     30 	.globl _sprintf
                                     31 	.globl _printf
                                     32 	.globl _UART2_GetFlagStatus
                                     33 	.globl _UART2_SendData8
                                     34 	.globl _UART2_ReceiveData8
                                     35 	.globl _UART2_Init
                                     36 	.globl _UART2_DeInit
                                     37 	.globl _GPIO_WriteLow
                                     38 	.globl _GPIO_WriteHigh
                                     39 	.globl _GPIO_Init
                                     40 	.globl _GPIO_DeInit
                                     41 	.globl _CLK_GetFlagStatus
                                     42 	.globl _CLK_SYSCLKConfig
                                     43 	.globl _CLK_HSIPrescalerConfig
                                     44 	.globl _CLK_ClockSwitchConfig
                                     45 	.globl _CLK_PeripheralClockConfig
                                     46 	.globl _CLK_ClockSwitchCmd
                                     47 	.globl _CLK_LSICmd
                                     48 	.globl _CLK_HSICmd
                                     49 	.globl _CLK_HSECmd
                                     50 	.globl _CLK_DeInit
                                     51 	.globl _sizeSendUARTString
                                     52 	.globl _sizeValueString
                                     53 	.globl _stringValue
                                     54 	.globl _stringSendUART
                                     55 	.globl _fBME280Pressure
                                     56 	.globl _fBME280Humidity
                                     57 	.globl _fBME280Temperature
                                     58 	.globl _fDS18X20Temperature
                                     59 	.globl _decimal_bit
                                     60 	.globl _integer_bit
                                     61 	.globl _str1
                                     62 	.globl _sString
                                     63 	.globl _iI2CRead
                                     64 	.globl _iI2CWrite
                                     65 	.globl _iDS18X20RomID
                                     66 	.globl _putchar
                                     67 	.globl _getchar
                                     68 	.globl _assert_failed
                                     69 ;--------------------------------------------------------
                                     70 ; ram data
                                     71 ;--------------------------------------------------------
                                     72 	.area DATA
      000030                         73 _iDS18X20RomID::
      000030                         74 	.ds 8
      000038                         75 _iI2CWrite::
      000038                         76 	.ds 3
      00003B                         77 _iI2CRead::
      00003B                         78 	.ds 7
      000042                         79 _sString::
      000042                         80 	.ds 128
      0000C2                         81 _str1::
      0000C2                         82 	.ds 128
      000142                         83 _integer_bit::
      000142                         84 	.ds 1
      000143                         85 _decimal_bit::
      000143                         86 	.ds 1
                                     87 ;--------------------------------------------------------
                                     88 ; ram data
                                     89 ;--------------------------------------------------------
                                     90 	.area INITIALIZED
      000646                         91 _fDS18X20Temperature::
      000646                         92 	.ds 4
      00064A                         93 _fBME280Temperature::
      00064A                         94 	.ds 4
      00064E                         95 _fBME280Humidity::
      00064E                         96 	.ds 4
      000652                         97 _fBME280Pressure::
      000652                         98 	.ds 4
      000656                         99 _stringSendUART::
      000656                        100 	.ds 2
      000658                        101 _stringValue::
      000658                        102 	.ds 2
      00065A                        103 _sizeValueString::
      00065A                        104 	.ds 1
      00065B                        105 _sizeSendUARTString::
      00065B                        106 	.ds 1
                                    107 ;--------------------------------------------------------
                                    108 ; Stack segment in internal ram
                                    109 ;--------------------------------------------------------
                                    110 	.area	SSEG
      00C24B                        111 __start__stack:
      00C24B                        112 	.ds	1
                                    113 
                                    114 ;--------------------------------------------------------
                                    115 ; absolute external ram data
                                    116 ;--------------------------------------------------------
                                    117 	.area DABS (ABS)
                                    118 
                                    119 ; default segment ordering for linker
                                    120 	.area HOME
                                    121 	.area GSINIT
                                    122 	.area GSFINAL
                                    123 	.area CONST
                                    124 	.area INITIALIZER
                                    125 	.area CODE
                                    126 
                                    127 ;--------------------------------------------------------
                                    128 ; interrupt vector
                                    129 ;--------------------------------------------------------
                                    130 	.area HOME
      008000                        131 __interrupt_vect:
      008000 82 00 80 6F            132 	int s_GSINIT ; reset
      008004 82 00 B0 8A            133 	int _TRAP_IRQHandler ; trap
      008008 82 00 B0 8B            134 	int _TLI_IRQHandler ; int0
      00800C 82 00 B0 8C            135 	int _AWU_IRQHandler ; int1
      008010 82 00 B0 8D            136 	int _CLK_IRQHandler ; int2
      008014 82 00 B0 8E            137 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 B0 8F            138 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 B0 90            139 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 B0 91            140 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 B0 92            141 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 00 00            142 	int 0x000000 ; int8
      00802C 82 00 00 00            143 	int 0x000000 ; int9
      008030 82 00 B0 93            144 	int _SPI_IRQHandler ; int10
      008034 82 00 B0 94            145 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 B0 95            146 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 B0 96            147 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 B0 97            148 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 B0 98            149 	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
      008048 82 00 B0 99            150 	int _TIM3_CAP_COM_IRQHandler ; int16
      00804C 82 00 00 00            151 	int 0x000000 ; int17
      008050 82 00 00 00            152 	int 0x000000 ; int18
      008054 82 00 B0 9A            153 	int _I2C_IRQHandler ; int19
      008058 82 00 B0 9B            154 	int _UART2_TX_IRQHandler ; int20
      00805C 82 00 B0 9C            155 	int _UART2_RX_IRQHandler ; int21
      008060 82 00 B0 9D            156 	int _ADC1_IRQHandler ; int22
      008064 82 00 B0 9E            157 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 B0 9F            158 	int _EEPROM_EEC_IRQHandler ; int24
                                    159 ;--------------------------------------------------------
                                    160 ; global & static initialisations
                                    161 ;--------------------------------------------------------
                                    162 	.area HOME
                                    163 	.area GSINIT
                                    164 	.area GSFINAL
                                    165 	.area GSINIT
      00806F                        166 __sdcc_init_data:
                                    167 ; stm8_genXINIT() start
      00806F AE 06 45         [ 2]  168 	ldw x, #l_DATA
      008072 27 07            [ 1]  169 	jreq	00002$
      008074                        170 00001$:
      008074 72 4F 00 00      [ 1]  171 	clr (s_DATA - 1, x)
      008078 5A               [ 2]  172 	decw x
      008079 26 F9            [ 1]  173 	jrne	00001$
      00807B                        174 00002$:
      00807B AE 00 1C         [ 2]  175 	ldw	x, #l_INITIALIZER
      00807E 27 09            [ 1]  176 	jreq	00004$
      008080                        177 00003$:
      008080 D6 83 2C         [ 1]  178 	ld	a, (s_INITIALIZER - 1, x)
      008083 D7 06 45         [ 1]  179 	ld	(s_INITIALIZED - 1, x), a
      008086 5A               [ 2]  180 	decw	x
      008087 26 F7            [ 1]  181 	jrne	00003$
      008089                        182 00004$:
                                    183 ; stm8_genXINIT() end
                                    184 	.area GSFINAL
      00808C CC 80 6C         [ 2]  185 	jp	__sdcc_program_startup
                                    186 ;--------------------------------------------------------
                                    187 ; Home
                                    188 ;--------------------------------------------------------
                                    189 	.area HOME
                                    190 	.area HOME
      00806C                        191 __sdcc_program_startup:
      00806C CC AB EB         [ 2]  192 	jp	_main
                                    193 ;	return from main will return to caller
                                    194 ;--------------------------------------------------------
                                    195 ; code
                                    196 ;--------------------------------------------------------
                                    197 	.area CODE
                                    198 ;	src\main.c: 155: void Clock_Setup(void) {
                                    199 ;	-----------------------------------------
                                    200 ;	 function Clock_Setup
                                    201 ;	-----------------------------------------
      00AB6D                        202 _Clock_Setup:
                                    203 ;	src\main.c: 156: CLK_DeInit();
      00AB6D CD 83 49         [ 4]  204 	call	_CLK_DeInit
                                    205 ;	src\main.c: 157: CLK_HSECmd(DISABLE);
      00AB70 4F               [ 1]  206 	clr	a
      00AB71 CD 83 AA         [ 4]  207 	call	_CLK_HSECmd
                                    208 ;	src\main.c: 158: CLK_LSICmd(DISABLE);
      00AB74 4F               [ 1]  209 	clr	a
      00AB75 CD 84 00         [ 4]  210 	call	_CLK_LSICmd
                                    211 ;	src\main.c: 159: CLK_HSICmd(ENABLE);
      00AB78 A6 01            [ 1]  212 	ld	a, #0x01
      00AB7A CD 83 D5         [ 4]  213 	call	_CLK_HSICmd
                                    214 ;	src\main.c: 160: while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
      00AB7D                        215 00101$:
      00AB7D AE 01 02         [ 2]  216 	ldw	x, #0x0102
      00AB80 CD 88 F1         [ 4]  217 	call	_CLK_GetFlagStatus
      00AB83 4D               [ 1]  218 	tnz	a
      00AB84 27 F7            [ 1]  219 	jreq	00101$
                                    220 ;	src\main.c: 161: CLK_ClockSwitchCmd(ENABLE);
      00AB86 A6 01            [ 1]  221 	ld	a, #0x01
      00AB88 CD 84 56         [ 4]  222 	call	_CLK_ClockSwitchCmd
                                    223 ;	src\main.c: 162: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
      00AB8B 4F               [ 1]  224 	clr	a
      00AB8C CD 86 8F         [ 4]  225 	call	_CLK_HSIPrescalerConfig
                                    226 ;	src\main.c: 163: CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
      00AB8F A6 80            [ 1]  227 	ld	a, #0x80
      00AB91 CD 87 AE         [ 4]  228 	call	_CLK_SYSCLKConfig
                                    229 ;	src\main.c: 164: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
      00AB94 4B 01            [ 1]  230 	push	#0x01
      00AB96 4B 00            [ 1]  231 	push	#0x00
      00AB98 4B E1            [ 1]  232 	push	#0xe1
      00AB9A A6 01            [ 1]  233 	ld	a, #0x01
      00AB9C CD 85 77         [ 4]  234 	call	_CLK_ClockSwitchConfig
                                    235 ;	src\main.c: 166: CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
      00AB9F 4B 00            [ 1]  236 	push	#0x00
      00ABA1 A6 01            [ 1]  237 	ld	a, #0x01
      00ABA3 CD 84 AC         [ 4]  238 	call	_CLK_PeripheralClockConfig
                                    239 ;	src\main.c: 167: CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
      00ABA6 4B 00            [ 1]  240 	push	#0x00
      00ABA8 A6 12            [ 1]  241 	ld	a, #0x12
      00ABAA CD 84 AC         [ 4]  242 	call	_CLK_PeripheralClockConfig
                                    243 ;	src\main.c: 169: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
      00ABAD 4B 00            [ 1]  244 	push	#0x00
      00ABAF A6 07            [ 1]  245 	ld	a, #0x07
      00ABB1 CD 84 AC         [ 4]  246 	call	_CLK_PeripheralClockConfig
                                    247 ;	src\main.c: 170: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
      00ABB4 4B 00            [ 1]  248 	push	#0x00
      00ABB6 A6 05            [ 1]  249 	ld	a, #0x05
      00ABB8 CD 84 AC         [ 4]  250 	call	_CLK_PeripheralClockConfig
                                    251 ;	src\main.c: 171: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
      00ABBB 4B 00            [ 1]  252 	push	#0x00
      00ABBD A6 04            [ 1]  253 	ld	a, #0x04
      00ABBF CD 84 AC         [ 4]  254 	call	_CLK_PeripheralClockConfig
                                    255 ;	src\main.c: 172: }
      00ABC2 81               [ 4]  256 	ret
                                    257 ;	src\main.c: 174: void GPIO_Setup(void) {
                                    258 ;	-----------------------------------------
                                    259 ;	 function GPIO_Setup
                                    260 ;	-----------------------------------------
      00ABC3                        261 _GPIO_Setup:
                                    262 ;	src\main.c: 179: GPIO_DeInit(GPIOE);
      00ABC3 AE 50 14         [ 2]  263 	ldw	x, #0x5014
      00ABC6 CD 89 DF         [ 4]  264 	call	_GPIO_DeInit
                                    265 ;	src\main.c: 180: GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
      00ABC9 4B F0            [ 1]  266 	push	#0xf0
      00ABCB A6 20            [ 1]  267 	ld	a, #0x20
      00ABCD AE 50 14         [ 2]  268 	ldw	x, #0x5014
      00ABD0 CD 89 ED         [ 4]  269 	call	_GPIO_Init
                                    270 ;	src\main.c: 181: }
      00ABD3 81               [ 4]  271 	ret
                                    272 ;	src\main.c: 183: void UART_Setup() {
                                    273 ;	-----------------------------------------
                                    274 ;	 function UART_Setup
                                    275 ;	-----------------------------------------
      00ABD4                        276 _UART_Setup:
                                    277 ;	src\main.c: 184: UART_DEINIT();
      00ABD4 CD 91 95         [ 4]  278 	call	_UART2_DeInit
                                    279 ;	src\main.c: 194: UART_INIT((uint32_t)9600, UART_WORDLENGTH_8D, UART_STOPBITS_1, UART_PARITY_NO, UART_SYNCMODE_CLOCK_DISABLE, UART_MODE_TXRX_ENABLE);
      00ABD7 4B 0C            [ 1]  280 	push	#0x0c
      00ABD9 4B 80            [ 1]  281 	push	#0x80
      00ABDB 4B 00            [ 1]  282 	push	#0x00
      00ABDD 4B 00            [ 1]  283 	push	#0x00
      00ABDF 4B 00            [ 1]  284 	push	#0x00
      00ABE1 4B 80            [ 1]  285 	push	#0x80
      00ABE3 4B 25            [ 1]  286 	push	#0x25
      00ABE5 5F               [ 1]  287 	clrw	x
      00ABE6 89               [ 2]  288 	pushw	x
      00ABE7 CD 91 BC         [ 4]  289 	call	_UART2_Init
                                    290 ;	src\main.c: 195: }
      00ABEA 81               [ 4]  291 	ret
                                    292 ;	src\main.c: 205: void main(void) {
                                    293 ;	-----------------------------------------
                                    294 ;	 function main
                                    295 ;	-----------------------------------------
      00ABEB                        296 _main:
                                    297 ;	src\main.c: 206: Clock_Setup();
      00ABEB CD AB 6D         [ 4]  298 	call	_Clock_Setup
                                    299 ;	src\main.c: 207: GPIO_Setup();
      00ABEE CD AB C3         [ 4]  300 	call	_GPIO_Setup
                                    301 ;	src\main.c: 208: DS18X20_Setup();
      00ABF1 CD A7 4E         [ 4]  302 	call	_DS18X20_Setup
                                    303 ;	src\main.c: 209: I2C_Setup();
      00ABF4 CD A7 5F         [ 4]  304 	call	_I2C_Setup
                                    305 ;	src\main.c: 210: UART_Setup();
      00ABF7 CD AB D4         [ 4]  306 	call	_UART_Setup
                                    307 ;	src\main.c: 212: BME280_Setup();
      00ABFA CD 9A D3         [ 4]  308 	call	_BME280_Setup
                                    309 ;	src\main.c: 228: LED_ON;
      00ABFD A6 20            [ 1]  310 	ld	a, #0x20
      00ABFF AE 50 14         [ 2]  311 	ldw	x, #0x5014
      00AC02 CD 8A D2         [ 4]  312 	call	_GPIO_WriteLow
                                    313 ;	src\main.c: 230: while (1) {
      00AC05                        314 00106$:
                                    315 ;	src\main.c: 233: DS18X20_Reset();
      00AC05 CD A5 91         [ 4]  316 	call	_DS18X20_Reset
                                    317 ;	src\main.c: 235: delay_ms(2000);
      00AC08 AE 07 D0         [ 2]  318 	ldw	x, #0x07d0
      00AC0B CD A5 81         [ 4]  319 	call	_delay_ms
                                    320 ;	src\main.c: 237: if (!DS18X20_Read_ID(iDS18X20RomID)) {
      00AC0E AE 00 30         [ 2]  321 	ldw	x, #(_iDS18X20RomID+0)
      00AC11 CD A6 7D         [ 4]  322 	call	_DS18X20_Read_ID
      00AC14 4D               [ 1]  323 	tnz	a
      00AC15 26 0E            [ 1]  324 	jrne	00103$
                                    325 ;	src\main.c: 238: for (uint8_t i = 0; i < 8; i++) {
      00AC17 4F               [ 1]  326 	clr	a
      00AC18                        327 00109$:
      00AC18 A1 08            [ 1]  328 	cp	a, #0x08
      00AC1A 24 09            [ 1]  329 	jrnc	00103$
                                    330 ;	src\main.c: 239: iDS18X20RomID[i] = 0;
      00AC1C 5F               [ 1]  331 	clrw	x
      00AC1D 97               [ 1]  332 	ld	xl, a
      00AC1E 1C 00 30         [ 2]  333 	addw	x, #(_iDS18X20RomID+0)
      00AC21 7F               [ 1]  334 	clr	(x)
                                    335 ;	src\main.c: 238: for (uint8_t i = 0; i < 8; i++) {
      00AC22 4C               [ 1]  336 	inc	a
      00AC23 20 F3            [ 2]  337 	jra	00109$
      00AC25                        338 00103$:
                                    339 ;	src\main.c: 243: fDS18X20Temperature = DS18X20_Get_Temperature();
      00AC25 CD A6 C9         [ 4]  340 	call	_DS18X20_Get_Temperature
      00AC28 CF 06 48         [ 2]  341 	ldw	_fDS18X20Temperature+2, x
      00AC2B 90 CF 06 46      [ 2]  342 	ldw	_fDS18X20Temperature+0, y
                                    343 ;	src\main.c: 244: integer_bit = 2;
      00AC2F 35 02 01 42      [ 1]  344 	mov	_integer_bit+0, #0x02
                                    345 ;	src\main.c: 245: decimal_bit = 2;
      00AC33 35 02 01 43      [ 1]  346 	mov	_decimal_bit+0, #0x02
                                    347 ;	src\main.c: 261: sizeValueString = integer_bit + decimal_bit + 1;
      00AC37 35 05 06 5A      [ 1]  348 	mov	_sizeValueString+0, #0x05
                                    349 ;	src\main.c: 262: sizeSendUARTString = sizeof(placeholderDS18X20String) + sizeValueString;
      00AC3B 35 39 06 5B      [ 1]  350 	mov	_sizeSendUARTString+0, #0x39
                                    351 ;	src\main.c: 263: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00AC3F AE 00 05         [ 2]  352 	ldw	x, #0x0005
      00AC42 CD B5 1F         [ 4]  353 	call	_malloc
      00AC45 CF 06 58         [ 2]  354 	ldw	_stringValue+0, x
                                    355 ;	src\main.c: 264: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00AC48 C6 06 5B         [ 1]  356 	ld	a, _sizeSendUARTString+0
      00AC4B 5F               [ 1]  357 	clrw	x
      00AC4C 97               [ 1]  358 	ld	xl, a
      00AC4D CD B5 1F         [ 4]  359 	call	_malloc
      00AC50 CF 06 56         [ 2]  360 	ldw	_stringSendUART+0, x
                                    361 ;	src\main.c: 266: floatToStr(stringValue, fDS18X20Temperature, integer_bit, decimal_bit);
      00AC53 3B 01 43         [ 1]  362 	push	_decimal_bit+0
      00AC56 3B 01 42         [ 1]  363 	push	_integer_bit+0
      00AC59 CE 06 48         [ 2]  364 	ldw	x, _fDS18X20Temperature+2
      00AC5C 89               [ 2]  365 	pushw	x
      00AC5D CE 06 46         [ 2]  366 	ldw	x, _fDS18X20Temperature+0
      00AC60 89               [ 2]  367 	pushw	x
      00AC61 CE 06 58         [ 2]  368 	ldw	x, _stringValue+0
      00AC64 CD AE 97         [ 4]  369 	call	_floatToStr
                                    370 ;	src\main.c: 268: sprintf(stringSendUART, placeholderDS18X20String, stringValue);
      00AC67 CE 06 58         [ 2]  371 	ldw	x, _stringValue+0
      00AC6A 89               [ 2]  372 	pushw	x
      00AC6B 4B 46            [ 1]  373 	push	#<(_main_placeholderDS18X20String_65537_219+0)
      00AC6D 4B 82            [ 1]  374 	push	#((_main_placeholderDS18X20String_65537_219+0) >> 8)
      00AC6F CE 06 56         [ 2]  375 	ldw	x, _stringSendUART+0
      00AC72 89               [ 2]  376 	pushw	x
      00AC73 CD B8 01         [ 4]  377 	call	_sprintf
      00AC76 5B 06            [ 2]  378 	addw	sp, #6
                                    379 ;	src\main.c: 269: putchar(0x00);
      00AC78 5F               [ 1]  380 	clrw	x
      00AC79 CD AE 6F         [ 4]  381 	call	_putchar
                                    382 ;	src\main.c: 270: putchar(0x00);
      00AC7C 5F               [ 1]  383 	clrw	x
      00AC7D CD AE 6F         [ 4]  384 	call	_putchar
                                    385 ;	src\main.c: 271: putchar(0x18);
      00AC80 AE 00 18         [ 2]  386 	ldw	x, #0x0018
      00AC83 CD AE 6F         [ 4]  387 	call	_putchar
                                    388 ;	src\main.c: 272: printf("%s\r\n", stringSendUART);
      00AC86 CE 06 56         [ 2]  389 	ldw	x, _stringSendUART+0
      00AC89 89               [ 2]  390 	pushw	x
      00AC8A 4B 13            [ 1]  391 	push	#<(___str_4+0)
      00AC8C 4B 83            [ 1]  392 	push	#((___str_4+0) >> 8)
      00AC8E CD B9 18         [ 4]  393 	call	_printf
      00AC91 5B 04            [ 2]  394 	addw	sp, #4
                                    395 ;	src\main.c: 274: free(stringSendUART);
      00AC93 CE 06 56         [ 2]  396 	ldw	x, _stringSendUART+0
      00AC96 CD B0 C9         [ 4]  397 	call	_free
                                    398 ;	src\main.c: 275: free(stringValue);
      00AC99 CE 06 58         [ 2]  399 	ldw	x, _stringValue+0
      00AC9C CD B0 C9         [ 4]  400 	call	_free
                                    401 ;	src\main.c: 277: delay_ms(5000);
      00AC9F AE 13 88         [ 2]  402 	ldw	x, #0x1388
      00ACA2 CD A5 81         [ 4]  403 	call	_delay_ms
                                    404 ;	src\main.c: 336: integer_bit = 3;
      00ACA5 35 03 01 42      [ 1]  405 	mov	_integer_bit+0, #0x03
                                    406 ;	src\main.c: 337: decimal_bit = 2;
      00ACA9 35 02 01 43      [ 1]  407 	mov	_decimal_bit+0, #0x02
                                    408 ;	src\main.c: 339: BME280_SetMode(BME280_MODE_FORCED);
      00ACAD A6 01            [ 1]  409 	ld	a, #0x01
      00ACAF CD A0 2A         [ 4]  410 	call	_BME280_SetMode
                                    411 ;	src\main.c: 340: delay_ms(4000);
      00ACB2 AE 0F A0         [ 2]  412 	ldw	x, #0x0fa0
      00ACB5 CD A5 81         [ 4]  413 	call	_delay_ms
                                    414 ;	src\main.c: 342: BME280_ReadRegisters();
      00ACB8 CD 9D C6         [ 4]  415 	call	_BME280_ReadRegisters
                                    416 ;	src\main.c: 344: fBME280Temperature = BME280_ReadTemperature();
      00ACBB CD A0 44         [ 4]  417 	call	_BME280_ReadTemperature
      00ACBE CF 06 4C         [ 2]  418 	ldw	_fBME280Temperature+2, x
      00ACC1 90 CF 06 4A      [ 2]  419 	ldw	_fBME280Temperature+0, y
                                    420 ;	src\main.c: 346: sizeValueString = integer_bit + decimal_bit + 1;
      00ACC5 C6 01 42         [ 1]  421 	ld	a, _integer_bit+0
      00ACC8 CB 01 43         [ 1]  422 	add	a, _decimal_bit+0
      00ACCB 4C               [ 1]  423 	inc	a
                                    424 ;	src\main.c: 347: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00ACCC C7 06 5A         [ 1]  425 	ld	_sizeValueString+0, a
      00ACCF 5F               [ 1]  426 	clrw	x
      00ACD0 97               [ 1]  427 	ld	xl, a
      00ACD1 CD B5 1F         [ 4]  428 	call	_malloc
      00ACD4 CF 06 58         [ 2]  429 	ldw	_stringValue+0, x
                                    430 ;	src\main.c: 348: sizeSendUARTString = sizeof(placeholderTemperatureBME280String) + sizeValueString;
      00ACD7 C6 06 5A         [ 1]  431 	ld	a, _sizeValueString+0
      00ACDA AB 35            [ 1]  432 	add	a, #0x35
                                    433 ;	src\main.c: 349: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00ACDC C7 06 5B         [ 1]  434 	ld	_sizeSendUARTString+0, a
      00ACDF 5F               [ 1]  435 	clrw	x
      00ACE0 97               [ 1]  436 	ld	xl, a
      00ACE1 CD B5 1F         [ 4]  437 	call	_malloc
      00ACE4 CF 06 56         [ 2]  438 	ldw	_stringSendUART+0, x
                                    439 ;	src\main.c: 351: floatToStr(stringValue, fBME280Temperature, integer_bit, decimal_bit);
      00ACE7 3B 01 43         [ 1]  440 	push	_decimal_bit+0
      00ACEA 3B 01 42         [ 1]  441 	push	_integer_bit+0
      00ACED CE 06 4C         [ 2]  442 	ldw	x, _fBME280Temperature+2
      00ACF0 89               [ 2]  443 	pushw	x
      00ACF1 CE 06 4A         [ 2]  444 	ldw	x, _fBME280Temperature+0
      00ACF4 89               [ 2]  445 	pushw	x
      00ACF5 CE 06 58         [ 2]  446 	ldw	x, _stringValue+0
      00ACF8 CD AE 97         [ 4]  447 	call	_floatToStr
                                    448 ;	src\main.c: 352: sprintf(stringSendUART, placeholderTemperatureBME280String, stringValue);
      00ACFB CE 06 58         [ 2]  449 	ldw	x, _stringValue+0
      00ACFE 89               [ 2]  450 	pushw	x
      00ACFF 4B 7A            [ 1]  451 	push	#<(_main_placeholderTemperatureBME280String_65537_219+0)
      00AD01 4B 82            [ 1]  452 	push	#((_main_placeholderTemperatureBME280String_65537_219+0) >> 8)
      00AD03 CE 06 56         [ 2]  453 	ldw	x, _stringSendUART+0
      00AD06 89               [ 2]  454 	pushw	x
      00AD07 CD B8 01         [ 4]  455 	call	_sprintf
      00AD0A 5B 06            [ 2]  456 	addw	sp, #6
                                    457 ;	src\main.c: 353: putchar(0x00);
      00AD0C 5F               [ 1]  458 	clrw	x
      00AD0D CD AE 6F         [ 4]  459 	call	_putchar
                                    460 ;	src\main.c: 354: putchar(0x00);
      00AD10 5F               [ 1]  461 	clrw	x
      00AD11 CD AE 6F         [ 4]  462 	call	_putchar
                                    463 ;	src\main.c: 355: putchar(0x18);
      00AD14 AE 00 18         [ 2]  464 	ldw	x, #0x0018
      00AD17 CD AE 6F         [ 4]  465 	call	_putchar
                                    466 ;	src\main.c: 356: printf("%s\r\n", stringSendUART);
      00AD1A CE 06 56         [ 2]  467 	ldw	x, _stringSendUART+0
      00AD1D 89               [ 2]  468 	pushw	x
      00AD1E 4B 13            [ 1]  469 	push	#<(___str_4+0)
      00AD20 4B 83            [ 1]  470 	push	#((___str_4+0) >> 8)
      00AD22 CD B9 18         [ 4]  471 	call	_printf
      00AD25 5B 04            [ 2]  472 	addw	sp, #4
                                    473 ;	src\main.c: 358: free(stringSendUART);
      00AD27 CE 06 56         [ 2]  474 	ldw	x, _stringSendUART+0
      00AD2A CD B0 C9         [ 4]  475 	call	_free
                                    476 ;	src\main.c: 359: free(stringValue);
      00AD2D CE 06 58         [ 2]  477 	ldw	x, _stringValue+0
      00AD30 CD B0 C9         [ 4]  478 	call	_free
                                    479 ;	src\main.c: 361: integer_bit = 2;
      00AD33 35 02 01 42      [ 1]  480 	mov	_integer_bit+0, #0x02
                                    481 ;	src\main.c: 362: decimal_bit = 2;
      00AD37 35 02 01 43      [ 1]  482 	mov	_decimal_bit+0, #0x02
                                    483 ;	src\main.c: 364: fBME280Humidity = BME280_ReadHumidity();
      00AD3B CD A3 09         [ 4]  484 	call	_BME280_ReadHumidity
      00AD3E CF 06 50         [ 2]  485 	ldw	_fBME280Humidity+2, x
      00AD41 90 CF 06 4E      [ 2]  486 	ldw	_fBME280Humidity+0, y
                                    487 ;	src\main.c: 365: delay_ms(2000);
      00AD45 AE 07 D0         [ 2]  488 	ldw	x, #0x07d0
      00AD48 CD A5 81         [ 4]  489 	call	_delay_ms
                                    490 ;	src\main.c: 367: sizeValueString = integer_bit + decimal_bit + 1;
      00AD4B C6 01 42         [ 1]  491 	ld	a, _integer_bit+0
      00AD4E CB 01 43         [ 1]  492 	add	a, _decimal_bit+0
      00AD51 4C               [ 1]  493 	inc	a
                                    494 ;	src\main.c: 368: sizeSendUARTString = sizeof(placeholderHumidityBME280String) + sizeValueString;
      00AD52 C7 06 5A         [ 1]  495 	ld	_sizeValueString+0, a
      00AD55 AB 32            [ 1]  496 	add	a, #0x32
      00AD57 C7 06 5B         [ 1]  497 	ld	_sizeSendUARTString+0, a
                                    498 ;	src\main.c: 369: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00AD5A C6 06 5A         [ 1]  499 	ld	a, _sizeValueString+0
      00AD5D 5F               [ 1]  500 	clrw	x
      00AD5E 97               [ 1]  501 	ld	xl, a
      00AD5F CD B5 1F         [ 4]  502 	call	_malloc
      00AD62 CF 06 58         [ 2]  503 	ldw	_stringValue+0, x
                                    504 ;	src\main.c: 370: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00AD65 C6 06 5B         [ 1]  505 	ld	a, _sizeSendUARTString+0
      00AD68 5F               [ 1]  506 	clrw	x
      00AD69 97               [ 1]  507 	ld	xl, a
      00AD6A CD B5 1F         [ 4]  508 	call	_malloc
      00AD6D CF 06 56         [ 2]  509 	ldw	_stringSendUART+0, x
                                    510 ;	src\main.c: 372: floatToStr(stringValue, fBME280Humidity, integer_bit, decimal_bit);
      00AD70 3B 01 43         [ 1]  511 	push	_decimal_bit+0
      00AD73 3B 01 42         [ 1]  512 	push	_integer_bit+0
      00AD76 CE 06 50         [ 2]  513 	ldw	x, _fBME280Humidity+2
      00AD79 89               [ 2]  514 	pushw	x
      00AD7A CE 06 4E         [ 2]  515 	ldw	x, _fBME280Humidity+0
      00AD7D 89               [ 2]  516 	pushw	x
      00AD7E CE 06 58         [ 2]  517 	ldw	x, _stringValue+0
      00AD81 CD AE 97         [ 4]  518 	call	_floatToStr
                                    519 ;	src\main.c: 373: sprintf(stringSendUART, placeholderHumidityBME280String, stringValue);
      00AD84 CE 06 58         [ 2]  520 	ldw	x, _stringValue+0
      00AD87 89               [ 2]  521 	pushw	x
      00AD88 4B AF            [ 1]  522 	push	#<(_main_placeholderHumidityBME280String_65537_219+0)
      00AD8A 4B 82            [ 1]  523 	push	#((_main_placeholderHumidityBME280String_65537_219+0) >> 8)
      00AD8C CE 06 56         [ 2]  524 	ldw	x, _stringSendUART+0
      00AD8F 89               [ 2]  525 	pushw	x
      00AD90 CD B8 01         [ 4]  526 	call	_sprintf
      00AD93 5B 06            [ 2]  527 	addw	sp, #6
                                    528 ;	src\main.c: 378: putchar(0x00);
      00AD95 5F               [ 1]  529 	clrw	x
      00AD96 CD AE 6F         [ 4]  530 	call	_putchar
                                    531 ;	src\main.c: 379: putchar(0x00);
      00AD99 5F               [ 1]  532 	clrw	x
      00AD9A CD AE 6F         [ 4]  533 	call	_putchar
                                    534 ;	src\main.c: 380: putchar(0x18);
      00AD9D AE 00 18         [ 2]  535 	ldw	x, #0x0018
      00ADA0 CD AE 6F         [ 4]  536 	call	_putchar
                                    537 ;	src\main.c: 381: printf("%s\r\n", stringSendUART);
      00ADA3 CE 06 56         [ 2]  538 	ldw	x, _stringSendUART+0
      00ADA6 89               [ 2]  539 	pushw	x
      00ADA7 4B 13            [ 1]  540 	push	#<(___str_4+0)
      00ADA9 4B 83            [ 1]  541 	push	#((___str_4+0) >> 8)
      00ADAB CD B9 18         [ 4]  542 	call	_printf
      00ADAE 5B 04            [ 2]  543 	addw	sp, #4
                                    544 ;	src\main.c: 383: free(stringSendUART);
      00ADB0 CE 06 56         [ 2]  545 	ldw	x, _stringSendUART+0
      00ADB3 CD B0 C9         [ 4]  546 	call	_free
                                    547 ;	src\main.c: 384: free(stringValue);
      00ADB6 CE 06 58         [ 2]  548 	ldw	x, _stringValue+0
      00ADB9 CD B0 C9         [ 4]  549 	call	_free
                                    550 ;	src\main.c: 386: integer_bit = 5;
      00ADBC 35 05 01 42      [ 1]  551 	mov	_integer_bit+0, #0x05
                                    552 ;	src\main.c: 387: decimal_bit = 1;
      00ADC0 35 01 01 43      [ 1]  553 	mov	_decimal_bit+0, #0x01
                                    554 ;	src\main.c: 389: fBME280Pressure = BME280_ReadPressure();
      00ADC4 CD A1 66         [ 4]  555 	call	_BME280_ReadPressure
      00ADC7 89               [ 2]  556 	pushw	x
      00ADC8 90 89            [ 2]  557 	pushw	y
      00ADCA CD B3 16         [ 4]  558 	call	___fs2ulong
      00ADCD 5B 04            [ 2]  559 	addw	sp, #4
      00ADCF CF 06 54         [ 2]  560 	ldw	_fBME280Pressure+2, x
      00ADD2 90 CF 06 52      [ 2]  561 	ldw	_fBME280Pressure+0, y
                                    562 ;	src\main.c: 390: delay_ms(2000);
      00ADD6 AE 07 D0         [ 2]  563 	ldw	x, #0x07d0
      00ADD9 CD A5 81         [ 4]  564 	call	_delay_ms
                                    565 ;	src\main.c: 392: sizeValueString = integer_bit + decimal_bit + 1;
      00ADDC C6 01 42         [ 1]  566 	ld	a, _integer_bit+0
      00ADDF CB 01 43         [ 1]  567 	add	a, _decimal_bit+0
      00ADE2 4C               [ 1]  568 	inc	a
                                    569 ;	src\main.c: 393: sizeSendUARTString = sizeof(placeholderPressureBME280String) + sizeValueString;
      00ADE3 C7 06 5A         [ 1]  570 	ld	_sizeValueString+0, a
      00ADE6 AB 32            [ 1]  571 	add	a, #0x32
      00ADE8 C7 06 5B         [ 1]  572 	ld	_sizeSendUARTString+0, a
                                    573 ;	src\main.c: 394: stringValue = (char*)malloc(sizeValueString * sizeof(char));
      00ADEB 5F               [ 1]  574 	clrw	x
      00ADEC C6 06 5A         [ 1]  575 	ld	a, _sizeValueString+0
      00ADEF 97               [ 1]  576 	ld	xl, a
      00ADF0 CD B5 1F         [ 4]  577 	call	_malloc
      00ADF3 CF 06 58         [ 2]  578 	ldw	_stringValue+0, x
                                    579 ;	src\main.c: 395: stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
      00ADF6 C6 06 5B         [ 1]  580 	ld	a, _sizeSendUARTString+0
      00ADF9 5F               [ 1]  581 	clrw	x
      00ADFA 97               [ 1]  582 	ld	xl, a
      00ADFB CD B5 1F         [ 4]  583 	call	_malloc
      00ADFE CF 06 56         [ 2]  584 	ldw	_stringSendUART+0, x
                                    585 ;	src\main.c: 397: floatToStr(stringValue, (float)fBME280Pressure, integer_bit, decimal_bit);
      00AE01 CE 06 54         [ 2]  586 	ldw	x, _fBME280Pressure+2
      00AE04 89               [ 2]  587 	pushw	x
      00AE05 CE 06 52         [ 2]  588 	ldw	x, _fBME280Pressure+0
      00AE08 89               [ 2]  589 	pushw	x
      00AE09 CD B3 DD         [ 4]  590 	call	___ulong2fs
      00AE0C 5B 04            [ 2]  591 	addw	sp, #4
      00AE0E 3B 01 43         [ 1]  592 	push	_decimal_bit+0
      00AE11 3B 01 42         [ 1]  593 	push	_integer_bit+0
      00AE14 89               [ 2]  594 	pushw	x
      00AE15 90 89            [ 2]  595 	pushw	y
      00AE17 CE 06 58         [ 2]  596 	ldw	x, _stringValue+0
      00AE1A CD AE 97         [ 4]  597 	call	_floatToStr
                                    598 ;	src\main.c: 398: sprintf(stringSendUART, placeholderPressureBME280String, stringValue);
      00AE1D CE 06 58         [ 2]  599 	ldw	x, _stringValue+0
      00AE20 89               [ 2]  600 	pushw	x
      00AE21 4B E1            [ 1]  601 	push	#<(_main_placeholderPressureBME280String_65537_219+0)
      00AE23 4B 82            [ 1]  602 	push	#((_main_placeholderPressureBME280String_65537_219+0) >> 8)
      00AE25 CE 06 56         [ 2]  603 	ldw	x, _stringSendUART+0
      00AE28 89               [ 2]  604 	pushw	x
      00AE29 CD B8 01         [ 4]  605 	call	_sprintf
      00AE2C 5B 06            [ 2]  606 	addw	sp, #6
                                    607 ;	src\main.c: 403: putchar(0x00);
      00AE2E 5F               [ 1]  608 	clrw	x
      00AE2F CD AE 6F         [ 4]  609 	call	_putchar
                                    610 ;	src\main.c: 404: putchar(0x00);
      00AE32 5F               [ 1]  611 	clrw	x
      00AE33 CD AE 6F         [ 4]  612 	call	_putchar
                                    613 ;	src\main.c: 405: putchar(0x18);
      00AE36 AE 00 18         [ 2]  614 	ldw	x, #0x0018
      00AE39 CD AE 6F         [ 4]  615 	call	_putchar
                                    616 ;	src\main.c: 406: printf("%s\r\n", stringSendUART);
      00AE3C CE 06 56         [ 2]  617 	ldw	x, _stringSendUART+0
      00AE3F 89               [ 2]  618 	pushw	x
      00AE40 4B 13            [ 1]  619 	push	#<(___str_4+0)
      00AE42 4B 83            [ 1]  620 	push	#((___str_4+0) >> 8)
      00AE44 CD B9 18         [ 4]  621 	call	_printf
      00AE47 5B 04            [ 2]  622 	addw	sp, #4
                                    623 ;	src\main.c: 408: free(stringSendUART);
      00AE49 CE 06 56         [ 2]  624 	ldw	x, _stringSendUART+0
      00AE4C CD B0 C9         [ 4]  625 	call	_free
                                    626 ;	src\main.c: 409: free(stringValue);
      00AE4F CE 06 58         [ 2]  627 	ldw	x, _stringValue+0
      00AE52 CD B0 C9         [ 4]  628 	call	_free
                                    629 ;	src\main.c: 419: for (uint8_t i = 0; i < 9; i++) {
      00AE55 4F               [ 1]  630 	clr	a
      00AE56                        631 00112$:
      00AE56 A1 09            [ 1]  632 	cp	a, #0x09
      00AE58 24 0A            [ 1]  633 	jrnc	00104$
                                    634 ;	src\main.c: 420: delay_ms(65535);
      00AE5A 88               [ 1]  635 	push	a
      00AE5B 5F               [ 1]  636 	clrw	x
      00AE5C 5A               [ 2]  637 	decw	x
      00AE5D CD A5 81         [ 4]  638 	call	_delay_ms
      00AE60 84               [ 1]  639 	pop	a
                                    640 ;	src\main.c: 419: for (uint8_t i = 0; i < 9; i++) {
      00AE61 4C               [ 1]  641 	inc	a
      00AE62 20 F2            [ 2]  642 	jra	00112$
      00AE64                        643 00104$:
                                    644 ;	src\main.c: 424: LED_OFF;
      00AE64 A6 20            [ 1]  645 	ld	a, #0x20
      00AE66 AE 50 14         [ 2]  646 	ldw	x, #0x5014
      00AE69 CD 8A C9         [ 4]  647 	call	_GPIO_WriteHigh
                                    648 ;	src\main.c: 434: }
      00AE6C CC AC 05         [ 2]  649 	jp	00106$
                                    650 ;	src\main.c: 441: PUTCHAR_PROTOTYPE
                                    651 ;	-----------------------------------------
                                    652 ;	 function putchar
                                    653 ;	-----------------------------------------
      00AE6F                        654 _putchar:
                                    655 ;	src\main.c: 444: UART_SENDDATA8(c);
      00AE6F 9F               [ 1]  656 	ld	a, xl
      00AE70 89               [ 2]  657 	pushw	x
      00AE71 CD 97 17         [ 4]  658 	call	_UART2_SendData8
      00AE74 85               [ 2]  659 	popw	x
                                    660 ;	src\main.c: 446: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
      00AE75                        661 00101$:
      00AE75 89               [ 2]  662 	pushw	x
      00AE76 AE 00 80         [ 2]  663 	ldw	x, #0x0080
      00AE79 CD 97 6A         [ 4]  664 	call	_UART2_GetFlagStatus
      00AE7C 85               [ 2]  665 	popw	x
      00AE7D 4D               [ 1]  666 	tnz	a
      00AE7E 27 F5            [ 1]  667 	jreq	00101$
                                    668 ;	src\main.c: 448: return (c);
                                    669 ;	src\main.c: 449: }
      00AE80 81               [ 4]  670 	ret
                                    671 ;	src\main.c: 456: GETCHAR_PROTOTYPE
                                    672 ;	-----------------------------------------
                                    673 ;	 function getchar
                                    674 ;	-----------------------------------------
      00AE81                        675 _getchar:
                                    676 ;	src\main.c: 464: while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
      00AE81                        677 00101$:
      00AE81 AE 00 80         [ 2]  678 	ldw	x, #0x0080
      00AE84 CD 97 6A         [ 4]  679 	call	_UART2_GetFlagStatus
      00AE87 4D               [ 1]  680 	tnz	a
      00AE88 27 F7            [ 1]  681 	jreq	00101$
                                    682 ;	src\main.c: 465: c = UART_RECEIVEDATA8();
      00AE8A CD 96 F8         [ 4]  683 	call	_UART2_ReceiveData8
      00AE8D 5F               [ 1]  684 	clrw	x
                                    685 ;	src\main.c: 466: return (c);
      00AE8E 97               [ 1]  686 	ld	xl, a
                                    687 ;	src\main.c: 467: }
      00AE8F 81               [ 4]  688 	ret
                                    689 ;	src\main.c: 478: void assert_failed(uint8_t* file, uint32_t line)
                                    690 ;	-----------------------------------------
                                    691 ;	 function assert_failed
                                    692 ;	-----------------------------------------
      00AE90                        693 _assert_failed:
                                    694 ;	src\main.c: 485: while (1)
      00AE90                        695 00102$:
      00AE90 20 FE            [ 2]  696 	jra	00102$
                                    697 ;	src\main.c: 488: }
      00AE92 1E 01            [ 2]  698 	ldw	x, (1, sp)
      00AE94 5B 06            [ 2]  699 	addw	sp, #6
      00AE96 FC               [ 2]  700 	jp	(x)
                                    701 	.area CODE
                                    702 	.area CONST
      008246                        703 _main_placeholderDS18X20String_65537_219:
      008246 7B                     704 	.ascii "{"
      008247 22                     705 	.db 0x22
      008248 74 6F 70 69 63         706 	.ascii "topic"
      00824D 22                     707 	.db 0x22
      00824E 20 3A 20               708 	.ascii " : "
      008251 22                     709 	.db 0x22
      008252 6D 71 74 74 2F 74 65   710 	.ascii "mqtt/temperature-room"
             6D 70 65 72 61 74 75
             72 65 2D 72 6F 6F 6D
      008267 22                     711 	.db 0x22
      008268 2C 20                  712 	.ascii ", "
      00826A 22                     713 	.db 0x22
      00826B 76 61 6C 75 65         714 	.ascii "value"
      008270 22                     715 	.db 0x22
      008271 20 3A 20               716 	.ascii " : "
      008274 22                     717 	.db 0x22
      008275 25 73                  718 	.ascii "%s"
      008277 22                     719 	.db 0x22
      008278 7D                     720 	.ascii "}"
      008279 00                     721 	.db 0x00
      00827A                        722 _main_placeholderTemperatureBME280String_65537_219:
      00827A 7B                     723 	.ascii "{"
      00827B 22                     724 	.db 0x22
      00827C 74 6F 70 69 63         725 	.ascii "topic"
      008281 22                     726 	.db 0x22
      008282 20 3A 20               727 	.ascii " : "
      008285 22                     728 	.db 0x22
      008286 6D 71 74 74 2F 74 65   729 	.ascii "mqtt/temperature-bme280"
             6D 70 65 72 61 74 75
             72 65 2D 62 6D 65 32
             38 30
      00829D 22                     730 	.db 0x22
      00829E 2C 20                  731 	.ascii ", "
      0082A0 22                     732 	.db 0x22
      0082A1 76 61 6C 75 65         733 	.ascii "value"
      0082A6 22                     734 	.db 0x22
      0082A7 3A 20                  735 	.ascii ": "
      0082A9 22                     736 	.db 0x22
      0082AA 25 73                  737 	.ascii "%s"
      0082AC 22                     738 	.db 0x22
      0082AD 7D                     739 	.ascii "}"
      0082AE 00                     740 	.db 0x00
      0082AF                        741 _main_placeholderHumidityBME280String_65537_219:
      0082AF 7B                     742 	.ascii "{"
      0082B0 22                     743 	.db 0x22
      0082B1 74 6F 70 69 63         744 	.ascii "topic"
      0082B6 22                     745 	.db 0x22
      0082B7 20 3A 20               746 	.ascii " : "
      0082BA 22                     747 	.db 0x22
      0082BB 6D 71 74 74 2F 68 75   748 	.ascii "mqtt/humidity-bme280"
             6D 69 64 69 74 79 2D
             62 6D 65 32 38 30
      0082CF 22                     749 	.db 0x22
      0082D0 2C 20                  750 	.ascii ", "
      0082D2 22                     751 	.db 0x22
      0082D3 76 61 6C 75 65         752 	.ascii "value"
      0082D8 22                     753 	.db 0x22
      0082D9 3A 20                  754 	.ascii ": "
      0082DB 22                     755 	.db 0x22
      0082DC 25 73                  756 	.ascii "%s"
      0082DE 22                     757 	.db 0x22
      0082DF 7D                     758 	.ascii "}"
      0082E0 00                     759 	.db 0x00
      0082E1                        760 _main_placeholderPressureBME280String_65537_219:
      0082E1 7B                     761 	.ascii "{"
      0082E2 22                     762 	.db 0x22
      0082E3 74 6F 70 69 63         763 	.ascii "topic"
      0082E8 22                     764 	.db 0x22
      0082E9 20 3A 20               765 	.ascii " : "
      0082EC 22                     766 	.db 0x22
      0082ED 6D 71 74 74 2F 70 72   767 	.ascii "mqtt/pressure-bme280"
             65 73 73 75 72 65 2D
             62 6D 65 32 38 30
      008301 22                     768 	.db 0x22
      008302 2C 20                  769 	.ascii ", "
      008304 22                     770 	.db 0x22
      008305 76 61 6C 75 65         771 	.ascii "value"
      00830A 22                     772 	.db 0x22
      00830B 3A 20                  773 	.ascii ": "
      00830D 22                     774 	.db 0x22
      00830E 25 73                  775 	.ascii "%s"
      008310 22                     776 	.db 0x22
      008311 7D                     777 	.ascii "}"
      008312 00                     778 	.db 0x00
                                    779 	.area CONST
      008313                        780 ___str_4:
      008313 25 73                  781 	.ascii "%s"
      008315 0D                     782 	.db 0x0d
      008316 0A                     783 	.db 0x0a
      008317 00                     784 	.db 0x00
                                    785 	.area CODE
                                    786 	.area INITIALIZER
      00832D                        787 __xinit__fDS18X20Temperature:
      00832D C2 C8 00 00            788 	.byte #0xc2, #0xc8, #0x00, #0x00	; -1.000000e+02
      008331                        789 __xinit__fBME280Temperature:
      008331 00 00 00 00            790 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
      008335                        791 __xinit__fBME280Humidity:
      008335 00 00 00 00            792 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
      008339                        793 __xinit__fBME280Pressure:
      008339 00 00 00 00            794 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      00833D                        795 __xinit__stringSendUART:
      00833D 00 00                  796 	.dw #0x0000
      00833F                        797 __xinit__stringValue:
      00833F 00 00                  798 	.dw #0x0000
      008341                        799 __xinit__sizeValueString:
      008341 00                     800 	.db #0x00	; 0
      008342                        801 __xinit__sizeSendUARTString:
      008342 00                     802 	.db #0x00	; 0
                                    803 	.area CABS (ABS)
