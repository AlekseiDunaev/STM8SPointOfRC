                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _GPIO_DeInit
                                     13 	.globl _GPIO_Init
                                     14 	.globl _GPIO_Write
                                     15 	.globl _GPIO_WriteHigh
                                     16 	.globl _GPIO_WriteLow
                                     17 	.globl _GPIO_WriteReverse
                                     18 	.globl _GPIO_ReadOutputData
                                     19 	.globl _GPIO_ReadInputData
                                     20 	.globl _GPIO_ReadInputPin
                                     21 	.globl _GPIO_ExternalPullUpConfig
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area DATA
                                     26 ;--------------------------------------------------------
                                     27 ; ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area INITIALIZED
                                     30 ;--------------------------------------------------------
                                     31 ; absolute external ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DABS (ABS)
                                     34 
                                     35 ; default segment ordering for linker
                                     36 	.area HOME
                                     37 	.area GSINIT
                                     38 	.area GSFINAL
                                     39 	.area CONST
                                     40 	.area INITIALIZER
                                     41 	.area CODE
                                     42 
                                     43 ;--------------------------------------------------------
                                     44 ; global & static initialisations
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area GSINIT
                                     50 ;--------------------------------------------------------
                                     51 ; Home
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area HOME
                                     55 ;--------------------------------------------------------
                                     56 ; code
                                     57 ;--------------------------------------------------------
                                     58 	.area CODE
                                     59 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     60 ;	-----------------------------------------
                                     61 ;	 function GPIO_DeInit
                                     62 ;	-----------------------------------------
      00891E                         63 _GPIO_DeInit:
      00891E 51               [ 1]   64 	exgw	x, y
                                     65 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      00891F 90 7F            [ 1]   66 	clr	(y)
                                     67 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      008921 93               [ 1]   68 	ldw	x, y
      008922 5C               [ 1]   69 	incw	x
      008923 5C               [ 1]   70 	incw	x
      008924 7F               [ 1]   71 	clr	(x)
                                     72 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      008925 93               [ 1]   73 	ldw	x, y
      008926 6F 03            [ 1]   74 	clr	(0x0003, x)
                                     75 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      008928 93               [ 1]   76 	ldw	x, y
      008929 6F 04            [ 1]   77 	clr	(0x0004, x)
                                     78 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 59: }
      00892B 81               [ 4]   79 	ret
                                     80 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     81 ;	-----------------------------------------
                                     82 ;	 function GPIO_Init
                                     83 ;	-----------------------------------------
      00892C                         84 _GPIO_Init:
      00892C 52 07            [ 2]   85 	sub	sp, #7
      00892E 1F 06            [ 2]   86 	ldw	(0x06, sp), x
      008930 6B 05            [ 1]   87 	ld	(0x05, sp), a
                                     88 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
      008932 0D 0A            [ 1]   89 	tnz	(0x0a, sp)
      008934 27 4E            [ 1]   90 	jreq	00116$
      008936 7B 0A            [ 1]   91 	ld	a, (0x0a, sp)
      008938 A1 40            [ 1]   92 	cp	a, #0x40
      00893A 27 48            [ 1]   93 	jreq	00116$
      00893C 7B 0A            [ 1]   94 	ld	a, (0x0a, sp)
      00893E A1 20            [ 1]   95 	cp	a, #0x20
      008940 27 42            [ 1]   96 	jreq	00116$
      008942 7B 0A            [ 1]   97 	ld	a, (0x0a, sp)
      008944 A1 60            [ 1]   98 	cp	a, #0x60
      008946 27 3C            [ 1]   99 	jreq	00116$
      008948 7B 0A            [ 1]  100 	ld	a, (0x0a, sp)
      00894A A1 A0            [ 1]  101 	cp	a, #0xa0
      00894C 27 36            [ 1]  102 	jreq	00116$
      00894E 7B 0A            [ 1]  103 	ld	a, (0x0a, sp)
      008950 A1 E0            [ 1]  104 	cp	a, #0xe0
      008952 27 30            [ 1]  105 	jreq	00116$
      008954 7B 0A            [ 1]  106 	ld	a, (0x0a, sp)
      008956 A1 80            [ 1]  107 	cp	a, #0x80
      008958 27 2A            [ 1]  108 	jreq	00116$
      00895A 7B 0A            [ 1]  109 	ld	a, (0x0a, sp)
      00895C A1 C0            [ 1]  110 	cp	a, #0xc0
      00895E 27 24            [ 1]  111 	jreq	00116$
      008960 7B 0A            [ 1]  112 	ld	a, (0x0a, sp)
      008962 A1 B0            [ 1]  113 	cp	a, #0xb0
      008964 27 1E            [ 1]  114 	jreq	00116$
      008966 7B 0A            [ 1]  115 	ld	a, (0x0a, sp)
      008968 A1 F0            [ 1]  116 	cp	a, #0xf0
      00896A 27 18            [ 1]  117 	jreq	00116$
      00896C 7B 0A            [ 1]  118 	ld	a, (0x0a, sp)
      00896E A1 90            [ 1]  119 	cp	a, #0x90
      008970 27 12            [ 1]  120 	jreq	00116$
      008972 7B 0A            [ 1]  121 	ld	a, (0x0a, sp)
      008974 A1 D0            [ 1]  122 	cp	a, #0xd0
      008976 27 0C            [ 1]  123 	jreq	00116$
      008978 4B 4D            [ 1]  124 	push	#0x4d
      00897A 5F               [ 1]  125 	clrw	x
      00897B 89               [ 2]  126 	pushw	x
      00897C 4B 00            [ 1]  127 	push	#0x00
      00897E AE 81 0A         [ 2]  128 	ldw	x, #(___str_0+0)
      008981 CD AA 54         [ 4]  129 	call	_assert_failed
      008984                        130 00116$:
                                    131 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      008984 0D 05            [ 1]  132 	tnz	(0x05, sp)
      008986 26 0C            [ 1]  133 	jrne	00151$
      008988 4B 4E            [ 1]  134 	push	#0x4e
      00898A 5F               [ 1]  135 	clrw	x
      00898B 89               [ 2]  136 	pushw	x
      00898C 4B 00            [ 1]  137 	push	#0x00
      00898E AE 81 0A         [ 2]  138 	ldw	x, #(___str_0+0)
      008991 CD AA 54         [ 4]  139 	call	_assert_failed
      008994                        140 00151$:
                                    141 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008994 1E 06            [ 2]  142 	ldw	x, (0x06, sp)
      008996 1C 00 04         [ 2]  143 	addw	x, #0x0004
      008999 1F 01            [ 2]  144 	ldw	(0x01, sp), x
      00899B F6               [ 1]  145 	ld	a, (x)
      00899C 88               [ 1]  146 	push	a
      00899D 7B 06            [ 1]  147 	ld	a, (0x06, sp)
      00899F 43               [ 1]  148 	cpl	a
      0089A0 6B 04            [ 1]  149 	ld	(0x04, sp), a
      0089A2 84               [ 1]  150 	pop	a
      0089A3 14 03            [ 1]  151 	and	a, (0x03, sp)
      0089A5 1E 01            [ 2]  152 	ldw	x, (0x01, sp)
      0089A7 F7               [ 1]  153 	ld	(x), a
                                    154 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0089A8 1E 06            [ 2]  155 	ldw	x, (0x06, sp)
      0089AA 5C               [ 1]  156 	incw	x
      0089AB 5C               [ 1]  157 	incw	x
                                    158 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      0089AC 0D 0A            [ 1]  159 	tnz	(0x0a, sp)
      0089AE 2A 20            [ 1]  160 	jrpl	00105$
                                    161 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      0089B0 16 06            [ 2]  162 	ldw	y, (0x06, sp)
      0089B2 90 F6            [ 1]  163 	ld	a, (y)
                                    164 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      0089B4 88               [ 1]  165 	push	a
      0089B5 7B 0B            [ 1]  166 	ld	a, (0x0b, sp)
      0089B7 A5 10            [ 1]  167 	bcp	a, #0x10
      0089B9 84               [ 1]  168 	pop	a
      0089BA 27 08            [ 1]  169 	jreq	00102$
                                    170 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      0089BC 1A 05            [ 1]  171 	or	a, (0x05, sp)
      0089BE 16 06            [ 2]  172 	ldw	y, (0x06, sp)
      0089C0 90 F7            [ 1]  173 	ld	(y), a
      0089C2 20 06            [ 2]  174 	jra	00103$
      0089C4                        175 00102$:
                                    176 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      0089C4 14 03            [ 1]  177 	and	a, (0x03, sp)
      0089C6 16 06            [ 2]  178 	ldw	y, (0x06, sp)
      0089C8 90 F7            [ 1]  179 	ld	(y), a
      0089CA                        180 00103$:
                                    181 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0089CA F6               [ 1]  182 	ld	a, (x)
      0089CB 1A 05            [ 1]  183 	or	a, (0x05, sp)
      0089CD F7               [ 1]  184 	ld	(x), a
      0089CE 20 04            [ 2]  185 	jra	00106$
      0089D0                        186 00105$:
                                    187 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      0089D0 F6               [ 1]  188 	ld	a, (x)
      0089D1 14 03            [ 1]  189 	and	a, (0x03, sp)
      0089D3 F7               [ 1]  190 	ld	(x), a
      0089D4                        191 00106$:
                                    192 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      0089D4 1E 06            [ 2]  193 	ldw	x, (0x06, sp)
      0089D6 1C 00 03         [ 2]  194 	addw	x, #0x0003
      0089D9 F6               [ 1]  195 	ld	a, (x)
      0089DA 6B 04            [ 1]  196 	ld	(0x04, sp), a
                                    197 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      0089DC 7B 0A            [ 1]  198 	ld	a, (0x0a, sp)
      0089DE A5 40            [ 1]  199 	bcp	a, #0x40
      0089E0 27 07            [ 1]  200 	jreq	00108$
                                    201 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      0089E2 7B 04            [ 1]  202 	ld	a, (0x04, sp)
      0089E4 1A 05            [ 1]  203 	or	a, (0x05, sp)
      0089E6 F7               [ 1]  204 	ld	(x), a
      0089E7 20 05            [ 2]  205 	jra	00109$
      0089E9                        206 00108$:
                                    207 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      0089E9 7B 04            [ 1]  208 	ld	a, (0x04, sp)
      0089EB 14 03            [ 1]  209 	and	a, (0x03, sp)
      0089ED F7               [ 1]  210 	ld	(x), a
      0089EE                        211 00109$:
                                    212 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0089EE 1E 01            [ 2]  213 	ldw	x, (0x01, sp)
      0089F0 F6               [ 1]  214 	ld	a, (x)
                                    215 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      0089F1 88               [ 1]  216 	push	a
      0089F2 7B 0B            [ 1]  217 	ld	a, (0x0b, sp)
      0089F4 A5 20            [ 1]  218 	bcp	a, #0x20
      0089F6 84               [ 1]  219 	pop	a
      0089F7 27 07            [ 1]  220 	jreq	00111$
                                    221 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      0089F9 1A 05            [ 1]  222 	or	a, (0x05, sp)
      0089FB 1E 01            [ 2]  223 	ldw	x, (0x01, sp)
      0089FD F7               [ 1]  224 	ld	(x), a
      0089FE 20 05            [ 2]  225 	jra	00113$
      008A00                        226 00111$:
                                    227 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008A00 14 03            [ 1]  228 	and	a, (0x03, sp)
      008A02 1E 01            [ 2]  229 	ldw	x, (0x01, sp)
      008A04 F7               [ 1]  230 	ld	(x), a
      008A05                        231 00113$:
                                    232 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 131: }
      008A05 5B 07            [ 2]  233 	addw	sp, #7
      008A07 85               [ 2]  234 	popw	x
      008A08 84               [ 1]  235 	pop	a
      008A09 FC               [ 2]  236 	jp	(x)
                                    237 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    238 ;	-----------------------------------------
                                    239 ;	 function GPIO_Write
                                    240 ;	-----------------------------------------
      008A0A                        241 _GPIO_Write:
                                    242 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
      008A0A F7               [ 1]  243 	ld	(x), a
                                    244 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 144: }
      008A0B 81               [ 4]  245 	ret
                                    246 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    247 ;	-----------------------------------------
                                    248 ;	 function GPIO_WriteHigh
                                    249 ;	-----------------------------------------
      008A0C                        250 _GPIO_WriteHigh:
      008A0C 88               [ 1]  251 	push	a
      008A0D 6B 01            [ 1]  252 	ld	(0x01, sp), a
                                    253 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      008A0F F6               [ 1]  254 	ld	a, (x)
      008A10 1A 01            [ 1]  255 	or	a, (0x01, sp)
      008A12 F7               [ 1]  256 	ld	(x), a
                                    257 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 157: }
      008A13 84               [ 1]  258 	pop	a
      008A14 81               [ 4]  259 	ret
                                    260 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    261 ;	-----------------------------------------
                                    262 ;	 function GPIO_WriteLow
                                    263 ;	-----------------------------------------
      008A15                        264 _GPIO_WriteLow:
      008A15 88               [ 1]  265 	push	a
                                    266 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      008A16 88               [ 1]  267 	push	a
      008A17 F6               [ 1]  268 	ld	a, (x)
      008A18 6B 02            [ 1]  269 	ld	(0x02, sp), a
      008A1A 84               [ 1]  270 	pop	a
      008A1B 43               [ 1]  271 	cpl	a
      008A1C 14 01            [ 1]  272 	and	a, (0x01, sp)
      008A1E F7               [ 1]  273 	ld	(x), a
                                    274 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 170: }
      008A1F 84               [ 1]  275 	pop	a
      008A20 81               [ 4]  276 	ret
                                    277 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    278 ;	-----------------------------------------
                                    279 ;	 function GPIO_WriteReverse
                                    280 ;	-----------------------------------------
      008A21                        281 _GPIO_WriteReverse:
      008A21 88               [ 1]  282 	push	a
      008A22 6B 01            [ 1]  283 	ld	(0x01, sp), a
                                    284 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
      008A24 F6               [ 1]  285 	ld	a, (x)
      008A25 18 01            [ 1]  286 	xor	a, (0x01, sp)
      008A27 F7               [ 1]  287 	ld	(x), a
                                    288 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 183: }
      008A28 84               [ 1]  289 	pop	a
      008A29 81               [ 4]  290 	ret
                                    291 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    292 ;	-----------------------------------------
                                    293 ;	 function GPIO_ReadOutputData
                                    294 ;	-----------------------------------------
      008A2A                        295 _GPIO_ReadOutputData:
                                    296 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
      008A2A F6               [ 1]  297 	ld	a, (x)
                                    298 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 194: }
      008A2B 81               [ 4]  299 	ret
                                    300 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    301 ;	-----------------------------------------
                                    302 ;	 function GPIO_ReadInputData
                                    303 ;	-----------------------------------------
      008A2C                        304 _GPIO_ReadInputData:
                                    305 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
      008A2C E6 01            [ 1]  306 	ld	a, (0x1, x)
                                    307 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 205: }
      008A2E 81               [ 4]  308 	ret
                                    309 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    310 ;	-----------------------------------------
                                    311 ;	 function GPIO_ReadInputPin
                                    312 ;	-----------------------------------------
      008A2F                        313 _GPIO_ReadInputPin:
      008A2F 88               [ 1]  314 	push	a
      008A30 6B 01            [ 1]  315 	ld	(0x01, sp), a
                                    316 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      008A32 E6 01            [ 1]  317 	ld	a, (0x1, x)
      008A34 14 01            [ 1]  318 	and	a, (0x01, sp)
                                    319 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 216: }
      008A36 5B 01            [ 2]  320 	addw	sp, #1
      008A38 81               [ 4]  321 	ret
                                    322 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    323 ;	-----------------------------------------
                                    324 ;	 function GPIO_ExternalPullUpConfig
                                    325 ;	-----------------------------------------
      008A39                        326 _GPIO_ExternalPullUpConfig:
      008A39 52 04            [ 2]  327 	sub	sp, #4
      008A3B 1F 03            [ 2]  328 	ldw	(0x03, sp), x
                                    329 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 228: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      008A3D 6B 02            [ 1]  330 	ld	(0x02, sp), a
      008A3F 26 0C            [ 1]  331 	jrne	00107$
      008A41 4B E4            [ 1]  332 	push	#0xe4
      008A43 5F               [ 1]  333 	clrw	x
      008A44 89               [ 2]  334 	pushw	x
      008A45 4B 00            [ 1]  335 	push	#0x00
      008A47 AE 81 0A         [ 2]  336 	ldw	x, #(___str_0+0)
      008A4A CD AA 54         [ 4]  337 	call	_assert_failed
      008A4D                        338 00107$:
                                    339 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 229: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008A4D 0D 07            [ 1]  340 	tnz	(0x07, sp)
      008A4F 27 11            [ 1]  341 	jreq	00109$
      008A51 7B 07            [ 1]  342 	ld	a, (0x07, sp)
      008A53 4A               [ 1]  343 	dec	a
      008A54 27 0C            [ 1]  344 	jreq	00109$
      008A56 4B E5            [ 1]  345 	push	#0xe5
      008A58 5F               [ 1]  346 	clrw	x
      008A59 89               [ 2]  347 	pushw	x
      008A5A 4B 00            [ 1]  348 	push	#0x00
      008A5C AE 81 0A         [ 2]  349 	ldw	x, #(___str_0+0)
      008A5F CD AA 54         [ 4]  350 	call	_assert_failed
      008A62                        351 00109$:
                                    352 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008A62 1E 03            [ 2]  353 	ldw	x, (0x03, sp)
      008A64 1C 00 03         [ 2]  354 	addw	x, #0x0003
      008A67 F6               [ 1]  355 	ld	a, (x)
                                    356 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
      008A68 0D 07            [ 1]  357 	tnz	(0x07, sp)
      008A6A 27 05            [ 1]  358 	jreq	00102$
                                    359 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008A6C 1A 02            [ 1]  360 	or	a, (0x02, sp)
      008A6E F7               [ 1]  361 	ld	(x), a
      008A6F 20 0A            [ 2]  362 	jra	00104$
      008A71                        363 00102$:
                                    364 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008A71 88               [ 1]  365 	push	a
      008A72 7B 03            [ 1]  366 	ld	a, (0x03, sp)
      008A74 43               [ 1]  367 	cpl	a
      008A75 6B 02            [ 1]  368 	ld	(0x02, sp), a
      008A77 84               [ 1]  369 	pop	a
      008A78 14 01            [ 1]  370 	and	a, (0x01, sp)
      008A7A F7               [ 1]  371 	ld	(x), a
      008A7B                        372 00104$:
                                    373 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 238: }
      008A7B 5B 04            [ 2]  374 	addw	sp, #4
      008A7D 85               [ 2]  375 	popw	x
      008A7E 84               [ 1]  376 	pop	a
      008A7F FC               [ 2]  377 	jp	(x)
                                    378 	.area CODE
                                    379 	.area CONST
                                    380 	.area CONST
      00810A                        381 ___str_0:
      00810A 2F 55 73 65 72 73 2F   382 	.ascii "/Users/alekseydunaev/.platformio/packages/framework-ststm8sp"
             61 6C 65 6B 73 65 79
             64 75 6E 61 65 76 2F
             2E 70 6C 61 74 66 6F
             72 6D 69 6F 2F 70 61
             63 6B 61 67 65 73 2F
             66 72 61 6D 65 77 6F
             72 6B 2D 73 74 73 74
             6D 38 73 70
      008146 6C 2F 4C 69 62 72 61   383 	.ascii "l/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c"
             72 69 65 73 2F 53 54
             4D 38 53 5F 53 74 64
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 67 70 69 6F
             2E 63
      008179 00                     384 	.db 0x00
                                    385 	.area CODE
                                    386 	.area INITIALIZER
                                    387 	.area CABS (ABS)
