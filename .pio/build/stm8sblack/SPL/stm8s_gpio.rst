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
                                     17 	.globl _GPIO_ReadInputPin
                                     18 ;--------------------------------------------------------
                                     19 ; ram data
                                     20 ;--------------------------------------------------------
                                     21 	.area DATA
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area INITIALIZED
                                     26 ;--------------------------------------------------------
                                     27 ; absolute external ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area DABS (ABS)
                                     30 
                                     31 ; default segment ordering for linker
                                     32 	.area HOME
                                     33 	.area GSINIT
                                     34 	.area GSFINAL
                                     35 	.area CONST
                                     36 	.area INITIALIZER
                                     37 	.area CODE
                                     38 
                                     39 ;--------------------------------------------------------
                                     40 ; global & static initialisations
                                     41 ;--------------------------------------------------------
                                     42 	.area HOME
                                     43 	.area GSINIT
                                     44 	.area GSFINAL
                                     45 	.area GSINIT
                                     46 ;--------------------------------------------------------
                                     47 ; Home
                                     48 ;--------------------------------------------------------
                                     49 	.area HOME
                                     50 	.area HOME
                                     51 ;--------------------------------------------------------
                                     52 ; code
                                     53 ;--------------------------------------------------------
                                     54 	.area CODE
                                     55 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     56 ;	-----------------------------------------
                                     57 ;	 function GPIO_DeInit
                                     58 ;	-----------------------------------------
      008781                         59 _GPIO_DeInit:
      008781 51               [ 1]   60 	exgw	x, y
                                     61 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      008782 90 7F            [ 1]   62 	clr	(y)
                                     63 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      008784 93               [ 1]   64 	ldw	x, y
      008785 5C               [ 1]   65 	incw	x
      008786 5C               [ 1]   66 	incw	x
      008787 7F               [ 1]   67 	clr	(x)
                                     68 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      008788 93               [ 1]   69 	ldw	x, y
      008789 6F 03            [ 1]   70 	clr	(0x0003, x)
                                     71 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      00878B 93               [ 1]   72 	ldw	x, y
      00878C 6F 04            [ 1]   73 	clr	(0x0004, x)
                                     74 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 59: }
      00878E 81               [ 4]   75 	ret
                                     76 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     77 ;	-----------------------------------------
                                     78 ;	 function GPIO_Init
                                     79 ;	-----------------------------------------
      00878F                         80 _GPIO_Init:
      00878F 52 06            [ 2]   81 	sub	sp, #6
      008791 1F 05            [ 2]   82 	ldw	(0x05, sp), x
      008793 6B 04            [ 1]   83 	ld	(0x04, sp), a
                                     84 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
      008795 0D 09            [ 1]   85 	tnz	(0x09, sp)
      008797 27 4E            [ 1]   86 	jreq	00116$
      008799 7B 09            [ 1]   87 	ld	a, (0x09, sp)
      00879B A1 40            [ 1]   88 	cp	a, #0x40
      00879D 27 48            [ 1]   89 	jreq	00116$
      00879F 7B 09            [ 1]   90 	ld	a, (0x09, sp)
      0087A1 A1 20            [ 1]   91 	cp	a, #0x20
      0087A3 27 42            [ 1]   92 	jreq	00116$
      0087A5 7B 09            [ 1]   93 	ld	a, (0x09, sp)
      0087A7 A1 60            [ 1]   94 	cp	a, #0x60
      0087A9 27 3C            [ 1]   95 	jreq	00116$
      0087AB 7B 09            [ 1]   96 	ld	a, (0x09, sp)
      0087AD A1 A0            [ 1]   97 	cp	a, #0xa0
      0087AF 27 36            [ 1]   98 	jreq	00116$
      0087B1 7B 09            [ 1]   99 	ld	a, (0x09, sp)
      0087B3 A1 E0            [ 1]  100 	cp	a, #0xe0
      0087B5 27 30            [ 1]  101 	jreq	00116$
      0087B7 7B 09            [ 1]  102 	ld	a, (0x09, sp)
      0087B9 A1 80            [ 1]  103 	cp	a, #0x80
      0087BB 27 2A            [ 1]  104 	jreq	00116$
      0087BD 7B 09            [ 1]  105 	ld	a, (0x09, sp)
      0087BF A1 C0            [ 1]  106 	cp	a, #0xc0
      0087C1 27 24            [ 1]  107 	jreq	00116$
      0087C3 7B 09            [ 1]  108 	ld	a, (0x09, sp)
      0087C5 A1 B0            [ 1]  109 	cp	a, #0xb0
      0087C7 27 1E            [ 1]  110 	jreq	00116$
      0087C9 7B 09            [ 1]  111 	ld	a, (0x09, sp)
      0087CB A1 F0            [ 1]  112 	cp	a, #0xf0
      0087CD 27 18            [ 1]  113 	jreq	00116$
      0087CF 7B 09            [ 1]  114 	ld	a, (0x09, sp)
      0087D1 A1 90            [ 1]  115 	cp	a, #0x90
      0087D3 27 12            [ 1]  116 	jreq	00116$
      0087D5 7B 09            [ 1]  117 	ld	a, (0x09, sp)
      0087D7 A1 D0            [ 1]  118 	cp	a, #0xd0
      0087D9 27 0C            [ 1]  119 	jreq	00116$
      0087DB 4B 4D            [ 1]  120 	push	#0x4d
      0087DD 5F               [ 1]  121 	clrw	x
      0087DE 89               [ 2]  122 	pushw	x
      0087DF 4B 00            [ 1]  123 	push	#0x00
      0087E1 AE 81 04         [ 2]  124 	ldw	x, #(___str_0+0)
      0087E4 CD AA 17         [ 4]  125 	call	_assert_failed
      0087E7                        126 00116$:
                                    127 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      0087E7 0D 04            [ 1]  128 	tnz	(0x04, sp)
      0087E9 26 0C            [ 1]  129 	jrne	00151$
      0087EB 4B 4E            [ 1]  130 	push	#0x4e
      0087ED 5F               [ 1]  131 	clrw	x
      0087EE 89               [ 2]  132 	pushw	x
      0087EF 4B 00            [ 1]  133 	push	#0x00
      0087F1 AE 81 04         [ 2]  134 	ldw	x, #(___str_0+0)
      0087F4 CD AA 17         [ 4]  135 	call	_assert_failed
      0087F7                        136 00151$:
                                    137 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0087F7 1E 05            [ 2]  138 	ldw	x, (0x05, sp)
      0087F9 1C 00 04         [ 2]  139 	addw	x, #0x0004
      0087FC 1F 01            [ 2]  140 	ldw	(0x01, sp), x
      0087FE F6               [ 1]  141 	ld	a, (x)
      0087FF 88               [ 1]  142 	push	a
      008800 7B 05            [ 1]  143 	ld	a, (0x05, sp)
      008802 43               [ 1]  144 	cpl	a
      008803 6B 04            [ 1]  145 	ld	(0x04, sp), a
      008805 84               [ 1]  146 	pop	a
      008806 14 03            [ 1]  147 	and	a, (0x03, sp)
      008808 1E 01            [ 2]  148 	ldw	x, (0x01, sp)
      00880A F7               [ 1]  149 	ld	(x), a
                                    150 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00880B 1E 05            [ 2]  151 	ldw	x, (0x05, sp)
      00880D 5C               [ 1]  152 	incw	x
      00880E 5C               [ 1]  153 	incw	x
                                    154 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      00880F 0D 09            [ 1]  155 	tnz	(0x09, sp)
      008811 2A 20            [ 1]  156 	jrpl	00105$
                                    157 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008813 16 05            [ 2]  158 	ldw	y, (0x05, sp)
      008815 90 F6            [ 1]  159 	ld	a, (y)
                                    160 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      008817 88               [ 1]  161 	push	a
      008818 7B 0A            [ 1]  162 	ld	a, (0x0a, sp)
      00881A A5 10            [ 1]  163 	bcp	a, #0x10
      00881C 84               [ 1]  164 	pop	a
      00881D 27 08            [ 1]  165 	jreq	00102$
                                    166 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      00881F 1A 04            [ 1]  167 	or	a, (0x04, sp)
      008821 16 05            [ 2]  168 	ldw	y, (0x05, sp)
      008823 90 F7            [ 1]  169 	ld	(y), a
      008825 20 06            [ 2]  170 	jra	00103$
      008827                        171 00102$:
                                    172 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      008827 14 03            [ 1]  173 	and	a, (0x03, sp)
      008829 16 05            [ 2]  174 	ldw	y, (0x05, sp)
      00882B 90 F7            [ 1]  175 	ld	(y), a
      00882D                        176 00103$:
                                    177 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00882D F6               [ 1]  178 	ld	a, (x)
      00882E 1A 04            [ 1]  179 	or	a, (0x04, sp)
      008830 F7               [ 1]  180 	ld	(x), a
      008831 20 04            [ 2]  181 	jra	00106$
      008833                        182 00105$:
                                    183 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      008833 F6               [ 1]  184 	ld	a, (x)
      008834 14 03            [ 1]  185 	and	a, (0x03, sp)
      008836 F7               [ 1]  186 	ld	(x), a
      008837                        187 00106$:
                                    188 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008837 1E 05            [ 2]  189 	ldw	x, (0x05, sp)
      008839 1C 00 03         [ 2]  190 	addw	x, #0x0003
      00883C F6               [ 1]  191 	ld	a, (x)
                                    192 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      00883D 88               [ 1]  193 	push	a
      00883E 7B 0A            [ 1]  194 	ld	a, (0x0a, sp)
      008840 A5 40            [ 1]  195 	bcp	a, #0x40
      008842 84               [ 1]  196 	pop	a
      008843 27 05            [ 1]  197 	jreq	00108$
                                    198 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008845 1A 04            [ 1]  199 	or	a, (0x04, sp)
      008847 F7               [ 1]  200 	ld	(x), a
      008848 20 03            [ 2]  201 	jra	00109$
      00884A                        202 00108$:
                                    203 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      00884A 14 03            [ 1]  204 	and	a, (0x03, sp)
      00884C F7               [ 1]  205 	ld	(x), a
      00884D                        206 00109$:
                                    207 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00884D 1E 01            [ 2]  208 	ldw	x, (0x01, sp)
      00884F F6               [ 1]  209 	ld	a, (x)
                                    210 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      008850 88               [ 1]  211 	push	a
      008851 7B 0A            [ 1]  212 	ld	a, (0x0a, sp)
      008853 A5 20            [ 1]  213 	bcp	a, #0x20
      008855 84               [ 1]  214 	pop	a
      008856 27 07            [ 1]  215 	jreq	00111$
                                    216 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      008858 1A 04            [ 1]  217 	or	a, (0x04, sp)
      00885A 1E 01            [ 2]  218 	ldw	x, (0x01, sp)
      00885C F7               [ 1]  219 	ld	(x), a
      00885D 20 05            [ 2]  220 	jra	00113$
      00885F                        221 00111$:
                                    222 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00885F 14 03            [ 1]  223 	and	a, (0x03, sp)
      008861 1E 01            [ 2]  224 	ldw	x, (0x01, sp)
      008863 F7               [ 1]  225 	ld	(x), a
      008864                        226 00113$:
                                    227 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 131: }
      008864 5B 06            [ 2]  228 	addw	sp, #6
      008866 85               [ 2]  229 	popw	x
      008867 84               [ 1]  230 	pop	a
      008868 FC               [ 2]  231 	jp	(x)
                                    232 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    233 ;	-----------------------------------------
                                    234 ;	 function GPIO_Write
                                    235 ;	-----------------------------------------
      008869                        236 _GPIO_Write:
                                    237 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
      008869 F7               [ 1]  238 	ld	(x), a
                                    239 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 144: }
      00886A 81               [ 4]  240 	ret
                                    241 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    242 ;	-----------------------------------------
                                    243 ;	 function GPIO_WriteHigh
                                    244 ;	-----------------------------------------
      00886B                        245 _GPIO_WriteHigh:
      00886B 88               [ 1]  246 	push	a
      00886C 6B 01            [ 1]  247 	ld	(0x01, sp), a
                                    248 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      00886E F6               [ 1]  249 	ld	a, (x)
      00886F 1A 01            [ 1]  250 	or	a, (0x01, sp)
      008871 F7               [ 1]  251 	ld	(x), a
                                    252 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 157: }
      008872 84               [ 1]  253 	pop	a
      008873 81               [ 4]  254 	ret
                                    255 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    256 ;	-----------------------------------------
                                    257 ;	 function GPIO_WriteLow
                                    258 ;	-----------------------------------------
      008874                        259 _GPIO_WriteLow:
      008874 88               [ 1]  260 	push	a
                                    261 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      008875 88               [ 1]  262 	push	a
      008876 F6               [ 1]  263 	ld	a, (x)
      008877 6B 02            [ 1]  264 	ld	(0x02, sp), a
      008879 84               [ 1]  265 	pop	a
      00887A 43               [ 1]  266 	cpl	a
      00887B 14 01            [ 1]  267 	and	a, (0x01, sp)
      00887D F7               [ 1]  268 	ld	(x), a
                                    269 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 170: }
      00887E 84               [ 1]  270 	pop	a
      00887F 81               [ 4]  271 	ret
                                    272 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 219: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    273 ;	-----------------------------------------
                                    274 ;	 function GPIO_ReadInputPin
                                    275 ;	-----------------------------------------
      008880                        276 _GPIO_ReadInputPin:
      008880 88               [ 1]  277 	push	a
      008881 6B 01            [ 1]  278 	ld	(0x01, sp), a
                                    279 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 221: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      008883 E6 01            [ 1]  280 	ld	a, (0x1, x)
      008885 14 01            [ 1]  281 	and	a, (0x01, sp)
                                    282 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 222: }
      008887 5B 01            [ 2]  283 	addw	sp, #1
      008889 81               [ 4]  284 	ret
                                    285 	.area CODE
                                    286 	.area CONST
                                    287 	.area CONST
      008104                        288 ___str_0:
      008104 43 3A                  289 	.ascii "C:"
      008106 5C                     290 	.db 0x5c
      008107 55 73 65 72 73         291 	.ascii "Users"
      00810C 5C                     292 	.db 0x5c
      00810D 64 69 73 61 6E         293 	.ascii "disan"
      008112 5C                     294 	.db 0x5c
      008113 2E 70 6C 61 74 66 6F   295 	.ascii ".platformio"
             72 6D 69 6F
      00811E 5C                     296 	.db 0x5c
      00811F 70 61 63 6B 61 67 65   297 	.ascii "packages"
             73
      008127 5C                     298 	.db 0x5c
      008128 66 72 61 6D 65 77 6F   299 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      00813B 5C                     300 	.db 0x5c
      00813C 4C 69 62 72 61 72 69   301 	.ascii "Libraries"
             65 73
      008145 5C                     302 	.db 0x5c
      008146 53 54 4D 38 53 5F 53   303 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      00815C 5C                     304 	.db 0x5c
      00815D 73 72 63               305 	.ascii "src"
      008160 5C                     306 	.db 0x5c
      008161 73 74 6D 38 73 5F 67   307 	.ascii "stm8s_gpio.c"
             70 69 6F 2E 63
      00816D 00                     308 	.db 0x00
                                    309 	.area CODE
                                    310 	.area INITIALIZER
                                    311 	.area CABS (ABS)
