                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_i2c
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _I2C_DeInit
                                     13 	.globl _I2C_Init
                                     14 	.globl _I2C_Cmd
                                     15 	.globl _I2C_GeneralCallCmd
                                     16 	.globl _I2C_GenerateSTART
                                     17 	.globl _I2C_GenerateSTOP
                                     18 	.globl _I2C_SoftwareResetCmd
                                     19 	.globl _I2C_StretchClockCmd
                                     20 	.globl _I2C_AcknowledgeConfig
                                     21 	.globl _I2C_ITConfig
                                     22 	.globl _I2C_FastModeDutyCycleConfig
                                     23 	.globl _I2C_ReceiveData
                                     24 	.globl _I2C_Send7bitAddress
                                     25 	.globl _I2C_SendData
                                     26 	.globl _I2C_CheckEvent
                                     27 	.globl _I2C_GetLastEvent
                                     28 	.globl _I2C_GetFlagStatus
                                     29 	.globl _I2C_ClearFlag
                                     30 	.globl _I2C_GetITStatus
                                     31 	.globl _I2C_ClearITPendingBit
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DATA
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area INITIALIZED
                                     40 ;--------------------------------------------------------
                                     41 ; absolute external ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area DABS (ABS)
                                     44 
                                     45 ; default segment ordering for linker
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area CONST
                                     50 	.area INITIALIZER
                                     51 	.area CODE
                                     52 
                                     53 ;--------------------------------------------------------
                                     54 ; global & static initialisations
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area GSINIT
                                     58 	.area GSFINAL
                                     59 	.area GSINIT
                                     60 ;--------------------------------------------------------
                                     61 ; Home
                                     62 ;--------------------------------------------------------
                                     63 	.area HOME
                                     64 	.area HOME
                                     65 ;--------------------------------------------------------
                                     66 ; code
                                     67 ;--------------------------------------------------------
                                     68 	.area CODE
                                     69 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 67: void I2C_DeInit(void)
                                     70 ;	-----------------------------------------
                                     71 ;	 function I2C_DeInit
                                     72 ;	-----------------------------------------
      008AF7                         73 _I2C_DeInit:
                                     74 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 69: I2C->CR1 = I2C_CR1_RESET_VALUE;
      008AF7 35 00 52 10      [ 1]   75 	mov	0x5210+0, #0x00
                                     76 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 70: I2C->CR2 = I2C_CR2_RESET_VALUE;
      008AFB 35 00 52 11      [ 1]   77 	mov	0x5211+0, #0x00
                                     78 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 71: I2C->FREQR = I2C_FREQR_RESET_VALUE;
      008AFF 35 00 52 12      [ 1]   79 	mov	0x5212+0, #0x00
                                     80 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 72: I2C->OARL = I2C_OARL_RESET_VALUE;
      008B03 35 00 52 13      [ 1]   81 	mov	0x5213+0, #0x00
                                     82 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 73: I2C->OARH = I2C_OARH_RESET_VALUE;
      008B07 35 00 52 14      [ 1]   83 	mov	0x5214+0, #0x00
                                     84 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 74: I2C->ITR = I2C_ITR_RESET_VALUE;
      008B0B 35 00 52 1A      [ 1]   85 	mov	0x521a+0, #0x00
                                     86 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 75: I2C->CCRL = I2C_CCRL_RESET_VALUE;
      008B0F 35 00 52 1B      [ 1]   87 	mov	0x521b+0, #0x00
                                     88 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 76: I2C->CCRH = I2C_CCRH_RESET_VALUE;
      008B13 35 00 52 1C      [ 1]   89 	mov	0x521c+0, #0x00
                                     90 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 77: I2C->TRISER = I2C_TRISER_RESET_VALUE;
      008B17 35 02 52 1D      [ 1]   91 	mov	0x521d+0, #0x02
                                     92 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 78: }
      008B1B 81               [ 4]   93 	ret
                                     94 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 96: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
                                     95 ;	-----------------------------------------
                                     96 ;	 function I2C_Init
                                     97 ;	-----------------------------------------
      008B1C                         98 _I2C_Init:
      008B1C 52 07            [ 2]   99 	sub	sp, #7
                                    100 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 102: uint8_t tmpccrh = 0;
      008B1E 0F 05            [ 1]  101 	clr	(0x05, sp)
                                    102 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 105: assert_param(IS_I2C_ACK_OK(Ack));
      008B20 0D 11            [ 1]  103 	tnz	(0x11, sp)
      008B22 27 17            [ 1]  104 	jreq	00114$
      008B24 7B 11            [ 1]  105 	ld	a, (0x11, sp)
      008B26 4A               [ 1]  106 	dec	a
      008B27 27 12            [ 1]  107 	jreq	00114$
      008B29 7B 11            [ 1]  108 	ld	a, (0x11, sp)
      008B2B A1 02            [ 1]  109 	cp	a, #0x02
      008B2D 27 0C            [ 1]  110 	jreq	00114$
      008B2F 4B 69            [ 1]  111 	push	#0x69
      008B31 5F               [ 1]  112 	clrw	x
      008B32 89               [ 2]  113 	pushw	x
      008B33 4B 00            [ 1]  114 	push	#0x00
      008B35 AE 81 6E         [ 2]  115 	ldw	x, #(___str_0+0)
      008B38 CD AB 2D         [ 4]  116 	call	_assert_failed
      008B3B                        117 00114$:
                                    118 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 106: assert_param(IS_I2C_ADDMODE_OK(AddMode));
      008B3B 0D 12            [ 1]  119 	tnz	(0x12, sp)
      008B3D 27 12            [ 1]  120 	jreq	00122$
      008B3F 7B 12            [ 1]  121 	ld	a, (0x12, sp)
      008B41 A1 80            [ 1]  122 	cp	a, #0x80
      008B43 27 0C            [ 1]  123 	jreq	00122$
      008B45 4B 6A            [ 1]  124 	push	#0x6a
      008B47 5F               [ 1]  125 	clrw	x
      008B48 89               [ 2]  126 	pushw	x
      008B49 4B 00            [ 1]  127 	push	#0x00
      008B4B AE 81 6E         [ 2]  128 	ldw	x, #(___str_0+0)
      008B4E CD AB 2D         [ 4]  129 	call	_assert_failed
      008B51                        130 00122$:
                                    131 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 107: assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
      008B51 1E 0E            [ 2]  132 	ldw	x, (0x0e, sp)
      008B53 A3 03 FF         [ 2]  133 	cpw	x, #0x03ff
      008B56 23 0C            [ 2]  134 	jrule	00127$
      008B58 4B 6B            [ 1]  135 	push	#0x6b
      008B5A 5F               [ 1]  136 	clrw	x
      008B5B 89               [ 2]  137 	pushw	x
      008B5C 4B 00            [ 1]  138 	push	#0x00
      008B5E AE 81 6E         [ 2]  139 	ldw	x, #(___str_0+0)
      008B61 CD AB 2D         [ 4]  140 	call	_assert_failed
      008B64                        141 00127$:
                                    142 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 108: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
      008B64 0D 10            [ 1]  143 	tnz	(0x10, sp)
      008B66 27 12            [ 1]  144 	jreq	00129$
      008B68 7B 10            [ 1]  145 	ld	a, (0x10, sp)
      008B6A A1 40            [ 1]  146 	cp	a, #0x40
      008B6C 27 0C            [ 1]  147 	jreq	00129$
      008B6E 4B 6C            [ 1]  148 	push	#0x6c
      008B70 5F               [ 1]  149 	clrw	x
      008B71 89               [ 2]  150 	pushw	x
      008B72 4B 00            [ 1]  151 	push	#0x00
      008B74 AE 81 6E         [ 2]  152 	ldw	x, #(___str_0+0)
      008B77 CD AB 2D         [ 4]  153 	call	_assert_failed
      008B7A                        154 00129$:
                                    155 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 109: assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
      008B7A 7B 13            [ 1]  156 	ld	a, (0x13, sp)
      008B7C A1 01            [ 1]  157 	cp	a, #0x01
      008B7E 25 06            [ 1]  158 	jrc	00133$
      008B80 7B 13            [ 1]  159 	ld	a, (0x13, sp)
      008B82 A1 10            [ 1]  160 	cp	a, #0x10
      008B84 23 0C            [ 2]  161 	jrule	00134$
      008B86                        162 00133$:
      008B86 4B 6D            [ 1]  163 	push	#0x6d
      008B88 5F               [ 1]  164 	clrw	x
      008B89 89               [ 2]  165 	pushw	x
      008B8A 4B 00            [ 1]  166 	push	#0x00
      008B8C AE 81 6E         [ 2]  167 	ldw	x, #(___str_0+0)
      008B8F CD AB 2D         [ 4]  168 	call	_assert_failed
      008B92                        169 00134$:
                                    170 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 110: assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
      008B92 1E 0C            [ 2]  171 	ldw	x, (0x0c, sp)
      008B94 A3 00 01         [ 2]  172 	cpw	x, #0x0001
      008B97 7B 0B            [ 1]  173 	ld	a, (0x0b, sp)
      008B99 A2 00            [ 1]  174 	sbc	a, #0x00
      008B9B 7B 0A            [ 1]  175 	ld	a, (0x0a, sp)
      008B9D A2 00            [ 1]  176 	sbc	a, #0x00
      008B9F 25 0E            [ 1]  177 	jrc	00138$
      008BA1 AE 1A 80         [ 2]  178 	ldw	x, #0x1a80
      008BA4 13 0C            [ 2]  179 	cpw	x, (0x0c, sp)
      008BA6 A6 06            [ 1]  180 	ld	a, #0x06
      008BA8 12 0B            [ 1]  181 	sbc	a, (0x0b, sp)
      008BAA 4F               [ 1]  182 	clr	a
      008BAB 12 0A            [ 1]  183 	sbc	a, (0x0a, sp)
      008BAD 24 0C            [ 1]  184 	jrnc	00139$
      008BAF                        185 00138$:
      008BAF 4B 6E            [ 1]  186 	push	#0x6e
      008BB1 5F               [ 1]  187 	clrw	x
      008BB2 89               [ 2]  188 	pushw	x
      008BB3 4B 00            [ 1]  189 	push	#0x00
      008BB5 AE 81 6E         [ 2]  190 	ldw	x, #(___str_0+0)
      008BB8 CD AB 2D         [ 4]  191 	call	_assert_failed
      008BBB                        192 00139$:
                                    193 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 115: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
      008BBB C6 52 12         [ 1]  194 	ld	a, 0x5212
      008BBE A4 C0            [ 1]  195 	and	a, #0xc0
      008BC0 C7 52 12         [ 1]  196 	ld	0x5212, a
                                    197 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 117: I2C->FREQR |= InputClockFrequencyMHz;
      008BC3 C6 52 12         [ 1]  198 	ld	a, 0x5212
      008BC6 1A 13            [ 1]  199 	or	a, (0x13, sp)
      008BC8 C7 52 12         [ 1]  200 	ld	0x5212, a
                                    201 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 121: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008BCB 72 11 52 10      [ 1]  202 	bres	0x5210, #0
                                    203 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 124: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
      008BCF C6 52 1C         [ 1]  204 	ld	a, 0x521c
      008BD2 A4 30            [ 1]  205 	and	a, #0x30
      008BD4 C7 52 1C         [ 1]  206 	ld	0x521c, a
                                    207 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 125: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
      008BD7 C6 52 1B         [ 1]  208 	ld	a, 0x521b
      008BDA 35 00 52 1B      [ 1]  209 	mov	0x521b+0, #0x00
                                    210 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008BDE 5F               [ 1]  211 	clrw	x
      008BDF 7B 13            [ 1]  212 	ld	a, (0x13, sp)
      008BE1 97               [ 1]  213 	ld	xl, a
      008BE2 90 5F            [ 1]  214 	clrw	y
      008BE4 89               [ 2]  215 	pushw	x
      008BE5 90 89            [ 2]  216 	pushw	y
      008BE7 4B 40            [ 1]  217 	push	#0x40
      008BE9 4B 42            [ 1]  218 	push	#0x42
      008BEB 4B 0F            [ 1]  219 	push	#0x0f
      008BED 4B 00            [ 1]  220 	push	#0x00
      008BEF CD B5 9E         [ 4]  221 	call	__mullong
      008BF2 5B 08            [ 2]  222 	addw	sp, #8
      008BF4 1F 03            [ 2]  223 	ldw	(0x03, sp), x
      008BF6 17 01            [ 2]  224 	ldw	(0x01, sp), y
                                    225 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 128: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
      008BF8 AE 86 A0         [ 2]  226 	ldw	x, #0x86a0
      008BFB 13 0C            [ 2]  227 	cpw	x, (0x0c, sp)
      008BFD A6 01            [ 1]  228 	ld	a, #0x01
      008BFF 12 0B            [ 1]  229 	sbc	a, (0x0b, sp)
      008C01 4F               [ 1]  230 	clr	a
      008C02 12 0A            [ 1]  231 	sbc	a, (0x0a, sp)
      008C04 24 76            [ 1]  232 	jrnc	00109$
                                    233 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 131: tmpccrh = I2C_CCRH_FS;
      008C06 A6 80            [ 1]  234 	ld	a, #0x80
      008C08 6B 05            [ 1]  235 	ld	(0x05, sp), a
                                    236 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 133: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
      008C0A 0D 10            [ 1]  237 	tnz	(0x10, sp)
      008C0C 26 21            [ 1]  238 	jrne	00102$
                                    239 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008C0E 1E 0C            [ 2]  240 	ldw	x, (0x0c, sp)
      008C10 89               [ 2]  241 	pushw	x
      008C11 1E 0C            [ 2]  242 	ldw	x, (0x0c, sp)
      008C13 89               [ 2]  243 	pushw	x
      008C14 4B 03            [ 1]  244 	push	#0x03
      008C16 5F               [ 1]  245 	clrw	x
      008C17 89               [ 2]  246 	pushw	x
      008C18 4B 00            [ 1]  247 	push	#0x00
      008C1A CD B5 9E         [ 4]  248 	call	__mullong
      008C1D 5B 08            [ 2]  249 	addw	sp, #8
      008C1F 89               [ 2]  250 	pushw	x
      008C20 90 89            [ 2]  251 	pushw	y
      008C22 1E 07            [ 2]  252 	ldw	x, (0x07, sp)
      008C24 89               [ 2]  253 	pushw	x
      008C25 1E 07            [ 2]  254 	ldw	x, (0x07, sp)
      008C27 89               [ 2]  255 	pushw	x
      008C28 CD B2 D3         [ 4]  256 	call	__divulong
      008C2B 5B 08            [ 2]  257 	addw	sp, #8
      008C2D 20 26            [ 2]  258 	jra	00103$
      008C2F                        259 00102$:
                                    260 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 141: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
      008C2F 1E 0C            [ 2]  261 	ldw	x, (0x0c, sp)
      008C31 89               [ 2]  262 	pushw	x
      008C32 1E 0C            [ 2]  263 	ldw	x, (0x0c, sp)
      008C34 89               [ 2]  264 	pushw	x
      008C35 4B 19            [ 1]  265 	push	#0x19
      008C37 5F               [ 1]  266 	clrw	x
      008C38 89               [ 2]  267 	pushw	x
      008C39 4B 00            [ 1]  268 	push	#0x00
      008C3B CD B5 9E         [ 4]  269 	call	__mullong
      008C3E 5B 08            [ 2]  270 	addw	sp, #8
      008C40 9F               [ 1]  271 	ld	a, xl
      008C41 88               [ 1]  272 	push	a
      008C42 9E               [ 1]  273 	ld	a, xh
      008C43 88               [ 1]  274 	push	a
      008C44 90 89            [ 2]  275 	pushw	y
      008C46 1E 07            [ 2]  276 	ldw	x, (0x07, sp)
      008C48 89               [ 2]  277 	pushw	x
      008C49 1E 07            [ 2]  278 	ldw	x, (0x07, sp)
      008C4B 89               [ 2]  279 	pushw	x
      008C4C CD B2 D3         [ 4]  280 	call	__divulong
      008C4F 5B 08            [ 2]  281 	addw	sp, #8
                                    282 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 143: tmpccrh |= I2C_CCRH_DUTY;
      008C51 A6 C0            [ 1]  283 	ld	a, #0xc0
      008C53 6B 05            [ 1]  284 	ld	(0x05, sp), a
      008C55                        285 00103$:
                                    286 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 147: if (result < (uint16_t)0x01)
      008C55 A3 00 01         [ 2]  287 	cpw	x, #0x0001
      008C58 24 02            [ 1]  288 	jrnc	00105$
                                    289 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 150: result = (uint16_t)0x0001;
      008C5A 5F               [ 1]  290 	clrw	x
      008C5B 5C               [ 1]  291 	incw	x
      008C5C                        292 00105$:
                                    293 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 156: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
      008C5C 7B 13            [ 1]  294 	ld	a, (0x13, sp)
      008C5E 6B 07            [ 1]  295 	ld	(0x07, sp), a
      008C60 0F 06            [ 1]  296 	clr	(0x06, sp)
      008C62 89               [ 2]  297 	pushw	x
      008C63 1E 08            [ 2]  298 	ldw	x, (0x08, sp)
      008C65 58               [ 2]  299 	sllw	x
      008C66 72 FB 08         [ 2]  300 	addw	x, (0x08, sp)
      008C69 51               [ 1]  301 	exgw	x, y
      008C6A 4B 0A            [ 1]  302 	push	#0x0a
      008C6C 4B 00            [ 1]  303 	push	#0x00
      008C6E 93               [ 1]  304 	ldw	x, y
      008C6F CD B6 1A         [ 4]  305 	call	__divsint
      008C72 90 93            [ 1]  306 	ldw	y, x
      008C74 9F               [ 1]  307 	ld	a, xl
      008C75 85               [ 2]  308 	popw	x
      008C76 4C               [ 1]  309 	inc	a
                                    310 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 157: I2C->TRISER = (uint8_t)tmpval;
      008C77 C7 52 1D         [ 1]  311 	ld	0x521d, a
      008C7A 20 23            [ 2]  312 	jra	00110$
      008C7C                        313 00109$:
                                    314 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 164: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
      008C7C 1E 0C            [ 2]  315 	ldw	x, (0x0c, sp)
      008C7E 16 0A            [ 2]  316 	ldw	y, (0x0a, sp)
      008C80 58               [ 2]  317 	sllw	x
      008C81 90 59            [ 2]  318 	rlcw	y
      008C83 89               [ 2]  319 	pushw	x
      008C84 90 89            [ 2]  320 	pushw	y
      008C86 1E 07            [ 2]  321 	ldw	x, (0x07, sp)
      008C88 89               [ 2]  322 	pushw	x
      008C89 1E 07            [ 2]  323 	ldw	x, (0x07, sp)
      008C8B 89               [ 2]  324 	pushw	x
      008C8C CD B2 D3         [ 4]  325 	call	__divulong
      008C8F 5B 08            [ 2]  326 	addw	sp, #8
                                    327 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 167: if (result < (uint16_t)0x0004)
      008C91 A3 00 04         [ 2]  328 	cpw	x, #0x0004
      008C94 24 03            [ 1]  329 	jrnc	00107$
                                    330 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 170: result = (uint16_t)0x0004;
      008C96 AE 00 04         [ 2]  331 	ldw	x, #0x0004
      008C99                        332 00107$:
                                    333 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 176: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
      008C99 7B 13            [ 1]  334 	ld	a, (0x13, sp)
      008C9B 4C               [ 1]  335 	inc	a
      008C9C C7 52 1D         [ 1]  336 	ld	0x521d, a
      008C9F                        337 00110$:
                                    338 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 181: I2C->CCRL = (uint8_t)result;
      008C9F 9F               [ 1]  339 	ld	a, xl
      008CA0 C7 52 1B         [ 1]  340 	ld	0x521b, a
                                    341 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 182: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
      008CA3 9E               [ 1]  342 	ld	a, xh
      008CA4 A4 0F            [ 1]  343 	and	a, #0x0f
      008CA6 1A 05            [ 1]  344 	or	a, (0x05, sp)
      008CA8 C7 52 1C         [ 1]  345 	ld	0x521c, a
                                    346 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 185: I2C->CR1 |= I2C_CR1_PE;
      008CAB 72 10 52 10      [ 1]  347 	bset	0x5210, #0
                                    348 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 188: I2C_AcknowledgeConfig(Ack);
      008CAF 7B 11            [ 1]  349 	ld	a, (0x11, sp)
      008CB1 CD 8D D6         [ 4]  350 	call	_I2C_AcknowledgeConfig
                                    351 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 191: I2C->OARL = (uint8_t)(OwnAddress);
      008CB4 7B 0F            [ 1]  352 	ld	a, (0x0f, sp)
      008CB6 C7 52 13         [ 1]  353 	ld	0x5213, a
                                    354 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 192: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
      008CB9 7B 12            [ 1]  355 	ld	a, (0x12, sp)
      008CBB AA 40            [ 1]  356 	or	a, #0x40
      008CBD 6B 07            [ 1]  357 	ld	(0x07, sp), a
                                    358 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 193: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
      008CBF 4F               [ 1]  359 	clr	a
      008CC0 97               [ 1]  360 	ld	xl, a
      008CC1 7B 0E            [ 1]  361 	ld	a, (0x0e, sp)
      008CC3 A4 03            [ 1]  362 	and	a, #0x03
      008CC5 95               [ 1]  363 	ld	xh, a
      008CC6 A6 80            [ 1]  364 	ld	a, #0x80
      008CC8 62               [ 2]  365 	div	x, a
      008CC9 9F               [ 1]  366 	ld	a, xl
      008CCA 1A 07            [ 1]  367 	or	a, (0x07, sp)
      008CCC C7 52 14         [ 1]  368 	ld	0x5214, a
                                    369 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 194: }
      008CCF 1E 08            [ 2]  370 	ldw	x, (8, sp)
      008CD1 5B 13            [ 2]  371 	addw	sp, #19
      008CD3 FC               [ 2]  372 	jp	(x)
                                    373 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 202: void I2C_Cmd(FunctionalState NewState)
                                    374 ;	-----------------------------------------
                                    375 ;	 function I2C_Cmd
                                    376 ;	-----------------------------------------
      008CD4                        377 _I2C_Cmd:
      008CD4 88               [ 1]  378 	push	a
                                    379 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 205: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008CD5 6B 01            [ 1]  380 	ld	(0x01, sp), a
      008CD7 27 11            [ 1]  381 	jreq	00107$
      008CD9 7B 01            [ 1]  382 	ld	a, (0x01, sp)
      008CDB 4A               [ 1]  383 	dec	a
      008CDC 27 0C            [ 1]  384 	jreq	00107$
      008CDE 4B CD            [ 1]  385 	push	#0xcd
      008CE0 5F               [ 1]  386 	clrw	x
      008CE1 89               [ 2]  387 	pushw	x
      008CE2 4B 00            [ 1]  388 	push	#0x00
      008CE4 AE 81 6E         [ 2]  389 	ldw	x, #(___str_0+0)
      008CE7 CD AB 2D         [ 4]  390 	call	_assert_failed
      008CEA                        391 00107$:
                                    392 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      008CEA C6 52 10         [ 1]  393 	ld	a, 0x5210
                                    394 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 207: if (NewState != DISABLE)
      008CED 0D 01            [ 1]  395 	tnz	(0x01, sp)
      008CEF 27 07            [ 1]  396 	jreq	00102$
                                    397 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      008CF1 AA 01            [ 1]  398 	or	a, #0x01
      008CF3 C7 52 10         [ 1]  399 	ld	0x5210, a
      008CF6 20 05            [ 2]  400 	jra	00104$
      008CF8                        401 00102$:
                                    402 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 215: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008CF8 A4 FE            [ 1]  403 	and	a, #0xfe
      008CFA C7 52 10         [ 1]  404 	ld	0x5210, a
      008CFD                        405 00104$:
                                    406 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 217: }
      008CFD 84               [ 1]  407 	pop	a
      008CFE 81               [ 4]  408 	ret
                                    409 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 225: void I2C_GeneralCallCmd(FunctionalState NewState)
                                    410 ;	-----------------------------------------
                                    411 ;	 function I2C_GeneralCallCmd
                                    412 ;	-----------------------------------------
      008CFF                        413 _I2C_GeneralCallCmd:
      008CFF 88               [ 1]  414 	push	a
                                    415 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 228: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D00 6B 01            [ 1]  416 	ld	(0x01, sp), a
      008D02 27 11            [ 1]  417 	jreq	00107$
      008D04 7B 01            [ 1]  418 	ld	a, (0x01, sp)
      008D06 4A               [ 1]  419 	dec	a
      008D07 27 0C            [ 1]  420 	jreq	00107$
      008D09 4B E4            [ 1]  421 	push	#0xe4
      008D0B 5F               [ 1]  422 	clrw	x
      008D0C 89               [ 2]  423 	pushw	x
      008D0D 4B 00            [ 1]  424 	push	#0x00
      008D0F AE 81 6E         [ 2]  425 	ldw	x, #(___str_0+0)
      008D12 CD AB 2D         [ 4]  426 	call	_assert_failed
      008D15                        427 00107$:
                                    428 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 233: I2C->CR1 |= I2C_CR1_ENGC;
      008D15 C6 52 10         [ 1]  429 	ld	a, 0x5210
                                    430 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 230: if (NewState != DISABLE)
      008D18 0D 01            [ 1]  431 	tnz	(0x01, sp)
      008D1A 27 07            [ 1]  432 	jreq	00102$
                                    433 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 233: I2C->CR1 |= I2C_CR1_ENGC;
      008D1C AA 40            [ 1]  434 	or	a, #0x40
      008D1E C7 52 10         [ 1]  435 	ld	0x5210, a
      008D21 20 05            [ 2]  436 	jra	00104$
      008D23                        437 00102$:
                                    438 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 238: I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
      008D23 A4 BF            [ 1]  439 	and	a, #0xbf
      008D25 C7 52 10         [ 1]  440 	ld	0x5210, a
      008D28                        441 00104$:
                                    442 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 240: }
      008D28 84               [ 1]  443 	pop	a
      008D29 81               [ 4]  444 	ret
                                    445 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 250: void I2C_GenerateSTART(FunctionalState NewState)
                                    446 ;	-----------------------------------------
                                    447 ;	 function I2C_GenerateSTART
                                    448 ;	-----------------------------------------
      008D2A                        449 _I2C_GenerateSTART:
      008D2A 88               [ 1]  450 	push	a
                                    451 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 253: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D2B 6B 01            [ 1]  452 	ld	(0x01, sp), a
      008D2D 27 11            [ 1]  453 	jreq	00107$
      008D2F 7B 01            [ 1]  454 	ld	a, (0x01, sp)
      008D31 4A               [ 1]  455 	dec	a
      008D32 27 0C            [ 1]  456 	jreq	00107$
      008D34 4B FD            [ 1]  457 	push	#0xfd
      008D36 5F               [ 1]  458 	clrw	x
      008D37 89               [ 2]  459 	pushw	x
      008D38 4B 00            [ 1]  460 	push	#0x00
      008D3A AE 81 6E         [ 2]  461 	ldw	x, #(___str_0+0)
      008D3D CD AB 2D         [ 4]  462 	call	_assert_failed
      008D40                        463 00107$:
                                    464 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 258: I2C->CR2 |= I2C_CR2_START;
      008D40 C6 52 11         [ 1]  465 	ld	a, 0x5211
                                    466 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 255: if (NewState != DISABLE)
      008D43 0D 01            [ 1]  467 	tnz	(0x01, sp)
      008D45 27 07            [ 1]  468 	jreq	00102$
                                    469 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 258: I2C->CR2 |= I2C_CR2_START;
      008D47 AA 01            [ 1]  470 	or	a, #0x01
      008D49 C7 52 11         [ 1]  471 	ld	0x5211, a
      008D4C 20 05            [ 2]  472 	jra	00104$
      008D4E                        473 00102$:
                                    474 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 263: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
      008D4E A4 FE            [ 1]  475 	and	a, #0xfe
      008D50 C7 52 11         [ 1]  476 	ld	0x5211, a
      008D53                        477 00104$:
                                    478 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 265: }
      008D53 84               [ 1]  479 	pop	a
      008D54 81               [ 4]  480 	ret
                                    481 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 273: void I2C_GenerateSTOP(FunctionalState NewState)
                                    482 ;	-----------------------------------------
                                    483 ;	 function I2C_GenerateSTOP
                                    484 ;	-----------------------------------------
      008D55                        485 _I2C_GenerateSTOP:
      008D55 88               [ 1]  486 	push	a
                                    487 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 276: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D56 6B 01            [ 1]  488 	ld	(0x01, sp), a
      008D58 27 11            [ 1]  489 	jreq	00107$
      008D5A 7B 01            [ 1]  490 	ld	a, (0x01, sp)
      008D5C 4A               [ 1]  491 	dec	a
      008D5D 27 0C            [ 1]  492 	jreq	00107$
      008D5F 4B 14            [ 1]  493 	push	#0x14
      008D61 4B 01            [ 1]  494 	push	#0x01
      008D63 5F               [ 1]  495 	clrw	x
      008D64 89               [ 2]  496 	pushw	x
      008D65 AE 81 6E         [ 2]  497 	ldw	x, #(___str_0+0)
      008D68 CD AB 2D         [ 4]  498 	call	_assert_failed
      008D6B                        499 00107$:
                                    500 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 281: I2C->CR2 |= I2C_CR2_STOP;
      008D6B C6 52 11         [ 1]  501 	ld	a, 0x5211
                                    502 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 278: if (NewState != DISABLE)
      008D6E 0D 01            [ 1]  503 	tnz	(0x01, sp)
      008D70 27 07            [ 1]  504 	jreq	00102$
                                    505 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 281: I2C->CR2 |= I2C_CR2_STOP;
      008D72 AA 02            [ 1]  506 	or	a, #0x02
      008D74 C7 52 11         [ 1]  507 	ld	0x5211, a
      008D77 20 05            [ 2]  508 	jra	00104$
      008D79                        509 00102$:
                                    510 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 286: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
      008D79 A4 FD            [ 1]  511 	and	a, #0xfd
      008D7B C7 52 11         [ 1]  512 	ld	0x5211, a
      008D7E                        513 00104$:
                                    514 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 288: }
      008D7E 84               [ 1]  515 	pop	a
      008D7F 81               [ 4]  516 	ret
                                    517 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 296: void I2C_SoftwareResetCmd(FunctionalState NewState)
                                    518 ;	-----------------------------------------
                                    519 ;	 function I2C_SoftwareResetCmd
                                    520 ;	-----------------------------------------
      008D80                        521 _I2C_SoftwareResetCmd:
      008D80 88               [ 1]  522 	push	a
                                    523 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 299: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D81 6B 01            [ 1]  524 	ld	(0x01, sp), a
      008D83 27 11            [ 1]  525 	jreq	00107$
      008D85 7B 01            [ 1]  526 	ld	a, (0x01, sp)
      008D87 4A               [ 1]  527 	dec	a
      008D88 27 0C            [ 1]  528 	jreq	00107$
      008D8A 4B 2B            [ 1]  529 	push	#0x2b
      008D8C 4B 01            [ 1]  530 	push	#0x01
      008D8E 5F               [ 1]  531 	clrw	x
      008D8F 89               [ 2]  532 	pushw	x
      008D90 AE 81 6E         [ 2]  533 	ldw	x, #(___str_0+0)
      008D93 CD AB 2D         [ 4]  534 	call	_assert_failed
      008D96                        535 00107$:
                                    536 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 304: I2C->CR2 |= I2C_CR2_SWRST;
      008D96 C6 52 11         [ 1]  537 	ld	a, 0x5211
                                    538 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 301: if (NewState != DISABLE)
      008D99 0D 01            [ 1]  539 	tnz	(0x01, sp)
      008D9B 27 07            [ 1]  540 	jreq	00102$
                                    541 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 304: I2C->CR2 |= I2C_CR2_SWRST;
      008D9D AA 80            [ 1]  542 	or	a, #0x80
      008D9F C7 52 11         [ 1]  543 	ld	0x5211, a
      008DA2 20 05            [ 2]  544 	jra	00104$
      008DA4                        545 00102$:
                                    546 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 309: I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
      008DA4 A4 7F            [ 1]  547 	and	a, #0x7f
      008DA6 C7 52 11         [ 1]  548 	ld	0x5211, a
      008DA9                        549 00104$:
                                    550 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 311: }
      008DA9 84               [ 1]  551 	pop	a
      008DAA 81               [ 4]  552 	ret
                                    553 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 320: void I2C_StretchClockCmd(FunctionalState NewState)
                                    554 ;	-----------------------------------------
                                    555 ;	 function I2C_StretchClockCmd
                                    556 ;	-----------------------------------------
      008DAB                        557 _I2C_StretchClockCmd:
      008DAB 88               [ 1]  558 	push	a
                                    559 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 323: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008DAC 6B 01            [ 1]  560 	ld	(0x01, sp), a
      008DAE 27 11            [ 1]  561 	jreq	00107$
      008DB0 7B 01            [ 1]  562 	ld	a, (0x01, sp)
      008DB2 4A               [ 1]  563 	dec	a
      008DB3 27 0C            [ 1]  564 	jreq	00107$
      008DB5 4B 43            [ 1]  565 	push	#0x43
      008DB7 4B 01            [ 1]  566 	push	#0x01
      008DB9 5F               [ 1]  567 	clrw	x
      008DBA 89               [ 2]  568 	pushw	x
      008DBB AE 81 6E         [ 2]  569 	ldw	x, #(___str_0+0)
      008DBE CD AB 2D         [ 4]  570 	call	_assert_failed
      008DC1                        571 00107$:
                                    572 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 328: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
      008DC1 C6 52 10         [ 1]  573 	ld	a, 0x5210
                                    574 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 325: if (NewState != DISABLE)
      008DC4 0D 01            [ 1]  575 	tnz	(0x01, sp)
      008DC6 27 07            [ 1]  576 	jreq	00102$
                                    577 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 328: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
      008DC8 A4 7F            [ 1]  578 	and	a, #0x7f
      008DCA C7 52 10         [ 1]  579 	ld	0x5210, a
      008DCD 20 05            [ 2]  580 	jra	00104$
      008DCF                        581 00102$:
                                    582 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 334: I2C->CR1 |= I2C_CR1_NOSTRETCH;
      008DCF AA 80            [ 1]  583 	or	a, #0x80
      008DD1 C7 52 10         [ 1]  584 	ld	0x5210, a
      008DD4                        585 00104$:
                                    586 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 336: }
      008DD4 84               [ 1]  587 	pop	a
      008DD5 81               [ 4]  588 	ret
                                    589 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 345: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
                                    590 ;	-----------------------------------------
                                    591 ;	 function I2C_AcknowledgeConfig
                                    592 ;	-----------------------------------------
      008DD6                        593 _I2C_AcknowledgeConfig:
                                    594 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 348: assert_param(IS_I2C_ACK_OK(Ack));
      008DD6 97               [ 1]  595 	ld	xl, a
      008DD7 4A               [ 1]  596 	dec	a
      008DD8 26 05            [ 1]  597 	jrne	00143$
      008DDA A6 01            [ 1]  598 	ld	a, #0x01
      008DDC 95               [ 1]  599 	ld	xh, a
      008DDD 20 02            [ 2]  600 	jra	00144$
      008DDF                        601 00143$:
      008DDF 4F               [ 1]  602 	clr	a
      008DE0 95               [ 1]  603 	ld	xh, a
      008DE1                        604 00144$:
      008DE1 9F               [ 1]  605 	ld	a, xl
      008DE2 4D               [ 1]  606 	tnz	a
      008DE3 27 19            [ 1]  607 	jreq	00110$
      008DE5 9E               [ 1]  608 	ld	a, xh
      008DE6 4D               [ 1]  609 	tnz	a
      008DE7 26 15            [ 1]  610 	jrne	00110$
      008DE9 9F               [ 1]  611 	ld	a, xl
      008DEA A1 02            [ 1]  612 	cp	a, #0x02
      008DEC 27 10            [ 1]  613 	jreq	00110$
      008DEE 89               [ 2]  614 	pushw	x
      008DEF 4B 5C            [ 1]  615 	push	#0x5c
      008DF1 4B 01            [ 1]  616 	push	#0x01
      008DF3 4B 00            [ 1]  617 	push	#0x00
      008DF5 4B 00            [ 1]  618 	push	#0x00
      008DF7 AE 81 6E         [ 2]  619 	ldw	x, #(___str_0+0)
      008DFA CD AB 2D         [ 4]  620 	call	_assert_failed
      008DFD 85               [ 2]  621 	popw	x
      008DFE                        622 00110$:
                                    623 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008DFE C6 52 11         [ 1]  624 	ld	a, 0x5211
                                    625 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 350: if (Ack == I2C_ACK_NONE)
      008E01 41               [ 1]  626 	exg	a, xl
      008E02 4D               [ 1]  627 	tnz	a
      008E03 41               [ 1]  628 	exg	a, xl
      008E04 26 06            [ 1]  629 	jrne	00105$
                                    630 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008E06 A4 FB            [ 1]  631 	and	a, #0xfb
      008E08 C7 52 11         [ 1]  632 	ld	0x5211, a
      008E0B 81               [ 4]  633 	ret
      008E0C                        634 00105$:
                                    635 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 358: I2C->CR2 |= I2C_CR2_ACK;
      008E0C AA 04            [ 1]  636 	or	a, #0x04
      008E0E C7 52 11         [ 1]  637 	ld	0x5211, a
                                    638 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008E11 C6 52 11         [ 1]  639 	ld	a, 0x5211
                                    640 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 360: if (Ack == I2C_ACK_CURR)
      008E14 88               [ 1]  641 	push	a
      008E15 9E               [ 1]  642 	ld	a, xh
      008E16 4D               [ 1]  643 	tnz	a
      008E17 84               [ 1]  644 	pop	a
      008E18 27 06            [ 1]  645 	jreq	00102$
                                    646 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 363: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
      008E1A A4 F7            [ 1]  647 	and	a, #0xf7
      008E1C C7 52 11         [ 1]  648 	ld	0x5211, a
      008E1F 81               [ 4]  649 	ret
      008E20                        650 00102$:
                                    651 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 368: I2C->CR2 |= I2C_CR2_POS;
      008E20 AA 08            [ 1]  652 	or	a, #0x08
      008E22 C7 52 11         [ 1]  653 	ld	0x5211, a
                                    654 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 371: }
      008E25 81               [ 4]  655 	ret
                                    656 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 381: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
                                    657 ;	-----------------------------------------
                                    658 ;	 function I2C_ITConfig
                                    659 ;	-----------------------------------------
      008E26                        660 _I2C_ITConfig:
      008E26 88               [ 1]  661 	push	a
                                    662 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 384: assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
      008E27 A1 01            [ 1]  663 	cp	a, #0x01
      008E29 27 26            [ 1]  664 	jreq	00107$
      008E2B A1 02            [ 1]  665 	cp	a, #0x02
      008E2D 27 22            [ 1]  666 	jreq	00107$
      008E2F A1 04            [ 1]  667 	cp	a, #0x04
      008E31 27 1E            [ 1]  668 	jreq	00107$
      008E33 A1 03            [ 1]  669 	cp	a, #0x03
      008E35 27 1A            [ 1]  670 	jreq	00107$
      008E37 A1 05            [ 1]  671 	cp	a, #0x05
      008E39 27 16            [ 1]  672 	jreq	00107$
      008E3B A1 06            [ 1]  673 	cp	a, #0x06
      008E3D 27 12            [ 1]  674 	jreq	00107$
      008E3F A1 07            [ 1]  675 	cp	a, #0x07
      008E41 27 0E            [ 1]  676 	jreq	00107$
      008E43 88               [ 1]  677 	push	a
      008E44 4B 80            [ 1]  678 	push	#0x80
      008E46 4B 01            [ 1]  679 	push	#0x01
      008E48 5F               [ 1]  680 	clrw	x
      008E49 89               [ 2]  681 	pushw	x
      008E4A AE 81 6E         [ 2]  682 	ldw	x, #(___str_0+0)
      008E4D CD AB 2D         [ 4]  683 	call	_assert_failed
      008E50 84               [ 1]  684 	pop	a
      008E51                        685 00107$:
                                    686 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 385: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008E51 0D 04            [ 1]  687 	tnz	(0x04, sp)
      008E53 27 15            [ 1]  688 	jreq	00127$
      008E55 88               [ 1]  689 	push	a
      008E56 7B 05            [ 1]  690 	ld	a, (0x05, sp)
      008E58 4A               [ 1]  691 	dec	a
      008E59 84               [ 1]  692 	pop	a
      008E5A 27 0E            [ 1]  693 	jreq	00127$
      008E5C 88               [ 1]  694 	push	a
      008E5D 4B 81            [ 1]  695 	push	#0x81
      008E5F 4B 01            [ 1]  696 	push	#0x01
      008E61 5F               [ 1]  697 	clrw	x
      008E62 89               [ 2]  698 	pushw	x
      008E63 AE 81 6E         [ 2]  699 	ldw	x, #(___str_0+0)
      008E66 CD AB 2D         [ 4]  700 	call	_assert_failed
      008E69 84               [ 1]  701 	pop	a
      008E6A                        702 00127$:
                                    703 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 390: I2C->ITR |= (uint8_t)I2C_IT;
      008E6A AE 52 1A         [ 2]  704 	ldw	x, #0x521a
      008E6D 88               [ 1]  705 	push	a
      008E6E F6               [ 1]  706 	ld	a, (x)
      008E6F 6B 02            [ 1]  707 	ld	(0x02, sp), a
      008E71 84               [ 1]  708 	pop	a
                                    709 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 387: if (NewState != DISABLE)
      008E72 0D 04            [ 1]  710 	tnz	(0x04, sp)
      008E74 27 07            [ 1]  711 	jreq	00102$
                                    712 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 390: I2C->ITR |= (uint8_t)I2C_IT;
      008E76 1A 01            [ 1]  713 	or	a, (0x01, sp)
      008E78 C7 52 1A         [ 1]  714 	ld	0x521a, a
      008E7B 20 06            [ 2]  715 	jra	00104$
      008E7D                        716 00102$:
                                    717 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 395: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
      008E7D 43               [ 1]  718 	cpl	a
      008E7E 14 01            [ 1]  719 	and	a, (0x01, sp)
      008E80 C7 52 1A         [ 1]  720 	ld	0x521a, a
      008E83                        721 00104$:
                                    722 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 397: }
      008E83 84               [ 1]  723 	pop	a
      008E84 85               [ 2]  724 	popw	x
      008E85 84               [ 1]  725 	pop	a
      008E86 FC               [ 2]  726 	jp	(x)
                                    727 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 405: void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
                                    728 ;	-----------------------------------------
                                    729 ;	 function I2C_FastModeDutyCycleConfig
                                    730 ;	-----------------------------------------
      008E87                        731 _I2C_FastModeDutyCycleConfig:
      008E87 88               [ 1]  732 	push	a
                                    733 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 408: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
      008E88 A1 40            [ 1]  734 	cp	a, #0x40
      008E8A 26 07            [ 1]  735 	jrne	00127$
      008E8C 88               [ 1]  736 	push	a
      008E8D A6 01            [ 1]  737 	ld	a, #0x01
      008E8F 6B 02            [ 1]  738 	ld	(0x02, sp), a
      008E91 84               [ 1]  739 	pop	a
      008E92 C5                     740 	.byte 0xc5
      008E93                        741 00127$:
      008E93 0F 01            [ 1]  742 	clr	(0x01, sp)
      008E95                        743 00128$:
      008E95 4D               [ 1]  744 	tnz	a
      008E96 27 10            [ 1]  745 	jreq	00107$
      008E98 0D 01            [ 1]  746 	tnz	(0x01, sp)
      008E9A 26 0C            [ 1]  747 	jrne	00107$
      008E9C 4B 98            [ 1]  748 	push	#0x98
      008E9E 4B 01            [ 1]  749 	push	#0x01
      008EA0 5F               [ 1]  750 	clrw	x
      008EA1 89               [ 2]  751 	pushw	x
      008EA2 AE 81 6E         [ 2]  752 	ldw	x, #(___str_0+0)
      008EA5 CD AB 2D         [ 4]  753 	call	_assert_failed
      008EA8                        754 00107$:
                                    755 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 413: I2C->CCRH |= I2C_CCRH_DUTY;
      008EA8 C6 52 1C         [ 1]  756 	ld	a, 0x521c
      008EAB 97               [ 1]  757 	ld	xl, a
                                    758 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 410: if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
      008EAC 7B 01            [ 1]  759 	ld	a, (0x01, sp)
      008EAE 27 08            [ 1]  760 	jreq	00102$
                                    761 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 413: I2C->CCRH |= I2C_CCRH_DUTY;
      008EB0 9F               [ 1]  762 	ld	a, xl
      008EB1 AA 40            [ 1]  763 	or	a, #0x40
      008EB3 C7 52 1C         [ 1]  764 	ld	0x521c, a
      008EB6 20 06            [ 2]  765 	jra	00104$
      008EB8                        766 00102$:
                                    767 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 418: I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
      008EB8 9F               [ 1]  768 	ld	a, xl
      008EB9 A4 BF            [ 1]  769 	and	a, #0xbf
      008EBB C7 52 1C         [ 1]  770 	ld	0x521c, a
      008EBE                        771 00104$:
                                    772 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 420: }
      008EBE 84               [ 1]  773 	pop	a
      008EBF 81               [ 4]  774 	ret
                                    775 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 427: uint8_t I2C_ReceiveData(void)
                                    776 ;	-----------------------------------------
                                    777 ;	 function I2C_ReceiveData
                                    778 ;	-----------------------------------------
      008EC0                        779 _I2C_ReceiveData:
                                    780 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 430: return ((uint8_t)I2C->DR);
      008EC0 C6 52 16         [ 1]  781 	ld	a, 0x5216
                                    782 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 431: }
      008EC3 81               [ 4]  783 	ret
                                    784 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 440: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
                                    785 ;	-----------------------------------------
                                    786 ;	 function I2C_Send7bitAddress
                                    787 ;	-----------------------------------------
      008EC4                        788 _I2C_Send7bitAddress:
      008EC4 88               [ 1]  789 	push	a
                                    790 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 443: assert_param(IS_I2C_ADDRESS_OK(Address));
      008EC5 6B 01            [ 1]  791 	ld	(0x01, sp), a
      008EC7 44               [ 1]  792 	srl	a
      008EC8 24 0C            [ 1]  793 	jrnc	00104$
      008ECA 4B BB            [ 1]  794 	push	#0xbb
      008ECC 4B 01            [ 1]  795 	push	#0x01
      008ECE 5F               [ 1]  796 	clrw	x
      008ECF 89               [ 2]  797 	pushw	x
      008ED0 AE 81 6E         [ 2]  798 	ldw	x, #(___str_0+0)
      008ED3 CD AB 2D         [ 4]  799 	call	_assert_failed
      008ED6                        800 00104$:
                                    801 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 444: assert_param(IS_I2C_DIRECTION_OK(Direction));
      008ED6 0D 04            [ 1]  802 	tnz	(0x04, sp)
      008ED8 27 11            [ 1]  803 	jreq	00106$
      008EDA 7B 04            [ 1]  804 	ld	a, (0x04, sp)
      008EDC 4A               [ 1]  805 	dec	a
      008EDD 27 0C            [ 1]  806 	jreq	00106$
      008EDF 4B BC            [ 1]  807 	push	#0xbc
      008EE1 4B 01            [ 1]  808 	push	#0x01
      008EE3 5F               [ 1]  809 	clrw	x
      008EE4 89               [ 2]  810 	pushw	x
      008EE5 AE 81 6E         [ 2]  811 	ldw	x, #(___str_0+0)
      008EE8 CD AB 2D         [ 4]  812 	call	_assert_failed
      008EEB                        813 00106$:
                                    814 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 447: Address &= (uint8_t)0xFE;
      008EEB 7B 01            [ 1]  815 	ld	a, (0x01, sp)
      008EED A4 FE            [ 1]  816 	and	a, #0xfe
                                    817 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 450: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
      008EEF 1A 04            [ 1]  818 	or	a, (0x04, sp)
      008EF1 C7 52 16         [ 1]  819 	ld	0x5216, a
                                    820 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 451: }
      008EF4 84               [ 1]  821 	pop	a
      008EF5 85               [ 2]  822 	popw	x
      008EF6 84               [ 1]  823 	pop	a
      008EF7 FC               [ 2]  824 	jp	(x)
                                    825 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 458: void I2C_SendData(uint8_t Data)
                                    826 ;	-----------------------------------------
                                    827 ;	 function I2C_SendData
                                    828 ;	-----------------------------------------
      008EF8                        829 _I2C_SendData:
                                    830 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 461: I2C->DR = Data;
      008EF8 C7 52 16         [ 1]  831 	ld	0x5216, a
                                    832 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 462: }
      008EFB 81               [ 4]  833 	ret
                                    834 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 578: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
                                    835 ;	-----------------------------------------
                                    836 ;	 function I2C_CheckEvent
                                    837 ;	-----------------------------------------
      008EFC                        838 _I2C_CheckEvent:
      008EFC 52 06            [ 2]  839 	sub	sp, #6
                                    840 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 580: __IO uint16_t lastevent = 0x00;
      008EFE 0F 02            [ 1]  841 	clr	(0x02, sp)
      008F00 0F 01            [ 1]  842 	clr	(0x01, sp)
                                    843 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 586: assert_param(IS_I2C_EVENT_OK(I2C_Event));
      008F02 A3 00 04         [ 2]  844 	cpw	x, #0x0004
      008F05 26 03            [ 1]  845 	jrne	00247$
      008F07 A6 01            [ 1]  846 	ld	a, #0x01
      008F09 21                     847 	.byte 0x21
      008F0A                        848 00247$:
      008F0A 4F               [ 1]  849 	clr	a
      008F0B                        850 00248$:
      008F0B A3 06 82         [ 2]  851 	cpw	x, #0x0682
      008F0E 27 5B            [ 1]  852 	jreq	00110$
      008F10 A3 02 02         [ 2]  853 	cpw	x, #0x0202
      008F13 27 56            [ 1]  854 	jreq	00110$
      008F15 A3 12 00         [ 2]  855 	cpw	x, #0x1200
      008F18 27 51            [ 1]  856 	jreq	00110$
      008F1A A3 02 40         [ 2]  857 	cpw	x, #0x0240
      008F1D 27 4C            [ 1]  858 	jreq	00110$
      008F1F A3 03 50         [ 2]  859 	cpw	x, #0x0350
      008F22 27 47            [ 1]  860 	jreq	00110$
      008F24 A3 06 84         [ 2]  861 	cpw	x, #0x0684
      008F27 27 42            [ 1]  862 	jreq	00110$
      008F29 A3 07 94         [ 2]  863 	cpw	x, #0x0794
      008F2C 27 3D            [ 1]  864 	jreq	00110$
      008F2E 4D               [ 1]  865 	tnz	a
      008F2F 26 3A            [ 1]  866 	jrne	00110$
      008F31 A3 00 10         [ 2]  867 	cpw	x, #0x0010
      008F34 27 35            [ 1]  868 	jreq	00110$
      008F36 A3 03 01         [ 2]  869 	cpw	x, #0x0301
      008F39 27 30            [ 1]  870 	jreq	00110$
      008F3B A3 07 82         [ 2]  871 	cpw	x, #0x0782
      008F3E 27 2B            [ 1]  872 	jreq	00110$
      008F40 A3 03 02         [ 2]  873 	cpw	x, #0x0302
      008F43 27 26            [ 1]  874 	jreq	00110$
      008F45 A3 03 40         [ 2]  875 	cpw	x, #0x0340
      008F48 27 21            [ 1]  876 	jreq	00110$
      008F4A A3 07 84         [ 2]  877 	cpw	x, #0x0784
      008F4D 27 1C            [ 1]  878 	jreq	00110$
      008F4F A3 07 80         [ 2]  879 	cpw	x, #0x0780
      008F52 27 17            [ 1]  880 	jreq	00110$
      008F54 A3 03 08         [ 2]  881 	cpw	x, #0x0308
      008F57 27 12            [ 1]  882 	jreq	00110$
      008F59 88               [ 1]  883 	push	a
      008F5A 89               [ 2]  884 	pushw	x
      008F5B 4B 4A            [ 1]  885 	push	#0x4a
      008F5D 4B 02            [ 1]  886 	push	#0x02
      008F5F 4B 00            [ 1]  887 	push	#0x00
      008F61 4B 00            [ 1]  888 	push	#0x00
      008F63 AE 81 6E         [ 2]  889 	ldw	x, #(___str_0+0)
      008F66 CD AB 2D         [ 4]  890 	call	_assert_failed
      008F69 85               [ 2]  891 	popw	x
      008F6A 84               [ 1]  892 	pop	a
      008F6B                        893 00110$:
                                    894 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 588: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
      008F6B 4D               [ 1]  895 	tnz	a
      008F6C 27 0D            [ 1]  896 	jreq	00102$
                                    897 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 590: lastevent = I2C->SR2 & I2C_SR2_AF;
      008F6E C6 52 18         [ 1]  898 	ld	a, 0x5218
      008F71 A4 04            [ 1]  899 	and	a, #0x04
      008F73 90 5F            [ 1]  900 	clrw	y
      008F75 90 97            [ 1]  901 	ld	yl, a
      008F77 17 01            [ 2]  902 	ldw	(0x01, sp), y
      008F79 20 1A            [ 2]  903 	jra	00103$
      008F7B                        904 00102$:
                                    905 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 594: flag1 = I2C->SR1;
      008F7B C6 52 17         [ 1]  906 	ld	a, 0x5217
      008F7E 6B 06            [ 1]  907 	ld	(0x06, sp), a
                                    908 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 595: flag2 = I2C->SR3;
      008F80 C6 52 19         [ 1]  909 	ld	a, 0x5219
                                    910 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 596: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
      008F83 90 95            [ 1]  911 	ld	yh, a
      008F85 0F 04            [ 1]  912 	clr	(0x04, sp)
      008F87 7B 06            [ 1]  913 	ld	a, (0x06, sp)
      008F89 0F 05            [ 1]  914 	clr	(0x05, sp)
      008F8B 1A 04            [ 1]  915 	or	a, (0x04, sp)
      008F8D 90 02            [ 1]  916 	rlwa	y
      008F8F 1A 05            [ 1]  917 	or	a, (0x05, sp)
      008F91 90 95            [ 1]  918 	ld	yh, a
      008F93 17 01            [ 2]  919 	ldw	(0x01, sp), y
      008F95                        920 00103$:
                                    921 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 599: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
      008F95 9F               [ 1]  922 	ld	a, xl
      008F96 14 02            [ 1]  923 	and	a, (0x02, sp)
      008F98 6B 06            [ 1]  924 	ld	(0x06, sp), a
      008F9A 9E               [ 1]  925 	ld	a, xh
      008F9B 14 01            [ 1]  926 	and	a, (0x01, sp)
      008F9D 6B 05            [ 1]  927 	ld	(0x05, sp), a
      008F9F 13 05            [ 2]  928 	cpw	x, (0x05, sp)
      008FA1 26 03            [ 1]  929 	jrne	00105$
                                    930 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 602: status = SUCCESS;
      008FA3 A6 01            [ 1]  931 	ld	a, #0x01
                                    932 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 607: status = ERROR;
      008FA5 21                     933 	.byte 0x21
      008FA6                        934 00105$:
      008FA6 4F               [ 1]  935 	clr	a
      008FA7                        936 00106$:
                                    937 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 611: return status;
                                    938 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 612: }
      008FA7 5B 06            [ 2]  939 	addw	sp, #6
      008FA9 81               [ 4]  940 	ret
                                    941 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 628: I2C_Event_TypeDef I2C_GetLastEvent(void)
                                    942 ;	-----------------------------------------
                                    943 ;	 function I2C_GetLastEvent
                                    944 ;	-----------------------------------------
      008FAA                        945 _I2C_GetLastEvent:
      008FAA 52 04            [ 2]  946 	sub	sp, #4
                                    947 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 630: __IO uint16_t lastevent = 0;
      008FAC 5F               [ 1]  948 	clrw	x
      008FAD 1F 01            [ 2]  949 	ldw	(0x01, sp), x
                                    950 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 634: if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
      008FAF 72 05 52 18 07   [ 2]  951 	btjf	0x5218, #2, 00102$
                                    952 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 636: lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
      008FB4 AE 00 04         [ 2]  953 	ldw	x, #0x0004
      008FB7 1F 01            [ 2]  954 	ldw	(0x01, sp), x
      008FB9 20 13            [ 2]  955 	jra	00103$
      008FBB                        956 00102$:
                                    957 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 641: flag1 = I2C->SR1;
      008FBB C6 52 17         [ 1]  958 	ld	a, 0x5217
      008FBE 6B 04            [ 1]  959 	ld	(0x04, sp), a
      008FC0 0F 03            [ 1]  960 	clr	(0x03, sp)
                                    961 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 642: flag2 = I2C->SR3;
      008FC2 C6 52 19         [ 1]  962 	ld	a, 0x5219
                                    963 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 645: lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
      008FC5 95               [ 1]  964 	ld	xh, a
      008FC6 7B 04            [ 1]  965 	ld	a, (0x04, sp)
      008FC8 02               [ 1]  966 	rlwa	x
      008FC9 1A 03            [ 1]  967 	or	a, (0x03, sp)
      008FCB 95               [ 1]  968 	ld	xh, a
      008FCC 1F 01            [ 2]  969 	ldw	(0x01, sp), x
      008FCE                        970 00103$:
                                    971 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 648: return (I2C_Event_TypeDef)lastevent;
      008FCE 1E 01            [ 2]  972 	ldw	x, (0x01, sp)
                                    973 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 649: }
      008FD0 5B 04            [ 2]  974 	addw	sp, #4
      008FD2 81               [ 4]  975 	ret
                                    976 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 679: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
                                    977 ;	-----------------------------------------
                                    978 ;	 function I2C_GetFlagStatus
                                    979 ;	-----------------------------------------
      008FD3                        980 _I2C_GetFlagStatus:
      008FD3 52 03            [ 2]  981 	sub	sp, #3
      008FD5 1F 02            [ 2]  982 	ldw	(0x02, sp), x
                                    983 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 681: uint8_t tempreg = 0;
      008FD7 0F 01            [ 1]  984 	clr	(0x01, sp)
                                    985 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 686: assert_param(IS_I2C_FLAG_OK(I2C_Flag));
      008FD9 1E 02            [ 2]  986 	ldw	x, (0x02, sp)
      008FDB A3 01 80         [ 2]  987 	cpw	x, #0x0180
      008FDE 27 5B            [ 1]  988 	jreq	00112$
      008FE0 A3 01 40         [ 2]  989 	cpw	x, #0x0140
      008FE3 27 56            [ 1]  990 	jreq	00112$
      008FE5 A3 01 10         [ 2]  991 	cpw	x, #0x0110
      008FE8 27 51            [ 1]  992 	jreq	00112$
      008FEA A3 01 08         [ 2]  993 	cpw	x, #0x0108
      008FED 27 4C            [ 1]  994 	jreq	00112$
      008FEF A3 01 04         [ 2]  995 	cpw	x, #0x0104
      008FF2 27 47            [ 1]  996 	jreq	00112$
      008FF4 A3 01 02         [ 2]  997 	cpw	x, #0x0102
      008FF7 27 42            [ 1]  998 	jreq	00112$
      008FF9 A3 01 01         [ 2]  999 	cpw	x, #0x0101
      008FFC 27 3D            [ 1] 1000 	jreq	00112$
      008FFE A3 02 20         [ 2] 1001 	cpw	x, #0x0220
      009001 27 38            [ 1] 1002 	jreq	00112$
      009003 A3 02 08         [ 2] 1003 	cpw	x, #0x0208
      009006 27 33            [ 1] 1004 	jreq	00112$
      009008 A3 02 04         [ 2] 1005 	cpw	x, #0x0204
      00900B 27 2E            [ 1] 1006 	jreq	00112$
      00900D A3 02 02         [ 2] 1007 	cpw	x, #0x0202
      009010 27 29            [ 1] 1008 	jreq	00112$
      009012 A3 02 01         [ 2] 1009 	cpw	x, #0x0201
      009015 27 24            [ 1] 1010 	jreq	00112$
      009017 A3 03 10         [ 2] 1011 	cpw	x, #0x0310
      00901A 27 1F            [ 1] 1012 	jreq	00112$
      00901C A3 03 04         [ 2] 1013 	cpw	x, #0x0304
      00901F 27 1A            [ 1] 1014 	jreq	00112$
      009021 A3 03 02         [ 2] 1015 	cpw	x, #0x0302
      009024 27 15            [ 1] 1016 	jreq	00112$
      009026 A3 03 01         [ 2] 1017 	cpw	x, #0x0301
      009029 27 10            [ 1] 1018 	jreq	00112$
      00902B 89               [ 2] 1019 	pushw	x
      00902C 4B AE            [ 1] 1020 	push	#0xae
      00902E 4B 02            [ 1] 1021 	push	#0x02
      009030 4B 00            [ 1] 1022 	push	#0x00
      009032 4B 00            [ 1] 1023 	push	#0x00
      009034 AE 81 6E         [ 2] 1024 	ldw	x, #(___str_0+0)
      009037 CD AB 2D         [ 4] 1025 	call	_assert_failed
      00903A 85               [ 2] 1026 	popw	x
      00903B                       1027 00112$:
                                   1028 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 689: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
      00903B 9E               [ 1] 1029 	ld	a, xh
                                   1030 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 691: switch (regindex)
      00903C A1 01            [ 1] 1031 	cp	a, #0x01
      00903E 27 0A            [ 1] 1032 	jreq	00101$
      009040 A1 02            [ 1] 1033 	cp	a, #0x02
      009042 27 0D            [ 1] 1034 	jreq	00102$
      009044 A1 03            [ 1] 1035 	cp	a, #0x03
      009046 27 10            [ 1] 1036 	jreq	00103$
      009048 20 13            [ 2] 1037 	jra	00105$
                                   1038 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 694: case 0x01:
      00904A                       1039 00101$:
                                   1040 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 695: tempreg = (uint8_t)I2C->SR1;
      00904A C6 52 17         [ 1] 1041 	ld	a, 0x5217
      00904D 6B 01            [ 1] 1042 	ld	(0x01, sp), a
                                   1043 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 696: break;
      00904F 20 0C            [ 2] 1044 	jra	00105$
                                   1045 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 699: case 0x02:
      009051                       1046 00102$:
                                   1047 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 700: tempreg = (uint8_t)I2C->SR2;
      009051 C6 52 18         [ 1] 1048 	ld	a, 0x5218
      009054 6B 01            [ 1] 1049 	ld	(0x01, sp), a
                                   1050 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 701: break;
      009056 20 05            [ 2] 1051 	jra	00105$
                                   1052 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 704: case 0x03:
      009058                       1053 00103$:
                                   1054 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 705: tempreg = (uint8_t)I2C->SR3;
      009058 C6 52 19         [ 1] 1055 	ld	a, 0x5219
      00905B 6B 01            [ 1] 1056 	ld	(0x01, sp), a
                                   1057 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 710: }
      00905D                       1058 00105$:
                                   1059 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 713: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
      00905D 7B 03            [ 1] 1060 	ld	a, (0x03, sp)
      00905F 14 01            [ 1] 1061 	and	a, (0x01, sp)
      009061 27 03            [ 1] 1062 	jreq	00107$
                                   1063 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 716: bitstatus = SET;
      009063 A6 01            [ 1] 1064 	ld	a, #0x01
                                   1065 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 721: bitstatus = RESET;
      009065 21                    1066 	.byte 0x21
      009066                       1067 00107$:
      009066 4F               [ 1] 1068 	clr	a
      009067                       1069 00108$:
                                   1070 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 724: return bitstatus;
                                   1071 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 725: }
      009067 5B 03            [ 2] 1072 	addw	sp, #3
      009069 81               [ 4] 1073 	ret
                                   1074 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 759: void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
                                   1075 ;	-----------------------------------------
                                   1076 ;	 function I2C_ClearFlag
                                   1077 ;	-----------------------------------------
      00906A                       1078 _I2C_ClearFlag:
                                   1079 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 763: assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
      00906A 9E               [ 1] 1080 	ld	a, xh
      00906B A5 FD            [ 1] 1081 	bcp	a, #0xfd
      00906D 26 03            [ 1] 1082 	jrne	00103$
      00906F 5D               [ 2] 1083 	tnzw	x
      009070 26 10            [ 1] 1084 	jrne	00104$
      009072                       1085 00103$:
      009072 89               [ 2] 1086 	pushw	x
      009073 4B FB            [ 1] 1087 	push	#0xfb
      009075 4B 02            [ 1] 1088 	push	#0x02
      009077 4B 00            [ 1] 1089 	push	#0x00
      009079 4B 00            [ 1] 1090 	push	#0x00
      00907B AE 81 6E         [ 2] 1091 	ldw	x, #(___str_0+0)
      00907E CD AB 2D         [ 4] 1092 	call	_assert_failed
      009081 85               [ 2] 1093 	popw	x
      009082                       1094 00104$:
                                   1095 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 766: flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
      009082 4F               [ 1] 1096 	clr	a
      009083 95               [ 1] 1097 	ld	xh, a
                                   1098 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 768: I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
      009084 53               [ 2] 1099 	cplw	x
      009085 9F               [ 1] 1100 	ld	a, xl
      009086 C7 52 18         [ 1] 1101 	ld	0x5218, a
                                   1102 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 769: }
      009089 81               [ 4] 1103 	ret
                                   1104 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 791: ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
                                   1105 ;	-----------------------------------------
                                   1106 ;	 function I2C_GetITStatus
                                   1107 ;	-----------------------------------------
      00908A                       1108 _I2C_GetITStatus:
      00908A 52 06            [ 2] 1109 	sub	sp, #6
      00908C 1F 05            [ 2] 1110 	ldw	(0x05, sp), x
                                   1111 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 794: __IO uint8_t enablestatus = 0;
      00908E 0F 03            [ 1] 1112 	clr	(0x03, sp)
                                   1113 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 798: assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
      009090 1E 05            [ 2] 1114 	ldw	x, (0x05, sp)
      009092 A3 16 80         [ 2] 1115 	cpw	x, #0x1680
      009095 27 47            [ 1] 1116 	jreq	00115$
      009097 A3 16 40         [ 2] 1117 	cpw	x, #0x1640
      00909A 27 42            [ 1] 1118 	jreq	00115$
      00909C A3 12 10         [ 2] 1119 	cpw	x, #0x1210
      00909F 27 3D            [ 1] 1120 	jreq	00115$
      0090A1 A3 12 08         [ 2] 1121 	cpw	x, #0x1208
      0090A4 27 38            [ 1] 1122 	jreq	00115$
      0090A6 A3 12 04         [ 2] 1123 	cpw	x, #0x1204
      0090A9 27 33            [ 1] 1124 	jreq	00115$
      0090AB A3 12 02         [ 2] 1125 	cpw	x, #0x1202
      0090AE 27 2E            [ 1] 1126 	jreq	00115$
      0090B0 A3 12 01         [ 2] 1127 	cpw	x, #0x1201
      0090B3 27 29            [ 1] 1128 	jreq	00115$
      0090B5 A3 22 20         [ 2] 1129 	cpw	x, #0x2220
      0090B8 27 24            [ 1] 1130 	jreq	00115$
      0090BA A3 21 08         [ 2] 1131 	cpw	x, #0x2108
      0090BD 27 1F            [ 1] 1132 	jreq	00115$
      0090BF A3 21 04         [ 2] 1133 	cpw	x, #0x2104
      0090C2 27 1A            [ 1] 1134 	jreq	00115$
      0090C4 A3 21 02         [ 2] 1135 	cpw	x, #0x2102
      0090C7 27 15            [ 1] 1136 	jreq	00115$
      0090C9 A3 21 01         [ 2] 1137 	cpw	x, #0x2101
      0090CC 27 10            [ 1] 1138 	jreq	00115$
      0090CE 89               [ 2] 1139 	pushw	x
      0090CF 4B 1E            [ 1] 1140 	push	#0x1e
      0090D1 4B 03            [ 1] 1141 	push	#0x03
      0090D3 4B 00            [ 1] 1142 	push	#0x00
      0090D5 4B 00            [ 1] 1143 	push	#0x00
      0090D7 AE 81 6E         [ 2] 1144 	ldw	x, #(___str_0+0)
      0090DA CD AB 2D         [ 4] 1145 	call	_assert_failed
      0090DD 85               [ 2] 1146 	popw	x
      0090DE                       1147 00115$:
                                   1148 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 800: tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
      0090DE 0F 02            [ 1] 1149 	clr	(0x02, sp)
      0090E0 9E               [ 1] 1150 	ld	a, xh
      0090E1 A4 07            [ 1] 1151 	and	a, #0x07
      0090E3 6B 04            [ 1] 1152 	ld	(0x04, sp), a
                                   1153 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 803: enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
      0090E5 C6 52 1A         [ 1] 1154 	ld	a, 0x521a
      0090E8 14 04            [ 1] 1155 	and	a, (0x04, sp)
      0090EA 6B 03            [ 1] 1156 	ld	(0x03, sp), a
                                   1157 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 805: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
      0090EC 4F               [ 1] 1158 	clr	a
      0090ED 02               [ 1] 1159 	rlwa	x
      0090EE A4 30            [ 1] 1160 	and	a, #0x30
      0090F0 95               [ 1] 1161 	ld	xh, a
                                   1162 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 808: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      0090F1 7B 06            [ 1] 1163 	ld	a, (0x06, sp)
      0090F3 6B 04            [ 1] 1164 	ld	(0x04, sp), a
                                   1165 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 805: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
      0090F5 A3 01 00         [ 2] 1166 	cpw	x, #0x0100
      0090F8 26 12            [ 1] 1167 	jrne	00110$
                                   1168 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 808: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      0090FA C6 52 17         [ 1] 1169 	ld	a, 0x5217
      0090FD 14 04            [ 1] 1170 	and	a, (0x04, sp)
      0090FF 27 08            [ 1] 1171 	jreq	00102$
      009101 0D 03            [ 1] 1172 	tnz	(0x03, sp)
      009103 27 04            [ 1] 1173 	jreq	00102$
                                   1174 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 811: bitstatus = SET;
      009105 A6 01            [ 1] 1175 	ld	a, #0x01
      009107 20 12            [ 2] 1176 	jra	00111$
      009109                       1177 00102$:
                                   1178 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 816: bitstatus = RESET;
      009109 4F               [ 1] 1179 	clr	a
      00910A 20 0F            [ 2] 1180 	jra	00111$
      00910C                       1181 00110$:
                                   1182 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 822: if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      00910C C6 52 18         [ 1] 1183 	ld	a, 0x5218
      00910F 14 04            [ 1] 1184 	and	a, (0x04, sp)
      009111 27 07            [ 1] 1185 	jreq	00106$
      009113 0D 03            [ 1] 1186 	tnz	(0x03, sp)
      009115 27 03            [ 1] 1187 	jreq	00106$
                                   1188 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 825: bitstatus = SET;
      009117 A6 01            [ 1] 1189 	ld	a, #0x01
                                   1190 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 830: bitstatus = RESET;
      009119 21                    1191 	.byte 0x21
      00911A                       1192 00106$:
      00911A 4F               [ 1] 1193 	clr	a
      00911B                       1194 00111$:
                                   1195 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 834: return  bitstatus;
                                   1196 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 835: }
      00911B 5B 06            [ 2] 1197 	addw	sp, #6
      00911D 81               [ 4] 1198 	ret
                                   1199 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 871: void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
                                   1200 ;	-----------------------------------------
                                   1201 ;	 function I2C_ClearITPendingBit
                                   1202 ;	-----------------------------------------
      00911E                       1203 _I2C_ClearITPendingBit:
                                   1204 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 876: assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
      00911E A3 22 20         [ 2] 1205 	cpw	x, #0x2220
      009121 27 24            [ 1] 1206 	jreq	00104$
      009123 A3 21 08         [ 2] 1207 	cpw	x, #0x2108
      009126 27 1F            [ 1] 1208 	jreq	00104$
      009128 A3 21 04         [ 2] 1209 	cpw	x, #0x2104
      00912B 27 1A            [ 1] 1210 	jreq	00104$
      00912D A3 21 02         [ 2] 1211 	cpw	x, #0x2102
      009130 27 15            [ 1] 1212 	jreq	00104$
      009132 A3 21 01         [ 2] 1213 	cpw	x, #0x2101
      009135 27 10            [ 1] 1214 	jreq	00104$
      009137 89               [ 2] 1215 	pushw	x
      009138 4B 6C            [ 1] 1216 	push	#0x6c
      00913A 4B 03            [ 1] 1217 	push	#0x03
      00913C 4B 00            [ 1] 1218 	push	#0x00
      00913E 4B 00            [ 1] 1219 	push	#0x00
      009140 AE 81 6E         [ 2] 1220 	ldw	x, #(___str_0+0)
      009143 CD AB 2D         [ 4] 1221 	call	_assert_failed
      009146 85               [ 2] 1222 	popw	x
      009147                       1223 00104$:
                                   1224 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 879: flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
      009147 4F               [ 1] 1225 	clr	a
      009148 95               [ 1] 1226 	ld	xh, a
                                   1227 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 882: I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
      009149 53               [ 2] 1228 	cplw	x
      00914A 9F               [ 1] 1229 	ld	a, xl
      00914B C7 52 18         [ 1] 1230 	ld	0x5218, a
                                   1231 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 883: }
      00914E 81               [ 4] 1232 	ret
                                   1233 	.area CODE
                                   1234 	.area CONST
                                   1235 	.area CONST
      00816E                       1236 ___str_0:
      00816E 43 3A                 1237 	.ascii "C:"
      008170 5C                    1238 	.db 0x5c
      008171 55 73 65 72 73        1239 	.ascii "Users"
      008176 5C                    1240 	.db 0x5c
      008177 64 69 73 61 6E        1241 	.ascii "disan"
      00817C 5C                    1242 	.db 0x5c
      00817D 2E 70 6C 61 74 66 6F  1243 	.ascii ".platformio"
             72 6D 69 6F
      008188 5C                    1244 	.db 0x5c
      008189 70 61 63 6B 61 67 65  1245 	.ascii "packages"
             73
      008191 5C                    1246 	.db 0x5c
      008192 66 72 61 6D 65 77 6F  1247 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      0081A5 5C                    1248 	.db 0x5c
      0081A6 4C 69 62 72 61 72 69  1249 	.ascii "Libraries"
             65 73
      0081AF 5C                    1250 	.db 0x5c
      0081B0 53 54 4D 38 53 5F 53  1251 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0081C6 5C                    1252 	.db 0x5c
      0081C7 73 72 63              1253 	.ascii "src"
      0081CA 5C                    1254 	.db 0x5c
      0081CB 73 74 6D 38 73 5F 69  1255 	.ascii "stm8s_i2c.c"
             32 63 2E 63
      0081D6 00                    1256 	.db 0x00
                                   1257 	.area CODE
                                   1258 	.area INITIALIZER
                                   1259 	.area CABS (ABS)
