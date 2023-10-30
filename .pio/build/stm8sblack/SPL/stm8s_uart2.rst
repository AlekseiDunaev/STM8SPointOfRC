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
      0090E4                         79 _UART2_DeInit:
                                     80 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 57: (void) UART2->SR;
      0090E4 C6 52 40         [ 1]   81 	ld	a, 0x5240
                                     82 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 58: (void)UART2->DR;
      0090E7 C6 52 41         [ 1]   83 	ld	a, 0x5241
                                     84 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
      0090EA 35 00 52 43      [ 1]   85 	mov	0x5243+0, #0x00
                                     86 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
      0090EE 35 00 52 42      [ 1]   87 	mov	0x5242+0, #0x00
                                     88 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
      0090F2 35 00 52 44      [ 1]   89 	mov	0x5244+0, #0x00
                                     90 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
      0090F6 35 00 52 45      [ 1]   91 	mov	0x5245+0, #0x00
                                     92 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
      0090FA 35 00 52 46      [ 1]   93 	mov	0x5246+0, #0x00
                                     94 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
      0090FE 35 00 52 47      [ 1]   95 	mov	0x5247+0, #0x00
                                     96 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
      009102 35 00 52 48      [ 1]   97 	mov	0x5248+0, #0x00
                                     98 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
      009106 35 00 52 49      [ 1]   99 	mov	0x5249+0, #0x00
                                    100 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 69: }
      00910A 81               [ 4]  101 	ret
                                    102 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
                                    103 ;	-----------------------------------------
                                    104 ;	 function UART2_Init
                                    105 ;	-----------------------------------------
      00910B                        106 _UART2_Init:
      00910B 52 0C            [ 2]  107 	sub	sp, #12
                                    108 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 91: assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
      00910D AE 89 68         [ 2]  109 	ldw	x, #0x8968
      009110 13 11            [ 2]  110 	cpw	x, (0x11, sp)
      009112 A6 09            [ 1]  111 	ld	a, #0x09
      009114 12 10            [ 1]  112 	sbc	a, (0x10, sp)
      009116 4F               [ 1]  113 	clr	a
      009117 12 0F            [ 1]  114 	sbc	a, (0x0f, sp)
      009119 24 0C            [ 1]  115 	jrnc	00113$
      00911B 4B 5B            [ 1]  116 	push	#0x5b
      00911D 5F               [ 1]  117 	clrw	x
      00911E 89               [ 2]  118 	pushw	x
      00911F 4B 00            [ 1]  119 	push	#0x00
      009121 AE 81 E9         [ 2]  120 	ldw	x, #(___str_0+0)
      009124 CD AA 54         [ 4]  121 	call	_assert_failed
      009127                        122 00113$:
                                    123 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 92: assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
      009127 0D 13            [ 1]  124 	tnz	(0x13, sp)
      009129 27 12            [ 1]  125 	jreq	00115$
      00912B 7B 13            [ 1]  126 	ld	a, (0x13, sp)
      00912D A1 10            [ 1]  127 	cp	a, #0x10
      00912F 27 0C            [ 1]  128 	jreq	00115$
      009131 4B 5C            [ 1]  129 	push	#0x5c
      009133 5F               [ 1]  130 	clrw	x
      009134 89               [ 2]  131 	pushw	x
      009135 4B 00            [ 1]  132 	push	#0x00
      009137 AE 81 E9         [ 2]  133 	ldw	x, #(___str_0+0)
      00913A CD AA 54         [ 4]  134 	call	_assert_failed
      00913D                        135 00115$:
                                    136 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 93: assert_param(IS_UART2_STOPBITS_OK(StopBits));
      00913D 0D 14            [ 1]  137 	tnz	(0x14, sp)
      00913F 27 1E            [ 1]  138 	jreq	00120$
      009141 7B 14            [ 1]  139 	ld	a, (0x14, sp)
      009143 A1 10            [ 1]  140 	cp	a, #0x10
      009145 27 18            [ 1]  141 	jreq	00120$
      009147 7B 14            [ 1]  142 	ld	a, (0x14, sp)
      009149 A1 20            [ 1]  143 	cp	a, #0x20
      00914B 27 12            [ 1]  144 	jreq	00120$
      00914D 7B 14            [ 1]  145 	ld	a, (0x14, sp)
      00914F A1 30            [ 1]  146 	cp	a, #0x30
      009151 27 0C            [ 1]  147 	jreq	00120$
      009153 4B 5D            [ 1]  148 	push	#0x5d
      009155 5F               [ 1]  149 	clrw	x
      009156 89               [ 2]  150 	pushw	x
      009157 4B 00            [ 1]  151 	push	#0x00
      009159 AE 81 E9         [ 2]  152 	ldw	x, #(___str_0+0)
      00915C CD AA 54         [ 4]  153 	call	_assert_failed
      00915F                        154 00120$:
                                    155 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 94: assert_param(IS_UART2_PARITY_OK(Parity));
      00915F 0D 15            [ 1]  156 	tnz	(0x15, sp)
      009161 27 18            [ 1]  157 	jreq	00131$
      009163 7B 15            [ 1]  158 	ld	a, (0x15, sp)
      009165 A1 04            [ 1]  159 	cp	a, #0x04
      009167 27 12            [ 1]  160 	jreq	00131$
      009169 7B 15            [ 1]  161 	ld	a, (0x15, sp)
      00916B A1 06            [ 1]  162 	cp	a, #0x06
      00916D 27 0C            [ 1]  163 	jreq	00131$
      00916F 4B 5E            [ 1]  164 	push	#0x5e
      009171 5F               [ 1]  165 	clrw	x
      009172 89               [ 2]  166 	pushw	x
      009173 4B 00            [ 1]  167 	push	#0x00
      009175 AE 81 E9         [ 2]  168 	ldw	x, #(___str_0+0)
      009178 CD AA 54         [ 4]  169 	call	_assert_failed
      00917B                        170 00131$:
                                    171 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 95: assert_param(IS_UART2_MODE_OK((uint8_t)Mode));
      00917B 7B 17            [ 1]  172 	ld	a, (0x17, sp)
      00917D A1 08            [ 1]  173 	cp	a, #0x08
      00917F 27 3F            [ 1]  174 	jreq	00139$
      009181 7B 17            [ 1]  175 	ld	a, (0x17, sp)
      009183 A1 40            [ 1]  176 	cp	a, #0x40
      009185 27 39            [ 1]  177 	jreq	00139$
      009187 7B 17            [ 1]  178 	ld	a, (0x17, sp)
      009189 A1 04            [ 1]  179 	cp	a, #0x04
      00918B 27 33            [ 1]  180 	jreq	00139$
      00918D 7B 17            [ 1]  181 	ld	a, (0x17, sp)
      00918F A1 80            [ 1]  182 	cp	a, #0x80
      009191 27 2D            [ 1]  183 	jreq	00139$
      009193 7B 17            [ 1]  184 	ld	a, (0x17, sp)
      009195 A0 0C            [ 1]  185 	sub	a, #0x0c
      009197 26 02            [ 1]  186 	jrne	00339$
      009199 4C               [ 1]  187 	inc	a
      00919A 21                     188 	.byte 0x21
      00919B                        189 00339$:
      00919B 4F               [ 1]  190 	clr	a
      00919C                        191 00340$:
      00919C 4D               [ 1]  192 	tnz	a
      00919D 26 21            [ 1]  193 	jrne	00139$
      00919F 4D               [ 1]  194 	tnz	a
      0091A0 26 1E            [ 1]  195 	jrne	00139$
      0091A2 7B 17            [ 1]  196 	ld	a, (0x17, sp)
      0091A4 A1 44            [ 1]  197 	cp	a, #0x44
      0091A6 27 18            [ 1]  198 	jreq	00139$
      0091A8 7B 17            [ 1]  199 	ld	a, (0x17, sp)
      0091AA A1 C0            [ 1]  200 	cp	a, #0xc0
      0091AC 27 12            [ 1]  201 	jreq	00139$
      0091AE 7B 17            [ 1]  202 	ld	a, (0x17, sp)
      0091B0 A1 88            [ 1]  203 	cp	a, #0x88
      0091B2 27 0C            [ 1]  204 	jreq	00139$
      0091B4 4B 5F            [ 1]  205 	push	#0x5f
      0091B6 5F               [ 1]  206 	clrw	x
      0091B7 89               [ 2]  207 	pushw	x
      0091B8 4B 00            [ 1]  208 	push	#0x00
      0091BA AE 81 E9         [ 2]  209 	ldw	x, #(___str_0+0)
      0091BD CD AA 54         [ 4]  210 	call	_assert_failed
      0091C0                        211 00139$:
                                    212 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 96: assert_param(IS_UART2_SYNCMODE_OK((uint8_t)SyncMode));
      0091C0 7B 16            [ 1]  213 	ld	a, (0x16, sp)
      0091C2 43               [ 1]  214 	cpl	a
      0091C3 A5 88            [ 1]  215 	bcp	a, #0x88
      0091C5 27 15            [ 1]  216 	jreq	00167$
      0091C7 7B 16            [ 1]  217 	ld	a, (0x16, sp)
      0091C9 43               [ 1]  218 	cpl	a
      0091CA A5 44            [ 1]  219 	bcp	a, #0x44
      0091CC 27 0E            [ 1]  220 	jreq	00167$
      0091CE 7B 16            [ 1]  221 	ld	a, (0x16, sp)
      0091D0 43               [ 1]  222 	cpl	a
      0091D1 A5 22            [ 1]  223 	bcp	a, #0x22
      0091D3 27 07            [ 1]  224 	jreq	00167$
      0091D5 7B 16            [ 1]  225 	ld	a, (0x16, sp)
      0091D7 43               [ 1]  226 	cpl	a
      0091D8 A5 11            [ 1]  227 	bcp	a, #0x11
      0091DA 26 0C            [ 1]  228 	jrne	00165$
      0091DC                        229 00167$:
      0091DC 4B 60            [ 1]  230 	push	#0x60
      0091DE 5F               [ 1]  231 	clrw	x
      0091DF 89               [ 2]  232 	pushw	x
      0091E0 4B 00            [ 1]  233 	push	#0x00
      0091E2 AE 81 E9         [ 2]  234 	ldw	x, #(___str_0+0)
      0091E5 CD AA 54         [ 4]  235 	call	_assert_failed
      0091E8                        236 00165$:
                                    237 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
      0091E8 72 19 52 44      [ 1]  238 	bres	0x5244, #4
                                    239 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
      0091EC C6 52 44         [ 1]  240 	ld	a, 0x5244
      0091EF 1A 13            [ 1]  241 	or	a, (0x13, sp)
      0091F1 C7 52 44         [ 1]  242 	ld	0x5244, a
                                    243 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      0091F4 C6 52 46         [ 1]  244 	ld	a, 0x5246
      0091F7 A4 CF            [ 1]  245 	and	a, #0xcf
      0091F9 C7 52 46         [ 1]  246 	ld	0x5246, a
                                    247 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
      0091FC C6 52 46         [ 1]  248 	ld	a, 0x5246
      0091FF 1A 14            [ 1]  249 	or	a, (0x14, sp)
      009201 C7 52 46         [ 1]  250 	ld	0x5246, a
                                    251 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
      009204 C6 52 44         [ 1]  252 	ld	a, 0x5244
      009207 A4 F9            [ 1]  253 	and	a, #0xf9
      009209 C7 52 44         [ 1]  254 	ld	0x5244, a
                                    255 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
      00920C C6 52 44         [ 1]  256 	ld	a, 0x5244
      00920F 1A 15            [ 1]  257 	or	a, (0x15, sp)
      009211 C7 52 44         [ 1]  258 	ld	0x5244, a
                                    259 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
      009214 C6 52 42         [ 1]  260 	ld	a, 0x5242
      009217 35 00 52 42      [ 1]  261 	mov	0x5242+0, #0x00
                                    262 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
      00921B C6 52 43         [ 1]  263 	ld	a, 0x5243
      00921E A4 0F            [ 1]  264 	and	a, #0x0f
      009220 C7 52 43         [ 1]  265 	ld	0x5243, a
                                    266 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
      009223 C6 52 43         [ 1]  267 	ld	a, 0x5243
      009226 A4 F0            [ 1]  268 	and	a, #0xf0
      009228 C7 52 43         [ 1]  269 	ld	0x5243, a
                                    270 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      00922B CD 87 9E         [ 4]  271 	call	_CLK_GetClockFreq
      00922E 1F 0B            [ 2]  272 	ldw	(0x0b, sp), x
      009230 1E 0F            [ 2]  273 	ldw	x, (0x0f, sp)
      009232 1F 05            [ 2]  274 	ldw	(0x05, sp), x
      009234 1E 11            [ 2]  275 	ldw	x, (0x11, sp)
      009236 A6 04            [ 1]  276 	ld	a, #0x04
      009238                        277 00364$:
      009238 58               [ 2]  278 	sllw	x
      009239 09 06            [ 1]  279 	rlc	(0x06, sp)
      00923B 09 05            [ 1]  280 	rlc	(0x05, sp)
      00923D 4A               [ 1]  281 	dec	a
      00923E 26 F8            [ 1]  282 	jrne	00364$
      009240 1F 07            [ 2]  283 	ldw	(0x07, sp), x
      009242 89               [ 2]  284 	pushw	x
      009243 1E 07            [ 2]  285 	ldw	x, (0x07, sp)
      009245 89               [ 2]  286 	pushw	x
      009246 1E 0F            [ 2]  287 	ldw	x, (0x0f, sp)
      009248 89               [ 2]  288 	pushw	x
      009249 90 89            [ 2]  289 	pushw	y
      00924B CD B1 36         [ 4]  290 	call	__divulong
      00924E 5B 08            [ 2]  291 	addw	sp, #8
      009250 1F 03            [ 2]  292 	ldw	(0x03, sp), x
      009252 17 01            [ 2]  293 	ldw	(0x01, sp), y
                                    294 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      009254 CD 87 9E         [ 4]  295 	call	_CLK_GetClockFreq
      009257 89               [ 2]  296 	pushw	x
      009258 90 89            [ 2]  297 	pushw	y
      00925A 4B 64            [ 1]  298 	push	#0x64
      00925C 5F               [ 1]  299 	clrw	x
      00925D 89               [ 2]  300 	pushw	x
      00925E 4B 00            [ 1]  301 	push	#0x00
      009260 CD B4 09         [ 4]  302 	call	__mullong
      009263 5B 08            [ 2]  303 	addw	sp, #8
      009265 1F 0B            [ 2]  304 	ldw	(0x0b, sp), x
      009267 1E 07            [ 2]  305 	ldw	x, (0x07, sp)
      009269 89               [ 2]  306 	pushw	x
      00926A 1E 07            [ 2]  307 	ldw	x, (0x07, sp)
      00926C 89               [ 2]  308 	pushw	x
      00926D 1E 0F            [ 2]  309 	ldw	x, (0x0f, sp)
      00926F 89               [ 2]  310 	pushw	x
      009270 90 89            [ 2]  311 	pushw	y
      009272 CD B1 36         [ 4]  312 	call	__divulong
      009275 5B 08            [ 2]  313 	addw	sp, #8
      009277 90 9E            [ 1]  314 	ld	a, yh
      009279 1F 07            [ 2]  315 	ldw	(0x07, sp), x
      00927B 6B 05            [ 1]  316 	ld	(0x05, sp), a
      00927D 90 9F            [ 1]  317 	ld	a, yl
                                    318 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
      00927F 88               [ 1]  319 	push	a
      009280 1E 04            [ 2]  320 	ldw	x, (0x04, sp)
      009282 89               [ 2]  321 	pushw	x
      009283 1E 04            [ 2]  322 	ldw	x, (0x04, sp)
      009285 89               [ 2]  323 	pushw	x
      009286 4B 64            [ 1]  324 	push	#0x64
      009288 5F               [ 1]  325 	clrw	x
      009289 89               [ 2]  326 	pushw	x
      00928A 4B 00            [ 1]  327 	push	#0x00
      00928C CD B4 09         [ 4]  328 	call	__mullong
      00928F 5B 08            [ 2]  329 	addw	sp, #8
      009291 1F 0C            [ 2]  330 	ldw	(0x0c, sp), x
      009293 17 0A            [ 2]  331 	ldw	(0x0a, sp), y
      009295 84               [ 1]  332 	pop	a
      009296 16 07            [ 2]  333 	ldw	y, (0x07, sp)
      009298 72 F2 0B         [ 2]  334 	subw	y, (0x0b, sp)
      00929B 12 0A            [ 1]  335 	sbc	a, (0x0a, sp)
      00929D 97               [ 1]  336 	ld	xl, a
      00929E 7B 05            [ 1]  337 	ld	a, (0x05, sp)
      0092A0 12 09            [ 1]  338 	sbc	a, (0x09, sp)
      0092A2 95               [ 1]  339 	ld	xh, a
      0092A3 A6 04            [ 1]  340 	ld	a, #0x04
      0092A5                        341 00366$:
      0092A5 90 58            [ 2]  342 	sllw	y
      0092A7 59               [ 2]  343 	rlcw	x
      0092A8 4A               [ 1]  344 	dec	a
      0092A9 26 FA            [ 1]  345 	jrne	00366$
      0092AB 4B 64            [ 1]  346 	push	#0x64
      0092AD 4B 00            [ 1]  347 	push	#0x00
      0092AF 4B 00            [ 1]  348 	push	#0x00
      0092B1 4B 00            [ 1]  349 	push	#0x00
      0092B3 90 89            [ 2]  350 	pushw	y
      0092B5 89               [ 2]  351 	pushw	x
      0092B6 CD B1 36         [ 4]  352 	call	__divulong
      0092B9 5B 08            [ 2]  353 	addw	sp, #8
      0092BB 9F               [ 1]  354 	ld	a, xl
      0092BC A4 0F            [ 1]  355 	and	a, #0x0f
      0092BE 6B 0C            [ 1]  356 	ld	(0x0c, sp), a
                                    357 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
      0092C0 1E 03            [ 2]  358 	ldw	x, (0x03, sp)
      0092C2 A6 10            [ 1]  359 	ld	a, #0x10
      0092C4 62               [ 2]  360 	div	x, a
      0092C5 90 93            [ 1]  361 	ldw	y, x
      0092C7 9F               [ 1]  362 	ld	a, xl
      0092C8 A4 F0            [ 1]  363 	and	a, #0xf0
                                    364 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
      0092CA 1A 0C            [ 1]  365 	or	a, (0x0c, sp)
      0092CC C7 52 43         [ 1]  366 	ld	0x5243, a
                                    367 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
      0092CF 7B 04            [ 1]  368 	ld	a, (0x04, sp)
      0092D1 C7 52 42         [ 1]  369 	ld	0x5242, a
                                    370 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      0092D4 C6 52 45         [ 1]  371 	ld	a, 0x5245
      0092D7 A4 F3            [ 1]  372 	and	a, #0xf3
      0092D9 C7 52 45         [ 1]  373 	ld	0x5245, a
                                    374 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
      0092DC C6 52 46         [ 1]  375 	ld	a, 0x5246
      0092DF A4 F8            [ 1]  376 	and	a, #0xf8
      0092E1 C7 52 46         [ 1]  377 	ld	0x5246, a
                                    378 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
      0092E4 C6 52 46         [ 1]  379 	ld	a, 0x5246
      0092E7 6B 0C            [ 1]  380 	ld	(0x0c, sp), a
      0092E9 7B 16            [ 1]  381 	ld	a, (0x16, sp)
      0092EB A4 07            [ 1]  382 	and	a, #0x07
      0092ED 1A 0C            [ 1]  383 	or	a, (0x0c, sp)
      0092EF C7 52 46         [ 1]  384 	ld	0x5246, a
                                    385 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      0092F2 C6 52 45         [ 1]  386 	ld	a, 0x5245
                                    387 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
      0092F5 88               [ 1]  388 	push	a
      0092F6 7B 18            [ 1]  389 	ld	a, (0x18, sp)
      0092F8 A5 04            [ 1]  390 	bcp	a, #0x04
      0092FA 84               [ 1]  391 	pop	a
      0092FB 27 07            [ 1]  392 	jreq	00102$
                                    393 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
      0092FD AA 08            [ 1]  394 	or	a, #0x08
      0092FF C7 52 45         [ 1]  395 	ld	0x5245, a
      009302 20 05            [ 2]  396 	jra	00103$
      009304                        397 00102$:
                                    398 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
      009304 A4 F7            [ 1]  399 	and	a, #0xf7
      009306 C7 52 45         [ 1]  400 	ld	0x5245, a
      009309                        401 00103$:
                                    402 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      009309 C6 52 45         [ 1]  403 	ld	a, 0x5245
                                    404 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
      00930C 88               [ 1]  405 	push	a
      00930D 7B 18            [ 1]  406 	ld	a, (0x18, sp)
      00930F A5 08            [ 1]  407 	bcp	a, #0x08
      009311 84               [ 1]  408 	pop	a
      009312 27 07            [ 1]  409 	jreq	00105$
                                    410 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
      009314 AA 04            [ 1]  411 	or	a, #0x04
      009316 C7 52 45         [ 1]  412 	ld	0x5245, a
      009319 20 05            [ 2]  413 	jra	00106$
      00931B                        414 00105$:
                                    415 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
      00931B A4 FB            [ 1]  416 	and	a, #0xfb
      00931D C7 52 45         [ 1]  417 	ld	0x5245, a
      009320                        418 00106$:
                                    419 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      009320 C6 52 46         [ 1]  420 	ld	a, 0x5246
                                    421 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
      009323 0D 16            [ 1]  422 	tnz	(0x16, sp)
      009325 2A 07            [ 1]  423 	jrpl	00108$
                                    424 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
      009327 A4 F7            [ 1]  425 	and	a, #0xf7
      009329 C7 52 46         [ 1]  426 	ld	0x5246, a
      00932C 20 0D            [ 2]  427 	jra	00110$
      00932E                        428 00108$:
                                    429 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
      00932E 88               [ 1]  430 	push	a
      00932F 7B 17            [ 1]  431 	ld	a, (0x17, sp)
      009331 A4 08            [ 1]  432 	and	a, #0x08
      009333 6B 0D            [ 1]  433 	ld	(0x0d, sp), a
      009335 84               [ 1]  434 	pop	a
      009336 1A 0C            [ 1]  435 	or	a, (0x0c, sp)
      009338 C7 52 46         [ 1]  436 	ld	0x5246, a
      00933B                        437 00110$:
                                    438 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 173: }
      00933B 1E 0D            [ 2]  439 	ldw	x, (13, sp)
      00933D 5B 17            [ 2]  440 	addw	sp, #23
      00933F FC               [ 2]  441 	jp	(x)
                                    442 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
                                    443 ;	-----------------------------------------
                                    444 ;	 function UART2_Cmd
                                    445 ;	-----------------------------------------
      009340                        446 _UART2_Cmd:
      009340 88               [ 1]  447 	push	a
      009341 6B 01            [ 1]  448 	ld	(0x01, sp), a
                                    449 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      009343 C6 52 44         [ 1]  450 	ld	a, 0x5244
                                    451 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 183: if (NewState != DISABLE)
      009346 0D 01            [ 1]  452 	tnz	(0x01, sp)
      009348 27 07            [ 1]  453 	jreq	00102$
                                    454 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      00934A A4 DF            [ 1]  455 	and	a, #0xdf
      00934C C7 52 44         [ 1]  456 	ld	0x5244, a
      00934F 20 05            [ 2]  457 	jra	00104$
      009351                        458 00102$:
                                    459 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
      009351 AA 20            [ 1]  460 	or	a, #0x20
      009353 C7 52 44         [ 1]  461 	ld	0x5244, a
      009356                        462 00104$:
                                    463 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 193: }
      009356 84               [ 1]  464 	pop	a
      009357 81               [ 4]  465 	ret
                                    466 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
                                    467 ;	-----------------------------------------
                                    468 ;	 function UART2_ITConfig
                                    469 ;	-----------------------------------------
      009358                        470 _UART2_ITConfig:
      009358 52 07            [ 2]  471 	sub	sp, #7
      00935A 1F 06            [ 2]  472 	ldw	(0x06, sp), x
      00935C 6B 05            [ 1]  473 	ld	(0x05, sp), a
                                    474 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 215: assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
      00935E 1E 06            [ 2]  475 	ldw	x, (0x06, sp)
      009360 A3 01 00         [ 2]  476 	cpw	x, #0x0100
      009363 27 2E            [ 1]  477 	jreq	00125$
      009365 A3 02 77         [ 2]  478 	cpw	x, #0x0277
      009368 27 29            [ 1]  479 	jreq	00125$
      00936A A3 02 66         [ 2]  480 	cpw	x, #0x0266
      00936D 27 24            [ 1]  481 	jreq	00125$
      00936F A3 02 05         [ 2]  482 	cpw	x, #0x0205
      009372 27 1F            [ 1]  483 	jreq	00125$
      009374 A3 02 44         [ 2]  484 	cpw	x, #0x0244
      009377 27 1A            [ 1]  485 	jreq	00125$
      009379 A3 04 12         [ 2]  486 	cpw	x, #0x0412
      00937C 27 15            [ 1]  487 	jreq	00125$
      00937E A3 03 46         [ 2]  488 	cpw	x, #0x0346
      009381 27 10            [ 1]  489 	jreq	00125$
      009383 89               [ 2]  490 	pushw	x
      009384 4B D7            [ 1]  491 	push	#0xd7
      009386 4B 00            [ 1]  492 	push	#0x00
      009388 4B 00            [ 1]  493 	push	#0x00
      00938A 4B 00            [ 1]  494 	push	#0x00
      00938C AE 81 E9         [ 2]  495 	ldw	x, #(___str_0+0)
      00938F CD AA 54         [ 4]  496 	call	_assert_failed
      009392 85               [ 2]  497 	popw	x
      009393                        498 00125$:
                                    499 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009393 0D 05            [ 1]  500 	tnz	(0x05, sp)
      009395 27 15            [ 1]  501 	jreq	00145$
      009397 7B 05            [ 1]  502 	ld	a, (0x05, sp)
      009399 4A               [ 1]  503 	dec	a
      00939A 27 10            [ 1]  504 	jreq	00145$
      00939C 89               [ 2]  505 	pushw	x
      00939D 4B D8            [ 1]  506 	push	#0xd8
      00939F 4B 00            [ 1]  507 	push	#0x00
      0093A1 4B 00            [ 1]  508 	push	#0x00
      0093A3 4B 00            [ 1]  509 	push	#0x00
      0093A5 AE 81 E9         [ 2]  510 	ldw	x, #(___str_0+0)
      0093A8 CD AA 54         [ 4]  511 	call	_assert_failed
      0093AB 85               [ 2]  512 	popw	x
      0093AC                        513 00145$:
                                    514 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
                                    515 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      0093AC 7B 07            [ 1]  516 	ld	a, (0x07, sp)
      0093AE A4 0F            [ 1]  517 	and	a, #0x0f
      0093B0 88               [ 1]  518 	push	a
      0093B1 A6 01            [ 1]  519 	ld	a, #0x01
      0093B3 6B 05            [ 1]  520 	ld	(0x05, sp), a
      0093B5 84               [ 1]  521 	pop	a
      0093B6 4D               [ 1]  522 	tnz	a
      0093B7 27 05            [ 1]  523 	jreq	00255$
      0093B9                        524 00254$:
      0093B9 08 04            [ 1]  525 	sll	(0x04, sp)
      0093BB 4A               [ 1]  526 	dec	a
      0093BC 26 FB            [ 1]  527 	jrne	00254$
      0093BE                        528 00255$:
                                    529 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
      0093BE 9E               [ 1]  530 	ld	a, xh
      0093BF 4A               [ 1]  531 	dec	a
      0093C0 26 05            [ 1]  532 	jrne	00257$
      0093C2 A6 01            [ 1]  533 	ld	a, #0x01
      0093C4 6B 01            [ 1]  534 	ld	(0x01, sp), a
      0093C6 C5                     535 	.byte 0xc5
      0093C7                        536 00257$:
      0093C7 0F 01            [ 1]  537 	clr	(0x01, sp)
      0093C9                        538 00258$:
                                    539 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
      0093C9 9E               [ 1]  540 	ld	a, xh
      0093CA A0 02            [ 1]  541 	sub	a, #0x02
      0093CC 26 04            [ 1]  542 	jrne	00260$
      0093CE 4C               [ 1]  543 	inc	a
      0093CF 6B 02            [ 1]  544 	ld	(0x02, sp), a
      0093D1 C5                     545 	.byte 0xc5
      0093D2                        546 00260$:
      0093D2 0F 02            [ 1]  547 	clr	(0x02, sp)
      0093D4                        548 00261$:
                                    549 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
      0093D4 9E               [ 1]  550 	ld	a, xh
      0093D5 A0 03            [ 1]  551 	sub	a, #0x03
      0093D7 26 04            [ 1]  552 	jrne	00263$
      0093D9 4C               [ 1]  553 	inc	a
      0093DA 6B 03            [ 1]  554 	ld	(0x03, sp), a
      0093DC C5                     555 	.byte 0xc5
      0093DD                        556 00263$:
      0093DD 0F 03            [ 1]  557 	clr	(0x03, sp)
      0093DF                        558 00264$:
                                    559 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 224: if (NewState != DISABLE)
      0093DF 0D 05            [ 1]  560 	tnz	(0x05, sp)
      0093E1 27 34            [ 1]  561 	jreq	00120$
                                    562 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
      0093E3 0D 01            [ 1]  563 	tnz	(0x01, sp)
      0093E5 27 0A            [ 1]  564 	jreq	00108$
                                    565 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 229: UART2->CR1 |= itpos;
      0093E7 C6 52 44         [ 1]  566 	ld	a, 0x5244
      0093EA 1A 04            [ 1]  567 	or	a, (0x04, sp)
      0093EC C7 52 44         [ 1]  568 	ld	0x5244, a
      0093EF 20 5C            [ 2]  569 	jra	00122$
      0093F1                        570 00108$:
                                    571 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
      0093F1 0D 02            [ 1]  572 	tnz	(0x02, sp)
      0093F3 27 0A            [ 1]  573 	jreq	00105$
                                    574 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 233: UART2->CR2 |= itpos;
      0093F5 C6 52 45         [ 1]  575 	ld	a, 0x5245
      0093F8 1A 04            [ 1]  576 	or	a, (0x04, sp)
      0093FA C7 52 45         [ 1]  577 	ld	0x5245, a
      0093FD 20 4E            [ 2]  578 	jra	00122$
      0093FF                        579 00105$:
                                    580 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
      0093FF 0D 03            [ 1]  581 	tnz	(0x03, sp)
      009401 27 0A            [ 1]  582 	jreq	00102$
                                    583 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 237: UART2->CR4 |= itpos;
      009403 C6 52 47         [ 1]  584 	ld	a, 0x5247
      009406 1A 04            [ 1]  585 	or	a, (0x04, sp)
      009408 C7 52 47         [ 1]  586 	ld	0x5247, a
      00940B 20 40            [ 2]  587 	jra	00122$
      00940D                        588 00102$:
                                    589 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 241: UART2->CR6 |= itpos;
      00940D C6 52 49         [ 1]  590 	ld	a, 0x5249
      009410 1A 04            [ 1]  591 	or	a, (0x04, sp)
      009412 C7 52 49         [ 1]  592 	ld	0x5249, a
      009415 20 36            [ 2]  593 	jra	00122$
      009417                        594 00120$:
                                    595 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      009417 03 04            [ 1]  596 	cpl	(0x04, sp)
                                    597 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 247: if (uartreg == 0x01)
      009419 0D 01            [ 1]  598 	tnz	(0x01, sp)
      00941B 27 0C            [ 1]  599 	jreq	00117$
                                    600 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      00941D C6 52 44         [ 1]  601 	ld	a, 0x5244
      009420 6B 03            [ 1]  602 	ld	(0x03, sp), a
      009422 14 04            [ 1]  603 	and	a, (0x04, sp)
      009424 C7 52 44         [ 1]  604 	ld	0x5244, a
      009427 20 24            [ 2]  605 	jra	00122$
      009429                        606 00117$:
                                    607 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 251: else if (uartreg == 0x02)
      009429 0D 02            [ 1]  608 	tnz	(0x02, sp)
      00942B 27 0A            [ 1]  609 	jreq	00114$
                                    610 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
      00942D C6 52 45         [ 1]  611 	ld	a, 0x5245
      009430 14 04            [ 1]  612 	and	a, (0x04, sp)
      009432 C7 52 45         [ 1]  613 	ld	0x5245, a
      009435 20 16            [ 2]  614 	jra	00122$
      009437                        615 00114$:
                                    616 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 255: else if (uartreg == 0x03)
      009437 0D 03            [ 1]  617 	tnz	(0x03, sp)
      009439 27 0A            [ 1]  618 	jreq	00111$
                                    619 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
      00943B C6 52 47         [ 1]  620 	ld	a, 0x5247
      00943E 14 04            [ 1]  621 	and	a, (0x04, sp)
      009440 C7 52 47         [ 1]  622 	ld	0x5247, a
      009443 20 08            [ 2]  623 	jra	00122$
      009445                        624 00111$:
                                    625 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
      009445 C6 52 49         [ 1]  626 	ld	a, 0x5249
      009448 14 04            [ 1]  627 	and	a, (0x04, sp)
      00944A C7 52 49         [ 1]  628 	ld	0x5249, a
      00944D                        629 00122$:
                                    630 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 264: }
      00944D 5B 07            [ 2]  631 	addw	sp, #7
      00944F 81               [ 4]  632 	ret
                                    633 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
                                    634 ;	-----------------------------------------
                                    635 ;	 function UART2_IrDAConfig
                                    636 ;	-----------------------------------------
      009450                        637 _UART2_IrDAConfig:
      009450 88               [ 1]  638 	push	a
                                    639 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 274: assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
      009451 6B 01            [ 1]  640 	ld	(0x01, sp), a
      009453 4A               [ 1]  641 	dec	a
      009454 27 10            [ 1]  642 	jreq	00107$
      009456 0D 01            [ 1]  643 	tnz	(0x01, sp)
      009458 27 0C            [ 1]  644 	jreq	00107$
      00945A 4B 12            [ 1]  645 	push	#0x12
      00945C 4B 01            [ 1]  646 	push	#0x01
      00945E 5F               [ 1]  647 	clrw	x
      00945F 89               [ 2]  648 	pushw	x
      009460 AE 81 E9         [ 2]  649 	ldw	x, #(___str_0+0)
      009463 CD AA 54         [ 4]  650 	call	_assert_failed
      009466                        651 00107$:
                                    652 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      009466 C6 52 48         [ 1]  653 	ld	a, 0x5248
                                    654 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
      009469 0D 01            [ 1]  655 	tnz	(0x01, sp)
      00946B 27 07            [ 1]  656 	jreq	00102$
                                    657 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      00946D AA 04            [ 1]  658 	or	a, #0x04
      00946F C7 52 48         [ 1]  659 	ld	0x5248, a
      009472 20 05            [ 2]  660 	jra	00104$
      009474                        661 00102$:
                                    662 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
      009474 A4 FB            [ 1]  663 	and	a, #0xfb
      009476 C7 52 48         [ 1]  664 	ld	0x5248, a
      009479                        665 00104$:
                                    666 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 284: }
      009479 84               [ 1]  667 	pop	a
      00947A 81               [ 4]  668 	ret
                                    669 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
                                    670 ;	-----------------------------------------
                                    671 ;	 function UART2_IrDACmd
                                    672 ;	-----------------------------------------
      00947B                        673 _UART2_IrDACmd:
      00947B 88               [ 1]  674 	push	a
                                    675 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 295: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00947C 6B 01            [ 1]  676 	ld	(0x01, sp), a
      00947E 27 11            [ 1]  677 	jreq	00107$
      009480 7B 01            [ 1]  678 	ld	a, (0x01, sp)
      009482 4A               [ 1]  679 	dec	a
      009483 27 0C            [ 1]  680 	jreq	00107$
      009485 4B 27            [ 1]  681 	push	#0x27
      009487 4B 01            [ 1]  682 	push	#0x01
      009489 5F               [ 1]  683 	clrw	x
      00948A 89               [ 2]  684 	pushw	x
      00948B AE 81 E9         [ 2]  685 	ldw	x, #(___str_0+0)
      00948E CD AA 54         [ 4]  686 	call	_assert_failed
      009491                        687 00107$:
                                    688 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      009491 C6 52 48         [ 1]  689 	ld	a, 0x5248
                                    690 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 297: if (NewState != DISABLE)
      009494 0D 01            [ 1]  691 	tnz	(0x01, sp)
      009496 27 07            [ 1]  692 	jreq	00102$
                                    693 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      009498 AA 02            [ 1]  694 	or	a, #0x02
      00949A C7 52 48         [ 1]  695 	ld	0x5248, a
      00949D 20 05            [ 2]  696 	jra	00104$
      00949F                        697 00102$:
                                    698 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
      00949F A4 FD            [ 1]  699 	and	a, #0xfd
      0094A1 C7 52 48         [ 1]  700 	ld	0x5248, a
      0094A4                        701 00104$:
                                    702 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 307: }
      0094A4 84               [ 1]  703 	pop	a
      0094A5 81               [ 4]  704 	ret
                                    705 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
                                    706 ;	-----------------------------------------
                                    707 ;	 function UART2_LINBreakDetectionConfig
                                    708 ;	-----------------------------------------
      0094A6                        709 _UART2_LINBreakDetectionConfig:
      0094A6 88               [ 1]  710 	push	a
                                    711 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 319: assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
      0094A7 6B 01            [ 1]  712 	ld	(0x01, sp), a
      0094A9 27 11            [ 1]  713 	jreq	00107$
      0094AB 7B 01            [ 1]  714 	ld	a, (0x01, sp)
      0094AD 4A               [ 1]  715 	dec	a
      0094AE 27 0C            [ 1]  716 	jreq	00107$
      0094B0 4B 3F            [ 1]  717 	push	#0x3f
      0094B2 4B 01            [ 1]  718 	push	#0x01
      0094B4 5F               [ 1]  719 	clrw	x
      0094B5 89               [ 2]  720 	pushw	x
      0094B6 AE 81 E9         [ 2]  721 	ldw	x, #(___str_0+0)
      0094B9 CD AA 54         [ 4]  722 	call	_assert_failed
      0094BC                        723 00107$:
                                    724 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      0094BC C6 52 47         [ 1]  725 	ld	a, 0x5247
                                    726 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
      0094BF 0D 01            [ 1]  727 	tnz	(0x01, sp)
      0094C1 27 07            [ 1]  728 	jreq	00102$
                                    729 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      0094C3 AA 20            [ 1]  730 	or	a, #0x20
      0094C5 C7 52 47         [ 1]  731 	ld	0x5247, a
      0094C8 20 05            [ 2]  732 	jra	00104$
      0094CA                        733 00102$:
                                    734 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
      0094CA A4 DF            [ 1]  735 	and	a, #0xdf
      0094CC C7 52 47         [ 1]  736 	ld	0x5247, a
      0094CF                        737 00104$:
                                    738 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 329: }
      0094CF 84               [ 1]  739 	pop	a
      0094D0 81               [ 4]  740 	ret
                                    741 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
                                    742 ;	-----------------------------------------
                                    743 ;	 function UART2_LINConfig
                                    744 ;	-----------------------------------------
      0094D1                        745 _UART2_LINConfig:
      0094D1 88               [ 1]  746 	push	a
                                    747 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 346: assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
      0094D2 6B 01            [ 1]  748 	ld	(0x01, sp), a
      0094D4 27 11            [ 1]  749 	jreq	00113$
      0094D6 7B 01            [ 1]  750 	ld	a, (0x01, sp)
      0094D8 4A               [ 1]  751 	dec	a
      0094D9 27 0C            [ 1]  752 	jreq	00113$
      0094DB 4B 5A            [ 1]  753 	push	#0x5a
      0094DD 4B 01            [ 1]  754 	push	#0x01
      0094DF 5F               [ 1]  755 	clrw	x
      0094E0 89               [ 2]  756 	pushw	x
      0094E1 AE 81 E9         [ 2]  757 	ldw	x, #(___str_0+0)
      0094E4 CD AA 54         [ 4]  758 	call	_assert_failed
      0094E7                        759 00113$:
                                    760 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 347: assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
      0094E7 7B 04            [ 1]  761 	ld	a, (0x04, sp)
      0094E9 4A               [ 1]  762 	dec	a
      0094EA 27 10            [ 1]  763 	jreq	00118$
      0094EC 0D 04            [ 1]  764 	tnz	(0x04, sp)
      0094EE 27 0C            [ 1]  765 	jreq	00118$
      0094F0 4B 5B            [ 1]  766 	push	#0x5b
      0094F2 4B 01            [ 1]  767 	push	#0x01
      0094F4 5F               [ 1]  768 	clrw	x
      0094F5 89               [ 2]  769 	pushw	x
      0094F6 AE 81 E9         [ 2]  770 	ldw	x, #(___str_0+0)
      0094F9 CD AA 54         [ 4]  771 	call	_assert_failed
      0094FC                        772 00118$:
                                    773 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 348: assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
      0094FC 0D 05            [ 1]  774 	tnz	(0x05, sp)
      0094FE 27 11            [ 1]  775 	jreq	00123$
      009500 7B 05            [ 1]  776 	ld	a, (0x05, sp)
      009502 4A               [ 1]  777 	dec	a
      009503 27 0C            [ 1]  778 	jreq	00123$
      009505 4B 5C            [ 1]  779 	push	#0x5c
      009507 4B 01            [ 1]  780 	push	#0x01
      009509 5F               [ 1]  781 	clrw	x
      00950A 89               [ 2]  782 	pushw	x
      00950B AE 81 E9         [ 2]  783 	ldw	x, #(___str_0+0)
      00950E CD AA 54         [ 4]  784 	call	_assert_failed
      009511                        785 00123$:
                                    786 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      009511 C6 52 49         [ 1]  787 	ld	a, 0x5249
                                    788 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
      009514 0D 01            [ 1]  789 	tnz	(0x01, sp)
      009516 27 07            [ 1]  790 	jreq	00102$
                                    791 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      009518 AA 20            [ 1]  792 	or	a, #0x20
      00951A C7 52 49         [ 1]  793 	ld	0x5249, a
      00951D 20 05            [ 2]  794 	jra	00103$
      00951F                        795 00102$:
                                    796 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
      00951F A4 DF            [ 1]  797 	and	a, #0xdf
      009521 C7 52 49         [ 1]  798 	ld	0x5249, a
      009524                        799 00103$:
                                    800 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      009524 C6 52 49         [ 1]  801 	ld	a, 0x5249
                                    802 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
      009527 0D 04            [ 1]  803 	tnz	(0x04, sp)
      009529 27 07            [ 1]  804 	jreq	00105$
                                    805 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
      00952B AA 10            [ 1]  806 	or	a, #0x10
      00952D C7 52 49         [ 1]  807 	ld	0x5249, a
      009530 20 05            [ 2]  808 	jra	00106$
      009532                        809 00105$:
                                    810 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
      009532 A4 EF            [ 1]  811 	and	a, #0xef
      009534 C7 52 49         [ 1]  812 	ld	0x5249, a
      009537                        813 00106$:
                                    814 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      009537 C6 52 49         [ 1]  815 	ld	a, 0x5249
                                    816 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
      00953A 0D 05            [ 1]  817 	tnz	(0x05, sp)
      00953C 27 07            [ 1]  818 	jreq	00108$
                                    819 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
      00953E AA 80            [ 1]  820 	or	a, #0x80
      009540 C7 52 49         [ 1]  821 	ld	0x5249, a
      009543 20 05            [ 2]  822 	jra	00110$
      009545                        823 00108$:
                                    824 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
      009545 A4 7F            [ 1]  825 	and	a, #0x7f
      009547 C7 52 49         [ 1]  826 	ld	0x5249, a
      00954A                        827 00110$:
                                    828 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 376: }
      00954A 1E 02            [ 2]  829 	ldw	x, (2, sp)
      00954C 5B 05            [ 2]  830 	addw	sp, #5
      00954E FC               [ 2]  831 	jp	(x)
                                    832 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
                                    833 ;	-----------------------------------------
                                    834 ;	 function UART2_LINCmd
                                    835 ;	-----------------------------------------
      00954F                        836 _UART2_LINCmd:
      00954F 88               [ 1]  837 	push	a
                                    838 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 386: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009550 6B 01            [ 1]  839 	ld	(0x01, sp), a
      009552 27 11            [ 1]  840 	jreq	00107$
      009554 7B 01            [ 1]  841 	ld	a, (0x01, sp)
      009556 4A               [ 1]  842 	dec	a
      009557 27 0C            [ 1]  843 	jreq	00107$
      009559 4B 82            [ 1]  844 	push	#0x82
      00955B 4B 01            [ 1]  845 	push	#0x01
      00955D 5F               [ 1]  846 	clrw	x
      00955E 89               [ 2]  847 	pushw	x
      00955F AE 81 E9         [ 2]  848 	ldw	x, #(___str_0+0)
      009562 CD AA 54         [ 4]  849 	call	_assert_failed
      009565                        850 00107$:
                                    851 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      009565 C6 52 46         [ 1]  852 	ld	a, 0x5246
                                    853 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 388: if (NewState != DISABLE)
      009568 0D 01            [ 1]  854 	tnz	(0x01, sp)
      00956A 27 07            [ 1]  855 	jreq	00102$
                                    856 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      00956C AA 40            [ 1]  857 	or	a, #0x40
      00956E C7 52 46         [ 1]  858 	ld	0x5246, a
      009571 20 05            [ 2]  859 	jra	00104$
      009573                        860 00102$:
                                    861 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
      009573 A4 BF            [ 1]  862 	and	a, #0xbf
      009575 C7 52 46         [ 1]  863 	ld	0x5246, a
      009578                        864 00104$:
                                    865 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 398: }
      009578 84               [ 1]  866 	pop	a
      009579 81               [ 4]  867 	ret
                                    868 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
                                    869 ;	-----------------------------------------
                                    870 ;	 function UART2_SmartCardCmd
                                    871 ;	-----------------------------------------
      00957A                        872 _UART2_SmartCardCmd:
      00957A 88               [ 1]  873 	push	a
                                    874 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 409: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00957B 6B 01            [ 1]  875 	ld	(0x01, sp), a
      00957D 27 11            [ 1]  876 	jreq	00107$
      00957F 7B 01            [ 1]  877 	ld	a, (0x01, sp)
      009581 4A               [ 1]  878 	dec	a
      009582 27 0C            [ 1]  879 	jreq	00107$
      009584 4B 99            [ 1]  880 	push	#0x99
      009586 4B 01            [ 1]  881 	push	#0x01
      009588 5F               [ 1]  882 	clrw	x
      009589 89               [ 2]  883 	pushw	x
      00958A AE 81 E9         [ 2]  884 	ldw	x, #(___str_0+0)
      00958D CD AA 54         [ 4]  885 	call	_assert_failed
      009590                        886 00107$:
                                    887 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      009590 C6 52 48         [ 1]  888 	ld	a, 0x5248
                                    889 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 411: if (NewState != DISABLE)
      009593 0D 01            [ 1]  890 	tnz	(0x01, sp)
      009595 27 07            [ 1]  891 	jreq	00102$
                                    892 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      009597 AA 20            [ 1]  893 	or	a, #0x20
      009599 C7 52 48         [ 1]  894 	ld	0x5248, a
      00959C 20 05            [ 2]  895 	jra	00104$
      00959E                        896 00102$:
                                    897 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
      00959E A4 DF            [ 1]  898 	and	a, #0xdf
      0095A0 C7 52 48         [ 1]  899 	ld	0x5248, a
      0095A3                        900 00104$:
                                    901 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 421: }
      0095A3 84               [ 1]  902 	pop	a
      0095A4 81               [ 4]  903 	ret
                                    904 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
                                    905 ;	-----------------------------------------
                                    906 ;	 function UART2_SmartCardNACKCmd
                                    907 ;	-----------------------------------------
      0095A5                        908 _UART2_SmartCardNACKCmd:
      0095A5 88               [ 1]  909 	push	a
                                    910 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 432: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0095A6 6B 01            [ 1]  911 	ld	(0x01, sp), a
      0095A8 27 11            [ 1]  912 	jreq	00107$
      0095AA 7B 01            [ 1]  913 	ld	a, (0x01, sp)
      0095AC 4A               [ 1]  914 	dec	a
      0095AD 27 0C            [ 1]  915 	jreq	00107$
      0095AF 4B B0            [ 1]  916 	push	#0xb0
      0095B1 4B 01            [ 1]  917 	push	#0x01
      0095B3 5F               [ 1]  918 	clrw	x
      0095B4 89               [ 2]  919 	pushw	x
      0095B5 AE 81 E9         [ 2]  920 	ldw	x, #(___str_0+0)
      0095B8 CD AA 54         [ 4]  921 	call	_assert_failed
      0095BB                        922 00107$:
                                    923 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      0095BB C6 52 48         [ 1]  924 	ld	a, 0x5248
                                    925 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 434: if (NewState != DISABLE)
      0095BE 0D 01            [ 1]  926 	tnz	(0x01, sp)
      0095C0 27 07            [ 1]  927 	jreq	00102$
                                    928 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      0095C2 AA 10            [ 1]  929 	or	a, #0x10
      0095C4 C7 52 48         [ 1]  930 	ld	0x5248, a
      0095C7 20 05            [ 2]  931 	jra	00104$
      0095C9                        932 00102$:
                                    933 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
      0095C9 A4 EF            [ 1]  934 	and	a, #0xef
      0095CB C7 52 48         [ 1]  935 	ld	0x5248, a
      0095CE                        936 00104$:
                                    937 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 444: }
      0095CE 84               [ 1]  938 	pop	a
      0095CF 81               [ 4]  939 	ret
                                    940 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
                                    941 ;	-----------------------------------------
                                    942 ;	 function UART2_WakeUpConfig
                                    943 ;	-----------------------------------------
      0095D0                        944 _UART2_WakeUpConfig:
      0095D0 88               [ 1]  945 	push	a
                                    946 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 454: assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
      0095D1 6B 01            [ 1]  947 	ld	(0x01, sp), a
      0095D3 27 12            [ 1]  948 	jreq	00104$
      0095D5 7B 01            [ 1]  949 	ld	a, (0x01, sp)
      0095D7 A1 08            [ 1]  950 	cp	a, #0x08
      0095D9 27 0C            [ 1]  951 	jreq	00104$
      0095DB 4B C6            [ 1]  952 	push	#0xc6
      0095DD 4B 01            [ 1]  953 	push	#0x01
      0095DF 5F               [ 1]  954 	clrw	x
      0095E0 89               [ 2]  955 	pushw	x
      0095E1 AE 81 E9         [ 2]  956 	ldw	x, #(___str_0+0)
      0095E4 CD AA 54         [ 4]  957 	call	_assert_failed
      0095E7                        958 00104$:
                                    959 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
      0095E7 72 17 52 44      [ 1]  960 	bres	0x5244, #3
                                    961 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
      0095EB C6 52 44         [ 1]  962 	ld	a, 0x5244
      0095EE 1A 01            [ 1]  963 	or	a, (0x01, sp)
      0095F0 C7 52 44         [ 1]  964 	ld	0x5244, a
                                    965 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 458: }
      0095F3 84               [ 1]  966 	pop	a
      0095F4 81               [ 4]  967 	ret
                                    968 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
                                    969 ;	-----------------------------------------
                                    970 ;	 function UART2_ReceiverWakeUpCmd
                                    971 ;	-----------------------------------------
      0095F5                        972 _UART2_ReceiverWakeUpCmd:
      0095F5 88               [ 1]  973 	push	a
                                    974 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 468: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0095F6 6B 01            [ 1]  975 	ld	(0x01, sp), a
      0095F8 27 11            [ 1]  976 	jreq	00107$
      0095FA 7B 01            [ 1]  977 	ld	a, (0x01, sp)
      0095FC 4A               [ 1]  978 	dec	a
      0095FD 27 0C            [ 1]  979 	jreq	00107$
      0095FF 4B D4            [ 1]  980 	push	#0xd4
      009601 4B 01            [ 1]  981 	push	#0x01
      009603 5F               [ 1]  982 	clrw	x
      009604 89               [ 2]  983 	pushw	x
      009605 AE 81 E9         [ 2]  984 	ldw	x, #(___str_0+0)
      009608 CD AA 54         [ 4]  985 	call	_assert_failed
      00960B                        986 00107$:
                                    987 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      00960B C6 52 45         [ 1]  988 	ld	a, 0x5245
                                    989 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 470: if (NewState != DISABLE)
      00960E 0D 01            [ 1]  990 	tnz	(0x01, sp)
      009610 27 07            [ 1]  991 	jreq	00102$
                                    992 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      009612 AA 02            [ 1]  993 	or	a, #0x02
      009614 C7 52 45         [ 1]  994 	ld	0x5245, a
      009617 20 05            [ 2]  995 	jra	00104$
      009619                        996 00102$:
                                    997 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
      009619 A4 FD            [ 1]  998 	and	a, #0xfd
      00961B C7 52 45         [ 1]  999 	ld	0x5245, a
      00961E                       1000 00104$:
                                   1001 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 480: }
      00961E 84               [ 1] 1002 	pop	a
      00961F 81               [ 4] 1003 	ret
                                   1004 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
                                   1005 ;	-----------------------------------------
                                   1006 ;	 function UART2_ReceiveData8
                                   1007 ;	-----------------------------------------
      009620                       1008 _UART2_ReceiveData8:
                                   1009 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
      009620 C6 52 41         [ 1] 1010 	ld	a, 0x5241
                                   1011 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 490: }
      009623 81               [ 4] 1012 	ret
                                   1013 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
                                   1014 ;	-----------------------------------------
                                   1015 ;	 function UART2_ReceiveData9
                                   1016 ;	-----------------------------------------
      009624                       1017 _UART2_ReceiveData9:
      009624 89               [ 2] 1018 	pushw	x
                                   1019 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
      009625 C6 52 44         [ 1] 1020 	ld	a, 0x5244
      009628 A4 80            [ 1] 1021 	and	a, #0x80
      00962A 97               [ 1] 1022 	ld	xl, a
      00962B 4F               [ 1] 1023 	clr	a
      00962C 95               [ 1] 1024 	ld	xh, a
      00962D 58               [ 2] 1025 	sllw	x
      00962E 1F 01            [ 2] 1026 	ldw	(0x01, sp), x
                                   1027 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
      009630 C6 52 41         [ 1] 1028 	ld	a, 0x5241
      009633 5F               [ 1] 1029 	clrw	x
      009634 1A 02            [ 1] 1030 	or	a, (0x02, sp)
      009636 02               [ 1] 1031 	rlwa	x
      009637 1A 01            [ 1] 1032 	or	a, (0x01, sp)
      009639 A4 01            [ 1] 1033 	and	a, #0x01
      00963B 95               [ 1] 1034 	ld	xh, a
                                   1035 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 504: }
      00963C 5B 02            [ 2] 1036 	addw	sp, #2
      00963E 81               [ 4] 1037 	ret
                                   1038 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
                                   1039 ;	-----------------------------------------
                                   1040 ;	 function UART2_SendData8
                                   1041 ;	-----------------------------------------
      00963F                       1042 _UART2_SendData8:
                                   1043 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 514: UART2->DR = Data;
      00963F C7 52 41         [ 1] 1044 	ld	0x5241, a
                                   1045 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 515: }
      009642 81               [ 4] 1046 	ret
                                   1047 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
                                   1048 ;	-----------------------------------------
                                   1049 ;	 function UART2_SendData9
                                   1050 ;	-----------------------------------------
      009643                       1051 _UART2_SendData9:
      009643 88               [ 1] 1052 	push	a
      009644 51               [ 1] 1053 	exgw	x, y
                                   1054 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
      009645 72 1D 52 44      [ 1] 1055 	bres	0x5244, #6
                                   1056 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
      009649 C6 52 44         [ 1] 1057 	ld	a, 0x5244
      00964C 6B 01            [ 1] 1058 	ld	(0x01, sp), a
      00964E 93               [ 1] 1059 	ldw	x, y
      00964F 54               [ 2] 1060 	srlw	x
      009650 54               [ 2] 1061 	srlw	x
      009651 9F               [ 1] 1062 	ld	a, xl
      009652 A4 40            [ 1] 1063 	and	a, #0x40
      009654 1A 01            [ 1] 1064 	or	a, (0x01, sp)
      009656 C7 52 44         [ 1] 1065 	ld	0x5244, a
                                   1066 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
      009659 90 9F            [ 1] 1067 	ld	a, yl
      00965B C7 52 41         [ 1] 1068 	ld	0x5241, a
                                   1069 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 532: }
      00965E 84               [ 1] 1070 	pop	a
      00965F 81               [ 4] 1071 	ret
                                   1072 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 539: void UART2_SendBreak(void)
                                   1073 ;	-----------------------------------------
                                   1074 ;	 function UART2_SendBreak
                                   1075 ;	-----------------------------------------
      009660                       1076 _UART2_SendBreak:
                                   1077 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
      009660 72 10 52 45      [ 1] 1078 	bset	0x5245, #0
                                   1079 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 542: }
      009664 81               [ 4] 1080 	ret
                                   1081 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
                                   1082 ;	-----------------------------------------
                                   1083 ;	 function UART2_SetAddress
                                   1084 ;	-----------------------------------------
      009665                       1085 _UART2_SetAddress:
      009665 88               [ 1] 1086 	push	a
                                   1087 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 552: assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
      009666 6B 01            [ 1] 1088 	ld	(0x01, sp), a
      009668 A1 10            [ 1] 1089 	cp	a, #0x10
      00966A 25 0C            [ 1] 1090 	jrc	00104$
      00966C 4B 28            [ 1] 1091 	push	#0x28
      00966E 4B 02            [ 1] 1092 	push	#0x02
      009670 5F               [ 1] 1093 	clrw	x
      009671 89               [ 2] 1094 	pushw	x
      009672 AE 81 E9         [ 2] 1095 	ldw	x, #(___str_0+0)
      009675 CD AA 54         [ 4] 1096 	call	_assert_failed
      009678                       1097 00104$:
                                   1098 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
      009678 C6 52 47         [ 1] 1099 	ld	a, 0x5247
      00967B A4 F0            [ 1] 1100 	and	a, #0xf0
      00967D C7 52 47         [ 1] 1101 	ld	0x5247, a
                                   1102 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
      009680 C6 52 47         [ 1] 1103 	ld	a, 0x5247
      009683 1A 01            [ 1] 1104 	or	a, (0x01, sp)
      009685 C7 52 47         [ 1] 1105 	ld	0x5247, a
                                   1106 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 558: }
      009688 84               [ 1] 1107 	pop	a
      009689 81               [ 4] 1108 	ret
                                   1109 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
                                   1110 ;	-----------------------------------------
                                   1111 ;	 function UART2_SetGuardTime
                                   1112 ;	-----------------------------------------
      00968A                       1113 _UART2_SetGuardTime:
                                   1114 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
      00968A C7 52 4A         [ 1] 1115 	ld	0x524a, a
                                   1116 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 570: }
      00968D 81               [ 4] 1117 	ret
                                   1118 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
                                   1119 ;	-----------------------------------------
                                   1120 ;	 function UART2_SetPrescaler
                                   1121 ;	-----------------------------------------
      00968E                       1122 _UART2_SetPrescaler:
                                   1123 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
      00968E C7 52 4B         [ 1] 1124 	ld	0x524b, a
                                   1125 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 598: }
      009691 81               [ 4] 1126 	ret
                                   1127 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
                                   1128 ;	-----------------------------------------
                                   1129 ;	 function UART2_GetFlagStatus
                                   1130 ;	-----------------------------------------
      009692                       1131 _UART2_GetFlagStatus:
      009692 52 04            [ 2] 1132 	sub	sp, #4
                                   1133 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 611: assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
      009694 90 93            [ 1] 1134 	ldw	y, x
      009696 A3 01 01         [ 2] 1135 	cpw	x, #0x0101
      009699 26 05            [ 1] 1136 	jrne	00256$
      00969B A6 01            [ 1] 1137 	ld	a, #0x01
      00969D 6B 01            [ 1] 1138 	ld	(0x01, sp), a
      00969F C5                    1139 	.byte 0xc5
      0096A0                       1140 00256$:
      0096A0 0F 01            [ 1] 1141 	clr	(0x01, sp)
      0096A2                       1142 00257$:
      0096A2 A3 03 01         [ 2] 1143 	cpw	x, #0x0301
      0096A5 26 05            [ 1] 1144 	jrne	00259$
      0096A7 A6 01            [ 1] 1145 	ld	a, #0x01
      0096A9 6B 02            [ 1] 1146 	ld	(0x02, sp), a
      0096AB C5                    1147 	.byte 0xc5
      0096AC                       1148 00259$:
      0096AC 0F 02            [ 1] 1149 	clr	(0x02, sp)
      0096AE                       1150 00260$:
      0096AE A3 03 02         [ 2] 1151 	cpw	x, #0x0302
      0096B1 26 05            [ 1] 1152 	jrne	00262$
      0096B3 A6 01            [ 1] 1153 	ld	a, #0x01
      0096B5 6B 03            [ 1] 1154 	ld	(0x03, sp), a
      0096B7 C5                    1155 	.byte 0xc5
      0096B8                       1156 00262$:
      0096B8 0F 03            [ 1] 1157 	clr	(0x03, sp)
      0096BA                       1158 00263$:
      0096BA A3 02 10         [ 2] 1159 	cpw	x, #0x0210
      0096BD 26 03            [ 1] 1160 	jrne	00265$
      0096BF A6 01            [ 1] 1161 	ld	a, #0x01
      0096C1 21                    1162 	.byte 0x21
      0096C2                       1163 00265$:
      0096C2 4F               [ 1] 1164 	clr	a
      0096C3                       1165 00266$:
      0096C3 A3 00 80         [ 2] 1166 	cpw	x, #0x0080
      0096C6 27 42            [ 1] 1167 	jreq	00126$
      0096C8 A3 00 40         [ 2] 1168 	cpw	x, #0x0040
      0096CB 27 3D            [ 1] 1169 	jreq	00126$
      0096CD A3 00 20         [ 2] 1170 	cpw	x, #0x0020
      0096D0 27 38            [ 1] 1171 	jreq	00126$
      0096D2 A3 00 10         [ 2] 1172 	cpw	x, #0x0010
      0096D5 27 33            [ 1] 1173 	jreq	00126$
      0096D7 A3 00 08         [ 2] 1174 	cpw	x, #0x0008
      0096DA 27 2E            [ 1] 1175 	jreq	00126$
      0096DC A3 00 04         [ 2] 1176 	cpw	x, #0x0004
      0096DF 27 29            [ 1] 1177 	jreq	00126$
      0096E1 A3 00 02         [ 2] 1178 	cpw	x, #0x0002
      0096E4 27 24            [ 1] 1179 	jreq	00126$
      0096E6 5A               [ 2] 1180 	decw	x
      0096E7 27 21            [ 1] 1181 	jreq	00126$
      0096E9 0D 01            [ 1] 1182 	tnz	(0x01, sp)
      0096EB 26 1D            [ 1] 1183 	jrne	00126$
      0096ED 0D 02            [ 1] 1184 	tnz	(0x02, sp)
      0096EF 26 19            [ 1] 1185 	jrne	00126$
      0096F1 0D 03            [ 1] 1186 	tnz	(0x03, sp)
      0096F3 26 15            [ 1] 1187 	jrne	00126$
      0096F5 4D               [ 1] 1188 	tnz	a
      0096F6 26 12            [ 1] 1189 	jrne	00126$
      0096F8 88               [ 1] 1190 	push	a
      0096F9 90 89            [ 2] 1191 	pushw	y
      0096FB 4B 63            [ 1] 1192 	push	#0x63
      0096FD 4B 02            [ 1] 1193 	push	#0x02
      0096FF 5F               [ 1] 1194 	clrw	x
      009700 89               [ 2] 1195 	pushw	x
      009701 AE 81 E9         [ 2] 1196 	ldw	x, #(___str_0+0)
      009704 CD AA 54         [ 4] 1197 	call	_assert_failed
      009707 90 85            [ 2] 1198 	popw	y
      009709 84               [ 1] 1199 	pop	a
      00970A                       1200 00126$:
                                   1201 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00970A 61               [ 1] 1202 	exg	a, yl
      00970B 6B 04            [ 1] 1203 	ld	(0x04, sp), a
      00970D 61               [ 1] 1204 	exg	a, yl
                                   1205 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
      00970E 4D               [ 1] 1206 	tnz	a
      00970F 27 0E            [ 1] 1207 	jreq	00121$
                                   1208 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      009711 C6 52 47         [ 1] 1209 	ld	a, 0x5247
      009714 14 04            [ 1] 1210 	and	a, (0x04, sp)
      009716 27 04            [ 1] 1211 	jreq	00102$
                                   1212 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 619: status = SET;
      009718 A6 01            [ 1] 1213 	ld	a, #0x01
      00971A 20 36            [ 2] 1214 	jra	00122$
      00971C                       1215 00102$:
                                   1216 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 624: status = RESET;
      00971C 4F               [ 1] 1217 	clr	a
      00971D 20 33            [ 2] 1218 	jra	00122$
      00971F                       1219 00121$:
                                   1220 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
      00971F 7B 01            [ 1] 1221 	ld	a, (0x01, sp)
      009721 27 0E            [ 1] 1222 	jreq	00118$
                                   1223 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      009723 C6 52 45         [ 1] 1224 	ld	a, 0x5245
      009726 14 04            [ 1] 1225 	and	a, (0x04, sp)
      009728 27 04            [ 1] 1226 	jreq	00105$
                                   1227 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 632: status = SET;
      00972A A6 01            [ 1] 1228 	ld	a, #0x01
      00972C 20 24            [ 2] 1229 	jra	00122$
      00972E                       1230 00105$:
                                   1231 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 637: status = RESET;
      00972E 4F               [ 1] 1232 	clr	a
      00972F 20 21            [ 2] 1233 	jra	00122$
      009731                       1234 00118$:
                                   1235 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
      009731 7B 03            [ 1] 1236 	ld	a, (0x03, sp)
      009733 26 04            [ 1] 1237 	jrne	00113$
      009735 7B 02            [ 1] 1238 	ld	a, (0x02, sp)
      009737 27 0E            [ 1] 1239 	jreq	00114$
      009739                       1240 00113$:
                                   1241 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      009739 C6 52 49         [ 1] 1242 	ld	a, 0x5249
      00973C 14 04            [ 1] 1243 	and	a, (0x04, sp)
      00973E 27 04            [ 1] 1244 	jreq	00108$
                                   1245 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 645: status = SET;
      009740 A6 01            [ 1] 1246 	ld	a, #0x01
      009742 20 0E            [ 2] 1247 	jra	00122$
      009744                       1248 00108$:
                                   1249 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 650: status = RESET;
      009744 4F               [ 1] 1250 	clr	a
      009745 20 0B            [ 2] 1251 	jra	00122$
      009747                       1252 00114$:
                                   1253 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      009747 C6 52 40         [ 1] 1254 	ld	a, 0x5240
      00974A 14 04            [ 1] 1255 	and	a, (0x04, sp)
      00974C 27 03            [ 1] 1256 	jreq	00111$
                                   1257 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 658: status = SET;
      00974E A6 01            [ 1] 1258 	ld	a, #0x01
                                   1259 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 663: status = RESET;
      009750 21                    1260 	.byte 0x21
      009751                       1261 00111$:
      009751 4F               [ 1] 1262 	clr	a
      009752                       1263 00122$:
                                   1264 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 668: return  status;
                                   1265 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 669: }
      009752 5B 04            [ 2] 1266 	addw	sp, #4
      009754 81               [ 4] 1267 	ret
                                   1268 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
                                   1269 ;	-----------------------------------------
                                   1270 ;	 function UART2_ClearFlag
                                   1271 ;	-----------------------------------------
      009755                       1272 _UART2_ClearFlag:
      009755 52 03            [ 2] 1273 	sub	sp, #3
                                   1274 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 701: assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
      009757 A3 00 20         [ 2] 1275 	cpw	x, #0x0020
      00975A 26 05            [ 1] 1276 	jrne	00159$
      00975C A6 01            [ 1] 1277 	ld	a, #0x01
      00975E 6B 01            [ 1] 1278 	ld	(0x01, sp), a
      009760 C5                    1279 	.byte 0xc5
      009761                       1280 00159$:
      009761 0F 01            [ 1] 1281 	clr	(0x01, sp)
      009763                       1282 00160$:
      009763 A3 03 02         [ 2] 1283 	cpw	x, #0x0302
      009766 26 05            [ 1] 1284 	jrne	00162$
      009768 A6 01            [ 1] 1285 	ld	a, #0x01
      00976A 6B 02            [ 1] 1286 	ld	(0x02, sp), a
      00976C C5                    1287 	.byte 0xc5
      00976D                       1288 00162$:
      00976D 0F 02            [ 1] 1289 	clr	(0x02, sp)
      00976F                       1290 00163$:
      00976F A3 02 10         [ 2] 1291 	cpw	x, #0x0210
      009772 26 05            [ 1] 1292 	jrne	00165$
      009774 A6 01            [ 1] 1293 	ld	a, #0x01
      009776 6B 03            [ 1] 1294 	ld	(0x03, sp), a
      009778 C5                    1295 	.byte 0xc5
      009779                       1296 00165$:
      009779 0F 03            [ 1] 1297 	clr	(0x03, sp)
      00977B                       1298 00166$:
      00977B 0D 01            [ 1] 1299 	tnz	(0x01, sp)
      00977D 26 19            [ 1] 1300 	jrne	00113$
      00977F 0D 02            [ 1] 1301 	tnz	(0x02, sp)
      009781 26 15            [ 1] 1302 	jrne	00113$
      009783 A3 03 01         [ 2] 1303 	cpw	x, #0x0301
      009786 27 10            [ 1] 1304 	jreq	00113$
      009788 0D 03            [ 1] 1305 	tnz	(0x03, sp)
      00978A 26 0C            [ 1] 1306 	jrne	00113$
      00978C 4B BD            [ 1] 1307 	push	#0xbd
      00978E 4B 02            [ 1] 1308 	push	#0x02
      009790 5F               [ 1] 1309 	clrw	x
      009791 89               [ 2] 1310 	pushw	x
      009792 AE 81 E9         [ 2] 1311 	ldw	x, #(___str_0+0)
      009795 CD AA 54         [ 4] 1312 	call	_assert_failed
      009798                       1313 00113$:
                                   1314 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
      009798 7B 01            [ 1] 1315 	ld	a, (0x01, sp)
      00979A 27 06            [ 1] 1316 	jreq	00108$
                                   1317 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      00979C 35 DF 52 40      [ 1] 1318 	mov	0x5240+0, #0xdf
      0097A0 20 20            [ 2] 1319 	jra	00110$
      0097A2                       1320 00108$:
                                   1321 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
      0097A2 7B 03            [ 1] 1322 	ld	a, (0x03, sp)
      0097A4 27 06            [ 1] 1323 	jreq	00105$
                                   1324 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
      0097A6 72 19 52 47      [ 1] 1325 	bres	0x5247, #4
      0097AA 20 16            [ 2] 1326 	jra	00110$
      0097AC                       1327 00105$:
                                   1328 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      0097AC C6 52 49         [ 1] 1329 	ld	a, 0x5249
      0097AF 97               [ 1] 1330 	ld	xl, a
                                   1331 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
      0097B0 7B 02            [ 1] 1332 	ld	a, (0x02, sp)
      0097B2 27 08            [ 1] 1333 	jreq	00102$
                                   1334 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      0097B4 9F               [ 1] 1335 	ld	a, xl
      0097B5 A4 FD            [ 1] 1336 	and	a, #0xfd
      0097B7 C7 52 49         [ 1] 1337 	ld	0x5249, a
      0097BA 20 06            [ 2] 1338 	jra	00110$
      0097BC                       1339 00102$:
                                   1340 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
      0097BC 9F               [ 1] 1341 	ld	a, xl
      0097BD A4 FE            [ 1] 1342 	and	a, #0xfe
      0097BF C7 52 49         [ 1] 1343 	ld	0x5249, a
      0097C2                       1344 00110$:
                                   1345 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 723: }
      0097C2 5B 03            [ 2] 1346 	addw	sp, #3
      0097C4 81               [ 4] 1347 	ret
                                   1348 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
                                   1349 ;	-----------------------------------------
                                   1350 ;	 function UART2_GetITStatus
                                   1351 ;	-----------------------------------------
      0097C5                       1352 _UART2_GetITStatus:
      0097C5 52 05            [ 2] 1353 	sub	sp, #5
                                   1354 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 747: assert_param(IS_UART2_GET_IT_OK(UART2_IT));
      0097C7 90 93            [ 1] 1355 	ldw	y, x
      0097C9 A3 03 46         [ 2] 1356 	cpw	x, #0x0346
      0097CC 26 05            [ 1] 1357 	jrne	00247$
      0097CE A6 01            [ 1] 1358 	ld	a, #0x01
      0097D0 6B 01            [ 1] 1359 	ld	(0x01, sp), a
      0097D2 C5                    1360 	.byte 0xc5
      0097D3                       1361 00247$:
      0097D3 0F 01            [ 1] 1362 	clr	(0x01, sp)
      0097D5                       1363 00248$:
      0097D5 A3 04 12         [ 2] 1364 	cpw	x, #0x0412
      0097D8 26 05            [ 1] 1365 	jrne	00250$
      0097DA A6 01            [ 1] 1366 	ld	a, #0x01
      0097DC 6B 02            [ 1] 1367 	ld	(0x02, sp), a
      0097DE C5                    1368 	.byte 0xc5
      0097DF                       1369 00250$:
      0097DF 0F 02            [ 1] 1370 	clr	(0x02, sp)
      0097E1                       1371 00251$:
      0097E1 A3 01 00         [ 2] 1372 	cpw	x, #0x0100
      0097E4 26 05            [ 1] 1373 	jrne	00253$
      0097E6 A6 01            [ 1] 1374 	ld	a, #0x01
      0097E8 6B 03            [ 1] 1375 	ld	(0x03, sp), a
      0097EA C5                    1376 	.byte 0xc5
      0097EB                       1377 00253$:
      0097EB 0F 03            [ 1] 1378 	clr	(0x03, sp)
      0097ED                       1379 00254$:
      0097ED A3 02 77         [ 2] 1380 	cpw	x, #0x0277
      0097F0 27 30            [ 1] 1381 	jreq	00129$
      0097F2 A3 02 66         [ 2] 1382 	cpw	x, #0x0266
      0097F5 27 2B            [ 1] 1383 	jreq	00129$
      0097F7 A3 02 55         [ 2] 1384 	cpw	x, #0x0255
      0097FA 27 26            [ 1] 1385 	jreq	00129$
      0097FC A3 02 44         [ 2] 1386 	cpw	x, #0x0244
      0097FF 27 21            [ 1] 1387 	jreq	00129$
      009801 A3 02 35         [ 2] 1388 	cpw	x, #0x0235
      009804 27 1C            [ 1] 1389 	jreq	00129$
      009806 0D 01            [ 1] 1390 	tnz	(0x01, sp)
      009808 26 18            [ 1] 1391 	jrne	00129$
      00980A 0D 02            [ 1] 1392 	tnz	(0x02, sp)
      00980C 26 14            [ 1] 1393 	jrne	00129$
      00980E 0D 03            [ 1] 1394 	tnz	(0x03, sp)
      009810 26 10            [ 1] 1395 	jrne	00129$
      009812 90 89            [ 2] 1396 	pushw	y
      009814 4B EB            [ 1] 1397 	push	#0xeb
      009816 4B 02            [ 1] 1398 	push	#0x02
      009818 5F               [ 1] 1399 	clrw	x
      009819 89               [ 2] 1400 	pushw	x
      00981A AE 81 E9         [ 2] 1401 	ldw	x, #(___str_0+0)
      00981D CD AA 54         [ 4] 1402 	call	_assert_failed
      009820 90 85            [ 2] 1403 	popw	y
      009822                       1404 00129$:
                                   1405 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      009822 93               [ 1] 1406 	ldw	x, y
      009823 9F               [ 1] 1407 	ld	a, xl
      009824 A4 0F            [ 1] 1408 	and	a, #0x0f
      009826 88               [ 1] 1409 	push	a
      009827 A6 01            [ 1] 1410 	ld	a, #0x01
      009829 6B 05            [ 1] 1411 	ld	(0x05, sp), a
      00982B 84               [ 1] 1412 	pop	a
      00982C 4D               [ 1] 1413 	tnz	a
      00982D 27 05            [ 1] 1414 	jreq	00274$
      00982F                       1415 00273$:
      00982F 08 04            [ 1] 1416 	sll	(0x04, sp)
      009831 4A               [ 1] 1417 	dec	a
      009832 26 FB            [ 1] 1418 	jrne	00273$
      009834                       1419 00274$:
                                   1420 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
      009834 9F               [ 1] 1421 	ld	a, xl
      009835 4E               [ 1] 1422 	swap	a
      009836 A4 0F            [ 1] 1423 	and	a, #0x0f
                                   1424 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      009838 88               [ 1] 1425 	push	a
      009839 A6 01            [ 1] 1426 	ld	a, #0x01
      00983B 6B 06            [ 1] 1427 	ld	(0x06, sp), a
      00983D 84               [ 1] 1428 	pop	a
      00983E 4D               [ 1] 1429 	tnz	a
      00983F 27 05            [ 1] 1430 	jreq	00276$
      009841                       1431 00275$:
      009841 08 05            [ 1] 1432 	sll	(0x05, sp)
      009843 4A               [ 1] 1433 	dec	a
      009844 26 FB            [ 1] 1434 	jrne	00275$
      009846                       1435 00276$:
                                   1436 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
      009846 7B 03            [ 1] 1437 	ld	a, (0x03, sp)
      009848 27 18            [ 1] 1438 	jreq	00124$
                                   1439 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
      00984A C6 52 44         [ 1] 1440 	ld	a, 0x5244
      00984D 14 05            [ 1] 1441 	and	a, (0x05, sp)
      00984F 97               [ 1] 1442 	ld	xl, a
                                   1443 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      009850 C6 52 40         [ 1] 1444 	ld	a, 0x5240
      009853 14 04            [ 1] 1445 	and	a, (0x04, sp)
      009855 27 08            [ 1] 1446 	jreq	00102$
      009857 9F               [ 1] 1447 	ld	a, xl
      009858 4D               [ 1] 1448 	tnz	a
      009859 27 04            [ 1] 1449 	jreq	00102$
                                   1450 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 766: pendingbitstatus = SET;
      00985B A6 01            [ 1] 1451 	ld	a, #0x01
      00985D 20 50            [ 2] 1452 	jra	00125$
      00985F                       1453 00102$:
                                   1454 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 771: pendingbitstatus = RESET;
      00985F 4F               [ 1] 1455 	clr	a
      009860 20 4D            [ 2] 1456 	jra	00125$
      009862                       1457 00124$:
                                   1458 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
      009862 7B 01            [ 1] 1459 	ld	a, (0x01, sp)
      009864 27 18            [ 1] 1460 	jreq	00121$
                                   1461 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
      009866 C6 52 47         [ 1] 1462 	ld	a, 0x5247
      009869 14 05            [ 1] 1463 	and	a, (0x05, sp)
      00986B 97               [ 1] 1464 	ld	xl, a
                                   1465 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      00986C C6 52 47         [ 1] 1466 	ld	a, 0x5247
      00986F 14 04            [ 1] 1467 	and	a, (0x04, sp)
      009871 27 08            [ 1] 1468 	jreq	00106$
      009873 9F               [ 1] 1469 	ld	a, xl
      009874 4D               [ 1] 1470 	tnz	a
      009875 27 04            [ 1] 1471 	jreq	00106$
                                   1472 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 782: pendingbitstatus = SET;
      009877 A6 01            [ 1] 1473 	ld	a, #0x01
      009879 20 34            [ 2] 1474 	jra	00125$
      00987B                       1475 00106$:
                                   1476 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 787: pendingbitstatus = RESET;
      00987B 4F               [ 1] 1477 	clr	a
      00987C 20 31            [ 2] 1478 	jra	00125$
      00987E                       1479 00121$:
                                   1480 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
      00987E 7B 02            [ 1] 1481 	ld	a, (0x02, sp)
      009880 27 18            [ 1] 1482 	jreq	00118$
                                   1483 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
      009882 C6 52 49         [ 1] 1484 	ld	a, 0x5249
      009885 14 05            [ 1] 1485 	and	a, (0x05, sp)
      009887 97               [ 1] 1486 	ld	xl, a
                                   1487 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
      009888 C6 52 49         [ 1] 1488 	ld	a, 0x5249
      00988B 14 04            [ 1] 1489 	and	a, (0x04, sp)
      00988D 27 08            [ 1] 1490 	jreq	00110$
      00988F 9F               [ 1] 1491 	ld	a, xl
      009890 4D               [ 1] 1492 	tnz	a
      009891 27 04            [ 1] 1493 	jreq	00110$
                                   1494 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 798: pendingbitstatus = SET;
      009893 A6 01            [ 1] 1495 	ld	a, #0x01
      009895 20 18            [ 2] 1496 	jra	00125$
      009897                       1497 00110$:
                                   1498 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 803: pendingbitstatus = RESET;
      009897 4F               [ 1] 1499 	clr	a
      009898 20 15            [ 2] 1500 	jra	00125$
      00989A                       1501 00118$:
                                   1502 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
      00989A C6 52 45         [ 1] 1503 	ld	a, 0x5245
      00989D 14 05            [ 1] 1504 	and	a, (0x05, sp)
      00989F 97               [ 1] 1505 	ld	xl, a
                                   1506 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      0098A0 C6 52 40         [ 1] 1507 	ld	a, 0x5240
      0098A3 14 04            [ 1] 1508 	and	a, (0x04, sp)
      0098A5 27 07            [ 1] 1509 	jreq	00114$
      0098A7 9F               [ 1] 1510 	ld	a, xl
      0098A8 4D               [ 1] 1511 	tnz	a
      0098A9 27 03            [ 1] 1512 	jreq	00114$
                                   1513 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 814: pendingbitstatus = SET;
      0098AB A6 01            [ 1] 1514 	ld	a, #0x01
                                   1515 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 819: pendingbitstatus = RESET;
      0098AD 21                    1516 	.byte 0x21
      0098AE                       1517 00114$:
      0098AE 4F               [ 1] 1518 	clr	a
      0098AF                       1519 00125$:
                                   1520 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 823: return  pendingbitstatus;
                                   1521 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 824: }
      0098AF 5B 05            [ 2] 1522 	addw	sp, #5
      0098B1 81               [ 4] 1523 	ret
                                   1524 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
                                   1525 ;	-----------------------------------------
                                   1526 ;	 function UART2_ClearITPendingBit
                                   1527 ;	-----------------------------------------
      0098B2                       1528 _UART2_ClearITPendingBit:
      0098B2 88               [ 1] 1529 	push	a
                                   1530 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 854: assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
      0098B3 A3 02 55         [ 2] 1531 	cpw	x, #0x0255
      0098B6 26 03            [ 1] 1532 	jrne	00143$
      0098B8 A6 01            [ 1] 1533 	ld	a, #0x01
      0098BA 21                    1534 	.byte 0x21
      0098BB                       1535 00143$:
      0098BB 4F               [ 1] 1536 	clr	a
      0098BC                       1537 00144$:
      0098BC A3 03 46         [ 2] 1538 	cpw	x, #0x0346
      0098BF 26 07            [ 1] 1539 	jrne	00146$
      0098C1 88               [ 1] 1540 	push	a
      0098C2 A6 01            [ 1] 1541 	ld	a, #0x01
      0098C4 6B 02            [ 1] 1542 	ld	(0x02, sp), a
      0098C6 84               [ 1] 1543 	pop	a
      0098C7 C5                    1544 	.byte 0xc5
      0098C8                       1545 00146$:
      0098C8 0F 01            [ 1] 1546 	clr	(0x01, sp)
      0098CA                       1547 00147$:
      0098CA 4D               [ 1] 1548 	tnz	a
      0098CB 26 17            [ 1] 1549 	jrne	00110$
      0098CD A3 04 12         [ 2] 1550 	cpw	x, #0x0412
      0098D0 27 12            [ 1] 1551 	jreq	00110$
      0098D2 0D 01            [ 1] 1552 	tnz	(0x01, sp)
      0098D4 26 0E            [ 1] 1553 	jrne	00110$
      0098D6 88               [ 1] 1554 	push	a
      0098D7 4B 56            [ 1] 1555 	push	#0x56
      0098D9 4B 03            [ 1] 1556 	push	#0x03
      0098DB 5F               [ 1] 1557 	clrw	x
      0098DC 89               [ 2] 1558 	pushw	x
      0098DD AE 81 E9         [ 2] 1559 	ldw	x, #(___str_0+0)
      0098E0 CD AA 54         [ 4] 1560 	call	_assert_failed
      0098E3 84               [ 1] 1561 	pop	a
      0098E4                       1562 00110$:
                                   1563 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
      0098E4 4D               [ 1] 1564 	tnz	a
      0098E5 27 06            [ 1] 1565 	jreq	00105$
                                   1566 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      0098E7 35 DF 52 40      [ 1] 1567 	mov	0x5240+0, #0xdf
      0098EB 20 0E            [ 2] 1568 	jra	00107$
      0098ED                       1569 00105$:
                                   1570 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
      0098ED 7B 01            [ 1] 1571 	ld	a, (0x01, sp)
      0098EF 27 06            [ 1] 1572 	jreq	00102$
                                   1573 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
      0098F1 72 19 52 47      [ 1] 1574 	bres	0x5247, #4
      0098F5 20 04            [ 2] 1575 	jra	00107$
      0098F7                       1576 00102$:
                                   1577 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      0098F7 72 13 52 49      [ 1] 1578 	bres	0x5249, #1
      0098FB                       1579 00107$:
                                   1580 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 871: }
      0098FB 84               [ 1] 1581 	pop	a
      0098FC 81               [ 4] 1582 	ret
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
