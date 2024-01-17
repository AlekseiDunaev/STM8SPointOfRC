                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLKPrescTable
                                     12 	.globl _HSIDivFactor
                                     13 	.globl _assert_failed
                                     14 	.globl _CLK_DeInit
                                     15 	.globl _CLK_HSECmd
                                     16 	.globl _CLK_HSICmd
                                     17 	.globl _CLK_LSICmd
                                     18 	.globl _CLK_ClockSwitchCmd
                                     19 	.globl _CLK_PeripheralClockConfig
                                     20 	.globl _CLK_ClockSwitchConfig
                                     21 	.globl _CLK_HSIPrescalerConfig
                                     22 	.globl _CLK_SYSCLKConfig
                                     23 	.globl _CLK_GetClockFreq
                                     24 	.globl _CLK_GetFlagStatus
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DATA
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area INITIALIZED
                                     33 ;--------------------------------------------------------
                                     34 ; absolute external ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DABS (ABS)
                                     37 
                                     38 ; default segment ordering for linker
                                     39 	.area HOME
                                     40 	.area GSINIT
                                     41 	.area GSFINAL
                                     42 	.area CONST
                                     43 	.area INITIALIZER
                                     44 	.area CODE
                                     45 
                                     46 ;--------------------------------------------------------
                                     47 ; global & static initialisations
                                     48 ;--------------------------------------------------------
                                     49 	.area HOME
                                     50 	.area GSINIT
                                     51 	.area GSFINAL
                                     52 	.area GSINIT
                                     53 ;--------------------------------------------------------
                                     54 ; Home
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area HOME
                                     58 ;--------------------------------------------------------
                                     59 ; code
                                     60 ;--------------------------------------------------------
                                     61 	.area CODE
                                     62 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 72: void CLK_DeInit(void)
                                     63 ;	-----------------------------------------
                                     64 ;	 function CLK_DeInit
                                     65 ;	-----------------------------------------
      00833F                         66 _CLK_DeInit:
                                     67 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      00833F 35 01 50 C0      [ 1]   68 	mov	0x50c0+0, #0x01
                                     69 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      008343 35 00 50 C1      [ 1]   70 	mov	0x50c1+0, #0x00
                                     71 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      008347 35 E1 50 C4      [ 1]   72 	mov	0x50c4+0, #0xe1
                                     73 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      00834B 35 00 50 C5      [ 1]   74 	mov	0x50c5+0, #0x00
                                     75 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      00834F 35 18 50 C6      [ 1]   76 	mov	0x50c6+0, #0x18
                                     77 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      008353 35 FF 50 C7      [ 1]   78 	mov	0x50c7+0, #0xff
                                     79 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      008357 35 FF 50 CA      [ 1]   80 	mov	0x50ca+0, #0xff
                                     81 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      00835B 35 00 50 C8      [ 1]   82 	mov	0x50c8+0, #0x00
                                     83 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00835F 35 00 50 C9      [ 1]   84 	mov	0x50c9+0, #0x00
                                     85 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      008363                         86 00101$:
      008363 72 00 50 C9 FB   [ 2]   87 	btjt	0x50c9, #0, 00101$
                                     88 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008368 35 00 50 C9      [ 1]   89 	mov	0x50c9+0, #0x00
                                     90 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      00836C 35 00 50 CC      [ 1]   91 	mov	0x50cc+0, #0x00
                                     92 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      008370 35 00 50 CD      [ 1]   93 	mov	0x50cd+0, #0x00
                                     94 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 88: }
      008374 81               [ 4]   95 	ret
                                     96 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 124: void CLK_HSECmd(FunctionalState NewState)
                                     97 ;	-----------------------------------------
                                     98 ;	 function CLK_HSECmd
                                     99 ;	-----------------------------------------
      008375                        100 _CLK_HSECmd:
      008375 88               [ 1]  101 	push	a
                                    102 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 127: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008376 6B 01            [ 1]  103 	ld	(0x01, sp), a
      008378 27 11            [ 1]  104 	jreq	00107$
      00837A 7B 01            [ 1]  105 	ld	a, (0x01, sp)
      00837C 4A               [ 1]  106 	dec	a
      00837D 27 0C            [ 1]  107 	jreq	00107$
      00837F 4B 7F            [ 1]  108 	push	#0x7f
      008381 5F               [ 1]  109 	clrw	x
      008382 89               [ 2]  110 	pushw	x
      008383 4B 00            [ 1]  111 	push	#0x00
      008385 AE 80 9B         [ 2]  112 	ldw	x, #(___str_0+0)
      008388 CD AA 17         [ 4]  113 	call	_assert_failed
      00838B                        114 00107$:
                                    115 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 132: CLK->ECKR |= CLK_ECKR_HSEEN;
      00838B C6 50 C1         [ 1]  116 	ld	a, 0x50c1
                                    117 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 129: if (NewState != DISABLE)
      00838E 0D 01            [ 1]  118 	tnz	(0x01, sp)
      008390 27 07            [ 1]  119 	jreq	00102$
                                    120 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 132: CLK->ECKR |= CLK_ECKR_HSEEN;
      008392 AA 01            [ 1]  121 	or	a, #0x01
      008394 C7 50 C1         [ 1]  122 	ld	0x50c1, a
      008397 20 05            [ 2]  123 	jra	00104$
      008399                        124 00102$:
                                    125 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 137: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008399 A4 FE            [ 1]  126 	and	a, #0xfe
      00839B C7 50 C1         [ 1]  127 	ld	0x50c1, a
      00839E                        128 00104$:
                                    129 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 139: }
      00839E 84               [ 1]  130 	pop	a
      00839F 81               [ 4]  131 	ret
                                    132 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 146: void CLK_HSICmd(FunctionalState NewState)
                                    133 ;	-----------------------------------------
                                    134 ;	 function CLK_HSICmd
                                    135 ;	-----------------------------------------
      0083A0                        136 _CLK_HSICmd:
      0083A0 88               [ 1]  137 	push	a
                                    138 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 149: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0083A1 6B 01            [ 1]  139 	ld	(0x01, sp), a
      0083A3 27 11            [ 1]  140 	jreq	00107$
      0083A5 7B 01            [ 1]  141 	ld	a, (0x01, sp)
      0083A7 4A               [ 1]  142 	dec	a
      0083A8 27 0C            [ 1]  143 	jreq	00107$
      0083AA 4B 95            [ 1]  144 	push	#0x95
      0083AC 5F               [ 1]  145 	clrw	x
      0083AD 89               [ 2]  146 	pushw	x
      0083AE 4B 00            [ 1]  147 	push	#0x00
      0083B0 AE 80 9B         [ 2]  148 	ldw	x, #(___str_0+0)
      0083B3 CD AA 17         [ 4]  149 	call	_assert_failed
      0083B6                        150 00107$:
                                    151 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 154: CLK->ICKR |= CLK_ICKR_HSIEN;
      0083B6 C6 50 C0         [ 1]  152 	ld	a, 0x50c0
                                    153 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 151: if (NewState != DISABLE)
      0083B9 0D 01            [ 1]  154 	tnz	(0x01, sp)
      0083BB 27 07            [ 1]  155 	jreq	00102$
                                    156 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 154: CLK->ICKR |= CLK_ICKR_HSIEN;
      0083BD AA 01            [ 1]  157 	or	a, #0x01
      0083BF C7 50 C0         [ 1]  158 	ld	0x50c0, a
      0083C2 20 05            [ 2]  159 	jra	00104$
      0083C4                        160 00102$:
                                    161 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 159: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0083C4 A4 FE            [ 1]  162 	and	a, #0xfe
      0083C6 C7 50 C0         [ 1]  163 	ld	0x50c0, a
      0083C9                        164 00104$:
                                    165 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 161: }
      0083C9 84               [ 1]  166 	pop	a
      0083CA 81               [ 4]  167 	ret
                                    168 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 169: void CLK_LSICmd(FunctionalState NewState)
                                    169 ;	-----------------------------------------
                                    170 ;	 function CLK_LSICmd
                                    171 ;	-----------------------------------------
      0083CB                        172 _CLK_LSICmd:
      0083CB 88               [ 1]  173 	push	a
                                    174 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 172: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0083CC 6B 01            [ 1]  175 	ld	(0x01, sp), a
      0083CE 27 11            [ 1]  176 	jreq	00107$
      0083D0 7B 01            [ 1]  177 	ld	a, (0x01, sp)
      0083D2 4A               [ 1]  178 	dec	a
      0083D3 27 0C            [ 1]  179 	jreq	00107$
      0083D5 4B AC            [ 1]  180 	push	#0xac
      0083D7 5F               [ 1]  181 	clrw	x
      0083D8 89               [ 2]  182 	pushw	x
      0083D9 4B 00            [ 1]  183 	push	#0x00
      0083DB AE 80 9B         [ 2]  184 	ldw	x, #(___str_0+0)
      0083DE CD AA 17         [ 4]  185 	call	_assert_failed
      0083E1                        186 00107$:
                                    187 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 177: CLK->ICKR |= CLK_ICKR_LSIEN;
      0083E1 C6 50 C0         [ 1]  188 	ld	a, 0x50c0
                                    189 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 174: if (NewState != DISABLE)
      0083E4 0D 01            [ 1]  190 	tnz	(0x01, sp)
      0083E6 27 07            [ 1]  191 	jreq	00102$
                                    192 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 177: CLK->ICKR |= CLK_ICKR_LSIEN;
      0083E8 AA 08            [ 1]  193 	or	a, #0x08
      0083EA C7 50 C0         [ 1]  194 	ld	0x50c0, a
      0083ED 20 05            [ 2]  195 	jra	00104$
      0083EF                        196 00102$:
                                    197 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 182: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0083EF A4 F7            [ 1]  198 	and	a, #0xf7
      0083F1 C7 50 C0         [ 1]  199 	ld	0x50c0, a
      0083F4                        200 00104$:
                                    201 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 184: }
      0083F4 84               [ 1]  202 	pop	a
      0083F5 81               [ 4]  203 	ret
                                    204 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 218: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    205 ;	-----------------------------------------
                                    206 ;	 function CLK_ClockSwitchCmd
                                    207 ;	-----------------------------------------
      0083F6                        208 _CLK_ClockSwitchCmd:
      0083F6 88               [ 1]  209 	push	a
                                    210 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 221: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0083F7 6B 01            [ 1]  211 	ld	(0x01, sp), a
      0083F9 27 11            [ 1]  212 	jreq	00107$
      0083FB 7B 01            [ 1]  213 	ld	a, (0x01, sp)
      0083FD 4A               [ 1]  214 	dec	a
      0083FE 27 0C            [ 1]  215 	jreq	00107$
      008400 4B DD            [ 1]  216 	push	#0xdd
      008402 5F               [ 1]  217 	clrw	x
      008403 89               [ 2]  218 	pushw	x
      008404 4B 00            [ 1]  219 	push	#0x00
      008406 AE 80 9B         [ 2]  220 	ldw	x, #(___str_0+0)
      008409 CD AA 17         [ 4]  221 	call	_assert_failed
      00840C                        222 00107$:
                                    223 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 226: CLK->SWCR |= CLK_SWCR_SWEN;
      00840C C6 50 C5         [ 1]  224 	ld	a, 0x50c5
                                    225 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 223: if (NewState != DISABLE )
      00840F 0D 01            [ 1]  226 	tnz	(0x01, sp)
      008411 27 07            [ 1]  227 	jreq	00102$
                                    228 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 226: CLK->SWCR |= CLK_SWCR_SWEN;
      008413 AA 02            [ 1]  229 	or	a, #0x02
      008415 C7 50 C5         [ 1]  230 	ld	0x50c5, a
      008418 20 05            [ 2]  231 	jra	00104$
      00841A                        232 00102$:
                                    233 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 231: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      00841A A4 FD            [ 1]  234 	and	a, #0xfd
      00841C C7 50 C5         [ 1]  235 	ld	0x50c5, a
      00841F                        236 00104$:
                                    237 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 233: }
      00841F 84               [ 1]  238 	pop	a
      008420 81               [ 4]  239 	ret
                                    240 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 270: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    241 ;	-----------------------------------------
                                    242 ;	 function CLK_PeripheralClockConfig
                                    243 ;	-----------------------------------------
      008421                        244 _CLK_PeripheralClockConfig:
      008421 52 03            [ 2]  245 	sub	sp, #3
      008423 6B 03            [ 1]  246 	ld	(0x03, sp), a
                                    247 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 273: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008425 0D 06            [ 1]  248 	tnz	(0x06, sp)
      008427 27 11            [ 1]  249 	jreq	00113$
      008429 7B 06            [ 1]  250 	ld	a, (0x06, sp)
      00842B 4A               [ 1]  251 	dec	a
      00842C 27 0C            [ 1]  252 	jreq	00113$
      00842E 4B 11            [ 1]  253 	push	#0x11
      008430 4B 01            [ 1]  254 	push	#0x01
      008432 5F               [ 1]  255 	clrw	x
      008433 89               [ 2]  256 	pushw	x
      008434 AE 80 9B         [ 2]  257 	ldw	x, #(___str_0+0)
      008437 CD AA 17         [ 4]  258 	call	_assert_failed
      00843A                        259 00113$:
                                    260 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 274: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      00843A 0D 03            [ 1]  261 	tnz	(0x03, sp)
      00843C 27 64            [ 1]  262 	jreq	00118$
      00843E 7B 03            [ 1]  263 	ld	a, (0x03, sp)
      008440 4A               [ 1]  264 	dec	a
      008441 27 5F            [ 1]  265 	jreq	00118$
      008443 7B 03            [ 1]  266 	ld	a, (0x03, sp)
      008445 A0 03            [ 1]  267 	sub	a, #0x03
      008447 26 02            [ 1]  268 	jrne	00262$
      008449 4C               [ 1]  269 	inc	a
      00844A 21                     270 	.byte 0x21
      00844B                        271 00262$:
      00844B 4F               [ 1]  272 	clr	a
      00844C                        273 00263$:
      00844C 4D               [ 1]  274 	tnz	a
      00844D 26 53            [ 1]  275 	jrne	00118$
      00844F 4D               [ 1]  276 	tnz	a
      008450 26 50            [ 1]  277 	jrne	00118$
      008452 4D               [ 1]  278 	tnz	a
      008453 26 4D            [ 1]  279 	jrne	00118$
      008455 7B 03            [ 1]  280 	ld	a, (0x03, sp)
      008457 A0 04            [ 1]  281 	sub	a, #0x04
      008459 26 04            [ 1]  282 	jrne	00268$
      00845B 4C               [ 1]  283 	inc	a
      00845C 97               [ 1]  284 	ld	xl, a
      00845D 20 02            [ 2]  285 	jra	00269$
      00845F                        286 00268$:
      00845F 4F               [ 1]  287 	clr	a
      008460 97               [ 1]  288 	ld	xl, a
      008461                        289 00269$:
      008461 9F               [ 1]  290 	ld	a, xl
      008462 4D               [ 1]  291 	tnz	a
      008463 26 3D            [ 1]  292 	jrne	00118$
      008465 7B 03            [ 1]  293 	ld	a, (0x03, sp)
      008467 A0 05            [ 1]  294 	sub	a, #0x05
      008469 26 02            [ 1]  295 	jrne	00272$
      00846B 4C               [ 1]  296 	inc	a
      00846C 21                     297 	.byte 0x21
      00846D                        298 00272$:
      00846D 4F               [ 1]  299 	clr	a
      00846E                        300 00273$:
      00846E 4D               [ 1]  301 	tnz	a
      00846F 26 31            [ 1]  302 	jrne	00118$
      008471 4D               [ 1]  303 	tnz	a
      008472 26 2E            [ 1]  304 	jrne	00118$
      008474 9F               [ 1]  305 	ld	a, xl
      008475 4D               [ 1]  306 	tnz	a
      008476 26 2A            [ 1]  307 	jrne	00118$
      008478 7B 03            [ 1]  308 	ld	a, (0x03, sp)
      00847A A1 06            [ 1]  309 	cp	a, #0x06
      00847C 27 24            [ 1]  310 	jreq	00118$
      00847E 7B 03            [ 1]  311 	ld	a, (0x03, sp)
      008480 A1 07            [ 1]  312 	cp	a, #0x07
      008482 27 1E            [ 1]  313 	jreq	00118$
      008484 7B 03            [ 1]  314 	ld	a, (0x03, sp)
      008486 A1 17            [ 1]  315 	cp	a, #0x17
      008488 27 18            [ 1]  316 	jreq	00118$
      00848A 7B 03            [ 1]  317 	ld	a, (0x03, sp)
      00848C A1 13            [ 1]  318 	cp	a, #0x13
      00848E 27 12            [ 1]  319 	jreq	00118$
      008490 7B 03            [ 1]  320 	ld	a, (0x03, sp)
      008492 A1 12            [ 1]  321 	cp	a, #0x12
      008494 27 0C            [ 1]  322 	jreq	00118$
      008496 4B 12            [ 1]  323 	push	#0x12
      008498 4B 01            [ 1]  324 	push	#0x01
      00849A 5F               [ 1]  325 	clrw	x
      00849B 89               [ 2]  326 	pushw	x
      00849C AE 80 9B         [ 2]  327 	ldw	x, #(___str_0+0)
      00849F CD AA 17         [ 4]  328 	call	_assert_failed
      0084A2                        329 00118$:
                                    330 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 281: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0084A2 7B 03            [ 1]  331 	ld	a, (0x03, sp)
      0084A4 A4 0F            [ 1]  332 	and	a, #0x0f
      0084A6 88               [ 1]  333 	push	a
      0084A7 A6 01            [ 1]  334 	ld	a, #0x01
      0084A9 6B 02            [ 1]  335 	ld	(0x02, sp), a
      0084AB 84               [ 1]  336 	pop	a
      0084AC 4D               [ 1]  337 	tnz	a
      0084AD 27 05            [ 1]  338 	jreq	00293$
      0084AF                        339 00292$:
      0084AF 08 01            [ 1]  340 	sll	(0x01, sp)
      0084B1 4A               [ 1]  341 	dec	a
      0084B2 26 FB            [ 1]  342 	jrne	00292$
      0084B4                        343 00293$:
                                    344 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 286: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0084B4 7B 01            [ 1]  345 	ld	a, (0x01, sp)
      0084B6 43               [ 1]  346 	cpl	a
      0084B7 6B 02            [ 1]  347 	ld	(0x02, sp), a
                                    348 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 276: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      0084B9 7B 03            [ 1]  349 	ld	a, (0x03, sp)
      0084BB A5 10            [ 1]  350 	bcp	a, #0x10
      0084BD 26 15            [ 1]  351 	jrne	00108$
                                    352 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 281: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0084BF C6 50 C7         [ 1]  353 	ld	a, 0x50c7
                                    354 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 278: if (NewState != DISABLE)
      0084C2 0D 06            [ 1]  355 	tnz	(0x06, sp)
      0084C4 27 07            [ 1]  356 	jreq	00102$
                                    357 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 281: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0084C6 1A 01            [ 1]  358 	or	a, (0x01, sp)
      0084C8 C7 50 C7         [ 1]  359 	ld	0x50c7, a
      0084CB 20 1A            [ 2]  360 	jra	00110$
      0084CD                        361 00102$:
                                    362 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 286: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0084CD 14 02            [ 1]  363 	and	a, (0x02, sp)
      0084CF C7 50 C7         [ 1]  364 	ld	0x50c7, a
      0084D2 20 13            [ 2]  365 	jra	00110$
      0084D4                        366 00108$:
                                    367 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 294: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0084D4 C6 50 CA         [ 1]  368 	ld	a, 0x50ca
                                    369 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 291: if (NewState != DISABLE)
      0084D7 0D 06            [ 1]  370 	tnz	(0x06, sp)
      0084D9 27 07            [ 1]  371 	jreq	00105$
                                    372 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 294: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0084DB 1A 01            [ 1]  373 	or	a, (0x01, sp)
      0084DD C7 50 CA         [ 1]  374 	ld	0x50ca, a
      0084E0 20 05            [ 2]  375 	jra	00110$
      0084E2                        376 00105$:
                                    377 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 299: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0084E2 14 02            [ 1]  378 	and	a, (0x02, sp)
      0084E4 C7 50 CA         [ 1]  379 	ld	0x50ca, a
      0084E7                        380 00110$:
                                    381 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 302: }
      0084E7 5B 03            [ 2]  382 	addw	sp, #3
      0084E9 85               [ 2]  383 	popw	x
      0084EA 84               [ 1]  384 	pop	a
      0084EB FC               [ 2]  385 	jp	(x)
                                    386 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 316: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    387 ;	-----------------------------------------
                                    388 ;	 function CLK_ClockSwitchConfig
                                    389 ;	-----------------------------------------
      0084EC                        390 _CLK_ClockSwitchConfig:
      0084EC 89               [ 2]  391 	pushw	x
      0084ED 6B 02            [ 1]  392 	ld	(0x02, sp), a
                                    393 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 323: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      0084EF 7B 05            [ 1]  394 	ld	a, (0x05, sp)
      0084F1 A1 E1            [ 1]  395 	cp	a, #0xe1
      0084F3 27 18            [ 1]  396 	jreq	00140$
      0084F5 7B 05            [ 1]  397 	ld	a, (0x05, sp)
      0084F7 A1 D2            [ 1]  398 	cp	a, #0xd2
      0084F9 27 12            [ 1]  399 	jreq	00140$
      0084FB 7B 05            [ 1]  400 	ld	a, (0x05, sp)
      0084FD A1 B4            [ 1]  401 	cp	a, #0xb4
      0084FF 27 0C            [ 1]  402 	jreq	00140$
      008501 4B 43            [ 1]  403 	push	#0x43
      008503 4B 01            [ 1]  404 	push	#0x01
      008505 5F               [ 1]  405 	clrw	x
      008506 89               [ 2]  406 	pushw	x
      008507 AE 80 9B         [ 2]  407 	ldw	x, #(___str_0+0)
      00850A CD AA 17         [ 4]  408 	call	_assert_failed
      00850D                        409 00140$:
                                    410 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 324: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      00850D 7B 02            [ 1]  411 	ld	a, (0x02, sp)
      00850F 4A               [ 1]  412 	dec	a
      008510 26 05            [ 1]  413 	jrne	00309$
      008512 A6 01            [ 1]  414 	ld	a, #0x01
      008514 6B 01            [ 1]  415 	ld	(0x01, sp), a
      008516 C5                     416 	.byte 0xc5
      008517                        417 00309$:
      008517 0F 01            [ 1]  418 	clr	(0x01, sp)
      008519                        419 00310$:
      008519 0D 02            [ 1]  420 	tnz	(0x02, sp)
      00851B 27 10            [ 1]  421 	jreq	00148$
      00851D 0D 01            [ 1]  422 	tnz	(0x01, sp)
      00851F 26 0C            [ 1]  423 	jrne	00148$
      008521 4B 44            [ 1]  424 	push	#0x44
      008523 4B 01            [ 1]  425 	push	#0x01
      008525 5F               [ 1]  426 	clrw	x
      008526 89               [ 2]  427 	pushw	x
      008527 AE 80 9B         [ 2]  428 	ldw	x, #(___str_0+0)
      00852A CD AA 17         [ 4]  429 	call	_assert_failed
      00852D                        430 00148$:
                                    431 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 325: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      00852D 0D 06            [ 1]  432 	tnz	(0x06, sp)
      00852F 27 11            [ 1]  433 	jreq	00153$
      008531 7B 06            [ 1]  434 	ld	a, (0x06, sp)
      008533 4A               [ 1]  435 	dec	a
      008534 27 0C            [ 1]  436 	jreq	00153$
      008536 4B 45            [ 1]  437 	push	#0x45
      008538 4B 01            [ 1]  438 	push	#0x01
      00853A 5F               [ 1]  439 	clrw	x
      00853B 89               [ 2]  440 	pushw	x
      00853C AE 80 9B         [ 2]  441 	ldw	x, #(___str_0+0)
      00853F CD AA 17         [ 4]  442 	call	_assert_failed
      008542                        443 00153$:
                                    444 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 326: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      008542 0D 07            [ 1]  445 	tnz	(0x07, sp)
      008544 27 11            [ 1]  446 	jreq	00158$
      008546 7B 07            [ 1]  447 	ld	a, (0x07, sp)
      008548 4A               [ 1]  448 	dec	a
      008549 27 0C            [ 1]  449 	jreq	00158$
      00854B 4B 46            [ 1]  450 	push	#0x46
      00854D 4B 01            [ 1]  451 	push	#0x01
      00854F 5F               [ 1]  452 	clrw	x
      008550 89               [ 2]  453 	pushw	x
      008551 AE 80 9B         [ 2]  454 	ldw	x, #(___str_0+0)
      008554 CD AA 17         [ 4]  455 	call	_assert_failed
      008557                        456 00158$:
                                    457 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 329: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      008557 C6 50 C3         [ 1]  458 	ld	a, 0x50c3
      00855A 90 97            [ 1]  459 	ld	yl, a
                                    460 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 335: CLK->SWCR |= CLK_SWCR_SWEN;
      00855C C6 50 C5         [ 1]  461 	ld	a, 0x50c5
      00855F 97               [ 1]  462 	ld	xl, a
                                    463 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 332: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      008560 7B 01            [ 1]  464 	ld	a, (0x01, sp)
      008562 27 37            [ 1]  465 	jreq	00122$
                                    466 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 335: CLK->SWCR |= CLK_SWCR_SWEN;
      008564 9F               [ 1]  467 	ld	a, xl
      008565 AA 02            [ 1]  468 	or	a, #0x02
      008567 C7 50 C5         [ 1]  469 	ld	0x50c5, a
      00856A C6 50 C5         [ 1]  470 	ld	a, 0x50c5
                                    471 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 338: if (ITState != DISABLE)
      00856D 0D 06            [ 1]  472 	tnz	(0x06, sp)
      00856F 27 07            [ 1]  473 	jreq	00102$
                                    474 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 340: CLK->SWCR |= CLK_SWCR_SWIEN;
      008571 AA 04            [ 1]  475 	or	a, #0x04
      008573 C7 50 C5         [ 1]  476 	ld	0x50c5, a
      008576 20 05            [ 2]  477 	jra	00103$
      008578                        478 00102$:
                                    479 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 344: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008578 A4 FB            [ 1]  480 	and	a, #0xfb
      00857A C7 50 C5         [ 1]  481 	ld	0x50c5, a
      00857D                        482 00103$:
                                    483 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 348: CLK->SWR = (uint8_t)CLK_NewClock;
      00857D AE 50 C4         [ 2]  484 	ldw	x, #0x50c4
      008580 7B 05            [ 1]  485 	ld	a, (0x05, sp)
      008582 F7               [ 1]  486 	ld	(x), a
                                    487 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 351: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      008583 5F               [ 1]  488 	clrw	x
      008584 5A               [ 2]  489 	decw	x
      008585                        490 00105$:
      008585 72 01 50 C5 06   [ 2]  491 	btjf	0x50c5, #0, 00107$
      00858A 5D               [ 2]  492 	tnzw	x
      00858B 27 03            [ 1]  493 	jreq	00107$
                                    494 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 353: DownCounter--;
      00858D 5A               [ 2]  495 	decw	x
      00858E 20 F5            [ 2]  496 	jra	00105$
      008590                        497 00107$:
                                    498 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 356: if(DownCounter != 0)
      008590 5D               [ 2]  499 	tnzw	x
      008591 27 05            [ 1]  500 	jreq	00109$
                                    501 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 358: Swif = SUCCESS;
      008593 A6 01            [ 1]  502 	ld	a, #0x01
      008595 97               [ 1]  503 	ld	xl, a
      008596 20 34            [ 2]  504 	jra	00123$
      008598                        505 00109$:
                                    506 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 362: Swif = ERROR;
      008598 5F               [ 1]  507 	clrw	x
      008599 20 31            [ 2]  508 	jra	00123$
      00859B                        509 00122$:
                                    510 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 368: if (ITState != DISABLE)
      00859B 0D 06            [ 1]  511 	tnz	(0x06, sp)
      00859D 27 08            [ 1]  512 	jreq	00112$
                                    513 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 370: CLK->SWCR |= CLK_SWCR_SWIEN;
      00859F 9F               [ 1]  514 	ld	a, xl
      0085A0 AA 04            [ 1]  515 	or	a, #0x04
      0085A2 C7 50 C5         [ 1]  516 	ld	0x50c5, a
      0085A5 20 06            [ 2]  517 	jra	00113$
      0085A7                        518 00112$:
                                    519 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 374: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0085A7 9F               [ 1]  520 	ld	a, xl
      0085A8 A4 FB            [ 1]  521 	and	a, #0xfb
      0085AA C7 50 C5         [ 1]  522 	ld	0x50c5, a
      0085AD                        523 00113$:
                                    524 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 378: CLK->SWR = (uint8_t)CLK_NewClock;
      0085AD AE 50 C4         [ 2]  525 	ldw	x, #0x50c4
      0085B0 7B 05            [ 1]  526 	ld	a, (0x05, sp)
      0085B2 F7               [ 1]  527 	ld	(x), a
                                    528 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 381: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      0085B3 5F               [ 1]  529 	clrw	x
      0085B4 5A               [ 2]  530 	decw	x
      0085B5                        531 00115$:
      0085B5 72 07 50 C5 06   [ 2]  532 	btjf	0x50c5, #3, 00117$
      0085BA 5D               [ 2]  533 	tnzw	x
      0085BB 27 03            [ 1]  534 	jreq	00117$
                                    535 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 383: DownCounter--;
      0085BD 5A               [ 2]  536 	decw	x
      0085BE 20 F5            [ 2]  537 	jra	00115$
      0085C0                        538 00117$:
                                    539 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 386: if(DownCounter != 0)
      0085C0 5D               [ 2]  540 	tnzw	x
      0085C1 27 08            [ 1]  541 	jreq	00119$
                                    542 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 389: CLK->SWCR |= CLK_SWCR_SWEN;
      0085C3 72 12 50 C5      [ 1]  543 	bset	0x50c5, #1
                                    544 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 390: Swif = SUCCESS;
      0085C7 A6 01            [ 1]  545 	ld	a, #0x01
      0085C9 97               [ 1]  546 	ld	xl, a
                                    547 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 394: Swif = ERROR;
      0085CA 21                     548 	.byte 0x21
      0085CB                        549 00119$:
      0085CB 5F               [ 1]  550 	clrw	x
      0085CC                        551 00123$:
                                    552 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 397: if(Swif != ERROR)
      0085CC 9F               [ 1]  553 	ld	a, xl
      0085CD 4D               [ 1]  554 	tnz	a
      0085CE 27 2E            [ 1]  555 	jreq	00136$
                                    556 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 400: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      0085D0 0D 07            [ 1]  557 	tnz	(0x07, sp)
      0085D2 26 0C            [ 1]  558 	jrne	00132$
      0085D4 90 9F            [ 1]  559 	ld	a, yl
      0085D6 A1 E1            [ 1]  560 	cp	a, #0xe1
      0085D8 26 06            [ 1]  561 	jrne	00132$
                                    562 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 402: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0085DA 72 11 50 C0      [ 1]  563 	bres	0x50c0, #0
      0085DE 20 1E            [ 2]  564 	jra	00136$
      0085E0                        565 00132$:
                                    566 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 404: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      0085E0 0D 07            [ 1]  567 	tnz	(0x07, sp)
      0085E2 26 0C            [ 1]  568 	jrne	00128$
      0085E4 90 9F            [ 1]  569 	ld	a, yl
      0085E6 A1 D2            [ 1]  570 	cp	a, #0xd2
      0085E8 26 06            [ 1]  571 	jrne	00128$
                                    572 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 406: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0085EA 72 17 50 C0      [ 1]  573 	bres	0x50c0, #3
      0085EE 20 0E            [ 2]  574 	jra	00136$
      0085F0                        575 00128$:
                                    576 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 408: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      0085F0 0D 07            [ 1]  577 	tnz	(0x07, sp)
      0085F2 26 0A            [ 1]  578 	jrne	00136$
      0085F4 90 9F            [ 1]  579 	ld	a, yl
      0085F6 A1 B4            [ 1]  580 	cp	a, #0xb4
      0085F8 26 04            [ 1]  581 	jrne	00136$
                                    582 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 410: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0085FA 72 11 50 C1      [ 1]  583 	bres	0x50c1, #0
      0085FE                        584 00136$:
                                    585 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 413: return(Swif);
      0085FE 9F               [ 1]  586 	ld	a, xl
                                    587 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 414: }
      0085FF 1E 03            [ 2]  588 	ldw	x, (3, sp)
      008601 5B 07            [ 2]  589 	addw	sp, #7
      008603 FC               [ 2]  590 	jp	(x)
                                    591 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 422: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    592 ;	-----------------------------------------
                                    593 ;	 function CLK_HSIPrescalerConfig
                                    594 ;	-----------------------------------------
      008604                        595 _CLK_HSIPrescalerConfig:
      008604 88               [ 1]  596 	push	a
                                    597 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 425: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      008605 6B 01            [ 1]  598 	ld	(0x01, sp), a
      008607 27 1E            [ 1]  599 	jreq	00104$
      008609 7B 01            [ 1]  600 	ld	a, (0x01, sp)
      00860B A1 08            [ 1]  601 	cp	a, #0x08
      00860D 27 18            [ 1]  602 	jreq	00104$
      00860F 7B 01            [ 1]  603 	ld	a, (0x01, sp)
      008611 A1 10            [ 1]  604 	cp	a, #0x10
      008613 27 12            [ 1]  605 	jreq	00104$
      008615 7B 01            [ 1]  606 	ld	a, (0x01, sp)
      008617 A1 18            [ 1]  607 	cp	a, #0x18
      008619 27 0C            [ 1]  608 	jreq	00104$
      00861B 4B A9            [ 1]  609 	push	#0xa9
      00861D 4B 01            [ 1]  610 	push	#0x01
      00861F 5F               [ 1]  611 	clrw	x
      008620 89               [ 2]  612 	pushw	x
      008621 AE 80 9B         [ 2]  613 	ldw	x, #(___str_0+0)
      008624 CD AA 17         [ 4]  614 	call	_assert_failed
      008627                        615 00104$:
                                    616 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 428: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008627 C6 50 C6         [ 1]  617 	ld	a, 0x50c6
      00862A A4 E7            [ 1]  618 	and	a, #0xe7
      00862C C7 50 C6         [ 1]  619 	ld	0x50c6, a
                                    620 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 431: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      00862F C6 50 C6         [ 1]  621 	ld	a, 0x50c6
      008632 1A 01            [ 1]  622 	or	a, (0x01, sp)
      008634 C7 50 C6         [ 1]  623 	ld	0x50c6, a
                                    624 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 432: }
      008637 84               [ 1]  625 	pop	a
      008638 81               [ 4]  626 	ret
                                    627 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 511: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    628 ;	-----------------------------------------
                                    629 ;	 function CLK_SYSCLKConfig
                                    630 ;	-----------------------------------------
      008639                        631 _CLK_SYSCLKConfig:
      008639 88               [ 1]  632 	push	a
                                    633 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 514: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      00863A 95               [ 1]  634 	ld	xh, a
      00863B 4D               [ 1]  635 	tnz	a
      00863C 27 4A            [ 1]  636 	jreq	00107$
      00863E 9E               [ 1]  637 	ld	a, xh
      00863F A1 08            [ 1]  638 	cp	a, #0x08
      008641 27 45            [ 1]  639 	jreq	00107$
      008643 9E               [ 1]  640 	ld	a, xh
      008644 A1 10            [ 1]  641 	cp	a, #0x10
      008646 27 40            [ 1]  642 	jreq	00107$
      008648 9E               [ 1]  643 	ld	a, xh
      008649 A1 18            [ 1]  644 	cp	a, #0x18
      00864B 27 3B            [ 1]  645 	jreq	00107$
      00864D 9E               [ 1]  646 	ld	a, xh
      00864E A1 80            [ 1]  647 	cp	a, #0x80
      008650 27 36            [ 1]  648 	jreq	00107$
      008652 9E               [ 1]  649 	ld	a, xh
      008653 A1 81            [ 1]  650 	cp	a, #0x81
      008655 27 31            [ 1]  651 	jreq	00107$
      008657 9E               [ 1]  652 	ld	a, xh
      008658 A1 82            [ 1]  653 	cp	a, #0x82
      00865A 27 2C            [ 1]  654 	jreq	00107$
      00865C 9E               [ 1]  655 	ld	a, xh
      00865D A1 83            [ 1]  656 	cp	a, #0x83
      00865F 27 27            [ 1]  657 	jreq	00107$
      008661 9E               [ 1]  658 	ld	a, xh
      008662 A1 84            [ 1]  659 	cp	a, #0x84
      008664 27 22            [ 1]  660 	jreq	00107$
      008666 9E               [ 1]  661 	ld	a, xh
      008667 A1 85            [ 1]  662 	cp	a, #0x85
      008669 27 1D            [ 1]  663 	jreq	00107$
      00866B 9E               [ 1]  664 	ld	a, xh
      00866C A1 86            [ 1]  665 	cp	a, #0x86
      00866E 27 18            [ 1]  666 	jreq	00107$
      008670 9E               [ 1]  667 	ld	a, xh
      008671 A1 87            [ 1]  668 	cp	a, #0x87
      008673 27 13            [ 1]  669 	jreq	00107$
      008675 89               [ 2]  670 	pushw	x
      008676 4B 02            [ 1]  671 	push	#0x02
      008678 4B 02            [ 1]  672 	push	#0x02
      00867A 4B 00            [ 1]  673 	push	#0x00
      00867C 4B 00            [ 1]  674 	push	#0x00
      00867E AE 80 9B         [ 2]  675 	ldw	x, #(___str_0+0)
      008681 CD AA 17         [ 4]  676 	call	_assert_failed
      008684 02               [ 1]  677 	rlwa	x
      008685 84               [ 1]  678 	pop	a
      008686 01               [ 1]  679 	rrwa	x
      008687 84               [ 1]  680 	pop	a
      008688                        681 00107$:
                                    682 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 518: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008688 C6 50 C6         [ 1]  683 	ld	a, 0x50c6
                                    684 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 516: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      00868B 5D               [ 2]  685 	tnzw	x
      00868C 2B 14            [ 1]  686 	jrmi	00102$
                                    687 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 518: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00868E A4 E7            [ 1]  688 	and	a, #0xe7
      008690 C7 50 C6         [ 1]  689 	ld	0x50c6, a
                                    690 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 519: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      008693 C6 50 C6         [ 1]  691 	ld	a, 0x50c6
      008696 6B 01            [ 1]  692 	ld	(0x01, sp), a
      008698 9E               [ 1]  693 	ld	a, xh
      008699 A4 18            [ 1]  694 	and	a, #0x18
      00869B 1A 01            [ 1]  695 	or	a, (0x01, sp)
      00869D C7 50 C6         [ 1]  696 	ld	0x50c6, a
      0086A0 20 12            [ 2]  697 	jra	00104$
      0086A2                        698 00102$:
                                    699 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 523: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      0086A2 A4 F8            [ 1]  700 	and	a, #0xf8
      0086A4 C7 50 C6         [ 1]  701 	ld	0x50c6, a
                                    702 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 524: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      0086A7 C6 50 C6         [ 1]  703 	ld	a, 0x50c6
      0086AA 6B 01            [ 1]  704 	ld	(0x01, sp), a
      0086AC 9E               [ 1]  705 	ld	a, xh
      0086AD A4 07            [ 1]  706 	and	a, #0x07
      0086AF 1A 01            [ 1]  707 	or	a, (0x01, sp)
      0086B1 C7 50 C6         [ 1]  708 	ld	0x50c6, a
      0086B4                        709 00104$:
                                    710 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 526: }
      0086B4 84               [ 1]  711 	pop	a
      0086B5 81               [ 4]  712 	ret
                                    713 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 584: uint32_t CLK_GetClockFreq(void)
                                    714 ;	-----------------------------------------
                                    715 ;	 function CLK_GetClockFreq
                                    716 ;	-----------------------------------------
      0086B6                        717 _CLK_GetClockFreq:
      0086B6 52 04            [ 2]  718 	sub	sp, #4
                                    719 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 591: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      0086B8 C6 50 C3         [ 1]  720 	ld	a, 0x50c3
                                    721 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 593: if (clocksource == CLK_SOURCE_HSI)
      0086BB 6B 04            [ 1]  722 	ld	(0x04, sp), a
      0086BD A1 E1            [ 1]  723 	cp	a, #0xe1
      0086BF 26 26            [ 1]  724 	jrne	00105$
                                    725 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 595: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      0086C1 C6 50 C6         [ 1]  726 	ld	a, 0x50c6
      0086C4 A4 18            [ 1]  727 	and	a, #0x18
                                    728 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 596: tmp = (uint8_t)(tmp >> 3);
      0086C6 44               [ 1]  729 	srl	a
      0086C7 44               [ 1]  730 	srl	a
      0086C8 44               [ 1]  731 	srl	a
                                    732 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 597: presc = HSIDivFactor[tmp];
      0086C9 5F               [ 1]  733 	clrw	x
      0086CA 97               [ 1]  734 	ld	xl, a
      0086CB D6 80 8F         [ 1]  735 	ld	a, (_HSIDivFactor+0, x)
                                    736 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 598: clockfrequency = HSI_VALUE / presc;
      0086CE 5F               [ 1]  737 	clrw	x
      0086CF 97               [ 1]  738 	ld	xl, a
      0086D0 90 5F            [ 1]  739 	clrw	y
      0086D2 89               [ 2]  740 	pushw	x
      0086D3 90 89            [ 2]  741 	pushw	y
      0086D5 4B 00            [ 1]  742 	push	#0x00
      0086D7 4B 24            [ 1]  743 	push	#0x24
      0086D9 4B F4            [ 1]  744 	push	#0xf4
      0086DB 4B 00            [ 1]  745 	push	#0x00
      0086DD CD B1 BD         [ 4]  746 	call	__divulong
      0086E0 5B 08            [ 2]  747 	addw	sp, #8
      0086E2 51               [ 1]  748 	exgw	x, y
      0086E3 17 03            [ 2]  749 	ldw	(0x03, sp), y
      0086E5 20 17            [ 2]  750 	jra	00106$
      0086E7                        751 00105$:
                                    752 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 600: else if ( clocksource == CLK_SOURCE_LSI)
      0086E7 7B 04            [ 1]  753 	ld	a, (0x04, sp)
      0086E9 A1 D2            [ 1]  754 	cp	a, #0xd2
      0086EB 26 09            [ 1]  755 	jrne	00102$
                                    756 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 602: clockfrequency = LSI_VALUE;
      0086ED AE F4 00         [ 2]  757 	ldw	x, #0xf400
      0086F0 1F 03            [ 2]  758 	ldw	(0x03, sp), x
      0086F2 5F               [ 1]  759 	clrw	x
      0086F3 5C               [ 1]  760 	incw	x
      0086F4 20 08            [ 2]  761 	jra	00106$
      0086F6                        762 00102$:
                                    763 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 606: clockfrequency = HSE_VALUE;
      0086F6 AE 24 00         [ 2]  764 	ldw	x, #0x2400
      0086F9 1F 03            [ 2]  765 	ldw	(0x03, sp), x
      0086FB AE 00 F4         [ 2]  766 	ldw	x, #0x00f4
      0086FE                        767 00106$:
                                    768 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 609: return((uint32_t)clockfrequency);
      0086FE 51               [ 1]  769 	exgw	x, y
      0086FF 1E 03            [ 2]  770 	ldw	x, (0x03, sp)
                                    771 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 610: }
      008701 5B 04            [ 2]  772 	addw	sp, #4
      008703 81               [ 4]  773 	ret
                                    774 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 653: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    775 ;	-----------------------------------------
                                    776 ;	 function CLK_GetFlagStatus
                                    777 ;	-----------------------------------------
      008704                        778 _CLK_GetFlagStatus:
                                    779 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 660: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      008704 90 93            [ 1]  780 	ldw	y, x
      008706 A3 01 10         [ 2]  781 	cpw	x, #0x0110
      008709 27 3C            [ 1]  782 	jreq	00119$
      00870B A3 01 02         [ 2]  783 	cpw	x, #0x0102
      00870E 27 37            [ 1]  784 	jreq	00119$
      008710 A3 02 02         [ 2]  785 	cpw	x, #0x0202
      008713 27 32            [ 1]  786 	jreq	00119$
      008715 A3 03 08         [ 2]  787 	cpw	x, #0x0308
      008718 27 2D            [ 1]  788 	jreq	00119$
      00871A A3 03 01         [ 2]  789 	cpw	x, #0x0301
      00871D 27 28            [ 1]  790 	jreq	00119$
      00871F A3 04 08         [ 2]  791 	cpw	x, #0x0408
      008722 27 23            [ 1]  792 	jreq	00119$
      008724 A3 04 02         [ 2]  793 	cpw	x, #0x0402
      008727 27 1E            [ 1]  794 	jreq	00119$
      008729 A3 05 04         [ 2]  795 	cpw	x, #0x0504
      00872C 27 19            [ 1]  796 	jreq	00119$
      00872E A3 05 02         [ 2]  797 	cpw	x, #0x0502
      008731 27 14            [ 1]  798 	jreq	00119$
      008733 89               [ 2]  799 	pushw	x
      008734 90 89            [ 2]  800 	pushw	y
      008736 4B 94            [ 1]  801 	push	#0x94
      008738 4B 02            [ 1]  802 	push	#0x02
      00873A 4B 00            [ 1]  803 	push	#0x00
      00873C 4B 00            [ 1]  804 	push	#0x00
      00873E AE 80 9B         [ 2]  805 	ldw	x, #(___str_0+0)
      008741 CD AA 17         [ 4]  806 	call	_assert_failed
      008744 90 85            [ 2]  807 	popw	y
      008746 85               [ 2]  808 	popw	x
      008747                        809 00119$:
                                    810 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 663: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      008747 4F               [ 1]  811 	clr	a
                                    812 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 666: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      008748 97               [ 1]  813 	ld	xl, a
      008749 A3 01 00         [ 2]  814 	cpw	x, #0x0100
      00874C 26 05            [ 1]  815 	jrne	00111$
                                    816 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 668: tmpreg = CLK->ICKR;
      00874E C6 50 C0         [ 1]  817 	ld	a, 0x50c0
      008751 20 21            [ 2]  818 	jra	00112$
      008753                        819 00111$:
                                    820 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 670: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      008753 A3 02 00         [ 2]  821 	cpw	x, #0x0200
      008756 26 05            [ 1]  822 	jrne	00108$
                                    823 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 672: tmpreg = CLK->ECKR;
      008758 C6 50 C1         [ 1]  824 	ld	a, 0x50c1
      00875B 20 17            [ 2]  825 	jra	00112$
      00875D                        826 00108$:
                                    827 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 674: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      00875D A3 03 00         [ 2]  828 	cpw	x, #0x0300
      008760 26 05            [ 1]  829 	jrne	00105$
                                    830 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 676: tmpreg = CLK->SWCR;
      008762 C6 50 C5         [ 1]  831 	ld	a, 0x50c5
      008765 20 0D            [ 2]  832 	jra	00112$
      008767                        833 00105$:
                                    834 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 678: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      008767 A3 04 00         [ 2]  835 	cpw	x, #0x0400
      00876A 26 05            [ 1]  836 	jrne	00102$
                                    837 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 680: tmpreg = CLK->CSSR;
      00876C C6 50 C8         [ 1]  838 	ld	a, 0x50c8
      00876F 20 03            [ 2]  839 	jra	00112$
      008771                        840 00102$:
                                    841 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 684: tmpreg = CLK->CCOR;
      008771 C6 50 C9         [ 1]  842 	ld	a, 0x50c9
      008774                        843 00112$:
                                    844 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 687: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      008774 93               [ 1]  845 	ldw	x, y
      008775 89               [ 2]  846 	pushw	x
      008776 14 02            [ 1]  847 	and	a, (2, sp)
      008778 85               [ 2]  848 	popw	x
      008779 4D               [ 1]  849 	tnz	a
      00877A 27 03            [ 1]  850 	jreq	00114$
                                    851 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 689: bitstatus = SET;
      00877C A6 01            [ 1]  852 	ld	a, #0x01
      00877E 81               [ 4]  853 	ret
      00877F                        854 00114$:
                                    855 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 693: bitstatus = RESET;
      00877F 4F               [ 1]  856 	clr	a
                                    857 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 697: return((FlagStatus)bitstatus);
                                    858 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 698: }
      008780 81               [ 4]  859 	ret
                                    860 	.area CODE
                                    861 	.area CONST
      00808F                        862 _HSIDivFactor:
      00808F 01                     863 	.db #0x01	; 1
      008090 02                     864 	.db #0x02	; 2
      008091 04                     865 	.db #0x04	; 4
      008092 08                     866 	.db #0x08	; 8
      008093                        867 _CLKPrescTable:
      008093 01                     868 	.db #0x01	; 1
      008094 02                     869 	.db #0x02	; 2
      008095 04                     870 	.db #0x04	; 4
      008096 08                     871 	.db #0x08	; 8
      008097 0A                     872 	.db #0x0a	; 10
      008098 10                     873 	.db #0x10	; 16
      008099 14                     874 	.db #0x14	; 20
      00809A 28                     875 	.db #0x28	; 40
                                    876 	.area CONST
      00809B                        877 ___str_0:
      00809B 43 3A                  878 	.ascii "C:"
      00809D 5C                     879 	.db 0x5c
      00809E 55 73 65 72 73         880 	.ascii "Users"
      0080A3 5C                     881 	.db 0x5c
      0080A4 64 69 73 61 6E         882 	.ascii "disan"
      0080A9 5C                     883 	.db 0x5c
      0080AA 2E 70 6C 61 74 66 6F   884 	.ascii ".platformio"
             72 6D 69 6F
      0080B5 5C                     885 	.db 0x5c
      0080B6 70 61 63 6B 61 67 65   886 	.ascii "packages"
             73
      0080BE 5C                     887 	.db 0x5c
      0080BF 66 72 61 6D 65 77 6F   888 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      0080D2 5C                     889 	.db 0x5c
      0080D3 4C 69 62 72 61 72 69   890 	.ascii "Libraries"
             65 73
      0080DC 5C                     891 	.db 0x5c
      0080DD 53 54 4D 38 53 5F 53   892 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0080F3 5C                     893 	.db 0x5c
      0080F4 73 72 63               894 	.ascii "src"
      0080F7 5C                     895 	.db 0x5c
      0080F8 73 74 6D 38 73 5F 63   896 	.ascii "stm8s_clk.c"
             6C 6B 2E 63
      008103 00                     897 	.db 0x00
                                    898 	.area CODE
                                    899 	.area INITIALIZER
                                    900 	.area CABS (ABS)
