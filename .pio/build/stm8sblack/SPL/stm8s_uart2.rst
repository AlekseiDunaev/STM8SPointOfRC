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
      008CB9                         79 _UART2_DeInit:
                                     80 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 57: (void) UART2->SR;
      008CB9 C6 52 40         [ 1]   81 	ld	a, 0x5240
                                     82 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 58: (void)UART2->DR;
      008CBC C6 52 41         [ 1]   83 	ld	a, 0x5241
                                     84 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
      008CBF 35 00 52 43      [ 1]   85 	mov	0x5243+0, #0x00
                                     86 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
      008CC3 35 00 52 42      [ 1]   87 	mov	0x5242+0, #0x00
                                     88 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
      008CC7 35 00 52 44      [ 1]   89 	mov	0x5244+0, #0x00
                                     90 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
      008CCB 35 00 52 45      [ 1]   91 	mov	0x5245+0, #0x00
                                     92 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
      008CCF 35 00 52 46      [ 1]   93 	mov	0x5246+0, #0x00
                                     94 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
      008CD3 35 00 52 47      [ 1]   95 	mov	0x5247+0, #0x00
                                     96 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
      008CD7 35 00 52 48      [ 1]   97 	mov	0x5248+0, #0x00
                                     98 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
      008CDB 35 00 52 49      [ 1]   99 	mov	0x5249+0, #0x00
                                    100 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 69: }
      008CDF 81               [ 4]  101 	ret
                                    102 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
                                    103 ;	-----------------------------------------
                                    104 ;	 function UART2_Init
                                    105 ;	-----------------------------------------
      008CE0                        106 _UART2_Init:
      008CE0 52 10            [ 2]  107 	sub	sp, #16
                                    108 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 91: assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
      008CE2 AE 89 68         [ 2]  109 	ldw	x, #0x8968
      008CE5 13 15            [ 2]  110 	cpw	x, (0x15, sp)
      008CE7 A6 09            [ 1]  111 	ld	a, #0x09
      008CE9 12 14            [ 1]  112 	sbc	a, (0x14, sp)
      008CEB 4F               [ 1]  113 	clr	a
      008CEC 12 13            [ 1]  114 	sbc	a, (0x13, sp)
      008CEE 24 0C            [ 1]  115 	jrnc	00113$
      008CF0 4B 5B            [ 1]  116 	push	#0x5b
      008CF2 5F               [ 1]  117 	clrw	x
      008CF3 89               [ 2]  118 	pushw	x
      008CF4 4B 00            [ 1]  119 	push	#0x00
      008CF6 AE 81 D7         [ 2]  120 	ldw	x, #(___str_0+0)
      008CF9 CD AA 17         [ 4]  121 	call	_assert_failed
      008CFC                        122 00113$:
                                    123 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 92: assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
      008CFC 0D 17            [ 1]  124 	tnz	(0x17, sp)
      008CFE 27 12            [ 1]  125 	jreq	00115$
      008D00 7B 17            [ 1]  126 	ld	a, (0x17, sp)
      008D02 A1 10            [ 1]  127 	cp	a, #0x10
      008D04 27 0C            [ 1]  128 	jreq	00115$
      008D06 4B 5C            [ 1]  129 	push	#0x5c
      008D08 5F               [ 1]  130 	clrw	x
      008D09 89               [ 2]  131 	pushw	x
      008D0A 4B 00            [ 1]  132 	push	#0x00
      008D0C AE 81 D7         [ 2]  133 	ldw	x, #(___str_0+0)
      008D0F CD AA 17         [ 4]  134 	call	_assert_failed
      008D12                        135 00115$:
                                    136 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 93: assert_param(IS_UART2_STOPBITS_OK(StopBits));
      008D12 0D 18            [ 1]  137 	tnz	(0x18, sp)
      008D14 27 1E            [ 1]  138 	jreq	00120$
      008D16 7B 18            [ 1]  139 	ld	a, (0x18, sp)
      008D18 A1 10            [ 1]  140 	cp	a, #0x10
      008D1A 27 18            [ 1]  141 	jreq	00120$
      008D1C 7B 18            [ 1]  142 	ld	a, (0x18, sp)
      008D1E A1 20            [ 1]  143 	cp	a, #0x20
      008D20 27 12            [ 1]  144 	jreq	00120$
      008D22 7B 18            [ 1]  145 	ld	a, (0x18, sp)
      008D24 A1 30            [ 1]  146 	cp	a, #0x30
      008D26 27 0C            [ 1]  147 	jreq	00120$
      008D28 4B 5D            [ 1]  148 	push	#0x5d
      008D2A 5F               [ 1]  149 	clrw	x
      008D2B 89               [ 2]  150 	pushw	x
      008D2C 4B 00            [ 1]  151 	push	#0x00
      008D2E AE 81 D7         [ 2]  152 	ldw	x, #(___str_0+0)
      008D31 CD AA 17         [ 4]  153 	call	_assert_failed
      008D34                        154 00120$:
                                    155 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 94: assert_param(IS_UART2_PARITY_OK(Parity));
      008D34 0D 19            [ 1]  156 	tnz	(0x19, sp)
      008D36 27 18            [ 1]  157 	jreq	00131$
      008D38 7B 19            [ 1]  158 	ld	a, (0x19, sp)
      008D3A A1 04            [ 1]  159 	cp	a, #0x04
      008D3C 27 12            [ 1]  160 	jreq	00131$
      008D3E 7B 19            [ 1]  161 	ld	a, (0x19, sp)
      008D40 A1 06            [ 1]  162 	cp	a, #0x06
      008D42 27 0C            [ 1]  163 	jreq	00131$
      008D44 4B 5E            [ 1]  164 	push	#0x5e
      008D46 5F               [ 1]  165 	clrw	x
      008D47 89               [ 2]  166 	pushw	x
      008D48 4B 00            [ 1]  167 	push	#0x00
      008D4A AE 81 D7         [ 2]  168 	ldw	x, #(___str_0+0)
      008D4D CD AA 17         [ 4]  169 	call	_assert_failed
      008D50                        170 00131$:
                                    171 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 95: assert_param(IS_UART2_MODE_OK((uint8_t)Mode));
      008D50 7B 1B            [ 1]  172 	ld	a, (0x1b, sp)
      008D52 A1 08            [ 1]  173 	cp	a, #0x08
      008D54 27 3F            [ 1]  174 	jreq	00139$
      008D56 7B 1B            [ 1]  175 	ld	a, (0x1b, sp)
      008D58 A1 40            [ 1]  176 	cp	a, #0x40
      008D5A 27 39            [ 1]  177 	jreq	00139$
      008D5C 7B 1B            [ 1]  178 	ld	a, (0x1b, sp)
      008D5E A1 04            [ 1]  179 	cp	a, #0x04
      008D60 27 33            [ 1]  180 	jreq	00139$
      008D62 7B 1B            [ 1]  181 	ld	a, (0x1b, sp)
      008D64 A1 80            [ 1]  182 	cp	a, #0x80
      008D66 27 2D            [ 1]  183 	jreq	00139$
      008D68 7B 1B            [ 1]  184 	ld	a, (0x1b, sp)
      008D6A A0 0C            [ 1]  185 	sub	a, #0x0c
      008D6C 26 02            [ 1]  186 	jrne	00339$
      008D6E 4C               [ 1]  187 	inc	a
      008D6F 21                     188 	.byte 0x21
      008D70                        189 00339$:
      008D70 4F               [ 1]  190 	clr	a
      008D71                        191 00340$:
      008D71 4D               [ 1]  192 	tnz	a
      008D72 26 21            [ 1]  193 	jrne	00139$
      008D74 4D               [ 1]  194 	tnz	a
      008D75 26 1E            [ 1]  195 	jrne	00139$
      008D77 7B 1B            [ 1]  196 	ld	a, (0x1b, sp)
      008D79 A1 44            [ 1]  197 	cp	a, #0x44
      008D7B 27 18            [ 1]  198 	jreq	00139$
      008D7D 7B 1B            [ 1]  199 	ld	a, (0x1b, sp)
      008D7F A1 C0            [ 1]  200 	cp	a, #0xc0
      008D81 27 12            [ 1]  201 	jreq	00139$
      008D83 7B 1B            [ 1]  202 	ld	a, (0x1b, sp)
      008D85 A1 88            [ 1]  203 	cp	a, #0x88
      008D87 27 0C            [ 1]  204 	jreq	00139$
      008D89 4B 5F            [ 1]  205 	push	#0x5f
      008D8B 5F               [ 1]  206 	clrw	x
      008D8C 89               [ 2]  207 	pushw	x
      008D8D 4B 00            [ 1]  208 	push	#0x00
      008D8F AE 81 D7         [ 2]  209 	ldw	x, #(___str_0+0)
      008D92 CD AA 17         [ 4]  210 	call	_assert_failed
      008D95                        211 00139$:
                                    212 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 96: assert_param(IS_UART2_SYNCMODE_OK((uint8_t)SyncMode));
      008D95 7B 1A            [ 1]  213 	ld	a, (0x1a, sp)
      008D97 A4 88            [ 1]  214 	and	a, #0x88
      008D99 A1 88            [ 1]  215 	cp	a, #0x88
      008D9B 27 17            [ 1]  216 	jreq	00167$
      008D9D 7B 1A            [ 1]  217 	ld	a, (0x1a, sp)
      008D9F A4 44            [ 1]  218 	and	a, #0x44
      008DA1 A1 44            [ 1]  219 	cp	a, #0x44
      008DA3 27 0F            [ 1]  220 	jreq	00167$
      008DA5 7B 1A            [ 1]  221 	ld	a, (0x1a, sp)
      008DA7 A4 22            [ 1]  222 	and	a, #0x22
      008DA9 A1 22            [ 1]  223 	cp	a, #0x22
      008DAB 27 07            [ 1]  224 	jreq	00167$
      008DAD 7B 1A            [ 1]  225 	ld	a, (0x1a, sp)
      008DAF 43               [ 1]  226 	cpl	a
      008DB0 A5 11            [ 1]  227 	bcp	a, #0x11
      008DB2 26 0C            [ 1]  228 	jrne	00165$
      008DB4                        229 00167$:
      008DB4 4B 60            [ 1]  230 	push	#0x60
      008DB6 5F               [ 1]  231 	clrw	x
      008DB7 89               [ 2]  232 	pushw	x
      008DB8 4B 00            [ 1]  233 	push	#0x00
      008DBA AE 81 D7         [ 2]  234 	ldw	x, #(___str_0+0)
      008DBD CD AA 17         [ 4]  235 	call	_assert_failed
      008DC0                        236 00165$:
                                    237 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
      008DC0 72 19 52 44      [ 1]  238 	bres	0x5244, #4
                                    239 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
      008DC4 C6 52 44         [ 1]  240 	ld	a, 0x5244
      008DC7 1A 17            [ 1]  241 	or	a, (0x17, sp)
      008DC9 C7 52 44         [ 1]  242 	ld	0x5244, a
                                    243 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      008DCC C6 52 46         [ 1]  244 	ld	a, 0x5246
      008DCF A4 CF            [ 1]  245 	and	a, #0xcf
      008DD1 C7 52 46         [ 1]  246 	ld	0x5246, a
                                    247 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
      008DD4 C6 52 46         [ 1]  248 	ld	a, 0x5246
      008DD7 1A 18            [ 1]  249 	or	a, (0x18, sp)
      008DD9 C7 52 46         [ 1]  250 	ld	0x5246, a
                                    251 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
      008DDC C6 52 44         [ 1]  252 	ld	a, 0x5244
      008DDF A4 F9            [ 1]  253 	and	a, #0xf9
      008DE1 C7 52 44         [ 1]  254 	ld	0x5244, a
                                    255 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
      008DE4 C6 52 44         [ 1]  256 	ld	a, 0x5244
      008DE7 1A 19            [ 1]  257 	or	a, (0x19, sp)
      008DE9 C7 52 44         [ 1]  258 	ld	0x5244, a
                                    259 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
      008DEC C6 52 42         [ 1]  260 	ld	a, 0x5242
      008DEF 35 00 52 42      [ 1]  261 	mov	0x5242+0, #0x00
                                    262 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
      008DF3 C6 52 43         [ 1]  263 	ld	a, 0x5243
      008DF6 A4 0F            [ 1]  264 	and	a, #0x0f
      008DF8 C7 52 43         [ 1]  265 	ld	0x5243, a
                                    266 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
      008DFB C6 52 43         [ 1]  267 	ld	a, 0x5243
      008DFE A4 F0            [ 1]  268 	and	a, #0xf0
      008E00 C7 52 43         [ 1]  269 	ld	0x5243, a
                                    270 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      008E03 CD 86 B6         [ 4]  271 	call	_CLK_GetClockFreq
      008E06 1F 0F            [ 2]  272 	ldw	(0x0f, sp), x
      008E08 1E 13            [ 2]  273 	ldw	x, (0x13, sp)
      008E0A 1F 09            [ 2]  274 	ldw	(0x09, sp), x
      008E0C 1E 15            [ 2]  275 	ldw	x, (0x15, sp)
      008E0E A6 04            [ 1]  276 	ld	a, #0x04
      008E10                        277 00364$:
      008E10 58               [ 2]  278 	sllw	x
      008E11 09 0A            [ 1]  279 	rlc	(0x0a, sp)
      008E13 09 09            [ 1]  280 	rlc	(0x09, sp)
      008E15 4A               [ 1]  281 	dec	a
      008E16 26 F8            [ 1]  282 	jrne	00364$
      008E18 1F 0B            [ 2]  283 	ldw	(0x0b, sp), x
      008E1A 89               [ 2]  284 	pushw	x
      008E1B 1E 0B            [ 2]  285 	ldw	x, (0x0b, sp)
      008E1D 89               [ 2]  286 	pushw	x
      008E1E 1E 13            [ 2]  287 	ldw	x, (0x13, sp)
      008E20 89               [ 2]  288 	pushw	x
      008E21 90 89            [ 2]  289 	pushw	y
      008E23 CD B1 BD         [ 4]  290 	call	__divulong
      008E26 5B 08            [ 2]  291 	addw	sp, #8
      008E28 1F 03            [ 2]  292 	ldw	(0x03, sp), x
                                    293 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      008E2A 90 89            [ 2]  294 	pushw	y
      008E2C CD 86 B6         [ 4]  295 	call	_CLK_GetClockFreq
      008E2F 17 0F            [ 2]  296 	ldw	(0x0f, sp), y
      008E31 90 85            [ 2]  297 	popw	y
      008E33 90 89            [ 2]  298 	pushw	y
      008E35 89               [ 2]  299 	pushw	x
      008E36 1E 11            [ 2]  300 	ldw	x, (0x11, sp)
      008E38 89               [ 2]  301 	pushw	x
      008E39 4B 64            [ 1]  302 	push	#0x64
      008E3B 5F               [ 1]  303 	clrw	x
      008E3C 89               [ 2]  304 	pushw	x
      008E3D 4B 00            [ 1]  305 	push	#0x00
      008E3F CD B4 88         [ 4]  306 	call	__mullong
      008E42 5B 08            [ 2]  307 	addw	sp, #8
      008E44 1F 11            [ 2]  308 	ldw	(0x11, sp), x
      008E46 17 0F            [ 2]  309 	ldw	(0x0f, sp), y
      008E48 90 85            [ 2]  310 	popw	y
      008E4A 90 89            [ 2]  311 	pushw	y
      008E4C 1E 0D            [ 2]  312 	ldw	x, (0x0d, sp)
      008E4E 89               [ 2]  313 	pushw	x
      008E4F 1E 0D            [ 2]  314 	ldw	x, (0x0d, sp)
      008E51 89               [ 2]  315 	pushw	x
      008E52 1E 15            [ 2]  316 	ldw	x, (0x15, sp)
      008E54 89               [ 2]  317 	pushw	x
      008E55 1E 15            [ 2]  318 	ldw	x, (0x15, sp)
      008E57 89               [ 2]  319 	pushw	x
      008E58 CD B1 BD         [ 4]  320 	call	__divulong
      008E5B 5B 08            [ 2]  321 	addw	sp, #8
      008E5D 17 0F            [ 2]  322 	ldw	(0x0f, sp), y
      008E5F 90 85            [ 2]  323 	popw	y
      008E61 1F 07            [ 2]  324 	ldw	(0x07, sp), x
      008E63 1E 0D            [ 2]  325 	ldw	x, (0x0d, sp)
      008E65 1F 05            [ 2]  326 	ldw	(0x05, sp), x
                                    327 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
      008E67 90 89            [ 2]  328 	pushw	y
      008E69 1E 05            [ 2]  329 	ldw	x, (0x05, sp)
      008E6B 89               [ 2]  330 	pushw	x
      008E6C 90 89            [ 2]  331 	pushw	y
      008E6E 4B 64            [ 1]  332 	push	#0x64
      008E70 5F               [ 1]  333 	clrw	x
      008E71 89               [ 2]  334 	pushw	x
      008E72 4B 00            [ 1]  335 	push	#0x00
      008E74 CD B4 88         [ 4]  336 	call	__mullong
      008E77 5B 08            [ 2]  337 	addw	sp, #8
      008E79 1F 0D            [ 2]  338 	ldw	(0x0d, sp), x
      008E7B 17 0B            [ 2]  339 	ldw	(0x0b, sp), y
      008E7D 90 85            [ 2]  340 	popw	y
      008E7F 1E 07            [ 2]  341 	ldw	x, (0x07, sp)
      008E81 72 F0 0B         [ 2]  342 	subw	x, (0x0b, sp)
      008E84 1F 0F            [ 2]  343 	ldw	(0x0f, sp), x
      008E86 7B 06            [ 1]  344 	ld	a, (0x06, sp)
      008E88 12 0A            [ 1]  345 	sbc	a, (0x0a, sp)
      008E8A 97               [ 1]  346 	ld	xl, a
      008E8B 7B 05            [ 1]  347 	ld	a, (0x05, sp)
      008E8D 12 09            [ 1]  348 	sbc	a, (0x09, sp)
      008E8F 95               [ 1]  349 	ld	xh, a
      008E90 1F 0D            [ 2]  350 	ldw	(0x0d, sp), x
      008E92 1E 0F            [ 2]  351 	ldw	x, (0x0f, sp)
      008E94 A6 04            [ 1]  352 	ld	a, #0x04
      008E96                        353 00366$:
      008E96 58               [ 2]  354 	sllw	x
      008E97 09 0E            [ 1]  355 	rlc	(0x0e, sp)
      008E99 09 0D            [ 1]  356 	rlc	(0x0d, sp)
      008E9B 4A               [ 1]  357 	dec	a
      008E9C 26 F8            [ 1]  358 	jrne	00366$
      008E9E 90 89            [ 2]  359 	pushw	y
      008EA0 4B 64            [ 1]  360 	push	#0x64
      008EA2 4B 00            [ 1]  361 	push	#0x00
      008EA4 4B 00            [ 1]  362 	push	#0x00
      008EA6 4B 00            [ 1]  363 	push	#0x00
      008EA8 89               [ 2]  364 	pushw	x
      008EA9 1E 15            [ 2]  365 	ldw	x, (0x15, sp)
      008EAB 89               [ 2]  366 	pushw	x
      008EAC CD B1 BD         [ 4]  367 	call	__divulong
      008EAF 5B 08            [ 2]  368 	addw	sp, #8
      008EB1 17 0F            [ 2]  369 	ldw	(0x0f, sp), y
      008EB3 9F               [ 1]  370 	ld	a, xl
      008EB4 90 85            [ 2]  371 	popw	y
      008EB6 A4 0F            [ 1]  372 	and	a, #0x0f
      008EB8 6B 0E            [ 1]  373 	ld	(0x0e, sp), a
                                    374 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
      008EBA 1E 03            [ 2]  375 	ldw	x, (0x03, sp)
      008EBC A6 10            [ 1]  376 	ld	a, #0x10
      008EBE 62               [ 2]  377 	div	x, a
      008EBF 02               [ 1]  378 	rlwa	x
      008EC0 6B 0F            [ 1]  379 	ld	(0x0f, sp), a
      008EC2 01               [ 1]  380 	rrwa	x
      008EC3 9F               [ 1]  381 	ld	a, xl
      008EC4 A4 F0            [ 1]  382 	and	a, #0xf0
                                    383 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
      008EC6 1A 0E            [ 1]  384 	or	a, (0x0e, sp)
      008EC8 C7 52 43         [ 1]  385 	ld	0x5243, a
                                    386 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
      008ECB 7B 04            [ 1]  387 	ld	a, (0x04, sp)
      008ECD C7 52 42         [ 1]  388 	ld	0x5242, a
                                    389 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      008ED0 C6 52 45         [ 1]  390 	ld	a, 0x5245
      008ED3 A4 F3            [ 1]  391 	and	a, #0xf3
      008ED5 C7 52 45         [ 1]  392 	ld	0x5245, a
                                    393 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
      008ED8 C6 52 46         [ 1]  394 	ld	a, 0x5246
      008EDB A4 F8            [ 1]  395 	and	a, #0xf8
      008EDD C7 52 46         [ 1]  396 	ld	0x5246, a
                                    397 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
      008EE0 C6 52 46         [ 1]  398 	ld	a, 0x5246
      008EE3 6B 10            [ 1]  399 	ld	(0x10, sp), a
      008EE5 7B 1A            [ 1]  400 	ld	a, (0x1a, sp)
      008EE7 A4 07            [ 1]  401 	and	a, #0x07
      008EE9 1A 10            [ 1]  402 	or	a, (0x10, sp)
      008EEB C7 52 46         [ 1]  403 	ld	0x5246, a
                                    404 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      008EEE C6 52 45         [ 1]  405 	ld	a, 0x5245
                                    406 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
      008EF1 88               [ 1]  407 	push	a
      008EF2 7B 1C            [ 1]  408 	ld	a, (0x1c, sp)
      008EF4 A5 04            [ 1]  409 	bcp	a, #0x04
      008EF6 84               [ 1]  410 	pop	a
      008EF7 27 07            [ 1]  411 	jreq	00102$
                                    412 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
      008EF9 AA 08            [ 1]  413 	or	a, #0x08
      008EFB C7 52 45         [ 1]  414 	ld	0x5245, a
      008EFE 20 05            [ 2]  415 	jra	00103$
      008F00                        416 00102$:
                                    417 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
      008F00 A4 F7            [ 1]  418 	and	a, #0xf7
      008F02 C7 52 45         [ 1]  419 	ld	0x5245, a
      008F05                        420 00103$:
                                    421 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      008F05 C6 52 45         [ 1]  422 	ld	a, 0x5245
                                    423 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
      008F08 88               [ 1]  424 	push	a
      008F09 7B 1C            [ 1]  425 	ld	a, (0x1c, sp)
      008F0B A5 08            [ 1]  426 	bcp	a, #0x08
      008F0D 84               [ 1]  427 	pop	a
      008F0E 27 07            [ 1]  428 	jreq	00105$
                                    429 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
      008F10 AA 04            [ 1]  430 	or	a, #0x04
      008F12 C7 52 45         [ 1]  431 	ld	0x5245, a
      008F15 20 05            [ 2]  432 	jra	00106$
      008F17                        433 00105$:
                                    434 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
      008F17 A4 FB            [ 1]  435 	and	a, #0xfb
      008F19 C7 52 45         [ 1]  436 	ld	0x5245, a
      008F1C                        437 00106$:
                                    438 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      008F1C C6 52 46         [ 1]  439 	ld	a, 0x5246
                                    440 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
      008F1F 0D 1A            [ 1]  441 	tnz	(0x1a, sp)
      008F21 2A 07            [ 1]  442 	jrpl	00108$
                                    443 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
      008F23 A4 F7            [ 1]  444 	and	a, #0xf7
      008F25 C7 52 46         [ 1]  445 	ld	0x5246, a
      008F28 20 0D            [ 2]  446 	jra	00110$
      008F2A                        447 00108$:
                                    448 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
      008F2A 88               [ 1]  449 	push	a
      008F2B 7B 1B            [ 1]  450 	ld	a, (0x1b, sp)
      008F2D A4 08            [ 1]  451 	and	a, #0x08
      008F2F 6B 11            [ 1]  452 	ld	(0x11, sp), a
      008F31 84               [ 1]  453 	pop	a
      008F32 1A 10            [ 1]  454 	or	a, (0x10, sp)
      008F34 C7 52 46         [ 1]  455 	ld	0x5246, a
      008F37                        456 00110$:
                                    457 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 173: }
      008F37 1E 11            [ 2]  458 	ldw	x, (17, sp)
      008F39 5B 1B            [ 2]  459 	addw	sp, #27
      008F3B FC               [ 2]  460 	jp	(x)
                                    461 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
                                    462 ;	-----------------------------------------
                                    463 ;	 function UART2_Cmd
                                    464 ;	-----------------------------------------
      008F3C                        465 _UART2_Cmd:
      008F3C 88               [ 1]  466 	push	a
      008F3D 6B 01            [ 1]  467 	ld	(0x01, sp), a
                                    468 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      008F3F C6 52 44         [ 1]  469 	ld	a, 0x5244
                                    470 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 183: if (NewState != DISABLE)
      008F42 0D 01            [ 1]  471 	tnz	(0x01, sp)
      008F44 27 07            [ 1]  472 	jreq	00102$
                                    473 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      008F46 A4 DF            [ 1]  474 	and	a, #0xdf
      008F48 C7 52 44         [ 1]  475 	ld	0x5244, a
      008F4B 20 05            [ 2]  476 	jra	00104$
      008F4D                        477 00102$:
                                    478 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
      008F4D AA 20            [ 1]  479 	or	a, #0x20
      008F4F C7 52 44         [ 1]  480 	ld	0x5244, a
      008F52                        481 00104$:
                                    482 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 193: }
      008F52 84               [ 1]  483 	pop	a
      008F53 81               [ 4]  484 	ret
                                    485 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
                                    486 ;	-----------------------------------------
                                    487 ;	 function UART2_ITConfig
                                    488 ;	-----------------------------------------
      008F54                        489 _UART2_ITConfig:
      008F54 52 07            [ 2]  490 	sub	sp, #7
      008F56 1F 06            [ 2]  491 	ldw	(0x06, sp), x
      008F58 6B 05            [ 1]  492 	ld	(0x05, sp), a
                                    493 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 215: assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
      008F5A 1E 06            [ 2]  494 	ldw	x, (0x06, sp)
      008F5C A3 01 00         [ 2]  495 	cpw	x, #0x0100
      008F5F 27 2E            [ 1]  496 	jreq	00125$
      008F61 A3 02 77         [ 2]  497 	cpw	x, #0x0277
      008F64 27 29            [ 1]  498 	jreq	00125$
      008F66 A3 02 66         [ 2]  499 	cpw	x, #0x0266
      008F69 27 24            [ 1]  500 	jreq	00125$
      008F6B A3 02 05         [ 2]  501 	cpw	x, #0x0205
      008F6E 27 1F            [ 1]  502 	jreq	00125$
      008F70 A3 02 44         [ 2]  503 	cpw	x, #0x0244
      008F73 27 1A            [ 1]  504 	jreq	00125$
      008F75 A3 04 12         [ 2]  505 	cpw	x, #0x0412
      008F78 27 15            [ 1]  506 	jreq	00125$
      008F7A A3 03 46         [ 2]  507 	cpw	x, #0x0346
      008F7D 27 10            [ 1]  508 	jreq	00125$
      008F7F 89               [ 2]  509 	pushw	x
      008F80 4B D7            [ 1]  510 	push	#0xd7
      008F82 4B 00            [ 1]  511 	push	#0x00
      008F84 4B 00            [ 1]  512 	push	#0x00
      008F86 4B 00            [ 1]  513 	push	#0x00
      008F88 AE 81 D7         [ 2]  514 	ldw	x, #(___str_0+0)
      008F8B CD AA 17         [ 4]  515 	call	_assert_failed
      008F8E 85               [ 2]  516 	popw	x
      008F8F                        517 00125$:
                                    518 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008F8F 0D 05            [ 1]  519 	tnz	(0x05, sp)
      008F91 27 15            [ 1]  520 	jreq	00145$
      008F93 7B 05            [ 1]  521 	ld	a, (0x05, sp)
      008F95 4A               [ 1]  522 	dec	a
      008F96 27 10            [ 1]  523 	jreq	00145$
      008F98 89               [ 2]  524 	pushw	x
      008F99 4B D8            [ 1]  525 	push	#0xd8
      008F9B 4B 00            [ 1]  526 	push	#0x00
      008F9D 4B 00            [ 1]  527 	push	#0x00
      008F9F 4B 00            [ 1]  528 	push	#0x00
      008FA1 AE 81 D7         [ 2]  529 	ldw	x, #(___str_0+0)
      008FA4 CD AA 17         [ 4]  530 	call	_assert_failed
      008FA7 85               [ 2]  531 	popw	x
      008FA8                        532 00145$:
                                    533 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
                                    534 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      008FA8 7B 07            [ 1]  535 	ld	a, (0x07, sp)
      008FAA A4 0F            [ 1]  536 	and	a, #0x0f
      008FAC 88               [ 1]  537 	push	a
      008FAD A6 01            [ 1]  538 	ld	a, #0x01
      008FAF 6B 05            [ 1]  539 	ld	(0x05, sp), a
      008FB1 84               [ 1]  540 	pop	a
      008FB2 4D               [ 1]  541 	tnz	a
      008FB3 27 05            [ 1]  542 	jreq	00255$
      008FB5                        543 00254$:
      008FB5 08 04            [ 1]  544 	sll	(0x04, sp)
      008FB7 4A               [ 1]  545 	dec	a
      008FB8 26 FB            [ 1]  546 	jrne	00254$
      008FBA                        547 00255$:
                                    548 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 227: if (uartreg == 0x01)
      008FBA 9E               [ 1]  549 	ld	a, xh
      008FBB 4A               [ 1]  550 	dec	a
      008FBC 26 05            [ 1]  551 	jrne	00257$
      008FBE A6 01            [ 1]  552 	ld	a, #0x01
      008FC0 6B 01            [ 1]  553 	ld	(0x01, sp), a
      008FC2 C5                     554 	.byte 0xc5
      008FC3                        555 00257$:
      008FC3 0F 01            [ 1]  556 	clr	(0x01, sp)
      008FC5                        557 00258$:
                                    558 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 231: else if (uartreg == 0x02)
      008FC5 9E               [ 1]  559 	ld	a, xh
      008FC6 A0 02            [ 1]  560 	sub	a, #0x02
      008FC8 26 04            [ 1]  561 	jrne	00260$
      008FCA 4C               [ 1]  562 	inc	a
      008FCB 6B 02            [ 1]  563 	ld	(0x02, sp), a
      008FCD C5                     564 	.byte 0xc5
      008FCE                        565 00260$:
      008FCE 0F 02            [ 1]  566 	clr	(0x02, sp)
      008FD0                        567 00261$:
                                    568 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 235: else if (uartreg == 0x03)
      008FD0 9E               [ 1]  569 	ld	a, xh
      008FD1 A0 03            [ 1]  570 	sub	a, #0x03
      008FD3 26 04            [ 1]  571 	jrne	00263$
      008FD5 4C               [ 1]  572 	inc	a
      008FD6 6B 03            [ 1]  573 	ld	(0x03, sp), a
      008FD8 C5                     574 	.byte 0xc5
      008FD9                        575 00263$:
      008FD9 0F 03            [ 1]  576 	clr	(0x03, sp)
      008FDB                        577 00264$:
                                    578 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 224: if (NewState != DISABLE)
      008FDB 0D 05            [ 1]  579 	tnz	(0x05, sp)
      008FDD 27 34            [ 1]  580 	jreq	00120$
                                    581 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 227: if (uartreg == 0x01)
      008FDF 0D 01            [ 1]  582 	tnz	(0x01, sp)
      008FE1 27 0A            [ 1]  583 	jreq	00108$
                                    584 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 229: UART2->CR1 |= itpos;
      008FE3 C6 52 44         [ 1]  585 	ld	a, 0x5244
      008FE6 1A 04            [ 1]  586 	or	a, (0x04, sp)
      008FE8 C7 52 44         [ 1]  587 	ld	0x5244, a
      008FEB 20 5C            [ 2]  588 	jra	00122$
      008FED                        589 00108$:
                                    590 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 231: else if (uartreg == 0x02)
      008FED 0D 02            [ 1]  591 	tnz	(0x02, sp)
      008FEF 27 0A            [ 1]  592 	jreq	00105$
                                    593 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 233: UART2->CR2 |= itpos;
      008FF1 C6 52 45         [ 1]  594 	ld	a, 0x5245
      008FF4 1A 04            [ 1]  595 	or	a, (0x04, sp)
      008FF6 C7 52 45         [ 1]  596 	ld	0x5245, a
      008FF9 20 4E            [ 2]  597 	jra	00122$
      008FFB                        598 00105$:
                                    599 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 235: else if (uartreg == 0x03)
      008FFB 0D 03            [ 1]  600 	tnz	(0x03, sp)
      008FFD 27 0A            [ 1]  601 	jreq	00102$
                                    602 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 237: UART2->CR4 |= itpos;
      008FFF C6 52 47         [ 1]  603 	ld	a, 0x5247
      009002 1A 04            [ 1]  604 	or	a, (0x04, sp)
      009004 C7 52 47         [ 1]  605 	ld	0x5247, a
      009007 20 40            [ 2]  606 	jra	00122$
      009009                        607 00102$:
                                    608 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 241: UART2->CR6 |= itpos;
      009009 C6 52 49         [ 1]  609 	ld	a, 0x5249
      00900C 1A 04            [ 1]  610 	or	a, (0x04, sp)
      00900E C7 52 49         [ 1]  611 	ld	0x5249, a
      009011 20 36            [ 2]  612 	jra	00122$
      009013                        613 00120$:
                                    614 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      009013 03 04            [ 1]  615 	cpl	(0x04, sp)
                                    616 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 247: if (uartreg == 0x01)
      009015 0D 01            [ 1]  617 	tnz	(0x01, sp)
      009017 27 0C            [ 1]  618 	jreq	00117$
                                    619 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      009019 C6 52 44         [ 1]  620 	ld	a, 0x5244
      00901C 6B 03            [ 1]  621 	ld	(0x03, sp), a
      00901E 14 04            [ 1]  622 	and	a, (0x04, sp)
      009020 C7 52 44         [ 1]  623 	ld	0x5244, a
      009023 20 24            [ 2]  624 	jra	00122$
      009025                        625 00117$:
                                    626 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 251: else if (uartreg == 0x02)
      009025 0D 02            [ 1]  627 	tnz	(0x02, sp)
      009027 27 0A            [ 1]  628 	jreq	00114$
                                    629 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
      009029 C6 52 45         [ 1]  630 	ld	a, 0x5245
      00902C 14 04            [ 1]  631 	and	a, (0x04, sp)
      00902E C7 52 45         [ 1]  632 	ld	0x5245, a
      009031 20 16            [ 2]  633 	jra	00122$
      009033                        634 00114$:
                                    635 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 255: else if (uartreg == 0x03)
      009033 0D 03            [ 1]  636 	tnz	(0x03, sp)
      009035 27 0A            [ 1]  637 	jreq	00111$
                                    638 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
      009037 C6 52 47         [ 1]  639 	ld	a, 0x5247
      00903A 14 04            [ 1]  640 	and	a, (0x04, sp)
      00903C C7 52 47         [ 1]  641 	ld	0x5247, a
      00903F 20 08            [ 2]  642 	jra	00122$
      009041                        643 00111$:
                                    644 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
      009041 C6 52 49         [ 1]  645 	ld	a, 0x5249
      009044 14 04            [ 1]  646 	and	a, (0x04, sp)
      009046 C7 52 49         [ 1]  647 	ld	0x5249, a
      009049                        648 00122$:
                                    649 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 264: }
      009049 5B 07            [ 2]  650 	addw	sp, #7
      00904B 81               [ 4]  651 	ret
                                    652 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
                                    653 ;	-----------------------------------------
                                    654 ;	 function UART2_IrDAConfig
                                    655 ;	-----------------------------------------
      00904C                        656 _UART2_IrDAConfig:
      00904C 88               [ 1]  657 	push	a
                                    658 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 274: assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
      00904D 6B 01            [ 1]  659 	ld	(0x01, sp), a
      00904F 4A               [ 1]  660 	dec	a
      009050 27 10            [ 1]  661 	jreq	00107$
      009052 0D 01            [ 1]  662 	tnz	(0x01, sp)
      009054 27 0C            [ 1]  663 	jreq	00107$
      009056 4B 12            [ 1]  664 	push	#0x12
      009058 4B 01            [ 1]  665 	push	#0x01
      00905A 5F               [ 1]  666 	clrw	x
      00905B 89               [ 2]  667 	pushw	x
      00905C AE 81 D7         [ 2]  668 	ldw	x, #(___str_0+0)
      00905F CD AA 17         [ 4]  669 	call	_assert_failed
      009062                        670 00107$:
                                    671 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      009062 C6 52 48         [ 1]  672 	ld	a, 0x5248
                                    673 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
      009065 0D 01            [ 1]  674 	tnz	(0x01, sp)
      009067 27 07            [ 1]  675 	jreq	00102$
                                    676 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      009069 AA 04            [ 1]  677 	or	a, #0x04
      00906B C7 52 48         [ 1]  678 	ld	0x5248, a
      00906E 20 05            [ 2]  679 	jra	00104$
      009070                        680 00102$:
                                    681 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
      009070 A4 FB            [ 1]  682 	and	a, #0xfb
      009072 C7 52 48         [ 1]  683 	ld	0x5248, a
      009075                        684 00104$:
                                    685 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 284: }
      009075 84               [ 1]  686 	pop	a
      009076 81               [ 4]  687 	ret
                                    688 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
                                    689 ;	-----------------------------------------
                                    690 ;	 function UART2_IrDACmd
                                    691 ;	-----------------------------------------
      009077                        692 _UART2_IrDACmd:
      009077 88               [ 1]  693 	push	a
                                    694 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 295: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009078 6B 01            [ 1]  695 	ld	(0x01, sp), a
      00907A 27 11            [ 1]  696 	jreq	00107$
      00907C 7B 01            [ 1]  697 	ld	a, (0x01, sp)
      00907E 4A               [ 1]  698 	dec	a
      00907F 27 0C            [ 1]  699 	jreq	00107$
      009081 4B 27            [ 1]  700 	push	#0x27
      009083 4B 01            [ 1]  701 	push	#0x01
      009085 5F               [ 1]  702 	clrw	x
      009086 89               [ 2]  703 	pushw	x
      009087 AE 81 D7         [ 2]  704 	ldw	x, #(___str_0+0)
      00908A CD AA 17         [ 4]  705 	call	_assert_failed
      00908D                        706 00107$:
                                    707 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      00908D C6 52 48         [ 1]  708 	ld	a, 0x5248
                                    709 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 297: if (NewState != DISABLE)
      009090 0D 01            [ 1]  710 	tnz	(0x01, sp)
      009092 27 07            [ 1]  711 	jreq	00102$
                                    712 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      009094 AA 02            [ 1]  713 	or	a, #0x02
      009096 C7 52 48         [ 1]  714 	ld	0x5248, a
      009099 20 05            [ 2]  715 	jra	00104$
      00909B                        716 00102$:
                                    717 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
      00909B A4 FD            [ 1]  718 	and	a, #0xfd
      00909D C7 52 48         [ 1]  719 	ld	0x5248, a
      0090A0                        720 00104$:
                                    721 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 307: }
      0090A0 84               [ 1]  722 	pop	a
      0090A1 81               [ 4]  723 	ret
                                    724 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
                                    725 ;	-----------------------------------------
                                    726 ;	 function UART2_LINBreakDetectionConfig
                                    727 ;	-----------------------------------------
      0090A2                        728 _UART2_LINBreakDetectionConfig:
      0090A2 88               [ 1]  729 	push	a
                                    730 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 319: assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
      0090A3 6B 01            [ 1]  731 	ld	(0x01, sp), a
      0090A5 27 11            [ 1]  732 	jreq	00107$
      0090A7 7B 01            [ 1]  733 	ld	a, (0x01, sp)
      0090A9 4A               [ 1]  734 	dec	a
      0090AA 27 0C            [ 1]  735 	jreq	00107$
      0090AC 4B 3F            [ 1]  736 	push	#0x3f
      0090AE 4B 01            [ 1]  737 	push	#0x01
      0090B0 5F               [ 1]  738 	clrw	x
      0090B1 89               [ 2]  739 	pushw	x
      0090B2 AE 81 D7         [ 2]  740 	ldw	x, #(___str_0+0)
      0090B5 CD AA 17         [ 4]  741 	call	_assert_failed
      0090B8                        742 00107$:
                                    743 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      0090B8 C6 52 47         [ 1]  744 	ld	a, 0x5247
                                    745 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
      0090BB 0D 01            [ 1]  746 	tnz	(0x01, sp)
      0090BD 27 07            [ 1]  747 	jreq	00102$
                                    748 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      0090BF AA 20            [ 1]  749 	or	a, #0x20
      0090C1 C7 52 47         [ 1]  750 	ld	0x5247, a
      0090C4 20 05            [ 2]  751 	jra	00104$
      0090C6                        752 00102$:
                                    753 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
      0090C6 A4 DF            [ 1]  754 	and	a, #0xdf
      0090C8 C7 52 47         [ 1]  755 	ld	0x5247, a
      0090CB                        756 00104$:
                                    757 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 329: }
      0090CB 84               [ 1]  758 	pop	a
      0090CC 81               [ 4]  759 	ret
                                    760 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
                                    761 ;	-----------------------------------------
                                    762 ;	 function UART2_LINConfig
                                    763 ;	-----------------------------------------
      0090CD                        764 _UART2_LINConfig:
      0090CD 88               [ 1]  765 	push	a
                                    766 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 346: assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
      0090CE 6B 01            [ 1]  767 	ld	(0x01, sp), a
      0090D0 27 11            [ 1]  768 	jreq	00113$
      0090D2 7B 01            [ 1]  769 	ld	a, (0x01, sp)
      0090D4 4A               [ 1]  770 	dec	a
      0090D5 27 0C            [ 1]  771 	jreq	00113$
      0090D7 4B 5A            [ 1]  772 	push	#0x5a
      0090D9 4B 01            [ 1]  773 	push	#0x01
      0090DB 5F               [ 1]  774 	clrw	x
      0090DC 89               [ 2]  775 	pushw	x
      0090DD AE 81 D7         [ 2]  776 	ldw	x, #(___str_0+0)
      0090E0 CD AA 17         [ 4]  777 	call	_assert_failed
      0090E3                        778 00113$:
                                    779 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 347: assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
      0090E3 7B 04            [ 1]  780 	ld	a, (0x04, sp)
      0090E5 4A               [ 1]  781 	dec	a
      0090E6 27 10            [ 1]  782 	jreq	00118$
      0090E8 0D 04            [ 1]  783 	tnz	(0x04, sp)
      0090EA 27 0C            [ 1]  784 	jreq	00118$
      0090EC 4B 5B            [ 1]  785 	push	#0x5b
      0090EE 4B 01            [ 1]  786 	push	#0x01
      0090F0 5F               [ 1]  787 	clrw	x
      0090F1 89               [ 2]  788 	pushw	x
      0090F2 AE 81 D7         [ 2]  789 	ldw	x, #(___str_0+0)
      0090F5 CD AA 17         [ 4]  790 	call	_assert_failed
      0090F8                        791 00118$:
                                    792 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 348: assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
      0090F8 0D 05            [ 1]  793 	tnz	(0x05, sp)
      0090FA 27 11            [ 1]  794 	jreq	00123$
      0090FC 7B 05            [ 1]  795 	ld	a, (0x05, sp)
      0090FE 4A               [ 1]  796 	dec	a
      0090FF 27 0C            [ 1]  797 	jreq	00123$
      009101 4B 5C            [ 1]  798 	push	#0x5c
      009103 4B 01            [ 1]  799 	push	#0x01
      009105 5F               [ 1]  800 	clrw	x
      009106 89               [ 2]  801 	pushw	x
      009107 AE 81 D7         [ 2]  802 	ldw	x, #(___str_0+0)
      00910A CD AA 17         [ 4]  803 	call	_assert_failed
      00910D                        804 00123$:
                                    805 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      00910D C6 52 49         [ 1]  806 	ld	a, 0x5249
                                    807 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
      009110 0D 01            [ 1]  808 	tnz	(0x01, sp)
      009112 27 07            [ 1]  809 	jreq	00102$
                                    810 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      009114 AA 20            [ 1]  811 	or	a, #0x20
      009116 C7 52 49         [ 1]  812 	ld	0x5249, a
      009119 20 05            [ 2]  813 	jra	00103$
      00911B                        814 00102$:
                                    815 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
      00911B A4 DF            [ 1]  816 	and	a, #0xdf
      00911D C7 52 49         [ 1]  817 	ld	0x5249, a
      009120                        818 00103$:
                                    819 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      009120 C6 52 49         [ 1]  820 	ld	a, 0x5249
                                    821 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
      009123 0D 04            [ 1]  822 	tnz	(0x04, sp)
      009125 27 07            [ 1]  823 	jreq	00105$
                                    824 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
      009127 AA 10            [ 1]  825 	or	a, #0x10
      009129 C7 52 49         [ 1]  826 	ld	0x5249, a
      00912C 20 05            [ 2]  827 	jra	00106$
      00912E                        828 00105$:
                                    829 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
      00912E A4 EF            [ 1]  830 	and	a, #0xef
      009130 C7 52 49         [ 1]  831 	ld	0x5249, a
      009133                        832 00106$:
                                    833 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      009133 C6 52 49         [ 1]  834 	ld	a, 0x5249
                                    835 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
      009136 0D 05            [ 1]  836 	tnz	(0x05, sp)
      009138 27 07            [ 1]  837 	jreq	00108$
                                    838 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
      00913A AA 80            [ 1]  839 	or	a, #0x80
      00913C C7 52 49         [ 1]  840 	ld	0x5249, a
      00913F 20 05            [ 2]  841 	jra	00110$
      009141                        842 00108$:
                                    843 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
      009141 A4 7F            [ 1]  844 	and	a, #0x7f
      009143 C7 52 49         [ 1]  845 	ld	0x5249, a
      009146                        846 00110$:
                                    847 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 376: }
      009146 1E 02            [ 2]  848 	ldw	x, (2, sp)
      009148 5B 05            [ 2]  849 	addw	sp, #5
      00914A FC               [ 2]  850 	jp	(x)
                                    851 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
                                    852 ;	-----------------------------------------
                                    853 ;	 function UART2_LINCmd
                                    854 ;	-----------------------------------------
      00914B                        855 _UART2_LINCmd:
      00914B 88               [ 1]  856 	push	a
                                    857 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 386: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00914C 6B 01            [ 1]  858 	ld	(0x01, sp), a
      00914E 27 11            [ 1]  859 	jreq	00107$
      009150 7B 01            [ 1]  860 	ld	a, (0x01, sp)
      009152 4A               [ 1]  861 	dec	a
      009153 27 0C            [ 1]  862 	jreq	00107$
      009155 4B 82            [ 1]  863 	push	#0x82
      009157 4B 01            [ 1]  864 	push	#0x01
      009159 5F               [ 1]  865 	clrw	x
      00915A 89               [ 2]  866 	pushw	x
      00915B AE 81 D7         [ 2]  867 	ldw	x, #(___str_0+0)
      00915E CD AA 17         [ 4]  868 	call	_assert_failed
      009161                        869 00107$:
                                    870 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      009161 C6 52 46         [ 1]  871 	ld	a, 0x5246
                                    872 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 388: if (NewState != DISABLE)
      009164 0D 01            [ 1]  873 	tnz	(0x01, sp)
      009166 27 07            [ 1]  874 	jreq	00102$
                                    875 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      009168 AA 40            [ 1]  876 	or	a, #0x40
      00916A C7 52 46         [ 1]  877 	ld	0x5246, a
      00916D 20 05            [ 2]  878 	jra	00104$
      00916F                        879 00102$:
                                    880 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
      00916F A4 BF            [ 1]  881 	and	a, #0xbf
      009171 C7 52 46         [ 1]  882 	ld	0x5246, a
      009174                        883 00104$:
                                    884 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 398: }
      009174 84               [ 1]  885 	pop	a
      009175 81               [ 4]  886 	ret
                                    887 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
                                    888 ;	-----------------------------------------
                                    889 ;	 function UART2_SmartCardCmd
                                    890 ;	-----------------------------------------
      009176                        891 _UART2_SmartCardCmd:
      009176 88               [ 1]  892 	push	a
                                    893 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 409: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009177 6B 01            [ 1]  894 	ld	(0x01, sp), a
      009179 27 11            [ 1]  895 	jreq	00107$
      00917B 7B 01            [ 1]  896 	ld	a, (0x01, sp)
      00917D 4A               [ 1]  897 	dec	a
      00917E 27 0C            [ 1]  898 	jreq	00107$
      009180 4B 99            [ 1]  899 	push	#0x99
      009182 4B 01            [ 1]  900 	push	#0x01
      009184 5F               [ 1]  901 	clrw	x
      009185 89               [ 2]  902 	pushw	x
      009186 AE 81 D7         [ 2]  903 	ldw	x, #(___str_0+0)
      009189 CD AA 17         [ 4]  904 	call	_assert_failed
      00918C                        905 00107$:
                                    906 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      00918C C6 52 48         [ 1]  907 	ld	a, 0x5248
                                    908 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 411: if (NewState != DISABLE)
      00918F 0D 01            [ 1]  909 	tnz	(0x01, sp)
      009191 27 07            [ 1]  910 	jreq	00102$
                                    911 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      009193 AA 20            [ 1]  912 	or	a, #0x20
      009195 C7 52 48         [ 1]  913 	ld	0x5248, a
      009198 20 05            [ 2]  914 	jra	00104$
      00919A                        915 00102$:
                                    916 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
      00919A A4 DF            [ 1]  917 	and	a, #0xdf
      00919C C7 52 48         [ 1]  918 	ld	0x5248, a
      00919F                        919 00104$:
                                    920 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 421: }
      00919F 84               [ 1]  921 	pop	a
      0091A0 81               [ 4]  922 	ret
                                    923 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
                                    924 ;	-----------------------------------------
                                    925 ;	 function UART2_SmartCardNACKCmd
                                    926 ;	-----------------------------------------
      0091A1                        927 _UART2_SmartCardNACKCmd:
      0091A1 88               [ 1]  928 	push	a
                                    929 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 432: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0091A2 6B 01            [ 1]  930 	ld	(0x01, sp), a
      0091A4 27 11            [ 1]  931 	jreq	00107$
      0091A6 7B 01            [ 1]  932 	ld	a, (0x01, sp)
      0091A8 4A               [ 1]  933 	dec	a
      0091A9 27 0C            [ 1]  934 	jreq	00107$
      0091AB 4B B0            [ 1]  935 	push	#0xb0
      0091AD 4B 01            [ 1]  936 	push	#0x01
      0091AF 5F               [ 1]  937 	clrw	x
      0091B0 89               [ 2]  938 	pushw	x
      0091B1 AE 81 D7         [ 2]  939 	ldw	x, #(___str_0+0)
      0091B4 CD AA 17         [ 4]  940 	call	_assert_failed
      0091B7                        941 00107$:
                                    942 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      0091B7 C6 52 48         [ 1]  943 	ld	a, 0x5248
                                    944 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 434: if (NewState != DISABLE)
      0091BA 0D 01            [ 1]  945 	tnz	(0x01, sp)
      0091BC 27 07            [ 1]  946 	jreq	00102$
                                    947 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      0091BE AA 10            [ 1]  948 	or	a, #0x10
      0091C0 C7 52 48         [ 1]  949 	ld	0x5248, a
      0091C3 20 05            [ 2]  950 	jra	00104$
      0091C5                        951 00102$:
                                    952 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
      0091C5 A4 EF            [ 1]  953 	and	a, #0xef
      0091C7 C7 52 48         [ 1]  954 	ld	0x5248, a
      0091CA                        955 00104$:
                                    956 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 444: }
      0091CA 84               [ 1]  957 	pop	a
      0091CB 81               [ 4]  958 	ret
                                    959 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
                                    960 ;	-----------------------------------------
                                    961 ;	 function UART2_WakeUpConfig
                                    962 ;	-----------------------------------------
      0091CC                        963 _UART2_WakeUpConfig:
      0091CC 88               [ 1]  964 	push	a
                                    965 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 454: assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
      0091CD 6B 01            [ 1]  966 	ld	(0x01, sp), a
      0091CF 27 12            [ 1]  967 	jreq	00104$
      0091D1 7B 01            [ 1]  968 	ld	a, (0x01, sp)
      0091D3 A1 08            [ 1]  969 	cp	a, #0x08
      0091D5 27 0C            [ 1]  970 	jreq	00104$
      0091D7 4B C6            [ 1]  971 	push	#0xc6
      0091D9 4B 01            [ 1]  972 	push	#0x01
      0091DB 5F               [ 1]  973 	clrw	x
      0091DC 89               [ 2]  974 	pushw	x
      0091DD AE 81 D7         [ 2]  975 	ldw	x, #(___str_0+0)
      0091E0 CD AA 17         [ 4]  976 	call	_assert_failed
      0091E3                        977 00104$:
                                    978 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
      0091E3 72 17 52 44      [ 1]  979 	bres	0x5244, #3
                                    980 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
      0091E7 C6 52 44         [ 1]  981 	ld	a, 0x5244
      0091EA 1A 01            [ 1]  982 	or	a, (0x01, sp)
      0091EC C7 52 44         [ 1]  983 	ld	0x5244, a
                                    984 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 458: }
      0091EF 84               [ 1]  985 	pop	a
      0091F0 81               [ 4]  986 	ret
                                    987 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
                                    988 ;	-----------------------------------------
                                    989 ;	 function UART2_ReceiverWakeUpCmd
                                    990 ;	-----------------------------------------
      0091F1                        991 _UART2_ReceiverWakeUpCmd:
      0091F1 88               [ 1]  992 	push	a
                                    993 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 468: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0091F2 6B 01            [ 1]  994 	ld	(0x01, sp), a
      0091F4 27 11            [ 1]  995 	jreq	00107$
      0091F6 7B 01            [ 1]  996 	ld	a, (0x01, sp)
      0091F8 4A               [ 1]  997 	dec	a
      0091F9 27 0C            [ 1]  998 	jreq	00107$
      0091FB 4B D4            [ 1]  999 	push	#0xd4
      0091FD 4B 01            [ 1] 1000 	push	#0x01
      0091FF 5F               [ 1] 1001 	clrw	x
      009200 89               [ 2] 1002 	pushw	x
      009201 AE 81 D7         [ 2] 1003 	ldw	x, #(___str_0+0)
      009204 CD AA 17         [ 4] 1004 	call	_assert_failed
      009207                       1005 00107$:
                                   1006 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      009207 C6 52 45         [ 1] 1007 	ld	a, 0x5245
                                   1008 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 470: if (NewState != DISABLE)
      00920A 0D 01            [ 1] 1009 	tnz	(0x01, sp)
      00920C 27 07            [ 1] 1010 	jreq	00102$
                                   1011 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      00920E AA 02            [ 1] 1012 	or	a, #0x02
      009210 C7 52 45         [ 1] 1013 	ld	0x5245, a
      009213 20 05            [ 2] 1014 	jra	00104$
      009215                       1015 00102$:
                                   1016 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
      009215 A4 FD            [ 1] 1017 	and	a, #0xfd
      009217 C7 52 45         [ 1] 1018 	ld	0x5245, a
      00921A                       1019 00104$:
                                   1020 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 480: }
      00921A 84               [ 1] 1021 	pop	a
      00921B 81               [ 4] 1022 	ret
                                   1023 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
                                   1024 ;	-----------------------------------------
                                   1025 ;	 function UART2_ReceiveData8
                                   1026 ;	-----------------------------------------
      00921C                       1027 _UART2_ReceiveData8:
                                   1028 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
      00921C C6 52 41         [ 1] 1029 	ld	a, 0x5241
                                   1030 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 490: }
      00921F 81               [ 4] 1031 	ret
                                   1032 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
                                   1033 ;	-----------------------------------------
                                   1034 ;	 function UART2_ReceiveData9
                                   1035 ;	-----------------------------------------
      009220                       1036 _UART2_ReceiveData9:
      009220 89               [ 2] 1037 	pushw	x
                                   1038 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
      009221 C6 52 44         [ 1] 1039 	ld	a, 0x5244
      009224 A4 80            [ 1] 1040 	and	a, #0x80
      009226 97               [ 1] 1041 	ld	xl, a
      009227 4F               [ 1] 1042 	clr	a
      009228 95               [ 1] 1043 	ld	xh, a
      009229 58               [ 2] 1044 	sllw	x
      00922A 1F 01            [ 2] 1045 	ldw	(0x01, sp), x
                                   1046 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
      00922C C6 52 41         [ 1] 1047 	ld	a, 0x5241
      00922F 5F               [ 1] 1048 	clrw	x
      009230 1A 02            [ 1] 1049 	or	a, (0x02, sp)
      009232 02               [ 1] 1050 	rlwa	x
      009233 1A 01            [ 1] 1051 	or	a, (0x01, sp)
      009235 A4 01            [ 1] 1052 	and	a, #0x01
      009237 95               [ 1] 1053 	ld	xh, a
                                   1054 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 504: }
      009238 5B 02            [ 2] 1055 	addw	sp, #2
      00923A 81               [ 4] 1056 	ret
                                   1057 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
                                   1058 ;	-----------------------------------------
                                   1059 ;	 function UART2_SendData8
                                   1060 ;	-----------------------------------------
      00923B                       1061 _UART2_SendData8:
                                   1062 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 514: UART2->DR = Data;
      00923B C7 52 41         [ 1] 1063 	ld	0x5241, a
                                   1064 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 515: }
      00923E 81               [ 4] 1065 	ret
                                   1066 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
                                   1067 ;	-----------------------------------------
                                   1068 ;	 function UART2_SendData9
                                   1069 ;	-----------------------------------------
      00923F                       1070 _UART2_SendData9:
      00923F 88               [ 1] 1071 	push	a
      009240 51               [ 1] 1072 	exgw	x, y
                                   1073 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
      009241 72 1D 52 44      [ 1] 1074 	bres	0x5244, #6
                                   1075 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
      009245 C6 52 44         [ 1] 1076 	ld	a, 0x5244
      009248 6B 01            [ 1] 1077 	ld	(0x01, sp), a
      00924A 93               [ 1] 1078 	ldw	x, y
      00924B 54               [ 2] 1079 	srlw	x
      00924C 54               [ 2] 1080 	srlw	x
      00924D 9F               [ 1] 1081 	ld	a, xl
      00924E A4 40            [ 1] 1082 	and	a, #0x40
      009250 1A 01            [ 1] 1083 	or	a, (0x01, sp)
      009252 C7 52 44         [ 1] 1084 	ld	0x5244, a
                                   1085 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
      009255 90 9F            [ 1] 1086 	ld	a, yl
      009257 C7 52 41         [ 1] 1087 	ld	0x5241, a
                                   1088 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 532: }
      00925A 84               [ 1] 1089 	pop	a
      00925B 81               [ 4] 1090 	ret
                                   1091 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 539: void UART2_SendBreak(void)
                                   1092 ;	-----------------------------------------
                                   1093 ;	 function UART2_SendBreak
                                   1094 ;	-----------------------------------------
      00925C                       1095 _UART2_SendBreak:
                                   1096 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
      00925C 72 10 52 45      [ 1] 1097 	bset	0x5245, #0
                                   1098 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 542: }
      009260 81               [ 4] 1099 	ret
                                   1100 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
                                   1101 ;	-----------------------------------------
                                   1102 ;	 function UART2_SetAddress
                                   1103 ;	-----------------------------------------
      009261                       1104 _UART2_SetAddress:
      009261 88               [ 1] 1105 	push	a
                                   1106 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 552: assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
      009262 6B 01            [ 1] 1107 	ld	(0x01, sp), a
      009264 A1 10            [ 1] 1108 	cp	a, #0x10
      009266 25 0C            [ 1] 1109 	jrc	00104$
      009268 4B 28            [ 1] 1110 	push	#0x28
      00926A 4B 02            [ 1] 1111 	push	#0x02
      00926C 5F               [ 1] 1112 	clrw	x
      00926D 89               [ 2] 1113 	pushw	x
      00926E AE 81 D7         [ 2] 1114 	ldw	x, #(___str_0+0)
      009271 CD AA 17         [ 4] 1115 	call	_assert_failed
      009274                       1116 00104$:
                                   1117 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
      009274 C6 52 47         [ 1] 1118 	ld	a, 0x5247
      009277 A4 F0            [ 1] 1119 	and	a, #0xf0
      009279 C7 52 47         [ 1] 1120 	ld	0x5247, a
                                   1121 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
      00927C C6 52 47         [ 1] 1122 	ld	a, 0x5247
      00927F 1A 01            [ 1] 1123 	or	a, (0x01, sp)
      009281 C7 52 47         [ 1] 1124 	ld	0x5247, a
                                   1125 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 558: }
      009284 84               [ 1] 1126 	pop	a
      009285 81               [ 4] 1127 	ret
                                   1128 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
                                   1129 ;	-----------------------------------------
                                   1130 ;	 function UART2_SetGuardTime
                                   1131 ;	-----------------------------------------
      009286                       1132 _UART2_SetGuardTime:
                                   1133 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
      009286 C7 52 4A         [ 1] 1134 	ld	0x524a, a
                                   1135 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 570: }
      009289 81               [ 4] 1136 	ret
                                   1137 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
                                   1138 ;	-----------------------------------------
                                   1139 ;	 function UART2_SetPrescaler
                                   1140 ;	-----------------------------------------
      00928A                       1141 _UART2_SetPrescaler:
                                   1142 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
      00928A C7 52 4B         [ 1] 1143 	ld	0x524b, a
                                   1144 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 598: }
      00928D 81               [ 4] 1145 	ret
                                   1146 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
                                   1147 ;	-----------------------------------------
                                   1148 ;	 function UART2_GetFlagStatus
                                   1149 ;	-----------------------------------------
      00928E                       1150 _UART2_GetFlagStatus:
      00928E 52 04            [ 2] 1151 	sub	sp, #4
                                   1152 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 611: assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
      009290 90 93            [ 1] 1153 	ldw	y, x
      009292 A3 01 01         [ 2] 1154 	cpw	x, #0x0101
      009295 26 05            [ 1] 1155 	jrne	00256$
      009297 A6 01            [ 1] 1156 	ld	a, #0x01
      009299 6B 01            [ 1] 1157 	ld	(0x01, sp), a
      00929B C5                    1158 	.byte 0xc5
      00929C                       1159 00256$:
      00929C 0F 01            [ 1] 1160 	clr	(0x01, sp)
      00929E                       1161 00257$:
      00929E A3 03 01         [ 2] 1162 	cpw	x, #0x0301
      0092A1 26 05            [ 1] 1163 	jrne	00259$
      0092A3 A6 01            [ 1] 1164 	ld	a, #0x01
      0092A5 6B 02            [ 1] 1165 	ld	(0x02, sp), a
      0092A7 C5                    1166 	.byte 0xc5
      0092A8                       1167 00259$:
      0092A8 0F 02            [ 1] 1168 	clr	(0x02, sp)
      0092AA                       1169 00260$:
      0092AA A3 03 02         [ 2] 1170 	cpw	x, #0x0302
      0092AD 26 05            [ 1] 1171 	jrne	00262$
      0092AF A6 01            [ 1] 1172 	ld	a, #0x01
      0092B1 6B 03            [ 1] 1173 	ld	(0x03, sp), a
      0092B3 C5                    1174 	.byte 0xc5
      0092B4                       1175 00262$:
      0092B4 0F 03            [ 1] 1176 	clr	(0x03, sp)
      0092B6                       1177 00263$:
      0092B6 A3 02 10         [ 2] 1178 	cpw	x, #0x0210
      0092B9 26 03            [ 1] 1179 	jrne	00265$
      0092BB A6 01            [ 1] 1180 	ld	a, #0x01
      0092BD 21                    1181 	.byte 0x21
      0092BE                       1182 00265$:
      0092BE 4F               [ 1] 1183 	clr	a
      0092BF                       1184 00266$:
      0092BF A3 00 80         [ 2] 1185 	cpw	x, #0x0080
      0092C2 27 42            [ 1] 1186 	jreq	00126$
      0092C4 A3 00 40         [ 2] 1187 	cpw	x, #0x0040
      0092C7 27 3D            [ 1] 1188 	jreq	00126$
      0092C9 A3 00 20         [ 2] 1189 	cpw	x, #0x0020
      0092CC 27 38            [ 1] 1190 	jreq	00126$
      0092CE A3 00 10         [ 2] 1191 	cpw	x, #0x0010
      0092D1 27 33            [ 1] 1192 	jreq	00126$
      0092D3 A3 00 08         [ 2] 1193 	cpw	x, #0x0008
      0092D6 27 2E            [ 1] 1194 	jreq	00126$
      0092D8 A3 00 04         [ 2] 1195 	cpw	x, #0x0004
      0092DB 27 29            [ 1] 1196 	jreq	00126$
      0092DD A3 00 02         [ 2] 1197 	cpw	x, #0x0002
      0092E0 27 24            [ 1] 1198 	jreq	00126$
      0092E2 5A               [ 2] 1199 	decw	x
      0092E3 27 21            [ 1] 1200 	jreq	00126$
      0092E5 0D 01            [ 1] 1201 	tnz	(0x01, sp)
      0092E7 26 1D            [ 1] 1202 	jrne	00126$
      0092E9 0D 02            [ 1] 1203 	tnz	(0x02, sp)
      0092EB 26 19            [ 1] 1204 	jrne	00126$
      0092ED 0D 03            [ 1] 1205 	tnz	(0x03, sp)
      0092EF 26 15            [ 1] 1206 	jrne	00126$
      0092F1 4D               [ 1] 1207 	tnz	a
      0092F2 26 12            [ 1] 1208 	jrne	00126$
      0092F4 88               [ 1] 1209 	push	a
      0092F5 90 89            [ 2] 1210 	pushw	y
      0092F7 4B 63            [ 1] 1211 	push	#0x63
      0092F9 4B 02            [ 1] 1212 	push	#0x02
      0092FB 5F               [ 1] 1213 	clrw	x
      0092FC 89               [ 2] 1214 	pushw	x
      0092FD AE 81 D7         [ 2] 1215 	ldw	x, #(___str_0+0)
      009300 CD AA 17         [ 4] 1216 	call	_assert_failed
      009303 90 85            [ 2] 1217 	popw	y
      009305 84               [ 1] 1218 	pop	a
      009306                       1219 00126$:
                                   1220 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      009306 61               [ 1] 1221 	exg	a, yl
      009307 6B 04            [ 1] 1222 	ld	(0x04, sp), a
      009309 61               [ 1] 1223 	exg	a, yl
                                   1224 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
      00930A 4D               [ 1] 1225 	tnz	a
      00930B 27 0E            [ 1] 1226 	jreq	00121$
                                   1227 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00930D C6 52 47         [ 1] 1228 	ld	a, 0x5247
      009310 14 04            [ 1] 1229 	and	a, (0x04, sp)
      009312 27 04            [ 1] 1230 	jreq	00102$
                                   1231 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 619: status = SET;
      009314 A6 01            [ 1] 1232 	ld	a, #0x01
      009316 20 36            [ 2] 1233 	jra	00122$
      009318                       1234 00102$:
                                   1235 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 624: status = RESET;
      009318 4F               [ 1] 1236 	clr	a
      009319 20 33            [ 2] 1237 	jra	00122$
      00931B                       1238 00121$:
                                   1239 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
      00931B 7B 01            [ 1] 1240 	ld	a, (0x01, sp)
      00931D 27 0E            [ 1] 1241 	jreq	00118$
                                   1242 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00931F C6 52 45         [ 1] 1243 	ld	a, 0x5245
      009322 14 04            [ 1] 1244 	and	a, (0x04, sp)
      009324 27 04            [ 1] 1245 	jreq	00105$
                                   1246 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 632: status = SET;
      009326 A6 01            [ 1] 1247 	ld	a, #0x01
      009328 20 24            [ 2] 1248 	jra	00122$
      00932A                       1249 00105$:
                                   1250 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 637: status = RESET;
      00932A 4F               [ 1] 1251 	clr	a
      00932B 20 21            [ 2] 1252 	jra	00122$
      00932D                       1253 00118$:
                                   1254 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
      00932D 7B 03            [ 1] 1255 	ld	a, (0x03, sp)
      00932F 26 04            [ 1] 1256 	jrne	00113$
      009331 7B 02            [ 1] 1257 	ld	a, (0x02, sp)
      009333 27 0E            [ 1] 1258 	jreq	00114$
      009335                       1259 00113$:
                                   1260 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      009335 C6 52 49         [ 1] 1261 	ld	a, 0x5249
      009338 14 04            [ 1] 1262 	and	a, (0x04, sp)
      00933A 27 04            [ 1] 1263 	jreq	00108$
                                   1264 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 645: status = SET;
      00933C A6 01            [ 1] 1265 	ld	a, #0x01
      00933E 20 0E            [ 2] 1266 	jra	00122$
      009340                       1267 00108$:
                                   1268 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 650: status = RESET;
      009340 4F               [ 1] 1269 	clr	a
      009341 20 0B            [ 2] 1270 	jra	00122$
      009343                       1271 00114$:
                                   1272 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      009343 C6 52 40         [ 1] 1273 	ld	a, 0x5240
      009346 14 04            [ 1] 1274 	and	a, (0x04, sp)
      009348 27 03            [ 1] 1275 	jreq	00111$
                                   1276 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 658: status = SET;
      00934A A6 01            [ 1] 1277 	ld	a, #0x01
                                   1278 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 663: status = RESET;
      00934C 21                    1279 	.byte 0x21
      00934D                       1280 00111$:
      00934D 4F               [ 1] 1281 	clr	a
      00934E                       1282 00122$:
                                   1283 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 668: return  status;
                                   1284 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 669: }
      00934E 5B 04            [ 2] 1285 	addw	sp, #4
      009350 81               [ 4] 1286 	ret
                                   1287 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
                                   1288 ;	-----------------------------------------
                                   1289 ;	 function UART2_ClearFlag
                                   1290 ;	-----------------------------------------
      009351                       1291 _UART2_ClearFlag:
      009351 52 03            [ 2] 1292 	sub	sp, #3
                                   1293 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 701: assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
      009353 A3 00 20         [ 2] 1294 	cpw	x, #0x0020
      009356 26 05            [ 1] 1295 	jrne	00159$
      009358 A6 01            [ 1] 1296 	ld	a, #0x01
      00935A 6B 01            [ 1] 1297 	ld	(0x01, sp), a
      00935C C5                    1298 	.byte 0xc5
      00935D                       1299 00159$:
      00935D 0F 01            [ 1] 1300 	clr	(0x01, sp)
      00935F                       1301 00160$:
      00935F A3 03 02         [ 2] 1302 	cpw	x, #0x0302
      009362 26 05            [ 1] 1303 	jrne	00162$
      009364 A6 01            [ 1] 1304 	ld	a, #0x01
      009366 6B 02            [ 1] 1305 	ld	(0x02, sp), a
      009368 C5                    1306 	.byte 0xc5
      009369                       1307 00162$:
      009369 0F 02            [ 1] 1308 	clr	(0x02, sp)
      00936B                       1309 00163$:
      00936B A3 02 10         [ 2] 1310 	cpw	x, #0x0210
      00936E 26 05            [ 1] 1311 	jrne	00165$
      009370 A6 01            [ 1] 1312 	ld	a, #0x01
      009372 6B 03            [ 1] 1313 	ld	(0x03, sp), a
      009374 C5                    1314 	.byte 0xc5
      009375                       1315 00165$:
      009375 0F 03            [ 1] 1316 	clr	(0x03, sp)
      009377                       1317 00166$:
      009377 0D 01            [ 1] 1318 	tnz	(0x01, sp)
      009379 26 19            [ 1] 1319 	jrne	00113$
      00937B 0D 02            [ 1] 1320 	tnz	(0x02, sp)
      00937D 26 15            [ 1] 1321 	jrne	00113$
      00937F A3 03 01         [ 2] 1322 	cpw	x, #0x0301
      009382 27 10            [ 1] 1323 	jreq	00113$
      009384 0D 03            [ 1] 1324 	tnz	(0x03, sp)
      009386 26 0C            [ 1] 1325 	jrne	00113$
      009388 4B BD            [ 1] 1326 	push	#0xbd
      00938A 4B 02            [ 1] 1327 	push	#0x02
      00938C 5F               [ 1] 1328 	clrw	x
      00938D 89               [ 2] 1329 	pushw	x
      00938E AE 81 D7         [ 2] 1330 	ldw	x, #(___str_0+0)
      009391 CD AA 17         [ 4] 1331 	call	_assert_failed
      009394                       1332 00113$:
                                   1333 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
      009394 7B 01            [ 1] 1334 	ld	a, (0x01, sp)
      009396 27 06            [ 1] 1335 	jreq	00108$
                                   1336 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      009398 35 DF 52 40      [ 1] 1337 	mov	0x5240+0, #0xdf
      00939C 20 20            [ 2] 1338 	jra	00110$
      00939E                       1339 00108$:
                                   1340 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
      00939E 7B 03            [ 1] 1341 	ld	a, (0x03, sp)
      0093A0 27 06            [ 1] 1342 	jreq	00105$
                                   1343 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
      0093A2 72 19 52 47      [ 1] 1344 	bres	0x5247, #4
      0093A6 20 16            [ 2] 1345 	jra	00110$
      0093A8                       1346 00105$:
                                   1347 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      0093A8 C6 52 49         [ 1] 1348 	ld	a, 0x5249
      0093AB 97               [ 1] 1349 	ld	xl, a
                                   1350 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
      0093AC 7B 02            [ 1] 1351 	ld	a, (0x02, sp)
      0093AE 27 08            [ 1] 1352 	jreq	00102$
                                   1353 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      0093B0 9F               [ 1] 1354 	ld	a, xl
      0093B1 A4 FD            [ 1] 1355 	and	a, #0xfd
      0093B3 C7 52 49         [ 1] 1356 	ld	0x5249, a
      0093B6 20 06            [ 2] 1357 	jra	00110$
      0093B8                       1358 00102$:
                                   1359 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
      0093B8 9F               [ 1] 1360 	ld	a, xl
      0093B9 A4 FE            [ 1] 1361 	and	a, #0xfe
      0093BB C7 52 49         [ 1] 1362 	ld	0x5249, a
      0093BE                       1363 00110$:
                                   1364 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 723: }
      0093BE 5B 03            [ 2] 1365 	addw	sp, #3
      0093C0 81               [ 4] 1366 	ret
                                   1367 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
                                   1368 ;	-----------------------------------------
                                   1369 ;	 function UART2_GetITStatus
                                   1370 ;	-----------------------------------------
      0093C1                       1371 _UART2_GetITStatus:
      0093C1 52 05            [ 2] 1372 	sub	sp, #5
                                   1373 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 747: assert_param(IS_UART2_GET_IT_OK(UART2_IT));
      0093C3 90 93            [ 1] 1374 	ldw	y, x
      0093C5 A3 03 46         [ 2] 1375 	cpw	x, #0x0346
      0093C8 26 05            [ 1] 1376 	jrne	00247$
      0093CA A6 01            [ 1] 1377 	ld	a, #0x01
      0093CC 6B 01            [ 1] 1378 	ld	(0x01, sp), a
      0093CE C5                    1379 	.byte 0xc5
      0093CF                       1380 00247$:
      0093CF 0F 01            [ 1] 1381 	clr	(0x01, sp)
      0093D1                       1382 00248$:
      0093D1 A3 04 12         [ 2] 1383 	cpw	x, #0x0412
      0093D4 26 05            [ 1] 1384 	jrne	00250$
      0093D6 A6 01            [ 1] 1385 	ld	a, #0x01
      0093D8 6B 02            [ 1] 1386 	ld	(0x02, sp), a
      0093DA C5                    1387 	.byte 0xc5
      0093DB                       1388 00250$:
      0093DB 0F 02            [ 1] 1389 	clr	(0x02, sp)
      0093DD                       1390 00251$:
      0093DD A3 01 00         [ 2] 1391 	cpw	x, #0x0100
      0093E0 26 05            [ 1] 1392 	jrne	00253$
      0093E2 A6 01            [ 1] 1393 	ld	a, #0x01
      0093E4 6B 03            [ 1] 1394 	ld	(0x03, sp), a
      0093E6 C5                    1395 	.byte 0xc5
      0093E7                       1396 00253$:
      0093E7 0F 03            [ 1] 1397 	clr	(0x03, sp)
      0093E9                       1398 00254$:
      0093E9 A3 02 77         [ 2] 1399 	cpw	x, #0x0277
      0093EC 27 30            [ 1] 1400 	jreq	00129$
      0093EE A3 02 66         [ 2] 1401 	cpw	x, #0x0266
      0093F1 27 2B            [ 1] 1402 	jreq	00129$
      0093F3 A3 02 55         [ 2] 1403 	cpw	x, #0x0255
      0093F6 27 26            [ 1] 1404 	jreq	00129$
      0093F8 A3 02 44         [ 2] 1405 	cpw	x, #0x0244
      0093FB 27 21            [ 1] 1406 	jreq	00129$
      0093FD A3 02 35         [ 2] 1407 	cpw	x, #0x0235
      009400 27 1C            [ 1] 1408 	jreq	00129$
      009402 0D 01            [ 1] 1409 	tnz	(0x01, sp)
      009404 26 18            [ 1] 1410 	jrne	00129$
      009406 0D 02            [ 1] 1411 	tnz	(0x02, sp)
      009408 26 14            [ 1] 1412 	jrne	00129$
      00940A 0D 03            [ 1] 1413 	tnz	(0x03, sp)
      00940C 26 10            [ 1] 1414 	jrne	00129$
      00940E 90 89            [ 2] 1415 	pushw	y
      009410 4B EB            [ 1] 1416 	push	#0xeb
      009412 4B 02            [ 1] 1417 	push	#0x02
      009414 5F               [ 1] 1418 	clrw	x
      009415 89               [ 2] 1419 	pushw	x
      009416 AE 81 D7         [ 2] 1420 	ldw	x, #(___str_0+0)
      009419 CD AA 17         [ 4] 1421 	call	_assert_failed
      00941C 90 85            [ 2] 1422 	popw	y
      00941E                       1423 00129$:
                                   1424 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      00941E 93               [ 1] 1425 	ldw	x, y
      00941F 9F               [ 1] 1426 	ld	a, xl
      009420 A4 0F            [ 1] 1427 	and	a, #0x0f
      009422 88               [ 1] 1428 	push	a
      009423 A6 01            [ 1] 1429 	ld	a, #0x01
      009425 6B 05            [ 1] 1430 	ld	(0x05, sp), a
      009427 84               [ 1] 1431 	pop	a
      009428 4D               [ 1] 1432 	tnz	a
      009429 27 05            [ 1] 1433 	jreq	00274$
      00942B                       1434 00273$:
      00942B 08 04            [ 1] 1435 	sll	(0x04, sp)
      00942D 4A               [ 1] 1436 	dec	a
      00942E 26 FB            [ 1] 1437 	jrne	00273$
      009430                       1438 00274$:
                                   1439 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
      009430 9F               [ 1] 1440 	ld	a, xl
      009431 4E               [ 1] 1441 	swap	a
      009432 A4 0F            [ 1] 1442 	and	a, #0x0f
                                   1443 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      009434 88               [ 1] 1444 	push	a
      009435 A6 01            [ 1] 1445 	ld	a, #0x01
      009437 6B 06            [ 1] 1446 	ld	(0x06, sp), a
      009439 84               [ 1] 1447 	pop	a
      00943A 4D               [ 1] 1448 	tnz	a
      00943B 27 05            [ 1] 1449 	jreq	00276$
      00943D                       1450 00275$:
      00943D 08 05            [ 1] 1451 	sll	(0x05, sp)
      00943F 4A               [ 1] 1452 	dec	a
      009440 26 FB            [ 1] 1453 	jrne	00275$
      009442                       1454 00276$:
                                   1455 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
      009442 7B 03            [ 1] 1456 	ld	a, (0x03, sp)
      009444 27 18            [ 1] 1457 	jreq	00124$
                                   1458 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
      009446 C6 52 44         [ 1] 1459 	ld	a, 0x5244
      009449 14 05            [ 1] 1460 	and	a, (0x05, sp)
      00944B 97               [ 1] 1461 	ld	xl, a
                                   1462 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00944C C6 52 40         [ 1] 1463 	ld	a, 0x5240
      00944F 14 04            [ 1] 1464 	and	a, (0x04, sp)
      009451 27 08            [ 1] 1465 	jreq	00102$
      009453 9F               [ 1] 1466 	ld	a, xl
      009454 4D               [ 1] 1467 	tnz	a
      009455 27 04            [ 1] 1468 	jreq	00102$
                                   1469 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 766: pendingbitstatus = SET;
      009457 A6 01            [ 1] 1470 	ld	a, #0x01
      009459 20 50            [ 2] 1471 	jra	00125$
      00945B                       1472 00102$:
                                   1473 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 771: pendingbitstatus = RESET;
      00945B 4F               [ 1] 1474 	clr	a
      00945C 20 4D            [ 2] 1475 	jra	00125$
      00945E                       1476 00124$:
                                   1477 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
      00945E 7B 01            [ 1] 1478 	ld	a, (0x01, sp)
      009460 27 18            [ 1] 1479 	jreq	00121$
                                   1480 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
      009462 C6 52 47         [ 1] 1481 	ld	a, 0x5247
      009465 14 05            [ 1] 1482 	and	a, (0x05, sp)
      009467 97               [ 1] 1483 	ld	xl, a
                                   1484 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      009468 C6 52 47         [ 1] 1485 	ld	a, 0x5247
      00946B 14 04            [ 1] 1486 	and	a, (0x04, sp)
      00946D 27 08            [ 1] 1487 	jreq	00106$
      00946F 9F               [ 1] 1488 	ld	a, xl
      009470 4D               [ 1] 1489 	tnz	a
      009471 27 04            [ 1] 1490 	jreq	00106$
                                   1491 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 782: pendingbitstatus = SET;
      009473 A6 01            [ 1] 1492 	ld	a, #0x01
      009475 20 34            [ 2] 1493 	jra	00125$
      009477                       1494 00106$:
                                   1495 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 787: pendingbitstatus = RESET;
      009477 4F               [ 1] 1496 	clr	a
      009478 20 31            [ 2] 1497 	jra	00125$
      00947A                       1498 00121$:
                                   1499 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
      00947A 7B 02            [ 1] 1500 	ld	a, (0x02, sp)
      00947C 27 18            [ 1] 1501 	jreq	00118$
                                   1502 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
      00947E C6 52 49         [ 1] 1503 	ld	a, 0x5249
      009481 14 05            [ 1] 1504 	and	a, (0x05, sp)
      009483 97               [ 1] 1505 	ld	xl, a
                                   1506 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
      009484 C6 52 49         [ 1] 1507 	ld	a, 0x5249
      009487 14 04            [ 1] 1508 	and	a, (0x04, sp)
      009489 27 08            [ 1] 1509 	jreq	00110$
      00948B 9F               [ 1] 1510 	ld	a, xl
      00948C 4D               [ 1] 1511 	tnz	a
      00948D 27 04            [ 1] 1512 	jreq	00110$
                                   1513 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 798: pendingbitstatus = SET;
      00948F A6 01            [ 1] 1514 	ld	a, #0x01
      009491 20 18            [ 2] 1515 	jra	00125$
      009493                       1516 00110$:
                                   1517 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 803: pendingbitstatus = RESET;
      009493 4F               [ 1] 1518 	clr	a
      009494 20 15            [ 2] 1519 	jra	00125$
      009496                       1520 00118$:
                                   1521 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
      009496 C6 52 45         [ 1] 1522 	ld	a, 0x5245
      009499 14 05            [ 1] 1523 	and	a, (0x05, sp)
      00949B 97               [ 1] 1524 	ld	xl, a
                                   1525 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00949C C6 52 40         [ 1] 1526 	ld	a, 0x5240
      00949F 14 04            [ 1] 1527 	and	a, (0x04, sp)
      0094A1 27 07            [ 1] 1528 	jreq	00114$
      0094A3 9F               [ 1] 1529 	ld	a, xl
      0094A4 4D               [ 1] 1530 	tnz	a
      0094A5 27 03            [ 1] 1531 	jreq	00114$
                                   1532 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 814: pendingbitstatus = SET;
      0094A7 A6 01            [ 1] 1533 	ld	a, #0x01
                                   1534 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 819: pendingbitstatus = RESET;
      0094A9 21                    1535 	.byte 0x21
      0094AA                       1536 00114$:
      0094AA 4F               [ 1] 1537 	clr	a
      0094AB                       1538 00125$:
                                   1539 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 823: return  pendingbitstatus;
                                   1540 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 824: }
      0094AB 5B 05            [ 2] 1541 	addw	sp, #5
      0094AD 81               [ 4] 1542 	ret
                                   1543 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
                                   1544 ;	-----------------------------------------
                                   1545 ;	 function UART2_ClearITPendingBit
                                   1546 ;	-----------------------------------------
      0094AE                       1547 _UART2_ClearITPendingBit:
      0094AE 88               [ 1] 1548 	push	a
                                   1549 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 854: assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
      0094AF A3 02 55         [ 2] 1550 	cpw	x, #0x0255
      0094B2 26 03            [ 1] 1551 	jrne	00143$
      0094B4 A6 01            [ 1] 1552 	ld	a, #0x01
      0094B6 21                    1553 	.byte 0x21
      0094B7                       1554 00143$:
      0094B7 4F               [ 1] 1555 	clr	a
      0094B8                       1556 00144$:
      0094B8 A3 03 46         [ 2] 1557 	cpw	x, #0x0346
      0094BB 26 07            [ 1] 1558 	jrne	00146$
      0094BD 88               [ 1] 1559 	push	a
      0094BE A6 01            [ 1] 1560 	ld	a, #0x01
      0094C0 6B 02            [ 1] 1561 	ld	(0x02, sp), a
      0094C2 84               [ 1] 1562 	pop	a
      0094C3 C5                    1563 	.byte 0xc5
      0094C4                       1564 00146$:
      0094C4 0F 01            [ 1] 1565 	clr	(0x01, sp)
      0094C6                       1566 00147$:
      0094C6 4D               [ 1] 1567 	tnz	a
      0094C7 26 17            [ 1] 1568 	jrne	00110$
      0094C9 A3 04 12         [ 2] 1569 	cpw	x, #0x0412
      0094CC 27 12            [ 1] 1570 	jreq	00110$
      0094CE 0D 01            [ 1] 1571 	tnz	(0x01, sp)
      0094D0 26 0E            [ 1] 1572 	jrne	00110$
      0094D2 88               [ 1] 1573 	push	a
      0094D3 4B 56            [ 1] 1574 	push	#0x56
      0094D5 4B 03            [ 1] 1575 	push	#0x03
      0094D7 5F               [ 1] 1576 	clrw	x
      0094D8 89               [ 2] 1577 	pushw	x
      0094D9 AE 81 D7         [ 2] 1578 	ldw	x, #(___str_0+0)
      0094DC CD AA 17         [ 4] 1579 	call	_assert_failed
      0094DF 84               [ 1] 1580 	pop	a
      0094E0                       1581 00110$:
                                   1582 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
      0094E0 4D               [ 1] 1583 	tnz	a
      0094E1 27 06            [ 1] 1584 	jreq	00105$
                                   1585 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      0094E3 35 DF 52 40      [ 1] 1586 	mov	0x5240+0, #0xdf
      0094E7 20 0E            [ 2] 1587 	jra	00107$
      0094E9                       1588 00105$:
                                   1589 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
      0094E9 7B 01            [ 1] 1590 	ld	a, (0x01, sp)
      0094EB 27 06            [ 1] 1591 	jreq	00102$
                                   1592 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
      0094ED 72 19 52 47      [ 1] 1593 	bres	0x5247, #4
      0094F1 20 04            [ 2] 1594 	jra	00107$
      0094F3                       1595 00102$:
                                   1596 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      0094F3 72 13 52 49      [ 1] 1597 	bres	0x5249, #1
      0094F7                       1598 00107$:
                                   1599 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart2.c: 871: }
      0094F7 84               [ 1] 1600 	pop	a
      0094F8 81               [ 4] 1601 	ret
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
