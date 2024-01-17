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
                                     15 	.globl _CLK_FastHaltWakeUpCmd
                                     16 	.globl _CLK_HSECmd
                                     17 	.globl _CLK_HSICmd
                                     18 	.globl _CLK_LSICmd
                                     19 	.globl _CLK_CCOCmd
                                     20 	.globl _CLK_ClockSwitchCmd
                                     21 	.globl _CLK_SlowActiveHaltWakeUpCmd
                                     22 	.globl _CLK_PeripheralClockConfig
                                     23 	.globl _CLK_ClockSwitchConfig
                                     24 	.globl _CLK_HSIPrescalerConfig
                                     25 	.globl _CLK_CCOConfig
                                     26 	.globl _CLK_ITConfig
                                     27 	.globl _CLK_SYSCLKConfig
                                     28 	.globl _CLK_SWIMConfig
                                     29 	.globl _CLK_ClockSecuritySystemEnable
                                     30 	.globl _CLK_GetSYSCLKSource
                                     31 	.globl _CLK_GetClockFreq
                                     32 	.globl _CLK_AdjustHSICalibrationValue
                                     33 	.globl _CLK_SYSCLKEmergencyClear
                                     34 	.globl _CLK_GetFlagStatus
                                     35 	.globl _CLK_GetITStatus
                                     36 	.globl _CLK_ClearITPendingBit
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DATA
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area INITIALIZED
                                     45 ;--------------------------------------------------------
                                     46 ; absolute external ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area DABS (ABS)
                                     49 
                                     50 ; default segment ordering for linker
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area CONST
                                     55 	.area INITIALIZER
                                     56 	.area CODE
                                     57 
                                     58 ;--------------------------------------------------------
                                     59 ; global & static initialisations
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area GSINIT
                                     63 	.area GSFINAL
                                     64 	.area GSINIT
                                     65 ;--------------------------------------------------------
                                     66 ; Home
                                     67 ;--------------------------------------------------------
                                     68 	.area HOME
                                     69 	.area HOME
                                     70 ;--------------------------------------------------------
                                     71 ; code
                                     72 ;--------------------------------------------------------
                                     73 	.area CODE
                                     74 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 72: void CLK_DeInit(void)
                                     75 ;	-----------------------------------------
                                     76 ;	 function CLK_DeInit
                                     77 ;	-----------------------------------------
      008349                         78 _CLK_DeInit:
                                     79 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      008349 35 01 50 C0      [ 1]   80 	mov	0x50c0+0, #0x01
                                     81 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      00834D 35 00 50 C1      [ 1]   82 	mov	0x50c1+0, #0x00
                                     83 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      008351 35 E1 50 C4      [ 1]   84 	mov	0x50c4+0, #0xe1
                                     85 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      008355 35 00 50 C5      [ 1]   86 	mov	0x50c5+0, #0x00
                                     87 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      008359 35 18 50 C6      [ 1]   88 	mov	0x50c6+0, #0x18
                                     89 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      00835D 35 FF 50 C7      [ 1]   90 	mov	0x50c7+0, #0xff
                                     91 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      008361 35 FF 50 CA      [ 1]   92 	mov	0x50ca+0, #0xff
                                     93 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      008365 35 00 50 C8      [ 1]   94 	mov	0x50c8+0, #0x00
                                     95 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008369 35 00 50 C9      [ 1]   96 	mov	0x50c9+0, #0x00
                                     97 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      00836D                         98 00101$:
      00836D 72 00 50 C9 FB   [ 2]   99 	btjt	0x50c9, #0, 00101$
                                    100 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008372 35 00 50 C9      [ 1]  101 	mov	0x50c9+0, #0x00
                                    102 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      008376 35 00 50 CC      [ 1]  103 	mov	0x50cc+0, #0x00
                                    104 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      00837A 35 00 50 CD      [ 1]  105 	mov	0x50cd+0, #0x00
                                    106 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 88: }
      00837E 81               [ 4]  107 	ret
                                    108 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    109 ;	-----------------------------------------
                                    110 ;	 function CLK_FastHaltWakeUpCmd
                                    111 ;	-----------------------------------------
      00837F                        112 _CLK_FastHaltWakeUpCmd:
      00837F 88               [ 1]  113 	push	a
                                    114 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 102: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008380 6B 01            [ 1]  115 	ld	(0x01, sp), a
      008382 27 11            [ 1]  116 	jreq	00107$
      008384 7B 01            [ 1]  117 	ld	a, (0x01, sp)
      008386 4A               [ 1]  118 	dec	a
      008387 27 0C            [ 1]  119 	jreq	00107$
      008389 4B 66            [ 1]  120 	push	#0x66
      00838B 5F               [ 1]  121 	clrw	x
      00838C 89               [ 2]  122 	pushw	x
      00838D 4B 00            [ 1]  123 	push	#0x00
      00838F AE 80 9B         [ 2]  124 	ldw	x, #(___str_0+0)
      008392 CD AE 90         [ 4]  125 	call	_assert_failed
      008395                        126 00107$:
                                    127 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      008395 C6 50 C0         [ 1]  128 	ld	a, 0x50c0
                                    129 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 104: if (NewState != DISABLE)
      008398 0D 01            [ 1]  130 	tnz	(0x01, sp)
      00839A 27 07            [ 1]  131 	jreq	00102$
                                    132 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      00839C AA 04            [ 1]  133 	or	a, #0x04
      00839E C7 50 C0         [ 1]  134 	ld	0x50c0, a
      0083A1 20 05            [ 2]  135 	jra	00104$
      0083A3                        136 00102$:
                                    137 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      0083A3 A4 FB            [ 1]  138 	and	a, #0xfb
      0083A5 C7 50 C0         [ 1]  139 	ld	0x50c0, a
      0083A8                        140 00104$:
                                    141 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 114: }
      0083A8 84               [ 1]  142 	pop	a
      0083A9 81               [ 4]  143 	ret
                                    144 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    145 ;	-----------------------------------------
                                    146 ;	 function CLK_HSECmd
                                    147 ;	-----------------------------------------
      0083AA                        148 _CLK_HSECmd:
      0083AA 88               [ 1]  149 	push	a
                                    150 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 124: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0083AB 6B 01            [ 1]  151 	ld	(0x01, sp), a
      0083AD 27 11            [ 1]  152 	jreq	00107$
      0083AF 7B 01            [ 1]  153 	ld	a, (0x01, sp)
      0083B1 4A               [ 1]  154 	dec	a
      0083B2 27 0C            [ 1]  155 	jreq	00107$
      0083B4 4B 7C            [ 1]  156 	push	#0x7c
      0083B6 5F               [ 1]  157 	clrw	x
      0083B7 89               [ 2]  158 	pushw	x
      0083B8 4B 00            [ 1]  159 	push	#0x00
      0083BA AE 80 9B         [ 2]  160 	ldw	x, #(___str_0+0)
      0083BD CD AE 90         [ 4]  161 	call	_assert_failed
      0083C0                        162 00107$:
                                    163 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0083C0 C6 50 C1         [ 1]  164 	ld	a, 0x50c1
                                    165 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 126: if (NewState != DISABLE)
      0083C3 0D 01            [ 1]  166 	tnz	(0x01, sp)
      0083C5 27 07            [ 1]  167 	jreq	00102$
                                    168 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0083C7 AA 01            [ 1]  169 	or	a, #0x01
      0083C9 C7 50 C1         [ 1]  170 	ld	0x50c1, a
      0083CC 20 05            [ 2]  171 	jra	00104$
      0083CE                        172 00102$:
                                    173 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0083CE A4 FE            [ 1]  174 	and	a, #0xfe
      0083D0 C7 50 C1         [ 1]  175 	ld	0x50c1, a
      0083D3                        176 00104$:
                                    177 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 136: }
      0083D3 84               [ 1]  178 	pop	a
      0083D4 81               [ 4]  179 	ret
                                    180 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    181 ;	-----------------------------------------
                                    182 ;	 function CLK_HSICmd
                                    183 ;	-----------------------------------------
      0083D5                        184 _CLK_HSICmd:
      0083D5 88               [ 1]  185 	push	a
                                    186 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 146: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0083D6 6B 01            [ 1]  187 	ld	(0x01, sp), a
      0083D8 27 11            [ 1]  188 	jreq	00107$
      0083DA 7B 01            [ 1]  189 	ld	a, (0x01, sp)
      0083DC 4A               [ 1]  190 	dec	a
      0083DD 27 0C            [ 1]  191 	jreq	00107$
      0083DF 4B 92            [ 1]  192 	push	#0x92
      0083E1 5F               [ 1]  193 	clrw	x
      0083E2 89               [ 2]  194 	pushw	x
      0083E3 4B 00            [ 1]  195 	push	#0x00
      0083E5 AE 80 9B         [ 2]  196 	ldw	x, #(___str_0+0)
      0083E8 CD AE 90         [ 4]  197 	call	_assert_failed
      0083EB                        198 00107$:
                                    199 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      0083EB C6 50 C0         [ 1]  200 	ld	a, 0x50c0
                                    201 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 148: if (NewState != DISABLE)
      0083EE 0D 01            [ 1]  202 	tnz	(0x01, sp)
      0083F0 27 07            [ 1]  203 	jreq	00102$
                                    204 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      0083F2 AA 01            [ 1]  205 	or	a, #0x01
      0083F4 C7 50 C0         [ 1]  206 	ld	0x50c0, a
      0083F7 20 05            [ 2]  207 	jra	00104$
      0083F9                        208 00102$:
                                    209 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0083F9 A4 FE            [ 1]  210 	and	a, #0xfe
      0083FB C7 50 C0         [ 1]  211 	ld	0x50c0, a
      0083FE                        212 00104$:
                                    213 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 158: }
      0083FE 84               [ 1]  214 	pop	a
      0083FF 81               [ 4]  215 	ret
                                    216 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    217 ;	-----------------------------------------
                                    218 ;	 function CLK_LSICmd
                                    219 ;	-----------------------------------------
      008400                        220 _CLK_LSICmd:
      008400 88               [ 1]  221 	push	a
                                    222 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 169: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008401 6B 01            [ 1]  223 	ld	(0x01, sp), a
      008403 27 11            [ 1]  224 	jreq	00107$
      008405 7B 01            [ 1]  225 	ld	a, (0x01, sp)
      008407 4A               [ 1]  226 	dec	a
      008408 27 0C            [ 1]  227 	jreq	00107$
      00840A 4B A9            [ 1]  228 	push	#0xa9
      00840C 5F               [ 1]  229 	clrw	x
      00840D 89               [ 2]  230 	pushw	x
      00840E 4B 00            [ 1]  231 	push	#0x00
      008410 AE 80 9B         [ 2]  232 	ldw	x, #(___str_0+0)
      008413 CD AE 90         [ 4]  233 	call	_assert_failed
      008416                        234 00107$:
                                    235 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      008416 C6 50 C0         [ 1]  236 	ld	a, 0x50c0
                                    237 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 171: if (NewState != DISABLE)
      008419 0D 01            [ 1]  238 	tnz	(0x01, sp)
      00841B 27 07            [ 1]  239 	jreq	00102$
                                    240 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      00841D AA 08            [ 1]  241 	or	a, #0x08
      00841F C7 50 C0         [ 1]  242 	ld	0x50c0, a
      008422 20 05            [ 2]  243 	jra	00104$
      008424                        244 00102$:
                                    245 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008424 A4 F7            [ 1]  246 	and	a, #0xf7
      008426 C7 50 C0         [ 1]  247 	ld	0x50c0, a
      008429                        248 00104$:
                                    249 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 181: }
      008429 84               [ 1]  250 	pop	a
      00842A 81               [ 4]  251 	ret
                                    252 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    253 ;	-----------------------------------------
                                    254 ;	 function CLK_CCOCmd
                                    255 ;	-----------------------------------------
      00842B                        256 _CLK_CCOCmd:
      00842B 88               [ 1]  257 	push	a
                                    258 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 192: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00842C 6B 01            [ 1]  259 	ld	(0x01, sp), a
      00842E 27 11            [ 1]  260 	jreq	00107$
      008430 7B 01            [ 1]  261 	ld	a, (0x01, sp)
      008432 4A               [ 1]  262 	dec	a
      008433 27 0C            [ 1]  263 	jreq	00107$
      008435 4B C0            [ 1]  264 	push	#0xc0
      008437 5F               [ 1]  265 	clrw	x
      008438 89               [ 2]  266 	pushw	x
      008439 4B 00            [ 1]  267 	push	#0x00
      00843B AE 80 9B         [ 2]  268 	ldw	x, #(___str_0+0)
      00843E CD AE 90         [ 4]  269 	call	_assert_failed
      008441                        270 00107$:
                                    271 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      008441 C6 50 C9         [ 1]  272 	ld	a, 0x50c9
                                    273 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 194: if (NewState != DISABLE)
      008444 0D 01            [ 1]  274 	tnz	(0x01, sp)
      008446 27 07            [ 1]  275 	jreq	00102$
                                    276 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      008448 AA 01            [ 1]  277 	or	a, #0x01
      00844A C7 50 C9         [ 1]  278 	ld	0x50c9, a
      00844D 20 05            [ 2]  279 	jra	00104$
      00844F                        280 00102$:
                                    281 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      00844F A4 FE            [ 1]  282 	and	a, #0xfe
      008451 C7 50 C9         [ 1]  283 	ld	0x50c9, a
      008454                        284 00104$:
                                    285 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 204: }
      008454 84               [ 1]  286 	pop	a
      008455 81               [ 4]  287 	ret
                                    288 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    289 ;	-----------------------------------------
                                    290 ;	 function CLK_ClockSwitchCmd
                                    291 ;	-----------------------------------------
      008456                        292 _CLK_ClockSwitchCmd:
      008456 88               [ 1]  293 	push	a
                                    294 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008457 6B 01            [ 1]  295 	ld	(0x01, sp), a
      008459 27 11            [ 1]  296 	jreq	00107$
      00845B 7B 01            [ 1]  297 	ld	a, (0x01, sp)
      00845D 4A               [ 1]  298 	dec	a
      00845E 27 0C            [ 1]  299 	jreq	00107$
      008460 4B D8            [ 1]  300 	push	#0xd8
      008462 5F               [ 1]  301 	clrw	x
      008463 89               [ 2]  302 	pushw	x
      008464 4B 00            [ 1]  303 	push	#0x00
      008466 AE 80 9B         [ 2]  304 	ldw	x, #(___str_0+0)
      008469 CD AE 90         [ 4]  305 	call	_assert_failed
      00846C                        306 00107$:
                                    307 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      00846C C6 50 C5         [ 1]  308 	ld	a, 0x50c5
                                    309 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 218: if (NewState != DISABLE )
      00846F 0D 01            [ 1]  310 	tnz	(0x01, sp)
      008471 27 07            [ 1]  311 	jreq	00102$
                                    312 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      008473 AA 02            [ 1]  313 	or	a, #0x02
      008475 C7 50 C5         [ 1]  314 	ld	0x50c5, a
      008478 20 05            [ 2]  315 	jra	00104$
      00847A                        316 00102$:
                                    317 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      00847A A4 FD            [ 1]  318 	and	a, #0xfd
      00847C C7 50 C5         [ 1]  319 	ld	0x50c5, a
      00847F                        320 00104$:
                                    321 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 228: }
      00847F 84               [ 1]  322 	pop	a
      008480 81               [ 4]  323 	ret
                                    324 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    325 ;	-----------------------------------------
                                    326 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    327 ;	-----------------------------------------
      008481                        328 _CLK_SlowActiveHaltWakeUpCmd:
      008481 88               [ 1]  329 	push	a
                                    330 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 241: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008482 6B 01            [ 1]  331 	ld	(0x01, sp), a
      008484 27 11            [ 1]  332 	jreq	00107$
      008486 7B 01            [ 1]  333 	ld	a, (0x01, sp)
      008488 4A               [ 1]  334 	dec	a
      008489 27 0C            [ 1]  335 	jreq	00107$
      00848B 4B F1            [ 1]  336 	push	#0xf1
      00848D 5F               [ 1]  337 	clrw	x
      00848E 89               [ 2]  338 	pushw	x
      00848F 4B 00            [ 1]  339 	push	#0x00
      008491 AE 80 9B         [ 2]  340 	ldw	x, #(___str_0+0)
      008494 CD AE 90         [ 4]  341 	call	_assert_failed
      008497                        342 00107$:
                                    343 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      008497 C6 50 C0         [ 1]  344 	ld	a, 0x50c0
                                    345 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 243: if (NewState != DISABLE)
      00849A 0D 01            [ 1]  346 	tnz	(0x01, sp)
      00849C 27 07            [ 1]  347 	jreq	00102$
                                    348 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      00849E AA 20            [ 1]  349 	or	a, #0x20
      0084A0 C7 50 C0         [ 1]  350 	ld	0x50c0, a
      0084A3 20 05            [ 2]  351 	jra	00104$
      0084A5                        352 00102$:
                                    353 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      0084A5 A4 DF            [ 1]  354 	and	a, #0xdf
      0084A7 C7 50 C0         [ 1]  355 	ld	0x50c0, a
      0084AA                        356 00104$:
                                    357 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 253: }
      0084AA 84               [ 1]  358 	pop	a
      0084AB 81               [ 4]  359 	ret
                                    360 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    361 ;	-----------------------------------------
                                    362 ;	 function CLK_PeripheralClockConfig
                                    363 ;	-----------------------------------------
      0084AC                        364 _CLK_PeripheralClockConfig:
      0084AC 52 03            [ 2]  365 	sub	sp, #3
      0084AE 6B 03            [ 1]  366 	ld	(0x03, sp), a
                                    367 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 266: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0084B0 0D 06            [ 1]  368 	tnz	(0x06, sp)
      0084B2 27 11            [ 1]  369 	jreq	00113$
      0084B4 7B 06            [ 1]  370 	ld	a, (0x06, sp)
      0084B6 4A               [ 1]  371 	dec	a
      0084B7 27 0C            [ 1]  372 	jreq	00113$
      0084B9 4B 0A            [ 1]  373 	push	#0x0a
      0084BB 4B 01            [ 1]  374 	push	#0x01
      0084BD 5F               [ 1]  375 	clrw	x
      0084BE 89               [ 2]  376 	pushw	x
      0084BF AE 80 9B         [ 2]  377 	ldw	x, #(___str_0+0)
      0084C2 CD AE 90         [ 4]  378 	call	_assert_failed
      0084C5                        379 00113$:
                                    380 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 267: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      0084C5 0D 03            [ 1]  381 	tnz	(0x03, sp)
      0084C7 27 64            [ 1]  382 	jreq	00118$
      0084C9 7B 03            [ 1]  383 	ld	a, (0x03, sp)
      0084CB 4A               [ 1]  384 	dec	a
      0084CC 27 5F            [ 1]  385 	jreq	00118$
      0084CE 7B 03            [ 1]  386 	ld	a, (0x03, sp)
      0084D0 A0 03            [ 1]  387 	sub	a, #0x03
      0084D2 26 02            [ 1]  388 	jrne	00262$
      0084D4 4C               [ 1]  389 	inc	a
      0084D5 21                     390 	.byte 0x21
      0084D6                        391 00262$:
      0084D6 4F               [ 1]  392 	clr	a
      0084D7                        393 00263$:
      0084D7 4D               [ 1]  394 	tnz	a
      0084D8 26 53            [ 1]  395 	jrne	00118$
      0084DA 4D               [ 1]  396 	tnz	a
      0084DB 26 50            [ 1]  397 	jrne	00118$
      0084DD 4D               [ 1]  398 	tnz	a
      0084DE 26 4D            [ 1]  399 	jrne	00118$
      0084E0 7B 03            [ 1]  400 	ld	a, (0x03, sp)
      0084E2 A0 04            [ 1]  401 	sub	a, #0x04
      0084E4 26 04            [ 1]  402 	jrne	00268$
      0084E6 4C               [ 1]  403 	inc	a
      0084E7 97               [ 1]  404 	ld	xl, a
      0084E8 20 02            [ 2]  405 	jra	00269$
      0084EA                        406 00268$:
      0084EA 4F               [ 1]  407 	clr	a
      0084EB 97               [ 1]  408 	ld	xl, a
      0084EC                        409 00269$:
      0084EC 9F               [ 1]  410 	ld	a, xl
      0084ED 4D               [ 1]  411 	tnz	a
      0084EE 26 3D            [ 1]  412 	jrne	00118$
      0084F0 7B 03            [ 1]  413 	ld	a, (0x03, sp)
      0084F2 A0 05            [ 1]  414 	sub	a, #0x05
      0084F4 26 02            [ 1]  415 	jrne	00272$
      0084F6 4C               [ 1]  416 	inc	a
      0084F7 21                     417 	.byte 0x21
      0084F8                        418 00272$:
      0084F8 4F               [ 1]  419 	clr	a
      0084F9                        420 00273$:
      0084F9 4D               [ 1]  421 	tnz	a
      0084FA 26 31            [ 1]  422 	jrne	00118$
      0084FC 4D               [ 1]  423 	tnz	a
      0084FD 26 2E            [ 1]  424 	jrne	00118$
      0084FF 9F               [ 1]  425 	ld	a, xl
      008500 4D               [ 1]  426 	tnz	a
      008501 26 2A            [ 1]  427 	jrne	00118$
      008503 7B 03            [ 1]  428 	ld	a, (0x03, sp)
      008505 A1 06            [ 1]  429 	cp	a, #0x06
      008507 27 24            [ 1]  430 	jreq	00118$
      008509 7B 03            [ 1]  431 	ld	a, (0x03, sp)
      00850B A1 07            [ 1]  432 	cp	a, #0x07
      00850D 27 1E            [ 1]  433 	jreq	00118$
      00850F 7B 03            [ 1]  434 	ld	a, (0x03, sp)
      008511 A1 17            [ 1]  435 	cp	a, #0x17
      008513 27 18            [ 1]  436 	jreq	00118$
      008515 7B 03            [ 1]  437 	ld	a, (0x03, sp)
      008517 A1 13            [ 1]  438 	cp	a, #0x13
      008519 27 12            [ 1]  439 	jreq	00118$
      00851B 7B 03            [ 1]  440 	ld	a, (0x03, sp)
      00851D A1 12            [ 1]  441 	cp	a, #0x12
      00851F 27 0C            [ 1]  442 	jreq	00118$
      008521 4B 0B            [ 1]  443 	push	#0x0b
      008523 4B 01            [ 1]  444 	push	#0x01
      008525 5F               [ 1]  445 	clrw	x
      008526 89               [ 2]  446 	pushw	x
      008527 AE 80 9B         [ 2]  447 	ldw	x, #(___str_0+0)
      00852A CD AE 90         [ 4]  448 	call	_assert_failed
      00852D                        449 00118$:
                                    450 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00852D 7B 03            [ 1]  451 	ld	a, (0x03, sp)
      00852F A4 0F            [ 1]  452 	and	a, #0x0f
      008531 88               [ 1]  453 	push	a
      008532 A6 01            [ 1]  454 	ld	a, #0x01
      008534 6B 02            [ 1]  455 	ld	(0x02, sp), a
      008536 84               [ 1]  456 	pop	a
      008537 4D               [ 1]  457 	tnz	a
      008538 27 05            [ 1]  458 	jreq	00293$
      00853A                        459 00292$:
      00853A 08 01            [ 1]  460 	sll	(0x01, sp)
      00853C 4A               [ 1]  461 	dec	a
      00853D 26 FB            [ 1]  462 	jrne	00292$
      00853F                        463 00293$:
                                    464 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00853F 7B 01            [ 1]  465 	ld	a, (0x01, sp)
      008541 43               [ 1]  466 	cpl	a
      008542 6B 02            [ 1]  467 	ld	(0x02, sp), a
                                    468 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      008544 7B 03            [ 1]  469 	ld	a, (0x03, sp)
      008546 A5 10            [ 1]  470 	bcp	a, #0x10
      008548 26 15            [ 1]  471 	jrne	00108$
                                    472 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00854A C6 50 C7         [ 1]  473 	ld	a, 0x50c7
                                    474 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 271: if (NewState != DISABLE)
      00854D 0D 06            [ 1]  475 	tnz	(0x06, sp)
      00854F 27 07            [ 1]  476 	jreq	00102$
                                    477 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008551 1A 01            [ 1]  478 	or	a, (0x01, sp)
      008553 C7 50 C7         [ 1]  479 	ld	0x50c7, a
      008556 20 1A            [ 2]  480 	jra	00110$
      008558                        481 00102$:
                                    482 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008558 14 02            [ 1]  483 	and	a, (0x02, sp)
      00855A C7 50 C7         [ 1]  484 	ld	0x50c7, a
      00855D 20 13            [ 2]  485 	jra	00110$
      00855F                        486 00108$:
                                    487 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00855F C6 50 CA         [ 1]  488 	ld	a, 0x50ca
                                    489 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 284: if (NewState != DISABLE)
      008562 0D 06            [ 1]  490 	tnz	(0x06, sp)
      008564 27 07            [ 1]  491 	jreq	00105$
                                    492 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008566 1A 01            [ 1]  493 	or	a, (0x01, sp)
      008568 C7 50 CA         [ 1]  494 	ld	0x50ca, a
      00856B 20 05            [ 2]  495 	jra	00110$
      00856D                        496 00105$:
                                    497 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00856D 14 02            [ 1]  498 	and	a, (0x02, sp)
      00856F C7 50 CA         [ 1]  499 	ld	0x50ca, a
      008572                        500 00110$:
                                    501 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 295: }
      008572 5B 03            [ 2]  502 	addw	sp, #3
      008574 85               [ 2]  503 	popw	x
      008575 84               [ 1]  504 	pop	a
      008576 FC               [ 2]  505 	jp	(x)
                                    506 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    507 ;	-----------------------------------------
                                    508 ;	 function CLK_ClockSwitchConfig
                                    509 ;	-----------------------------------------
      008577                        510 _CLK_ClockSwitchConfig:
      008577 89               [ 2]  511 	pushw	x
      008578 6B 02            [ 1]  512 	ld	(0x02, sp), a
                                    513 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 316: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      00857A 7B 05            [ 1]  514 	ld	a, (0x05, sp)
      00857C A1 E1            [ 1]  515 	cp	a, #0xe1
      00857E 27 18            [ 1]  516 	jreq	00140$
      008580 7B 05            [ 1]  517 	ld	a, (0x05, sp)
      008582 A1 D2            [ 1]  518 	cp	a, #0xd2
      008584 27 12            [ 1]  519 	jreq	00140$
      008586 7B 05            [ 1]  520 	ld	a, (0x05, sp)
      008588 A1 B4            [ 1]  521 	cp	a, #0xb4
      00858A 27 0C            [ 1]  522 	jreq	00140$
      00858C 4B 3C            [ 1]  523 	push	#0x3c
      00858E 4B 01            [ 1]  524 	push	#0x01
      008590 5F               [ 1]  525 	clrw	x
      008591 89               [ 2]  526 	pushw	x
      008592 AE 80 9B         [ 2]  527 	ldw	x, #(___str_0+0)
      008595 CD AE 90         [ 4]  528 	call	_assert_failed
      008598                        529 00140$:
                                    530 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 317: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      008598 7B 02            [ 1]  531 	ld	a, (0x02, sp)
      00859A 4A               [ 1]  532 	dec	a
      00859B 26 05            [ 1]  533 	jrne	00309$
      00859D A6 01            [ 1]  534 	ld	a, #0x01
      00859F 6B 01            [ 1]  535 	ld	(0x01, sp), a
      0085A1 C5                     536 	.byte 0xc5
      0085A2                        537 00309$:
      0085A2 0F 01            [ 1]  538 	clr	(0x01, sp)
      0085A4                        539 00310$:
      0085A4 0D 02            [ 1]  540 	tnz	(0x02, sp)
      0085A6 27 10            [ 1]  541 	jreq	00148$
      0085A8 0D 01            [ 1]  542 	tnz	(0x01, sp)
      0085AA 26 0C            [ 1]  543 	jrne	00148$
      0085AC 4B 3D            [ 1]  544 	push	#0x3d
      0085AE 4B 01            [ 1]  545 	push	#0x01
      0085B0 5F               [ 1]  546 	clrw	x
      0085B1 89               [ 2]  547 	pushw	x
      0085B2 AE 80 9B         [ 2]  548 	ldw	x, #(___str_0+0)
      0085B5 CD AE 90         [ 4]  549 	call	_assert_failed
      0085B8                        550 00148$:
                                    551 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 318: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      0085B8 0D 06            [ 1]  552 	tnz	(0x06, sp)
      0085BA 27 11            [ 1]  553 	jreq	00153$
      0085BC 7B 06            [ 1]  554 	ld	a, (0x06, sp)
      0085BE 4A               [ 1]  555 	dec	a
      0085BF 27 0C            [ 1]  556 	jreq	00153$
      0085C1 4B 3E            [ 1]  557 	push	#0x3e
      0085C3 4B 01            [ 1]  558 	push	#0x01
      0085C5 5F               [ 1]  559 	clrw	x
      0085C6 89               [ 2]  560 	pushw	x
      0085C7 AE 80 9B         [ 2]  561 	ldw	x, #(___str_0+0)
      0085CA CD AE 90         [ 4]  562 	call	_assert_failed
      0085CD                        563 00153$:
                                    564 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 319: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      0085CD 0D 07            [ 1]  565 	tnz	(0x07, sp)
      0085CF 27 11            [ 1]  566 	jreq	00158$
      0085D1 7B 07            [ 1]  567 	ld	a, (0x07, sp)
      0085D3 4A               [ 1]  568 	dec	a
      0085D4 27 0C            [ 1]  569 	jreq	00158$
      0085D6 4B 3F            [ 1]  570 	push	#0x3f
      0085D8 4B 01            [ 1]  571 	push	#0x01
      0085DA 5F               [ 1]  572 	clrw	x
      0085DB 89               [ 2]  573 	pushw	x
      0085DC AE 80 9B         [ 2]  574 	ldw	x, #(___str_0+0)
      0085DF CD AE 90         [ 4]  575 	call	_assert_failed
      0085E2                        576 00158$:
                                    577 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      0085E2 C6 50 C3         [ 1]  578 	ld	a, 0x50c3
      0085E5 90 97            [ 1]  579 	ld	yl, a
                                    580 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0085E7 C6 50 C5         [ 1]  581 	ld	a, 0x50c5
      0085EA 97               [ 1]  582 	ld	xl, a
                                    583 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      0085EB 7B 01            [ 1]  584 	ld	a, (0x01, sp)
      0085ED 27 37            [ 1]  585 	jreq	00122$
                                    586 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0085EF 9F               [ 1]  587 	ld	a, xl
      0085F0 AA 02            [ 1]  588 	or	a, #0x02
      0085F2 C7 50 C5         [ 1]  589 	ld	0x50c5, a
      0085F5 C6 50 C5         [ 1]  590 	ld	a, 0x50c5
                                    591 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 331: if (ITState != DISABLE)
      0085F8 0D 06            [ 1]  592 	tnz	(0x06, sp)
      0085FA 27 07            [ 1]  593 	jreq	00102$
                                    594 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      0085FC AA 04            [ 1]  595 	or	a, #0x04
      0085FE C7 50 C5         [ 1]  596 	ld	0x50c5, a
      008601 20 05            [ 2]  597 	jra	00103$
      008603                        598 00102$:
                                    599 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008603 A4 FB            [ 1]  600 	and	a, #0xfb
      008605 C7 50 C5         [ 1]  601 	ld	0x50c5, a
      008608                        602 00103$:
                                    603 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      008608 AE 50 C4         [ 2]  604 	ldw	x, #0x50c4
      00860B 7B 05            [ 1]  605 	ld	a, (0x05, sp)
      00860D F7               [ 1]  606 	ld	(x), a
                                    607 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      00860E 5F               [ 1]  608 	clrw	x
      00860F 5A               [ 2]  609 	decw	x
      008610                        610 00105$:
      008610 72 01 50 C5 06   [ 2]  611 	btjf	0x50c5, #0, 00107$
      008615 5D               [ 2]  612 	tnzw	x
      008616 27 03            [ 1]  613 	jreq	00107$
                                    614 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 346: DownCounter--;
      008618 5A               [ 2]  615 	decw	x
      008619 20 F5            [ 2]  616 	jra	00105$
      00861B                        617 00107$:
                                    618 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 349: if(DownCounter != 0)
      00861B 5D               [ 2]  619 	tnzw	x
      00861C 27 05            [ 1]  620 	jreq	00109$
                                    621 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 351: Swif = SUCCESS;
      00861E A6 01            [ 1]  622 	ld	a, #0x01
      008620 97               [ 1]  623 	ld	xl, a
      008621 20 34            [ 2]  624 	jra	00123$
      008623                        625 00109$:
                                    626 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 355: Swif = ERROR;
      008623 5F               [ 1]  627 	clrw	x
      008624 20 31            [ 2]  628 	jra	00123$
      008626                        629 00122$:
                                    630 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 361: if (ITState != DISABLE)
      008626 0D 06            [ 1]  631 	tnz	(0x06, sp)
      008628 27 08            [ 1]  632 	jreq	00112$
                                    633 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      00862A 9F               [ 1]  634 	ld	a, xl
      00862B AA 04            [ 1]  635 	or	a, #0x04
      00862D C7 50 C5         [ 1]  636 	ld	0x50c5, a
      008630 20 06            [ 2]  637 	jra	00113$
      008632                        638 00112$:
                                    639 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008632 9F               [ 1]  640 	ld	a, xl
      008633 A4 FB            [ 1]  641 	and	a, #0xfb
      008635 C7 50 C5         [ 1]  642 	ld	0x50c5, a
      008638                        643 00113$:
                                    644 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      008638 AE 50 C4         [ 2]  645 	ldw	x, #0x50c4
      00863B 7B 05            [ 1]  646 	ld	a, (0x05, sp)
      00863D F7               [ 1]  647 	ld	(x), a
                                    648 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      00863E 5F               [ 1]  649 	clrw	x
      00863F 5A               [ 2]  650 	decw	x
      008640                        651 00115$:
      008640 72 07 50 C5 06   [ 2]  652 	btjf	0x50c5, #3, 00117$
      008645 5D               [ 2]  653 	tnzw	x
      008646 27 03            [ 1]  654 	jreq	00117$
                                    655 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 376: DownCounter--;
      008648 5A               [ 2]  656 	decw	x
      008649 20 F5            [ 2]  657 	jra	00115$
      00864B                        658 00117$:
                                    659 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 379: if(DownCounter != 0)
      00864B 5D               [ 2]  660 	tnzw	x
      00864C 27 08            [ 1]  661 	jreq	00119$
                                    662 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      00864E 72 12 50 C5      [ 1]  663 	bset	0x50c5, #1
                                    664 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 383: Swif = SUCCESS;
      008652 A6 01            [ 1]  665 	ld	a, #0x01
      008654 97               [ 1]  666 	ld	xl, a
                                    667 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 387: Swif = ERROR;
      008655 21                     668 	.byte 0x21
      008656                        669 00119$:
      008656 5F               [ 1]  670 	clrw	x
      008657                        671 00123$:
                                    672 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 390: if(Swif != ERROR)
      008657 9F               [ 1]  673 	ld	a, xl
      008658 4D               [ 1]  674 	tnz	a
      008659 27 2E            [ 1]  675 	jreq	00136$
                                    676 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      00865B 0D 07            [ 1]  677 	tnz	(0x07, sp)
      00865D 26 0C            [ 1]  678 	jrne	00132$
      00865F 90 9F            [ 1]  679 	ld	a, yl
      008661 A1 E1            [ 1]  680 	cp	a, #0xe1
      008663 26 06            [ 1]  681 	jrne	00132$
                                    682 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008665 72 11 50 C0      [ 1]  683 	bres	0x50c0, #0
      008669 20 1E            [ 2]  684 	jra	00136$
      00866B                        685 00132$:
                                    686 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      00866B 0D 07            [ 1]  687 	tnz	(0x07, sp)
      00866D 26 0C            [ 1]  688 	jrne	00128$
      00866F 90 9F            [ 1]  689 	ld	a, yl
      008671 A1 D2            [ 1]  690 	cp	a, #0xd2
      008673 26 06            [ 1]  691 	jrne	00128$
                                    692 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008675 72 17 50 C0      [ 1]  693 	bres	0x50c0, #3
      008679 20 0E            [ 2]  694 	jra	00136$
      00867B                        695 00128$:
                                    696 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      00867B 0D 07            [ 1]  697 	tnz	(0x07, sp)
      00867D 26 0A            [ 1]  698 	jrne	00136$
      00867F 90 9F            [ 1]  699 	ld	a, yl
      008681 A1 B4            [ 1]  700 	cp	a, #0xb4
      008683 26 04            [ 1]  701 	jrne	00136$
                                    702 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008685 72 11 50 C1      [ 1]  703 	bres	0x50c1, #0
      008689                        704 00136$:
                                    705 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 406: return(Swif);
      008689 9F               [ 1]  706 	ld	a, xl
                                    707 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 407: }
      00868A 1E 03            [ 2]  708 	ldw	x, (3, sp)
      00868C 5B 07            [ 2]  709 	addw	sp, #7
      00868E FC               [ 2]  710 	jp	(x)
                                    711 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    712 ;	-----------------------------------------
                                    713 ;	 function CLK_HSIPrescalerConfig
                                    714 ;	-----------------------------------------
      00868F                        715 _CLK_HSIPrescalerConfig:
      00868F 88               [ 1]  716 	push	a
                                    717 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 418: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      008690 6B 01            [ 1]  718 	ld	(0x01, sp), a
      008692 27 1E            [ 1]  719 	jreq	00104$
      008694 7B 01            [ 1]  720 	ld	a, (0x01, sp)
      008696 A1 08            [ 1]  721 	cp	a, #0x08
      008698 27 18            [ 1]  722 	jreq	00104$
      00869A 7B 01            [ 1]  723 	ld	a, (0x01, sp)
      00869C A1 10            [ 1]  724 	cp	a, #0x10
      00869E 27 12            [ 1]  725 	jreq	00104$
      0086A0 7B 01            [ 1]  726 	ld	a, (0x01, sp)
      0086A2 A1 18            [ 1]  727 	cp	a, #0x18
      0086A4 27 0C            [ 1]  728 	jreq	00104$
      0086A6 4B A2            [ 1]  729 	push	#0xa2
      0086A8 4B 01            [ 1]  730 	push	#0x01
      0086AA 5F               [ 1]  731 	clrw	x
      0086AB 89               [ 2]  732 	pushw	x
      0086AC AE 80 9B         [ 2]  733 	ldw	x, #(___str_0+0)
      0086AF CD AE 90         [ 4]  734 	call	_assert_failed
      0086B2                        735 00104$:
                                    736 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0086B2 C6 50 C6         [ 1]  737 	ld	a, 0x50c6
      0086B5 A4 E7            [ 1]  738 	and	a, #0xe7
      0086B7 C7 50 C6         [ 1]  739 	ld	0x50c6, a
                                    740 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      0086BA C6 50 C6         [ 1]  741 	ld	a, 0x50c6
      0086BD 1A 01            [ 1]  742 	or	a, (0x01, sp)
      0086BF C7 50 C6         [ 1]  743 	ld	0x50c6, a
                                    744 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 425: }
      0086C2 84               [ 1]  745 	pop	a
      0086C3 81               [ 4]  746 	ret
                                    747 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    748 ;	-----------------------------------------
                                    749 ;	 function CLK_CCOConfig
                                    750 ;	-----------------------------------------
      0086C4                        751 _CLK_CCOConfig:
      0086C4 88               [ 1]  752 	push	a
                                    753 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 439: assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
      0086C5 4D               [ 1]  754 	tnz	a
      0086C6 27 3E            [ 1]  755 	jreq	00104$
      0086C8 A1 04            [ 1]  756 	cp	a, #0x04
      0086CA 27 3A            [ 1]  757 	jreq	00104$
      0086CC A1 02            [ 1]  758 	cp	a, #0x02
      0086CE 27 36            [ 1]  759 	jreq	00104$
      0086D0 A1 08            [ 1]  760 	cp	a, #0x08
      0086D2 27 32            [ 1]  761 	jreq	00104$
      0086D4 A1 0A            [ 1]  762 	cp	a, #0x0a
      0086D6 27 2E            [ 1]  763 	jreq	00104$
      0086D8 A1 0C            [ 1]  764 	cp	a, #0x0c
      0086DA 27 2A            [ 1]  765 	jreq	00104$
      0086DC A1 0E            [ 1]  766 	cp	a, #0x0e
      0086DE 27 26            [ 1]  767 	jreq	00104$
      0086E0 A1 10            [ 1]  768 	cp	a, #0x10
      0086E2 27 22            [ 1]  769 	jreq	00104$
      0086E4 A1 12            [ 1]  770 	cp	a, #0x12
      0086E6 27 1E            [ 1]  771 	jreq	00104$
      0086E8 A1 14            [ 1]  772 	cp	a, #0x14
      0086EA 27 1A            [ 1]  773 	jreq	00104$
      0086EC A1 16            [ 1]  774 	cp	a, #0x16
      0086EE 27 16            [ 1]  775 	jreq	00104$
      0086F0 A1 18            [ 1]  776 	cp	a, #0x18
      0086F2 27 12            [ 1]  777 	jreq	00104$
      0086F4 A1 1A            [ 1]  778 	cp	a, #0x1a
      0086F6 27 0E            [ 1]  779 	jreq	00104$
      0086F8 88               [ 1]  780 	push	a
      0086F9 4B B7            [ 1]  781 	push	#0xb7
      0086FB 4B 01            [ 1]  782 	push	#0x01
      0086FD 5F               [ 1]  783 	clrw	x
      0086FE 89               [ 2]  784 	pushw	x
      0086FF AE 80 9B         [ 2]  785 	ldw	x, #(___str_0+0)
      008702 CD AE 90         [ 4]  786 	call	_assert_failed
      008705 84               [ 1]  787 	pop	a
      008706                        788 00104$:
                                    789 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      008706 AE 50 C9         [ 2]  790 	ldw	x, #0x50c9
      008709 88               [ 1]  791 	push	a
      00870A F6               [ 1]  792 	ld	a, (x)
      00870B A4 E1            [ 1]  793 	and	a, #0xe1
      00870D 6B 02            [ 1]  794 	ld	(0x02, sp), a
      00870F 84               [ 1]  795 	pop	a
      008710 AE 50 C9         [ 2]  796 	ldw	x, #0x50c9
      008713 88               [ 1]  797 	push	a
      008714 7B 02            [ 1]  798 	ld	a, (0x02, sp)
      008716 F7               [ 1]  799 	ld	(x), a
      008717 84               [ 1]  800 	pop	a
                                    801 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      008718 AE 50 C9         [ 2]  802 	ldw	x, #0x50c9
      00871B 88               [ 1]  803 	push	a
      00871C F6               [ 1]  804 	ld	a, (x)
      00871D 6B 02            [ 1]  805 	ld	(0x02, sp), a
      00871F 84               [ 1]  806 	pop	a
      008720 1A 01            [ 1]  807 	or	a, (0x01, sp)
      008722 C7 50 C9         [ 1]  808 	ld	0x50c9, a
                                    809 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      008725 72 10 50 C9      [ 1]  810 	bset	0x50c9, #0
                                    811 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 449: }
      008729 84               [ 1]  812 	pop	a
      00872A 81               [ 4]  813 	ret
                                    814 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    815 ;	-----------------------------------------
                                    816 ;	 function CLK_ITConfig
                                    817 ;	-----------------------------------------
      00872B                        818 _CLK_ITConfig:
      00872B 89               [ 2]  819 	pushw	x
      00872C 6B 02            [ 1]  820 	ld	(0x02, sp), a
                                    821 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 462: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00872E 0D 05            [ 1]  822 	tnz	(0x05, sp)
      008730 27 11            [ 1]  823 	jreq	00115$
      008732 7B 05            [ 1]  824 	ld	a, (0x05, sp)
      008734 4A               [ 1]  825 	dec	a
      008735 27 0C            [ 1]  826 	jreq	00115$
      008737 4B CE            [ 1]  827 	push	#0xce
      008739 4B 01            [ 1]  828 	push	#0x01
      00873B 5F               [ 1]  829 	clrw	x
      00873C 89               [ 2]  830 	pushw	x
      00873D AE 80 9B         [ 2]  831 	ldw	x, #(___str_0+0)
      008740 CD AE 90         [ 4]  832 	call	_assert_failed
      008743                        833 00115$:
                                    834 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 463: assert_param(IS_CLK_IT_OK(CLK_IT));
      008743 7B 02            [ 1]  835 	ld	a, (0x02, sp)
      008745 A0 0C            [ 1]  836 	sub	a, #0x0c
      008747 26 02            [ 1]  837 	jrne	00174$
      008749 4C               [ 1]  838 	inc	a
      00874A 21                     839 	.byte 0x21
      00874B                        840 00174$:
      00874B 4F               [ 1]  841 	clr	a
      00874C                        842 00175$:
      00874C 88               [ 1]  843 	push	a
      00874D 7B 03            [ 1]  844 	ld	a, (0x03, sp)
      00874F A1 1C            [ 1]  845 	cp	a, #0x1c
      008751 84               [ 1]  846 	pop	a
      008752 26 07            [ 1]  847 	jrne	00177$
      008754 88               [ 1]  848 	push	a
      008755 A6 01            [ 1]  849 	ld	a, #0x01
      008757 6B 02            [ 1]  850 	ld	(0x02, sp), a
      008759 84               [ 1]  851 	pop	a
      00875A C5                     852 	.byte 0xc5
      00875B                        853 00177$:
      00875B 0F 01            [ 1]  854 	clr	(0x01, sp)
      00875D                        855 00178$:
      00875D 4D               [ 1]  856 	tnz	a
      00875E 26 12            [ 1]  857 	jrne	00120$
      008760 0D 01            [ 1]  858 	tnz	(0x01, sp)
      008762 26 0E            [ 1]  859 	jrne	00120$
      008764 88               [ 1]  860 	push	a
      008765 4B CF            [ 1]  861 	push	#0xcf
      008767 4B 01            [ 1]  862 	push	#0x01
      008769 5F               [ 1]  863 	clrw	x
      00876A 89               [ 2]  864 	pushw	x
      00876B AE 80 9B         [ 2]  865 	ldw	x, #(___str_0+0)
      00876E CD AE 90         [ 4]  866 	call	_assert_failed
      008771 84               [ 1]  867 	pop	a
      008772                        868 00120$:
                                    869 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 465: if (NewState != DISABLE)
      008772 0D 05            [ 1]  870 	tnz	(0x05, sp)
      008774 27 1B            [ 1]  871 	jreq	00110$
                                    872 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 467: switch (CLK_IT)
      008776 4D               [ 1]  873 	tnz	a
      008777 26 0E            [ 1]  874 	jrne	00102$
      008779 7B 01            [ 1]  875 	ld	a, (0x01, sp)
      00877B 27 2D            [ 1]  876 	jreq	00112$
                                    877 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      00877D C6 50 C5         [ 1]  878 	ld	a, 0x50c5
      008780 AA 04            [ 1]  879 	or	a, #0x04
      008782 C7 50 C5         [ 1]  880 	ld	0x50c5, a
                                    881 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 471: break;
      008785 20 23            [ 2]  882 	jra	00112$
                                    883 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      008787                        884 00102$:
                                    885 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      008787 C6 50 C8         [ 1]  886 	ld	a, 0x50c8
      00878A AA 04            [ 1]  887 	or	a, #0x04
      00878C C7 50 C8         [ 1]  888 	ld	0x50c8, a
                                    889 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 474: break;
      00878F 20 19            [ 2]  890 	jra	00112$
                                    891 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 477: }
      008791                        892 00110$:
                                    893 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 481: switch (CLK_IT)
      008791 4D               [ 1]  894 	tnz	a
      008792 26 0E            [ 1]  895 	jrne	00106$
      008794 7B 01            [ 1]  896 	ld	a, (0x01, sp)
      008796 27 12            [ 1]  897 	jreq	00112$
                                    898 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      008798 C6 50 C5         [ 1]  899 	ld	a, 0x50c5
      00879B A4 FB            [ 1]  900 	and	a, #0xfb
      00879D C7 50 C5         [ 1]  901 	ld	0x50c5, a
                                    902 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 485: break;
      0087A0 20 08            [ 2]  903 	jra	00112$
                                    904 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      0087A2                        905 00106$:
                                    906 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      0087A2 C6 50 C8         [ 1]  907 	ld	a, 0x50c8
      0087A5 A4 FB            [ 1]  908 	and	a, #0xfb
      0087A7 C7 50 C8         [ 1]  909 	ld	0x50c8, a
                                    910 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 491: }
      0087AA                        911 00112$:
                                    912 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 493: }
      0087AA 85               [ 2]  913 	popw	x
      0087AB 85               [ 2]  914 	popw	x
      0087AC 84               [ 1]  915 	pop	a
      0087AD FC               [ 2]  916 	jp	(x)
                                    917 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    918 ;	-----------------------------------------
                                    919 ;	 function CLK_SYSCLKConfig
                                    920 ;	-----------------------------------------
      0087AE                        921 _CLK_SYSCLKConfig:
      0087AE 88               [ 1]  922 	push	a
                                    923 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 503: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      0087AF 95               [ 1]  924 	ld	xh, a
      0087B0 4D               [ 1]  925 	tnz	a
      0087B1 27 4A            [ 1]  926 	jreq	00107$
      0087B3 9E               [ 1]  927 	ld	a, xh
      0087B4 A1 08            [ 1]  928 	cp	a, #0x08
      0087B6 27 45            [ 1]  929 	jreq	00107$
      0087B8 9E               [ 1]  930 	ld	a, xh
      0087B9 A1 10            [ 1]  931 	cp	a, #0x10
      0087BB 27 40            [ 1]  932 	jreq	00107$
      0087BD 9E               [ 1]  933 	ld	a, xh
      0087BE A1 18            [ 1]  934 	cp	a, #0x18
      0087C0 27 3B            [ 1]  935 	jreq	00107$
      0087C2 9E               [ 1]  936 	ld	a, xh
      0087C3 A1 80            [ 1]  937 	cp	a, #0x80
      0087C5 27 36            [ 1]  938 	jreq	00107$
      0087C7 9E               [ 1]  939 	ld	a, xh
      0087C8 A1 81            [ 1]  940 	cp	a, #0x81
      0087CA 27 31            [ 1]  941 	jreq	00107$
      0087CC 9E               [ 1]  942 	ld	a, xh
      0087CD A1 82            [ 1]  943 	cp	a, #0x82
      0087CF 27 2C            [ 1]  944 	jreq	00107$
      0087D1 9E               [ 1]  945 	ld	a, xh
      0087D2 A1 83            [ 1]  946 	cp	a, #0x83
      0087D4 27 27            [ 1]  947 	jreq	00107$
      0087D6 9E               [ 1]  948 	ld	a, xh
      0087D7 A1 84            [ 1]  949 	cp	a, #0x84
      0087D9 27 22            [ 1]  950 	jreq	00107$
      0087DB 9E               [ 1]  951 	ld	a, xh
      0087DC A1 85            [ 1]  952 	cp	a, #0x85
      0087DE 27 1D            [ 1]  953 	jreq	00107$
      0087E0 9E               [ 1]  954 	ld	a, xh
      0087E1 A1 86            [ 1]  955 	cp	a, #0x86
      0087E3 27 18            [ 1]  956 	jreq	00107$
      0087E5 9E               [ 1]  957 	ld	a, xh
      0087E6 A1 87            [ 1]  958 	cp	a, #0x87
      0087E8 27 13            [ 1]  959 	jreq	00107$
      0087EA 89               [ 2]  960 	pushw	x
      0087EB 4B F7            [ 1]  961 	push	#0xf7
      0087ED 4B 01            [ 1]  962 	push	#0x01
      0087EF 4B 00            [ 1]  963 	push	#0x00
      0087F1 4B 00            [ 1]  964 	push	#0x00
      0087F3 AE 80 9B         [ 2]  965 	ldw	x, #(___str_0+0)
      0087F6 CD AE 90         [ 4]  966 	call	_assert_failed
      0087F9 02               [ 1]  967 	rlwa	x
      0087FA 84               [ 1]  968 	pop	a
      0087FB 01               [ 1]  969 	rrwa	x
      0087FC 84               [ 1]  970 	pop	a
      0087FD                        971 00107$:
                                    972 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0087FD C6 50 C6         [ 1]  973 	ld	a, 0x50c6
                                    974 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      008800 5D               [ 2]  975 	tnzw	x
      008801 2B 14            [ 1]  976 	jrmi	00102$
                                    977 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008803 A4 E7            [ 1]  978 	and	a, #0xe7
      008805 C7 50 C6         [ 1]  979 	ld	0x50c6, a
                                    980 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      008808 C6 50 C6         [ 1]  981 	ld	a, 0x50c6
      00880B 6B 01            [ 1]  982 	ld	(0x01, sp), a
      00880D 9E               [ 1]  983 	ld	a, xh
      00880E A4 18            [ 1]  984 	and	a, #0x18
      008810 1A 01            [ 1]  985 	or	a, (0x01, sp)
      008812 C7 50 C6         [ 1]  986 	ld	0x50c6, a
      008815 20 12            [ 2]  987 	jra	00104$
      008817                        988 00102$:
                                    989 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      008817 A4 F8            [ 1]  990 	and	a, #0xf8
      008819 C7 50 C6         [ 1]  991 	ld	0x50c6, a
                                    992 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      00881C C6 50 C6         [ 1]  993 	ld	a, 0x50c6
      00881F 6B 01            [ 1]  994 	ld	(0x01, sp), a
      008821 9E               [ 1]  995 	ld	a, xh
      008822 A4 07            [ 1]  996 	and	a, #0x07
      008824 1A 01            [ 1]  997 	or	a, (0x01, sp)
      008826 C7 50 C6         [ 1]  998 	ld	0x50c6, a
      008829                        999 00104$:
                                   1000 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 515: }
      008829 84               [ 1] 1001 	pop	a
      00882A 81               [ 4] 1002 	ret
                                   1003 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                   1004 ;	-----------------------------------------
                                   1005 ;	 function CLK_SWIMConfig
                                   1006 ;	-----------------------------------------
      00882B                       1007 _CLK_SWIMConfig:
      00882B 88               [ 1] 1008 	push	a
                                   1009 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 526: assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
      00882C 6B 01            [ 1] 1010 	ld	(0x01, sp), a
      00882E 27 11            [ 1] 1011 	jreq	00107$
      008830 7B 01            [ 1] 1012 	ld	a, (0x01, sp)
      008832 4A               [ 1] 1013 	dec	a
      008833 27 0C            [ 1] 1014 	jreq	00107$
      008835 4B 0E            [ 1] 1015 	push	#0x0e
      008837 4B 02            [ 1] 1016 	push	#0x02
      008839 5F               [ 1] 1017 	clrw	x
      00883A 89               [ 2] 1018 	pushw	x
      00883B AE 80 9B         [ 2] 1019 	ldw	x, #(___str_0+0)
      00883E CD AE 90         [ 4] 1020 	call	_assert_failed
      008841                       1021 00107$:
                                   1022 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      008841 C6 50 CD         [ 1] 1023 	ld	a, 0x50cd
                                   1024 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      008844 0D 01            [ 1] 1025 	tnz	(0x01, sp)
      008846 27 07            [ 1] 1026 	jreq	00102$
                                   1027 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      008848 AA 01            [ 1] 1028 	or	a, #0x01
      00884A C7 50 CD         [ 1] 1029 	ld	0x50cd, a
      00884D 20 05            [ 2] 1030 	jra	00104$
      00884F                       1031 00102$:
                                   1032 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      00884F A4 FE            [ 1] 1033 	and	a, #0xfe
      008851 C7 50 CD         [ 1] 1034 	ld	0x50cd, a
      008854                       1035 00104$:
                                   1036 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 538: }
      008854 84               [ 1] 1037 	pop	a
      008855 81               [ 4] 1038 	ret
                                   1039 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function CLK_ClockSecuritySystemEnable
                                   1042 ;	-----------------------------------------
      008856                       1043 _CLK_ClockSecuritySystemEnable:
                                   1044 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      008856 72 10 50 C8      [ 1] 1045 	bset	0x50c8, #0
                                   1046 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 551: }
      00885A 81               [ 4] 1047 	ret
                                   1048 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                   1049 ;	-----------------------------------------
                                   1050 ;	 function CLK_GetSYSCLKSource
                                   1051 ;	-----------------------------------------
      00885B                       1052 _CLK_GetSYSCLKSource:
                                   1053 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      00885B C6 50 C3         [ 1] 1054 	ld	a, 0x50c3
                                   1055 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 562: }
      00885E 81               [ 4] 1056 	ret
                                   1057 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                   1058 ;	-----------------------------------------
                                   1059 ;	 function CLK_GetClockFreq
                                   1060 ;	-----------------------------------------
      00885F                       1061 _CLK_GetClockFreq:
      00885F 52 04            [ 2] 1062 	sub	sp, #4
                                   1063 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      008861 C6 50 C3         [ 1] 1064 	ld	a, 0x50c3
                                   1065 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      008864 6B 04            [ 1] 1066 	ld	(0x04, sp), a
      008866 A1 E1            [ 1] 1067 	cp	a, #0xe1
      008868 26 26            [ 1] 1068 	jrne	00105$
                                   1069 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      00886A C6 50 C6         [ 1] 1070 	ld	a, 0x50c6
      00886D A4 18            [ 1] 1071 	and	a, #0x18
                                   1072 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      00886F 44               [ 1] 1073 	srl	a
      008870 44               [ 1] 1074 	srl	a
      008871 44               [ 1] 1075 	srl	a
                                   1076 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      008872 5F               [ 1] 1077 	clrw	x
      008873 97               [ 1] 1078 	ld	xl, a
      008874 D6 80 8F         [ 1] 1079 	ld	a, (_HSIDivFactor+0, x)
                                   1080 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      008877 5F               [ 1] 1081 	clrw	x
      008878 97               [ 1] 1082 	ld	xl, a
      008879 90 5F            [ 1] 1083 	clrw	y
      00887B 89               [ 2] 1084 	pushw	x
      00887C 90 89            [ 2] 1085 	pushw	y
      00887E 4B 00            [ 1] 1086 	push	#0x00
      008880 4B 24            [ 1] 1087 	push	#0x24
      008882 4B F4            [ 1] 1088 	push	#0xf4
      008884 4B 00            [ 1] 1089 	push	#0x00
      008886 CD B8 29         [ 4] 1090 	call	__divulong
      008889 5B 08            [ 2] 1091 	addw	sp, #8
      00888B 51               [ 1] 1092 	exgw	x, y
      00888C 17 03            [ 2] 1093 	ldw	(0x03, sp), y
      00888E 20 17            [ 2] 1094 	jra	00106$
      008890                       1095 00105$:
                                   1096 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      008890 7B 04            [ 1] 1097 	ld	a, (0x04, sp)
      008892 A1 D2            [ 1] 1098 	cp	a, #0xd2
      008894 26 09            [ 1] 1099 	jrne	00102$
                                   1100 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      008896 AE F4 00         [ 2] 1101 	ldw	x, #0xf400
      008899 1F 03            [ 2] 1102 	ldw	(0x03, sp), x
      00889B 5F               [ 1] 1103 	clrw	x
      00889C 5C               [ 1] 1104 	incw	x
      00889D 20 08            [ 2] 1105 	jra	00106$
      00889F                       1106 00102$:
                                   1107 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      00889F AE 24 00         [ 2] 1108 	ldw	x, #0x2400
      0088A2 1F 03            [ 2] 1109 	ldw	(0x03, sp), x
      0088A4 AE 00 F4         [ 2] 1110 	ldw	x, #0x00f4
      0088A7                       1111 00106$:
                                   1112 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0088A7 51               [ 1] 1113 	exgw	x, y
      0088A8 1E 03            [ 2] 1114 	ldw	x, (0x03, sp)
                                   1115 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 595: }
      0088AA 5B 04            [ 2] 1116 	addw	sp, #4
      0088AC 81               [ 4] 1117 	ret
                                   1118 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                   1119 ;	-----------------------------------------
                                   1120 ;	 function CLK_AdjustHSICalibrationValue
                                   1121 ;	-----------------------------------------
      0088AD                       1122 _CLK_AdjustHSICalibrationValue:
      0088AD 88               [ 1] 1123 	push	a
                                   1124 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 607: assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
      0088AE 4D               [ 1] 1125 	tnz	a
      0088AF 27 2A            [ 1] 1126 	jreq	00104$
      0088B1 A1 01            [ 1] 1127 	cp	a, #0x01
      0088B3 27 26            [ 1] 1128 	jreq	00104$
      0088B5 A1 02            [ 1] 1129 	cp	a, #0x02
      0088B7 27 22            [ 1] 1130 	jreq	00104$
      0088B9 A1 03            [ 1] 1131 	cp	a, #0x03
      0088BB 27 1E            [ 1] 1132 	jreq	00104$
      0088BD A1 04            [ 1] 1133 	cp	a, #0x04
      0088BF 27 1A            [ 1] 1134 	jreq	00104$
      0088C1 A1 05            [ 1] 1135 	cp	a, #0x05
      0088C3 27 16            [ 1] 1136 	jreq	00104$
      0088C5 A1 06            [ 1] 1137 	cp	a, #0x06
      0088C7 27 12            [ 1] 1138 	jreq	00104$
      0088C9 A1 07            [ 1] 1139 	cp	a, #0x07
      0088CB 27 0E            [ 1] 1140 	jreq	00104$
      0088CD 88               [ 1] 1141 	push	a
      0088CE 4B 5F            [ 1] 1142 	push	#0x5f
      0088D0 4B 02            [ 1] 1143 	push	#0x02
      0088D2 5F               [ 1] 1144 	clrw	x
      0088D3 89               [ 2] 1145 	pushw	x
      0088D4 AE 80 9B         [ 2] 1146 	ldw	x, #(___str_0+0)
      0088D7 CD AE 90         [ 4] 1147 	call	_assert_failed
      0088DA 84               [ 1] 1148 	pop	a
      0088DB                       1149 00104$:
                                   1150 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      0088DB AE 50 CC         [ 2] 1151 	ldw	x, #0x50cc
      0088DE 88               [ 1] 1152 	push	a
      0088DF F6               [ 1] 1153 	ld	a, (x)
      0088E0 A4 F8            [ 1] 1154 	and	a, #0xf8
      0088E2 6B 02            [ 1] 1155 	ld	(0x02, sp), a
      0088E4 84               [ 1] 1156 	pop	a
      0088E5 1A 01            [ 1] 1157 	or	a, (0x01, sp)
      0088E7 C7 50 CC         [ 1] 1158 	ld	0x50cc, a
                                   1159 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 611: }
      0088EA 84               [ 1] 1160 	pop	a
      0088EB 81               [ 4] 1161 	ret
                                   1162 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                   1163 ;	-----------------------------------------
                                   1164 ;	 function CLK_SYSCLKEmergencyClear
                                   1165 ;	-----------------------------------------
      0088EC                       1166 _CLK_SYSCLKEmergencyClear:
                                   1167 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      0088EC 72 11 50 C5      [ 1] 1168 	bres	0x50c5, #0
                                   1169 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 625: }
      0088F0 81               [ 4] 1170 	ret
                                   1171 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                   1172 ;	-----------------------------------------
                                   1173 ;	 function CLK_GetFlagStatus
                                   1174 ;	-----------------------------------------
      0088F1                       1175 _CLK_GetFlagStatus:
                                   1176 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 641: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      0088F1 90 93            [ 1] 1177 	ldw	y, x
      0088F3 A3 01 10         [ 2] 1178 	cpw	x, #0x0110
      0088F6 27 3C            [ 1] 1179 	jreq	00119$
      0088F8 A3 01 02         [ 2] 1180 	cpw	x, #0x0102
      0088FB 27 37            [ 1] 1181 	jreq	00119$
      0088FD A3 02 02         [ 2] 1182 	cpw	x, #0x0202
      008900 27 32            [ 1] 1183 	jreq	00119$
      008902 A3 03 08         [ 2] 1184 	cpw	x, #0x0308
      008905 27 2D            [ 1] 1185 	jreq	00119$
      008907 A3 03 01         [ 2] 1186 	cpw	x, #0x0301
      00890A 27 28            [ 1] 1187 	jreq	00119$
      00890C A3 04 08         [ 2] 1188 	cpw	x, #0x0408
      00890F 27 23            [ 1] 1189 	jreq	00119$
      008911 A3 04 02         [ 2] 1190 	cpw	x, #0x0402
      008914 27 1E            [ 1] 1191 	jreq	00119$
      008916 A3 05 04         [ 2] 1192 	cpw	x, #0x0504
      008919 27 19            [ 1] 1193 	jreq	00119$
      00891B A3 05 02         [ 2] 1194 	cpw	x, #0x0502
      00891E 27 14            [ 1] 1195 	jreq	00119$
      008920 89               [ 2] 1196 	pushw	x
      008921 90 89            [ 2] 1197 	pushw	y
      008923 4B 81            [ 1] 1198 	push	#0x81
      008925 4B 02            [ 1] 1199 	push	#0x02
      008927 4B 00            [ 1] 1200 	push	#0x00
      008929 4B 00            [ 1] 1201 	push	#0x00
      00892B AE 80 9B         [ 2] 1202 	ldw	x, #(___str_0+0)
      00892E CD AE 90         [ 4] 1203 	call	_assert_failed
      008931 90 85            [ 2] 1204 	popw	y
      008933 85               [ 2] 1205 	popw	x
      008934                       1206 00119$:
                                   1207 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      008934 4F               [ 1] 1208 	clr	a
                                   1209 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      008935 97               [ 1] 1210 	ld	xl, a
      008936 A3 01 00         [ 2] 1211 	cpw	x, #0x0100
      008939 26 05            [ 1] 1212 	jrne	00111$
                                   1213 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      00893B C6 50 C0         [ 1] 1214 	ld	a, 0x50c0
      00893E 20 21            [ 2] 1215 	jra	00112$
      008940                       1216 00111$:
                                   1217 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      008940 A3 02 00         [ 2] 1218 	cpw	x, #0x0200
      008943 26 05            [ 1] 1219 	jrne	00108$
                                   1220 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      008945 C6 50 C1         [ 1] 1221 	ld	a, 0x50c1
      008948 20 17            [ 2] 1222 	jra	00112$
      00894A                       1223 00108$:
                                   1224 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      00894A A3 03 00         [ 2] 1225 	cpw	x, #0x0300
      00894D 26 05            [ 1] 1226 	jrne	00105$
                                   1227 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      00894F C6 50 C5         [ 1] 1228 	ld	a, 0x50c5
      008952 20 0D            [ 2] 1229 	jra	00112$
      008954                       1230 00105$:
                                   1231 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      008954 A3 04 00         [ 2] 1232 	cpw	x, #0x0400
      008957 26 05            [ 1] 1233 	jrne	00102$
                                   1234 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      008959 C6 50 C8         [ 1] 1235 	ld	a, 0x50c8
      00895C 20 03            [ 2] 1236 	jra	00112$
      00895E                       1237 00102$:
                                   1238 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      00895E C6 50 C9         [ 1] 1239 	ld	a, 0x50c9
      008961                       1240 00112$:
                                   1241 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      008961 93               [ 1] 1242 	ldw	x, y
      008962 89               [ 2] 1243 	pushw	x
      008963 14 02            [ 1] 1244 	and	a, (2, sp)
      008965 85               [ 2] 1245 	popw	x
      008966 4D               [ 1] 1246 	tnz	a
      008967 27 03            [ 1] 1247 	jreq	00114$
                                   1248 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 670: bitstatus = SET;
      008969 A6 01            [ 1] 1249 	ld	a, #0x01
      00896B 81               [ 4] 1250 	ret
      00896C                       1251 00114$:
                                   1252 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 674: bitstatus = RESET;
      00896C 4F               [ 1] 1253 	clr	a
                                   1254 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                                   1255 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 679: }
      00896D 81               [ 4] 1256 	ret
                                   1257 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1258 ;	-----------------------------------------
                                   1259 ;	 function CLK_GetITStatus
                                   1260 ;	-----------------------------------------
      00896E                       1261 _CLK_GetITStatus:
      00896E 88               [ 1] 1262 	push	a
                                   1263 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 692: assert_param(IS_CLK_IT_OK(CLK_IT));
      00896F 6B 01            [ 1] 1264 	ld	(0x01, sp), a
      008971 A0 1C            [ 1] 1265 	sub	a, #0x1c
      008973 26 02            [ 1] 1266 	jrne	00143$
      008975 4C               [ 1] 1267 	inc	a
      008976 21                    1268 	.byte 0x21
      008977                       1269 00143$:
      008977 4F               [ 1] 1270 	clr	a
      008978                       1271 00144$:
      008978 88               [ 1] 1272 	push	a
      008979 7B 02            [ 1] 1273 	ld	a, (0x02, sp)
      00897B A1 0C            [ 1] 1274 	cp	a, #0x0c
      00897D 84               [ 1] 1275 	pop	a
      00897E 27 11            [ 1] 1276 	jreq	00113$
      008980 4D               [ 1] 1277 	tnz	a
      008981 26 0E            [ 1] 1278 	jrne	00113$
      008983 88               [ 1] 1279 	push	a
      008984 4B B4            [ 1] 1280 	push	#0xb4
      008986 4B 02            [ 1] 1281 	push	#0x02
      008988 5F               [ 1] 1282 	clrw	x
      008989 89               [ 2] 1283 	pushw	x
      00898A AE 80 9B         [ 2] 1284 	ldw	x, #(___str_0+0)
      00898D CD AE 90         [ 4] 1285 	call	_assert_failed
      008990 84               [ 1] 1286 	pop	a
      008991                       1287 00113$:
                                   1288 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      008991 4D               [ 1] 1289 	tnz	a
      008992 27 0F            [ 1] 1290 	jreq	00108$
                                   1291 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008994 C6 50 C5         [ 1] 1292 	ld	a, 0x50c5
      008997 14 01            [ 1] 1293 	and	a, (0x01, sp)
                                   1294 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 699: bitstatus = SET;
      008999 A0 0C            [ 1] 1295 	sub	a, #0x0c
      00899B 26 03            [ 1] 1296 	jrne	00102$
      00899D 4C               [ 1] 1297 	inc	a
      00899E 20 0F            [ 2] 1298 	jra	00109$
      0089A0                       1299 00102$:
                                   1300 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 703: bitstatus = RESET;
      0089A0 4F               [ 1] 1301 	clr	a
      0089A1 20 0C            [ 2] 1302 	jra	00109$
      0089A3                       1303 00108$:
                                   1304 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      0089A3 C6 50 C8         [ 1] 1305 	ld	a, 0x50c8
      0089A6 14 01            [ 1] 1306 	and	a, (0x01, sp)
                                   1307 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 711: bitstatus = SET;
      0089A8 A0 0C            [ 1] 1308 	sub	a, #0x0c
      0089AA 26 02            [ 1] 1309 	jrne	00105$
      0089AC 4C               [ 1] 1310 	inc	a
                                   1311 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 715: bitstatus = RESET;
      0089AD 21                    1312 	.byte 0x21
      0089AE                       1313 00105$:
      0089AE 4F               [ 1] 1314 	clr	a
      0089AF                       1315 00109$:
                                   1316 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 720: return bitstatus;
                                   1317 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 721: }
      0089AF 5B 01            [ 2] 1318 	addw	sp, #1
      0089B1 81               [ 4] 1319 	ret
                                   1320 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1321 ;	-----------------------------------------
                                   1322 ;	 function CLK_ClearITPendingBit
                                   1323 ;	-----------------------------------------
      0089B2                       1324 _CLK_ClearITPendingBit:
                                   1325 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 732: assert_param(IS_CLK_IT_OK(CLK_IT));
      0089B2 97               [ 1] 1326 	ld	xl, a
      0089B3 A0 0C            [ 1] 1327 	sub	a, #0x0c
      0089B5 26 02            [ 1] 1328 	jrne	00127$
      0089B7 4C               [ 1] 1329 	inc	a
      0089B8 21                    1330 	.byte 0x21
      0089B9                       1331 00127$:
      0089B9 4F               [ 1] 1332 	clr	a
      0089BA                       1333 00128$:
      0089BA 4D               [ 1] 1334 	tnz	a
      0089BB 26 15            [ 1] 1335 	jrne	00107$
      0089BD 88               [ 1] 1336 	push	a
      0089BE 9F               [ 1] 1337 	ld	a, xl
      0089BF A1 1C            [ 1] 1338 	cp	a, #0x1c
      0089C1 84               [ 1] 1339 	pop	a
      0089C2 27 0E            [ 1] 1340 	jreq	00107$
      0089C4 88               [ 1] 1341 	push	a
      0089C5 4B DC            [ 1] 1342 	push	#0xdc
      0089C7 4B 02            [ 1] 1343 	push	#0x02
      0089C9 5F               [ 1] 1344 	clrw	x
      0089CA 89               [ 2] 1345 	pushw	x
      0089CB AE 80 9B         [ 2] 1346 	ldw	x, #(___str_0+0)
      0089CE CD AE 90         [ 4] 1347 	call	_assert_failed
      0089D1 84               [ 1] 1348 	pop	a
      0089D2                       1349 00107$:
                                   1350 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      0089D2 4D               [ 1] 1351 	tnz	a
      0089D3 27 05            [ 1] 1352 	jreq	00102$
                                   1353 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      0089D5 72 17 50 C8      [ 1] 1354 	bres	0x50c8, #3
      0089D9 81               [ 4] 1355 	ret
      0089DA                       1356 00102$:
                                   1357 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      0089DA 72 17 50 C5      [ 1] 1358 	bres	0x50c5, #3
                                   1359 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 745: }
      0089DE 81               [ 4] 1360 	ret
                                   1361 	.area CODE
                                   1362 	.area CONST
      00808F                       1363 _HSIDivFactor:
      00808F 01                    1364 	.db #0x01	; 1
      008090 02                    1365 	.db #0x02	; 2
      008091 04                    1366 	.db #0x04	; 4
      008092 08                    1367 	.db #0x08	; 8
      008093                       1368 _CLKPrescTable:
      008093 01                    1369 	.db #0x01	; 1
      008094 02                    1370 	.db #0x02	; 2
      008095 04                    1371 	.db #0x04	; 4
      008096 08                    1372 	.db #0x08	; 8
      008097 0A                    1373 	.db #0x0a	; 10
      008098 10                    1374 	.db #0x10	; 16
      008099 14                    1375 	.db #0x14	; 20
      00809A 28                    1376 	.db #0x28	; 40
                                   1377 	.area CONST
      00809B                       1378 ___str_0:
      00809B 43 3A                 1379 	.ascii "C:"
      00809D 5C                    1380 	.db 0x5c
      00809E 55 73 65 72 73        1381 	.ascii "Users"
      0080A3 5C                    1382 	.db 0x5c
      0080A4 64 75 6E 61 65 76     1383 	.ascii "dunaev"
      0080AA 5C                    1384 	.db 0x5c
      0080AB 2E 70 6C 61 74 66 6F  1385 	.ascii ".platformio"
             72 6D 69 6F
      0080B6 5C                    1386 	.db 0x5c
      0080B7 70 61 63 6B 61 67 65  1387 	.ascii "packages"
             73
      0080BF 5C                    1388 	.db 0x5c
      0080C0 66 72 61 6D 65 77 6F  1389 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      0080D3 5C                    1390 	.db 0x5c
      0080D4 4C 69 62 72 61 72 69  1391 	.ascii "Libraries"
             65 73
      0080DD 5C                    1392 	.db 0x5c
      0080DE 53 54 4D 38 53 5F 53  1393 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0080F4 5C                    1394 	.db 0x5c
      0080F5 73 72 63              1395 	.ascii "src"
      0080F8 5C                    1396 	.db 0x5c
      0080F9 73 74 6D 38 73 5F 63  1397 	.ascii "stm8s_clk.c"
             6C 6B 2E 63
      008104 00                    1398 	.db 0x00
                                   1399 	.area CODE
                                   1400 	.area INITIALIZER
                                   1401 	.area CABS (ABS)
