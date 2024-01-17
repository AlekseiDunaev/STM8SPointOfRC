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
                                     15 	.globl _I2C_GenerateSTART
                                     16 	.globl _I2C_GenerateSTOP
                                     17 	.globl _I2C_AcknowledgeConfig
                                     18 	.globl _I2C_ReceiveData
                                     19 	.globl _I2C_Send7bitAddress
                                     20 	.globl _I2C_SendData
                                     21 	.globl _I2C_CheckEvent
                                     22 	.globl _I2C_GetFlagStatus
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area DATA
                                     27 ;--------------------------------------------------------
                                     28 ; ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area INITIALIZED
                                     31 ;--------------------------------------------------------
                                     32 ; absolute external ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DABS (ABS)
                                     35 
                                     36 ; default segment ordering for linker
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area CONST
                                     41 	.area INITIALIZER
                                     42 	.area CODE
                                     43 
                                     44 ;--------------------------------------------------------
                                     45 ; global & static initialisations
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area GSINIT
                                     49 	.area GSFINAL
                                     50 	.area GSINIT
                                     51 ;--------------------------------------------------------
                                     52 ; Home
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area HOME
                                     56 ;--------------------------------------------------------
                                     57 ; code
                                     58 ;--------------------------------------------------------
                                     59 	.area CODE
                                     60 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 67: void I2C_DeInit(void)
                                     61 ;	-----------------------------------------
                                     62 ;	 function I2C_DeInit
                                     63 ;	-----------------------------------------
      00888A                         64 _I2C_DeInit:
                                     65 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 69: I2C->CR1 = I2C_CR1_RESET_VALUE;
      00888A 35 00 52 10      [ 1]   66 	mov	0x5210+0, #0x00
                                     67 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 70: I2C->CR2 = I2C_CR2_RESET_VALUE;
      00888E 35 00 52 11      [ 1]   68 	mov	0x5211+0, #0x00
                                     69 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 71: I2C->FREQR = I2C_FREQR_RESET_VALUE;
      008892 35 00 52 12      [ 1]   70 	mov	0x5212+0, #0x00
                                     71 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 72: I2C->OARL = I2C_OARL_RESET_VALUE;
      008896 35 00 52 13      [ 1]   72 	mov	0x5213+0, #0x00
                                     73 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 73: I2C->OARH = I2C_OARH_RESET_VALUE;
      00889A 35 00 52 14      [ 1]   74 	mov	0x5214+0, #0x00
                                     75 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 74: I2C->ITR = I2C_ITR_RESET_VALUE;
      00889E 35 00 52 1A      [ 1]   76 	mov	0x521a+0, #0x00
                                     77 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 75: I2C->CCRL = I2C_CCRL_RESET_VALUE;
      0088A2 35 00 52 1B      [ 1]   78 	mov	0x521b+0, #0x00
                                     79 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 76: I2C->CCRH = I2C_CCRH_RESET_VALUE;
      0088A6 35 00 52 1C      [ 1]   80 	mov	0x521c+0, #0x00
                                     81 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 77: I2C->TRISER = I2C_TRISER_RESET_VALUE;
      0088AA 35 02 52 1D      [ 1]   82 	mov	0x521d+0, #0x02
                                     83 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 78: }
      0088AE 81               [ 4]   84 	ret
                                     85 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 96: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
                                     86 ;	-----------------------------------------
                                     87 ;	 function I2C_Init
                                     88 ;	-----------------------------------------
      0088AF                         89 _I2C_Init:
      0088AF 52 07            [ 2]   90 	sub	sp, #7
                                     91 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 102: uint8_t tmpccrh = 0;
      0088B1 0F 05            [ 1]   92 	clr	(0x05, sp)
                                     93 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 105: assert_param(IS_I2C_ACK_OK(Ack));
      0088B3 0D 11            [ 1]   94 	tnz	(0x11, sp)
      0088B5 27 17            [ 1]   95 	jreq	00114$
      0088B7 7B 11            [ 1]   96 	ld	a, (0x11, sp)
      0088B9 4A               [ 1]   97 	dec	a
      0088BA 27 12            [ 1]   98 	jreq	00114$
      0088BC 7B 11            [ 1]   99 	ld	a, (0x11, sp)
      0088BE A1 02            [ 1]  100 	cp	a, #0x02
      0088C0 27 0C            [ 1]  101 	jreq	00114$
      0088C2 4B 69            [ 1]  102 	push	#0x69
      0088C4 5F               [ 1]  103 	clrw	x
      0088C5 89               [ 2]  104 	pushw	x
      0088C6 4B 00            [ 1]  105 	push	#0x00
      0088C8 AE 81 6E         [ 2]  106 	ldw	x, #(___str_0+0)
      0088CB CD AA 17         [ 4]  107 	call	_assert_failed
      0088CE                        108 00114$:
                                    109 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 106: assert_param(IS_I2C_ADDMODE_OK(AddMode));
      0088CE 0D 12            [ 1]  110 	tnz	(0x12, sp)
      0088D0 27 12            [ 1]  111 	jreq	00122$
      0088D2 7B 12            [ 1]  112 	ld	a, (0x12, sp)
      0088D4 A1 80            [ 1]  113 	cp	a, #0x80
      0088D6 27 0C            [ 1]  114 	jreq	00122$
      0088D8 4B 6A            [ 1]  115 	push	#0x6a
      0088DA 5F               [ 1]  116 	clrw	x
      0088DB 89               [ 2]  117 	pushw	x
      0088DC 4B 00            [ 1]  118 	push	#0x00
      0088DE AE 81 6E         [ 2]  119 	ldw	x, #(___str_0+0)
      0088E1 CD AA 17         [ 4]  120 	call	_assert_failed
      0088E4                        121 00122$:
                                    122 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 107: assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
      0088E4 1E 0E            [ 2]  123 	ldw	x, (0x0e, sp)
      0088E6 A3 03 FF         [ 2]  124 	cpw	x, #0x03ff
      0088E9 23 0C            [ 2]  125 	jrule	00127$
      0088EB 4B 6B            [ 1]  126 	push	#0x6b
      0088ED 5F               [ 1]  127 	clrw	x
      0088EE 89               [ 2]  128 	pushw	x
      0088EF 4B 00            [ 1]  129 	push	#0x00
      0088F1 AE 81 6E         [ 2]  130 	ldw	x, #(___str_0+0)
      0088F4 CD AA 17         [ 4]  131 	call	_assert_failed
      0088F7                        132 00127$:
                                    133 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 108: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
      0088F7 0D 10            [ 1]  134 	tnz	(0x10, sp)
      0088F9 27 12            [ 1]  135 	jreq	00129$
      0088FB 7B 10            [ 1]  136 	ld	a, (0x10, sp)
      0088FD A1 40            [ 1]  137 	cp	a, #0x40
      0088FF 27 0C            [ 1]  138 	jreq	00129$
      008901 4B 6C            [ 1]  139 	push	#0x6c
      008903 5F               [ 1]  140 	clrw	x
      008904 89               [ 2]  141 	pushw	x
      008905 4B 00            [ 1]  142 	push	#0x00
      008907 AE 81 6E         [ 2]  143 	ldw	x, #(___str_0+0)
      00890A CD AA 17         [ 4]  144 	call	_assert_failed
      00890D                        145 00129$:
                                    146 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 109: assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
      00890D 7B 13            [ 1]  147 	ld	a, (0x13, sp)
      00890F A1 01            [ 1]  148 	cp	a, #0x01
      008911 25 06            [ 1]  149 	jrc	00133$
      008913 7B 13            [ 1]  150 	ld	a, (0x13, sp)
      008915 A1 10            [ 1]  151 	cp	a, #0x10
      008917 23 0C            [ 2]  152 	jrule	00134$
      008919                        153 00133$:
      008919 4B 6D            [ 1]  154 	push	#0x6d
      00891B 5F               [ 1]  155 	clrw	x
      00891C 89               [ 2]  156 	pushw	x
      00891D 4B 00            [ 1]  157 	push	#0x00
      00891F AE 81 6E         [ 2]  158 	ldw	x, #(___str_0+0)
      008922 CD AA 17         [ 4]  159 	call	_assert_failed
      008925                        160 00134$:
                                    161 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 110: assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
      008925 1E 0C            [ 2]  162 	ldw	x, (0x0c, sp)
      008927 A3 00 01         [ 2]  163 	cpw	x, #0x0001
      00892A 7B 0B            [ 1]  164 	ld	a, (0x0b, sp)
      00892C A2 00            [ 1]  165 	sbc	a, #0x00
      00892E 7B 0A            [ 1]  166 	ld	a, (0x0a, sp)
      008930 A2 00            [ 1]  167 	sbc	a, #0x00
      008932 25 0E            [ 1]  168 	jrc	00138$
      008934 AE 1A 80         [ 2]  169 	ldw	x, #0x1a80
      008937 13 0C            [ 2]  170 	cpw	x, (0x0c, sp)
      008939 A6 06            [ 1]  171 	ld	a, #0x06
      00893B 12 0B            [ 1]  172 	sbc	a, (0x0b, sp)
      00893D 4F               [ 1]  173 	clr	a
      00893E 12 0A            [ 1]  174 	sbc	a, (0x0a, sp)
      008940 24 0C            [ 1]  175 	jrnc	00139$
      008942                        176 00138$:
      008942 4B 6E            [ 1]  177 	push	#0x6e
      008944 5F               [ 1]  178 	clrw	x
      008945 89               [ 2]  179 	pushw	x
      008946 4B 00            [ 1]  180 	push	#0x00
      008948 AE 81 6E         [ 2]  181 	ldw	x, #(___str_0+0)
      00894B CD AA 17         [ 4]  182 	call	_assert_failed
      00894E                        183 00139$:
                                    184 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 115: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
      00894E C6 52 12         [ 1]  185 	ld	a, 0x5212
      008951 A4 C0            [ 1]  186 	and	a, #0xc0
      008953 C7 52 12         [ 1]  187 	ld	0x5212, a
                                    188 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 117: I2C->FREQR |= InputClockFrequencyMHz;
      008956 C6 52 12         [ 1]  189 	ld	a, 0x5212
      008959 1A 13            [ 1]  190 	or	a, (0x13, sp)
      00895B C7 52 12         [ 1]  191 	ld	0x5212, a
                                    192 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 121: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      00895E 72 11 52 10      [ 1]  193 	bres	0x5210, #0
                                    194 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 124: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
      008962 C6 52 1C         [ 1]  195 	ld	a, 0x521c
      008965 A4 30            [ 1]  196 	and	a, #0x30
      008967 C7 52 1C         [ 1]  197 	ld	0x521c, a
                                    198 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 125: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
      00896A C6 52 1B         [ 1]  199 	ld	a, 0x521b
      00896D 35 00 52 1B      [ 1]  200 	mov	0x521b+0, #0x00
                                    201 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008971 5F               [ 1]  202 	clrw	x
      008972 7B 13            [ 1]  203 	ld	a, (0x13, sp)
      008974 97               [ 1]  204 	ld	xl, a
      008975 90 5F            [ 1]  205 	clrw	y
      008977 89               [ 2]  206 	pushw	x
      008978 90 89            [ 2]  207 	pushw	y
      00897A 4B 40            [ 1]  208 	push	#0x40
      00897C 4B 42            [ 1]  209 	push	#0x42
      00897E 4B 0F            [ 1]  210 	push	#0x0f
      008980 4B 00            [ 1]  211 	push	#0x00
      008982 CD B4 88         [ 4]  212 	call	__mullong
      008985 5B 08            [ 2]  213 	addw	sp, #8
      008987 1F 03            [ 2]  214 	ldw	(0x03, sp), x
      008989 17 01            [ 2]  215 	ldw	(0x01, sp), y
                                    216 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 128: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
      00898B AE 86 A0         [ 2]  217 	ldw	x, #0x86a0
      00898E 13 0C            [ 2]  218 	cpw	x, (0x0c, sp)
      008990 A6 01            [ 1]  219 	ld	a, #0x01
      008992 12 0B            [ 1]  220 	sbc	a, (0x0b, sp)
      008994 4F               [ 1]  221 	clr	a
      008995 12 0A            [ 1]  222 	sbc	a, (0x0a, sp)
      008997 24 76            [ 1]  223 	jrnc	00109$
                                    224 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 131: tmpccrh = I2C_CCRH_FS;
      008999 A6 80            [ 1]  225 	ld	a, #0x80
      00899B 6B 05            [ 1]  226 	ld	(0x05, sp), a
                                    227 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 133: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
      00899D 0D 10            [ 1]  228 	tnz	(0x10, sp)
      00899F 26 21            [ 1]  229 	jrne	00102$
                                    230 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      0089A1 1E 0C            [ 2]  231 	ldw	x, (0x0c, sp)
      0089A3 89               [ 2]  232 	pushw	x
      0089A4 1E 0C            [ 2]  233 	ldw	x, (0x0c, sp)
      0089A6 89               [ 2]  234 	pushw	x
      0089A7 4B 03            [ 1]  235 	push	#0x03
      0089A9 5F               [ 1]  236 	clrw	x
      0089AA 89               [ 2]  237 	pushw	x
      0089AB 4B 00            [ 1]  238 	push	#0x00
      0089AD CD B4 88         [ 4]  239 	call	__mullong
      0089B0 5B 08            [ 2]  240 	addw	sp, #8
      0089B2 89               [ 2]  241 	pushw	x
      0089B3 90 89            [ 2]  242 	pushw	y
      0089B5 1E 07            [ 2]  243 	ldw	x, (0x07, sp)
      0089B7 89               [ 2]  244 	pushw	x
      0089B8 1E 07            [ 2]  245 	ldw	x, (0x07, sp)
      0089BA 89               [ 2]  246 	pushw	x
      0089BB CD B1 BD         [ 4]  247 	call	__divulong
      0089BE 5B 08            [ 2]  248 	addw	sp, #8
      0089C0 20 26            [ 2]  249 	jra	00103$
      0089C2                        250 00102$:
                                    251 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 141: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
      0089C2 1E 0C            [ 2]  252 	ldw	x, (0x0c, sp)
      0089C4 89               [ 2]  253 	pushw	x
      0089C5 1E 0C            [ 2]  254 	ldw	x, (0x0c, sp)
      0089C7 89               [ 2]  255 	pushw	x
      0089C8 4B 19            [ 1]  256 	push	#0x19
      0089CA 5F               [ 1]  257 	clrw	x
      0089CB 89               [ 2]  258 	pushw	x
      0089CC 4B 00            [ 1]  259 	push	#0x00
      0089CE CD B4 88         [ 4]  260 	call	__mullong
      0089D1 5B 08            [ 2]  261 	addw	sp, #8
      0089D3 9F               [ 1]  262 	ld	a, xl
      0089D4 88               [ 1]  263 	push	a
      0089D5 9E               [ 1]  264 	ld	a, xh
      0089D6 88               [ 1]  265 	push	a
      0089D7 90 89            [ 2]  266 	pushw	y
      0089D9 1E 07            [ 2]  267 	ldw	x, (0x07, sp)
      0089DB 89               [ 2]  268 	pushw	x
      0089DC 1E 07            [ 2]  269 	ldw	x, (0x07, sp)
      0089DE 89               [ 2]  270 	pushw	x
      0089DF CD B1 BD         [ 4]  271 	call	__divulong
      0089E2 5B 08            [ 2]  272 	addw	sp, #8
                                    273 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 143: tmpccrh |= I2C_CCRH_DUTY;
      0089E4 A6 C0            [ 1]  274 	ld	a, #0xc0
      0089E6 6B 05            [ 1]  275 	ld	(0x05, sp), a
      0089E8                        276 00103$:
                                    277 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 147: if (result < (uint16_t)0x01)
      0089E8 A3 00 01         [ 2]  278 	cpw	x, #0x0001
      0089EB 24 02            [ 1]  279 	jrnc	00105$
                                    280 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 150: result = (uint16_t)0x0001;
      0089ED 5F               [ 1]  281 	clrw	x
      0089EE 5C               [ 1]  282 	incw	x
      0089EF                        283 00105$:
                                    284 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 156: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
      0089EF 7B 13            [ 1]  285 	ld	a, (0x13, sp)
      0089F1 6B 07            [ 1]  286 	ld	(0x07, sp), a
      0089F3 0F 06            [ 1]  287 	clr	(0x06, sp)
      0089F5 89               [ 2]  288 	pushw	x
      0089F6 1E 08            [ 2]  289 	ldw	x, (0x08, sp)
      0089F8 58               [ 2]  290 	sllw	x
      0089F9 72 FB 08         [ 2]  291 	addw	x, (0x08, sp)
      0089FC 51               [ 1]  292 	exgw	x, y
      0089FD 4B 0A            [ 1]  293 	push	#0x0a
      0089FF 4B 00            [ 1]  294 	push	#0x00
      008A01 93               [ 1]  295 	ldw	x, y
      008A02 CD B5 04         [ 4]  296 	call	__divsint
      008A05 90 93            [ 1]  297 	ldw	y, x
      008A07 9F               [ 1]  298 	ld	a, xl
      008A08 85               [ 2]  299 	popw	x
      008A09 4C               [ 1]  300 	inc	a
                                    301 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 157: I2C->TRISER = (uint8_t)tmpval;
      008A0A C7 52 1D         [ 1]  302 	ld	0x521d, a
      008A0D 20 23            [ 2]  303 	jra	00110$
      008A0F                        304 00109$:
                                    305 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 164: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
      008A0F 1E 0C            [ 2]  306 	ldw	x, (0x0c, sp)
      008A11 16 0A            [ 2]  307 	ldw	y, (0x0a, sp)
      008A13 58               [ 2]  308 	sllw	x
      008A14 90 59            [ 2]  309 	rlcw	y
      008A16 89               [ 2]  310 	pushw	x
      008A17 90 89            [ 2]  311 	pushw	y
      008A19 1E 07            [ 2]  312 	ldw	x, (0x07, sp)
      008A1B 89               [ 2]  313 	pushw	x
      008A1C 1E 07            [ 2]  314 	ldw	x, (0x07, sp)
      008A1E 89               [ 2]  315 	pushw	x
      008A1F CD B1 BD         [ 4]  316 	call	__divulong
      008A22 5B 08            [ 2]  317 	addw	sp, #8
                                    318 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 167: if (result < (uint16_t)0x0004)
      008A24 A3 00 04         [ 2]  319 	cpw	x, #0x0004
      008A27 24 03            [ 1]  320 	jrnc	00107$
                                    321 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 170: result = (uint16_t)0x0004;
      008A29 AE 00 04         [ 2]  322 	ldw	x, #0x0004
      008A2C                        323 00107$:
                                    324 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 176: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
      008A2C 7B 13            [ 1]  325 	ld	a, (0x13, sp)
      008A2E 4C               [ 1]  326 	inc	a
      008A2F C7 52 1D         [ 1]  327 	ld	0x521d, a
      008A32                        328 00110$:
                                    329 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 181: I2C->CCRL = (uint8_t)result;
      008A32 9F               [ 1]  330 	ld	a, xl
      008A33 C7 52 1B         [ 1]  331 	ld	0x521b, a
                                    332 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 182: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
      008A36 9E               [ 1]  333 	ld	a, xh
      008A37 A4 0F            [ 1]  334 	and	a, #0x0f
      008A39 1A 05            [ 1]  335 	or	a, (0x05, sp)
      008A3B C7 52 1C         [ 1]  336 	ld	0x521c, a
                                    337 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 185: I2C->CR1 |= I2C_CR1_PE;
      008A3E 72 10 52 10      [ 1]  338 	bset	0x5210, #0
                                    339 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 188: I2C_AcknowledgeConfig(Ack);
      008A42 7B 11            [ 1]  340 	ld	a, (0x11, sp)
      008A44 CD 8A E8         [ 4]  341 	call	_I2C_AcknowledgeConfig
                                    342 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 191: I2C->OARL = (uint8_t)(OwnAddress);
      008A47 7B 0F            [ 1]  343 	ld	a, (0x0f, sp)
      008A49 C7 52 13         [ 1]  344 	ld	0x5213, a
                                    345 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 192: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
      008A4C 7B 12            [ 1]  346 	ld	a, (0x12, sp)
      008A4E AA 40            [ 1]  347 	or	a, #0x40
      008A50 6B 07            [ 1]  348 	ld	(0x07, sp), a
                                    349 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 193: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
      008A52 4F               [ 1]  350 	clr	a
      008A53 97               [ 1]  351 	ld	xl, a
      008A54 7B 0E            [ 1]  352 	ld	a, (0x0e, sp)
      008A56 A4 03            [ 1]  353 	and	a, #0x03
      008A58 95               [ 1]  354 	ld	xh, a
      008A59 A6 80            [ 1]  355 	ld	a, #0x80
      008A5B 62               [ 2]  356 	div	x, a
      008A5C 9F               [ 1]  357 	ld	a, xl
      008A5D 1A 07            [ 1]  358 	or	a, (0x07, sp)
      008A5F C7 52 14         [ 1]  359 	ld	0x5214, a
                                    360 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 194: }
      008A62 1E 08            [ 2]  361 	ldw	x, (8, sp)
      008A64 5B 13            [ 2]  362 	addw	sp, #19
      008A66 FC               [ 2]  363 	jp	(x)
                                    364 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 202: void I2C_Cmd(FunctionalState NewState)
                                    365 ;	-----------------------------------------
                                    366 ;	 function I2C_Cmd
                                    367 ;	-----------------------------------------
      008A67                        368 _I2C_Cmd:
      008A67 88               [ 1]  369 	push	a
                                    370 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 205: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008A68 6B 01            [ 1]  371 	ld	(0x01, sp), a
      008A6A 27 11            [ 1]  372 	jreq	00107$
      008A6C 7B 01            [ 1]  373 	ld	a, (0x01, sp)
      008A6E 4A               [ 1]  374 	dec	a
      008A6F 27 0C            [ 1]  375 	jreq	00107$
      008A71 4B CD            [ 1]  376 	push	#0xcd
      008A73 5F               [ 1]  377 	clrw	x
      008A74 89               [ 2]  378 	pushw	x
      008A75 4B 00            [ 1]  379 	push	#0x00
      008A77 AE 81 6E         [ 2]  380 	ldw	x, #(___str_0+0)
      008A7A CD AA 17         [ 4]  381 	call	_assert_failed
      008A7D                        382 00107$:
                                    383 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      008A7D C6 52 10         [ 1]  384 	ld	a, 0x5210
                                    385 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 207: if (NewState != DISABLE)
      008A80 0D 01            [ 1]  386 	tnz	(0x01, sp)
      008A82 27 07            [ 1]  387 	jreq	00102$
                                    388 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      008A84 AA 01            [ 1]  389 	or	a, #0x01
      008A86 C7 52 10         [ 1]  390 	ld	0x5210, a
      008A89 20 05            [ 2]  391 	jra	00104$
      008A8B                        392 00102$:
                                    393 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 215: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008A8B A4 FE            [ 1]  394 	and	a, #0xfe
      008A8D C7 52 10         [ 1]  395 	ld	0x5210, a
      008A90                        396 00104$:
                                    397 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 217: }
      008A90 84               [ 1]  398 	pop	a
      008A91 81               [ 4]  399 	ret
                                    400 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 252: void I2C_GenerateSTART(FunctionalState NewState)
                                    401 ;	-----------------------------------------
                                    402 ;	 function I2C_GenerateSTART
                                    403 ;	-----------------------------------------
      008A92                        404 _I2C_GenerateSTART:
      008A92 88               [ 1]  405 	push	a
                                    406 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 255: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008A93 6B 01            [ 1]  407 	ld	(0x01, sp), a
      008A95 27 11            [ 1]  408 	jreq	00107$
      008A97 7B 01            [ 1]  409 	ld	a, (0x01, sp)
      008A99 4A               [ 1]  410 	dec	a
      008A9A 27 0C            [ 1]  411 	jreq	00107$
      008A9C 4B FF            [ 1]  412 	push	#0xff
      008A9E 5F               [ 1]  413 	clrw	x
      008A9F 89               [ 2]  414 	pushw	x
      008AA0 4B 00            [ 1]  415 	push	#0x00
      008AA2 AE 81 6E         [ 2]  416 	ldw	x, #(___str_0+0)
      008AA5 CD AA 17         [ 4]  417 	call	_assert_failed
      008AA8                        418 00107$:
                                    419 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 260: I2C->CR2 |= I2C_CR2_START;
      008AA8 C6 52 11         [ 1]  420 	ld	a, 0x5211
                                    421 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 257: if (NewState != DISABLE)
      008AAB 0D 01            [ 1]  422 	tnz	(0x01, sp)
      008AAD 27 07            [ 1]  423 	jreq	00102$
                                    424 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 260: I2C->CR2 |= I2C_CR2_START;
      008AAF AA 01            [ 1]  425 	or	a, #0x01
      008AB1 C7 52 11         [ 1]  426 	ld	0x5211, a
      008AB4 20 05            [ 2]  427 	jra	00104$
      008AB6                        428 00102$:
                                    429 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 265: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
      008AB6 A4 FE            [ 1]  430 	and	a, #0xfe
      008AB8 C7 52 11         [ 1]  431 	ld	0x5211, a
      008ABB                        432 00104$:
                                    433 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 267: }
      008ABB 84               [ 1]  434 	pop	a
      008ABC 81               [ 4]  435 	ret
                                    436 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 275: void I2C_GenerateSTOP(FunctionalState NewState)
                                    437 ;	-----------------------------------------
                                    438 ;	 function I2C_GenerateSTOP
                                    439 ;	-----------------------------------------
      008ABD                        440 _I2C_GenerateSTOP:
      008ABD 88               [ 1]  441 	push	a
                                    442 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 278: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008ABE 6B 01            [ 1]  443 	ld	(0x01, sp), a
      008AC0 27 11            [ 1]  444 	jreq	00107$
      008AC2 7B 01            [ 1]  445 	ld	a, (0x01, sp)
      008AC4 4A               [ 1]  446 	dec	a
      008AC5 27 0C            [ 1]  447 	jreq	00107$
      008AC7 4B 16            [ 1]  448 	push	#0x16
      008AC9 4B 01            [ 1]  449 	push	#0x01
      008ACB 5F               [ 1]  450 	clrw	x
      008ACC 89               [ 2]  451 	pushw	x
      008ACD AE 81 6E         [ 2]  452 	ldw	x, #(___str_0+0)
      008AD0 CD AA 17         [ 4]  453 	call	_assert_failed
      008AD3                        454 00107$:
                                    455 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 283: I2C->CR2 |= I2C_CR2_STOP;
      008AD3 C6 52 11         [ 1]  456 	ld	a, 0x5211
                                    457 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 280: if (NewState != DISABLE)
      008AD6 0D 01            [ 1]  458 	tnz	(0x01, sp)
      008AD8 27 07            [ 1]  459 	jreq	00102$
                                    460 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 283: I2C->CR2 |= I2C_CR2_STOP;
      008ADA AA 02            [ 1]  461 	or	a, #0x02
      008ADC C7 52 11         [ 1]  462 	ld	0x5211, a
      008ADF 20 05            [ 2]  463 	jra	00104$
      008AE1                        464 00102$:
                                    465 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 288: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
      008AE1 A4 FD            [ 1]  466 	and	a, #0xfd
      008AE3 C7 52 11         [ 1]  467 	ld	0x5211, a
      008AE6                        468 00104$:
                                    469 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 290: }
      008AE6 84               [ 1]  470 	pop	a
      008AE7 81               [ 4]  471 	ret
                                    472 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 351: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
                                    473 ;	-----------------------------------------
                                    474 ;	 function I2C_AcknowledgeConfig
                                    475 ;	-----------------------------------------
      008AE8                        476 _I2C_AcknowledgeConfig:
                                    477 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 354: assert_param(IS_I2C_ACK_OK(Ack));
      008AE8 97               [ 1]  478 	ld	xl, a
      008AE9 4A               [ 1]  479 	dec	a
      008AEA 26 05            [ 1]  480 	jrne	00143$
      008AEC A6 01            [ 1]  481 	ld	a, #0x01
      008AEE 95               [ 1]  482 	ld	xh, a
      008AEF 20 02            [ 2]  483 	jra	00144$
      008AF1                        484 00143$:
      008AF1 4F               [ 1]  485 	clr	a
      008AF2 95               [ 1]  486 	ld	xh, a
      008AF3                        487 00144$:
      008AF3 9F               [ 1]  488 	ld	a, xl
      008AF4 4D               [ 1]  489 	tnz	a
      008AF5 27 19            [ 1]  490 	jreq	00110$
      008AF7 9E               [ 1]  491 	ld	a, xh
      008AF8 4D               [ 1]  492 	tnz	a
      008AF9 26 15            [ 1]  493 	jrne	00110$
      008AFB 9F               [ 1]  494 	ld	a, xl
      008AFC A1 02            [ 1]  495 	cp	a, #0x02
      008AFE 27 10            [ 1]  496 	jreq	00110$
      008B00 89               [ 2]  497 	pushw	x
      008B01 4B 62            [ 1]  498 	push	#0x62
      008B03 4B 01            [ 1]  499 	push	#0x01
      008B05 4B 00            [ 1]  500 	push	#0x00
      008B07 4B 00            [ 1]  501 	push	#0x00
      008B09 AE 81 6E         [ 2]  502 	ldw	x, #(___str_0+0)
      008B0C CD AA 17         [ 4]  503 	call	_assert_failed
      008B0F 85               [ 2]  504 	popw	x
      008B10                        505 00110$:
                                    506 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 359: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008B10 C6 52 11         [ 1]  507 	ld	a, 0x5211
                                    508 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 356: if (Ack == I2C_ACK_NONE)
      008B13 41               [ 1]  509 	exg	a, xl
      008B14 4D               [ 1]  510 	tnz	a
      008B15 41               [ 1]  511 	exg	a, xl
      008B16 26 06            [ 1]  512 	jrne	00105$
                                    513 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 359: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008B18 A4 FB            [ 1]  514 	and	a, #0xfb
      008B1A C7 52 11         [ 1]  515 	ld	0x5211, a
      008B1D 81               [ 4]  516 	ret
      008B1E                        517 00105$:
                                    518 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 364: I2C->CR2 |= I2C_CR2_ACK;
      008B1E AA 04            [ 1]  519 	or	a, #0x04
      008B20 C7 52 11         [ 1]  520 	ld	0x5211, a
                                    521 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 359: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008B23 C6 52 11         [ 1]  522 	ld	a, 0x5211
                                    523 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 366: if (Ack == I2C_ACK_CURR)
      008B26 88               [ 1]  524 	push	a
      008B27 9E               [ 1]  525 	ld	a, xh
      008B28 4D               [ 1]  526 	tnz	a
      008B29 84               [ 1]  527 	pop	a
      008B2A 27 06            [ 1]  528 	jreq	00102$
                                    529 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
      008B2C A4 F7            [ 1]  530 	and	a, #0xf7
      008B2E C7 52 11         [ 1]  531 	ld	0x5211, a
      008B31 81               [ 4]  532 	ret
      008B32                        533 00102$:
                                    534 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 374: I2C->CR2 |= I2C_CR2_POS;
      008B32 AA 08            [ 1]  535 	or	a, #0x08
      008B34 C7 52 11         [ 1]  536 	ld	0x5211, a
                                    537 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 377: }
      008B37 81               [ 4]  538 	ret
                                    539 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 437: uint8_t I2C_ReceiveData(void)
                                    540 ;	-----------------------------------------
                                    541 ;	 function I2C_ReceiveData
                                    542 ;	-----------------------------------------
      008B38                        543 _I2C_ReceiveData:
                                    544 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 440: return ((uint8_t)I2C->DR);
      008B38 C6 52 16         [ 1]  545 	ld	a, 0x5216
                                    546 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 441: }
      008B3B 81               [ 4]  547 	ret
                                    548 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 450: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
                                    549 ;	-----------------------------------------
                                    550 ;	 function I2C_Send7bitAddress
                                    551 ;	-----------------------------------------
      008B3C                        552 _I2C_Send7bitAddress:
      008B3C 88               [ 1]  553 	push	a
                                    554 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 453: assert_param(IS_I2C_ADDRESS_OK(Address));
      008B3D 6B 01            [ 1]  555 	ld	(0x01, sp), a
      008B3F 44               [ 1]  556 	srl	a
      008B40 24 0C            [ 1]  557 	jrnc	00104$
      008B42 4B C5            [ 1]  558 	push	#0xc5
      008B44 4B 01            [ 1]  559 	push	#0x01
      008B46 5F               [ 1]  560 	clrw	x
      008B47 89               [ 2]  561 	pushw	x
      008B48 AE 81 6E         [ 2]  562 	ldw	x, #(___str_0+0)
      008B4B CD AA 17         [ 4]  563 	call	_assert_failed
      008B4E                        564 00104$:
                                    565 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 454: assert_param(IS_I2C_DIRECTION_OK(Direction));
      008B4E 0D 04            [ 1]  566 	tnz	(0x04, sp)
      008B50 27 11            [ 1]  567 	jreq	00106$
      008B52 7B 04            [ 1]  568 	ld	a, (0x04, sp)
      008B54 4A               [ 1]  569 	dec	a
      008B55 27 0C            [ 1]  570 	jreq	00106$
      008B57 4B C6            [ 1]  571 	push	#0xc6
      008B59 4B 01            [ 1]  572 	push	#0x01
      008B5B 5F               [ 1]  573 	clrw	x
      008B5C 89               [ 2]  574 	pushw	x
      008B5D AE 81 6E         [ 2]  575 	ldw	x, #(___str_0+0)
      008B60 CD AA 17         [ 4]  576 	call	_assert_failed
      008B63                        577 00106$:
                                    578 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 457: Address &= (uint8_t)0xFE;
      008B63 7B 01            [ 1]  579 	ld	a, (0x01, sp)
      008B65 A4 FE            [ 1]  580 	and	a, #0xfe
                                    581 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 460: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
      008B67 1A 04            [ 1]  582 	or	a, (0x04, sp)
      008B69 C7 52 16         [ 1]  583 	ld	0x5216, a
                                    584 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 461: }
      008B6C 84               [ 1]  585 	pop	a
      008B6D 85               [ 2]  586 	popw	x
      008B6E 84               [ 1]  587 	pop	a
      008B6F FC               [ 2]  588 	jp	(x)
                                    589 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 468: void I2C_SendData(uint8_t Data)
                                    590 ;	-----------------------------------------
                                    591 ;	 function I2C_SendData
                                    592 ;	-----------------------------------------
      008B70                        593 _I2C_SendData:
                                    594 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 471: I2C->DR = Data;
      008B70 C7 52 16         [ 1]  595 	ld	0x5216, a
                                    596 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 472: }
      008B73 81               [ 4]  597 	ret
                                    598 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 588: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
                                    599 ;	-----------------------------------------
                                    600 ;	 function I2C_CheckEvent
                                    601 ;	-----------------------------------------
      008B74                        602 _I2C_CheckEvent:
      008B74 52 06            [ 2]  603 	sub	sp, #6
                                    604 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 590: __IO uint16_t lastevent = 0x00;
      008B76 0F 02            [ 1]  605 	clr	(0x02, sp)
      008B78 0F 01            [ 1]  606 	clr	(0x01, sp)
                                    607 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 596: assert_param(IS_I2C_EVENT_OK(I2C_Event));
      008B7A A3 00 04         [ 2]  608 	cpw	x, #0x0004
      008B7D 26 03            [ 1]  609 	jrne	00247$
      008B7F A6 01            [ 1]  610 	ld	a, #0x01
      008B81 21                     611 	.byte 0x21
      008B82                        612 00247$:
      008B82 4F               [ 1]  613 	clr	a
      008B83                        614 00248$:
      008B83 A3 06 82         [ 2]  615 	cpw	x, #0x0682
      008B86 27 5B            [ 1]  616 	jreq	00110$
      008B88 A3 02 02         [ 2]  617 	cpw	x, #0x0202
      008B8B 27 56            [ 1]  618 	jreq	00110$
      008B8D A3 12 00         [ 2]  619 	cpw	x, #0x1200
      008B90 27 51            [ 1]  620 	jreq	00110$
      008B92 A3 02 40         [ 2]  621 	cpw	x, #0x0240
      008B95 27 4C            [ 1]  622 	jreq	00110$
      008B97 A3 03 50         [ 2]  623 	cpw	x, #0x0350
      008B9A 27 47            [ 1]  624 	jreq	00110$
      008B9C A3 06 84         [ 2]  625 	cpw	x, #0x0684
      008B9F 27 42            [ 1]  626 	jreq	00110$
      008BA1 A3 07 94         [ 2]  627 	cpw	x, #0x0794
      008BA4 27 3D            [ 1]  628 	jreq	00110$
      008BA6 4D               [ 1]  629 	tnz	a
      008BA7 26 3A            [ 1]  630 	jrne	00110$
      008BA9 A3 00 10         [ 2]  631 	cpw	x, #0x0010
      008BAC 27 35            [ 1]  632 	jreq	00110$
      008BAE A3 03 01         [ 2]  633 	cpw	x, #0x0301
      008BB1 27 30            [ 1]  634 	jreq	00110$
      008BB3 A3 07 82         [ 2]  635 	cpw	x, #0x0782
      008BB6 27 2B            [ 1]  636 	jreq	00110$
      008BB8 A3 03 02         [ 2]  637 	cpw	x, #0x0302
      008BBB 27 26            [ 1]  638 	jreq	00110$
      008BBD A3 03 40         [ 2]  639 	cpw	x, #0x0340
      008BC0 27 21            [ 1]  640 	jreq	00110$
      008BC2 A3 07 84         [ 2]  641 	cpw	x, #0x0784
      008BC5 27 1C            [ 1]  642 	jreq	00110$
      008BC7 A3 07 80         [ 2]  643 	cpw	x, #0x0780
      008BCA 27 17            [ 1]  644 	jreq	00110$
      008BCC A3 03 08         [ 2]  645 	cpw	x, #0x0308
      008BCF 27 12            [ 1]  646 	jreq	00110$
      008BD1 88               [ 1]  647 	push	a
      008BD2 89               [ 2]  648 	pushw	x
      008BD3 4B 54            [ 1]  649 	push	#0x54
      008BD5 4B 02            [ 1]  650 	push	#0x02
      008BD7 4B 00            [ 1]  651 	push	#0x00
      008BD9 4B 00            [ 1]  652 	push	#0x00
      008BDB AE 81 6E         [ 2]  653 	ldw	x, #(___str_0+0)
      008BDE CD AA 17         [ 4]  654 	call	_assert_failed
      008BE1 85               [ 2]  655 	popw	x
      008BE2 84               [ 1]  656 	pop	a
      008BE3                        657 00110$:
                                    658 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 598: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
      008BE3 4D               [ 1]  659 	tnz	a
      008BE4 27 0D            [ 1]  660 	jreq	00102$
                                    661 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 600: lastevent = I2C->SR2 & I2C_SR2_AF;
      008BE6 C6 52 18         [ 1]  662 	ld	a, 0x5218
      008BE9 A4 04            [ 1]  663 	and	a, #0x04
      008BEB 90 5F            [ 1]  664 	clrw	y
      008BED 90 97            [ 1]  665 	ld	yl, a
      008BEF 17 01            [ 2]  666 	ldw	(0x01, sp), y
      008BF1 20 1A            [ 2]  667 	jra	00103$
      008BF3                        668 00102$:
                                    669 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 604: flag1 = I2C->SR1;
      008BF3 C6 52 17         [ 1]  670 	ld	a, 0x5217
      008BF6 6B 06            [ 1]  671 	ld	(0x06, sp), a
                                    672 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 605: flag2 = I2C->SR3;
      008BF8 C6 52 19         [ 1]  673 	ld	a, 0x5219
                                    674 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 606: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
      008BFB 90 95            [ 1]  675 	ld	yh, a
      008BFD 0F 04            [ 1]  676 	clr	(0x04, sp)
      008BFF 7B 06            [ 1]  677 	ld	a, (0x06, sp)
      008C01 0F 05            [ 1]  678 	clr	(0x05, sp)
      008C03 1A 04            [ 1]  679 	or	a, (0x04, sp)
      008C05 90 02            [ 1]  680 	rlwa	y
      008C07 1A 05            [ 1]  681 	or	a, (0x05, sp)
      008C09 90 95            [ 1]  682 	ld	yh, a
      008C0B 17 01            [ 2]  683 	ldw	(0x01, sp), y
      008C0D                        684 00103$:
                                    685 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 609: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
      008C0D 9F               [ 1]  686 	ld	a, xl
      008C0E 14 02            [ 1]  687 	and	a, (0x02, sp)
      008C10 6B 06            [ 1]  688 	ld	(0x06, sp), a
      008C12 9E               [ 1]  689 	ld	a, xh
      008C13 14 01            [ 1]  690 	and	a, (0x01, sp)
      008C15 6B 05            [ 1]  691 	ld	(0x05, sp), a
      008C17 13 05            [ 2]  692 	cpw	x, (0x05, sp)
      008C19 26 03            [ 1]  693 	jrne	00105$
                                    694 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 612: status = SUCCESS;
      008C1B A6 01            [ 1]  695 	ld	a, #0x01
                                    696 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 617: status = ERROR;
      008C1D 21                     697 	.byte 0x21
      008C1E                        698 00105$:
      008C1E 4F               [ 1]  699 	clr	a
      008C1F                        700 00106$:
                                    701 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 621: return status;
                                    702 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 622: }
      008C1F 5B 06            [ 2]  703 	addw	sp, #6
      008C21 81               [ 4]  704 	ret
                                    705 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 691: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
                                    706 ;	-----------------------------------------
                                    707 ;	 function I2C_GetFlagStatus
                                    708 ;	-----------------------------------------
      008C22                        709 _I2C_GetFlagStatus:
      008C22 52 03            [ 2]  710 	sub	sp, #3
      008C24 1F 02            [ 2]  711 	ldw	(0x02, sp), x
                                    712 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 693: uint8_t tempreg = 0;
      008C26 0F 01            [ 1]  713 	clr	(0x01, sp)
                                    714 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 698: assert_param(IS_I2C_FLAG_OK(I2C_Flag));
      008C28 1E 02            [ 2]  715 	ldw	x, (0x02, sp)
      008C2A A3 01 80         [ 2]  716 	cpw	x, #0x0180
      008C2D 27 5B            [ 1]  717 	jreq	00112$
      008C2F A3 01 40         [ 2]  718 	cpw	x, #0x0140
      008C32 27 56            [ 1]  719 	jreq	00112$
      008C34 A3 01 10         [ 2]  720 	cpw	x, #0x0110
      008C37 27 51            [ 1]  721 	jreq	00112$
      008C39 A3 01 08         [ 2]  722 	cpw	x, #0x0108
      008C3C 27 4C            [ 1]  723 	jreq	00112$
      008C3E A3 01 04         [ 2]  724 	cpw	x, #0x0104
      008C41 27 47            [ 1]  725 	jreq	00112$
      008C43 A3 01 02         [ 2]  726 	cpw	x, #0x0102
      008C46 27 42            [ 1]  727 	jreq	00112$
      008C48 A3 01 01         [ 2]  728 	cpw	x, #0x0101
      008C4B 27 3D            [ 1]  729 	jreq	00112$
      008C4D A3 02 20         [ 2]  730 	cpw	x, #0x0220
      008C50 27 38            [ 1]  731 	jreq	00112$
      008C52 A3 02 08         [ 2]  732 	cpw	x, #0x0208
      008C55 27 33            [ 1]  733 	jreq	00112$
      008C57 A3 02 04         [ 2]  734 	cpw	x, #0x0204
      008C5A 27 2E            [ 1]  735 	jreq	00112$
      008C5C A3 02 02         [ 2]  736 	cpw	x, #0x0202
      008C5F 27 29            [ 1]  737 	jreq	00112$
      008C61 A3 02 01         [ 2]  738 	cpw	x, #0x0201
      008C64 27 24            [ 1]  739 	jreq	00112$
      008C66 A3 03 10         [ 2]  740 	cpw	x, #0x0310
      008C69 27 1F            [ 1]  741 	jreq	00112$
      008C6B A3 03 04         [ 2]  742 	cpw	x, #0x0304
      008C6E 27 1A            [ 1]  743 	jreq	00112$
      008C70 A3 03 02         [ 2]  744 	cpw	x, #0x0302
      008C73 27 15            [ 1]  745 	jreq	00112$
      008C75 A3 03 01         [ 2]  746 	cpw	x, #0x0301
      008C78 27 10            [ 1]  747 	jreq	00112$
      008C7A 89               [ 2]  748 	pushw	x
      008C7B 4B BA            [ 1]  749 	push	#0xba
      008C7D 4B 02            [ 1]  750 	push	#0x02
      008C7F 4B 00            [ 1]  751 	push	#0x00
      008C81 4B 00            [ 1]  752 	push	#0x00
      008C83 AE 81 6E         [ 2]  753 	ldw	x, #(___str_0+0)
      008C86 CD AA 17         [ 4]  754 	call	_assert_failed
      008C89 85               [ 2]  755 	popw	x
      008C8A                        756 00112$:
                                    757 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 701: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
      008C8A 9E               [ 1]  758 	ld	a, xh
                                    759 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 703: switch (regindex)
      008C8B A1 01            [ 1]  760 	cp	a, #0x01
      008C8D 27 0A            [ 1]  761 	jreq	00101$
      008C8F A1 02            [ 1]  762 	cp	a, #0x02
      008C91 27 0D            [ 1]  763 	jreq	00102$
      008C93 A1 03            [ 1]  764 	cp	a, #0x03
      008C95 27 10            [ 1]  765 	jreq	00103$
      008C97 20 13            [ 2]  766 	jra	00105$
                                    767 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 706: case 0x01:
      008C99                        768 00101$:
                                    769 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 707: tempreg = (uint8_t)I2C->SR1;
      008C99 C6 52 17         [ 1]  770 	ld	a, 0x5217
      008C9C 6B 01            [ 1]  771 	ld	(0x01, sp), a
                                    772 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 708: break;
      008C9E 20 0C            [ 2]  773 	jra	00105$
                                    774 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 711: case 0x02:
      008CA0                        775 00102$:
                                    776 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 712: tempreg = (uint8_t)I2C->SR2;
      008CA0 C6 52 18         [ 1]  777 	ld	a, 0x5218
      008CA3 6B 01            [ 1]  778 	ld	(0x01, sp), a
                                    779 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 713: break;
      008CA5 20 05            [ 2]  780 	jra	00105$
                                    781 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 716: case 0x03:
      008CA7                        782 00103$:
                                    783 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 717: tempreg = (uint8_t)I2C->SR3;
      008CA7 C6 52 19         [ 1]  784 	ld	a, 0x5219
      008CAA 6B 01            [ 1]  785 	ld	(0x01, sp), a
                                    786 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 722: }
      008CAC                        787 00105$:
                                    788 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 725: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
      008CAC 7B 03            [ 1]  789 	ld	a, (0x03, sp)
      008CAE 14 01            [ 1]  790 	and	a, (0x01, sp)
      008CB0 27 03            [ 1]  791 	jreq	00107$
                                    792 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 728: bitstatus = SET;
      008CB2 A6 01            [ 1]  793 	ld	a, #0x01
                                    794 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 733: bitstatus = RESET;
      008CB4 21                     795 	.byte 0x21
      008CB5                        796 00107$:
      008CB5 4F               [ 1]  797 	clr	a
      008CB6                        798 00108$:
                                    799 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 736: return bitstatus;
                                    800 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 737: }
      008CB6 5B 03            [ 2]  801 	addw	sp, #3
      008CB8 81               [ 4]  802 	ret
                                    803 	.area CODE
                                    804 	.area CONST
                                    805 	.area CONST
      00816E                        806 ___str_0:
      00816E 43 3A                  807 	.ascii "C:"
      008170 5C                     808 	.db 0x5c
      008171 55 73 65 72 73         809 	.ascii "Users"
      008176 5C                     810 	.db 0x5c
      008177 64 69 73 61 6E         811 	.ascii "disan"
      00817C 5C                     812 	.db 0x5c
      00817D 2E 70 6C 61 74 66 6F   813 	.ascii ".platformio"
             72 6D 69 6F
      008188 5C                     814 	.db 0x5c
      008189 70 61 63 6B 61 67 65   815 	.ascii "packages"
             73
      008191 5C                     816 	.db 0x5c
      008192 66 72 61 6D 65 77 6F   817 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      0081A5 5C                     818 	.db 0x5c
      0081A6 4C 69 62 72 61 72 69   819 	.ascii "Libraries"
             65 73
      0081AF 5C                     820 	.db 0x5c
      0081B0 53 54 4D 38 53 5F 53   821 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0081C6 5C                     822 	.db 0x5c
      0081C7 73 72 63               823 	.ascii "src"
      0081CA 5C                     824 	.db 0x5c
      0081CB 73 74 6D 38 73 5F 69   825 	.ascii "stm8s_i2c.c"
             32 63 2E 63
      0081D6 00                     826 	.db 0x00
                                    827 	.area CODE
                                    828 	.area INITIALIZER
                                    829 	.area CABS (ABS)
