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
      008AAA                         63 _GPIO_DeInit:
      008AAA 51               [ 1]   64 	exgw	x, y
                                     65 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      008AAB 90 7F            [ 1]   66 	clr	(y)
                                     67 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      008AAD 93               [ 1]   68 	ldw	x, y
      008AAE 5C               [ 1]   69 	incw	x
      008AAF 5C               [ 1]   70 	incw	x
      008AB0 7F               [ 1]   71 	clr	(x)
                                     72 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      008AB1 93               [ 1]   73 	ldw	x, y
      008AB2 6F 03            [ 1]   74 	clr	(0x0003, x)
                                     75 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      008AB4 93               [ 1]   76 	ldw	x, y
      008AB5 6F 04            [ 1]   77 	clr	(0x0004, x)
                                     78 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 59: }
      008AB7 81               [ 4]   79 	ret
                                     80 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     81 ;	-----------------------------------------
                                     82 ;	 function GPIO_Init
                                     83 ;	-----------------------------------------
      008AB8                         84 _GPIO_Init:
      008AB8 52 07            [ 2]   85 	sub	sp, #7
      008ABA 1F 06            [ 2]   86 	ldw	(0x06, sp), x
      008ABC 6B 05            [ 1]   87 	ld	(0x05, sp), a
                                     88 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
      008ABE 0D 0A            [ 1]   89 	tnz	(0x0a, sp)
      008AC0 27 4E            [ 1]   90 	jreq	00116$
      008AC2 7B 0A            [ 1]   91 	ld	a, (0x0a, sp)
      008AC4 A1 40            [ 1]   92 	cp	a, #0x40
      008AC6 27 48            [ 1]   93 	jreq	00116$
      008AC8 7B 0A            [ 1]   94 	ld	a, (0x0a, sp)
      008ACA A1 20            [ 1]   95 	cp	a, #0x20
      008ACC 27 42            [ 1]   96 	jreq	00116$
      008ACE 7B 0A            [ 1]   97 	ld	a, (0x0a, sp)
      008AD0 A1 60            [ 1]   98 	cp	a, #0x60
      008AD2 27 3C            [ 1]   99 	jreq	00116$
      008AD4 7B 0A            [ 1]  100 	ld	a, (0x0a, sp)
      008AD6 A1 A0            [ 1]  101 	cp	a, #0xa0
      008AD8 27 36            [ 1]  102 	jreq	00116$
      008ADA 7B 0A            [ 1]  103 	ld	a, (0x0a, sp)
      008ADC A1 E0            [ 1]  104 	cp	a, #0xe0
      008ADE 27 30            [ 1]  105 	jreq	00116$
      008AE0 7B 0A            [ 1]  106 	ld	a, (0x0a, sp)
      008AE2 A1 80            [ 1]  107 	cp	a, #0x80
      008AE4 27 2A            [ 1]  108 	jreq	00116$
      008AE6 7B 0A            [ 1]  109 	ld	a, (0x0a, sp)
      008AE8 A1 C0            [ 1]  110 	cp	a, #0xc0
      008AEA 27 24            [ 1]  111 	jreq	00116$
      008AEC 7B 0A            [ 1]  112 	ld	a, (0x0a, sp)
      008AEE A1 B0            [ 1]  113 	cp	a, #0xb0
      008AF0 27 1E            [ 1]  114 	jreq	00116$
      008AF2 7B 0A            [ 1]  115 	ld	a, (0x0a, sp)
      008AF4 A1 F0            [ 1]  116 	cp	a, #0xf0
      008AF6 27 18            [ 1]  117 	jreq	00116$
      008AF8 7B 0A            [ 1]  118 	ld	a, (0x0a, sp)
      008AFA A1 90            [ 1]  119 	cp	a, #0x90
      008AFC 27 12            [ 1]  120 	jreq	00116$
      008AFE 7B 0A            [ 1]  121 	ld	a, (0x0a, sp)
      008B00 A1 D0            [ 1]  122 	cp	a, #0xd0
      008B02 27 0C            [ 1]  123 	jreq	00116$
      008B04 4B 4D            [ 1]  124 	push	#0x4d
      008B06 5F               [ 1]  125 	clrw	x
      008B07 89               [ 2]  126 	pushw	x
      008B08 4B 00            [ 1]  127 	push	#0x00
      008B0A AE 81 0A         [ 2]  128 	ldw	x, #(___str_0+0)
      008B0D CD AB 90         [ 4]  129 	call	_assert_failed
      008B10                        130 00116$:
                                    131 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      008B10 0D 05            [ 1]  132 	tnz	(0x05, sp)
      008B12 26 0C            [ 1]  133 	jrne	00151$
      008B14 4B 4E            [ 1]  134 	push	#0x4e
      008B16 5F               [ 1]  135 	clrw	x
      008B17 89               [ 2]  136 	pushw	x
      008B18 4B 00            [ 1]  137 	push	#0x00
      008B1A AE 81 0A         [ 2]  138 	ldw	x, #(___str_0+0)
      008B1D CD AB 90         [ 4]  139 	call	_assert_failed
      008B20                        140 00151$:
                                    141 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008B20 1E 06            [ 2]  142 	ldw	x, (0x06, sp)
      008B22 1C 00 04         [ 2]  143 	addw	x, #0x0004
      008B25 1F 01            [ 2]  144 	ldw	(0x01, sp), x
      008B27 F6               [ 1]  145 	ld	a, (x)
      008B28 88               [ 1]  146 	push	a
      008B29 7B 06            [ 1]  147 	ld	a, (0x06, sp)
      008B2B 43               [ 1]  148 	cpl	a
      008B2C 6B 04            [ 1]  149 	ld	(0x04, sp), a
      008B2E 84               [ 1]  150 	pop	a
      008B2F 14 03            [ 1]  151 	and	a, (0x03, sp)
      008B31 1E 01            [ 2]  152 	ldw	x, (0x01, sp)
      008B33 F7               [ 1]  153 	ld	(x), a
                                    154 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      008B34 1E 06            [ 2]  155 	ldw	x, (0x06, sp)
      008B36 5C               [ 1]  156 	incw	x
      008B37 5C               [ 1]  157 	incw	x
                                    158 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      008B38 0D 0A            [ 1]  159 	tnz	(0x0a, sp)
      008B3A 2A 20            [ 1]  160 	jrpl	00105$
                                    161 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008B3C 16 06            [ 2]  162 	ldw	y, (0x06, sp)
      008B3E 90 F6            [ 1]  163 	ld	a, (y)
                                    164 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      008B40 88               [ 1]  165 	push	a
      008B41 7B 0B            [ 1]  166 	ld	a, (0x0b, sp)
      008B43 A5 10            [ 1]  167 	bcp	a, #0x10
      008B45 84               [ 1]  168 	pop	a
      008B46 27 08            [ 1]  169 	jreq	00102$
                                    170 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008B48 1A 05            [ 1]  171 	or	a, (0x05, sp)
      008B4A 16 06            [ 2]  172 	ldw	y, (0x06, sp)
      008B4C 90 F7            [ 1]  173 	ld	(y), a
      008B4E 20 06            [ 2]  174 	jra	00103$
      008B50                        175 00102$:
                                    176 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      008B50 14 03            [ 1]  177 	and	a, (0x03, sp)
      008B52 16 06            [ 2]  178 	ldw	y, (0x06, sp)
      008B54 90 F7            [ 1]  179 	ld	(y), a
      008B56                        180 00103$:
                                    181 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      008B56 F6               [ 1]  182 	ld	a, (x)
      008B57 1A 05            [ 1]  183 	or	a, (0x05, sp)
      008B59 F7               [ 1]  184 	ld	(x), a
      008B5A 20 04            [ 2]  185 	jra	00106$
      008B5C                        186 00105$:
                                    187 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      008B5C F6               [ 1]  188 	ld	a, (x)
      008B5D 14 03            [ 1]  189 	and	a, (0x03, sp)
      008B5F F7               [ 1]  190 	ld	(x), a
      008B60                        191 00106$:
                                    192 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008B60 1E 06            [ 2]  193 	ldw	x, (0x06, sp)
      008B62 1C 00 03         [ 2]  194 	addw	x, #0x0003
      008B65 F6               [ 1]  195 	ld	a, (x)
      008B66 6B 04            [ 1]  196 	ld	(0x04, sp), a
                                    197 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      008B68 7B 0A            [ 1]  198 	ld	a, (0x0a, sp)
      008B6A A5 40            [ 1]  199 	bcp	a, #0x40
      008B6C 27 07            [ 1]  200 	jreq	00108$
                                    201 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008B6E 7B 04            [ 1]  202 	ld	a, (0x04, sp)
      008B70 1A 05            [ 1]  203 	or	a, (0x05, sp)
      008B72 F7               [ 1]  204 	ld	(x), a
      008B73 20 05            [ 2]  205 	jra	00109$
      008B75                        206 00108$:
                                    207 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008B75 7B 04            [ 1]  208 	ld	a, (0x04, sp)
      008B77 14 03            [ 1]  209 	and	a, (0x03, sp)
      008B79 F7               [ 1]  210 	ld	(x), a
      008B7A                        211 00109$:
                                    212 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008B7A 1E 01            [ 2]  213 	ldw	x, (0x01, sp)
      008B7C F6               [ 1]  214 	ld	a, (x)
                                    215 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      008B7D 88               [ 1]  216 	push	a
      008B7E 7B 0B            [ 1]  217 	ld	a, (0x0b, sp)
      008B80 A5 20            [ 1]  218 	bcp	a, #0x20
      008B82 84               [ 1]  219 	pop	a
      008B83 27 07            [ 1]  220 	jreq	00111$
                                    221 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      008B85 1A 05            [ 1]  222 	or	a, (0x05, sp)
      008B87 1E 01            [ 2]  223 	ldw	x, (0x01, sp)
      008B89 F7               [ 1]  224 	ld	(x), a
      008B8A 20 05            [ 2]  225 	jra	00113$
      008B8C                        226 00111$:
                                    227 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008B8C 14 03            [ 1]  228 	and	a, (0x03, sp)
      008B8E 1E 01            [ 2]  229 	ldw	x, (0x01, sp)
      008B90 F7               [ 1]  230 	ld	(x), a
      008B91                        231 00113$:
                                    232 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 131: }
      008B91 5B 07            [ 2]  233 	addw	sp, #7
      008B93 85               [ 2]  234 	popw	x
      008B94 84               [ 1]  235 	pop	a
      008B95 FC               [ 2]  236 	jp	(x)
                                    237 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    238 ;	-----------------------------------------
                                    239 ;	 function GPIO_Write
                                    240 ;	-----------------------------------------
      008B96                        241 _GPIO_Write:
                                    242 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
      008B96 F7               [ 1]  243 	ld	(x), a
                                    244 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 144: }
      008B97 81               [ 4]  245 	ret
                                    246 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    247 ;	-----------------------------------------
                                    248 ;	 function GPIO_WriteHigh
                                    249 ;	-----------------------------------------
      008B98                        250 _GPIO_WriteHigh:
      008B98 88               [ 1]  251 	push	a
      008B99 6B 01            [ 1]  252 	ld	(0x01, sp), a
                                    253 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      008B9B F6               [ 1]  254 	ld	a, (x)
      008B9C 1A 01            [ 1]  255 	or	a, (0x01, sp)
      008B9E F7               [ 1]  256 	ld	(x), a
                                    257 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 157: }
      008B9F 84               [ 1]  258 	pop	a
      008BA0 81               [ 4]  259 	ret
                                    260 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    261 ;	-----------------------------------------
                                    262 ;	 function GPIO_WriteLow
                                    263 ;	-----------------------------------------
      008BA1                        264 _GPIO_WriteLow:
      008BA1 88               [ 1]  265 	push	a
                                    266 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      008BA2 88               [ 1]  267 	push	a
      008BA3 F6               [ 1]  268 	ld	a, (x)
      008BA4 6B 02            [ 1]  269 	ld	(0x02, sp), a
      008BA6 84               [ 1]  270 	pop	a
      008BA7 43               [ 1]  271 	cpl	a
      008BA8 14 01            [ 1]  272 	and	a, (0x01, sp)
      008BAA F7               [ 1]  273 	ld	(x), a
                                    274 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 170: }
      008BAB 84               [ 1]  275 	pop	a
      008BAC 81               [ 4]  276 	ret
                                    277 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    278 ;	-----------------------------------------
                                    279 ;	 function GPIO_WriteReverse
                                    280 ;	-----------------------------------------
      008BAD                        281 _GPIO_WriteReverse:
      008BAD 88               [ 1]  282 	push	a
      008BAE 6B 01            [ 1]  283 	ld	(0x01, sp), a
                                    284 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
      008BB0 F6               [ 1]  285 	ld	a, (x)
      008BB1 18 01            [ 1]  286 	xor	a, (0x01, sp)
      008BB3 F7               [ 1]  287 	ld	(x), a
                                    288 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 183: }
      008BB4 84               [ 1]  289 	pop	a
      008BB5 81               [ 4]  290 	ret
                                    291 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    292 ;	-----------------------------------------
                                    293 ;	 function GPIO_ReadOutputData
                                    294 ;	-----------------------------------------
      008BB6                        295 _GPIO_ReadOutputData:
                                    296 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
      008BB6 F6               [ 1]  297 	ld	a, (x)
                                    298 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 194: }
      008BB7 81               [ 4]  299 	ret
                                    300 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    301 ;	-----------------------------------------
                                    302 ;	 function GPIO_ReadInputData
                                    303 ;	-----------------------------------------
      008BB8                        304 _GPIO_ReadInputData:
                                    305 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
      008BB8 E6 01            [ 1]  306 	ld	a, (0x1, x)
                                    307 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 205: }
      008BBA 81               [ 4]  308 	ret
                                    309 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    310 ;	-----------------------------------------
                                    311 ;	 function GPIO_ReadInputPin
                                    312 ;	-----------------------------------------
      008BBB                        313 _GPIO_ReadInputPin:
      008BBB 88               [ 1]  314 	push	a
      008BBC 6B 01            [ 1]  315 	ld	(0x01, sp), a
                                    316 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      008BBE E6 01            [ 1]  317 	ld	a, (0x1, x)
      008BC0 14 01            [ 1]  318 	and	a, (0x01, sp)
                                    319 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 216: }
      008BC2 5B 01            [ 2]  320 	addw	sp, #1
      008BC4 81               [ 4]  321 	ret
                                    322 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    323 ;	-----------------------------------------
                                    324 ;	 function GPIO_ExternalPullUpConfig
                                    325 ;	-----------------------------------------
      008BC5                        326 _GPIO_ExternalPullUpConfig:
      008BC5 52 04            [ 2]  327 	sub	sp, #4
      008BC7 1F 03            [ 2]  328 	ldw	(0x03, sp), x
                                    329 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 228: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      008BC9 6B 02            [ 1]  330 	ld	(0x02, sp), a
      008BCB 26 0C            [ 1]  331 	jrne	00107$
      008BCD 4B E4            [ 1]  332 	push	#0xe4
      008BCF 5F               [ 1]  333 	clrw	x
      008BD0 89               [ 2]  334 	pushw	x
      008BD1 4B 00            [ 1]  335 	push	#0x00
      008BD3 AE 81 0A         [ 2]  336 	ldw	x, #(___str_0+0)
      008BD6 CD AB 90         [ 4]  337 	call	_assert_failed
      008BD9                        338 00107$:
                                    339 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 229: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008BD9 0D 07            [ 1]  340 	tnz	(0x07, sp)
      008BDB 27 11            [ 1]  341 	jreq	00109$
      008BDD 7B 07            [ 1]  342 	ld	a, (0x07, sp)
      008BDF 4A               [ 1]  343 	dec	a
      008BE0 27 0C            [ 1]  344 	jreq	00109$
      008BE2 4B E5            [ 1]  345 	push	#0xe5
      008BE4 5F               [ 1]  346 	clrw	x
      008BE5 89               [ 2]  347 	pushw	x
      008BE6 4B 00            [ 1]  348 	push	#0x00
      008BE8 AE 81 0A         [ 2]  349 	ldw	x, #(___str_0+0)
      008BEB CD AB 90         [ 4]  350 	call	_assert_failed
      008BEE                        351 00109$:
                                    352 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008BEE 1E 03            [ 2]  353 	ldw	x, (0x03, sp)
      008BF0 1C 00 03         [ 2]  354 	addw	x, #0x0003
      008BF3 F6               [ 1]  355 	ld	a, (x)
                                    356 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
      008BF4 0D 07            [ 1]  357 	tnz	(0x07, sp)
      008BF6 27 05            [ 1]  358 	jreq	00102$
                                    359 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008BF8 1A 02            [ 1]  360 	or	a, (0x02, sp)
      008BFA F7               [ 1]  361 	ld	(x), a
      008BFB 20 0A            [ 2]  362 	jra	00104$
      008BFD                        363 00102$:
                                    364 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008BFD 88               [ 1]  365 	push	a
      008BFE 7B 03            [ 1]  366 	ld	a, (0x03, sp)
      008C00 43               [ 1]  367 	cpl	a
      008C01 6B 02            [ 1]  368 	ld	(0x02, sp), a
      008C03 84               [ 1]  369 	pop	a
      008C04 14 01            [ 1]  370 	and	a, (0x01, sp)
      008C06 F7               [ 1]  371 	ld	(x), a
      008C07                        372 00104$:
                                    373 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 238: }
      008C07 5B 04            [ 2]  374 	addw	sp, #4
      008C09 85               [ 2]  375 	popw	x
      008C0A 84               [ 1]  376 	pop	a
      008C0B FC               [ 2]  377 	jp	(x)
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
