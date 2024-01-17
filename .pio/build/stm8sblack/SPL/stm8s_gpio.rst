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
                                     59 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     60 ;	-----------------------------------------
                                     61 ;	 function GPIO_DeInit
                                     62 ;	-----------------------------------------
      0089DF                         63 _GPIO_DeInit:
      0089DF 51               [ 1]   64 	exgw	x, y
                                     65 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      0089E0 90 7F            [ 1]   66 	clr	(y)
                                     67 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      0089E2 93               [ 1]   68 	ldw	x, y
      0089E3 5C               [ 1]   69 	incw	x
      0089E4 5C               [ 1]   70 	incw	x
      0089E5 7F               [ 1]   71 	clr	(x)
                                     72 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      0089E6 93               [ 1]   73 	ldw	x, y
      0089E7 6F 03            [ 1]   74 	clr	(0x0003, x)
                                     75 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      0089E9 93               [ 1]   76 	ldw	x, y
      0089EA 6F 04            [ 1]   77 	clr	(0x0004, x)
                                     78 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 59: }
      0089EC 81               [ 4]   79 	ret
                                     80 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     81 ;	-----------------------------------------
                                     82 ;	 function GPIO_Init
                                     83 ;	-----------------------------------------
      0089ED                         84 _GPIO_Init:
      0089ED 52 06            [ 2]   85 	sub	sp, #6
      0089EF 1F 05            [ 2]   86 	ldw	(0x05, sp), x
      0089F1 6B 04            [ 1]   87 	ld	(0x04, sp), a
                                     88 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
      0089F3 0D 09            [ 1]   89 	tnz	(0x09, sp)
      0089F5 27 4E            [ 1]   90 	jreq	00116$
      0089F7 7B 09            [ 1]   91 	ld	a, (0x09, sp)
      0089F9 A1 40            [ 1]   92 	cp	a, #0x40
      0089FB 27 48            [ 1]   93 	jreq	00116$
      0089FD 7B 09            [ 1]   94 	ld	a, (0x09, sp)
      0089FF A1 20            [ 1]   95 	cp	a, #0x20
      008A01 27 42            [ 1]   96 	jreq	00116$
      008A03 7B 09            [ 1]   97 	ld	a, (0x09, sp)
      008A05 A1 60            [ 1]   98 	cp	a, #0x60
      008A07 27 3C            [ 1]   99 	jreq	00116$
      008A09 7B 09            [ 1]  100 	ld	a, (0x09, sp)
      008A0B A1 A0            [ 1]  101 	cp	a, #0xa0
      008A0D 27 36            [ 1]  102 	jreq	00116$
      008A0F 7B 09            [ 1]  103 	ld	a, (0x09, sp)
      008A11 A1 E0            [ 1]  104 	cp	a, #0xe0
      008A13 27 30            [ 1]  105 	jreq	00116$
      008A15 7B 09            [ 1]  106 	ld	a, (0x09, sp)
      008A17 A1 80            [ 1]  107 	cp	a, #0x80
      008A19 27 2A            [ 1]  108 	jreq	00116$
      008A1B 7B 09            [ 1]  109 	ld	a, (0x09, sp)
      008A1D A1 C0            [ 1]  110 	cp	a, #0xc0
      008A1F 27 24            [ 1]  111 	jreq	00116$
      008A21 7B 09            [ 1]  112 	ld	a, (0x09, sp)
      008A23 A1 B0            [ 1]  113 	cp	a, #0xb0
      008A25 27 1E            [ 1]  114 	jreq	00116$
      008A27 7B 09            [ 1]  115 	ld	a, (0x09, sp)
      008A29 A1 F0            [ 1]  116 	cp	a, #0xf0
      008A2B 27 18            [ 1]  117 	jreq	00116$
      008A2D 7B 09            [ 1]  118 	ld	a, (0x09, sp)
      008A2F A1 90            [ 1]  119 	cp	a, #0x90
      008A31 27 12            [ 1]  120 	jreq	00116$
      008A33 7B 09            [ 1]  121 	ld	a, (0x09, sp)
      008A35 A1 D0            [ 1]  122 	cp	a, #0xd0
      008A37 27 0C            [ 1]  123 	jreq	00116$
      008A39 4B 4D            [ 1]  124 	push	#0x4d
      008A3B 5F               [ 1]  125 	clrw	x
      008A3C 89               [ 2]  126 	pushw	x
      008A3D 4B 00            [ 1]  127 	push	#0x00
      008A3F AE 81 05         [ 2]  128 	ldw	x, #(___str_0+0)
      008A42 CD AE 90         [ 4]  129 	call	_assert_failed
      008A45                        130 00116$:
                                    131 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      008A45 0D 04            [ 1]  132 	tnz	(0x04, sp)
      008A47 26 0C            [ 1]  133 	jrne	00151$
      008A49 4B 4E            [ 1]  134 	push	#0x4e
      008A4B 5F               [ 1]  135 	clrw	x
      008A4C 89               [ 2]  136 	pushw	x
      008A4D 4B 00            [ 1]  137 	push	#0x00
      008A4F AE 81 05         [ 2]  138 	ldw	x, #(___str_0+0)
      008A52 CD AE 90         [ 4]  139 	call	_assert_failed
      008A55                        140 00151$:
                                    141 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008A55 1E 05            [ 2]  142 	ldw	x, (0x05, sp)
      008A57 1C 00 04         [ 2]  143 	addw	x, #0x0004
      008A5A 1F 01            [ 2]  144 	ldw	(0x01, sp), x
      008A5C F6               [ 1]  145 	ld	a, (x)
      008A5D 88               [ 1]  146 	push	a
      008A5E 7B 05            [ 1]  147 	ld	a, (0x05, sp)
      008A60 43               [ 1]  148 	cpl	a
      008A61 6B 04            [ 1]  149 	ld	(0x04, sp), a
      008A63 84               [ 1]  150 	pop	a
      008A64 14 03            [ 1]  151 	and	a, (0x03, sp)
      008A66 1E 01            [ 2]  152 	ldw	x, (0x01, sp)
      008A68 F7               [ 1]  153 	ld	(x), a
                                    154 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      008A69 1E 05            [ 2]  155 	ldw	x, (0x05, sp)
      008A6B 5C               [ 1]  156 	incw	x
      008A6C 5C               [ 1]  157 	incw	x
                                    158 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      008A6D 0D 09            [ 1]  159 	tnz	(0x09, sp)
      008A6F 2A 20            [ 1]  160 	jrpl	00105$
                                    161 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008A71 16 05            [ 2]  162 	ldw	y, (0x05, sp)
      008A73 90 F6            [ 1]  163 	ld	a, (y)
                                    164 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      008A75 88               [ 1]  165 	push	a
      008A76 7B 0A            [ 1]  166 	ld	a, (0x0a, sp)
      008A78 A5 10            [ 1]  167 	bcp	a, #0x10
      008A7A 84               [ 1]  168 	pop	a
      008A7B 27 08            [ 1]  169 	jreq	00102$
                                    170 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008A7D 1A 04            [ 1]  171 	or	a, (0x04, sp)
      008A7F 16 05            [ 2]  172 	ldw	y, (0x05, sp)
      008A81 90 F7            [ 1]  173 	ld	(y), a
      008A83 20 06            [ 2]  174 	jra	00103$
      008A85                        175 00102$:
                                    176 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      008A85 14 03            [ 1]  177 	and	a, (0x03, sp)
      008A87 16 05            [ 2]  178 	ldw	y, (0x05, sp)
      008A89 90 F7            [ 1]  179 	ld	(y), a
      008A8B                        180 00103$:
                                    181 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      008A8B F6               [ 1]  182 	ld	a, (x)
      008A8C 1A 04            [ 1]  183 	or	a, (0x04, sp)
      008A8E F7               [ 1]  184 	ld	(x), a
      008A8F 20 04            [ 2]  185 	jra	00106$
      008A91                        186 00105$:
                                    187 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      008A91 F6               [ 1]  188 	ld	a, (x)
      008A92 14 03            [ 1]  189 	and	a, (0x03, sp)
      008A94 F7               [ 1]  190 	ld	(x), a
      008A95                        191 00106$:
                                    192 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008A95 1E 05            [ 2]  193 	ldw	x, (0x05, sp)
      008A97 1C 00 03         [ 2]  194 	addw	x, #0x0003
      008A9A F6               [ 1]  195 	ld	a, (x)
                                    196 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      008A9B 88               [ 1]  197 	push	a
      008A9C 7B 0A            [ 1]  198 	ld	a, (0x0a, sp)
      008A9E A5 40            [ 1]  199 	bcp	a, #0x40
      008AA0 84               [ 1]  200 	pop	a
      008AA1 27 05            [ 1]  201 	jreq	00108$
                                    202 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008AA3 1A 04            [ 1]  203 	or	a, (0x04, sp)
      008AA5 F7               [ 1]  204 	ld	(x), a
      008AA6 20 03            [ 2]  205 	jra	00109$
      008AA8                        206 00108$:
                                    207 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008AA8 14 03            [ 1]  208 	and	a, (0x03, sp)
      008AAA F7               [ 1]  209 	ld	(x), a
      008AAB                        210 00109$:
                                    211 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008AAB 1E 01            [ 2]  212 	ldw	x, (0x01, sp)
      008AAD F6               [ 1]  213 	ld	a, (x)
                                    214 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      008AAE 88               [ 1]  215 	push	a
      008AAF 7B 0A            [ 1]  216 	ld	a, (0x0a, sp)
      008AB1 A5 20            [ 1]  217 	bcp	a, #0x20
      008AB3 84               [ 1]  218 	pop	a
      008AB4 27 07            [ 1]  219 	jreq	00111$
                                    220 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      008AB6 1A 04            [ 1]  221 	or	a, (0x04, sp)
      008AB8 1E 01            [ 2]  222 	ldw	x, (0x01, sp)
      008ABA F7               [ 1]  223 	ld	(x), a
      008ABB 20 05            [ 2]  224 	jra	00113$
      008ABD                        225 00111$:
                                    226 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008ABD 14 03            [ 1]  227 	and	a, (0x03, sp)
      008ABF 1E 01            [ 2]  228 	ldw	x, (0x01, sp)
      008AC1 F7               [ 1]  229 	ld	(x), a
      008AC2                        230 00113$:
                                    231 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 131: }
      008AC2 5B 06            [ 2]  232 	addw	sp, #6
      008AC4 85               [ 2]  233 	popw	x
      008AC5 84               [ 1]  234 	pop	a
      008AC6 FC               [ 2]  235 	jp	(x)
                                    236 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    237 ;	-----------------------------------------
                                    238 ;	 function GPIO_Write
                                    239 ;	-----------------------------------------
      008AC7                        240 _GPIO_Write:
                                    241 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
      008AC7 F7               [ 1]  242 	ld	(x), a
                                    243 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 144: }
      008AC8 81               [ 4]  244 	ret
                                    245 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    246 ;	-----------------------------------------
                                    247 ;	 function GPIO_WriteHigh
                                    248 ;	-----------------------------------------
      008AC9                        249 _GPIO_WriteHigh:
      008AC9 88               [ 1]  250 	push	a
      008ACA 6B 01            [ 1]  251 	ld	(0x01, sp), a
                                    252 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      008ACC F6               [ 1]  253 	ld	a, (x)
      008ACD 1A 01            [ 1]  254 	or	a, (0x01, sp)
      008ACF F7               [ 1]  255 	ld	(x), a
                                    256 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 157: }
      008AD0 84               [ 1]  257 	pop	a
      008AD1 81               [ 4]  258 	ret
                                    259 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    260 ;	-----------------------------------------
                                    261 ;	 function GPIO_WriteLow
                                    262 ;	-----------------------------------------
      008AD2                        263 _GPIO_WriteLow:
      008AD2 88               [ 1]  264 	push	a
                                    265 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      008AD3 88               [ 1]  266 	push	a
      008AD4 F6               [ 1]  267 	ld	a, (x)
      008AD5 6B 02            [ 1]  268 	ld	(0x02, sp), a
      008AD7 84               [ 1]  269 	pop	a
      008AD8 43               [ 1]  270 	cpl	a
      008AD9 14 01            [ 1]  271 	and	a, (0x01, sp)
      008ADB F7               [ 1]  272 	ld	(x), a
                                    273 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 170: }
      008ADC 84               [ 1]  274 	pop	a
      008ADD 81               [ 4]  275 	ret
                                    276 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    277 ;	-----------------------------------------
                                    278 ;	 function GPIO_WriteReverse
                                    279 ;	-----------------------------------------
      008ADE                        280 _GPIO_WriteReverse:
      008ADE 88               [ 1]  281 	push	a
      008ADF 6B 01            [ 1]  282 	ld	(0x01, sp), a
                                    283 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
      008AE1 F6               [ 1]  284 	ld	a, (x)
      008AE2 18 01            [ 1]  285 	xor	a, (0x01, sp)
      008AE4 F7               [ 1]  286 	ld	(x), a
                                    287 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 183: }
      008AE5 84               [ 1]  288 	pop	a
      008AE6 81               [ 4]  289 	ret
                                    290 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    291 ;	-----------------------------------------
                                    292 ;	 function GPIO_ReadOutputData
                                    293 ;	-----------------------------------------
      008AE7                        294 _GPIO_ReadOutputData:
                                    295 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
      008AE7 F6               [ 1]  296 	ld	a, (x)
                                    297 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 194: }
      008AE8 81               [ 4]  298 	ret
                                    299 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    300 ;	-----------------------------------------
                                    301 ;	 function GPIO_ReadInputData
                                    302 ;	-----------------------------------------
      008AE9                        303 _GPIO_ReadInputData:
                                    304 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
      008AE9 E6 01            [ 1]  305 	ld	a, (0x1, x)
                                    306 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 205: }
      008AEB 81               [ 4]  307 	ret
                                    308 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    309 ;	-----------------------------------------
                                    310 ;	 function GPIO_ReadInputPin
                                    311 ;	-----------------------------------------
      008AEC                        312 _GPIO_ReadInputPin:
      008AEC 88               [ 1]  313 	push	a
      008AED 6B 01            [ 1]  314 	ld	(0x01, sp), a
                                    315 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      008AEF E6 01            [ 1]  316 	ld	a, (0x1, x)
      008AF1 14 01            [ 1]  317 	and	a, (0x01, sp)
                                    318 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 216: }
      008AF3 5B 01            [ 2]  319 	addw	sp, #1
      008AF5 81               [ 4]  320 	ret
                                    321 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    322 ;	-----------------------------------------
                                    323 ;	 function GPIO_ExternalPullUpConfig
                                    324 ;	-----------------------------------------
      008AF6                        325 _GPIO_ExternalPullUpConfig:
      008AF6 52 04            [ 2]  326 	sub	sp, #4
      008AF8 1F 03            [ 2]  327 	ldw	(0x03, sp), x
                                    328 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 228: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      008AFA 6B 02            [ 1]  329 	ld	(0x02, sp), a
      008AFC 26 0C            [ 1]  330 	jrne	00107$
      008AFE 4B E4            [ 1]  331 	push	#0xe4
      008B00 5F               [ 1]  332 	clrw	x
      008B01 89               [ 2]  333 	pushw	x
      008B02 4B 00            [ 1]  334 	push	#0x00
      008B04 AE 81 05         [ 2]  335 	ldw	x, #(___str_0+0)
      008B07 CD AE 90         [ 4]  336 	call	_assert_failed
      008B0A                        337 00107$:
                                    338 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 229: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008B0A 0D 07            [ 1]  339 	tnz	(0x07, sp)
      008B0C 27 11            [ 1]  340 	jreq	00109$
      008B0E 7B 07            [ 1]  341 	ld	a, (0x07, sp)
      008B10 4A               [ 1]  342 	dec	a
      008B11 27 0C            [ 1]  343 	jreq	00109$
      008B13 4B E5            [ 1]  344 	push	#0xe5
      008B15 5F               [ 1]  345 	clrw	x
      008B16 89               [ 2]  346 	pushw	x
      008B17 4B 00            [ 1]  347 	push	#0x00
      008B19 AE 81 05         [ 2]  348 	ldw	x, #(___str_0+0)
      008B1C CD AE 90         [ 4]  349 	call	_assert_failed
      008B1F                        350 00109$:
                                    351 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008B1F 1E 03            [ 2]  352 	ldw	x, (0x03, sp)
      008B21 1C 00 03         [ 2]  353 	addw	x, #0x0003
      008B24 F6               [ 1]  354 	ld	a, (x)
                                    355 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
      008B25 0D 07            [ 1]  356 	tnz	(0x07, sp)
      008B27 27 05            [ 1]  357 	jreq	00102$
                                    358 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008B29 1A 02            [ 1]  359 	or	a, (0x02, sp)
      008B2B F7               [ 1]  360 	ld	(x), a
      008B2C 20 0A            [ 2]  361 	jra	00104$
      008B2E                        362 00102$:
                                    363 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008B2E 88               [ 1]  364 	push	a
      008B2F 7B 03            [ 1]  365 	ld	a, (0x03, sp)
      008B31 43               [ 1]  366 	cpl	a
      008B32 6B 02            [ 1]  367 	ld	(0x02, sp), a
      008B34 84               [ 1]  368 	pop	a
      008B35 14 01            [ 1]  369 	and	a, (0x01, sp)
      008B37 F7               [ 1]  370 	ld	(x), a
      008B38                        371 00104$:
                                    372 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 238: }
      008B38 5B 04            [ 2]  373 	addw	sp, #4
      008B3A 85               [ 2]  374 	popw	x
      008B3B 84               [ 1]  375 	pop	a
      008B3C FC               [ 2]  376 	jp	(x)
                                    377 	.area CODE
                                    378 	.area CONST
                                    379 	.area CONST
      008105                        380 ___str_0:
      008105 43 3A                  381 	.ascii "C:"
      008107 5C                     382 	.db 0x5c
      008108 55 73 65 72 73         383 	.ascii "Users"
      00810D 5C                     384 	.db 0x5c
      00810E 64 75 6E 61 65 76      385 	.ascii "dunaev"
      008114 5C                     386 	.db 0x5c
      008115 2E 70 6C 61 74 66 6F   387 	.ascii ".platformio"
             72 6D 69 6F
      008120 5C                     388 	.db 0x5c
      008121 70 61 63 6B 61 67 65   389 	.ascii "packages"
             73
      008129 5C                     390 	.db 0x5c
      00812A 66 72 61 6D 65 77 6F   391 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      00813D 5C                     392 	.db 0x5c
      00813E 4C 69 62 72 61 72 69   393 	.ascii "Libraries"
             65 73
      008147 5C                     394 	.db 0x5c
      008148 53 54 4D 38 53 5F 53   395 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      00815E 5C                     396 	.db 0x5c
      00815F 73 72 63               397 	.ascii "src"
      008162 5C                     398 	.db 0x5c
      008163 73 74 6D 38 73 5F 67   399 	.ascii "stm8s_gpio.c"
             70 69 6F 2E 63
      00816F 00                     400 	.db 0x00
                                    401 	.area CODE
                                    402 	.area INITIALIZER
                                    403 	.area CABS (ABS)
