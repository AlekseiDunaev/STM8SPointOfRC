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
                                     74 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 72: void CLK_DeInit(void)
                                     75 ;	-----------------------------------------
                                     76 ;	 function CLK_DeInit
                                     77 ;	-----------------------------------------
      008303                         78 _CLK_DeInit:
                                     79 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      008303 35 01 50 C0      [ 1]   80 	mov	0x50c0+0, #0x01
                                     81 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      008307 35 00 50 C1      [ 1]   82 	mov	0x50c1+0, #0x00
                                     83 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      00830B 35 E1 50 C4      [ 1]   84 	mov	0x50c4+0, #0xe1
                                     85 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      00830F 35 00 50 C5      [ 1]   86 	mov	0x50c5+0, #0x00
                                     87 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      008313 35 18 50 C6      [ 1]   88 	mov	0x50c6+0, #0x18
                                     89 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      008317 35 FF 50 C7      [ 1]   90 	mov	0x50c7+0, #0xff
                                     91 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      00831B 35 FF 50 CA      [ 1]   92 	mov	0x50ca+0, #0xff
                                     93 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      00831F 35 00 50 C8      [ 1]   94 	mov	0x50c8+0, #0x00
                                     95 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008323 35 00 50 C9      [ 1]   96 	mov	0x50c9+0, #0x00
                                     97 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      008327                         98 00101$:
      008327 72 00 50 C9 FB   [ 2]   99 	btjt	0x50c9, #0, 00101$
                                    100 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00832C 35 00 50 C9      [ 1]  101 	mov	0x50c9+0, #0x00
                                    102 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      008330 35 00 50 CC      [ 1]  103 	mov	0x50cc+0, #0x00
                                    104 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      008334 35 00 50 CD      [ 1]  105 	mov	0x50cd+0, #0x00
                                    106 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 88: }
      008338 81               [ 4]  107 	ret
                                    108 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    109 ;	-----------------------------------------
                                    110 ;	 function CLK_FastHaltWakeUpCmd
                                    111 ;	-----------------------------------------
      008339                        112 _CLK_FastHaltWakeUpCmd:
      008339 88               [ 1]  113 	push	a
                                    114 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 102: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00833A 6B 01            [ 1]  115 	ld	(0x01, sp), a
      00833C 27 11            [ 1]  116 	jreq	00107$
      00833E 7B 01            [ 1]  117 	ld	a, (0x01, sp)
      008340 4A               [ 1]  118 	dec	a
      008341 27 0C            [ 1]  119 	jreq	00107$
      008343 4B 66            [ 1]  120 	push	#0x66
      008345 5F               [ 1]  121 	clrw	x
      008346 89               [ 2]  122 	pushw	x
      008347 4B 00            [ 1]  123 	push	#0x00
      008349 AE 80 9B         [ 2]  124 	ldw	x, #(___str_0+0)
      00834C CD AB 2D         [ 4]  125 	call	_assert_failed
      00834F                        126 00107$:
                                    127 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      00834F C6 50 C0         [ 1]  128 	ld	a, 0x50c0
                                    129 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 104: if (NewState != DISABLE)
      008352 0D 01            [ 1]  130 	tnz	(0x01, sp)
      008354 27 07            [ 1]  131 	jreq	00102$
                                    132 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      008356 AA 04            [ 1]  133 	or	a, #0x04
      008358 C7 50 C0         [ 1]  134 	ld	0x50c0, a
      00835B 20 05            [ 2]  135 	jra	00104$
      00835D                        136 00102$:
                                    137 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      00835D A4 FB            [ 1]  138 	and	a, #0xfb
      00835F C7 50 C0         [ 1]  139 	ld	0x50c0, a
      008362                        140 00104$:
                                    141 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 114: }
      008362 84               [ 1]  142 	pop	a
      008363 81               [ 4]  143 	ret
                                    144 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    145 ;	-----------------------------------------
                                    146 ;	 function CLK_HSECmd
                                    147 ;	-----------------------------------------
      008364                        148 _CLK_HSECmd:
      008364 88               [ 1]  149 	push	a
                                    150 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 124: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008365 6B 01            [ 1]  151 	ld	(0x01, sp), a
      008367 27 11            [ 1]  152 	jreq	00107$
      008369 7B 01            [ 1]  153 	ld	a, (0x01, sp)
      00836B 4A               [ 1]  154 	dec	a
      00836C 27 0C            [ 1]  155 	jreq	00107$
      00836E 4B 7C            [ 1]  156 	push	#0x7c
      008370 5F               [ 1]  157 	clrw	x
      008371 89               [ 2]  158 	pushw	x
      008372 4B 00            [ 1]  159 	push	#0x00
      008374 AE 80 9B         [ 2]  160 	ldw	x, #(___str_0+0)
      008377 CD AB 2D         [ 4]  161 	call	_assert_failed
      00837A                        162 00107$:
                                    163 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      00837A C6 50 C1         [ 1]  164 	ld	a, 0x50c1
                                    165 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 126: if (NewState != DISABLE)
      00837D 0D 01            [ 1]  166 	tnz	(0x01, sp)
      00837F 27 07            [ 1]  167 	jreq	00102$
                                    168 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      008381 AA 01            [ 1]  169 	or	a, #0x01
      008383 C7 50 C1         [ 1]  170 	ld	0x50c1, a
      008386 20 05            [ 2]  171 	jra	00104$
      008388                        172 00102$:
                                    173 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008388 A4 FE            [ 1]  174 	and	a, #0xfe
      00838A C7 50 C1         [ 1]  175 	ld	0x50c1, a
      00838D                        176 00104$:
                                    177 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 136: }
      00838D 84               [ 1]  178 	pop	a
      00838E 81               [ 4]  179 	ret
                                    180 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    181 ;	-----------------------------------------
                                    182 ;	 function CLK_HSICmd
                                    183 ;	-----------------------------------------
      00838F                        184 _CLK_HSICmd:
      00838F 88               [ 1]  185 	push	a
                                    186 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 146: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008390 6B 01            [ 1]  187 	ld	(0x01, sp), a
      008392 27 11            [ 1]  188 	jreq	00107$
      008394 7B 01            [ 1]  189 	ld	a, (0x01, sp)
      008396 4A               [ 1]  190 	dec	a
      008397 27 0C            [ 1]  191 	jreq	00107$
      008399 4B 92            [ 1]  192 	push	#0x92
      00839B 5F               [ 1]  193 	clrw	x
      00839C 89               [ 2]  194 	pushw	x
      00839D 4B 00            [ 1]  195 	push	#0x00
      00839F AE 80 9B         [ 2]  196 	ldw	x, #(___str_0+0)
      0083A2 CD AB 2D         [ 4]  197 	call	_assert_failed
      0083A5                        198 00107$:
                                    199 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      0083A5 C6 50 C0         [ 1]  200 	ld	a, 0x50c0
                                    201 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 148: if (NewState != DISABLE)
      0083A8 0D 01            [ 1]  202 	tnz	(0x01, sp)
      0083AA 27 07            [ 1]  203 	jreq	00102$
                                    204 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      0083AC AA 01            [ 1]  205 	or	a, #0x01
      0083AE C7 50 C0         [ 1]  206 	ld	0x50c0, a
      0083B1 20 05            [ 2]  207 	jra	00104$
      0083B3                        208 00102$:
                                    209 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0083B3 A4 FE            [ 1]  210 	and	a, #0xfe
      0083B5 C7 50 C0         [ 1]  211 	ld	0x50c0, a
      0083B8                        212 00104$:
                                    213 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 158: }
      0083B8 84               [ 1]  214 	pop	a
      0083B9 81               [ 4]  215 	ret
                                    216 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    217 ;	-----------------------------------------
                                    218 ;	 function CLK_LSICmd
                                    219 ;	-----------------------------------------
      0083BA                        220 _CLK_LSICmd:
      0083BA 88               [ 1]  221 	push	a
                                    222 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 169: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0083BB 6B 01            [ 1]  223 	ld	(0x01, sp), a
      0083BD 27 11            [ 1]  224 	jreq	00107$
      0083BF 7B 01            [ 1]  225 	ld	a, (0x01, sp)
      0083C1 4A               [ 1]  226 	dec	a
      0083C2 27 0C            [ 1]  227 	jreq	00107$
      0083C4 4B A9            [ 1]  228 	push	#0xa9
      0083C6 5F               [ 1]  229 	clrw	x
      0083C7 89               [ 2]  230 	pushw	x
      0083C8 4B 00            [ 1]  231 	push	#0x00
      0083CA AE 80 9B         [ 2]  232 	ldw	x, #(___str_0+0)
      0083CD CD AB 2D         [ 4]  233 	call	_assert_failed
      0083D0                        234 00107$:
                                    235 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      0083D0 C6 50 C0         [ 1]  236 	ld	a, 0x50c0
                                    237 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 171: if (NewState != DISABLE)
      0083D3 0D 01            [ 1]  238 	tnz	(0x01, sp)
      0083D5 27 07            [ 1]  239 	jreq	00102$
                                    240 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      0083D7 AA 08            [ 1]  241 	or	a, #0x08
      0083D9 C7 50 C0         [ 1]  242 	ld	0x50c0, a
      0083DC 20 05            [ 2]  243 	jra	00104$
      0083DE                        244 00102$:
                                    245 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0083DE A4 F7            [ 1]  246 	and	a, #0xf7
      0083E0 C7 50 C0         [ 1]  247 	ld	0x50c0, a
      0083E3                        248 00104$:
                                    249 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 181: }
      0083E3 84               [ 1]  250 	pop	a
      0083E4 81               [ 4]  251 	ret
                                    252 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    253 ;	-----------------------------------------
                                    254 ;	 function CLK_CCOCmd
                                    255 ;	-----------------------------------------
      0083E5                        256 _CLK_CCOCmd:
      0083E5 88               [ 1]  257 	push	a
                                    258 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 192: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0083E6 6B 01            [ 1]  259 	ld	(0x01, sp), a
      0083E8 27 11            [ 1]  260 	jreq	00107$
      0083EA 7B 01            [ 1]  261 	ld	a, (0x01, sp)
      0083EC 4A               [ 1]  262 	dec	a
      0083ED 27 0C            [ 1]  263 	jreq	00107$
      0083EF 4B C0            [ 1]  264 	push	#0xc0
      0083F1 5F               [ 1]  265 	clrw	x
      0083F2 89               [ 2]  266 	pushw	x
      0083F3 4B 00            [ 1]  267 	push	#0x00
      0083F5 AE 80 9B         [ 2]  268 	ldw	x, #(___str_0+0)
      0083F8 CD AB 2D         [ 4]  269 	call	_assert_failed
      0083FB                        270 00107$:
                                    271 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      0083FB C6 50 C9         [ 1]  272 	ld	a, 0x50c9
                                    273 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 194: if (NewState != DISABLE)
      0083FE 0D 01            [ 1]  274 	tnz	(0x01, sp)
      008400 27 07            [ 1]  275 	jreq	00102$
                                    276 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      008402 AA 01            [ 1]  277 	or	a, #0x01
      008404 C7 50 C9         [ 1]  278 	ld	0x50c9, a
      008407 20 05            [ 2]  279 	jra	00104$
      008409                        280 00102$:
                                    281 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      008409 A4 FE            [ 1]  282 	and	a, #0xfe
      00840B C7 50 C9         [ 1]  283 	ld	0x50c9, a
      00840E                        284 00104$:
                                    285 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 204: }
      00840E 84               [ 1]  286 	pop	a
      00840F 81               [ 4]  287 	ret
                                    288 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    289 ;	-----------------------------------------
                                    290 ;	 function CLK_ClockSwitchCmd
                                    291 ;	-----------------------------------------
      008410                        292 _CLK_ClockSwitchCmd:
      008410 88               [ 1]  293 	push	a
                                    294 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008411 6B 01            [ 1]  295 	ld	(0x01, sp), a
      008413 27 11            [ 1]  296 	jreq	00107$
      008415 7B 01            [ 1]  297 	ld	a, (0x01, sp)
      008417 4A               [ 1]  298 	dec	a
      008418 27 0C            [ 1]  299 	jreq	00107$
      00841A 4B D8            [ 1]  300 	push	#0xd8
      00841C 5F               [ 1]  301 	clrw	x
      00841D 89               [ 2]  302 	pushw	x
      00841E 4B 00            [ 1]  303 	push	#0x00
      008420 AE 80 9B         [ 2]  304 	ldw	x, #(___str_0+0)
      008423 CD AB 2D         [ 4]  305 	call	_assert_failed
      008426                        306 00107$:
                                    307 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      008426 C6 50 C5         [ 1]  308 	ld	a, 0x50c5
                                    309 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 218: if (NewState != DISABLE )
      008429 0D 01            [ 1]  310 	tnz	(0x01, sp)
      00842B 27 07            [ 1]  311 	jreq	00102$
                                    312 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      00842D AA 02            [ 1]  313 	or	a, #0x02
      00842F C7 50 C5         [ 1]  314 	ld	0x50c5, a
      008432 20 05            [ 2]  315 	jra	00104$
      008434                        316 00102$:
                                    317 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      008434 A4 FD            [ 1]  318 	and	a, #0xfd
      008436 C7 50 C5         [ 1]  319 	ld	0x50c5, a
      008439                        320 00104$:
                                    321 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 228: }
      008439 84               [ 1]  322 	pop	a
      00843A 81               [ 4]  323 	ret
                                    324 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    325 ;	-----------------------------------------
                                    326 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    327 ;	-----------------------------------------
      00843B                        328 _CLK_SlowActiveHaltWakeUpCmd:
      00843B 88               [ 1]  329 	push	a
                                    330 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 241: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00843C 6B 01            [ 1]  331 	ld	(0x01, sp), a
      00843E 27 11            [ 1]  332 	jreq	00107$
      008440 7B 01            [ 1]  333 	ld	a, (0x01, sp)
      008442 4A               [ 1]  334 	dec	a
      008443 27 0C            [ 1]  335 	jreq	00107$
      008445 4B F1            [ 1]  336 	push	#0xf1
      008447 5F               [ 1]  337 	clrw	x
      008448 89               [ 2]  338 	pushw	x
      008449 4B 00            [ 1]  339 	push	#0x00
      00844B AE 80 9B         [ 2]  340 	ldw	x, #(___str_0+0)
      00844E CD AB 2D         [ 4]  341 	call	_assert_failed
      008451                        342 00107$:
                                    343 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      008451 C6 50 C0         [ 1]  344 	ld	a, 0x50c0
                                    345 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 243: if (NewState != DISABLE)
      008454 0D 01            [ 1]  346 	tnz	(0x01, sp)
      008456 27 07            [ 1]  347 	jreq	00102$
                                    348 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      008458 AA 20            [ 1]  349 	or	a, #0x20
      00845A C7 50 C0         [ 1]  350 	ld	0x50c0, a
      00845D 20 05            [ 2]  351 	jra	00104$
      00845F                        352 00102$:
                                    353 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      00845F A4 DF            [ 1]  354 	and	a, #0xdf
      008461 C7 50 C0         [ 1]  355 	ld	0x50c0, a
      008464                        356 00104$:
                                    357 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 253: }
      008464 84               [ 1]  358 	pop	a
      008465 81               [ 4]  359 	ret
                                    360 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    361 ;	-----------------------------------------
                                    362 ;	 function CLK_PeripheralClockConfig
                                    363 ;	-----------------------------------------
      008466                        364 _CLK_PeripheralClockConfig:
      008466 52 03            [ 2]  365 	sub	sp, #3
      008468 6B 03            [ 1]  366 	ld	(0x03, sp), a
                                    367 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 266: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00846A 0D 06            [ 1]  368 	tnz	(0x06, sp)
      00846C 27 11            [ 1]  369 	jreq	00113$
      00846E 7B 06            [ 1]  370 	ld	a, (0x06, sp)
      008470 4A               [ 1]  371 	dec	a
      008471 27 0C            [ 1]  372 	jreq	00113$
      008473 4B 0A            [ 1]  373 	push	#0x0a
      008475 4B 01            [ 1]  374 	push	#0x01
      008477 5F               [ 1]  375 	clrw	x
      008478 89               [ 2]  376 	pushw	x
      008479 AE 80 9B         [ 2]  377 	ldw	x, #(___str_0+0)
      00847C CD AB 2D         [ 4]  378 	call	_assert_failed
      00847F                        379 00113$:
                                    380 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 267: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      00847F 0D 03            [ 1]  381 	tnz	(0x03, sp)
      008481 27 64            [ 1]  382 	jreq	00118$
      008483 7B 03            [ 1]  383 	ld	a, (0x03, sp)
      008485 4A               [ 1]  384 	dec	a
      008486 27 5F            [ 1]  385 	jreq	00118$
      008488 7B 03            [ 1]  386 	ld	a, (0x03, sp)
      00848A A0 03            [ 1]  387 	sub	a, #0x03
      00848C 26 02            [ 1]  388 	jrne	00262$
      00848E 4C               [ 1]  389 	inc	a
      00848F 21                     390 	.byte 0x21
      008490                        391 00262$:
      008490 4F               [ 1]  392 	clr	a
      008491                        393 00263$:
      008491 4D               [ 1]  394 	tnz	a
      008492 26 53            [ 1]  395 	jrne	00118$
      008494 4D               [ 1]  396 	tnz	a
      008495 26 50            [ 1]  397 	jrne	00118$
      008497 4D               [ 1]  398 	tnz	a
      008498 26 4D            [ 1]  399 	jrne	00118$
      00849A 7B 03            [ 1]  400 	ld	a, (0x03, sp)
      00849C A0 04            [ 1]  401 	sub	a, #0x04
      00849E 26 04            [ 1]  402 	jrne	00268$
      0084A0 4C               [ 1]  403 	inc	a
      0084A1 97               [ 1]  404 	ld	xl, a
      0084A2 20 02            [ 2]  405 	jra	00269$
      0084A4                        406 00268$:
      0084A4 4F               [ 1]  407 	clr	a
      0084A5 97               [ 1]  408 	ld	xl, a
      0084A6                        409 00269$:
      0084A6 9F               [ 1]  410 	ld	a, xl
      0084A7 4D               [ 1]  411 	tnz	a
      0084A8 26 3D            [ 1]  412 	jrne	00118$
      0084AA 7B 03            [ 1]  413 	ld	a, (0x03, sp)
      0084AC A0 05            [ 1]  414 	sub	a, #0x05
      0084AE 26 02            [ 1]  415 	jrne	00272$
      0084B0 4C               [ 1]  416 	inc	a
      0084B1 21                     417 	.byte 0x21
      0084B2                        418 00272$:
      0084B2 4F               [ 1]  419 	clr	a
      0084B3                        420 00273$:
      0084B3 4D               [ 1]  421 	tnz	a
      0084B4 26 31            [ 1]  422 	jrne	00118$
      0084B6 4D               [ 1]  423 	tnz	a
      0084B7 26 2E            [ 1]  424 	jrne	00118$
      0084B9 9F               [ 1]  425 	ld	a, xl
      0084BA 4D               [ 1]  426 	tnz	a
      0084BB 26 2A            [ 1]  427 	jrne	00118$
      0084BD 7B 03            [ 1]  428 	ld	a, (0x03, sp)
      0084BF A1 06            [ 1]  429 	cp	a, #0x06
      0084C1 27 24            [ 1]  430 	jreq	00118$
      0084C3 7B 03            [ 1]  431 	ld	a, (0x03, sp)
      0084C5 A1 07            [ 1]  432 	cp	a, #0x07
      0084C7 27 1E            [ 1]  433 	jreq	00118$
      0084C9 7B 03            [ 1]  434 	ld	a, (0x03, sp)
      0084CB A1 17            [ 1]  435 	cp	a, #0x17
      0084CD 27 18            [ 1]  436 	jreq	00118$
      0084CF 7B 03            [ 1]  437 	ld	a, (0x03, sp)
      0084D1 A1 13            [ 1]  438 	cp	a, #0x13
      0084D3 27 12            [ 1]  439 	jreq	00118$
      0084D5 7B 03            [ 1]  440 	ld	a, (0x03, sp)
      0084D7 A1 12            [ 1]  441 	cp	a, #0x12
      0084D9 27 0C            [ 1]  442 	jreq	00118$
      0084DB 4B 0B            [ 1]  443 	push	#0x0b
      0084DD 4B 01            [ 1]  444 	push	#0x01
      0084DF 5F               [ 1]  445 	clrw	x
      0084E0 89               [ 2]  446 	pushw	x
      0084E1 AE 80 9B         [ 2]  447 	ldw	x, #(___str_0+0)
      0084E4 CD AB 2D         [ 4]  448 	call	_assert_failed
      0084E7                        449 00118$:
                                    450 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0084E7 7B 03            [ 1]  451 	ld	a, (0x03, sp)
      0084E9 A4 0F            [ 1]  452 	and	a, #0x0f
      0084EB 88               [ 1]  453 	push	a
      0084EC A6 01            [ 1]  454 	ld	a, #0x01
      0084EE 6B 02            [ 1]  455 	ld	(0x02, sp), a
      0084F0 84               [ 1]  456 	pop	a
      0084F1 4D               [ 1]  457 	tnz	a
      0084F2 27 05            [ 1]  458 	jreq	00293$
      0084F4                        459 00292$:
      0084F4 08 01            [ 1]  460 	sll	(0x01, sp)
      0084F6 4A               [ 1]  461 	dec	a
      0084F7 26 FB            [ 1]  462 	jrne	00292$
      0084F9                        463 00293$:
                                    464 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0084F9 7B 01            [ 1]  465 	ld	a, (0x01, sp)
      0084FB 43               [ 1]  466 	cpl	a
      0084FC 6B 02            [ 1]  467 	ld	(0x02, sp), a
                                    468 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      0084FE 7B 03            [ 1]  469 	ld	a, (0x03, sp)
      008500 A5 10            [ 1]  470 	bcp	a, #0x10
      008502 26 15            [ 1]  471 	jrne	00108$
                                    472 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008504 C6 50 C7         [ 1]  473 	ld	a, 0x50c7
                                    474 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 271: if (NewState != DISABLE)
      008507 0D 06            [ 1]  475 	tnz	(0x06, sp)
      008509 27 07            [ 1]  476 	jreq	00102$
                                    477 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00850B 1A 01            [ 1]  478 	or	a, (0x01, sp)
      00850D C7 50 C7         [ 1]  479 	ld	0x50c7, a
      008510 20 1A            [ 2]  480 	jra	00110$
      008512                        481 00102$:
                                    482 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008512 14 02            [ 1]  483 	and	a, (0x02, sp)
      008514 C7 50 C7         [ 1]  484 	ld	0x50c7, a
      008517 20 13            [ 2]  485 	jra	00110$
      008519                        486 00108$:
                                    487 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008519 C6 50 CA         [ 1]  488 	ld	a, 0x50ca
                                    489 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 284: if (NewState != DISABLE)
      00851C 0D 06            [ 1]  490 	tnz	(0x06, sp)
      00851E 27 07            [ 1]  491 	jreq	00105$
                                    492 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008520 1A 01            [ 1]  493 	or	a, (0x01, sp)
      008522 C7 50 CA         [ 1]  494 	ld	0x50ca, a
      008525 20 05            [ 2]  495 	jra	00110$
      008527                        496 00105$:
                                    497 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008527 14 02            [ 1]  498 	and	a, (0x02, sp)
      008529 C7 50 CA         [ 1]  499 	ld	0x50ca, a
      00852C                        500 00110$:
                                    501 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 295: }
      00852C 5B 03            [ 2]  502 	addw	sp, #3
      00852E 85               [ 2]  503 	popw	x
      00852F 84               [ 1]  504 	pop	a
      008530 FC               [ 2]  505 	jp	(x)
                                    506 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    507 ;	-----------------------------------------
                                    508 ;	 function CLK_ClockSwitchConfig
                                    509 ;	-----------------------------------------
      008531                        510 _CLK_ClockSwitchConfig:
      008531 89               [ 2]  511 	pushw	x
      008532 6B 02            [ 1]  512 	ld	(0x02, sp), a
                                    513 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 316: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      008534 7B 05            [ 1]  514 	ld	a, (0x05, sp)
      008536 A1 E1            [ 1]  515 	cp	a, #0xe1
      008538 27 18            [ 1]  516 	jreq	00140$
      00853A 7B 05            [ 1]  517 	ld	a, (0x05, sp)
      00853C A1 D2            [ 1]  518 	cp	a, #0xd2
      00853E 27 12            [ 1]  519 	jreq	00140$
      008540 7B 05            [ 1]  520 	ld	a, (0x05, sp)
      008542 A1 B4            [ 1]  521 	cp	a, #0xb4
      008544 27 0C            [ 1]  522 	jreq	00140$
      008546 4B 3C            [ 1]  523 	push	#0x3c
      008548 4B 01            [ 1]  524 	push	#0x01
      00854A 5F               [ 1]  525 	clrw	x
      00854B 89               [ 2]  526 	pushw	x
      00854C AE 80 9B         [ 2]  527 	ldw	x, #(___str_0+0)
      00854F CD AB 2D         [ 4]  528 	call	_assert_failed
      008552                        529 00140$:
                                    530 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 317: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      008552 7B 02            [ 1]  531 	ld	a, (0x02, sp)
      008554 4A               [ 1]  532 	dec	a
      008555 26 05            [ 1]  533 	jrne	00309$
      008557 A6 01            [ 1]  534 	ld	a, #0x01
      008559 6B 01            [ 1]  535 	ld	(0x01, sp), a
      00855B C5                     536 	.byte 0xc5
      00855C                        537 00309$:
      00855C 0F 01            [ 1]  538 	clr	(0x01, sp)
      00855E                        539 00310$:
      00855E 0D 02            [ 1]  540 	tnz	(0x02, sp)
      008560 27 10            [ 1]  541 	jreq	00148$
      008562 0D 01            [ 1]  542 	tnz	(0x01, sp)
      008564 26 0C            [ 1]  543 	jrne	00148$
      008566 4B 3D            [ 1]  544 	push	#0x3d
      008568 4B 01            [ 1]  545 	push	#0x01
      00856A 5F               [ 1]  546 	clrw	x
      00856B 89               [ 2]  547 	pushw	x
      00856C AE 80 9B         [ 2]  548 	ldw	x, #(___str_0+0)
      00856F CD AB 2D         [ 4]  549 	call	_assert_failed
      008572                        550 00148$:
                                    551 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 318: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      008572 0D 06            [ 1]  552 	tnz	(0x06, sp)
      008574 27 11            [ 1]  553 	jreq	00153$
      008576 7B 06            [ 1]  554 	ld	a, (0x06, sp)
      008578 4A               [ 1]  555 	dec	a
      008579 27 0C            [ 1]  556 	jreq	00153$
      00857B 4B 3E            [ 1]  557 	push	#0x3e
      00857D 4B 01            [ 1]  558 	push	#0x01
      00857F 5F               [ 1]  559 	clrw	x
      008580 89               [ 2]  560 	pushw	x
      008581 AE 80 9B         [ 2]  561 	ldw	x, #(___str_0+0)
      008584 CD AB 2D         [ 4]  562 	call	_assert_failed
      008587                        563 00153$:
                                    564 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 319: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      008587 0D 07            [ 1]  565 	tnz	(0x07, sp)
      008589 27 11            [ 1]  566 	jreq	00158$
      00858B 7B 07            [ 1]  567 	ld	a, (0x07, sp)
      00858D 4A               [ 1]  568 	dec	a
      00858E 27 0C            [ 1]  569 	jreq	00158$
      008590 4B 3F            [ 1]  570 	push	#0x3f
      008592 4B 01            [ 1]  571 	push	#0x01
      008594 5F               [ 1]  572 	clrw	x
      008595 89               [ 2]  573 	pushw	x
      008596 AE 80 9B         [ 2]  574 	ldw	x, #(___str_0+0)
      008599 CD AB 2D         [ 4]  575 	call	_assert_failed
      00859C                        576 00158$:
                                    577 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      00859C C6 50 C3         [ 1]  578 	ld	a, 0x50c3
      00859F 90 97            [ 1]  579 	ld	yl, a
                                    580 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0085A1 C6 50 C5         [ 1]  581 	ld	a, 0x50c5
      0085A4 97               [ 1]  582 	ld	xl, a
                                    583 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      0085A5 7B 01            [ 1]  584 	ld	a, (0x01, sp)
      0085A7 27 37            [ 1]  585 	jreq	00122$
                                    586 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0085A9 9F               [ 1]  587 	ld	a, xl
      0085AA AA 02            [ 1]  588 	or	a, #0x02
      0085AC C7 50 C5         [ 1]  589 	ld	0x50c5, a
      0085AF C6 50 C5         [ 1]  590 	ld	a, 0x50c5
                                    591 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 331: if (ITState != DISABLE)
      0085B2 0D 06            [ 1]  592 	tnz	(0x06, sp)
      0085B4 27 07            [ 1]  593 	jreq	00102$
                                    594 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      0085B6 AA 04            [ 1]  595 	or	a, #0x04
      0085B8 C7 50 C5         [ 1]  596 	ld	0x50c5, a
      0085BB 20 05            [ 2]  597 	jra	00103$
      0085BD                        598 00102$:
                                    599 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0085BD A4 FB            [ 1]  600 	and	a, #0xfb
      0085BF C7 50 C5         [ 1]  601 	ld	0x50c5, a
      0085C2                        602 00103$:
                                    603 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      0085C2 AE 50 C4         [ 2]  604 	ldw	x, #0x50c4
      0085C5 7B 05            [ 1]  605 	ld	a, (0x05, sp)
      0085C7 F7               [ 1]  606 	ld	(x), a
                                    607 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      0085C8 5F               [ 1]  608 	clrw	x
      0085C9 5A               [ 2]  609 	decw	x
      0085CA                        610 00105$:
      0085CA 72 01 50 C5 06   [ 2]  611 	btjf	0x50c5, #0, 00107$
      0085CF 5D               [ 2]  612 	tnzw	x
      0085D0 27 03            [ 1]  613 	jreq	00107$
                                    614 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 346: DownCounter--;
      0085D2 5A               [ 2]  615 	decw	x
      0085D3 20 F5            [ 2]  616 	jra	00105$
      0085D5                        617 00107$:
                                    618 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 349: if(DownCounter != 0)
      0085D5 5D               [ 2]  619 	tnzw	x
      0085D6 27 05            [ 1]  620 	jreq	00109$
                                    621 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 351: Swif = SUCCESS;
      0085D8 A6 01            [ 1]  622 	ld	a, #0x01
      0085DA 97               [ 1]  623 	ld	xl, a
      0085DB 20 34            [ 2]  624 	jra	00123$
      0085DD                        625 00109$:
                                    626 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 355: Swif = ERROR;
      0085DD 5F               [ 1]  627 	clrw	x
      0085DE 20 31            [ 2]  628 	jra	00123$
      0085E0                        629 00122$:
                                    630 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 361: if (ITState != DISABLE)
      0085E0 0D 06            [ 1]  631 	tnz	(0x06, sp)
      0085E2 27 08            [ 1]  632 	jreq	00112$
                                    633 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      0085E4 9F               [ 1]  634 	ld	a, xl
      0085E5 AA 04            [ 1]  635 	or	a, #0x04
      0085E7 C7 50 C5         [ 1]  636 	ld	0x50c5, a
      0085EA 20 06            [ 2]  637 	jra	00113$
      0085EC                        638 00112$:
                                    639 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0085EC 9F               [ 1]  640 	ld	a, xl
      0085ED A4 FB            [ 1]  641 	and	a, #0xfb
      0085EF C7 50 C5         [ 1]  642 	ld	0x50c5, a
      0085F2                        643 00113$:
                                    644 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      0085F2 AE 50 C4         [ 2]  645 	ldw	x, #0x50c4
      0085F5 7B 05            [ 1]  646 	ld	a, (0x05, sp)
      0085F7 F7               [ 1]  647 	ld	(x), a
                                    648 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      0085F8 5F               [ 1]  649 	clrw	x
      0085F9 5A               [ 2]  650 	decw	x
      0085FA                        651 00115$:
      0085FA 72 07 50 C5 06   [ 2]  652 	btjf	0x50c5, #3, 00117$
      0085FF 5D               [ 2]  653 	tnzw	x
      008600 27 03            [ 1]  654 	jreq	00117$
                                    655 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 376: DownCounter--;
      008602 5A               [ 2]  656 	decw	x
      008603 20 F5            [ 2]  657 	jra	00115$
      008605                        658 00117$:
                                    659 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 379: if(DownCounter != 0)
      008605 5D               [ 2]  660 	tnzw	x
      008606 27 08            [ 1]  661 	jreq	00119$
                                    662 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      008608 72 12 50 C5      [ 1]  663 	bset	0x50c5, #1
                                    664 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 383: Swif = SUCCESS;
      00860C A6 01            [ 1]  665 	ld	a, #0x01
      00860E 97               [ 1]  666 	ld	xl, a
                                    667 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 387: Swif = ERROR;
      00860F 21                     668 	.byte 0x21
      008610                        669 00119$:
      008610 5F               [ 1]  670 	clrw	x
      008611                        671 00123$:
                                    672 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 390: if(Swif != ERROR)
      008611 9F               [ 1]  673 	ld	a, xl
      008612 4D               [ 1]  674 	tnz	a
      008613 27 2E            [ 1]  675 	jreq	00136$
                                    676 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      008615 0D 07            [ 1]  677 	tnz	(0x07, sp)
      008617 26 0C            [ 1]  678 	jrne	00132$
      008619 90 9F            [ 1]  679 	ld	a, yl
      00861B A1 E1            [ 1]  680 	cp	a, #0xe1
      00861D 26 06            [ 1]  681 	jrne	00132$
                                    682 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00861F 72 11 50 C0      [ 1]  683 	bres	0x50c0, #0
      008623 20 1E            [ 2]  684 	jra	00136$
      008625                        685 00132$:
                                    686 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      008625 0D 07            [ 1]  687 	tnz	(0x07, sp)
      008627 26 0C            [ 1]  688 	jrne	00128$
      008629 90 9F            [ 1]  689 	ld	a, yl
      00862B A1 D2            [ 1]  690 	cp	a, #0xd2
      00862D 26 06            [ 1]  691 	jrne	00128$
                                    692 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      00862F 72 17 50 C0      [ 1]  693 	bres	0x50c0, #3
      008633 20 0E            [ 2]  694 	jra	00136$
      008635                        695 00128$:
                                    696 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      008635 0D 07            [ 1]  697 	tnz	(0x07, sp)
      008637 26 0A            [ 1]  698 	jrne	00136$
      008639 90 9F            [ 1]  699 	ld	a, yl
      00863B A1 B4            [ 1]  700 	cp	a, #0xb4
      00863D 26 04            [ 1]  701 	jrne	00136$
                                    702 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00863F 72 11 50 C1      [ 1]  703 	bres	0x50c1, #0
      008643                        704 00136$:
                                    705 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 406: return(Swif);
      008643 9F               [ 1]  706 	ld	a, xl
                                    707 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 407: }
      008644 1E 03            [ 2]  708 	ldw	x, (3, sp)
      008646 5B 07            [ 2]  709 	addw	sp, #7
      008648 FC               [ 2]  710 	jp	(x)
                                    711 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    712 ;	-----------------------------------------
                                    713 ;	 function CLK_HSIPrescalerConfig
                                    714 ;	-----------------------------------------
      008649                        715 _CLK_HSIPrescalerConfig:
      008649 88               [ 1]  716 	push	a
                                    717 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 418: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      00864A 6B 01            [ 1]  718 	ld	(0x01, sp), a
      00864C 27 1E            [ 1]  719 	jreq	00104$
      00864E 7B 01            [ 1]  720 	ld	a, (0x01, sp)
      008650 A1 08            [ 1]  721 	cp	a, #0x08
      008652 27 18            [ 1]  722 	jreq	00104$
      008654 7B 01            [ 1]  723 	ld	a, (0x01, sp)
      008656 A1 10            [ 1]  724 	cp	a, #0x10
      008658 27 12            [ 1]  725 	jreq	00104$
      00865A 7B 01            [ 1]  726 	ld	a, (0x01, sp)
      00865C A1 18            [ 1]  727 	cp	a, #0x18
      00865E 27 0C            [ 1]  728 	jreq	00104$
      008660 4B A2            [ 1]  729 	push	#0xa2
      008662 4B 01            [ 1]  730 	push	#0x01
      008664 5F               [ 1]  731 	clrw	x
      008665 89               [ 2]  732 	pushw	x
      008666 AE 80 9B         [ 2]  733 	ldw	x, #(___str_0+0)
      008669 CD AB 2D         [ 4]  734 	call	_assert_failed
      00866C                        735 00104$:
                                    736 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00866C C6 50 C6         [ 1]  737 	ld	a, 0x50c6
      00866F A4 E7            [ 1]  738 	and	a, #0xe7
      008671 C7 50 C6         [ 1]  739 	ld	0x50c6, a
                                    740 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      008674 C6 50 C6         [ 1]  741 	ld	a, 0x50c6
      008677 1A 01            [ 1]  742 	or	a, (0x01, sp)
      008679 C7 50 C6         [ 1]  743 	ld	0x50c6, a
                                    744 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 425: }
      00867C 84               [ 1]  745 	pop	a
      00867D 81               [ 4]  746 	ret
                                    747 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    748 ;	-----------------------------------------
                                    749 ;	 function CLK_CCOConfig
                                    750 ;	-----------------------------------------
      00867E                        751 _CLK_CCOConfig:
      00867E 88               [ 1]  752 	push	a
                                    753 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 439: assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
      00867F 4D               [ 1]  754 	tnz	a
      008680 27 3E            [ 1]  755 	jreq	00104$
      008682 A1 04            [ 1]  756 	cp	a, #0x04
      008684 27 3A            [ 1]  757 	jreq	00104$
      008686 A1 02            [ 1]  758 	cp	a, #0x02
      008688 27 36            [ 1]  759 	jreq	00104$
      00868A A1 08            [ 1]  760 	cp	a, #0x08
      00868C 27 32            [ 1]  761 	jreq	00104$
      00868E A1 0A            [ 1]  762 	cp	a, #0x0a
      008690 27 2E            [ 1]  763 	jreq	00104$
      008692 A1 0C            [ 1]  764 	cp	a, #0x0c
      008694 27 2A            [ 1]  765 	jreq	00104$
      008696 A1 0E            [ 1]  766 	cp	a, #0x0e
      008698 27 26            [ 1]  767 	jreq	00104$
      00869A A1 10            [ 1]  768 	cp	a, #0x10
      00869C 27 22            [ 1]  769 	jreq	00104$
      00869E A1 12            [ 1]  770 	cp	a, #0x12
      0086A0 27 1E            [ 1]  771 	jreq	00104$
      0086A2 A1 14            [ 1]  772 	cp	a, #0x14
      0086A4 27 1A            [ 1]  773 	jreq	00104$
      0086A6 A1 16            [ 1]  774 	cp	a, #0x16
      0086A8 27 16            [ 1]  775 	jreq	00104$
      0086AA A1 18            [ 1]  776 	cp	a, #0x18
      0086AC 27 12            [ 1]  777 	jreq	00104$
      0086AE A1 1A            [ 1]  778 	cp	a, #0x1a
      0086B0 27 0E            [ 1]  779 	jreq	00104$
      0086B2 88               [ 1]  780 	push	a
      0086B3 4B B7            [ 1]  781 	push	#0xb7
      0086B5 4B 01            [ 1]  782 	push	#0x01
      0086B7 5F               [ 1]  783 	clrw	x
      0086B8 89               [ 2]  784 	pushw	x
      0086B9 AE 80 9B         [ 2]  785 	ldw	x, #(___str_0+0)
      0086BC CD AB 2D         [ 4]  786 	call	_assert_failed
      0086BF 84               [ 1]  787 	pop	a
      0086C0                        788 00104$:
                                    789 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      0086C0 AE 50 C9         [ 2]  790 	ldw	x, #0x50c9
      0086C3 88               [ 1]  791 	push	a
      0086C4 F6               [ 1]  792 	ld	a, (x)
      0086C5 A4 E1            [ 1]  793 	and	a, #0xe1
      0086C7 6B 02            [ 1]  794 	ld	(0x02, sp), a
      0086C9 84               [ 1]  795 	pop	a
      0086CA AE 50 C9         [ 2]  796 	ldw	x, #0x50c9
      0086CD 88               [ 1]  797 	push	a
      0086CE 7B 02            [ 1]  798 	ld	a, (0x02, sp)
      0086D0 F7               [ 1]  799 	ld	(x), a
      0086D1 84               [ 1]  800 	pop	a
                                    801 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      0086D2 AE 50 C9         [ 2]  802 	ldw	x, #0x50c9
      0086D5 88               [ 1]  803 	push	a
      0086D6 F6               [ 1]  804 	ld	a, (x)
      0086D7 6B 02            [ 1]  805 	ld	(0x02, sp), a
      0086D9 84               [ 1]  806 	pop	a
      0086DA 1A 01            [ 1]  807 	or	a, (0x01, sp)
      0086DC C7 50 C9         [ 1]  808 	ld	0x50c9, a
                                    809 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      0086DF 72 10 50 C9      [ 1]  810 	bset	0x50c9, #0
                                    811 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 449: }
      0086E3 84               [ 1]  812 	pop	a
      0086E4 81               [ 4]  813 	ret
                                    814 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    815 ;	-----------------------------------------
                                    816 ;	 function CLK_ITConfig
                                    817 ;	-----------------------------------------
      0086E5                        818 _CLK_ITConfig:
      0086E5 89               [ 2]  819 	pushw	x
      0086E6 6B 02            [ 1]  820 	ld	(0x02, sp), a
                                    821 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 462: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0086E8 0D 05            [ 1]  822 	tnz	(0x05, sp)
      0086EA 27 11            [ 1]  823 	jreq	00115$
      0086EC 7B 05            [ 1]  824 	ld	a, (0x05, sp)
      0086EE 4A               [ 1]  825 	dec	a
      0086EF 27 0C            [ 1]  826 	jreq	00115$
      0086F1 4B CE            [ 1]  827 	push	#0xce
      0086F3 4B 01            [ 1]  828 	push	#0x01
      0086F5 5F               [ 1]  829 	clrw	x
      0086F6 89               [ 2]  830 	pushw	x
      0086F7 AE 80 9B         [ 2]  831 	ldw	x, #(___str_0+0)
      0086FA CD AB 2D         [ 4]  832 	call	_assert_failed
      0086FD                        833 00115$:
                                    834 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 463: assert_param(IS_CLK_IT_OK(CLK_IT));
      0086FD 7B 02            [ 1]  835 	ld	a, (0x02, sp)
      0086FF A0 0C            [ 1]  836 	sub	a, #0x0c
      008701 26 02            [ 1]  837 	jrne	00174$
      008703 4C               [ 1]  838 	inc	a
      008704 21                     839 	.byte 0x21
      008705                        840 00174$:
      008705 4F               [ 1]  841 	clr	a
      008706                        842 00175$:
      008706 88               [ 1]  843 	push	a
      008707 7B 03            [ 1]  844 	ld	a, (0x03, sp)
      008709 A1 1C            [ 1]  845 	cp	a, #0x1c
      00870B 84               [ 1]  846 	pop	a
      00870C 26 07            [ 1]  847 	jrne	00177$
      00870E 88               [ 1]  848 	push	a
      00870F A6 01            [ 1]  849 	ld	a, #0x01
      008711 6B 02            [ 1]  850 	ld	(0x02, sp), a
      008713 84               [ 1]  851 	pop	a
      008714 C5                     852 	.byte 0xc5
      008715                        853 00177$:
      008715 0F 01            [ 1]  854 	clr	(0x01, sp)
      008717                        855 00178$:
      008717 4D               [ 1]  856 	tnz	a
      008718 26 12            [ 1]  857 	jrne	00120$
      00871A 0D 01            [ 1]  858 	tnz	(0x01, sp)
      00871C 26 0E            [ 1]  859 	jrne	00120$
      00871E 88               [ 1]  860 	push	a
      00871F 4B CF            [ 1]  861 	push	#0xcf
      008721 4B 01            [ 1]  862 	push	#0x01
      008723 5F               [ 1]  863 	clrw	x
      008724 89               [ 2]  864 	pushw	x
      008725 AE 80 9B         [ 2]  865 	ldw	x, #(___str_0+0)
      008728 CD AB 2D         [ 4]  866 	call	_assert_failed
      00872B 84               [ 1]  867 	pop	a
      00872C                        868 00120$:
                                    869 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 465: if (NewState != DISABLE)
      00872C 0D 05            [ 1]  870 	tnz	(0x05, sp)
      00872E 27 1B            [ 1]  871 	jreq	00110$
                                    872 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 467: switch (CLK_IT)
      008730 4D               [ 1]  873 	tnz	a
      008731 26 0E            [ 1]  874 	jrne	00102$
      008733 7B 01            [ 1]  875 	ld	a, (0x01, sp)
      008735 27 2D            [ 1]  876 	jreq	00112$
                                    877 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      008737 C6 50 C5         [ 1]  878 	ld	a, 0x50c5
      00873A AA 04            [ 1]  879 	or	a, #0x04
      00873C C7 50 C5         [ 1]  880 	ld	0x50c5, a
                                    881 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 471: break;
      00873F 20 23            [ 2]  882 	jra	00112$
                                    883 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      008741                        884 00102$:
                                    885 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      008741 C6 50 C8         [ 1]  886 	ld	a, 0x50c8
      008744 AA 04            [ 1]  887 	or	a, #0x04
      008746 C7 50 C8         [ 1]  888 	ld	0x50c8, a
                                    889 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 474: break;
      008749 20 19            [ 2]  890 	jra	00112$
                                    891 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 477: }
      00874B                        892 00110$:
                                    893 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 481: switch (CLK_IT)
      00874B 4D               [ 1]  894 	tnz	a
      00874C 26 0E            [ 1]  895 	jrne	00106$
      00874E 7B 01            [ 1]  896 	ld	a, (0x01, sp)
      008750 27 12            [ 1]  897 	jreq	00112$
                                    898 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      008752 C6 50 C5         [ 1]  899 	ld	a, 0x50c5
      008755 A4 FB            [ 1]  900 	and	a, #0xfb
      008757 C7 50 C5         [ 1]  901 	ld	0x50c5, a
                                    902 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 485: break;
      00875A 20 08            [ 2]  903 	jra	00112$
                                    904 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      00875C                        905 00106$:
                                    906 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      00875C C6 50 C8         [ 1]  907 	ld	a, 0x50c8
      00875F A4 FB            [ 1]  908 	and	a, #0xfb
      008761 C7 50 C8         [ 1]  909 	ld	0x50c8, a
                                    910 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 491: }
      008764                        911 00112$:
                                    912 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 493: }
      008764 85               [ 2]  913 	popw	x
      008765 85               [ 2]  914 	popw	x
      008766 84               [ 1]  915 	pop	a
      008767 FC               [ 2]  916 	jp	(x)
                                    917 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    918 ;	-----------------------------------------
                                    919 ;	 function CLK_SYSCLKConfig
                                    920 ;	-----------------------------------------
      008768                        921 _CLK_SYSCLKConfig:
      008768 88               [ 1]  922 	push	a
                                    923 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 503: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      008769 95               [ 1]  924 	ld	xh, a
      00876A 4D               [ 1]  925 	tnz	a
      00876B 27 4A            [ 1]  926 	jreq	00107$
      00876D 9E               [ 1]  927 	ld	a, xh
      00876E A1 08            [ 1]  928 	cp	a, #0x08
      008770 27 45            [ 1]  929 	jreq	00107$
      008772 9E               [ 1]  930 	ld	a, xh
      008773 A1 10            [ 1]  931 	cp	a, #0x10
      008775 27 40            [ 1]  932 	jreq	00107$
      008777 9E               [ 1]  933 	ld	a, xh
      008778 A1 18            [ 1]  934 	cp	a, #0x18
      00877A 27 3B            [ 1]  935 	jreq	00107$
      00877C 9E               [ 1]  936 	ld	a, xh
      00877D A1 80            [ 1]  937 	cp	a, #0x80
      00877F 27 36            [ 1]  938 	jreq	00107$
      008781 9E               [ 1]  939 	ld	a, xh
      008782 A1 81            [ 1]  940 	cp	a, #0x81
      008784 27 31            [ 1]  941 	jreq	00107$
      008786 9E               [ 1]  942 	ld	a, xh
      008787 A1 82            [ 1]  943 	cp	a, #0x82
      008789 27 2C            [ 1]  944 	jreq	00107$
      00878B 9E               [ 1]  945 	ld	a, xh
      00878C A1 83            [ 1]  946 	cp	a, #0x83
      00878E 27 27            [ 1]  947 	jreq	00107$
      008790 9E               [ 1]  948 	ld	a, xh
      008791 A1 84            [ 1]  949 	cp	a, #0x84
      008793 27 22            [ 1]  950 	jreq	00107$
      008795 9E               [ 1]  951 	ld	a, xh
      008796 A1 85            [ 1]  952 	cp	a, #0x85
      008798 27 1D            [ 1]  953 	jreq	00107$
      00879A 9E               [ 1]  954 	ld	a, xh
      00879B A1 86            [ 1]  955 	cp	a, #0x86
      00879D 27 18            [ 1]  956 	jreq	00107$
      00879F 9E               [ 1]  957 	ld	a, xh
      0087A0 A1 87            [ 1]  958 	cp	a, #0x87
      0087A2 27 13            [ 1]  959 	jreq	00107$
      0087A4 89               [ 2]  960 	pushw	x
      0087A5 4B F7            [ 1]  961 	push	#0xf7
      0087A7 4B 01            [ 1]  962 	push	#0x01
      0087A9 4B 00            [ 1]  963 	push	#0x00
      0087AB 4B 00            [ 1]  964 	push	#0x00
      0087AD AE 80 9B         [ 2]  965 	ldw	x, #(___str_0+0)
      0087B0 CD AB 2D         [ 4]  966 	call	_assert_failed
      0087B3 02               [ 1]  967 	rlwa	x
      0087B4 84               [ 1]  968 	pop	a
      0087B5 01               [ 1]  969 	rrwa	x
      0087B6 84               [ 1]  970 	pop	a
      0087B7                        971 00107$:
                                    972 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0087B7 C6 50 C6         [ 1]  973 	ld	a, 0x50c6
                                    974 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      0087BA 5D               [ 2]  975 	tnzw	x
      0087BB 2B 14            [ 1]  976 	jrmi	00102$
                                    977 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0087BD A4 E7            [ 1]  978 	and	a, #0xe7
      0087BF C7 50 C6         [ 1]  979 	ld	0x50c6, a
                                    980 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      0087C2 C6 50 C6         [ 1]  981 	ld	a, 0x50c6
      0087C5 6B 01            [ 1]  982 	ld	(0x01, sp), a
      0087C7 9E               [ 1]  983 	ld	a, xh
      0087C8 A4 18            [ 1]  984 	and	a, #0x18
      0087CA 1A 01            [ 1]  985 	or	a, (0x01, sp)
      0087CC C7 50 C6         [ 1]  986 	ld	0x50c6, a
      0087CF 20 12            [ 2]  987 	jra	00104$
      0087D1                        988 00102$:
                                    989 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      0087D1 A4 F8            [ 1]  990 	and	a, #0xf8
      0087D3 C7 50 C6         [ 1]  991 	ld	0x50c6, a
                                    992 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      0087D6 C6 50 C6         [ 1]  993 	ld	a, 0x50c6
      0087D9 6B 01            [ 1]  994 	ld	(0x01, sp), a
      0087DB 9E               [ 1]  995 	ld	a, xh
      0087DC A4 07            [ 1]  996 	and	a, #0x07
      0087DE 1A 01            [ 1]  997 	or	a, (0x01, sp)
      0087E0 C7 50 C6         [ 1]  998 	ld	0x50c6, a
      0087E3                        999 00104$:
                                   1000 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 515: }
      0087E3 84               [ 1] 1001 	pop	a
      0087E4 81               [ 4] 1002 	ret
                                   1003 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                   1004 ;	-----------------------------------------
                                   1005 ;	 function CLK_SWIMConfig
                                   1006 ;	-----------------------------------------
      0087E5                       1007 _CLK_SWIMConfig:
      0087E5 88               [ 1] 1008 	push	a
                                   1009 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 526: assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
      0087E6 6B 01            [ 1] 1010 	ld	(0x01, sp), a
      0087E8 27 11            [ 1] 1011 	jreq	00107$
      0087EA 7B 01            [ 1] 1012 	ld	a, (0x01, sp)
      0087EC 4A               [ 1] 1013 	dec	a
      0087ED 27 0C            [ 1] 1014 	jreq	00107$
      0087EF 4B 0E            [ 1] 1015 	push	#0x0e
      0087F1 4B 02            [ 1] 1016 	push	#0x02
      0087F3 5F               [ 1] 1017 	clrw	x
      0087F4 89               [ 2] 1018 	pushw	x
      0087F5 AE 80 9B         [ 2] 1019 	ldw	x, #(___str_0+0)
      0087F8 CD AB 2D         [ 4] 1020 	call	_assert_failed
      0087FB                       1021 00107$:
                                   1022 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      0087FB C6 50 CD         [ 1] 1023 	ld	a, 0x50cd
                                   1024 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      0087FE 0D 01            [ 1] 1025 	tnz	(0x01, sp)
      008800 27 07            [ 1] 1026 	jreq	00102$
                                   1027 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      008802 AA 01            [ 1] 1028 	or	a, #0x01
      008804 C7 50 CD         [ 1] 1029 	ld	0x50cd, a
      008807 20 05            [ 2] 1030 	jra	00104$
      008809                       1031 00102$:
                                   1032 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      008809 A4 FE            [ 1] 1033 	and	a, #0xfe
      00880B C7 50 CD         [ 1] 1034 	ld	0x50cd, a
      00880E                       1035 00104$:
                                   1036 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 538: }
      00880E 84               [ 1] 1037 	pop	a
      00880F 81               [ 4] 1038 	ret
                                   1039 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function CLK_ClockSecuritySystemEnable
                                   1042 ;	-----------------------------------------
      008810                       1043 _CLK_ClockSecuritySystemEnable:
                                   1044 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      008810 72 10 50 C8      [ 1] 1045 	bset	0x50c8, #0
                                   1046 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 551: }
      008814 81               [ 4] 1047 	ret
                                   1048 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                   1049 ;	-----------------------------------------
                                   1050 ;	 function CLK_GetSYSCLKSource
                                   1051 ;	-----------------------------------------
      008815                       1052 _CLK_GetSYSCLKSource:
                                   1053 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      008815 C6 50 C3         [ 1] 1054 	ld	a, 0x50c3
                                   1055 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 562: }
      008818 81               [ 4] 1056 	ret
                                   1057 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                   1058 ;	-----------------------------------------
                                   1059 ;	 function CLK_GetClockFreq
                                   1060 ;	-----------------------------------------
      008819                       1061 _CLK_GetClockFreq:
      008819 52 04            [ 2] 1062 	sub	sp, #4
                                   1063 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      00881B C6 50 C3         [ 1] 1064 	ld	a, 0x50c3
                                   1065 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      00881E 6B 04            [ 1] 1066 	ld	(0x04, sp), a
      008820 A1 E1            [ 1] 1067 	cp	a, #0xe1
      008822 26 26            [ 1] 1068 	jrne	00105$
                                   1069 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      008824 C6 50 C6         [ 1] 1070 	ld	a, 0x50c6
      008827 A4 18            [ 1] 1071 	and	a, #0x18
                                   1072 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      008829 44               [ 1] 1073 	srl	a
      00882A 44               [ 1] 1074 	srl	a
      00882B 44               [ 1] 1075 	srl	a
                                   1076 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      00882C 5F               [ 1] 1077 	clrw	x
      00882D 97               [ 1] 1078 	ld	xl, a
      00882E D6 80 8F         [ 1] 1079 	ld	a, (_HSIDivFactor+0, x)
                                   1080 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      008831 5F               [ 1] 1081 	clrw	x
      008832 97               [ 1] 1082 	ld	xl, a
      008833 90 5F            [ 1] 1083 	clrw	y
      008835 89               [ 2] 1084 	pushw	x
      008836 90 89            [ 2] 1085 	pushw	y
      008838 4B 00            [ 1] 1086 	push	#0x00
      00883A 4B 24            [ 1] 1087 	push	#0x24
      00883C 4B F4            [ 1] 1088 	push	#0xf4
      00883E 4B 00            [ 1] 1089 	push	#0x00
      008840 CD B2 D3         [ 4] 1090 	call	__divulong
      008843 5B 08            [ 2] 1091 	addw	sp, #8
      008845 51               [ 1] 1092 	exgw	x, y
      008846 17 03            [ 2] 1093 	ldw	(0x03, sp), y
      008848 20 17            [ 2] 1094 	jra	00106$
      00884A                       1095 00105$:
                                   1096 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      00884A 7B 04            [ 1] 1097 	ld	a, (0x04, sp)
      00884C A1 D2            [ 1] 1098 	cp	a, #0xd2
      00884E 26 09            [ 1] 1099 	jrne	00102$
                                   1100 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      008850 AE F4 00         [ 2] 1101 	ldw	x, #0xf400
      008853 1F 03            [ 2] 1102 	ldw	(0x03, sp), x
      008855 5F               [ 1] 1103 	clrw	x
      008856 5C               [ 1] 1104 	incw	x
      008857 20 08            [ 2] 1105 	jra	00106$
      008859                       1106 00102$:
                                   1107 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      008859 AE 24 00         [ 2] 1108 	ldw	x, #0x2400
      00885C 1F 03            [ 2] 1109 	ldw	(0x03, sp), x
      00885E AE 00 F4         [ 2] 1110 	ldw	x, #0x00f4
      008861                       1111 00106$:
                                   1112 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      008861 51               [ 1] 1113 	exgw	x, y
      008862 1E 03            [ 2] 1114 	ldw	x, (0x03, sp)
                                   1115 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 595: }
      008864 5B 04            [ 2] 1116 	addw	sp, #4
      008866 81               [ 4] 1117 	ret
                                   1118 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                   1119 ;	-----------------------------------------
                                   1120 ;	 function CLK_AdjustHSICalibrationValue
                                   1121 ;	-----------------------------------------
      008867                       1122 _CLK_AdjustHSICalibrationValue:
      008867 88               [ 1] 1123 	push	a
                                   1124 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 607: assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
      008868 4D               [ 1] 1125 	tnz	a
      008869 27 2A            [ 1] 1126 	jreq	00104$
      00886B A1 01            [ 1] 1127 	cp	a, #0x01
      00886D 27 26            [ 1] 1128 	jreq	00104$
      00886F A1 02            [ 1] 1129 	cp	a, #0x02
      008871 27 22            [ 1] 1130 	jreq	00104$
      008873 A1 03            [ 1] 1131 	cp	a, #0x03
      008875 27 1E            [ 1] 1132 	jreq	00104$
      008877 A1 04            [ 1] 1133 	cp	a, #0x04
      008879 27 1A            [ 1] 1134 	jreq	00104$
      00887B A1 05            [ 1] 1135 	cp	a, #0x05
      00887D 27 16            [ 1] 1136 	jreq	00104$
      00887F A1 06            [ 1] 1137 	cp	a, #0x06
      008881 27 12            [ 1] 1138 	jreq	00104$
      008883 A1 07            [ 1] 1139 	cp	a, #0x07
      008885 27 0E            [ 1] 1140 	jreq	00104$
      008887 88               [ 1] 1141 	push	a
      008888 4B 5F            [ 1] 1142 	push	#0x5f
      00888A 4B 02            [ 1] 1143 	push	#0x02
      00888C 5F               [ 1] 1144 	clrw	x
      00888D 89               [ 2] 1145 	pushw	x
      00888E AE 80 9B         [ 2] 1146 	ldw	x, #(___str_0+0)
      008891 CD AB 2D         [ 4] 1147 	call	_assert_failed
      008894 84               [ 1] 1148 	pop	a
      008895                       1149 00104$:
                                   1150 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      008895 AE 50 CC         [ 2] 1151 	ldw	x, #0x50cc
      008898 88               [ 1] 1152 	push	a
      008899 F6               [ 1] 1153 	ld	a, (x)
      00889A A4 F8            [ 1] 1154 	and	a, #0xf8
      00889C 6B 02            [ 1] 1155 	ld	(0x02, sp), a
      00889E 84               [ 1] 1156 	pop	a
      00889F 1A 01            [ 1] 1157 	or	a, (0x01, sp)
      0088A1 C7 50 CC         [ 1] 1158 	ld	0x50cc, a
                                   1159 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 611: }
      0088A4 84               [ 1] 1160 	pop	a
      0088A5 81               [ 4] 1161 	ret
                                   1162 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                   1163 ;	-----------------------------------------
                                   1164 ;	 function CLK_SYSCLKEmergencyClear
                                   1165 ;	-----------------------------------------
      0088A6                       1166 _CLK_SYSCLKEmergencyClear:
                                   1167 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      0088A6 72 11 50 C5      [ 1] 1168 	bres	0x50c5, #0
                                   1169 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 625: }
      0088AA 81               [ 4] 1170 	ret
                                   1171 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                   1172 ;	-----------------------------------------
                                   1173 ;	 function CLK_GetFlagStatus
                                   1174 ;	-----------------------------------------
      0088AB                       1175 _CLK_GetFlagStatus:
                                   1176 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 641: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      0088AB 90 93            [ 1] 1177 	ldw	y, x
      0088AD A3 01 10         [ 2] 1178 	cpw	x, #0x0110
      0088B0 27 3C            [ 1] 1179 	jreq	00119$
      0088B2 A3 01 02         [ 2] 1180 	cpw	x, #0x0102
      0088B5 27 37            [ 1] 1181 	jreq	00119$
      0088B7 A3 02 02         [ 2] 1182 	cpw	x, #0x0202
      0088BA 27 32            [ 1] 1183 	jreq	00119$
      0088BC A3 03 08         [ 2] 1184 	cpw	x, #0x0308
      0088BF 27 2D            [ 1] 1185 	jreq	00119$
      0088C1 A3 03 01         [ 2] 1186 	cpw	x, #0x0301
      0088C4 27 28            [ 1] 1187 	jreq	00119$
      0088C6 A3 04 08         [ 2] 1188 	cpw	x, #0x0408
      0088C9 27 23            [ 1] 1189 	jreq	00119$
      0088CB A3 04 02         [ 2] 1190 	cpw	x, #0x0402
      0088CE 27 1E            [ 1] 1191 	jreq	00119$
      0088D0 A3 05 04         [ 2] 1192 	cpw	x, #0x0504
      0088D3 27 19            [ 1] 1193 	jreq	00119$
      0088D5 A3 05 02         [ 2] 1194 	cpw	x, #0x0502
      0088D8 27 14            [ 1] 1195 	jreq	00119$
      0088DA 89               [ 2] 1196 	pushw	x
      0088DB 90 89            [ 2] 1197 	pushw	y
      0088DD 4B 81            [ 1] 1198 	push	#0x81
      0088DF 4B 02            [ 1] 1199 	push	#0x02
      0088E1 4B 00            [ 1] 1200 	push	#0x00
      0088E3 4B 00            [ 1] 1201 	push	#0x00
      0088E5 AE 80 9B         [ 2] 1202 	ldw	x, #(___str_0+0)
      0088E8 CD AB 2D         [ 4] 1203 	call	_assert_failed
      0088EB 90 85            [ 2] 1204 	popw	y
      0088ED 85               [ 2] 1205 	popw	x
      0088EE                       1206 00119$:
                                   1207 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      0088EE 4F               [ 1] 1208 	clr	a
                                   1209 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      0088EF 97               [ 1] 1210 	ld	xl, a
      0088F0 A3 01 00         [ 2] 1211 	cpw	x, #0x0100
      0088F3 26 05            [ 1] 1212 	jrne	00111$
                                   1213 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      0088F5 C6 50 C0         [ 1] 1214 	ld	a, 0x50c0
      0088F8 20 21            [ 2] 1215 	jra	00112$
      0088FA                       1216 00111$:
                                   1217 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      0088FA A3 02 00         [ 2] 1218 	cpw	x, #0x0200
      0088FD 26 05            [ 1] 1219 	jrne	00108$
                                   1220 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      0088FF C6 50 C1         [ 1] 1221 	ld	a, 0x50c1
      008902 20 17            [ 2] 1222 	jra	00112$
      008904                       1223 00108$:
                                   1224 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      008904 A3 03 00         [ 2] 1225 	cpw	x, #0x0300
      008907 26 05            [ 1] 1226 	jrne	00105$
                                   1227 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      008909 C6 50 C5         [ 1] 1228 	ld	a, 0x50c5
      00890C 20 0D            [ 2] 1229 	jra	00112$
      00890E                       1230 00105$:
                                   1231 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      00890E A3 04 00         [ 2] 1232 	cpw	x, #0x0400
      008911 26 05            [ 1] 1233 	jrne	00102$
                                   1234 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      008913 C6 50 C8         [ 1] 1235 	ld	a, 0x50c8
      008916 20 03            [ 2] 1236 	jra	00112$
      008918                       1237 00102$:
                                   1238 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      008918 C6 50 C9         [ 1] 1239 	ld	a, 0x50c9
      00891B                       1240 00112$:
                                   1241 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      00891B 93               [ 1] 1242 	ldw	x, y
      00891C 89               [ 2] 1243 	pushw	x
      00891D 14 02            [ 1] 1244 	and	a, (2, sp)
      00891F 85               [ 2] 1245 	popw	x
      008920 4D               [ 1] 1246 	tnz	a
      008921 27 03            [ 1] 1247 	jreq	00114$
                                   1248 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 670: bitstatus = SET;
      008923 A6 01            [ 1] 1249 	ld	a, #0x01
      008925 81               [ 4] 1250 	ret
      008926                       1251 00114$:
                                   1252 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 674: bitstatus = RESET;
      008926 4F               [ 1] 1253 	clr	a
                                   1254 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                                   1255 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 679: }
      008927 81               [ 4] 1256 	ret
                                   1257 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1258 ;	-----------------------------------------
                                   1259 ;	 function CLK_GetITStatus
                                   1260 ;	-----------------------------------------
      008928                       1261 _CLK_GetITStatus:
      008928 88               [ 1] 1262 	push	a
                                   1263 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 692: assert_param(IS_CLK_IT_OK(CLK_IT));
      008929 6B 01            [ 1] 1264 	ld	(0x01, sp), a
      00892B A0 1C            [ 1] 1265 	sub	a, #0x1c
      00892D 26 02            [ 1] 1266 	jrne	00143$
      00892F 4C               [ 1] 1267 	inc	a
      008930 21                    1268 	.byte 0x21
      008931                       1269 00143$:
      008931 4F               [ 1] 1270 	clr	a
      008932                       1271 00144$:
      008932 88               [ 1] 1272 	push	a
      008933 7B 02            [ 1] 1273 	ld	a, (0x02, sp)
      008935 A1 0C            [ 1] 1274 	cp	a, #0x0c
      008937 84               [ 1] 1275 	pop	a
      008938 27 11            [ 1] 1276 	jreq	00113$
      00893A 4D               [ 1] 1277 	tnz	a
      00893B 26 0E            [ 1] 1278 	jrne	00113$
      00893D 88               [ 1] 1279 	push	a
      00893E 4B B4            [ 1] 1280 	push	#0xb4
      008940 4B 02            [ 1] 1281 	push	#0x02
      008942 5F               [ 1] 1282 	clrw	x
      008943 89               [ 2] 1283 	pushw	x
      008944 AE 80 9B         [ 2] 1284 	ldw	x, #(___str_0+0)
      008947 CD AB 2D         [ 4] 1285 	call	_assert_failed
      00894A 84               [ 1] 1286 	pop	a
      00894B                       1287 00113$:
                                   1288 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      00894B 4D               [ 1] 1289 	tnz	a
      00894C 27 0F            [ 1] 1290 	jreq	00108$
                                   1291 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      00894E C6 50 C5         [ 1] 1292 	ld	a, 0x50c5
      008951 14 01            [ 1] 1293 	and	a, (0x01, sp)
                                   1294 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 699: bitstatus = SET;
      008953 A0 0C            [ 1] 1295 	sub	a, #0x0c
      008955 26 03            [ 1] 1296 	jrne	00102$
      008957 4C               [ 1] 1297 	inc	a
      008958 20 0F            [ 2] 1298 	jra	00109$
      00895A                       1299 00102$:
                                   1300 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 703: bitstatus = RESET;
      00895A 4F               [ 1] 1301 	clr	a
      00895B 20 0C            [ 2] 1302 	jra	00109$
      00895D                       1303 00108$:
                                   1304 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      00895D C6 50 C8         [ 1] 1305 	ld	a, 0x50c8
      008960 14 01            [ 1] 1306 	and	a, (0x01, sp)
                                   1307 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 711: bitstatus = SET;
      008962 A0 0C            [ 1] 1308 	sub	a, #0x0c
      008964 26 02            [ 1] 1309 	jrne	00105$
      008966 4C               [ 1] 1310 	inc	a
                                   1311 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 715: bitstatus = RESET;
      008967 21                    1312 	.byte 0x21
      008968                       1313 00105$:
      008968 4F               [ 1] 1314 	clr	a
      008969                       1315 00109$:
                                   1316 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 720: return bitstatus;
                                   1317 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 721: }
      008969 5B 01            [ 2] 1318 	addw	sp, #1
      00896B 81               [ 4] 1319 	ret
                                   1320 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1321 ;	-----------------------------------------
                                   1322 ;	 function CLK_ClearITPendingBit
                                   1323 ;	-----------------------------------------
      00896C                       1324 _CLK_ClearITPendingBit:
                                   1325 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 732: assert_param(IS_CLK_IT_OK(CLK_IT));
      00896C 97               [ 1] 1326 	ld	xl, a
      00896D A0 0C            [ 1] 1327 	sub	a, #0x0c
      00896F 26 02            [ 1] 1328 	jrne	00127$
      008971 4C               [ 1] 1329 	inc	a
      008972 21                    1330 	.byte 0x21
      008973                       1331 00127$:
      008973 4F               [ 1] 1332 	clr	a
      008974                       1333 00128$:
      008974 4D               [ 1] 1334 	tnz	a
      008975 26 15            [ 1] 1335 	jrne	00107$
      008977 88               [ 1] 1336 	push	a
      008978 9F               [ 1] 1337 	ld	a, xl
      008979 A1 1C            [ 1] 1338 	cp	a, #0x1c
      00897B 84               [ 1] 1339 	pop	a
      00897C 27 0E            [ 1] 1340 	jreq	00107$
      00897E 88               [ 1] 1341 	push	a
      00897F 4B DC            [ 1] 1342 	push	#0xdc
      008981 4B 02            [ 1] 1343 	push	#0x02
      008983 5F               [ 1] 1344 	clrw	x
      008984 89               [ 2] 1345 	pushw	x
      008985 AE 80 9B         [ 2] 1346 	ldw	x, #(___str_0+0)
      008988 CD AB 2D         [ 4] 1347 	call	_assert_failed
      00898B 84               [ 1] 1348 	pop	a
      00898C                       1349 00107$:
                                   1350 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      00898C 4D               [ 1] 1351 	tnz	a
      00898D 27 05            [ 1] 1352 	jreq	00102$
                                   1353 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      00898F 72 17 50 C8      [ 1] 1354 	bres	0x50c8, #3
      008993 81               [ 4] 1355 	ret
      008994                       1356 00102$:
                                   1357 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      008994 72 17 50 C5      [ 1] 1358 	bres	0x50c5, #3
                                   1359 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 745: }
      008998 81               [ 4] 1360 	ret
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
      0080A4 64 69 73 61 6E        1383 	.ascii "disan"
      0080A9 5C                    1384 	.db 0x5c
      0080AA 2E 70 6C 61 74 66 6F  1385 	.ascii ".platformio"
             72 6D 69 6F
      0080B5 5C                    1386 	.db 0x5c
      0080B6 70 61 63 6B 61 67 65  1387 	.ascii "packages"
             73
      0080BE 5C                    1388 	.db 0x5c
      0080BF 66 72 61 6D 65 77 6F  1389 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      0080D2 5C                    1390 	.db 0x5c
      0080D3 4C 69 62 72 61 72 69  1391 	.ascii "Libraries"
             65 73
      0080DC 5C                    1392 	.db 0x5c
      0080DD 53 54 4D 38 53 5F 53  1393 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0080F3 5C                    1394 	.db 0x5c
      0080F4 73 72 63              1395 	.ascii "src"
      0080F7 5C                    1396 	.db 0x5c
      0080F8 73 74 6D 38 73 5F 63  1397 	.ascii "stm8s_clk.c"
             6C 6B 2E 63
      008103 00                    1398 	.db 0x00
                                   1399 	.area CODE
                                   1400 	.area INITIALIZER
                                   1401 	.area CABS (ABS)
