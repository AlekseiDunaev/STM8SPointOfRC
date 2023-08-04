                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_uart2
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _CLK_GetClockFreq
                                     13 	.globl _UART2_DeInit
                                     14 	.globl _UART2_Init
                                     15 	.globl _UART2_Cmd
                                     16 	.globl _UART2_ITConfig
                                     17 	.globl _UART2_IrDAConfig
                                     18 	.globl _UART2_IrDACmd
                                     19 	.globl _UART2_LINBreakDetectionConfig
                                     20 	.globl _UART2_LINConfig
                                     21 	.globl _UART2_LINCmd
                                     22 	.globl _UART2_SmartCardCmd
                                     23 	.globl _UART2_SmartCardNACKCmd
                                     24 	.globl _UART2_WakeUpConfig
                                     25 	.globl _UART2_ReceiverWakeUpCmd
                                     26 	.globl _UART2_ReceiveData8
                                     27 	.globl _UART2_ReceiveData9
                                     28 	.globl _UART2_SendData8
                                     29 	.globl _UART2_SendData9
                                     30 	.globl _UART2_SendBreak
                                     31 	.globl _UART2_SetAddress
                                     32 	.globl _UART2_SetGuardTime
                                     33 	.globl _UART2_SetPrescaler
                                     34 	.globl _UART2_GetFlagStatus
                                     35 	.globl _UART2_ClearFlag
                                     36 	.globl _UART2_GetITStatus
                                     37 	.globl _UART2_ClearITPendingBit
                                     38 ;--------------------------------------------------------
                                     39 ; ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DATA
                                     42 ;--------------------------------------------------------
                                     43 ; ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area INITIALIZED
                                     46 ;--------------------------------------------------------
                                     47 ; absolute external ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area DABS (ABS)
                                     50 
                                     51 ; default segment ordering for linker
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area CONST
                                     56 	.area INITIALIZER
                                     57 	.area CODE
                                     58 
                                     59 ;--------------------------------------------------------
                                     60 ; global & static initialisations
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
                                     63 	.area GSINIT
                                     64 	.area GSFINAL
                                     65 	.area GSINIT
                                     66 ;--------------------------------------------------------
                                     67 ; Home
                                     68 ;--------------------------------------------------------
                                     69 	.area HOME
                                     70 	.area HOME
                                     71 ;--------------------------------------------------------
                                     72 ; code
                                     73 ;--------------------------------------------------------
                                     74 	.area CODE
                                     75 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 53: void UART2_DeInit(void)
                                     76 ;	-----------------------------------------
                                     77 ;	 function UART2_DeInit
                                     78 ;	-----------------------------------------
      009270                         79 _UART2_DeInit:
                                     80 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 57: (void) UART2->SR;
      009270 C6 52 40         [ 1]   81 	ld	a, 0x5240
                                     82 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 58: (void)UART2->DR;
      009273 C6 52 41         [ 1]   83 	ld	a, 0x5241
                                     84 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
      009276 35 00 52 43      [ 1]   85 	mov	0x5243+0, #0x00
                                     86 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
      00927A 35 00 52 42      [ 1]   87 	mov	0x5242+0, #0x00
                                     88 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
      00927E 35 00 52 44      [ 1]   89 	mov	0x5244+0, #0x00
                                     90 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
      009282 35 00 52 45      [ 1]   91 	mov	0x5245+0, #0x00
                                     92 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
      009286 35 00 52 46      [ 1]   93 	mov	0x5246+0, #0x00
                                     94 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
      00928A 35 00 52 47      [ 1]   95 	mov	0x5247+0, #0x00
                                     96 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
      00928E 35 00 52 48      [ 1]   97 	mov	0x5248+0, #0x00
                                     98 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
      009292 35 00 52 49      [ 1]   99 	mov	0x5249+0, #0x00
                                    100 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 69: }
      009296 81               [ 4]  101 	ret
                                    102 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
                                    103 ;	-----------------------------------------
                                    104 ;	 function UART2_Init
                                    105 ;	-----------------------------------------
      009297                        106 _UART2_Init:
      009297 52 0C            [ 2]  107 	sub	sp, #12
                                    108 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 91: assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
      009299 AE 89 68         [ 2]  109 	ldw	x, #0x8968
      00929C 13 11            [ 2]  110 	cpw	x, (0x11, sp)
      00929E A6 09            [ 1]  111 	ld	a, #0x09
      0092A0 12 10            [ 1]  112 	sbc	a, (0x10, sp)
      0092A2 4F               [ 1]  113 	clr	a
      0092A3 12 0F            [ 1]  114 	sbc	a, (0x0f, sp)
      0092A5 24 0C            [ 1]  115 	jrnc	00113$
      0092A7 4B 5B            [ 1]  116 	push	#0x5b
      0092A9 5F               [ 1]  117 	clrw	x
      0092AA 89               [ 2]  118 	pushw	x
      0092AB 4B 00            [ 1]  119 	push	#0x00
      0092AD AE 81 E9         [ 2]  120 	ldw	x, #(___str_0+0)
      0092B0 CD AB 90         [ 4]  121 	call	_assert_failed
      0092B3                        122 00113$:
                                    123 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 92: assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
      0092B3 0D 13            [ 1]  124 	tnz	(0x13, sp)
      0092B5 27 12            [ 1]  125 	jreq	00115$
      0092B7 7B 13            [ 1]  126 	ld	a, (0x13, sp)
      0092B9 A1 10            [ 1]  127 	cp	a, #0x10
      0092BB 27 0C            [ 1]  128 	jreq	00115$
      0092BD 4B 5C            [ 1]  129 	push	#0x5c
      0092BF 5F               [ 1]  130 	clrw	x
      0092C0 89               [ 2]  131 	pushw	x
      0092C1 4B 00            [ 1]  132 	push	#0x00
      0092C3 AE 81 E9         [ 2]  133 	ldw	x, #(___str_0+0)
      0092C6 CD AB 90         [ 4]  134 	call	_assert_failed
      0092C9                        135 00115$:
                                    136 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 93: assert_param(IS_UART2_STOPBITS_OK(StopBits));
      0092C9 0D 14            [ 1]  137 	tnz	(0x14, sp)
      0092CB 27 1E            [ 1]  138 	jreq	00120$
      0092CD 7B 14            [ 1]  139 	ld	a, (0x14, sp)
      0092CF A1 10            [ 1]  140 	cp	a, #0x10
      0092D1 27 18            [ 1]  141 	jreq	00120$
      0092D3 7B 14            [ 1]  142 	ld	a, (0x14, sp)
      0092D5 A1 20            [ 1]  143 	cp	a, #0x20
      0092D7 27 12            [ 1]  144 	jreq	00120$
      0092D9 7B 14            [ 1]  145 	ld	a, (0x14, sp)
      0092DB A1 30            [ 1]  146 	cp	a, #0x30
      0092DD 27 0C            [ 1]  147 	jreq	00120$
      0092DF 4B 5D            [ 1]  148 	push	#0x5d
      0092E1 5F               [ 1]  149 	clrw	x
      0092E2 89               [ 2]  150 	pushw	x
      0092E3 4B 00            [ 1]  151 	push	#0x00
      0092E5 AE 81 E9         [ 2]  152 	ldw	x, #(___str_0+0)
      0092E8 CD AB 90         [ 4]  153 	call	_assert_failed
      0092EB                        154 00120$:
                                    155 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 94: assert_param(IS_UART2_PARITY_OK(Parity));
      0092EB 0D 15            [ 1]  156 	tnz	(0x15, sp)
      0092ED 27 18            [ 1]  157 	jreq	00131$
      0092EF 7B 15            [ 1]  158 	ld	a, (0x15, sp)
      0092F1 A1 04            [ 1]  159 	cp	a, #0x04
      0092F3 27 12            [ 1]  160 	jreq	00131$
      0092F5 7B 15            [ 1]  161 	ld	a, (0x15, sp)
      0092F7 A1 06            [ 1]  162 	cp	a, #0x06
      0092F9 27 0C            [ 1]  163 	jreq	00131$
      0092FB 4B 5E            [ 1]  164 	push	#0x5e
      0092FD 5F               [ 1]  165 	clrw	x
      0092FE 89               [ 2]  166 	pushw	x
      0092FF 4B 00            [ 1]  167 	push	#0x00
      009301 AE 81 E9         [ 2]  168 	ldw	x, #(___str_0+0)
      009304 CD AB 90         [ 4]  169 	call	_assert_failed
      009307                        170 00131$:
                                    171 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 95: assert_param(IS_UART2_MODE_OK((uint8_t)Mode));
      009307 7B 17            [ 1]  172 	ld	a, (0x17, sp)
      009309 A1 08            [ 1]  173 	cp	a, #0x08
      00930B 27 3F            [ 1]  174 	jreq	00139$
      00930D 7B 17            [ 1]  175 	ld	a, (0x17, sp)
      00930F A1 40            [ 1]  176 	cp	a, #0x40
      009311 27 39            [ 1]  177 	jreq	00139$
      009313 7B 17            [ 1]  178 	ld	a, (0x17, sp)
      009315 A1 04            [ 1]  179 	cp	a, #0x04
      009317 27 33            [ 1]  180 	jreq	00139$
      009319 7B 17            [ 1]  181 	ld	a, (0x17, sp)
      00931B A1 80            [ 1]  182 	cp	a, #0x80
      00931D 27 2D            [ 1]  183 	jreq	00139$
      00931F 7B 17            [ 1]  184 	ld	a, (0x17, sp)
      009321 A0 0C            [ 1]  185 	sub	a, #0x0c
      009323 26 02            [ 1]  186 	jrne	00339$
      009325 4C               [ 1]  187 	inc	a
      009326 21                     188 	.byte 0x21
      009327                        189 00339$:
      009327 4F               [ 1]  190 	clr	a
      009328                        191 00340$:
      009328 4D               [ 1]  192 	tnz	a
      009329 26 21            [ 1]  193 	jrne	00139$
      00932B 4D               [ 1]  194 	tnz	a
      00932C 26 1E            [ 1]  195 	jrne	00139$
      00932E 7B 17            [ 1]  196 	ld	a, (0x17, sp)
      009330 A1 44            [ 1]  197 	cp	a, #0x44
      009332 27 18            [ 1]  198 	jreq	00139$
      009334 7B 17            [ 1]  199 	ld	a, (0x17, sp)
      009336 A1 C0            [ 1]  200 	cp	a, #0xc0
      009338 27 12            [ 1]  201 	jreq	00139$
      00933A 7B 17            [ 1]  202 	ld	a, (0x17, sp)
      00933C A1 88            [ 1]  203 	cp	a, #0x88
      00933E 27 0C            [ 1]  204 	jreq	00139$
      009340 4B 5F            [ 1]  205 	push	#0x5f
      009342 5F               [ 1]  206 	clrw	x
      009343 89               [ 2]  207 	pushw	x
      009344 4B 00            [ 1]  208 	push	#0x00
      009346 AE 81 E9         [ 2]  209 	ldw	x, #(___str_0+0)
      009349 CD AB 90         [ 4]  210 	call	_assert_failed
      00934C                        211 00139$:
                                    212 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 96: assert_param(IS_UART2_SYNCMODE_OK((uint8_t)SyncMode));
      00934C 7B 16            [ 1]  213 	ld	a, (0x16, sp)
      00934E 43               [ 1]  214 	cpl	a
      00934F A5 88            [ 1]  215 	bcp	a, #0x88
      009351 27 15            [ 1]  216 	jreq	00167$
      009353 7B 16            [ 1]  217 	ld	a, (0x16, sp)
      009355 43               [ 1]  218 	cpl	a
      009356 A5 44            [ 1]  219 	bcp	a, #0x44
      009358 27 0E            [ 1]  220 	jreq	00167$
      00935A 7B 16            [ 1]  221 	ld	a, (0x16, sp)
      00935C 43               [ 1]  222 	cpl	a
      00935D A5 22            [ 1]  223 	bcp	a, #0x22
      00935F 27 07            [ 1]  224 	jreq	00167$
      009361 7B 16            [ 1]  225 	ld	a, (0x16, sp)
      009363 43               [ 1]  226 	cpl	a
      009364 A5 11            [ 1]  227 	bcp	a, #0x11
      009366 26 0C            [ 1]  228 	jrne	00165$
      009368                        229 00167$:
      009368 4B 60            [ 1]  230 	push	#0x60
      00936A 5F               [ 1]  231 	clrw	x
      00936B 89               [ 2]  232 	pushw	x
      00936C 4B 00            [ 1]  233 	push	#0x00
      00936E AE 81 E9         [ 2]  234 	ldw	x, #(___str_0+0)
      009371 CD AB 90         [ 4]  235 	call	_assert_failed
      009374                        236 00165$:
                                    237 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
      009374 72 19 52 44      [ 1]  238 	bres	0x5244, #4
                                    239 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
      009378 C6 52 44         [ 1]  240 	ld	a, 0x5244
      00937B 1A 13            [ 1]  241 	or	a, (0x13, sp)
      00937D C7 52 44         [ 1]  242 	ld	0x5244, a
                                    243 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      009380 C6 52 46         [ 1]  244 	ld	a, 0x5246
      009383 A4 CF            [ 1]  245 	and	a, #0xcf
      009385 C7 52 46         [ 1]  246 	ld	0x5246, a
                                    247 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
      009388 C6 52 46         [ 1]  248 	ld	a, 0x5246
      00938B 1A 14            [ 1]  249 	or	a, (0x14, sp)
      00938D C7 52 46         [ 1]  250 	ld	0x5246, a
                                    251 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
      009390 C6 52 44         [ 1]  252 	ld	a, 0x5244
      009393 A4 F9            [ 1]  253 	and	a, #0xf9
      009395 C7 52 44         [ 1]  254 	ld	0x5244, a
                                    255 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
      009398 C6 52 44         [ 1]  256 	ld	a, 0x5244
      00939B 1A 15            [ 1]  257 	or	a, (0x15, sp)
      00939D C7 52 44         [ 1]  258 	ld	0x5244, a
                                    259 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
      0093A0 C6 52 42         [ 1]  260 	ld	a, 0x5242
      0093A3 35 00 52 42      [ 1]  261 	mov	0x5242+0, #0x00
                                    262 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
      0093A7 C6 52 43         [ 1]  263 	ld	a, 0x5243
      0093AA A4 0F            [ 1]  264 	and	a, #0x0f
      0093AC C7 52 43         [ 1]  265 	ld	0x5243, a
                                    266 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
      0093AF C6 52 43         [ 1]  267 	ld	a, 0x5243
      0093B2 A4 F0            [ 1]  268 	and	a, #0xf0
      0093B4 C7 52 43         [ 1]  269 	ld	0x5243, a
                                    270 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      0093B7 CD 89 2A         [ 4]  271 	call	_CLK_GetClockFreq
      0093BA 1F 0B            [ 2]  272 	ldw	(0x0b, sp), x
      0093BC 1E 0F            [ 2]  273 	ldw	x, (0x0f, sp)
      0093BE 1F 05            [ 2]  274 	ldw	(0x05, sp), x
      0093C0 1E 11            [ 2]  275 	ldw	x, (0x11, sp)
      0093C2 A6 04            [ 1]  276 	ld	a, #0x04
      0093C4                        277 00364$:
      0093C4 58               [ 2]  278 	sllw	x
      0093C5 09 06            [ 1]  279 	rlc	(0x06, sp)
      0093C7 09 05            [ 1]  280 	rlc	(0x05, sp)
      0093C9 4A               [ 1]  281 	dec	a
      0093CA 26 F8            [ 1]  282 	jrne	00364$
      0093CC 1F 07            [ 2]  283 	ldw	(0x07, sp), x
      0093CE 89               [ 2]  284 	pushw	x
      0093CF 1E 07            [ 2]  285 	ldw	x, (0x07, sp)
      0093D1 89               [ 2]  286 	pushw	x
      0093D2 1E 0F            [ 2]  287 	ldw	x, (0x0f, sp)
      0093D4 89               [ 2]  288 	pushw	x
      0093D5 90 89            [ 2]  289 	pushw	y
      0093D7 CD B2 4A         [ 4]  290 	call	__divulong
      0093DA 5B 08            [ 2]  291 	addw	sp, #8
      0093DC 1F 03            [ 2]  292 	ldw	(0x03, sp), x
      0093DE 17 01            [ 2]  293 	ldw	(0x01, sp), y
                                    294 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      0093E0 CD 89 2A         [ 4]  295 	call	_CLK_GetClockFreq
      0093E3 89               [ 2]  296 	pushw	x
      0093E4 90 89            [ 2]  297 	pushw	y
      0093E6 4B 64            [ 1]  298 	push	#0x64
      0093E8 5F               [ 1]  299 	clrw	x
      0093E9 89               [ 2]  300 	pushw	x
      0093EA 4B 00            [ 1]  301 	push	#0x00
      0093EC CD B5 5A         [ 4]  302 	call	__mullong
      0093EF 5B 08            [ 2]  303 	addw	sp, #8
      0093F1 1F 0B            [ 2]  304 	ldw	(0x0b, sp), x
      0093F3 1E 07            [ 2]  305 	ldw	x, (0x07, sp)
      0093F5 89               [ 2]  306 	pushw	x
      0093F6 1E 07            [ 2]  307 	ldw	x, (0x07, sp)
      0093F8 89               [ 2]  308 	pushw	x
      0093F9 1E 0F            [ 2]  309 	ldw	x, (0x0f, sp)
      0093FB 89               [ 2]  310 	pushw	x
      0093FC 90 89            [ 2]  311 	pushw	y
      0093FE CD B2 4A         [ 4]  312 	call	__divulong
      009401 5B 08            [ 2]  313 	addw	sp, #8
      009403 90 9E            [ 1]  314 	ld	a, yh
      009405 1F 07            [ 2]  315 	ldw	(0x07, sp), x
      009407 6B 05            [ 1]  316 	ld	(0x05, sp), a
      009409 90 9F            [ 1]  317 	ld	a, yl
                                    318 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
      00940B 88               [ 1]  319 	push	a
      00940C 1E 04            [ 2]  320 	ldw	x, (0x04, sp)
      00940E 89               [ 2]  321 	pushw	x
      00940F 1E 04            [ 2]  322 	ldw	x, (0x04, sp)
      009411 89               [ 2]  323 	pushw	x
      009412 4B 64            [ 1]  324 	push	#0x64
      009414 5F               [ 1]  325 	clrw	x
      009415 89               [ 2]  326 	pushw	x
      009416 4B 00            [ 1]  327 	push	#0x00
      009418 CD B5 5A         [ 4]  328 	call	__mullong
      00941B 5B 08            [ 2]  329 	addw	sp, #8
      00941D 1F 0C            [ 2]  330 	ldw	(0x0c, sp), x
      00941F 17 0A            [ 2]  331 	ldw	(0x0a, sp), y
      009421 84               [ 1]  332 	pop	a
      009422 16 07            [ 2]  333 	ldw	y, (0x07, sp)
      009424 72 F2 0B         [ 2]  334 	subw	y, (0x0b, sp)
      009427 12 0A            [ 1]  335 	sbc	a, (0x0a, sp)
      009429 97               [ 1]  336 	ld	xl, a
      00942A 7B 05            [ 1]  337 	ld	a, (0x05, sp)
      00942C 12 09            [ 1]  338 	sbc	a, (0x09, sp)
      00942E 95               [ 1]  339 	ld	xh, a
      00942F A6 04            [ 1]  340 	ld	a, #0x04
      009431                        341 00366$:
      009431 90 58            [ 2]  342 	sllw	y
      009433 59               [ 2]  343 	rlcw	x
      009434 4A               [ 1]  344 	dec	a
      009435 26 FA            [ 1]  345 	jrne	00366$
      009437 4B 64            [ 1]  346 	push	#0x64
      009439 4B 00            [ 1]  347 	push	#0x00
      00943B 4B 00            [ 1]  348 	push	#0x00
      00943D 4B 00            [ 1]  349 	push	#0x00
      00943F 90 89            [ 2]  350 	pushw	y
      009441 89               [ 2]  351 	pushw	x
      009442 CD B2 4A         [ 4]  352 	call	__divulong
      009445 5B 08            [ 2]  353 	addw	sp, #8
      009447 9F               [ 1]  354 	ld	a, xl
      009448 A4 0F            [ 1]  355 	and	a, #0x0f
      00944A 6B 0C            [ 1]  356 	ld	(0x0c, sp), a
                                    357 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
      00944C 1E 03            [ 2]  358 	ldw	x, (0x03, sp)
      00944E A6 10            [ 1]  359 	ld	a, #0x10
      009450 62               [ 2]  360 	div	x, a
      009451 90 93            [ 1]  361 	ldw	y, x
      009453 9F               [ 1]  362 	ld	a, xl
      009454 A4 F0            [ 1]  363 	and	a, #0xf0
                                    364 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
      009456 1A 0C            [ 1]  365 	or	a, (0x0c, sp)
      009458 C7 52 43         [ 1]  366 	ld	0x5243, a
                                    367 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
      00945B 7B 04            [ 1]  368 	ld	a, (0x04, sp)
      00945D C7 52 42         [ 1]  369 	ld	0x5242, a
                                    370 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      009460 C6 52 45         [ 1]  371 	ld	a, 0x5245
      009463 A4 F3            [ 1]  372 	and	a, #0xf3
      009465 C7 52 45         [ 1]  373 	ld	0x5245, a
                                    374 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
      009468 C6 52 46         [ 1]  375 	ld	a, 0x5246
      00946B A4 F8            [ 1]  376 	and	a, #0xf8
      00946D C7 52 46         [ 1]  377 	ld	0x5246, a
                                    378 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
      009470 C6 52 46         [ 1]  379 	ld	a, 0x5246
      009473 6B 0C            [ 1]  380 	ld	(0x0c, sp), a
      009475 7B 16            [ 1]  381 	ld	a, (0x16, sp)
      009477 A4 07            [ 1]  382 	and	a, #0x07
      009479 1A 0C            [ 1]  383 	or	a, (0x0c, sp)
      00947B C7 52 46         [ 1]  384 	ld	0x5246, a
                                    385 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      00947E C6 52 45         [ 1]  386 	ld	a, 0x5245
                                    387 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
      009481 88               [ 1]  388 	push	a
      009482 7B 18            [ 1]  389 	ld	a, (0x18, sp)
      009484 A5 04            [ 1]  390 	bcp	a, #0x04
      009486 84               [ 1]  391 	pop	a
      009487 27 07            [ 1]  392 	jreq	00102$
                                    393 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
      009489 AA 08            [ 1]  394 	or	a, #0x08
      00948B C7 52 45         [ 1]  395 	ld	0x5245, a
      00948E 20 05            [ 2]  396 	jra	00103$
      009490                        397 00102$:
                                    398 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
      009490 A4 F7            [ 1]  399 	and	a, #0xf7
      009492 C7 52 45         [ 1]  400 	ld	0x5245, a
      009495                        401 00103$:
                                    402 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      009495 C6 52 45         [ 1]  403 	ld	a, 0x5245
                                    404 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
      009498 88               [ 1]  405 	push	a
      009499 7B 18            [ 1]  406 	ld	a, (0x18, sp)
      00949B A5 08            [ 1]  407 	bcp	a, #0x08
      00949D 84               [ 1]  408 	pop	a
      00949E 27 07            [ 1]  409 	jreq	00105$
                                    410 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
      0094A0 AA 04            [ 1]  411 	or	a, #0x04
      0094A2 C7 52 45         [ 1]  412 	ld	0x5245, a
      0094A5 20 05            [ 2]  413 	jra	00106$
      0094A7                        414 00105$:
                                    415 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
      0094A7 A4 FB            [ 1]  416 	and	a, #0xfb
      0094A9 C7 52 45         [ 1]  417 	ld	0x5245, a
      0094AC                        418 00106$:
                                    419 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      0094AC C6 52 46         [ 1]  420 	ld	a, 0x5246
                                    421 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
      0094AF 0D 16            [ 1]  422 	tnz	(0x16, sp)
      0094B1 2A 07            [ 1]  423 	jrpl	00108$
                                    424 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
      0094B3 A4 F7            [ 1]  425 	and	a, #0xf7
      0094B5 C7 52 46         [ 1]  426 	ld	0x5246, a
      0094B8 20 0D            [ 2]  427 	jra	00110$
      0094BA                        428 00108$:
                                    429 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
      0094BA 88               [ 1]  430 	push	a
      0094BB 7B 17            [ 1]  431 	ld	a, (0x17, sp)
      0094BD A4 08            [ 1]  432 	and	a, #0x08
      0094BF 6B 0D            [ 1]  433 	ld	(0x0d, sp), a
      0094C1 84               [ 1]  434 	pop	a
      0094C2 1A 0C            [ 1]  435 	or	a, (0x0c, sp)
      0094C4 C7 52 46         [ 1]  436 	ld	0x5246, a
      0094C7                        437 00110$:
                                    438 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 173: }
      0094C7 1E 0D            [ 2]  439 	ldw	x, (13, sp)
      0094C9 5B 17            [ 2]  440 	addw	sp, #23
      0094CB FC               [ 2]  441 	jp	(x)
                                    442 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
                                    443 ;	-----------------------------------------
                                    444 ;	 function UART2_Cmd
                                    445 ;	-----------------------------------------
      0094CC                        446 _UART2_Cmd:
      0094CC 88               [ 1]  447 	push	a
      0094CD 6B 01            [ 1]  448 	ld	(0x01, sp), a
                                    449 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      0094CF C6 52 44         [ 1]  450 	ld	a, 0x5244
                                    451 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 183: if (NewState != DISABLE)
      0094D2 0D 01            [ 1]  452 	tnz	(0x01, sp)
      0094D4 27 07            [ 1]  453 	jreq	00102$
                                    454 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      0094D6 A4 DF            [ 1]  455 	and	a, #0xdf
      0094D8 C7 52 44         [ 1]  456 	ld	0x5244, a
      0094DB 20 05            [ 2]  457 	jra	00104$
      0094DD                        458 00102$:
                                    459 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
      0094DD AA 20            [ 1]  460 	or	a, #0x20
      0094DF C7 52 44         [ 1]  461 	ld	0x5244, a
      0094E2                        462 00104$:
                                    463 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 193: }
      0094E2 84               [ 1]  464 	pop	a
      0094E3 81               [ 4]  465 	ret
                                    466 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
                                    467 ;	-----------------------------------------
                                    468 ;	 function UART2_ITConfig
                                    469 ;	-----------------------------------------
      0094E4                        470 _UART2_ITConfig:
      0094E4 52 07            [ 2]  471 	sub	sp, #7
      0094E6 1F 06            [ 2]  472 	ldw	(0x06, sp), x
      0094E8 6B 05            [ 1]  473 	ld	(0x05, sp), a
                                    474 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 215: assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
      0094EA 1E 06            [ 2]  475 	ldw	x, (0x06, sp)
      0094EC A3 01 00         [ 2]  476 	cpw	x, #0x0100
      0094EF 27 2E            [ 1]  477 	jreq	00125$
      0094F1 A3 02 77         [ 2]  478 	cpw	x, #0x0277
      0094F4 27 29            [ 1]  479 	jreq	00125$
      0094F6 A3 02 66         [ 2]  480 	cpw	x, #0x0266
      0094F9 27 24            [ 1]  481 	jreq	00125$
      0094FB A3 02 05         [ 2]  482 	cpw	x, #0x0205
      0094FE 27 1F            [ 1]  483 	jreq	00125$
      009500 A3 02 44         [ 2]  484 	cpw	x, #0x0244
      009503 27 1A            [ 1]  485 	jreq	00125$
      009505 A3 04 12         [ 2]  486 	cpw	x, #0x0412
      009508 27 15            [ 1]  487 	jreq	00125$
      00950A A3 03 46         [ 2]  488 	cpw	x, #0x0346
      00950D 27 10            [ 1]  489 	jreq	00125$
      00950F 89               [ 2]  490 	pushw	x
      009510 4B D7            [ 1]  491 	push	#0xd7
      009512 4B 00            [ 1]  492 	push	#0x00
      009514 4B 00            [ 1]  493 	push	#0x00
      009516 4B 00            [ 1]  494 	push	#0x00
      009518 AE 81 E9         [ 2]  495 	ldw	x, #(___str_0+0)
      00951B CD AB 90         [ 4]  496 	call	_assert_failed
      00951E 85               [ 2]  497 	popw	x
      00951F                        498 00125$:
                                    499 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00951F 0D 05            [ 1]  500 	tnz	(0x05, sp)
      009521 27 15            [ 1]  501 	jreq	00145$
      009523 7B 05            [ 1]  502 	ld	a, (0x05, sp)
      009525 4A               [ 1]  503 	dec	a
      009526 27 10            [ 1]  504 	jreq	00145$
      009528 89               [ 2]  505 	pushw	x
      009529 4B D8            [ 1]  506 	push	#0xd8
      00952B 4B 00            [ 1]  507 	push	#0x00
      00952D 4B 00            [ 1]  508 	push	#0x00
      00952F 4B 00            [ 1]  509 	push	#0x00
      009531 AE 81 E9         [ 2]  510 	ldw	x, #(___str_0+0)
      009534 CD AB 90         [ 4]  511 	call	_assert_failed
      009537 85               [ 2]  512 	popw	x
      009538                        513 00145$:
                                    514 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
                                    515 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      009538 7B 07            [ 1]  516 	ld	a, (0x07, sp)
      00953A A4 0F            [ 1]  517 	and	a, #0x0f
      00953C 88               [ 1]  518 	push	a
      00953D A6 01            [ 1]  519 	ld	a, #0x01
      00953F 6B 05            [ 1]  520 	ld	(0x05, sp), a
      009541 84               [ 1]  521 	pop	a
      009542 4D               [ 1]  522 	tnz	a
      009543 27 05            [ 1]  523 	jreq	00255$
      009545                        524 00254$:
      009545 08 04            [ 1]  525 	sll	(0x04, sp)
      009547 4A               [ 1]  526 	dec	a
      009548 26 FB            [ 1]  527 	jrne	00254$
      00954A                        528 00255$:
                                    529 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
      00954A 9E               [ 1]  530 	ld	a, xh
      00954B 4A               [ 1]  531 	dec	a
      00954C 26 05            [ 1]  532 	jrne	00257$
      00954E A6 01            [ 1]  533 	ld	a, #0x01
      009550 6B 01            [ 1]  534 	ld	(0x01, sp), a
      009552 C5                     535 	.byte 0xc5
      009553                        536 00257$:
      009553 0F 01            [ 1]  537 	clr	(0x01, sp)
      009555                        538 00258$:
                                    539 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
      009555 9E               [ 1]  540 	ld	a, xh
      009556 A0 02            [ 1]  541 	sub	a, #0x02
      009558 26 04            [ 1]  542 	jrne	00260$
      00955A 4C               [ 1]  543 	inc	a
      00955B 6B 02            [ 1]  544 	ld	(0x02, sp), a
      00955D C5                     545 	.byte 0xc5
      00955E                        546 00260$:
      00955E 0F 02            [ 1]  547 	clr	(0x02, sp)
      009560                        548 00261$:
                                    549 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
      009560 9E               [ 1]  550 	ld	a, xh
      009561 A0 03            [ 1]  551 	sub	a, #0x03
      009563 26 04            [ 1]  552 	jrne	00263$
      009565 4C               [ 1]  553 	inc	a
      009566 6B 03            [ 1]  554 	ld	(0x03, sp), a
      009568 C5                     555 	.byte 0xc5
      009569                        556 00263$:
      009569 0F 03            [ 1]  557 	clr	(0x03, sp)
      00956B                        558 00264$:
                                    559 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 224: if (NewState != DISABLE)
      00956B 0D 05            [ 1]  560 	tnz	(0x05, sp)
      00956D 27 34            [ 1]  561 	jreq	00120$
                                    562 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
      00956F 0D 01            [ 1]  563 	tnz	(0x01, sp)
      009571 27 0A            [ 1]  564 	jreq	00108$
                                    565 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 229: UART2->CR1 |= itpos;
      009573 C6 52 44         [ 1]  566 	ld	a, 0x5244
      009576 1A 04            [ 1]  567 	or	a, (0x04, sp)
      009578 C7 52 44         [ 1]  568 	ld	0x5244, a
      00957B 20 5C            [ 2]  569 	jra	00122$
      00957D                        570 00108$:
                                    571 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
      00957D 0D 02            [ 1]  572 	tnz	(0x02, sp)
      00957F 27 0A            [ 1]  573 	jreq	00105$
                                    574 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 233: UART2->CR2 |= itpos;
      009581 C6 52 45         [ 1]  575 	ld	a, 0x5245
      009584 1A 04            [ 1]  576 	or	a, (0x04, sp)
      009586 C7 52 45         [ 1]  577 	ld	0x5245, a
      009589 20 4E            [ 2]  578 	jra	00122$
      00958B                        579 00105$:
                                    580 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
      00958B 0D 03            [ 1]  581 	tnz	(0x03, sp)
      00958D 27 0A            [ 1]  582 	jreq	00102$
                                    583 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 237: UART2->CR4 |= itpos;
      00958F C6 52 47         [ 1]  584 	ld	a, 0x5247
      009592 1A 04            [ 1]  585 	or	a, (0x04, sp)
      009594 C7 52 47         [ 1]  586 	ld	0x5247, a
      009597 20 40            [ 2]  587 	jra	00122$
      009599                        588 00102$:
                                    589 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 241: UART2->CR6 |= itpos;
      009599 C6 52 49         [ 1]  590 	ld	a, 0x5249
      00959C 1A 04            [ 1]  591 	or	a, (0x04, sp)
      00959E C7 52 49         [ 1]  592 	ld	0x5249, a
      0095A1 20 36            [ 2]  593 	jra	00122$
      0095A3                        594 00120$:
                                    595 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      0095A3 03 04            [ 1]  596 	cpl	(0x04, sp)
                                    597 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 247: if (uartreg == 0x01)
      0095A5 0D 01            [ 1]  598 	tnz	(0x01, sp)
      0095A7 27 0C            [ 1]  599 	jreq	00117$
                                    600 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      0095A9 C6 52 44         [ 1]  601 	ld	a, 0x5244
      0095AC 6B 03            [ 1]  602 	ld	(0x03, sp), a
      0095AE 14 04            [ 1]  603 	and	a, (0x04, sp)
      0095B0 C7 52 44         [ 1]  604 	ld	0x5244, a
      0095B3 20 24            [ 2]  605 	jra	00122$
      0095B5                        606 00117$:
                                    607 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 251: else if (uartreg == 0x02)
      0095B5 0D 02            [ 1]  608 	tnz	(0x02, sp)
      0095B7 27 0A            [ 1]  609 	jreq	00114$
                                    610 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
      0095B9 C6 52 45         [ 1]  611 	ld	a, 0x5245
      0095BC 14 04            [ 1]  612 	and	a, (0x04, sp)
      0095BE C7 52 45         [ 1]  613 	ld	0x5245, a
      0095C1 20 16            [ 2]  614 	jra	00122$
      0095C3                        615 00114$:
                                    616 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 255: else if (uartreg == 0x03)
      0095C3 0D 03            [ 1]  617 	tnz	(0x03, sp)
      0095C5 27 0A            [ 1]  618 	jreq	00111$
                                    619 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
      0095C7 C6 52 47         [ 1]  620 	ld	a, 0x5247
      0095CA 14 04            [ 1]  621 	and	a, (0x04, sp)
      0095CC C7 52 47         [ 1]  622 	ld	0x5247, a
      0095CF 20 08            [ 2]  623 	jra	00122$
      0095D1                        624 00111$:
                                    625 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
      0095D1 C6 52 49         [ 1]  626 	ld	a, 0x5249
      0095D4 14 04            [ 1]  627 	and	a, (0x04, sp)
      0095D6 C7 52 49         [ 1]  628 	ld	0x5249, a
      0095D9                        629 00122$:
                                    630 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 264: }
      0095D9 5B 07            [ 2]  631 	addw	sp, #7
      0095DB 81               [ 4]  632 	ret
                                    633 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
                                    634 ;	-----------------------------------------
                                    635 ;	 function UART2_IrDAConfig
                                    636 ;	-----------------------------------------
      0095DC                        637 _UART2_IrDAConfig:
      0095DC 88               [ 1]  638 	push	a
                                    639 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 274: assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
      0095DD 6B 01            [ 1]  640 	ld	(0x01, sp), a
      0095DF 4A               [ 1]  641 	dec	a
      0095E0 27 10            [ 1]  642 	jreq	00107$
      0095E2 0D 01            [ 1]  643 	tnz	(0x01, sp)
      0095E4 27 0C            [ 1]  644 	jreq	00107$
      0095E6 4B 12            [ 1]  645 	push	#0x12
      0095E8 4B 01            [ 1]  646 	push	#0x01
      0095EA 5F               [ 1]  647 	clrw	x
      0095EB 89               [ 2]  648 	pushw	x
      0095EC AE 81 E9         [ 2]  649 	ldw	x, #(___str_0+0)
      0095EF CD AB 90         [ 4]  650 	call	_assert_failed
      0095F2                        651 00107$:
                                    652 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      0095F2 C6 52 48         [ 1]  653 	ld	a, 0x5248
                                    654 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
      0095F5 0D 01            [ 1]  655 	tnz	(0x01, sp)
      0095F7 27 07            [ 1]  656 	jreq	00102$
                                    657 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      0095F9 AA 04            [ 1]  658 	or	a, #0x04
      0095FB C7 52 48         [ 1]  659 	ld	0x5248, a
      0095FE 20 05            [ 2]  660 	jra	00104$
      009600                        661 00102$:
                                    662 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
      009600 A4 FB            [ 1]  663 	and	a, #0xfb
      009602 C7 52 48         [ 1]  664 	ld	0x5248, a
      009605                        665 00104$:
                                    666 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 284: }
      009605 84               [ 1]  667 	pop	a
      009606 81               [ 4]  668 	ret
                                    669 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
                                    670 ;	-----------------------------------------
                                    671 ;	 function UART2_IrDACmd
                                    672 ;	-----------------------------------------
      009607                        673 _UART2_IrDACmd:
      009607 88               [ 1]  674 	push	a
                                    675 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 295: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009608 6B 01            [ 1]  676 	ld	(0x01, sp), a
      00960A 27 11            [ 1]  677 	jreq	00107$
      00960C 7B 01            [ 1]  678 	ld	a, (0x01, sp)
      00960E 4A               [ 1]  679 	dec	a
      00960F 27 0C            [ 1]  680 	jreq	00107$
      009611 4B 27            [ 1]  681 	push	#0x27
      009613 4B 01            [ 1]  682 	push	#0x01
      009615 5F               [ 1]  683 	clrw	x
      009616 89               [ 2]  684 	pushw	x
      009617 AE 81 E9         [ 2]  685 	ldw	x, #(___str_0+0)
      00961A CD AB 90         [ 4]  686 	call	_assert_failed
      00961D                        687 00107$:
                                    688 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      00961D C6 52 48         [ 1]  689 	ld	a, 0x5248
                                    690 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 297: if (NewState != DISABLE)
      009620 0D 01            [ 1]  691 	tnz	(0x01, sp)
      009622 27 07            [ 1]  692 	jreq	00102$
                                    693 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      009624 AA 02            [ 1]  694 	or	a, #0x02
      009626 C7 52 48         [ 1]  695 	ld	0x5248, a
      009629 20 05            [ 2]  696 	jra	00104$
      00962B                        697 00102$:
                                    698 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
      00962B A4 FD            [ 1]  699 	and	a, #0xfd
      00962D C7 52 48         [ 1]  700 	ld	0x5248, a
      009630                        701 00104$:
                                    702 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 307: }
      009630 84               [ 1]  703 	pop	a
      009631 81               [ 4]  704 	ret
                                    705 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
                                    706 ;	-----------------------------------------
                                    707 ;	 function UART2_LINBreakDetectionConfig
                                    708 ;	-----------------------------------------
      009632                        709 _UART2_LINBreakDetectionConfig:
      009632 88               [ 1]  710 	push	a
                                    711 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 319: assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
      009633 6B 01            [ 1]  712 	ld	(0x01, sp), a
      009635 27 11            [ 1]  713 	jreq	00107$
      009637 7B 01            [ 1]  714 	ld	a, (0x01, sp)
      009639 4A               [ 1]  715 	dec	a
      00963A 27 0C            [ 1]  716 	jreq	00107$
      00963C 4B 3F            [ 1]  717 	push	#0x3f
      00963E 4B 01            [ 1]  718 	push	#0x01
      009640 5F               [ 1]  719 	clrw	x
      009641 89               [ 2]  720 	pushw	x
      009642 AE 81 E9         [ 2]  721 	ldw	x, #(___str_0+0)
      009645 CD AB 90         [ 4]  722 	call	_assert_failed
      009648                        723 00107$:
                                    724 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      009648 C6 52 47         [ 1]  725 	ld	a, 0x5247
                                    726 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
      00964B 0D 01            [ 1]  727 	tnz	(0x01, sp)
      00964D 27 07            [ 1]  728 	jreq	00102$
                                    729 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      00964F AA 20            [ 1]  730 	or	a, #0x20
      009651 C7 52 47         [ 1]  731 	ld	0x5247, a
      009654 20 05            [ 2]  732 	jra	00104$
      009656                        733 00102$:
                                    734 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
      009656 A4 DF            [ 1]  735 	and	a, #0xdf
      009658 C7 52 47         [ 1]  736 	ld	0x5247, a
      00965B                        737 00104$:
                                    738 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 329: }
      00965B 84               [ 1]  739 	pop	a
      00965C 81               [ 4]  740 	ret
                                    741 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
                                    742 ;	-----------------------------------------
                                    743 ;	 function UART2_LINConfig
                                    744 ;	-----------------------------------------
      00965D                        745 _UART2_LINConfig:
      00965D 88               [ 1]  746 	push	a
                                    747 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 346: assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
      00965E 6B 01            [ 1]  748 	ld	(0x01, sp), a
      009660 27 11            [ 1]  749 	jreq	00113$
      009662 7B 01            [ 1]  750 	ld	a, (0x01, sp)
      009664 4A               [ 1]  751 	dec	a
      009665 27 0C            [ 1]  752 	jreq	00113$
      009667 4B 5A            [ 1]  753 	push	#0x5a
      009669 4B 01            [ 1]  754 	push	#0x01
      00966B 5F               [ 1]  755 	clrw	x
      00966C 89               [ 2]  756 	pushw	x
      00966D AE 81 E9         [ 2]  757 	ldw	x, #(___str_0+0)
      009670 CD AB 90         [ 4]  758 	call	_assert_failed
      009673                        759 00113$:
                                    760 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 347: assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
      009673 7B 04            [ 1]  761 	ld	a, (0x04, sp)
      009675 4A               [ 1]  762 	dec	a
      009676 27 10            [ 1]  763 	jreq	00118$
      009678 0D 04            [ 1]  764 	tnz	(0x04, sp)
      00967A 27 0C            [ 1]  765 	jreq	00118$
      00967C 4B 5B            [ 1]  766 	push	#0x5b
      00967E 4B 01            [ 1]  767 	push	#0x01
      009680 5F               [ 1]  768 	clrw	x
      009681 89               [ 2]  769 	pushw	x
      009682 AE 81 E9         [ 2]  770 	ldw	x, #(___str_0+0)
      009685 CD AB 90         [ 4]  771 	call	_assert_failed
      009688                        772 00118$:
                                    773 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 348: assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
      009688 0D 05            [ 1]  774 	tnz	(0x05, sp)
      00968A 27 11            [ 1]  775 	jreq	00123$
      00968C 7B 05            [ 1]  776 	ld	a, (0x05, sp)
      00968E 4A               [ 1]  777 	dec	a
      00968F 27 0C            [ 1]  778 	jreq	00123$
      009691 4B 5C            [ 1]  779 	push	#0x5c
      009693 4B 01            [ 1]  780 	push	#0x01
      009695 5F               [ 1]  781 	clrw	x
      009696 89               [ 2]  782 	pushw	x
      009697 AE 81 E9         [ 2]  783 	ldw	x, #(___str_0+0)
      00969A CD AB 90         [ 4]  784 	call	_assert_failed
      00969D                        785 00123$:
                                    786 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      00969D C6 52 49         [ 1]  787 	ld	a, 0x5249
                                    788 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
      0096A0 0D 01            [ 1]  789 	tnz	(0x01, sp)
      0096A2 27 07            [ 1]  790 	jreq	00102$
                                    791 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      0096A4 AA 20            [ 1]  792 	or	a, #0x20
      0096A6 C7 52 49         [ 1]  793 	ld	0x5249, a
      0096A9 20 05            [ 2]  794 	jra	00103$
      0096AB                        795 00102$:
                                    796 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
      0096AB A4 DF            [ 1]  797 	and	a, #0xdf
      0096AD C7 52 49         [ 1]  798 	ld	0x5249, a
      0096B0                        799 00103$:
                                    800 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      0096B0 C6 52 49         [ 1]  801 	ld	a, 0x5249
                                    802 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
      0096B3 0D 04            [ 1]  803 	tnz	(0x04, sp)
      0096B5 27 07            [ 1]  804 	jreq	00105$
                                    805 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
      0096B7 AA 10            [ 1]  806 	or	a, #0x10
      0096B9 C7 52 49         [ 1]  807 	ld	0x5249, a
      0096BC 20 05            [ 2]  808 	jra	00106$
      0096BE                        809 00105$:
                                    810 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
      0096BE A4 EF            [ 1]  811 	and	a, #0xef
      0096C0 C7 52 49         [ 1]  812 	ld	0x5249, a
      0096C3                        813 00106$:
                                    814 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      0096C3 C6 52 49         [ 1]  815 	ld	a, 0x5249
                                    816 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
      0096C6 0D 05            [ 1]  817 	tnz	(0x05, sp)
      0096C8 27 07            [ 1]  818 	jreq	00108$
                                    819 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
      0096CA AA 80            [ 1]  820 	or	a, #0x80
      0096CC C7 52 49         [ 1]  821 	ld	0x5249, a
      0096CF 20 05            [ 2]  822 	jra	00110$
      0096D1                        823 00108$:
                                    824 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
      0096D1 A4 7F            [ 1]  825 	and	a, #0x7f
      0096D3 C7 52 49         [ 1]  826 	ld	0x5249, a
      0096D6                        827 00110$:
                                    828 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 376: }
      0096D6 1E 02            [ 2]  829 	ldw	x, (2, sp)
      0096D8 5B 05            [ 2]  830 	addw	sp, #5
      0096DA FC               [ 2]  831 	jp	(x)
                                    832 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
                                    833 ;	-----------------------------------------
                                    834 ;	 function UART2_LINCmd
                                    835 ;	-----------------------------------------
      0096DB                        836 _UART2_LINCmd:
      0096DB 88               [ 1]  837 	push	a
                                    838 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 386: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0096DC 6B 01            [ 1]  839 	ld	(0x01, sp), a
      0096DE 27 11            [ 1]  840 	jreq	00107$
      0096E0 7B 01            [ 1]  841 	ld	a, (0x01, sp)
      0096E2 4A               [ 1]  842 	dec	a
      0096E3 27 0C            [ 1]  843 	jreq	00107$
      0096E5 4B 82            [ 1]  844 	push	#0x82
      0096E7 4B 01            [ 1]  845 	push	#0x01
      0096E9 5F               [ 1]  846 	clrw	x
      0096EA 89               [ 2]  847 	pushw	x
      0096EB AE 81 E9         [ 2]  848 	ldw	x, #(___str_0+0)
      0096EE CD AB 90         [ 4]  849 	call	_assert_failed
      0096F1                        850 00107$:
                                    851 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      0096F1 C6 52 46         [ 1]  852 	ld	a, 0x5246
                                    853 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 388: if (NewState != DISABLE)
      0096F4 0D 01            [ 1]  854 	tnz	(0x01, sp)
      0096F6 27 07            [ 1]  855 	jreq	00102$
                                    856 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      0096F8 AA 40            [ 1]  857 	or	a, #0x40
      0096FA C7 52 46         [ 1]  858 	ld	0x5246, a
      0096FD 20 05            [ 2]  859 	jra	00104$
      0096FF                        860 00102$:
                                    861 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
      0096FF A4 BF            [ 1]  862 	and	a, #0xbf
      009701 C7 52 46         [ 1]  863 	ld	0x5246, a
      009704                        864 00104$:
                                    865 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 398: }
      009704 84               [ 1]  866 	pop	a
      009705 81               [ 4]  867 	ret
                                    868 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
                                    869 ;	-----------------------------------------
                                    870 ;	 function UART2_SmartCardCmd
                                    871 ;	-----------------------------------------
      009706                        872 _UART2_SmartCardCmd:
      009706 88               [ 1]  873 	push	a
                                    874 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 409: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009707 6B 01            [ 1]  875 	ld	(0x01, sp), a
      009709 27 11            [ 1]  876 	jreq	00107$
      00970B 7B 01            [ 1]  877 	ld	a, (0x01, sp)
      00970D 4A               [ 1]  878 	dec	a
      00970E 27 0C            [ 1]  879 	jreq	00107$
      009710 4B 99            [ 1]  880 	push	#0x99
      009712 4B 01            [ 1]  881 	push	#0x01
      009714 5F               [ 1]  882 	clrw	x
      009715 89               [ 2]  883 	pushw	x
      009716 AE 81 E9         [ 2]  884 	ldw	x, #(___str_0+0)
      009719 CD AB 90         [ 4]  885 	call	_assert_failed
      00971C                        886 00107$:
                                    887 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      00971C C6 52 48         [ 1]  888 	ld	a, 0x5248
                                    889 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 411: if (NewState != DISABLE)
      00971F 0D 01            [ 1]  890 	tnz	(0x01, sp)
      009721 27 07            [ 1]  891 	jreq	00102$
                                    892 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      009723 AA 20            [ 1]  893 	or	a, #0x20
      009725 C7 52 48         [ 1]  894 	ld	0x5248, a
      009728 20 05            [ 2]  895 	jra	00104$
      00972A                        896 00102$:
                                    897 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
      00972A A4 DF            [ 1]  898 	and	a, #0xdf
      00972C C7 52 48         [ 1]  899 	ld	0x5248, a
      00972F                        900 00104$:
                                    901 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 421: }
      00972F 84               [ 1]  902 	pop	a
      009730 81               [ 4]  903 	ret
                                    904 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
                                    905 ;	-----------------------------------------
                                    906 ;	 function UART2_SmartCardNACKCmd
                                    907 ;	-----------------------------------------
      009731                        908 _UART2_SmartCardNACKCmd:
      009731 88               [ 1]  909 	push	a
                                    910 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 432: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009732 6B 01            [ 1]  911 	ld	(0x01, sp), a
      009734 27 11            [ 1]  912 	jreq	00107$
      009736 7B 01            [ 1]  913 	ld	a, (0x01, sp)
      009738 4A               [ 1]  914 	dec	a
      009739 27 0C            [ 1]  915 	jreq	00107$
      00973B 4B B0            [ 1]  916 	push	#0xb0
      00973D 4B 01            [ 1]  917 	push	#0x01
      00973F 5F               [ 1]  918 	clrw	x
      009740 89               [ 2]  919 	pushw	x
      009741 AE 81 E9         [ 2]  920 	ldw	x, #(___str_0+0)
      009744 CD AB 90         [ 4]  921 	call	_assert_failed
      009747                        922 00107$:
                                    923 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      009747 C6 52 48         [ 1]  924 	ld	a, 0x5248
                                    925 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 434: if (NewState != DISABLE)
      00974A 0D 01            [ 1]  926 	tnz	(0x01, sp)
      00974C 27 07            [ 1]  927 	jreq	00102$
                                    928 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      00974E AA 10            [ 1]  929 	or	a, #0x10
      009750 C7 52 48         [ 1]  930 	ld	0x5248, a
      009753 20 05            [ 2]  931 	jra	00104$
      009755                        932 00102$:
                                    933 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
      009755 A4 EF            [ 1]  934 	and	a, #0xef
      009757 C7 52 48         [ 1]  935 	ld	0x5248, a
      00975A                        936 00104$:
                                    937 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 444: }
      00975A 84               [ 1]  938 	pop	a
      00975B 81               [ 4]  939 	ret
                                    940 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
                                    941 ;	-----------------------------------------
                                    942 ;	 function UART2_WakeUpConfig
                                    943 ;	-----------------------------------------
      00975C                        944 _UART2_WakeUpConfig:
      00975C 88               [ 1]  945 	push	a
                                    946 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 454: assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
      00975D 6B 01            [ 1]  947 	ld	(0x01, sp), a
      00975F 27 12            [ 1]  948 	jreq	00104$
      009761 7B 01            [ 1]  949 	ld	a, (0x01, sp)
      009763 A1 08            [ 1]  950 	cp	a, #0x08
      009765 27 0C            [ 1]  951 	jreq	00104$
      009767 4B C6            [ 1]  952 	push	#0xc6
      009769 4B 01            [ 1]  953 	push	#0x01
      00976B 5F               [ 1]  954 	clrw	x
      00976C 89               [ 2]  955 	pushw	x
      00976D AE 81 E9         [ 2]  956 	ldw	x, #(___str_0+0)
      009770 CD AB 90         [ 4]  957 	call	_assert_failed
      009773                        958 00104$:
                                    959 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
      009773 72 17 52 44      [ 1]  960 	bres	0x5244, #3
                                    961 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
      009777 C6 52 44         [ 1]  962 	ld	a, 0x5244
      00977A 1A 01            [ 1]  963 	or	a, (0x01, sp)
      00977C C7 52 44         [ 1]  964 	ld	0x5244, a
                                    965 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 458: }
      00977F 84               [ 1]  966 	pop	a
      009780 81               [ 4]  967 	ret
                                    968 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
                                    969 ;	-----------------------------------------
                                    970 ;	 function UART2_ReceiverWakeUpCmd
                                    971 ;	-----------------------------------------
      009781                        972 _UART2_ReceiverWakeUpCmd:
      009781 88               [ 1]  973 	push	a
                                    974 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 468: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009782 6B 01            [ 1]  975 	ld	(0x01, sp), a
      009784 27 11            [ 1]  976 	jreq	00107$
      009786 7B 01            [ 1]  977 	ld	a, (0x01, sp)
      009788 4A               [ 1]  978 	dec	a
      009789 27 0C            [ 1]  979 	jreq	00107$
      00978B 4B D4            [ 1]  980 	push	#0xd4
      00978D 4B 01            [ 1]  981 	push	#0x01
      00978F 5F               [ 1]  982 	clrw	x
      009790 89               [ 2]  983 	pushw	x
      009791 AE 81 E9         [ 2]  984 	ldw	x, #(___str_0+0)
      009794 CD AB 90         [ 4]  985 	call	_assert_failed
      009797                        986 00107$:
                                    987 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      009797 C6 52 45         [ 1]  988 	ld	a, 0x5245
                                    989 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 470: if (NewState != DISABLE)
      00979A 0D 01            [ 1]  990 	tnz	(0x01, sp)
      00979C 27 07            [ 1]  991 	jreq	00102$
                                    992 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      00979E AA 02            [ 1]  993 	or	a, #0x02
      0097A0 C7 52 45         [ 1]  994 	ld	0x5245, a
      0097A3 20 05            [ 2]  995 	jra	00104$
      0097A5                        996 00102$:
                                    997 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
      0097A5 A4 FD            [ 1]  998 	and	a, #0xfd
      0097A7 C7 52 45         [ 1]  999 	ld	0x5245, a
      0097AA                       1000 00104$:
                                   1001 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 480: }
      0097AA 84               [ 1] 1002 	pop	a
      0097AB 81               [ 4] 1003 	ret
                                   1004 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
                                   1005 ;	-----------------------------------------
                                   1006 ;	 function UART2_ReceiveData8
                                   1007 ;	-----------------------------------------
      0097AC                       1008 _UART2_ReceiveData8:
                                   1009 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
      0097AC C6 52 41         [ 1] 1010 	ld	a, 0x5241
                                   1011 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 490: }
      0097AF 81               [ 4] 1012 	ret
                                   1013 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
                                   1014 ;	-----------------------------------------
                                   1015 ;	 function UART2_ReceiveData9
                                   1016 ;	-----------------------------------------
      0097B0                       1017 _UART2_ReceiveData9:
      0097B0 89               [ 2] 1018 	pushw	x
                                   1019 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
      0097B1 C6 52 44         [ 1] 1020 	ld	a, 0x5244
      0097B4 A4 80            [ 1] 1021 	and	a, #0x80
      0097B6 97               [ 1] 1022 	ld	xl, a
      0097B7 4F               [ 1] 1023 	clr	a
      0097B8 95               [ 1] 1024 	ld	xh, a
      0097B9 58               [ 2] 1025 	sllw	x
      0097BA 1F 01            [ 2] 1026 	ldw	(0x01, sp), x
                                   1027 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
      0097BC C6 52 41         [ 1] 1028 	ld	a, 0x5241
      0097BF 5F               [ 1] 1029 	clrw	x
      0097C0 1A 02            [ 1] 1030 	or	a, (0x02, sp)
      0097C2 02               [ 1] 1031 	rlwa	x
      0097C3 1A 01            [ 1] 1032 	or	a, (0x01, sp)
      0097C5 A4 01            [ 1] 1033 	and	a, #0x01
      0097C7 95               [ 1] 1034 	ld	xh, a
                                   1035 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 504: }
      0097C8 5B 02            [ 2] 1036 	addw	sp, #2
      0097CA 81               [ 4] 1037 	ret
                                   1038 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
                                   1039 ;	-----------------------------------------
                                   1040 ;	 function UART2_SendData8
                                   1041 ;	-----------------------------------------
      0097CB                       1042 _UART2_SendData8:
                                   1043 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 514: UART2->DR = Data;
      0097CB C7 52 41         [ 1] 1044 	ld	0x5241, a
                                   1045 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 515: }
      0097CE 81               [ 4] 1046 	ret
                                   1047 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
                                   1048 ;	-----------------------------------------
                                   1049 ;	 function UART2_SendData9
                                   1050 ;	-----------------------------------------
      0097CF                       1051 _UART2_SendData9:
      0097CF 88               [ 1] 1052 	push	a
      0097D0 51               [ 1] 1053 	exgw	x, y
                                   1054 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
      0097D1 72 1D 52 44      [ 1] 1055 	bres	0x5244, #6
                                   1056 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
      0097D5 C6 52 44         [ 1] 1057 	ld	a, 0x5244
      0097D8 6B 01            [ 1] 1058 	ld	(0x01, sp), a
      0097DA 93               [ 1] 1059 	ldw	x, y
      0097DB 54               [ 2] 1060 	srlw	x
      0097DC 54               [ 2] 1061 	srlw	x
      0097DD 9F               [ 1] 1062 	ld	a, xl
      0097DE A4 40            [ 1] 1063 	and	a, #0x40
      0097E0 1A 01            [ 1] 1064 	or	a, (0x01, sp)
      0097E2 C7 52 44         [ 1] 1065 	ld	0x5244, a
                                   1066 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
      0097E5 90 9F            [ 1] 1067 	ld	a, yl
      0097E7 C7 52 41         [ 1] 1068 	ld	0x5241, a
                                   1069 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 532: }
      0097EA 84               [ 1] 1070 	pop	a
      0097EB 81               [ 4] 1071 	ret
                                   1072 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 539: void UART2_SendBreak(void)
                                   1073 ;	-----------------------------------------
                                   1074 ;	 function UART2_SendBreak
                                   1075 ;	-----------------------------------------
      0097EC                       1076 _UART2_SendBreak:
                                   1077 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
      0097EC 72 10 52 45      [ 1] 1078 	bset	0x5245, #0
                                   1079 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 542: }
      0097F0 81               [ 4] 1080 	ret
                                   1081 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
                                   1082 ;	-----------------------------------------
                                   1083 ;	 function UART2_SetAddress
                                   1084 ;	-----------------------------------------
      0097F1                       1085 _UART2_SetAddress:
      0097F1 88               [ 1] 1086 	push	a
                                   1087 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 552: assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
      0097F2 6B 01            [ 1] 1088 	ld	(0x01, sp), a
      0097F4 A1 10            [ 1] 1089 	cp	a, #0x10
      0097F6 25 0C            [ 1] 1090 	jrc	00104$
      0097F8 4B 28            [ 1] 1091 	push	#0x28
      0097FA 4B 02            [ 1] 1092 	push	#0x02
      0097FC 5F               [ 1] 1093 	clrw	x
      0097FD 89               [ 2] 1094 	pushw	x
      0097FE AE 81 E9         [ 2] 1095 	ldw	x, #(___str_0+0)
      009801 CD AB 90         [ 4] 1096 	call	_assert_failed
      009804                       1097 00104$:
                                   1098 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
      009804 C6 52 47         [ 1] 1099 	ld	a, 0x5247
      009807 A4 F0            [ 1] 1100 	and	a, #0xf0
      009809 C7 52 47         [ 1] 1101 	ld	0x5247, a
                                   1102 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
      00980C C6 52 47         [ 1] 1103 	ld	a, 0x5247
      00980F 1A 01            [ 1] 1104 	or	a, (0x01, sp)
      009811 C7 52 47         [ 1] 1105 	ld	0x5247, a
                                   1106 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 558: }
      009814 84               [ 1] 1107 	pop	a
      009815 81               [ 4] 1108 	ret
                                   1109 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
                                   1110 ;	-----------------------------------------
                                   1111 ;	 function UART2_SetGuardTime
                                   1112 ;	-----------------------------------------
      009816                       1113 _UART2_SetGuardTime:
                                   1114 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
      009816 C7 52 4A         [ 1] 1115 	ld	0x524a, a
                                   1116 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 570: }
      009819 81               [ 4] 1117 	ret
                                   1118 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
                                   1119 ;	-----------------------------------------
                                   1120 ;	 function UART2_SetPrescaler
                                   1121 ;	-----------------------------------------
      00981A                       1122 _UART2_SetPrescaler:
                                   1123 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
      00981A C7 52 4B         [ 1] 1124 	ld	0x524b, a
                                   1125 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 598: }
      00981D 81               [ 4] 1126 	ret
                                   1127 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
                                   1128 ;	-----------------------------------------
                                   1129 ;	 function UART2_GetFlagStatus
                                   1130 ;	-----------------------------------------
      00981E                       1131 _UART2_GetFlagStatus:
      00981E 52 04            [ 2] 1132 	sub	sp, #4
                                   1133 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 611: assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
      009820 90 93            [ 1] 1134 	ldw	y, x
      009822 A3 01 01         [ 2] 1135 	cpw	x, #0x0101
      009825 26 05            [ 1] 1136 	jrne	00256$
      009827 A6 01            [ 1] 1137 	ld	a, #0x01
      009829 6B 01            [ 1] 1138 	ld	(0x01, sp), a
      00982B C5                    1139 	.byte 0xc5
      00982C                       1140 00256$:
      00982C 0F 01            [ 1] 1141 	clr	(0x01, sp)
      00982E                       1142 00257$:
      00982E A3 03 01         [ 2] 1143 	cpw	x, #0x0301
      009831 26 05            [ 1] 1144 	jrne	00259$
      009833 A6 01            [ 1] 1145 	ld	a, #0x01
      009835 6B 02            [ 1] 1146 	ld	(0x02, sp), a
      009837 C5                    1147 	.byte 0xc5
      009838                       1148 00259$:
      009838 0F 02            [ 1] 1149 	clr	(0x02, sp)
      00983A                       1150 00260$:
      00983A A3 03 02         [ 2] 1151 	cpw	x, #0x0302
      00983D 26 05            [ 1] 1152 	jrne	00262$
      00983F A6 01            [ 1] 1153 	ld	a, #0x01
      009841 6B 03            [ 1] 1154 	ld	(0x03, sp), a
      009843 C5                    1155 	.byte 0xc5
      009844                       1156 00262$:
      009844 0F 03            [ 1] 1157 	clr	(0x03, sp)
      009846                       1158 00263$:
      009846 A3 02 10         [ 2] 1159 	cpw	x, #0x0210
      009849 26 03            [ 1] 1160 	jrne	00265$
      00984B A6 01            [ 1] 1161 	ld	a, #0x01
      00984D 21                    1162 	.byte 0x21
      00984E                       1163 00265$:
      00984E 4F               [ 1] 1164 	clr	a
      00984F                       1165 00266$:
      00984F A3 00 80         [ 2] 1166 	cpw	x, #0x0080
      009852 27 42            [ 1] 1167 	jreq	00126$
      009854 A3 00 40         [ 2] 1168 	cpw	x, #0x0040
      009857 27 3D            [ 1] 1169 	jreq	00126$
      009859 A3 00 20         [ 2] 1170 	cpw	x, #0x0020
      00985C 27 38            [ 1] 1171 	jreq	00126$
      00985E A3 00 10         [ 2] 1172 	cpw	x, #0x0010
      009861 27 33            [ 1] 1173 	jreq	00126$
      009863 A3 00 08         [ 2] 1174 	cpw	x, #0x0008
      009866 27 2E            [ 1] 1175 	jreq	00126$
      009868 A3 00 04         [ 2] 1176 	cpw	x, #0x0004
      00986B 27 29            [ 1] 1177 	jreq	00126$
      00986D A3 00 02         [ 2] 1178 	cpw	x, #0x0002
      009870 27 24            [ 1] 1179 	jreq	00126$
      009872 5A               [ 2] 1180 	decw	x
      009873 27 21            [ 1] 1181 	jreq	00126$
      009875 0D 01            [ 1] 1182 	tnz	(0x01, sp)
      009877 26 1D            [ 1] 1183 	jrne	00126$
      009879 0D 02            [ 1] 1184 	tnz	(0x02, sp)
      00987B 26 19            [ 1] 1185 	jrne	00126$
      00987D 0D 03            [ 1] 1186 	tnz	(0x03, sp)
      00987F 26 15            [ 1] 1187 	jrne	00126$
      009881 4D               [ 1] 1188 	tnz	a
      009882 26 12            [ 1] 1189 	jrne	00126$
      009884 88               [ 1] 1190 	push	a
      009885 90 89            [ 2] 1191 	pushw	y
      009887 4B 63            [ 1] 1192 	push	#0x63
      009889 4B 02            [ 1] 1193 	push	#0x02
      00988B 5F               [ 1] 1194 	clrw	x
      00988C 89               [ 2] 1195 	pushw	x
      00988D AE 81 E9         [ 2] 1196 	ldw	x, #(___str_0+0)
      009890 CD AB 90         [ 4] 1197 	call	_assert_failed
      009893 90 85            [ 2] 1198 	popw	y
      009895 84               [ 1] 1199 	pop	a
      009896                       1200 00126$:
                                   1201 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      009896 61               [ 1] 1202 	exg	a, yl
      009897 6B 04            [ 1] 1203 	ld	(0x04, sp), a
      009899 61               [ 1] 1204 	exg	a, yl
                                   1205 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
      00989A 4D               [ 1] 1206 	tnz	a
      00989B 27 0E            [ 1] 1207 	jreq	00121$
                                   1208 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00989D C6 52 47         [ 1] 1209 	ld	a, 0x5247
      0098A0 14 04            [ 1] 1210 	and	a, (0x04, sp)
      0098A2 27 04            [ 1] 1211 	jreq	00102$
                                   1212 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 619: status = SET;
      0098A4 A6 01            [ 1] 1213 	ld	a, #0x01
      0098A6 20 36            [ 2] 1214 	jra	00122$
      0098A8                       1215 00102$:
                                   1216 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 624: status = RESET;
      0098A8 4F               [ 1] 1217 	clr	a
      0098A9 20 33            [ 2] 1218 	jra	00122$
      0098AB                       1219 00121$:
                                   1220 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
      0098AB 7B 01            [ 1] 1221 	ld	a, (0x01, sp)
      0098AD 27 0E            [ 1] 1222 	jreq	00118$
                                   1223 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      0098AF C6 52 45         [ 1] 1224 	ld	a, 0x5245
      0098B2 14 04            [ 1] 1225 	and	a, (0x04, sp)
      0098B4 27 04            [ 1] 1226 	jreq	00105$
                                   1227 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 632: status = SET;
      0098B6 A6 01            [ 1] 1228 	ld	a, #0x01
      0098B8 20 24            [ 2] 1229 	jra	00122$
      0098BA                       1230 00105$:
                                   1231 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 637: status = RESET;
      0098BA 4F               [ 1] 1232 	clr	a
      0098BB 20 21            [ 2] 1233 	jra	00122$
      0098BD                       1234 00118$:
                                   1235 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
      0098BD 7B 03            [ 1] 1236 	ld	a, (0x03, sp)
      0098BF 26 04            [ 1] 1237 	jrne	00113$
      0098C1 7B 02            [ 1] 1238 	ld	a, (0x02, sp)
      0098C3 27 0E            [ 1] 1239 	jreq	00114$
      0098C5                       1240 00113$:
                                   1241 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      0098C5 C6 52 49         [ 1] 1242 	ld	a, 0x5249
      0098C8 14 04            [ 1] 1243 	and	a, (0x04, sp)
      0098CA 27 04            [ 1] 1244 	jreq	00108$
                                   1245 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 645: status = SET;
      0098CC A6 01            [ 1] 1246 	ld	a, #0x01
      0098CE 20 0E            [ 2] 1247 	jra	00122$
      0098D0                       1248 00108$:
                                   1249 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 650: status = RESET;
      0098D0 4F               [ 1] 1250 	clr	a
      0098D1 20 0B            [ 2] 1251 	jra	00122$
      0098D3                       1252 00114$:
                                   1253 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      0098D3 C6 52 40         [ 1] 1254 	ld	a, 0x5240
      0098D6 14 04            [ 1] 1255 	and	a, (0x04, sp)
      0098D8 27 03            [ 1] 1256 	jreq	00111$
                                   1257 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 658: status = SET;
      0098DA A6 01            [ 1] 1258 	ld	a, #0x01
                                   1259 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 663: status = RESET;
      0098DC 21                    1260 	.byte 0x21
      0098DD                       1261 00111$:
      0098DD 4F               [ 1] 1262 	clr	a
      0098DE                       1263 00122$:
                                   1264 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 668: return  status;
                                   1265 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 669: }
      0098DE 5B 04            [ 2] 1266 	addw	sp, #4
      0098E0 81               [ 4] 1267 	ret
                                   1268 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
                                   1269 ;	-----------------------------------------
                                   1270 ;	 function UART2_ClearFlag
                                   1271 ;	-----------------------------------------
      0098E1                       1272 _UART2_ClearFlag:
      0098E1 52 03            [ 2] 1273 	sub	sp, #3
                                   1274 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 701: assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
      0098E3 A3 00 20         [ 2] 1275 	cpw	x, #0x0020
      0098E6 26 05            [ 1] 1276 	jrne	00159$
      0098E8 A6 01            [ 1] 1277 	ld	a, #0x01
      0098EA 6B 01            [ 1] 1278 	ld	(0x01, sp), a
      0098EC C5                    1279 	.byte 0xc5
      0098ED                       1280 00159$:
      0098ED 0F 01            [ 1] 1281 	clr	(0x01, sp)
      0098EF                       1282 00160$:
      0098EF A3 03 02         [ 2] 1283 	cpw	x, #0x0302
      0098F2 26 05            [ 1] 1284 	jrne	00162$
      0098F4 A6 01            [ 1] 1285 	ld	a, #0x01
      0098F6 6B 02            [ 1] 1286 	ld	(0x02, sp), a
      0098F8 C5                    1287 	.byte 0xc5
      0098F9                       1288 00162$:
      0098F9 0F 02            [ 1] 1289 	clr	(0x02, sp)
      0098FB                       1290 00163$:
      0098FB A3 02 10         [ 2] 1291 	cpw	x, #0x0210
      0098FE 26 05            [ 1] 1292 	jrne	00165$
      009900 A6 01            [ 1] 1293 	ld	a, #0x01
      009902 6B 03            [ 1] 1294 	ld	(0x03, sp), a
      009904 C5                    1295 	.byte 0xc5
      009905                       1296 00165$:
      009905 0F 03            [ 1] 1297 	clr	(0x03, sp)
      009907                       1298 00166$:
      009907 0D 01            [ 1] 1299 	tnz	(0x01, sp)
      009909 26 19            [ 1] 1300 	jrne	00113$
      00990B 0D 02            [ 1] 1301 	tnz	(0x02, sp)
      00990D 26 15            [ 1] 1302 	jrne	00113$
      00990F A3 03 01         [ 2] 1303 	cpw	x, #0x0301
      009912 27 10            [ 1] 1304 	jreq	00113$
      009914 0D 03            [ 1] 1305 	tnz	(0x03, sp)
      009916 26 0C            [ 1] 1306 	jrne	00113$
      009918 4B BD            [ 1] 1307 	push	#0xbd
      00991A 4B 02            [ 1] 1308 	push	#0x02
      00991C 5F               [ 1] 1309 	clrw	x
      00991D 89               [ 2] 1310 	pushw	x
      00991E AE 81 E9         [ 2] 1311 	ldw	x, #(___str_0+0)
      009921 CD AB 90         [ 4] 1312 	call	_assert_failed
      009924                       1313 00113$:
                                   1314 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
      009924 7B 01            [ 1] 1315 	ld	a, (0x01, sp)
      009926 27 06            [ 1] 1316 	jreq	00108$
                                   1317 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      009928 35 DF 52 40      [ 1] 1318 	mov	0x5240+0, #0xdf
      00992C 20 20            [ 2] 1319 	jra	00110$
      00992E                       1320 00108$:
                                   1321 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
      00992E 7B 03            [ 1] 1322 	ld	a, (0x03, sp)
      009930 27 06            [ 1] 1323 	jreq	00105$
                                   1324 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
      009932 72 19 52 47      [ 1] 1325 	bres	0x5247, #4
      009936 20 16            [ 2] 1326 	jra	00110$
      009938                       1327 00105$:
                                   1328 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      009938 C6 52 49         [ 1] 1329 	ld	a, 0x5249
      00993B 97               [ 1] 1330 	ld	xl, a
                                   1331 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
      00993C 7B 02            [ 1] 1332 	ld	a, (0x02, sp)
      00993E 27 08            [ 1] 1333 	jreq	00102$
                                   1334 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      009940 9F               [ 1] 1335 	ld	a, xl
      009941 A4 FD            [ 1] 1336 	and	a, #0xfd
      009943 C7 52 49         [ 1] 1337 	ld	0x5249, a
      009946 20 06            [ 2] 1338 	jra	00110$
      009948                       1339 00102$:
                                   1340 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
      009948 9F               [ 1] 1341 	ld	a, xl
      009949 A4 FE            [ 1] 1342 	and	a, #0xfe
      00994B C7 52 49         [ 1] 1343 	ld	0x5249, a
      00994E                       1344 00110$:
                                   1345 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 723: }
      00994E 5B 03            [ 2] 1346 	addw	sp, #3
      009950 81               [ 4] 1347 	ret
                                   1348 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
                                   1349 ;	-----------------------------------------
                                   1350 ;	 function UART2_GetITStatus
                                   1351 ;	-----------------------------------------
      009951                       1352 _UART2_GetITStatus:
      009951 52 05            [ 2] 1353 	sub	sp, #5
                                   1354 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 747: assert_param(IS_UART2_GET_IT_OK(UART2_IT));
      009953 90 93            [ 1] 1355 	ldw	y, x
      009955 A3 03 46         [ 2] 1356 	cpw	x, #0x0346
      009958 26 05            [ 1] 1357 	jrne	00247$
      00995A A6 01            [ 1] 1358 	ld	a, #0x01
      00995C 6B 01            [ 1] 1359 	ld	(0x01, sp), a
      00995E C5                    1360 	.byte 0xc5
      00995F                       1361 00247$:
      00995F 0F 01            [ 1] 1362 	clr	(0x01, sp)
      009961                       1363 00248$:
      009961 A3 04 12         [ 2] 1364 	cpw	x, #0x0412
      009964 26 05            [ 1] 1365 	jrne	00250$
      009966 A6 01            [ 1] 1366 	ld	a, #0x01
      009968 6B 02            [ 1] 1367 	ld	(0x02, sp), a
      00996A C5                    1368 	.byte 0xc5
      00996B                       1369 00250$:
      00996B 0F 02            [ 1] 1370 	clr	(0x02, sp)
      00996D                       1371 00251$:
      00996D A3 01 00         [ 2] 1372 	cpw	x, #0x0100
      009970 26 05            [ 1] 1373 	jrne	00253$
      009972 A6 01            [ 1] 1374 	ld	a, #0x01
      009974 6B 03            [ 1] 1375 	ld	(0x03, sp), a
      009976 C5                    1376 	.byte 0xc5
      009977                       1377 00253$:
      009977 0F 03            [ 1] 1378 	clr	(0x03, sp)
      009979                       1379 00254$:
      009979 A3 02 77         [ 2] 1380 	cpw	x, #0x0277
      00997C 27 30            [ 1] 1381 	jreq	00129$
      00997E A3 02 66         [ 2] 1382 	cpw	x, #0x0266
      009981 27 2B            [ 1] 1383 	jreq	00129$
      009983 A3 02 55         [ 2] 1384 	cpw	x, #0x0255
      009986 27 26            [ 1] 1385 	jreq	00129$
      009988 A3 02 44         [ 2] 1386 	cpw	x, #0x0244
      00998B 27 21            [ 1] 1387 	jreq	00129$
      00998D A3 02 35         [ 2] 1388 	cpw	x, #0x0235
      009990 27 1C            [ 1] 1389 	jreq	00129$
      009992 0D 01            [ 1] 1390 	tnz	(0x01, sp)
      009994 26 18            [ 1] 1391 	jrne	00129$
      009996 0D 02            [ 1] 1392 	tnz	(0x02, sp)
      009998 26 14            [ 1] 1393 	jrne	00129$
      00999A 0D 03            [ 1] 1394 	tnz	(0x03, sp)
      00999C 26 10            [ 1] 1395 	jrne	00129$
      00999E 90 89            [ 2] 1396 	pushw	y
      0099A0 4B EB            [ 1] 1397 	push	#0xeb
      0099A2 4B 02            [ 1] 1398 	push	#0x02
      0099A4 5F               [ 1] 1399 	clrw	x
      0099A5 89               [ 2] 1400 	pushw	x
      0099A6 AE 81 E9         [ 2] 1401 	ldw	x, #(___str_0+0)
      0099A9 CD AB 90         [ 4] 1402 	call	_assert_failed
      0099AC 90 85            [ 2] 1403 	popw	y
      0099AE                       1404 00129$:
                                   1405 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      0099AE 93               [ 1] 1406 	ldw	x, y
      0099AF 9F               [ 1] 1407 	ld	a, xl
      0099B0 A4 0F            [ 1] 1408 	and	a, #0x0f
      0099B2 88               [ 1] 1409 	push	a
      0099B3 A6 01            [ 1] 1410 	ld	a, #0x01
      0099B5 6B 05            [ 1] 1411 	ld	(0x05, sp), a
      0099B7 84               [ 1] 1412 	pop	a
      0099B8 4D               [ 1] 1413 	tnz	a
      0099B9 27 05            [ 1] 1414 	jreq	00274$
      0099BB                       1415 00273$:
      0099BB 08 04            [ 1] 1416 	sll	(0x04, sp)
      0099BD 4A               [ 1] 1417 	dec	a
      0099BE 26 FB            [ 1] 1418 	jrne	00273$
      0099C0                       1419 00274$:
                                   1420 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
      0099C0 9F               [ 1] 1421 	ld	a, xl
      0099C1 4E               [ 1] 1422 	swap	a
      0099C2 A4 0F            [ 1] 1423 	and	a, #0x0f
                                   1424 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      0099C4 88               [ 1] 1425 	push	a
      0099C5 A6 01            [ 1] 1426 	ld	a, #0x01
      0099C7 6B 06            [ 1] 1427 	ld	(0x06, sp), a
      0099C9 84               [ 1] 1428 	pop	a
      0099CA 4D               [ 1] 1429 	tnz	a
      0099CB 27 05            [ 1] 1430 	jreq	00276$
      0099CD                       1431 00275$:
      0099CD 08 05            [ 1] 1432 	sll	(0x05, sp)
      0099CF 4A               [ 1] 1433 	dec	a
      0099D0 26 FB            [ 1] 1434 	jrne	00275$
      0099D2                       1435 00276$:
                                   1436 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
      0099D2 7B 03            [ 1] 1437 	ld	a, (0x03, sp)
      0099D4 27 18            [ 1] 1438 	jreq	00124$
                                   1439 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
      0099D6 C6 52 44         [ 1] 1440 	ld	a, 0x5244
      0099D9 14 05            [ 1] 1441 	and	a, (0x05, sp)
      0099DB 97               [ 1] 1442 	ld	xl, a
                                   1443 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      0099DC C6 52 40         [ 1] 1444 	ld	a, 0x5240
      0099DF 14 04            [ 1] 1445 	and	a, (0x04, sp)
      0099E1 27 08            [ 1] 1446 	jreq	00102$
      0099E3 9F               [ 1] 1447 	ld	a, xl
      0099E4 4D               [ 1] 1448 	tnz	a
      0099E5 27 04            [ 1] 1449 	jreq	00102$
                                   1450 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 766: pendingbitstatus = SET;
      0099E7 A6 01            [ 1] 1451 	ld	a, #0x01
      0099E9 20 50            [ 2] 1452 	jra	00125$
      0099EB                       1453 00102$:
                                   1454 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 771: pendingbitstatus = RESET;
      0099EB 4F               [ 1] 1455 	clr	a
      0099EC 20 4D            [ 2] 1456 	jra	00125$
      0099EE                       1457 00124$:
                                   1458 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
      0099EE 7B 01            [ 1] 1459 	ld	a, (0x01, sp)
      0099F0 27 18            [ 1] 1460 	jreq	00121$
                                   1461 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
      0099F2 C6 52 47         [ 1] 1462 	ld	a, 0x5247
      0099F5 14 05            [ 1] 1463 	and	a, (0x05, sp)
      0099F7 97               [ 1] 1464 	ld	xl, a
                                   1465 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      0099F8 C6 52 47         [ 1] 1466 	ld	a, 0x5247
      0099FB 14 04            [ 1] 1467 	and	a, (0x04, sp)
      0099FD 27 08            [ 1] 1468 	jreq	00106$
      0099FF 9F               [ 1] 1469 	ld	a, xl
      009A00 4D               [ 1] 1470 	tnz	a
      009A01 27 04            [ 1] 1471 	jreq	00106$
                                   1472 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 782: pendingbitstatus = SET;
      009A03 A6 01            [ 1] 1473 	ld	a, #0x01
      009A05 20 34            [ 2] 1474 	jra	00125$
      009A07                       1475 00106$:
                                   1476 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 787: pendingbitstatus = RESET;
      009A07 4F               [ 1] 1477 	clr	a
      009A08 20 31            [ 2] 1478 	jra	00125$
      009A0A                       1479 00121$:
                                   1480 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
      009A0A 7B 02            [ 1] 1481 	ld	a, (0x02, sp)
      009A0C 27 18            [ 1] 1482 	jreq	00118$
                                   1483 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
      009A0E C6 52 49         [ 1] 1484 	ld	a, 0x5249
      009A11 14 05            [ 1] 1485 	and	a, (0x05, sp)
      009A13 97               [ 1] 1486 	ld	xl, a
                                   1487 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
      009A14 C6 52 49         [ 1] 1488 	ld	a, 0x5249
      009A17 14 04            [ 1] 1489 	and	a, (0x04, sp)
      009A19 27 08            [ 1] 1490 	jreq	00110$
      009A1B 9F               [ 1] 1491 	ld	a, xl
      009A1C 4D               [ 1] 1492 	tnz	a
      009A1D 27 04            [ 1] 1493 	jreq	00110$
                                   1494 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 798: pendingbitstatus = SET;
      009A1F A6 01            [ 1] 1495 	ld	a, #0x01
      009A21 20 18            [ 2] 1496 	jra	00125$
      009A23                       1497 00110$:
                                   1498 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 803: pendingbitstatus = RESET;
      009A23 4F               [ 1] 1499 	clr	a
      009A24 20 15            [ 2] 1500 	jra	00125$
      009A26                       1501 00118$:
                                   1502 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
      009A26 C6 52 45         [ 1] 1503 	ld	a, 0x5245
      009A29 14 05            [ 1] 1504 	and	a, (0x05, sp)
      009A2B 97               [ 1] 1505 	ld	xl, a
                                   1506 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      009A2C C6 52 40         [ 1] 1507 	ld	a, 0x5240
      009A2F 14 04            [ 1] 1508 	and	a, (0x04, sp)
      009A31 27 07            [ 1] 1509 	jreq	00114$
      009A33 9F               [ 1] 1510 	ld	a, xl
      009A34 4D               [ 1] 1511 	tnz	a
      009A35 27 03            [ 1] 1512 	jreq	00114$
                                   1513 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 814: pendingbitstatus = SET;
      009A37 A6 01            [ 1] 1514 	ld	a, #0x01
                                   1515 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 819: pendingbitstatus = RESET;
      009A39 21                    1516 	.byte 0x21
      009A3A                       1517 00114$:
      009A3A 4F               [ 1] 1518 	clr	a
      009A3B                       1519 00125$:
                                   1520 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 823: return  pendingbitstatus;
                                   1521 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 824: }
      009A3B 5B 05            [ 2] 1522 	addw	sp, #5
      009A3D 81               [ 4] 1523 	ret
                                   1524 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
                                   1525 ;	-----------------------------------------
                                   1526 ;	 function UART2_ClearITPendingBit
                                   1527 ;	-----------------------------------------
      009A3E                       1528 _UART2_ClearITPendingBit:
      009A3E 88               [ 1] 1529 	push	a
                                   1530 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 854: assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
      009A3F A3 02 55         [ 2] 1531 	cpw	x, #0x0255
      009A42 26 03            [ 1] 1532 	jrne	00143$
      009A44 A6 01            [ 1] 1533 	ld	a, #0x01
      009A46 21                    1534 	.byte 0x21
      009A47                       1535 00143$:
      009A47 4F               [ 1] 1536 	clr	a
      009A48                       1537 00144$:
      009A48 A3 03 46         [ 2] 1538 	cpw	x, #0x0346
      009A4B 26 07            [ 1] 1539 	jrne	00146$
      009A4D 88               [ 1] 1540 	push	a
      009A4E A6 01            [ 1] 1541 	ld	a, #0x01
      009A50 6B 02            [ 1] 1542 	ld	(0x02, sp), a
      009A52 84               [ 1] 1543 	pop	a
      009A53 C5                    1544 	.byte 0xc5
      009A54                       1545 00146$:
      009A54 0F 01            [ 1] 1546 	clr	(0x01, sp)
      009A56                       1547 00147$:
      009A56 4D               [ 1] 1548 	tnz	a
      009A57 26 17            [ 1] 1549 	jrne	00110$
      009A59 A3 04 12         [ 2] 1550 	cpw	x, #0x0412
      009A5C 27 12            [ 1] 1551 	jreq	00110$
      009A5E 0D 01            [ 1] 1552 	tnz	(0x01, sp)
      009A60 26 0E            [ 1] 1553 	jrne	00110$
      009A62 88               [ 1] 1554 	push	a
      009A63 4B 56            [ 1] 1555 	push	#0x56
      009A65 4B 03            [ 1] 1556 	push	#0x03
      009A67 5F               [ 1] 1557 	clrw	x
      009A68 89               [ 2] 1558 	pushw	x
      009A69 AE 81 E9         [ 2] 1559 	ldw	x, #(___str_0+0)
      009A6C CD AB 90         [ 4] 1560 	call	_assert_failed
      009A6F 84               [ 1] 1561 	pop	a
      009A70                       1562 00110$:
                                   1563 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
      009A70 4D               [ 1] 1564 	tnz	a
      009A71 27 06            [ 1] 1565 	jreq	00105$
                                   1566 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      009A73 35 DF 52 40      [ 1] 1567 	mov	0x5240+0, #0xdf
      009A77 20 0E            [ 2] 1568 	jra	00107$
      009A79                       1569 00105$:
                                   1570 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
      009A79 7B 01            [ 1] 1571 	ld	a, (0x01, sp)
      009A7B 27 06            [ 1] 1572 	jreq	00102$
                                   1573 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
      009A7D 72 19 52 47      [ 1] 1574 	bres	0x5247, #4
      009A81 20 04            [ 2] 1575 	jra	00107$
      009A83                       1576 00102$:
                                   1577 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      009A83 72 13 52 49      [ 1] 1578 	bres	0x5249, #1
      009A87                       1579 00107$:
                                   1580 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 871: }
      009A87 84               [ 1] 1581 	pop	a
      009A88 81               [ 4] 1582 	ret
                                   1583 	.area CODE
                                   1584 	.area CONST
                                   1585 	.area CONST
      0081E9                       1586 ___str_0:
      0081E9 2F 55 73 65 72 73 2F  1587 	.ascii "/Users/alekseydunaev/.platformio/packages/framework-ststm8sp"
             61 6C 65 6B 73 65 79
             64 75 6E 61 65 76 2F
             2E 70 6C 61 74 66 6F
             72 6D 69 6F 2F 70 61
             63 6B 61 67 65 73 2F
             66 72 61 6D 65 77 6F
             72 6B 2D 73 74 73 74
             6D 38 73 70
      008225 6C 2F 4C 69 62 72 61  1588 	.ascii "l/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c"
             72 69 65 73 2F 53 54
             4D 38 53 5F 53 74 64
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 75 61 72 74
             32 2E 63
      008259 00                    1589 	.db 0x00
                                   1590 	.area CODE
                                   1591 	.area INITIALIZER
                                   1592 	.area CABS (ABS)
