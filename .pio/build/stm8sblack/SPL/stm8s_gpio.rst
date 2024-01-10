                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
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
                                     59 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     60 ;	-----------------------------------------
                                     61 ;	 function GPIO_DeInit
                                     62 ;	-----------------------------------------
      008999                         63 _GPIO_DeInit:
      008999 51               [ 1]   64 	exgw	x, y
                                     65 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      00899A 90 7F            [ 1]   66 	clr	(y)
                                     67 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      00899C 93               [ 1]   68 	ldw	x, y
      00899D 5C               [ 1]   69 	incw	x
      00899E 5C               [ 1]   70 	incw	x
      00899F 7F               [ 1]   71 	clr	(x)
                                     72 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      0089A0 93               [ 1]   73 	ldw	x, y
      0089A1 6F 03            [ 1]   74 	clr	(0x0003, x)
                                     75 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      0089A3 93               [ 1]   76 	ldw	x, y
      0089A4 6F 04            [ 1]   77 	clr	(0x0004, x)
                                     78 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 59: }
      0089A6 81               [ 4]   79 	ret
                                     80 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     81 ;	-----------------------------------------
                                     82 ;	 function GPIO_Init
                                     83 ;	-----------------------------------------
      0089A7                         84 _GPIO_Init:
      0089A7 52 06            [ 2]   85 	sub	sp, #6
      0089A9 1F 05            [ 2]   86 	ldw	(0x05, sp), x
      0089AB 6B 04            [ 1]   87 	ld	(0x04, sp), a
                                     88 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
      0089AD 0D 09            [ 1]   89 	tnz	(0x09, sp)
      0089AF 27 4E            [ 1]   90 	jreq	00116$
      0089B1 7B 09            [ 1]   91 	ld	a, (0x09, sp)
      0089B3 A1 40            [ 1]   92 	cp	a, #0x40
      0089B5 27 48            [ 1]   93 	jreq	00116$
      0089B7 7B 09            [ 1]   94 	ld	a, (0x09, sp)
      0089B9 A1 20            [ 1]   95 	cp	a, #0x20
      0089BB 27 42            [ 1]   96 	jreq	00116$
      0089BD 7B 09            [ 1]   97 	ld	a, (0x09, sp)
      0089BF A1 60            [ 1]   98 	cp	a, #0x60
      0089C1 27 3C            [ 1]   99 	jreq	00116$
      0089C3 7B 09            [ 1]  100 	ld	a, (0x09, sp)
      0089C5 A1 A0            [ 1]  101 	cp	a, #0xa0
      0089C7 27 36            [ 1]  102 	jreq	00116$
      0089C9 7B 09            [ 1]  103 	ld	a, (0x09, sp)
      0089CB A1 E0            [ 1]  104 	cp	a, #0xe0
      0089CD 27 30            [ 1]  105 	jreq	00116$
      0089CF 7B 09            [ 1]  106 	ld	a, (0x09, sp)
      0089D1 A1 80            [ 1]  107 	cp	a, #0x80
      0089D3 27 2A            [ 1]  108 	jreq	00116$
      0089D5 7B 09            [ 1]  109 	ld	a, (0x09, sp)
      0089D7 A1 C0            [ 1]  110 	cp	a, #0xc0
      0089D9 27 24            [ 1]  111 	jreq	00116$
      0089DB 7B 09            [ 1]  112 	ld	a, (0x09, sp)
      0089DD A1 B0            [ 1]  113 	cp	a, #0xb0
      0089DF 27 1E            [ 1]  114 	jreq	00116$
      0089E1 7B 09            [ 1]  115 	ld	a, (0x09, sp)
      0089E3 A1 F0            [ 1]  116 	cp	a, #0xf0
      0089E5 27 18            [ 1]  117 	jreq	00116$
      0089E7 7B 09            [ 1]  118 	ld	a, (0x09, sp)
      0089E9 A1 90            [ 1]  119 	cp	a, #0x90
      0089EB 27 12            [ 1]  120 	jreq	00116$
      0089ED 7B 09            [ 1]  121 	ld	a, (0x09, sp)
      0089EF A1 D0            [ 1]  122 	cp	a, #0xd0
      0089F1 27 0C            [ 1]  123 	jreq	00116$
      0089F3 4B 4D            [ 1]  124 	push	#0x4d
      0089F5 5F               [ 1]  125 	clrw	x
      0089F6 89               [ 2]  126 	pushw	x
      0089F7 4B 00            [ 1]  127 	push	#0x00
      0089F9 AE 81 04         [ 2]  128 	ldw	x, #(___str_0+0)
      0089FC CD AB 2D         [ 4]  129 	call	_assert_failed
      0089FF                        130 00116$:
                                    131 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      0089FF 0D 04            [ 1]  132 	tnz	(0x04, sp)
      008A01 26 0C            [ 1]  133 	jrne	00151$
      008A03 4B 4E            [ 1]  134 	push	#0x4e
      008A05 5F               [ 1]  135 	clrw	x
      008A06 89               [ 2]  136 	pushw	x
      008A07 4B 00            [ 1]  137 	push	#0x00
      008A09 AE 81 04         [ 2]  138 	ldw	x, #(___str_0+0)
      008A0C CD AB 2D         [ 4]  139 	call	_assert_failed
      008A0F                        140 00151$:
                                    141 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008A0F 1E 05            [ 2]  142 	ldw	x, (0x05, sp)
      008A11 1C 00 04         [ 2]  143 	addw	x, #0x0004
      008A14 1F 01            [ 2]  144 	ldw	(0x01, sp), x
      008A16 F6               [ 1]  145 	ld	a, (x)
      008A17 88               [ 1]  146 	push	a
      008A18 7B 05            [ 1]  147 	ld	a, (0x05, sp)
      008A1A 43               [ 1]  148 	cpl	a
      008A1B 6B 04            [ 1]  149 	ld	(0x04, sp), a
      008A1D 84               [ 1]  150 	pop	a
      008A1E 14 03            [ 1]  151 	and	a, (0x03, sp)
      008A20 1E 01            [ 2]  152 	ldw	x, (0x01, sp)
      008A22 F7               [ 1]  153 	ld	(x), a
                                    154 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      008A23 1E 05            [ 2]  155 	ldw	x, (0x05, sp)
      008A25 5C               [ 1]  156 	incw	x
      008A26 5C               [ 1]  157 	incw	x
                                    158 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      008A27 0D 09            [ 1]  159 	tnz	(0x09, sp)
      008A29 2A 20            [ 1]  160 	jrpl	00105$
                                    161 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008A2B 16 05            [ 2]  162 	ldw	y, (0x05, sp)
      008A2D 90 F6            [ 1]  163 	ld	a, (y)
                                    164 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      008A2F 88               [ 1]  165 	push	a
      008A30 7B 0A            [ 1]  166 	ld	a, (0x0a, sp)
      008A32 A5 10            [ 1]  167 	bcp	a, #0x10
      008A34 84               [ 1]  168 	pop	a
      008A35 27 08            [ 1]  169 	jreq	00102$
                                    170 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008A37 1A 04            [ 1]  171 	or	a, (0x04, sp)
      008A39 16 05            [ 2]  172 	ldw	y, (0x05, sp)
      008A3B 90 F7            [ 1]  173 	ld	(y), a
      008A3D 20 06            [ 2]  174 	jra	00103$
      008A3F                        175 00102$:
                                    176 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      008A3F 14 03            [ 1]  177 	and	a, (0x03, sp)
      008A41 16 05            [ 2]  178 	ldw	y, (0x05, sp)
      008A43 90 F7            [ 1]  179 	ld	(y), a
      008A45                        180 00103$:
                                    181 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      008A45 F6               [ 1]  182 	ld	a, (x)
      008A46 1A 04            [ 1]  183 	or	a, (0x04, sp)
      008A48 F7               [ 1]  184 	ld	(x), a
      008A49 20 04            [ 2]  185 	jra	00106$
      008A4B                        186 00105$:
                                    187 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      008A4B F6               [ 1]  188 	ld	a, (x)
      008A4C 14 03            [ 1]  189 	and	a, (0x03, sp)
      008A4E F7               [ 1]  190 	ld	(x), a
      008A4F                        191 00106$:
                                    192 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008A4F 1E 05            [ 2]  193 	ldw	x, (0x05, sp)
      008A51 1C 00 03         [ 2]  194 	addw	x, #0x0003
      008A54 F6               [ 1]  195 	ld	a, (x)
                                    196 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      008A55 88               [ 1]  197 	push	a
      008A56 7B 0A            [ 1]  198 	ld	a, (0x0a, sp)
      008A58 A5 40            [ 1]  199 	bcp	a, #0x40
      008A5A 84               [ 1]  200 	pop	a
      008A5B 27 05            [ 1]  201 	jreq	00108$
                                    202 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008A5D 1A 04            [ 1]  203 	or	a, (0x04, sp)
      008A5F F7               [ 1]  204 	ld	(x), a
      008A60 20 03            [ 2]  205 	jra	00109$
      008A62                        206 00108$:
                                    207 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008A62 14 03            [ 1]  208 	and	a, (0x03, sp)
      008A64 F7               [ 1]  209 	ld	(x), a
      008A65                        210 00109$:
                                    211 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008A65 1E 01            [ 2]  212 	ldw	x, (0x01, sp)
      008A67 F6               [ 1]  213 	ld	a, (x)
                                    214 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      008A68 88               [ 1]  215 	push	a
      008A69 7B 0A            [ 1]  216 	ld	a, (0x0a, sp)
      008A6B A5 20            [ 1]  217 	bcp	a, #0x20
      008A6D 84               [ 1]  218 	pop	a
      008A6E 27 07            [ 1]  219 	jreq	00111$
                                    220 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      008A70 1A 04            [ 1]  221 	or	a, (0x04, sp)
      008A72 1E 01            [ 2]  222 	ldw	x, (0x01, sp)
      008A74 F7               [ 1]  223 	ld	(x), a
      008A75 20 05            [ 2]  224 	jra	00113$
      008A77                        225 00111$:
                                    226 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008A77 14 03            [ 1]  227 	and	a, (0x03, sp)
      008A79 1E 01            [ 2]  228 	ldw	x, (0x01, sp)
      008A7B F7               [ 1]  229 	ld	(x), a
      008A7C                        230 00113$:
                                    231 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 131: }
      008A7C 5B 06            [ 2]  232 	addw	sp, #6
      008A7E 85               [ 2]  233 	popw	x
      008A7F 84               [ 1]  234 	pop	a
      008A80 FC               [ 2]  235 	jp	(x)
                                    236 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    237 ;	-----------------------------------------
                                    238 ;	 function GPIO_Write
                                    239 ;	-----------------------------------------
      008A81                        240 _GPIO_Write:
                                    241 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
      008A81 F7               [ 1]  242 	ld	(x), a
                                    243 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 144: }
      008A82 81               [ 4]  244 	ret
                                    245 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    246 ;	-----------------------------------------
                                    247 ;	 function GPIO_WriteHigh
                                    248 ;	-----------------------------------------
      008A83                        249 _GPIO_WriteHigh:
      008A83 88               [ 1]  250 	push	a
      008A84 6B 01            [ 1]  251 	ld	(0x01, sp), a
                                    252 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      008A86 F6               [ 1]  253 	ld	a, (x)
      008A87 1A 01            [ 1]  254 	or	a, (0x01, sp)
      008A89 F7               [ 1]  255 	ld	(x), a
                                    256 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 157: }
      008A8A 84               [ 1]  257 	pop	a
      008A8B 81               [ 4]  258 	ret
                                    259 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    260 ;	-----------------------------------------
                                    261 ;	 function GPIO_WriteLow
                                    262 ;	-----------------------------------------
      008A8C                        263 _GPIO_WriteLow:
      008A8C 88               [ 1]  264 	push	a
                                    265 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      008A8D 88               [ 1]  266 	push	a
      008A8E F6               [ 1]  267 	ld	a, (x)
      008A8F 6B 02            [ 1]  268 	ld	(0x02, sp), a
      008A91 84               [ 1]  269 	pop	a
      008A92 43               [ 1]  270 	cpl	a
      008A93 14 01            [ 1]  271 	and	a, (0x01, sp)
      008A95 F7               [ 1]  272 	ld	(x), a
                                    273 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 170: }
      008A96 84               [ 1]  274 	pop	a
      008A97 81               [ 4]  275 	ret
                                    276 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    277 ;	-----------------------------------------
                                    278 ;	 function GPIO_WriteReverse
                                    279 ;	-----------------------------------------
      008A98                        280 _GPIO_WriteReverse:
      008A98 88               [ 1]  281 	push	a
      008A99 6B 01            [ 1]  282 	ld	(0x01, sp), a
                                    283 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
      008A9B F6               [ 1]  284 	ld	a, (x)
      008A9C 18 01            [ 1]  285 	xor	a, (0x01, sp)
      008A9E F7               [ 1]  286 	ld	(x), a
                                    287 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 183: }
      008A9F 84               [ 1]  288 	pop	a
      008AA0 81               [ 4]  289 	ret
                                    290 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    291 ;	-----------------------------------------
                                    292 ;	 function GPIO_ReadOutputData
                                    293 ;	-----------------------------------------
      008AA1                        294 _GPIO_ReadOutputData:
                                    295 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
      008AA1 F6               [ 1]  296 	ld	a, (x)
                                    297 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 194: }
      008AA2 81               [ 4]  298 	ret
                                    299 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    300 ;	-----------------------------------------
                                    301 ;	 function GPIO_ReadInputData
                                    302 ;	-----------------------------------------
      008AA3                        303 _GPIO_ReadInputData:
                                    304 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
      008AA3 E6 01            [ 1]  305 	ld	a, (0x1, x)
                                    306 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 205: }
      008AA5 81               [ 4]  307 	ret
                                    308 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    309 ;	-----------------------------------------
                                    310 ;	 function GPIO_ReadInputPin
                                    311 ;	-----------------------------------------
      008AA6                        312 _GPIO_ReadInputPin:
      008AA6 88               [ 1]  313 	push	a
      008AA7 6B 01            [ 1]  314 	ld	(0x01, sp), a
                                    315 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      008AA9 E6 01            [ 1]  316 	ld	a, (0x1, x)
      008AAB 14 01            [ 1]  317 	and	a, (0x01, sp)
                                    318 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 216: }
      008AAD 5B 01            [ 2]  319 	addw	sp, #1
      008AAF 81               [ 4]  320 	ret
                                    321 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    322 ;	-----------------------------------------
                                    323 ;	 function GPIO_ExternalPullUpConfig
                                    324 ;	-----------------------------------------
      008AB0                        325 _GPIO_ExternalPullUpConfig:
      008AB0 52 04            [ 2]  326 	sub	sp, #4
      008AB2 1F 03            [ 2]  327 	ldw	(0x03, sp), x
                                    328 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 228: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      008AB4 6B 02            [ 1]  329 	ld	(0x02, sp), a
      008AB6 26 0C            [ 1]  330 	jrne	00107$
      008AB8 4B E4            [ 1]  331 	push	#0xe4
      008ABA 5F               [ 1]  332 	clrw	x
      008ABB 89               [ 2]  333 	pushw	x
      008ABC 4B 00            [ 1]  334 	push	#0x00
      008ABE AE 81 04         [ 2]  335 	ldw	x, #(___str_0+0)
      008AC1 CD AB 2D         [ 4]  336 	call	_assert_failed
      008AC4                        337 00107$:
                                    338 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 229: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008AC4 0D 07            [ 1]  339 	tnz	(0x07, sp)
      008AC6 27 11            [ 1]  340 	jreq	00109$
      008AC8 7B 07            [ 1]  341 	ld	a, (0x07, sp)
      008ACA 4A               [ 1]  342 	dec	a
      008ACB 27 0C            [ 1]  343 	jreq	00109$
      008ACD 4B E5            [ 1]  344 	push	#0xe5
      008ACF 5F               [ 1]  345 	clrw	x
      008AD0 89               [ 2]  346 	pushw	x
      008AD1 4B 00            [ 1]  347 	push	#0x00
      008AD3 AE 81 04         [ 2]  348 	ldw	x, #(___str_0+0)
      008AD6 CD AB 2D         [ 4]  349 	call	_assert_failed
      008AD9                        350 00109$:
                                    351 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008AD9 1E 03            [ 2]  352 	ldw	x, (0x03, sp)
      008ADB 1C 00 03         [ 2]  353 	addw	x, #0x0003
      008ADE F6               [ 1]  354 	ld	a, (x)
                                    355 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
      008ADF 0D 07            [ 1]  356 	tnz	(0x07, sp)
      008AE1 27 05            [ 1]  357 	jreq	00102$
                                    358 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008AE3 1A 02            [ 1]  359 	or	a, (0x02, sp)
      008AE5 F7               [ 1]  360 	ld	(x), a
      008AE6 20 0A            [ 2]  361 	jra	00104$
      008AE8                        362 00102$:
                                    363 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008AE8 88               [ 1]  364 	push	a
      008AE9 7B 03            [ 1]  365 	ld	a, (0x03, sp)
      008AEB 43               [ 1]  366 	cpl	a
      008AEC 6B 02            [ 1]  367 	ld	(0x02, sp), a
      008AEE 84               [ 1]  368 	pop	a
      008AEF 14 01            [ 1]  369 	and	a, (0x01, sp)
      008AF1 F7               [ 1]  370 	ld	(x), a
      008AF2                        371 00104$:
                                    372 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 238: }
      008AF2 5B 04            [ 2]  373 	addw	sp, #4
      008AF4 85               [ 2]  374 	popw	x
      008AF5 84               [ 1]  375 	pop	a
      008AF6 FC               [ 2]  376 	jp	(x)
                                    377 	.area CODE
                                    378 	.area CONST
                                    379 	.area CONST
      008104                        380 ___str_0:
      008104 43 3A                  381 	.ascii "C:"
      008106 5C                     382 	.db 0x5c
      008107 55 73 65 72 73         383 	.ascii "Users"
      00810C 5C                     384 	.db 0x5c
      00810D 64 69 73 61 6E         385 	.ascii "disan"
      008112 5C                     386 	.db 0x5c
      008113 2E 70 6C 61 74 66 6F   387 	.ascii ".platformio"
             72 6D 69 6F
      00811E 5C                     388 	.db 0x5c
      00811F 70 61 63 6B 61 67 65   389 	.ascii "packages"
             73
      008127 5C                     390 	.db 0x5c
      008128 66 72 61 6D 65 77 6F   391 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      00813B 5C                     392 	.db 0x5c
      00813C 4C 69 62 72 61 72 69   393 	.ascii "Libraries"
             65 73
      008145 5C                     394 	.db 0x5c
      008146 53 54 4D 38 53 5F 53   395 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      00815C 5C                     396 	.db 0x5c
      00815D 73 72 63               397 	.ascii "src"
      008160 5C                     398 	.db 0x5c
      008161 73 74 6D 38 73 5F 67   399 	.ascii "stm8s_gpio.c"
             70 69 6F 2E 63
      00816D 00                     400 	.db 0x00
                                    401 	.area CODE
                                    402 	.area INITIALIZER
                                    403 	.area CABS (ABS)
