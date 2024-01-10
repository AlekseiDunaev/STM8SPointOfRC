                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
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
                                     75 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 53: void UART2_DeInit(void)
                                     76 ;	-----------------------------------------
                                     77 ;	 function UART2_DeInit
                                     78 ;	-----------------------------------------
      00914F                         79 _UART2_DeInit:
                                     80 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 57: (void) UART2->SR;
      00914F C6 52 40         [ 1]   81 	ld	a, 0x5240
                                     82 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 58: (void)UART2->DR;
      009152 C6 52 41         [ 1]   83 	ld	a, 0x5241
                                     84 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
      009155 35 00 52 43      [ 1]   85 	mov	0x5243+0, #0x00
                                     86 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
      009159 35 00 52 42      [ 1]   87 	mov	0x5242+0, #0x00
                                     88 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
      00915D 35 00 52 44      [ 1]   89 	mov	0x5244+0, #0x00
                                     90 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
      009161 35 00 52 45      [ 1]   91 	mov	0x5245+0, #0x00
                                     92 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
      009165 35 00 52 46      [ 1]   93 	mov	0x5246+0, #0x00
                                     94 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
      009169 35 00 52 47      [ 1]   95 	mov	0x5247+0, #0x00
                                     96 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
      00916D 35 00 52 48      [ 1]   97 	mov	0x5248+0, #0x00
                                     98 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
      009171 35 00 52 49      [ 1]   99 	mov	0x5249+0, #0x00
                                    100 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 69: }
      009175 81               [ 4]  101 	ret
                                    102 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
                                    103 ;	-----------------------------------------
                                    104 ;	 function UART2_Init
                                    105 ;	-----------------------------------------
      009176                        106 _UART2_Init:
      009176 52 10            [ 2]  107 	sub	sp, #16
                                    108 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 91: assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
      009178 AE 89 68         [ 2]  109 	ldw	x, #0x8968
      00917B 13 15            [ 2]  110 	cpw	x, (0x15, sp)
      00917D A6 09            [ 1]  111 	ld	a, #0x09
      00917F 12 14            [ 1]  112 	sbc	a, (0x14, sp)
      009181 4F               [ 1]  113 	clr	a
      009182 12 13            [ 1]  114 	sbc	a, (0x13, sp)
      009184 24 0C            [ 1]  115 	jrnc	00113$
      009186 4B 5B            [ 1]  116 	push	#0x5b
      009188 5F               [ 1]  117 	clrw	x
      009189 89               [ 2]  118 	pushw	x
      00918A 4B 00            [ 1]  119 	push	#0x00
      00918C AE 81 D7         [ 2]  120 	ldw	x, #(___str_0+0)
      00918F CD AB 2D         [ 4]  121 	call	_assert_failed
      009192                        122 00113$:
                                    123 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 92: assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
      009192 0D 17            [ 1]  124 	tnz	(0x17, sp)
      009194 27 12            [ 1]  125 	jreq	00115$
      009196 7B 17            [ 1]  126 	ld	a, (0x17, sp)
      009198 A1 10            [ 1]  127 	cp	a, #0x10
      00919A 27 0C            [ 1]  128 	jreq	00115$
      00919C 4B 5C            [ 1]  129 	push	#0x5c
      00919E 5F               [ 1]  130 	clrw	x
      00919F 89               [ 2]  131 	pushw	x
      0091A0 4B 00            [ 1]  132 	push	#0x00
      0091A2 AE 81 D7         [ 2]  133 	ldw	x, #(___str_0+0)
      0091A5 CD AB 2D         [ 4]  134 	call	_assert_failed
      0091A8                        135 00115$:
                                    136 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 93: assert_param(IS_UART2_STOPBITS_OK(StopBits));
      0091A8 0D 18            [ 1]  137 	tnz	(0x18, sp)
      0091AA 27 1E            [ 1]  138 	jreq	00120$
      0091AC 7B 18            [ 1]  139 	ld	a, (0x18, sp)
      0091AE A1 10            [ 1]  140 	cp	a, #0x10
      0091B0 27 18            [ 1]  141 	jreq	00120$
      0091B2 7B 18            [ 1]  142 	ld	a, (0x18, sp)
      0091B4 A1 20            [ 1]  143 	cp	a, #0x20
      0091B6 27 12            [ 1]  144 	jreq	00120$
      0091B8 7B 18            [ 1]  145 	ld	a, (0x18, sp)
      0091BA A1 30            [ 1]  146 	cp	a, #0x30
      0091BC 27 0C            [ 1]  147 	jreq	00120$
      0091BE 4B 5D            [ 1]  148 	push	#0x5d
      0091C0 5F               [ 1]  149 	clrw	x
      0091C1 89               [ 2]  150 	pushw	x
      0091C2 4B 00            [ 1]  151 	push	#0x00
      0091C4 AE 81 D7         [ 2]  152 	ldw	x, #(___str_0+0)
      0091C7 CD AB 2D         [ 4]  153 	call	_assert_failed
      0091CA                        154 00120$:
                                    155 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 94: assert_param(IS_UART2_PARITY_OK(Parity));
      0091CA 0D 19            [ 1]  156 	tnz	(0x19, sp)
      0091CC 27 18            [ 1]  157 	jreq	00131$
      0091CE 7B 19            [ 1]  158 	ld	a, (0x19, sp)
      0091D0 A1 04            [ 1]  159 	cp	a, #0x04
      0091D2 27 12            [ 1]  160 	jreq	00131$
      0091D4 7B 19            [ 1]  161 	ld	a, (0x19, sp)
      0091D6 A1 06            [ 1]  162 	cp	a, #0x06
      0091D8 27 0C            [ 1]  163 	jreq	00131$
      0091DA 4B 5E            [ 1]  164 	push	#0x5e
      0091DC 5F               [ 1]  165 	clrw	x
      0091DD 89               [ 2]  166 	pushw	x
      0091DE 4B 00            [ 1]  167 	push	#0x00
      0091E0 AE 81 D7         [ 2]  168 	ldw	x, #(___str_0+0)
      0091E3 CD AB 2D         [ 4]  169 	call	_assert_failed
      0091E6                        170 00131$:
                                    171 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 95: assert_param(IS_UART2_MODE_OK((uint8_t)Mode));
      0091E6 7B 1B            [ 1]  172 	ld	a, (0x1b, sp)
      0091E8 A1 08            [ 1]  173 	cp	a, #0x08
      0091EA 27 3F            [ 1]  174 	jreq	00139$
      0091EC 7B 1B            [ 1]  175 	ld	a, (0x1b, sp)
      0091EE A1 40            [ 1]  176 	cp	a, #0x40
      0091F0 27 39            [ 1]  177 	jreq	00139$
      0091F2 7B 1B            [ 1]  178 	ld	a, (0x1b, sp)
      0091F4 A1 04            [ 1]  179 	cp	a, #0x04
      0091F6 27 33            [ 1]  180 	jreq	00139$
      0091F8 7B 1B            [ 1]  181 	ld	a, (0x1b, sp)
      0091FA A1 80            [ 1]  182 	cp	a, #0x80
      0091FC 27 2D            [ 1]  183 	jreq	00139$
      0091FE 7B 1B            [ 1]  184 	ld	a, (0x1b, sp)
      009200 A0 0C            [ 1]  185 	sub	a, #0x0c
      009202 26 02            [ 1]  186 	jrne	00339$
      009204 4C               [ 1]  187 	inc	a
      009205 21                     188 	.byte 0x21
      009206                        189 00339$:
      009206 4F               [ 1]  190 	clr	a
      009207                        191 00340$:
      009207 4D               [ 1]  192 	tnz	a
      009208 26 21            [ 1]  193 	jrne	00139$
      00920A 4D               [ 1]  194 	tnz	a
      00920B 26 1E            [ 1]  195 	jrne	00139$
      00920D 7B 1B            [ 1]  196 	ld	a, (0x1b, sp)
      00920F A1 44            [ 1]  197 	cp	a, #0x44
      009211 27 18            [ 1]  198 	jreq	00139$
      009213 7B 1B            [ 1]  199 	ld	a, (0x1b, sp)
      009215 A1 C0            [ 1]  200 	cp	a, #0xc0
      009217 27 12            [ 1]  201 	jreq	00139$
      009219 7B 1B            [ 1]  202 	ld	a, (0x1b, sp)
      00921B A1 88            [ 1]  203 	cp	a, #0x88
      00921D 27 0C            [ 1]  204 	jreq	00139$
      00921F 4B 5F            [ 1]  205 	push	#0x5f
      009221 5F               [ 1]  206 	clrw	x
      009222 89               [ 2]  207 	pushw	x
      009223 4B 00            [ 1]  208 	push	#0x00
      009225 AE 81 D7         [ 2]  209 	ldw	x, #(___str_0+0)
      009228 CD AB 2D         [ 4]  210 	call	_assert_failed
      00922B                        211 00139$:
                                    212 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 96: assert_param(IS_UART2_SYNCMODE_OK((uint8_t)SyncMode));
      00922B 7B 1A            [ 1]  213 	ld	a, (0x1a, sp)
      00922D A4 88            [ 1]  214 	and	a, #0x88
      00922F A1 88            [ 1]  215 	cp	a, #0x88
      009231 27 17            [ 1]  216 	jreq	00167$
      009233 7B 1A            [ 1]  217 	ld	a, (0x1a, sp)
      009235 A4 44            [ 1]  218 	and	a, #0x44
      009237 A1 44            [ 1]  219 	cp	a, #0x44
      009239 27 0F            [ 1]  220 	jreq	00167$
      00923B 7B 1A            [ 1]  221 	ld	a, (0x1a, sp)
      00923D A4 22            [ 1]  222 	and	a, #0x22
      00923F A1 22            [ 1]  223 	cp	a, #0x22
      009241 27 07            [ 1]  224 	jreq	00167$
      009243 7B 1A            [ 1]  225 	ld	a, (0x1a, sp)
      009245 43               [ 1]  226 	cpl	a
      009246 A5 11            [ 1]  227 	bcp	a, #0x11
      009248 26 0C            [ 1]  228 	jrne	00165$
      00924A                        229 00167$:
      00924A 4B 60            [ 1]  230 	push	#0x60
      00924C 5F               [ 1]  231 	clrw	x
      00924D 89               [ 2]  232 	pushw	x
      00924E 4B 00            [ 1]  233 	push	#0x00
      009250 AE 81 D7         [ 2]  234 	ldw	x, #(___str_0+0)
      009253 CD AB 2D         [ 4]  235 	call	_assert_failed
      009256                        236 00165$:
                                    237 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
      009256 72 19 52 44      [ 1]  238 	bres	0x5244, #4
                                    239 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
      00925A C6 52 44         [ 1]  240 	ld	a, 0x5244
      00925D 1A 17            [ 1]  241 	or	a, (0x17, sp)
      00925F C7 52 44         [ 1]  242 	ld	0x5244, a
                                    243 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      009262 C6 52 46         [ 1]  244 	ld	a, 0x5246
      009265 A4 CF            [ 1]  245 	and	a, #0xcf
      009267 C7 52 46         [ 1]  246 	ld	0x5246, a
                                    247 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
      00926A C6 52 46         [ 1]  248 	ld	a, 0x5246
      00926D 1A 18            [ 1]  249 	or	a, (0x18, sp)
      00926F C7 52 46         [ 1]  250 	ld	0x5246, a
                                    251 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
      009272 C6 52 44         [ 1]  252 	ld	a, 0x5244
      009275 A4 F9            [ 1]  253 	and	a, #0xf9
      009277 C7 52 44         [ 1]  254 	ld	0x5244, a
                                    255 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
      00927A C6 52 44         [ 1]  256 	ld	a, 0x5244
      00927D 1A 19            [ 1]  257 	or	a, (0x19, sp)
      00927F C7 52 44         [ 1]  258 	ld	0x5244, a
                                    259 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
      009282 C6 52 42         [ 1]  260 	ld	a, 0x5242
      009285 35 00 52 42      [ 1]  261 	mov	0x5242+0, #0x00
                                    262 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
      009289 C6 52 43         [ 1]  263 	ld	a, 0x5243
      00928C A4 0F            [ 1]  264 	and	a, #0x0f
      00928E C7 52 43         [ 1]  265 	ld	0x5243, a
                                    266 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
      009291 C6 52 43         [ 1]  267 	ld	a, 0x5243
      009294 A4 F0            [ 1]  268 	and	a, #0xf0
      009296 C7 52 43         [ 1]  269 	ld	0x5243, a
                                    270 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      009299 CD 88 19         [ 4]  271 	call	_CLK_GetClockFreq
      00929C 1F 0F            [ 2]  272 	ldw	(0x0f, sp), x
      00929E 1E 13            [ 2]  273 	ldw	x, (0x13, sp)
      0092A0 1F 09            [ 2]  274 	ldw	(0x09, sp), x
      0092A2 1E 15            [ 2]  275 	ldw	x, (0x15, sp)
      0092A4 A6 04            [ 1]  276 	ld	a, #0x04
      0092A6                        277 00364$:
      0092A6 58               [ 2]  278 	sllw	x
      0092A7 09 0A            [ 1]  279 	rlc	(0x0a, sp)
      0092A9 09 09            [ 1]  280 	rlc	(0x09, sp)
      0092AB 4A               [ 1]  281 	dec	a
      0092AC 26 F8            [ 1]  282 	jrne	00364$
      0092AE 1F 0B            [ 2]  283 	ldw	(0x0b, sp), x
      0092B0 89               [ 2]  284 	pushw	x
      0092B1 1E 0B            [ 2]  285 	ldw	x, (0x0b, sp)
      0092B3 89               [ 2]  286 	pushw	x
      0092B4 1E 13            [ 2]  287 	ldw	x, (0x13, sp)
      0092B6 89               [ 2]  288 	pushw	x
      0092B7 90 89            [ 2]  289 	pushw	y
      0092B9 CD B2 D3         [ 4]  290 	call	__divulong
      0092BC 5B 08            [ 2]  291 	addw	sp, #8
      0092BE 1F 03            [ 2]  292 	ldw	(0x03, sp), x
                                    293 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      0092C0 90 89            [ 2]  294 	pushw	y
      0092C2 CD 88 19         [ 4]  295 	call	_CLK_GetClockFreq
      0092C5 17 0F            [ 2]  296 	ldw	(0x0f, sp), y
      0092C7 90 85            [ 2]  297 	popw	y
      0092C9 90 89            [ 2]  298 	pushw	y
      0092CB 89               [ 2]  299 	pushw	x
      0092CC 1E 11            [ 2]  300 	ldw	x, (0x11, sp)
      0092CE 89               [ 2]  301 	pushw	x
      0092CF 4B 64            [ 1]  302 	push	#0x64
      0092D1 5F               [ 1]  303 	clrw	x
      0092D2 89               [ 2]  304 	pushw	x
      0092D3 4B 00            [ 1]  305 	push	#0x00
      0092D5 CD B5 9E         [ 4]  306 	call	__mullong
      0092D8 5B 08            [ 2]  307 	addw	sp, #8
      0092DA 1F 11            [ 2]  308 	ldw	(0x11, sp), x
      0092DC 17 0F            [ 2]  309 	ldw	(0x0f, sp), y
      0092DE 90 85            [ 2]  310 	popw	y
      0092E0 90 89            [ 2]  311 	pushw	y
      0092E2 1E 0D            [ 2]  312 	ldw	x, (0x0d, sp)
      0092E4 89               [ 2]  313 	pushw	x
      0092E5 1E 0D            [ 2]  314 	ldw	x, (0x0d, sp)
      0092E7 89               [ 2]  315 	pushw	x
      0092E8 1E 15            [ 2]  316 	ldw	x, (0x15, sp)
      0092EA 89               [ 2]  317 	pushw	x
      0092EB 1E 15            [ 2]  318 	ldw	x, (0x15, sp)
      0092ED 89               [ 2]  319 	pushw	x
      0092EE CD B2 D3         [ 4]  320 	call	__divulong
      0092F1 5B 08            [ 2]  321 	addw	sp, #8
      0092F3 17 0F            [ 2]  322 	ldw	(0x0f, sp), y
      0092F5 90 85            [ 2]  323 	popw	y
      0092F7 1F 07            [ 2]  324 	ldw	(0x07, sp), x
      0092F9 1E 0D            [ 2]  325 	ldw	x, (0x0d, sp)
      0092FB 1F 05            [ 2]  326 	ldw	(0x05, sp), x
                                    327 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
      0092FD 90 89            [ 2]  328 	pushw	y
      0092FF 1E 05            [ 2]  329 	ldw	x, (0x05, sp)
      009301 89               [ 2]  330 	pushw	x
      009302 90 89            [ 2]  331 	pushw	y
      009304 4B 64            [ 1]  332 	push	#0x64
      009306 5F               [ 1]  333 	clrw	x
      009307 89               [ 2]  334 	pushw	x
      009308 4B 00            [ 1]  335 	push	#0x00
      00930A CD B5 9E         [ 4]  336 	call	__mullong
      00930D 5B 08            [ 2]  337 	addw	sp, #8
      00930F 1F 0D            [ 2]  338 	ldw	(0x0d, sp), x
      009311 17 0B            [ 2]  339 	ldw	(0x0b, sp), y
      009313 90 85            [ 2]  340 	popw	y
      009315 1E 07            [ 2]  341 	ldw	x, (0x07, sp)
      009317 72 F0 0B         [ 2]  342 	subw	x, (0x0b, sp)
      00931A 1F 0F            [ 2]  343 	ldw	(0x0f, sp), x
      00931C 7B 06            [ 1]  344 	ld	a, (0x06, sp)
      00931E 12 0A            [ 1]  345 	sbc	a, (0x0a, sp)
      009320 97               [ 1]  346 	ld	xl, a
      009321 7B 05            [ 1]  347 	ld	a, (0x05, sp)
      009323 12 09            [ 1]  348 	sbc	a, (0x09, sp)
      009325 95               [ 1]  349 	ld	xh, a
      009326 1F 0D            [ 2]  350 	ldw	(0x0d, sp), x
      009328 1E 0F            [ 2]  351 	ldw	x, (0x0f, sp)
      00932A A6 04            [ 1]  352 	ld	a, #0x04
      00932C                        353 00366$:
      00932C 58               [ 2]  354 	sllw	x
      00932D 09 0E            [ 1]  355 	rlc	(0x0e, sp)
      00932F 09 0D            [ 1]  356 	rlc	(0x0d, sp)
      009331 4A               [ 1]  357 	dec	a
      009332 26 F8            [ 1]  358 	jrne	00366$
      009334 90 89            [ 2]  359 	pushw	y
      009336 4B 64            [ 1]  360 	push	#0x64
      009338 4B 00            [ 1]  361 	push	#0x00
      00933A 4B 00            [ 1]  362 	push	#0x00
      00933C 4B 00            [ 1]  363 	push	#0x00
      00933E 89               [ 2]  364 	pushw	x
      00933F 1E 15            [ 2]  365 	ldw	x, (0x15, sp)
      009341 89               [ 2]  366 	pushw	x
      009342 CD B2 D3         [ 4]  367 	call	__divulong
      009345 5B 08            [ 2]  368 	addw	sp, #8
      009347 17 0F            [ 2]  369 	ldw	(0x0f, sp), y
      009349 9F               [ 1]  370 	ld	a, xl
      00934A 90 85            [ 2]  371 	popw	y
      00934C A4 0F            [ 1]  372 	and	a, #0x0f
      00934E 6B 0E            [ 1]  373 	ld	(0x0e, sp), a
                                    374 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
      009350 1E 03            [ 2]  375 	ldw	x, (0x03, sp)
      009352 A6 10            [ 1]  376 	ld	a, #0x10
      009354 62               [ 2]  377 	div	x, a
      009355 02               [ 1]  378 	rlwa	x
      009356 6B 0F            [ 1]  379 	ld	(0x0f, sp), a
      009358 01               [ 1]  380 	rrwa	x
      009359 9F               [ 1]  381 	ld	a, xl
      00935A A4 F0            [ 1]  382 	and	a, #0xf0
                                    383 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
      00935C 1A 0E            [ 1]  384 	or	a, (0x0e, sp)
      00935E C7 52 43         [ 1]  385 	ld	0x5243, a
                                    386 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
      009361 7B 04            [ 1]  387 	ld	a, (0x04, sp)
      009363 C7 52 42         [ 1]  388 	ld	0x5242, a
                                    389 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      009366 C6 52 45         [ 1]  390 	ld	a, 0x5245
      009369 A4 F3            [ 1]  391 	and	a, #0xf3
      00936B C7 52 45         [ 1]  392 	ld	0x5245, a
                                    393 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
      00936E C6 52 46         [ 1]  394 	ld	a, 0x5246
      009371 A4 F8            [ 1]  395 	and	a, #0xf8
      009373 C7 52 46         [ 1]  396 	ld	0x5246, a
                                    397 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
      009376 C6 52 46         [ 1]  398 	ld	a, 0x5246
      009379 6B 10            [ 1]  399 	ld	(0x10, sp), a
      00937B 7B 1A            [ 1]  400 	ld	a, (0x1a, sp)
      00937D A4 07            [ 1]  401 	and	a, #0x07
      00937F 1A 10            [ 1]  402 	or	a, (0x10, sp)
      009381 C7 52 46         [ 1]  403 	ld	0x5246, a
                                    404 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      009384 C6 52 45         [ 1]  405 	ld	a, 0x5245
                                    406 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
      009387 88               [ 1]  407 	push	a
      009388 7B 1C            [ 1]  408 	ld	a, (0x1c, sp)
      00938A A5 04            [ 1]  409 	bcp	a, #0x04
      00938C 84               [ 1]  410 	pop	a
      00938D 27 07            [ 1]  411 	jreq	00102$
                                    412 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
      00938F AA 08            [ 1]  413 	or	a, #0x08
      009391 C7 52 45         [ 1]  414 	ld	0x5245, a
      009394 20 05            [ 2]  415 	jra	00103$
      009396                        416 00102$:
                                    417 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
      009396 A4 F7            [ 1]  418 	and	a, #0xf7
      009398 C7 52 45         [ 1]  419 	ld	0x5245, a
      00939B                        420 00103$:
                                    421 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      00939B C6 52 45         [ 1]  422 	ld	a, 0x5245
                                    423 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
      00939E 88               [ 1]  424 	push	a
      00939F 7B 1C            [ 1]  425 	ld	a, (0x1c, sp)
      0093A1 A5 08            [ 1]  426 	bcp	a, #0x08
      0093A3 84               [ 1]  427 	pop	a
      0093A4 27 07            [ 1]  428 	jreq	00105$
                                    429 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
      0093A6 AA 04            [ 1]  430 	or	a, #0x04
      0093A8 C7 52 45         [ 1]  431 	ld	0x5245, a
      0093AB 20 05            [ 2]  432 	jra	00106$
      0093AD                        433 00105$:
                                    434 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
      0093AD A4 FB            [ 1]  435 	and	a, #0xfb
      0093AF C7 52 45         [ 1]  436 	ld	0x5245, a
      0093B2                        437 00106$:
                                    438 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      0093B2 C6 52 46         [ 1]  439 	ld	a, 0x5246
                                    440 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
      0093B5 0D 1A            [ 1]  441 	tnz	(0x1a, sp)
      0093B7 2A 07            [ 1]  442 	jrpl	00108$
                                    443 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
      0093B9 A4 F7            [ 1]  444 	and	a, #0xf7
      0093BB C7 52 46         [ 1]  445 	ld	0x5246, a
      0093BE 20 0D            [ 2]  446 	jra	00110$
      0093C0                        447 00108$:
                                    448 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
      0093C0 88               [ 1]  449 	push	a
      0093C1 7B 1B            [ 1]  450 	ld	a, (0x1b, sp)
      0093C3 A4 08            [ 1]  451 	and	a, #0x08
      0093C5 6B 11            [ 1]  452 	ld	(0x11, sp), a
      0093C7 84               [ 1]  453 	pop	a
      0093C8 1A 10            [ 1]  454 	or	a, (0x10, sp)
      0093CA C7 52 46         [ 1]  455 	ld	0x5246, a
      0093CD                        456 00110$:
                                    457 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 173: }
      0093CD 1E 11            [ 2]  458 	ldw	x, (17, sp)
      0093CF 5B 1B            [ 2]  459 	addw	sp, #27
      0093D1 FC               [ 2]  460 	jp	(x)
                                    461 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
                                    462 ;	-----------------------------------------
                                    463 ;	 function UART2_Cmd
                                    464 ;	-----------------------------------------
      0093D2                        465 _UART2_Cmd:
      0093D2 88               [ 1]  466 	push	a
      0093D3 6B 01            [ 1]  467 	ld	(0x01, sp), a
                                    468 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      0093D5 C6 52 44         [ 1]  469 	ld	a, 0x5244
                                    470 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 183: if (NewState != DISABLE)
      0093D8 0D 01            [ 1]  471 	tnz	(0x01, sp)
      0093DA 27 07            [ 1]  472 	jreq	00102$
                                    473 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      0093DC A4 DF            [ 1]  474 	and	a, #0xdf
      0093DE C7 52 44         [ 1]  475 	ld	0x5244, a
      0093E1 20 05            [ 2]  476 	jra	00104$
      0093E3                        477 00102$:
                                    478 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
      0093E3 AA 20            [ 1]  479 	or	a, #0x20
      0093E5 C7 52 44         [ 1]  480 	ld	0x5244, a
      0093E8                        481 00104$:
                                    482 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 193: }
      0093E8 84               [ 1]  483 	pop	a
      0093E9 81               [ 4]  484 	ret
                                    485 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
                                    486 ;	-----------------------------------------
                                    487 ;	 function UART2_ITConfig
                                    488 ;	-----------------------------------------
      0093EA                        489 _UART2_ITConfig:
      0093EA 52 07            [ 2]  490 	sub	sp, #7
      0093EC 1F 06            [ 2]  491 	ldw	(0x06, sp), x
      0093EE 6B 05            [ 1]  492 	ld	(0x05, sp), a
                                    493 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 215: assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
      0093F0 1E 06            [ 2]  494 	ldw	x, (0x06, sp)
      0093F2 A3 01 00         [ 2]  495 	cpw	x, #0x0100
      0093F5 27 2E            [ 1]  496 	jreq	00125$
      0093F7 A3 02 77         [ 2]  497 	cpw	x, #0x0277
      0093FA 27 29            [ 1]  498 	jreq	00125$
      0093FC A3 02 66         [ 2]  499 	cpw	x, #0x0266
      0093FF 27 24            [ 1]  500 	jreq	00125$
      009401 A3 02 05         [ 2]  501 	cpw	x, #0x0205
      009404 27 1F            [ 1]  502 	jreq	00125$
      009406 A3 02 44         [ 2]  503 	cpw	x, #0x0244
      009409 27 1A            [ 1]  504 	jreq	00125$
      00940B A3 04 12         [ 2]  505 	cpw	x, #0x0412
      00940E 27 15            [ 1]  506 	jreq	00125$
      009410 A3 03 46         [ 2]  507 	cpw	x, #0x0346
      009413 27 10            [ 1]  508 	jreq	00125$
      009415 89               [ 2]  509 	pushw	x
      009416 4B D7            [ 1]  510 	push	#0xd7
      009418 4B 00            [ 1]  511 	push	#0x00
      00941A 4B 00            [ 1]  512 	push	#0x00
      00941C 4B 00            [ 1]  513 	push	#0x00
      00941E AE 81 D7         [ 2]  514 	ldw	x, #(___str_0+0)
      009421 CD AB 2D         [ 4]  515 	call	_assert_failed
      009424 85               [ 2]  516 	popw	x
      009425                        517 00125$:
                                    518 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009425 0D 05            [ 1]  519 	tnz	(0x05, sp)
      009427 27 15            [ 1]  520 	jreq	00145$
      009429 7B 05            [ 1]  521 	ld	a, (0x05, sp)
      00942B 4A               [ 1]  522 	dec	a
      00942C 27 10            [ 1]  523 	jreq	00145$
      00942E 89               [ 2]  524 	pushw	x
      00942F 4B D8            [ 1]  525 	push	#0xd8
      009431 4B 00            [ 1]  526 	push	#0x00
      009433 4B 00            [ 1]  527 	push	#0x00
      009435 4B 00            [ 1]  528 	push	#0x00
      009437 AE 81 D7         [ 2]  529 	ldw	x, #(___str_0+0)
      00943A CD AB 2D         [ 4]  530 	call	_assert_failed
      00943D 85               [ 2]  531 	popw	x
      00943E                        532 00145$:
                                    533 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
                                    534 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      00943E 7B 07            [ 1]  535 	ld	a, (0x07, sp)
      009440 A4 0F            [ 1]  536 	and	a, #0x0f
      009442 88               [ 1]  537 	push	a
      009443 A6 01            [ 1]  538 	ld	a, #0x01
      009445 6B 05            [ 1]  539 	ld	(0x05, sp), a
      009447 84               [ 1]  540 	pop	a
      009448 4D               [ 1]  541 	tnz	a
      009449 27 05            [ 1]  542 	jreq	00255$
      00944B                        543 00254$:
      00944B 08 04            [ 1]  544 	sll	(0x04, sp)
      00944D 4A               [ 1]  545 	dec	a
      00944E 26 FB            [ 1]  546 	jrne	00254$
      009450                        547 00255$:
                                    548 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 227: if (uartreg == 0x01)
      009450 9E               [ 1]  549 	ld	a, xh
      009451 4A               [ 1]  550 	dec	a
      009452 26 05            [ 1]  551 	jrne	00257$
      009454 A6 01            [ 1]  552 	ld	a, #0x01
      009456 6B 01            [ 1]  553 	ld	(0x01, sp), a
      009458 C5                     554 	.byte 0xc5
      009459                        555 00257$:
      009459 0F 01            [ 1]  556 	clr	(0x01, sp)
      00945B                        557 00258$:
                                    558 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 231: else if (uartreg == 0x02)
      00945B 9E               [ 1]  559 	ld	a, xh
      00945C A0 02            [ 1]  560 	sub	a, #0x02
      00945E 26 04            [ 1]  561 	jrne	00260$
      009460 4C               [ 1]  562 	inc	a
      009461 6B 02            [ 1]  563 	ld	(0x02, sp), a
      009463 C5                     564 	.byte 0xc5
      009464                        565 00260$:
      009464 0F 02            [ 1]  566 	clr	(0x02, sp)
      009466                        567 00261$:
                                    568 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 235: else if (uartreg == 0x03)
      009466 9E               [ 1]  569 	ld	a, xh
      009467 A0 03            [ 1]  570 	sub	a, #0x03
      009469 26 04            [ 1]  571 	jrne	00263$
      00946B 4C               [ 1]  572 	inc	a
      00946C 6B 03            [ 1]  573 	ld	(0x03, sp), a
      00946E C5                     574 	.byte 0xc5
      00946F                        575 00263$:
      00946F 0F 03            [ 1]  576 	clr	(0x03, sp)
      009471                        577 00264$:
                                    578 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 224: if (NewState != DISABLE)
      009471 0D 05            [ 1]  579 	tnz	(0x05, sp)
      009473 27 34            [ 1]  580 	jreq	00120$
                                    581 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 227: if (uartreg == 0x01)
      009475 0D 01            [ 1]  582 	tnz	(0x01, sp)
      009477 27 0A            [ 1]  583 	jreq	00108$
                                    584 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 229: UART2->CR1 |= itpos;
      009479 C6 52 44         [ 1]  585 	ld	a, 0x5244
      00947C 1A 04            [ 1]  586 	or	a, (0x04, sp)
      00947E C7 52 44         [ 1]  587 	ld	0x5244, a
      009481 20 5C            [ 2]  588 	jra	00122$
      009483                        589 00108$:
                                    590 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 231: else if (uartreg == 0x02)
      009483 0D 02            [ 1]  591 	tnz	(0x02, sp)
      009485 27 0A            [ 1]  592 	jreq	00105$
                                    593 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 233: UART2->CR2 |= itpos;
      009487 C6 52 45         [ 1]  594 	ld	a, 0x5245
      00948A 1A 04            [ 1]  595 	or	a, (0x04, sp)
      00948C C7 52 45         [ 1]  596 	ld	0x5245, a
      00948F 20 4E            [ 2]  597 	jra	00122$
      009491                        598 00105$:
                                    599 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 235: else if (uartreg == 0x03)
      009491 0D 03            [ 1]  600 	tnz	(0x03, sp)
      009493 27 0A            [ 1]  601 	jreq	00102$
                                    602 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 237: UART2->CR4 |= itpos;
      009495 C6 52 47         [ 1]  603 	ld	a, 0x5247
      009498 1A 04            [ 1]  604 	or	a, (0x04, sp)
      00949A C7 52 47         [ 1]  605 	ld	0x5247, a
      00949D 20 40            [ 2]  606 	jra	00122$
      00949F                        607 00102$:
                                    608 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 241: UART2->CR6 |= itpos;
      00949F C6 52 49         [ 1]  609 	ld	a, 0x5249
      0094A2 1A 04            [ 1]  610 	or	a, (0x04, sp)
      0094A4 C7 52 49         [ 1]  611 	ld	0x5249, a
      0094A7 20 36            [ 2]  612 	jra	00122$
      0094A9                        613 00120$:
                                    614 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      0094A9 03 04            [ 1]  615 	cpl	(0x04, sp)
                                    616 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 247: if (uartreg == 0x01)
      0094AB 0D 01            [ 1]  617 	tnz	(0x01, sp)
      0094AD 27 0C            [ 1]  618 	jreq	00117$
                                    619 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      0094AF C6 52 44         [ 1]  620 	ld	a, 0x5244
      0094B2 6B 03            [ 1]  621 	ld	(0x03, sp), a
      0094B4 14 04            [ 1]  622 	and	a, (0x04, sp)
      0094B6 C7 52 44         [ 1]  623 	ld	0x5244, a
      0094B9 20 24            [ 2]  624 	jra	00122$
      0094BB                        625 00117$:
                                    626 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 251: else if (uartreg == 0x02)
      0094BB 0D 02            [ 1]  627 	tnz	(0x02, sp)
      0094BD 27 0A            [ 1]  628 	jreq	00114$
                                    629 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
      0094BF C6 52 45         [ 1]  630 	ld	a, 0x5245
      0094C2 14 04            [ 1]  631 	and	a, (0x04, sp)
      0094C4 C7 52 45         [ 1]  632 	ld	0x5245, a
      0094C7 20 16            [ 2]  633 	jra	00122$
      0094C9                        634 00114$:
                                    635 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 255: else if (uartreg == 0x03)
      0094C9 0D 03            [ 1]  636 	tnz	(0x03, sp)
      0094CB 27 0A            [ 1]  637 	jreq	00111$
                                    638 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
      0094CD C6 52 47         [ 1]  639 	ld	a, 0x5247
      0094D0 14 04            [ 1]  640 	and	a, (0x04, sp)
      0094D2 C7 52 47         [ 1]  641 	ld	0x5247, a
      0094D5 20 08            [ 2]  642 	jra	00122$
      0094D7                        643 00111$:
                                    644 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
      0094D7 C6 52 49         [ 1]  645 	ld	a, 0x5249
      0094DA 14 04            [ 1]  646 	and	a, (0x04, sp)
      0094DC C7 52 49         [ 1]  647 	ld	0x5249, a
      0094DF                        648 00122$:
                                    649 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 264: }
      0094DF 5B 07            [ 2]  650 	addw	sp, #7
      0094E1 81               [ 4]  651 	ret
                                    652 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
                                    653 ;	-----------------------------------------
                                    654 ;	 function UART2_IrDAConfig
                                    655 ;	-----------------------------------------
      0094E2                        656 _UART2_IrDAConfig:
      0094E2 88               [ 1]  657 	push	a
                                    658 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 274: assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
      0094E3 6B 01            [ 1]  659 	ld	(0x01, sp), a
      0094E5 4A               [ 1]  660 	dec	a
      0094E6 27 10            [ 1]  661 	jreq	00107$
      0094E8 0D 01            [ 1]  662 	tnz	(0x01, sp)
      0094EA 27 0C            [ 1]  663 	jreq	00107$
      0094EC 4B 12            [ 1]  664 	push	#0x12
      0094EE 4B 01            [ 1]  665 	push	#0x01
      0094F0 5F               [ 1]  666 	clrw	x
      0094F1 89               [ 2]  667 	pushw	x
      0094F2 AE 81 D7         [ 2]  668 	ldw	x, #(___str_0+0)
      0094F5 CD AB 2D         [ 4]  669 	call	_assert_failed
      0094F8                        670 00107$:
                                    671 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      0094F8 C6 52 48         [ 1]  672 	ld	a, 0x5248
                                    673 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
      0094FB 0D 01            [ 1]  674 	tnz	(0x01, sp)
      0094FD 27 07            [ 1]  675 	jreq	00102$
                                    676 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      0094FF AA 04            [ 1]  677 	or	a, #0x04
      009501 C7 52 48         [ 1]  678 	ld	0x5248, a
      009504 20 05            [ 2]  679 	jra	00104$
      009506                        680 00102$:
                                    681 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
      009506 A4 FB            [ 1]  682 	and	a, #0xfb
      009508 C7 52 48         [ 1]  683 	ld	0x5248, a
      00950B                        684 00104$:
                                    685 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 284: }
      00950B 84               [ 1]  686 	pop	a
      00950C 81               [ 4]  687 	ret
                                    688 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
                                    689 ;	-----------------------------------------
                                    690 ;	 function UART2_IrDACmd
                                    691 ;	-----------------------------------------
      00950D                        692 _UART2_IrDACmd:
      00950D 88               [ 1]  693 	push	a
                                    694 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 295: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00950E 6B 01            [ 1]  695 	ld	(0x01, sp), a
      009510 27 11            [ 1]  696 	jreq	00107$
      009512 7B 01            [ 1]  697 	ld	a, (0x01, sp)
      009514 4A               [ 1]  698 	dec	a
      009515 27 0C            [ 1]  699 	jreq	00107$
      009517 4B 27            [ 1]  700 	push	#0x27
      009519 4B 01            [ 1]  701 	push	#0x01
      00951B 5F               [ 1]  702 	clrw	x
      00951C 89               [ 2]  703 	pushw	x
      00951D AE 81 D7         [ 2]  704 	ldw	x, #(___str_0+0)
      009520 CD AB 2D         [ 4]  705 	call	_assert_failed
      009523                        706 00107$:
                                    707 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      009523 C6 52 48         [ 1]  708 	ld	a, 0x5248
                                    709 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 297: if (NewState != DISABLE)
      009526 0D 01            [ 1]  710 	tnz	(0x01, sp)
      009528 27 07            [ 1]  711 	jreq	00102$
                                    712 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      00952A AA 02            [ 1]  713 	or	a, #0x02
      00952C C7 52 48         [ 1]  714 	ld	0x5248, a
      00952F 20 05            [ 2]  715 	jra	00104$
      009531                        716 00102$:
                                    717 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
      009531 A4 FD            [ 1]  718 	and	a, #0xfd
      009533 C7 52 48         [ 1]  719 	ld	0x5248, a
      009536                        720 00104$:
                                    721 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 307: }
      009536 84               [ 1]  722 	pop	a
      009537 81               [ 4]  723 	ret
                                    724 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
                                    725 ;	-----------------------------------------
                                    726 ;	 function UART2_LINBreakDetectionConfig
                                    727 ;	-----------------------------------------
      009538                        728 _UART2_LINBreakDetectionConfig:
      009538 88               [ 1]  729 	push	a
                                    730 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 319: assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
      009539 6B 01            [ 1]  731 	ld	(0x01, sp), a
      00953B 27 11            [ 1]  732 	jreq	00107$
      00953D 7B 01            [ 1]  733 	ld	a, (0x01, sp)
      00953F 4A               [ 1]  734 	dec	a
      009540 27 0C            [ 1]  735 	jreq	00107$
      009542 4B 3F            [ 1]  736 	push	#0x3f
      009544 4B 01            [ 1]  737 	push	#0x01
      009546 5F               [ 1]  738 	clrw	x
      009547 89               [ 2]  739 	pushw	x
      009548 AE 81 D7         [ 2]  740 	ldw	x, #(___str_0+0)
      00954B CD AB 2D         [ 4]  741 	call	_assert_failed
      00954E                        742 00107$:
                                    743 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      00954E C6 52 47         [ 1]  744 	ld	a, 0x5247
                                    745 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
      009551 0D 01            [ 1]  746 	tnz	(0x01, sp)
      009553 27 07            [ 1]  747 	jreq	00102$
                                    748 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      009555 AA 20            [ 1]  749 	or	a, #0x20
      009557 C7 52 47         [ 1]  750 	ld	0x5247, a
      00955A 20 05            [ 2]  751 	jra	00104$
      00955C                        752 00102$:
                                    753 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
      00955C A4 DF            [ 1]  754 	and	a, #0xdf
      00955E C7 52 47         [ 1]  755 	ld	0x5247, a
      009561                        756 00104$:
                                    757 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 329: }
      009561 84               [ 1]  758 	pop	a
      009562 81               [ 4]  759 	ret
                                    760 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
                                    761 ;	-----------------------------------------
                                    762 ;	 function UART2_LINConfig
                                    763 ;	-----------------------------------------
      009563                        764 _UART2_LINConfig:
      009563 88               [ 1]  765 	push	a
                                    766 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 346: assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
      009564 6B 01            [ 1]  767 	ld	(0x01, sp), a
      009566 27 11            [ 1]  768 	jreq	00113$
      009568 7B 01            [ 1]  769 	ld	a, (0x01, sp)
      00956A 4A               [ 1]  770 	dec	a
      00956B 27 0C            [ 1]  771 	jreq	00113$
      00956D 4B 5A            [ 1]  772 	push	#0x5a
      00956F 4B 01            [ 1]  773 	push	#0x01
      009571 5F               [ 1]  774 	clrw	x
      009572 89               [ 2]  775 	pushw	x
      009573 AE 81 D7         [ 2]  776 	ldw	x, #(___str_0+0)
      009576 CD AB 2D         [ 4]  777 	call	_assert_failed
      009579                        778 00113$:
                                    779 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 347: assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
      009579 7B 04            [ 1]  780 	ld	a, (0x04, sp)
      00957B 4A               [ 1]  781 	dec	a
      00957C 27 10            [ 1]  782 	jreq	00118$
      00957E 0D 04            [ 1]  783 	tnz	(0x04, sp)
      009580 27 0C            [ 1]  784 	jreq	00118$
      009582 4B 5B            [ 1]  785 	push	#0x5b
      009584 4B 01            [ 1]  786 	push	#0x01
      009586 5F               [ 1]  787 	clrw	x
      009587 89               [ 2]  788 	pushw	x
      009588 AE 81 D7         [ 2]  789 	ldw	x, #(___str_0+0)
      00958B CD AB 2D         [ 4]  790 	call	_assert_failed
      00958E                        791 00118$:
                                    792 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 348: assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
      00958E 0D 05            [ 1]  793 	tnz	(0x05, sp)
      009590 27 11            [ 1]  794 	jreq	00123$
      009592 7B 05            [ 1]  795 	ld	a, (0x05, sp)
      009594 4A               [ 1]  796 	dec	a
      009595 27 0C            [ 1]  797 	jreq	00123$
      009597 4B 5C            [ 1]  798 	push	#0x5c
      009599 4B 01            [ 1]  799 	push	#0x01
      00959B 5F               [ 1]  800 	clrw	x
      00959C 89               [ 2]  801 	pushw	x
      00959D AE 81 D7         [ 2]  802 	ldw	x, #(___str_0+0)
      0095A0 CD AB 2D         [ 4]  803 	call	_assert_failed
      0095A3                        804 00123$:
                                    805 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      0095A3 C6 52 49         [ 1]  806 	ld	a, 0x5249
                                    807 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
      0095A6 0D 01            [ 1]  808 	tnz	(0x01, sp)
      0095A8 27 07            [ 1]  809 	jreq	00102$
                                    810 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      0095AA AA 20            [ 1]  811 	or	a, #0x20
      0095AC C7 52 49         [ 1]  812 	ld	0x5249, a
      0095AF 20 05            [ 2]  813 	jra	00103$
      0095B1                        814 00102$:
                                    815 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
      0095B1 A4 DF            [ 1]  816 	and	a, #0xdf
      0095B3 C7 52 49         [ 1]  817 	ld	0x5249, a
      0095B6                        818 00103$:
                                    819 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      0095B6 C6 52 49         [ 1]  820 	ld	a, 0x5249
                                    821 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
      0095B9 0D 04            [ 1]  822 	tnz	(0x04, sp)
      0095BB 27 07            [ 1]  823 	jreq	00105$
                                    824 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
      0095BD AA 10            [ 1]  825 	or	a, #0x10
      0095BF C7 52 49         [ 1]  826 	ld	0x5249, a
      0095C2 20 05            [ 2]  827 	jra	00106$
      0095C4                        828 00105$:
                                    829 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
      0095C4 A4 EF            [ 1]  830 	and	a, #0xef
      0095C6 C7 52 49         [ 1]  831 	ld	0x5249, a
      0095C9                        832 00106$:
                                    833 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      0095C9 C6 52 49         [ 1]  834 	ld	a, 0x5249
                                    835 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
      0095CC 0D 05            [ 1]  836 	tnz	(0x05, sp)
      0095CE 27 07            [ 1]  837 	jreq	00108$
                                    838 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
      0095D0 AA 80            [ 1]  839 	or	a, #0x80
      0095D2 C7 52 49         [ 1]  840 	ld	0x5249, a
      0095D5 20 05            [ 2]  841 	jra	00110$
      0095D7                        842 00108$:
                                    843 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
      0095D7 A4 7F            [ 1]  844 	and	a, #0x7f
      0095D9 C7 52 49         [ 1]  845 	ld	0x5249, a
      0095DC                        846 00110$:
                                    847 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 376: }
      0095DC 1E 02            [ 2]  848 	ldw	x, (2, sp)
      0095DE 5B 05            [ 2]  849 	addw	sp, #5
      0095E0 FC               [ 2]  850 	jp	(x)
                                    851 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
                                    852 ;	-----------------------------------------
                                    853 ;	 function UART2_LINCmd
                                    854 ;	-----------------------------------------
      0095E1                        855 _UART2_LINCmd:
      0095E1 88               [ 1]  856 	push	a
                                    857 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 386: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0095E2 6B 01            [ 1]  858 	ld	(0x01, sp), a
      0095E4 27 11            [ 1]  859 	jreq	00107$
      0095E6 7B 01            [ 1]  860 	ld	a, (0x01, sp)
      0095E8 4A               [ 1]  861 	dec	a
      0095E9 27 0C            [ 1]  862 	jreq	00107$
      0095EB 4B 82            [ 1]  863 	push	#0x82
      0095ED 4B 01            [ 1]  864 	push	#0x01
      0095EF 5F               [ 1]  865 	clrw	x
      0095F0 89               [ 2]  866 	pushw	x
      0095F1 AE 81 D7         [ 2]  867 	ldw	x, #(___str_0+0)
      0095F4 CD AB 2D         [ 4]  868 	call	_assert_failed
      0095F7                        869 00107$:
                                    870 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      0095F7 C6 52 46         [ 1]  871 	ld	a, 0x5246
                                    872 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 388: if (NewState != DISABLE)
      0095FA 0D 01            [ 1]  873 	tnz	(0x01, sp)
      0095FC 27 07            [ 1]  874 	jreq	00102$
                                    875 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      0095FE AA 40            [ 1]  876 	or	a, #0x40
      009600 C7 52 46         [ 1]  877 	ld	0x5246, a
      009603 20 05            [ 2]  878 	jra	00104$
      009605                        879 00102$:
                                    880 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
      009605 A4 BF            [ 1]  881 	and	a, #0xbf
      009607 C7 52 46         [ 1]  882 	ld	0x5246, a
      00960A                        883 00104$:
                                    884 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 398: }
      00960A 84               [ 1]  885 	pop	a
      00960B 81               [ 4]  886 	ret
                                    887 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
                                    888 ;	-----------------------------------------
                                    889 ;	 function UART2_SmartCardCmd
                                    890 ;	-----------------------------------------
      00960C                        891 _UART2_SmartCardCmd:
      00960C 88               [ 1]  892 	push	a
                                    893 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 409: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00960D 6B 01            [ 1]  894 	ld	(0x01, sp), a
      00960F 27 11            [ 1]  895 	jreq	00107$
      009611 7B 01            [ 1]  896 	ld	a, (0x01, sp)
      009613 4A               [ 1]  897 	dec	a
      009614 27 0C            [ 1]  898 	jreq	00107$
      009616 4B 99            [ 1]  899 	push	#0x99
      009618 4B 01            [ 1]  900 	push	#0x01
      00961A 5F               [ 1]  901 	clrw	x
      00961B 89               [ 2]  902 	pushw	x
      00961C AE 81 D7         [ 2]  903 	ldw	x, #(___str_0+0)
      00961F CD AB 2D         [ 4]  904 	call	_assert_failed
      009622                        905 00107$:
                                    906 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      009622 C6 52 48         [ 1]  907 	ld	a, 0x5248
                                    908 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 411: if (NewState != DISABLE)
      009625 0D 01            [ 1]  909 	tnz	(0x01, sp)
      009627 27 07            [ 1]  910 	jreq	00102$
                                    911 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      009629 AA 20            [ 1]  912 	or	a, #0x20
      00962B C7 52 48         [ 1]  913 	ld	0x5248, a
      00962E 20 05            [ 2]  914 	jra	00104$
      009630                        915 00102$:
                                    916 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
      009630 A4 DF            [ 1]  917 	and	a, #0xdf
      009632 C7 52 48         [ 1]  918 	ld	0x5248, a
      009635                        919 00104$:
                                    920 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 421: }
      009635 84               [ 1]  921 	pop	a
      009636 81               [ 4]  922 	ret
                                    923 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
                                    924 ;	-----------------------------------------
                                    925 ;	 function UART2_SmartCardNACKCmd
                                    926 ;	-----------------------------------------
      009637                        927 _UART2_SmartCardNACKCmd:
      009637 88               [ 1]  928 	push	a
                                    929 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 432: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009638 6B 01            [ 1]  930 	ld	(0x01, sp), a
      00963A 27 11            [ 1]  931 	jreq	00107$
      00963C 7B 01            [ 1]  932 	ld	a, (0x01, sp)
      00963E 4A               [ 1]  933 	dec	a
      00963F 27 0C            [ 1]  934 	jreq	00107$
      009641 4B B0            [ 1]  935 	push	#0xb0
      009643 4B 01            [ 1]  936 	push	#0x01
      009645 5F               [ 1]  937 	clrw	x
      009646 89               [ 2]  938 	pushw	x
      009647 AE 81 D7         [ 2]  939 	ldw	x, #(___str_0+0)
      00964A CD AB 2D         [ 4]  940 	call	_assert_failed
      00964D                        941 00107$:
                                    942 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      00964D C6 52 48         [ 1]  943 	ld	a, 0x5248
                                    944 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 434: if (NewState != DISABLE)
      009650 0D 01            [ 1]  945 	tnz	(0x01, sp)
      009652 27 07            [ 1]  946 	jreq	00102$
                                    947 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      009654 AA 10            [ 1]  948 	or	a, #0x10
      009656 C7 52 48         [ 1]  949 	ld	0x5248, a
      009659 20 05            [ 2]  950 	jra	00104$
      00965B                        951 00102$:
                                    952 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
      00965B A4 EF            [ 1]  953 	and	a, #0xef
      00965D C7 52 48         [ 1]  954 	ld	0x5248, a
      009660                        955 00104$:
                                    956 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 444: }
      009660 84               [ 1]  957 	pop	a
      009661 81               [ 4]  958 	ret
                                    959 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
                                    960 ;	-----------------------------------------
                                    961 ;	 function UART2_WakeUpConfig
                                    962 ;	-----------------------------------------
      009662                        963 _UART2_WakeUpConfig:
      009662 88               [ 1]  964 	push	a
                                    965 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 454: assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
      009663 6B 01            [ 1]  966 	ld	(0x01, sp), a
      009665 27 12            [ 1]  967 	jreq	00104$
      009667 7B 01            [ 1]  968 	ld	a, (0x01, sp)
      009669 A1 08            [ 1]  969 	cp	a, #0x08
      00966B 27 0C            [ 1]  970 	jreq	00104$
      00966D 4B C6            [ 1]  971 	push	#0xc6
      00966F 4B 01            [ 1]  972 	push	#0x01
      009671 5F               [ 1]  973 	clrw	x
      009672 89               [ 2]  974 	pushw	x
      009673 AE 81 D7         [ 2]  975 	ldw	x, #(___str_0+0)
      009676 CD AB 2D         [ 4]  976 	call	_assert_failed
      009679                        977 00104$:
                                    978 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
      009679 72 17 52 44      [ 1]  979 	bres	0x5244, #3
                                    980 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
      00967D C6 52 44         [ 1]  981 	ld	a, 0x5244
      009680 1A 01            [ 1]  982 	or	a, (0x01, sp)
      009682 C7 52 44         [ 1]  983 	ld	0x5244, a
                                    984 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 458: }
      009685 84               [ 1]  985 	pop	a
      009686 81               [ 4]  986 	ret
                                    987 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
                                    988 ;	-----------------------------------------
                                    989 ;	 function UART2_ReceiverWakeUpCmd
                                    990 ;	-----------------------------------------
      009687                        991 _UART2_ReceiverWakeUpCmd:
      009687 88               [ 1]  992 	push	a
                                    993 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 468: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009688 6B 01            [ 1]  994 	ld	(0x01, sp), a
      00968A 27 11            [ 1]  995 	jreq	00107$
      00968C 7B 01            [ 1]  996 	ld	a, (0x01, sp)
      00968E 4A               [ 1]  997 	dec	a
      00968F 27 0C            [ 1]  998 	jreq	00107$
      009691 4B D4            [ 1]  999 	push	#0xd4
      009693 4B 01            [ 1] 1000 	push	#0x01
      009695 5F               [ 1] 1001 	clrw	x
      009696 89               [ 2] 1002 	pushw	x
      009697 AE 81 D7         [ 2] 1003 	ldw	x, #(___str_0+0)
      00969A CD AB 2D         [ 4] 1004 	call	_assert_failed
      00969D                       1005 00107$:
                                   1006 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      00969D C6 52 45         [ 1] 1007 	ld	a, 0x5245
                                   1008 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 470: if (NewState != DISABLE)
      0096A0 0D 01            [ 1] 1009 	tnz	(0x01, sp)
      0096A2 27 07            [ 1] 1010 	jreq	00102$
                                   1011 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      0096A4 AA 02            [ 1] 1012 	or	a, #0x02
      0096A6 C7 52 45         [ 1] 1013 	ld	0x5245, a
      0096A9 20 05            [ 2] 1014 	jra	00104$
      0096AB                       1015 00102$:
                                   1016 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
      0096AB A4 FD            [ 1] 1017 	and	a, #0xfd
      0096AD C7 52 45         [ 1] 1018 	ld	0x5245, a
      0096B0                       1019 00104$:
                                   1020 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 480: }
      0096B0 84               [ 1] 1021 	pop	a
      0096B1 81               [ 4] 1022 	ret
                                   1023 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
                                   1024 ;	-----------------------------------------
                                   1025 ;	 function UART2_ReceiveData8
                                   1026 ;	-----------------------------------------
      0096B2                       1027 _UART2_ReceiveData8:
                                   1028 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
      0096B2 C6 52 41         [ 1] 1029 	ld	a, 0x5241
                                   1030 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 490: }
      0096B5 81               [ 4] 1031 	ret
                                   1032 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
                                   1033 ;	-----------------------------------------
                                   1034 ;	 function UART2_ReceiveData9
                                   1035 ;	-----------------------------------------
      0096B6                       1036 _UART2_ReceiveData9:
      0096B6 89               [ 2] 1037 	pushw	x
                                   1038 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
      0096B7 C6 52 44         [ 1] 1039 	ld	a, 0x5244
      0096BA A4 80            [ 1] 1040 	and	a, #0x80
      0096BC 97               [ 1] 1041 	ld	xl, a
      0096BD 4F               [ 1] 1042 	clr	a
      0096BE 95               [ 1] 1043 	ld	xh, a
      0096BF 58               [ 2] 1044 	sllw	x
      0096C0 1F 01            [ 2] 1045 	ldw	(0x01, sp), x
                                   1046 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
      0096C2 C6 52 41         [ 1] 1047 	ld	a, 0x5241
      0096C5 5F               [ 1] 1048 	clrw	x
      0096C6 1A 02            [ 1] 1049 	or	a, (0x02, sp)
      0096C8 02               [ 1] 1050 	rlwa	x
      0096C9 1A 01            [ 1] 1051 	or	a, (0x01, sp)
      0096CB A4 01            [ 1] 1052 	and	a, #0x01
      0096CD 95               [ 1] 1053 	ld	xh, a
                                   1054 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 504: }
      0096CE 5B 02            [ 2] 1055 	addw	sp, #2
      0096D0 81               [ 4] 1056 	ret
                                   1057 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
                                   1058 ;	-----------------------------------------
                                   1059 ;	 function UART2_SendData8
                                   1060 ;	-----------------------------------------
      0096D1                       1061 _UART2_SendData8:
                                   1062 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 514: UART2->DR = Data;
      0096D1 C7 52 41         [ 1] 1063 	ld	0x5241, a
                                   1064 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 515: }
      0096D4 81               [ 4] 1065 	ret
                                   1066 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
                                   1067 ;	-----------------------------------------
                                   1068 ;	 function UART2_SendData9
                                   1069 ;	-----------------------------------------
      0096D5                       1070 _UART2_SendData9:
      0096D5 88               [ 1] 1071 	push	a
      0096D6 51               [ 1] 1072 	exgw	x, y
                                   1073 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
      0096D7 72 1D 52 44      [ 1] 1074 	bres	0x5244, #6
                                   1075 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
      0096DB C6 52 44         [ 1] 1076 	ld	a, 0x5244
      0096DE 6B 01            [ 1] 1077 	ld	(0x01, sp), a
      0096E0 93               [ 1] 1078 	ldw	x, y
      0096E1 54               [ 2] 1079 	srlw	x
      0096E2 54               [ 2] 1080 	srlw	x
      0096E3 9F               [ 1] 1081 	ld	a, xl
      0096E4 A4 40            [ 1] 1082 	and	a, #0x40
      0096E6 1A 01            [ 1] 1083 	or	a, (0x01, sp)
      0096E8 C7 52 44         [ 1] 1084 	ld	0x5244, a
                                   1085 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
      0096EB 90 9F            [ 1] 1086 	ld	a, yl
      0096ED C7 52 41         [ 1] 1087 	ld	0x5241, a
                                   1088 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 532: }
      0096F0 84               [ 1] 1089 	pop	a
      0096F1 81               [ 4] 1090 	ret
                                   1091 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 539: void UART2_SendBreak(void)
                                   1092 ;	-----------------------------------------
                                   1093 ;	 function UART2_SendBreak
                                   1094 ;	-----------------------------------------
      0096F2                       1095 _UART2_SendBreak:
                                   1096 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
      0096F2 72 10 52 45      [ 1] 1097 	bset	0x5245, #0
                                   1098 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 542: }
      0096F6 81               [ 4] 1099 	ret
                                   1100 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
                                   1101 ;	-----------------------------------------
                                   1102 ;	 function UART2_SetAddress
                                   1103 ;	-----------------------------------------
      0096F7                       1104 _UART2_SetAddress:
      0096F7 88               [ 1] 1105 	push	a
                                   1106 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 552: assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
      0096F8 6B 01            [ 1] 1107 	ld	(0x01, sp), a
      0096FA A1 10            [ 1] 1108 	cp	a, #0x10
      0096FC 25 0C            [ 1] 1109 	jrc	00104$
      0096FE 4B 28            [ 1] 1110 	push	#0x28
      009700 4B 02            [ 1] 1111 	push	#0x02
      009702 5F               [ 1] 1112 	clrw	x
      009703 89               [ 2] 1113 	pushw	x
      009704 AE 81 D7         [ 2] 1114 	ldw	x, #(___str_0+0)
      009707 CD AB 2D         [ 4] 1115 	call	_assert_failed
      00970A                       1116 00104$:
                                   1117 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
      00970A C6 52 47         [ 1] 1118 	ld	a, 0x5247
      00970D A4 F0            [ 1] 1119 	and	a, #0xf0
      00970F C7 52 47         [ 1] 1120 	ld	0x5247, a
                                   1121 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
      009712 C6 52 47         [ 1] 1122 	ld	a, 0x5247
      009715 1A 01            [ 1] 1123 	or	a, (0x01, sp)
      009717 C7 52 47         [ 1] 1124 	ld	0x5247, a
                                   1125 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 558: }
      00971A 84               [ 1] 1126 	pop	a
      00971B 81               [ 4] 1127 	ret
                                   1128 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
                                   1129 ;	-----------------------------------------
                                   1130 ;	 function UART2_SetGuardTime
                                   1131 ;	-----------------------------------------
      00971C                       1132 _UART2_SetGuardTime:
                                   1133 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
      00971C C7 52 4A         [ 1] 1134 	ld	0x524a, a
                                   1135 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 570: }
      00971F 81               [ 4] 1136 	ret
                                   1137 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
                                   1138 ;	-----------------------------------------
                                   1139 ;	 function UART2_SetPrescaler
                                   1140 ;	-----------------------------------------
      009720                       1141 _UART2_SetPrescaler:
                                   1142 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
      009720 C7 52 4B         [ 1] 1143 	ld	0x524b, a
                                   1144 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 598: }
      009723 81               [ 4] 1145 	ret
                                   1146 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
                                   1147 ;	-----------------------------------------
                                   1148 ;	 function UART2_GetFlagStatus
                                   1149 ;	-----------------------------------------
      009724                       1150 _UART2_GetFlagStatus:
      009724 52 04            [ 2] 1151 	sub	sp, #4
                                   1152 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 611: assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
      009726 90 93            [ 1] 1153 	ldw	y, x
      009728 A3 01 01         [ 2] 1154 	cpw	x, #0x0101
      00972B 26 05            [ 1] 1155 	jrne	00256$
      00972D A6 01            [ 1] 1156 	ld	a, #0x01
      00972F 6B 01            [ 1] 1157 	ld	(0x01, sp), a
      009731 C5                    1158 	.byte 0xc5
      009732                       1159 00256$:
      009732 0F 01            [ 1] 1160 	clr	(0x01, sp)
      009734                       1161 00257$:
      009734 A3 03 01         [ 2] 1162 	cpw	x, #0x0301
      009737 26 05            [ 1] 1163 	jrne	00259$
      009739 A6 01            [ 1] 1164 	ld	a, #0x01
      00973B 6B 02            [ 1] 1165 	ld	(0x02, sp), a
      00973D C5                    1166 	.byte 0xc5
      00973E                       1167 00259$:
      00973E 0F 02            [ 1] 1168 	clr	(0x02, sp)
      009740                       1169 00260$:
      009740 A3 03 02         [ 2] 1170 	cpw	x, #0x0302
      009743 26 05            [ 1] 1171 	jrne	00262$
      009745 A6 01            [ 1] 1172 	ld	a, #0x01
      009747 6B 03            [ 1] 1173 	ld	(0x03, sp), a
      009749 C5                    1174 	.byte 0xc5
      00974A                       1175 00262$:
      00974A 0F 03            [ 1] 1176 	clr	(0x03, sp)
      00974C                       1177 00263$:
      00974C A3 02 10         [ 2] 1178 	cpw	x, #0x0210
      00974F 26 03            [ 1] 1179 	jrne	00265$
      009751 A6 01            [ 1] 1180 	ld	a, #0x01
      009753 21                    1181 	.byte 0x21
      009754                       1182 00265$:
      009754 4F               [ 1] 1183 	clr	a
      009755                       1184 00266$:
      009755 A3 00 80         [ 2] 1185 	cpw	x, #0x0080
      009758 27 42            [ 1] 1186 	jreq	00126$
      00975A A3 00 40         [ 2] 1187 	cpw	x, #0x0040
      00975D 27 3D            [ 1] 1188 	jreq	00126$
      00975F A3 00 20         [ 2] 1189 	cpw	x, #0x0020
      009762 27 38            [ 1] 1190 	jreq	00126$
      009764 A3 00 10         [ 2] 1191 	cpw	x, #0x0010
      009767 27 33            [ 1] 1192 	jreq	00126$
      009769 A3 00 08         [ 2] 1193 	cpw	x, #0x0008
      00976C 27 2E            [ 1] 1194 	jreq	00126$
      00976E A3 00 04         [ 2] 1195 	cpw	x, #0x0004
      009771 27 29            [ 1] 1196 	jreq	00126$
      009773 A3 00 02         [ 2] 1197 	cpw	x, #0x0002
      009776 27 24            [ 1] 1198 	jreq	00126$
      009778 5A               [ 2] 1199 	decw	x
      009779 27 21            [ 1] 1200 	jreq	00126$
      00977B 0D 01            [ 1] 1201 	tnz	(0x01, sp)
      00977D 26 1D            [ 1] 1202 	jrne	00126$
      00977F 0D 02            [ 1] 1203 	tnz	(0x02, sp)
      009781 26 19            [ 1] 1204 	jrne	00126$
      009783 0D 03            [ 1] 1205 	tnz	(0x03, sp)
      009785 26 15            [ 1] 1206 	jrne	00126$
      009787 4D               [ 1] 1207 	tnz	a
      009788 26 12            [ 1] 1208 	jrne	00126$
      00978A 88               [ 1] 1209 	push	a
      00978B 90 89            [ 2] 1210 	pushw	y
      00978D 4B 63            [ 1] 1211 	push	#0x63
      00978F 4B 02            [ 1] 1212 	push	#0x02
      009791 5F               [ 1] 1213 	clrw	x
      009792 89               [ 2] 1214 	pushw	x
      009793 AE 81 D7         [ 2] 1215 	ldw	x, #(___str_0+0)
      009796 CD AB 2D         [ 4] 1216 	call	_assert_failed
      009799 90 85            [ 2] 1217 	popw	y
      00979B 84               [ 1] 1218 	pop	a
      00979C                       1219 00126$:
                                   1220 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00979C 61               [ 1] 1221 	exg	a, yl
      00979D 6B 04            [ 1] 1222 	ld	(0x04, sp), a
      00979F 61               [ 1] 1223 	exg	a, yl
                                   1224 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
      0097A0 4D               [ 1] 1225 	tnz	a
      0097A1 27 0E            [ 1] 1226 	jreq	00121$
                                   1227 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      0097A3 C6 52 47         [ 1] 1228 	ld	a, 0x5247
      0097A6 14 04            [ 1] 1229 	and	a, (0x04, sp)
      0097A8 27 04            [ 1] 1230 	jreq	00102$
                                   1231 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 619: status = SET;
      0097AA A6 01            [ 1] 1232 	ld	a, #0x01
      0097AC 20 36            [ 2] 1233 	jra	00122$
      0097AE                       1234 00102$:
                                   1235 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 624: status = RESET;
      0097AE 4F               [ 1] 1236 	clr	a
      0097AF 20 33            [ 2] 1237 	jra	00122$
      0097B1                       1238 00121$:
                                   1239 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
      0097B1 7B 01            [ 1] 1240 	ld	a, (0x01, sp)
      0097B3 27 0E            [ 1] 1241 	jreq	00118$
                                   1242 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      0097B5 C6 52 45         [ 1] 1243 	ld	a, 0x5245
      0097B8 14 04            [ 1] 1244 	and	a, (0x04, sp)
      0097BA 27 04            [ 1] 1245 	jreq	00105$
                                   1246 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 632: status = SET;
      0097BC A6 01            [ 1] 1247 	ld	a, #0x01
      0097BE 20 24            [ 2] 1248 	jra	00122$
      0097C0                       1249 00105$:
                                   1250 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 637: status = RESET;
      0097C0 4F               [ 1] 1251 	clr	a
      0097C1 20 21            [ 2] 1252 	jra	00122$
      0097C3                       1253 00118$:
                                   1254 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
      0097C3 7B 03            [ 1] 1255 	ld	a, (0x03, sp)
      0097C5 26 04            [ 1] 1256 	jrne	00113$
      0097C7 7B 02            [ 1] 1257 	ld	a, (0x02, sp)
      0097C9 27 0E            [ 1] 1258 	jreq	00114$
      0097CB                       1259 00113$:
                                   1260 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      0097CB C6 52 49         [ 1] 1261 	ld	a, 0x5249
      0097CE 14 04            [ 1] 1262 	and	a, (0x04, sp)
      0097D0 27 04            [ 1] 1263 	jreq	00108$
                                   1264 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 645: status = SET;
      0097D2 A6 01            [ 1] 1265 	ld	a, #0x01
      0097D4 20 0E            [ 2] 1266 	jra	00122$
      0097D6                       1267 00108$:
                                   1268 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 650: status = RESET;
      0097D6 4F               [ 1] 1269 	clr	a
      0097D7 20 0B            [ 2] 1270 	jra	00122$
      0097D9                       1271 00114$:
                                   1272 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      0097D9 C6 52 40         [ 1] 1273 	ld	a, 0x5240
      0097DC 14 04            [ 1] 1274 	and	a, (0x04, sp)
      0097DE 27 03            [ 1] 1275 	jreq	00111$
                                   1276 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 658: status = SET;
      0097E0 A6 01            [ 1] 1277 	ld	a, #0x01
                                   1278 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 663: status = RESET;
      0097E2 21                    1279 	.byte 0x21
      0097E3                       1280 00111$:
      0097E3 4F               [ 1] 1281 	clr	a
      0097E4                       1282 00122$:
                                   1283 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 668: return  status;
                                   1284 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 669: }
      0097E4 5B 04            [ 2] 1285 	addw	sp, #4
      0097E6 81               [ 4] 1286 	ret
                                   1287 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
                                   1288 ;	-----------------------------------------
                                   1289 ;	 function UART2_ClearFlag
                                   1290 ;	-----------------------------------------
      0097E7                       1291 _UART2_ClearFlag:
      0097E7 52 03            [ 2] 1292 	sub	sp, #3
                                   1293 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 701: assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
      0097E9 A3 00 20         [ 2] 1294 	cpw	x, #0x0020
      0097EC 26 05            [ 1] 1295 	jrne	00159$
      0097EE A6 01            [ 1] 1296 	ld	a, #0x01
      0097F0 6B 01            [ 1] 1297 	ld	(0x01, sp), a
      0097F2 C5                    1298 	.byte 0xc5
      0097F3                       1299 00159$:
      0097F3 0F 01            [ 1] 1300 	clr	(0x01, sp)
      0097F5                       1301 00160$:
      0097F5 A3 03 02         [ 2] 1302 	cpw	x, #0x0302
      0097F8 26 05            [ 1] 1303 	jrne	00162$
      0097FA A6 01            [ 1] 1304 	ld	a, #0x01
      0097FC 6B 02            [ 1] 1305 	ld	(0x02, sp), a
      0097FE C5                    1306 	.byte 0xc5
      0097FF                       1307 00162$:
      0097FF 0F 02            [ 1] 1308 	clr	(0x02, sp)
      009801                       1309 00163$:
      009801 A3 02 10         [ 2] 1310 	cpw	x, #0x0210
      009804 26 05            [ 1] 1311 	jrne	00165$
      009806 A6 01            [ 1] 1312 	ld	a, #0x01
      009808 6B 03            [ 1] 1313 	ld	(0x03, sp), a
      00980A C5                    1314 	.byte 0xc5
      00980B                       1315 00165$:
      00980B 0F 03            [ 1] 1316 	clr	(0x03, sp)
      00980D                       1317 00166$:
      00980D 0D 01            [ 1] 1318 	tnz	(0x01, sp)
      00980F 26 19            [ 1] 1319 	jrne	00113$
      009811 0D 02            [ 1] 1320 	tnz	(0x02, sp)
      009813 26 15            [ 1] 1321 	jrne	00113$
      009815 A3 03 01         [ 2] 1322 	cpw	x, #0x0301
      009818 27 10            [ 1] 1323 	jreq	00113$
      00981A 0D 03            [ 1] 1324 	tnz	(0x03, sp)
      00981C 26 0C            [ 1] 1325 	jrne	00113$
      00981E 4B BD            [ 1] 1326 	push	#0xbd
      009820 4B 02            [ 1] 1327 	push	#0x02
      009822 5F               [ 1] 1328 	clrw	x
      009823 89               [ 2] 1329 	pushw	x
      009824 AE 81 D7         [ 2] 1330 	ldw	x, #(___str_0+0)
      009827 CD AB 2D         [ 4] 1331 	call	_assert_failed
      00982A                       1332 00113$:
                                   1333 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
      00982A 7B 01            [ 1] 1334 	ld	a, (0x01, sp)
      00982C 27 06            [ 1] 1335 	jreq	00108$
                                   1336 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      00982E 35 DF 52 40      [ 1] 1337 	mov	0x5240+0, #0xdf
      009832 20 20            [ 2] 1338 	jra	00110$
      009834                       1339 00108$:
                                   1340 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
      009834 7B 03            [ 1] 1341 	ld	a, (0x03, sp)
      009836 27 06            [ 1] 1342 	jreq	00105$
                                   1343 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
      009838 72 19 52 47      [ 1] 1344 	bres	0x5247, #4
      00983C 20 16            [ 2] 1345 	jra	00110$
      00983E                       1346 00105$:
                                   1347 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      00983E C6 52 49         [ 1] 1348 	ld	a, 0x5249
      009841 97               [ 1] 1349 	ld	xl, a
                                   1350 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
      009842 7B 02            [ 1] 1351 	ld	a, (0x02, sp)
      009844 27 08            [ 1] 1352 	jreq	00102$
                                   1353 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      009846 9F               [ 1] 1354 	ld	a, xl
      009847 A4 FD            [ 1] 1355 	and	a, #0xfd
      009849 C7 52 49         [ 1] 1356 	ld	0x5249, a
      00984C 20 06            [ 2] 1357 	jra	00110$
      00984E                       1358 00102$:
                                   1359 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
      00984E 9F               [ 1] 1360 	ld	a, xl
      00984F A4 FE            [ 1] 1361 	and	a, #0xfe
      009851 C7 52 49         [ 1] 1362 	ld	0x5249, a
      009854                       1363 00110$:
                                   1364 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 723: }
      009854 5B 03            [ 2] 1365 	addw	sp, #3
      009856 81               [ 4] 1366 	ret
                                   1367 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
                                   1368 ;	-----------------------------------------
                                   1369 ;	 function UART2_GetITStatus
                                   1370 ;	-----------------------------------------
      009857                       1371 _UART2_GetITStatus:
      009857 52 05            [ 2] 1372 	sub	sp, #5
                                   1373 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 747: assert_param(IS_UART2_GET_IT_OK(UART2_IT));
      009859 90 93            [ 1] 1374 	ldw	y, x
      00985B A3 03 46         [ 2] 1375 	cpw	x, #0x0346
      00985E 26 05            [ 1] 1376 	jrne	00247$
      009860 A6 01            [ 1] 1377 	ld	a, #0x01
      009862 6B 01            [ 1] 1378 	ld	(0x01, sp), a
      009864 C5                    1379 	.byte 0xc5
      009865                       1380 00247$:
      009865 0F 01            [ 1] 1381 	clr	(0x01, sp)
      009867                       1382 00248$:
      009867 A3 04 12         [ 2] 1383 	cpw	x, #0x0412
      00986A 26 05            [ 1] 1384 	jrne	00250$
      00986C A6 01            [ 1] 1385 	ld	a, #0x01
      00986E 6B 02            [ 1] 1386 	ld	(0x02, sp), a
      009870 C5                    1387 	.byte 0xc5
      009871                       1388 00250$:
      009871 0F 02            [ 1] 1389 	clr	(0x02, sp)
      009873                       1390 00251$:
      009873 A3 01 00         [ 2] 1391 	cpw	x, #0x0100
      009876 26 05            [ 1] 1392 	jrne	00253$
      009878 A6 01            [ 1] 1393 	ld	a, #0x01
      00987A 6B 03            [ 1] 1394 	ld	(0x03, sp), a
      00987C C5                    1395 	.byte 0xc5
      00987D                       1396 00253$:
      00987D 0F 03            [ 1] 1397 	clr	(0x03, sp)
      00987F                       1398 00254$:
      00987F A3 02 77         [ 2] 1399 	cpw	x, #0x0277
      009882 27 30            [ 1] 1400 	jreq	00129$
      009884 A3 02 66         [ 2] 1401 	cpw	x, #0x0266
      009887 27 2B            [ 1] 1402 	jreq	00129$
      009889 A3 02 55         [ 2] 1403 	cpw	x, #0x0255
      00988C 27 26            [ 1] 1404 	jreq	00129$
      00988E A3 02 44         [ 2] 1405 	cpw	x, #0x0244
      009891 27 21            [ 1] 1406 	jreq	00129$
      009893 A3 02 35         [ 2] 1407 	cpw	x, #0x0235
      009896 27 1C            [ 1] 1408 	jreq	00129$
      009898 0D 01            [ 1] 1409 	tnz	(0x01, sp)
      00989A 26 18            [ 1] 1410 	jrne	00129$
      00989C 0D 02            [ 1] 1411 	tnz	(0x02, sp)
      00989E 26 14            [ 1] 1412 	jrne	00129$
      0098A0 0D 03            [ 1] 1413 	tnz	(0x03, sp)
      0098A2 26 10            [ 1] 1414 	jrne	00129$
      0098A4 90 89            [ 2] 1415 	pushw	y
      0098A6 4B EB            [ 1] 1416 	push	#0xeb
      0098A8 4B 02            [ 1] 1417 	push	#0x02
      0098AA 5F               [ 1] 1418 	clrw	x
      0098AB 89               [ 2] 1419 	pushw	x
      0098AC AE 81 D7         [ 2] 1420 	ldw	x, #(___str_0+0)
      0098AF CD AB 2D         [ 4] 1421 	call	_assert_failed
      0098B2 90 85            [ 2] 1422 	popw	y
      0098B4                       1423 00129$:
                                   1424 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      0098B4 93               [ 1] 1425 	ldw	x, y
      0098B5 9F               [ 1] 1426 	ld	a, xl
      0098B6 A4 0F            [ 1] 1427 	and	a, #0x0f
      0098B8 88               [ 1] 1428 	push	a
      0098B9 A6 01            [ 1] 1429 	ld	a, #0x01
      0098BB 6B 05            [ 1] 1430 	ld	(0x05, sp), a
      0098BD 84               [ 1] 1431 	pop	a
      0098BE 4D               [ 1] 1432 	tnz	a
      0098BF 27 05            [ 1] 1433 	jreq	00274$
      0098C1                       1434 00273$:
      0098C1 08 04            [ 1] 1435 	sll	(0x04, sp)
      0098C3 4A               [ 1] 1436 	dec	a
      0098C4 26 FB            [ 1] 1437 	jrne	00273$
      0098C6                       1438 00274$:
                                   1439 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
      0098C6 9F               [ 1] 1440 	ld	a, xl
      0098C7 4E               [ 1] 1441 	swap	a
      0098C8 A4 0F            [ 1] 1442 	and	a, #0x0f
                                   1443 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      0098CA 88               [ 1] 1444 	push	a
      0098CB A6 01            [ 1] 1445 	ld	a, #0x01
      0098CD 6B 06            [ 1] 1446 	ld	(0x06, sp), a
      0098CF 84               [ 1] 1447 	pop	a
      0098D0 4D               [ 1] 1448 	tnz	a
      0098D1 27 05            [ 1] 1449 	jreq	00276$
      0098D3                       1450 00275$:
      0098D3 08 05            [ 1] 1451 	sll	(0x05, sp)
      0098D5 4A               [ 1] 1452 	dec	a
      0098D6 26 FB            [ 1] 1453 	jrne	00275$
      0098D8                       1454 00276$:
                                   1455 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
      0098D8 7B 03            [ 1] 1456 	ld	a, (0x03, sp)
      0098DA 27 18            [ 1] 1457 	jreq	00124$
                                   1458 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
      0098DC C6 52 44         [ 1] 1459 	ld	a, 0x5244
      0098DF 14 05            [ 1] 1460 	and	a, (0x05, sp)
      0098E1 97               [ 1] 1461 	ld	xl, a
                                   1462 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      0098E2 C6 52 40         [ 1] 1463 	ld	a, 0x5240
      0098E5 14 04            [ 1] 1464 	and	a, (0x04, sp)
      0098E7 27 08            [ 1] 1465 	jreq	00102$
      0098E9 9F               [ 1] 1466 	ld	a, xl
      0098EA 4D               [ 1] 1467 	tnz	a
      0098EB 27 04            [ 1] 1468 	jreq	00102$
                                   1469 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 766: pendingbitstatus = SET;
      0098ED A6 01            [ 1] 1470 	ld	a, #0x01
      0098EF 20 50            [ 2] 1471 	jra	00125$
      0098F1                       1472 00102$:
                                   1473 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 771: pendingbitstatus = RESET;
      0098F1 4F               [ 1] 1474 	clr	a
      0098F2 20 4D            [ 2] 1475 	jra	00125$
      0098F4                       1476 00124$:
                                   1477 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
      0098F4 7B 01            [ 1] 1478 	ld	a, (0x01, sp)
      0098F6 27 18            [ 1] 1479 	jreq	00121$
                                   1480 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
      0098F8 C6 52 47         [ 1] 1481 	ld	a, 0x5247
      0098FB 14 05            [ 1] 1482 	and	a, (0x05, sp)
      0098FD 97               [ 1] 1483 	ld	xl, a
                                   1484 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      0098FE C6 52 47         [ 1] 1485 	ld	a, 0x5247
      009901 14 04            [ 1] 1486 	and	a, (0x04, sp)
      009903 27 08            [ 1] 1487 	jreq	00106$
      009905 9F               [ 1] 1488 	ld	a, xl
      009906 4D               [ 1] 1489 	tnz	a
      009907 27 04            [ 1] 1490 	jreq	00106$
                                   1491 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 782: pendingbitstatus = SET;
      009909 A6 01            [ 1] 1492 	ld	a, #0x01
      00990B 20 34            [ 2] 1493 	jra	00125$
      00990D                       1494 00106$:
                                   1495 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 787: pendingbitstatus = RESET;
      00990D 4F               [ 1] 1496 	clr	a
      00990E 20 31            [ 2] 1497 	jra	00125$
      009910                       1498 00121$:
                                   1499 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
      009910 7B 02            [ 1] 1500 	ld	a, (0x02, sp)
      009912 27 18            [ 1] 1501 	jreq	00118$
                                   1502 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
      009914 C6 52 49         [ 1] 1503 	ld	a, 0x5249
      009917 14 05            [ 1] 1504 	and	a, (0x05, sp)
      009919 97               [ 1] 1505 	ld	xl, a
                                   1506 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
      00991A C6 52 49         [ 1] 1507 	ld	a, 0x5249
      00991D 14 04            [ 1] 1508 	and	a, (0x04, sp)
      00991F 27 08            [ 1] 1509 	jreq	00110$
      009921 9F               [ 1] 1510 	ld	a, xl
      009922 4D               [ 1] 1511 	tnz	a
      009923 27 04            [ 1] 1512 	jreq	00110$
                                   1513 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 798: pendingbitstatus = SET;
      009925 A6 01            [ 1] 1514 	ld	a, #0x01
      009927 20 18            [ 2] 1515 	jra	00125$
      009929                       1516 00110$:
                                   1517 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 803: pendingbitstatus = RESET;
      009929 4F               [ 1] 1518 	clr	a
      00992A 20 15            [ 2] 1519 	jra	00125$
      00992C                       1520 00118$:
                                   1521 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
      00992C C6 52 45         [ 1] 1522 	ld	a, 0x5245
      00992F 14 05            [ 1] 1523 	and	a, (0x05, sp)
      009931 97               [ 1] 1524 	ld	xl, a
                                   1525 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      009932 C6 52 40         [ 1] 1526 	ld	a, 0x5240
      009935 14 04            [ 1] 1527 	and	a, (0x04, sp)
      009937 27 07            [ 1] 1528 	jreq	00114$
      009939 9F               [ 1] 1529 	ld	a, xl
      00993A 4D               [ 1] 1530 	tnz	a
      00993B 27 03            [ 1] 1531 	jreq	00114$
                                   1532 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 814: pendingbitstatus = SET;
      00993D A6 01            [ 1] 1533 	ld	a, #0x01
                                   1534 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 819: pendingbitstatus = RESET;
      00993F 21                    1535 	.byte 0x21
      009940                       1536 00114$:
      009940 4F               [ 1] 1537 	clr	a
      009941                       1538 00125$:
                                   1539 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 823: return  pendingbitstatus;
                                   1540 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 824: }
      009941 5B 05            [ 2] 1541 	addw	sp, #5
      009943 81               [ 4] 1542 	ret
                                   1543 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
                                   1544 ;	-----------------------------------------
                                   1545 ;	 function UART2_ClearITPendingBit
                                   1546 ;	-----------------------------------------
      009944                       1547 _UART2_ClearITPendingBit:
      009944 88               [ 1] 1548 	push	a
                                   1549 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 854: assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
      009945 A3 02 55         [ 2] 1550 	cpw	x, #0x0255
      009948 26 03            [ 1] 1551 	jrne	00143$
      00994A A6 01            [ 1] 1552 	ld	a, #0x01
      00994C 21                    1553 	.byte 0x21
      00994D                       1554 00143$:
      00994D 4F               [ 1] 1555 	clr	a
      00994E                       1556 00144$:
      00994E A3 03 46         [ 2] 1557 	cpw	x, #0x0346
      009951 26 07            [ 1] 1558 	jrne	00146$
      009953 88               [ 1] 1559 	push	a
      009954 A6 01            [ 1] 1560 	ld	a, #0x01
      009956 6B 02            [ 1] 1561 	ld	(0x02, sp), a
      009958 84               [ 1] 1562 	pop	a
      009959 C5                    1563 	.byte 0xc5
      00995A                       1564 00146$:
      00995A 0F 01            [ 1] 1565 	clr	(0x01, sp)
      00995C                       1566 00147$:
      00995C 4D               [ 1] 1567 	tnz	a
      00995D 26 17            [ 1] 1568 	jrne	00110$
      00995F A3 04 12         [ 2] 1569 	cpw	x, #0x0412
      009962 27 12            [ 1] 1570 	jreq	00110$
      009964 0D 01            [ 1] 1571 	tnz	(0x01, sp)
      009966 26 0E            [ 1] 1572 	jrne	00110$
      009968 88               [ 1] 1573 	push	a
      009969 4B 56            [ 1] 1574 	push	#0x56
      00996B 4B 03            [ 1] 1575 	push	#0x03
      00996D 5F               [ 1] 1576 	clrw	x
      00996E 89               [ 2] 1577 	pushw	x
      00996F AE 81 D7         [ 2] 1578 	ldw	x, #(___str_0+0)
      009972 CD AB 2D         [ 4] 1579 	call	_assert_failed
      009975 84               [ 1] 1580 	pop	a
      009976                       1581 00110$:
                                   1582 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
      009976 4D               [ 1] 1583 	tnz	a
      009977 27 06            [ 1] 1584 	jreq	00105$
                                   1585 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      009979 35 DF 52 40      [ 1] 1586 	mov	0x5240+0, #0xdf
      00997D 20 0E            [ 2] 1587 	jra	00107$
      00997F                       1588 00105$:
                                   1589 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
      00997F 7B 01            [ 1] 1590 	ld	a, (0x01, sp)
      009981 27 06            [ 1] 1591 	jreq	00102$
                                   1592 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
      009983 72 19 52 47      [ 1] 1593 	bres	0x5247, #4
      009987 20 04            [ 2] 1594 	jra	00107$
      009989                       1595 00102$:
                                   1596 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      009989 72 13 52 49      [ 1] 1597 	bres	0x5249, #1
      00998D                       1598 00107$:
                                   1599 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 871: }
      00998D 84               [ 1] 1600 	pop	a
      00998E 81               [ 4] 1601 	ret
                                   1602 	.area CODE
                                   1603 	.area CONST
                                   1604 	.area CONST
      0081D7                       1605 ___str_0:
      0081D7 43 3A                 1606 	.ascii "C:"
      0081D9 5C                    1607 	.db 0x5c
      0081DA 55 73 65 72 73        1608 	.ascii "Users"
      0081DF 5C                    1609 	.db 0x5c
      0081E0 64 69 73 61 6E        1610 	.ascii "disan"
      0081E5 5C                    1611 	.db 0x5c
      0081E6 2E 70 6C 61 74 66 6F  1612 	.ascii ".platformio"
             72 6D 69 6F
      0081F1 5C                    1613 	.db 0x5c
      0081F2 70 61 63 6B 61 67 65  1614 	.ascii "packages"
             73
      0081FA 5C                    1615 	.db 0x5c
      0081FB 66 72 61 6D 65 77 6F  1616 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      00820E 5C                    1617 	.db 0x5c
      00820F 4C 69 62 72 61 72 69  1618 	.ascii "Libraries"
             65 73
      008218 5C                    1619 	.db 0x5c
      008219 53 54 4D 38 53 5F 53  1620 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      00822F 5C                    1621 	.db 0x5c
      008230 73 72 63              1622 	.ascii "src"
      008233 5C                    1623 	.db 0x5c
      008234 73 74 6D 38 73 5F 75  1624 	.ascii "stm8s_uart2.c"
             61 72 74 32 2E 63
      008241 00                    1625 	.db 0x00
                                   1626 	.area CODE
                                   1627 	.area INITIALIZER
                                   1628 	.area CABS (ABS)
