                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Mac OS X x86_64)
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
                                     74 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     75 ;	-----------------------------------------
                                     76 ;	 function CLK_DeInit
                                     77 ;	-----------------------------------------
      008414                         78 _CLK_DeInit:
                                     79 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      008414 35 01 50 C0      [ 1]   80 	mov	0x50c0+0, #0x01
                                     81 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      008418 35 00 50 C1      [ 1]   82 	mov	0x50c1+0, #0x00
                                     83 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      00841C 35 E1 50 C4      [ 1]   84 	mov	0x50c4+0, #0xe1
                                     85 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      008420 35 00 50 C5      [ 1]   86 	mov	0x50c5+0, #0x00
                                     87 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      008424 35 18 50 C6      [ 1]   88 	mov	0x50c6+0, #0x18
                                     89 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      008428 35 FF 50 C7      [ 1]   90 	mov	0x50c7+0, #0xff
                                     91 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      00842C 35 FF 50 CA      [ 1]   92 	mov	0x50ca+0, #0xff
                                     93 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      008430 35 00 50 C8      [ 1]   94 	mov	0x50c8+0, #0x00
                                     95 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008434 35 00 50 C9      [ 1]   96 	mov	0x50c9+0, #0x00
                                     97 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      008438                         98 00101$:
      008438 72 00 50 C9 FB   [ 2]   99 	btjt	0x50c9, #0, 00101$
                                    100 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00843D 35 00 50 C9      [ 1]  101 	mov	0x50c9+0, #0x00
                                    102 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      008441 35 00 50 CC      [ 1]  103 	mov	0x50cc+0, #0x00
                                    104 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      008445 35 00 50 CD      [ 1]  105 	mov	0x50cd+0, #0x00
                                    106 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 88: }
      008449 81               [ 4]  107 	ret
                                    108 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    109 ;	-----------------------------------------
                                    110 ;	 function CLK_FastHaltWakeUpCmd
                                    111 ;	-----------------------------------------
      00844A                        112 _CLK_FastHaltWakeUpCmd:
      00844A 88               [ 1]  113 	push	a
                                    114 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 102: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00844B 6B 01            [ 1]  115 	ld	(0x01, sp), a
      00844D 27 11            [ 1]  116 	jreq	00107$
      00844F 7B 01            [ 1]  117 	ld	a, (0x01, sp)
      008451 4A               [ 1]  118 	dec	a
      008452 27 0C            [ 1]  119 	jreq	00107$
      008454 4B 66            [ 1]  120 	push	#0x66
      008456 5F               [ 1]  121 	clrw	x
      008457 89               [ 2]  122 	pushw	x
      008458 4B 00            [ 1]  123 	push	#0x00
      00845A AE 80 9B         [ 2]  124 	ldw	x, #(___str_0+0)
      00845D CD AB 90         [ 4]  125 	call	_assert_failed
      008460                        126 00107$:
                                    127 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      008460 C6 50 C0         [ 1]  128 	ld	a, 0x50c0
                                    129 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 104: if (NewState != DISABLE)
      008463 0D 01            [ 1]  130 	tnz	(0x01, sp)
      008465 27 07            [ 1]  131 	jreq	00102$
                                    132 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      008467 AA 04            [ 1]  133 	or	a, #0x04
      008469 C7 50 C0         [ 1]  134 	ld	0x50c0, a
      00846C 20 05            [ 2]  135 	jra	00104$
      00846E                        136 00102$:
                                    137 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      00846E A4 FB            [ 1]  138 	and	a, #0xfb
      008470 C7 50 C0         [ 1]  139 	ld	0x50c0, a
      008473                        140 00104$:
                                    141 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 114: }
      008473 84               [ 1]  142 	pop	a
      008474 81               [ 4]  143 	ret
                                    144 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    145 ;	-----------------------------------------
                                    146 ;	 function CLK_HSECmd
                                    147 ;	-----------------------------------------
      008475                        148 _CLK_HSECmd:
      008475 88               [ 1]  149 	push	a
                                    150 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 124: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008476 6B 01            [ 1]  151 	ld	(0x01, sp), a
      008478 27 11            [ 1]  152 	jreq	00107$
      00847A 7B 01            [ 1]  153 	ld	a, (0x01, sp)
      00847C 4A               [ 1]  154 	dec	a
      00847D 27 0C            [ 1]  155 	jreq	00107$
      00847F 4B 7C            [ 1]  156 	push	#0x7c
      008481 5F               [ 1]  157 	clrw	x
      008482 89               [ 2]  158 	pushw	x
      008483 4B 00            [ 1]  159 	push	#0x00
      008485 AE 80 9B         [ 2]  160 	ldw	x, #(___str_0+0)
      008488 CD AB 90         [ 4]  161 	call	_assert_failed
      00848B                        162 00107$:
                                    163 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      00848B C6 50 C1         [ 1]  164 	ld	a, 0x50c1
                                    165 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 126: if (NewState != DISABLE)
      00848E 0D 01            [ 1]  166 	tnz	(0x01, sp)
      008490 27 07            [ 1]  167 	jreq	00102$
                                    168 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      008492 AA 01            [ 1]  169 	or	a, #0x01
      008494 C7 50 C1         [ 1]  170 	ld	0x50c1, a
      008497 20 05            [ 2]  171 	jra	00104$
      008499                        172 00102$:
                                    173 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008499 A4 FE            [ 1]  174 	and	a, #0xfe
      00849B C7 50 C1         [ 1]  175 	ld	0x50c1, a
      00849E                        176 00104$:
                                    177 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 136: }
      00849E 84               [ 1]  178 	pop	a
      00849F 81               [ 4]  179 	ret
                                    180 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    181 ;	-----------------------------------------
                                    182 ;	 function CLK_HSICmd
                                    183 ;	-----------------------------------------
      0084A0                        184 _CLK_HSICmd:
      0084A0 88               [ 1]  185 	push	a
                                    186 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 146: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0084A1 6B 01            [ 1]  187 	ld	(0x01, sp), a
      0084A3 27 11            [ 1]  188 	jreq	00107$
      0084A5 7B 01            [ 1]  189 	ld	a, (0x01, sp)
      0084A7 4A               [ 1]  190 	dec	a
      0084A8 27 0C            [ 1]  191 	jreq	00107$
      0084AA 4B 92            [ 1]  192 	push	#0x92
      0084AC 5F               [ 1]  193 	clrw	x
      0084AD 89               [ 2]  194 	pushw	x
      0084AE 4B 00            [ 1]  195 	push	#0x00
      0084B0 AE 80 9B         [ 2]  196 	ldw	x, #(___str_0+0)
      0084B3 CD AB 90         [ 4]  197 	call	_assert_failed
      0084B6                        198 00107$:
                                    199 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      0084B6 C6 50 C0         [ 1]  200 	ld	a, 0x50c0
                                    201 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 148: if (NewState != DISABLE)
      0084B9 0D 01            [ 1]  202 	tnz	(0x01, sp)
      0084BB 27 07            [ 1]  203 	jreq	00102$
                                    204 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      0084BD AA 01            [ 1]  205 	or	a, #0x01
      0084BF C7 50 C0         [ 1]  206 	ld	0x50c0, a
      0084C2 20 05            [ 2]  207 	jra	00104$
      0084C4                        208 00102$:
                                    209 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0084C4 A4 FE            [ 1]  210 	and	a, #0xfe
      0084C6 C7 50 C0         [ 1]  211 	ld	0x50c0, a
      0084C9                        212 00104$:
                                    213 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 158: }
      0084C9 84               [ 1]  214 	pop	a
      0084CA 81               [ 4]  215 	ret
                                    216 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    217 ;	-----------------------------------------
                                    218 ;	 function CLK_LSICmd
                                    219 ;	-----------------------------------------
      0084CB                        220 _CLK_LSICmd:
      0084CB 88               [ 1]  221 	push	a
                                    222 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 169: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0084CC 6B 01            [ 1]  223 	ld	(0x01, sp), a
      0084CE 27 11            [ 1]  224 	jreq	00107$
      0084D0 7B 01            [ 1]  225 	ld	a, (0x01, sp)
      0084D2 4A               [ 1]  226 	dec	a
      0084D3 27 0C            [ 1]  227 	jreq	00107$
      0084D5 4B A9            [ 1]  228 	push	#0xa9
      0084D7 5F               [ 1]  229 	clrw	x
      0084D8 89               [ 2]  230 	pushw	x
      0084D9 4B 00            [ 1]  231 	push	#0x00
      0084DB AE 80 9B         [ 2]  232 	ldw	x, #(___str_0+0)
      0084DE CD AB 90         [ 4]  233 	call	_assert_failed
      0084E1                        234 00107$:
                                    235 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      0084E1 C6 50 C0         [ 1]  236 	ld	a, 0x50c0
                                    237 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 171: if (NewState != DISABLE)
      0084E4 0D 01            [ 1]  238 	tnz	(0x01, sp)
      0084E6 27 07            [ 1]  239 	jreq	00102$
                                    240 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      0084E8 AA 08            [ 1]  241 	or	a, #0x08
      0084EA C7 50 C0         [ 1]  242 	ld	0x50c0, a
      0084ED 20 05            [ 2]  243 	jra	00104$
      0084EF                        244 00102$:
                                    245 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0084EF A4 F7            [ 1]  246 	and	a, #0xf7
      0084F1 C7 50 C0         [ 1]  247 	ld	0x50c0, a
      0084F4                        248 00104$:
                                    249 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 181: }
      0084F4 84               [ 1]  250 	pop	a
      0084F5 81               [ 4]  251 	ret
                                    252 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    253 ;	-----------------------------------------
                                    254 ;	 function CLK_CCOCmd
                                    255 ;	-----------------------------------------
      0084F6                        256 _CLK_CCOCmd:
      0084F6 88               [ 1]  257 	push	a
                                    258 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 192: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0084F7 6B 01            [ 1]  259 	ld	(0x01, sp), a
      0084F9 27 11            [ 1]  260 	jreq	00107$
      0084FB 7B 01            [ 1]  261 	ld	a, (0x01, sp)
      0084FD 4A               [ 1]  262 	dec	a
      0084FE 27 0C            [ 1]  263 	jreq	00107$
      008500 4B C0            [ 1]  264 	push	#0xc0
      008502 5F               [ 1]  265 	clrw	x
      008503 89               [ 2]  266 	pushw	x
      008504 4B 00            [ 1]  267 	push	#0x00
      008506 AE 80 9B         [ 2]  268 	ldw	x, #(___str_0+0)
      008509 CD AB 90         [ 4]  269 	call	_assert_failed
      00850C                        270 00107$:
                                    271 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      00850C C6 50 C9         [ 1]  272 	ld	a, 0x50c9
                                    273 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 194: if (NewState != DISABLE)
      00850F 0D 01            [ 1]  274 	tnz	(0x01, sp)
      008511 27 07            [ 1]  275 	jreq	00102$
                                    276 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      008513 AA 01            [ 1]  277 	or	a, #0x01
      008515 C7 50 C9         [ 1]  278 	ld	0x50c9, a
      008518 20 05            [ 2]  279 	jra	00104$
      00851A                        280 00102$:
                                    281 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      00851A A4 FE            [ 1]  282 	and	a, #0xfe
      00851C C7 50 C9         [ 1]  283 	ld	0x50c9, a
      00851F                        284 00104$:
                                    285 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 204: }
      00851F 84               [ 1]  286 	pop	a
      008520 81               [ 4]  287 	ret
                                    288 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    289 ;	-----------------------------------------
                                    290 ;	 function CLK_ClockSwitchCmd
                                    291 ;	-----------------------------------------
      008521                        292 _CLK_ClockSwitchCmd:
      008521 88               [ 1]  293 	push	a
                                    294 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008522 6B 01            [ 1]  295 	ld	(0x01, sp), a
      008524 27 11            [ 1]  296 	jreq	00107$
      008526 7B 01            [ 1]  297 	ld	a, (0x01, sp)
      008528 4A               [ 1]  298 	dec	a
      008529 27 0C            [ 1]  299 	jreq	00107$
      00852B 4B D8            [ 1]  300 	push	#0xd8
      00852D 5F               [ 1]  301 	clrw	x
      00852E 89               [ 2]  302 	pushw	x
      00852F 4B 00            [ 1]  303 	push	#0x00
      008531 AE 80 9B         [ 2]  304 	ldw	x, #(___str_0+0)
      008534 CD AB 90         [ 4]  305 	call	_assert_failed
      008537                        306 00107$:
                                    307 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      008537 C6 50 C5         [ 1]  308 	ld	a, 0x50c5
                                    309 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 218: if (NewState != DISABLE )
      00853A 0D 01            [ 1]  310 	tnz	(0x01, sp)
      00853C 27 07            [ 1]  311 	jreq	00102$
                                    312 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      00853E AA 02            [ 1]  313 	or	a, #0x02
      008540 C7 50 C5         [ 1]  314 	ld	0x50c5, a
      008543 20 05            [ 2]  315 	jra	00104$
      008545                        316 00102$:
                                    317 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      008545 A4 FD            [ 1]  318 	and	a, #0xfd
      008547 C7 50 C5         [ 1]  319 	ld	0x50c5, a
      00854A                        320 00104$:
                                    321 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 228: }
      00854A 84               [ 1]  322 	pop	a
      00854B 81               [ 4]  323 	ret
                                    324 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    325 ;	-----------------------------------------
                                    326 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    327 ;	-----------------------------------------
      00854C                        328 _CLK_SlowActiveHaltWakeUpCmd:
      00854C 88               [ 1]  329 	push	a
                                    330 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 241: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00854D 6B 01            [ 1]  331 	ld	(0x01, sp), a
      00854F 27 11            [ 1]  332 	jreq	00107$
      008551 7B 01            [ 1]  333 	ld	a, (0x01, sp)
      008553 4A               [ 1]  334 	dec	a
      008554 27 0C            [ 1]  335 	jreq	00107$
      008556 4B F1            [ 1]  336 	push	#0xf1
      008558 5F               [ 1]  337 	clrw	x
      008559 89               [ 2]  338 	pushw	x
      00855A 4B 00            [ 1]  339 	push	#0x00
      00855C AE 80 9B         [ 2]  340 	ldw	x, #(___str_0+0)
      00855F CD AB 90         [ 4]  341 	call	_assert_failed
      008562                        342 00107$:
                                    343 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      008562 C6 50 C0         [ 1]  344 	ld	a, 0x50c0
                                    345 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 243: if (NewState != DISABLE)
      008565 0D 01            [ 1]  346 	tnz	(0x01, sp)
      008567 27 07            [ 1]  347 	jreq	00102$
                                    348 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      008569 AA 20            [ 1]  349 	or	a, #0x20
      00856B C7 50 C0         [ 1]  350 	ld	0x50c0, a
      00856E 20 05            [ 2]  351 	jra	00104$
      008570                        352 00102$:
                                    353 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      008570 A4 DF            [ 1]  354 	and	a, #0xdf
      008572 C7 50 C0         [ 1]  355 	ld	0x50c0, a
      008575                        356 00104$:
                                    357 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 253: }
      008575 84               [ 1]  358 	pop	a
      008576 81               [ 4]  359 	ret
                                    360 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    361 ;	-----------------------------------------
                                    362 ;	 function CLK_PeripheralClockConfig
                                    363 ;	-----------------------------------------
      008577                        364 _CLK_PeripheralClockConfig:
      008577 52 03            [ 2]  365 	sub	sp, #3
      008579 6B 03            [ 1]  366 	ld	(0x03, sp), a
                                    367 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 266: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00857B 0D 06            [ 1]  368 	tnz	(0x06, sp)
      00857D 27 11            [ 1]  369 	jreq	00113$
      00857F 7B 06            [ 1]  370 	ld	a, (0x06, sp)
      008581 4A               [ 1]  371 	dec	a
      008582 27 0C            [ 1]  372 	jreq	00113$
      008584 4B 0A            [ 1]  373 	push	#0x0a
      008586 4B 01            [ 1]  374 	push	#0x01
      008588 5F               [ 1]  375 	clrw	x
      008589 89               [ 2]  376 	pushw	x
      00858A AE 80 9B         [ 2]  377 	ldw	x, #(___str_0+0)
      00858D CD AB 90         [ 4]  378 	call	_assert_failed
      008590                        379 00113$:
                                    380 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 267: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      008590 0D 03            [ 1]  381 	tnz	(0x03, sp)
      008592 27 64            [ 1]  382 	jreq	00118$
      008594 7B 03            [ 1]  383 	ld	a, (0x03, sp)
      008596 4A               [ 1]  384 	dec	a
      008597 27 5F            [ 1]  385 	jreq	00118$
      008599 7B 03            [ 1]  386 	ld	a, (0x03, sp)
      00859B A0 03            [ 1]  387 	sub	a, #0x03
      00859D 26 02            [ 1]  388 	jrne	00262$
      00859F 4C               [ 1]  389 	inc	a
      0085A0 21                     390 	.byte 0x21
      0085A1                        391 00262$:
      0085A1 4F               [ 1]  392 	clr	a
      0085A2                        393 00263$:
      0085A2 4D               [ 1]  394 	tnz	a
      0085A3 26 53            [ 1]  395 	jrne	00118$
      0085A5 4D               [ 1]  396 	tnz	a
      0085A6 26 50            [ 1]  397 	jrne	00118$
      0085A8 4D               [ 1]  398 	tnz	a
      0085A9 26 4D            [ 1]  399 	jrne	00118$
      0085AB 7B 03            [ 1]  400 	ld	a, (0x03, sp)
      0085AD A0 04            [ 1]  401 	sub	a, #0x04
      0085AF 26 04            [ 1]  402 	jrne	00268$
      0085B1 4C               [ 1]  403 	inc	a
      0085B2 97               [ 1]  404 	ld	xl, a
      0085B3 20 02            [ 2]  405 	jra	00269$
      0085B5                        406 00268$:
      0085B5 4F               [ 1]  407 	clr	a
      0085B6 97               [ 1]  408 	ld	xl, a
      0085B7                        409 00269$:
      0085B7 9F               [ 1]  410 	ld	a, xl
      0085B8 4D               [ 1]  411 	tnz	a
      0085B9 26 3D            [ 1]  412 	jrne	00118$
      0085BB 7B 03            [ 1]  413 	ld	a, (0x03, sp)
      0085BD A0 05            [ 1]  414 	sub	a, #0x05
      0085BF 26 02            [ 1]  415 	jrne	00272$
      0085C1 4C               [ 1]  416 	inc	a
      0085C2 21                     417 	.byte 0x21
      0085C3                        418 00272$:
      0085C3 4F               [ 1]  419 	clr	a
      0085C4                        420 00273$:
      0085C4 4D               [ 1]  421 	tnz	a
      0085C5 26 31            [ 1]  422 	jrne	00118$
      0085C7 4D               [ 1]  423 	tnz	a
      0085C8 26 2E            [ 1]  424 	jrne	00118$
      0085CA 9F               [ 1]  425 	ld	a, xl
      0085CB 4D               [ 1]  426 	tnz	a
      0085CC 26 2A            [ 1]  427 	jrne	00118$
      0085CE 7B 03            [ 1]  428 	ld	a, (0x03, sp)
      0085D0 A1 06            [ 1]  429 	cp	a, #0x06
      0085D2 27 24            [ 1]  430 	jreq	00118$
      0085D4 7B 03            [ 1]  431 	ld	a, (0x03, sp)
      0085D6 A1 07            [ 1]  432 	cp	a, #0x07
      0085D8 27 1E            [ 1]  433 	jreq	00118$
      0085DA 7B 03            [ 1]  434 	ld	a, (0x03, sp)
      0085DC A1 17            [ 1]  435 	cp	a, #0x17
      0085DE 27 18            [ 1]  436 	jreq	00118$
      0085E0 7B 03            [ 1]  437 	ld	a, (0x03, sp)
      0085E2 A1 13            [ 1]  438 	cp	a, #0x13
      0085E4 27 12            [ 1]  439 	jreq	00118$
      0085E6 7B 03            [ 1]  440 	ld	a, (0x03, sp)
      0085E8 A1 12            [ 1]  441 	cp	a, #0x12
      0085EA 27 0C            [ 1]  442 	jreq	00118$
      0085EC 4B 0B            [ 1]  443 	push	#0x0b
      0085EE 4B 01            [ 1]  444 	push	#0x01
      0085F0 5F               [ 1]  445 	clrw	x
      0085F1 89               [ 2]  446 	pushw	x
      0085F2 AE 80 9B         [ 2]  447 	ldw	x, #(___str_0+0)
      0085F5 CD AB 90         [ 4]  448 	call	_assert_failed
      0085F8                        449 00118$:
                                    450 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0085F8 7B 03            [ 1]  451 	ld	a, (0x03, sp)
      0085FA A4 0F            [ 1]  452 	and	a, #0x0f
      0085FC 88               [ 1]  453 	push	a
      0085FD A6 01            [ 1]  454 	ld	a, #0x01
      0085FF 6B 02            [ 1]  455 	ld	(0x02, sp), a
      008601 84               [ 1]  456 	pop	a
      008602 4D               [ 1]  457 	tnz	a
      008603 27 05            [ 1]  458 	jreq	00293$
      008605                        459 00292$:
      008605 08 01            [ 1]  460 	sll	(0x01, sp)
      008607 4A               [ 1]  461 	dec	a
      008608 26 FB            [ 1]  462 	jrne	00292$
      00860A                        463 00293$:
                                    464 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00860A 7B 01            [ 1]  465 	ld	a, (0x01, sp)
      00860C 43               [ 1]  466 	cpl	a
      00860D 6B 02            [ 1]  467 	ld	(0x02, sp), a
                                    468 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      00860F 7B 03            [ 1]  469 	ld	a, (0x03, sp)
      008611 A5 10            [ 1]  470 	bcp	a, #0x10
      008613 26 15            [ 1]  471 	jrne	00108$
                                    472 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008615 C6 50 C7         [ 1]  473 	ld	a, 0x50c7
                                    474 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 271: if (NewState != DISABLE)
      008618 0D 06            [ 1]  475 	tnz	(0x06, sp)
      00861A 27 07            [ 1]  476 	jreq	00102$
                                    477 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00861C 1A 01            [ 1]  478 	or	a, (0x01, sp)
      00861E C7 50 C7         [ 1]  479 	ld	0x50c7, a
      008621 20 1A            [ 2]  480 	jra	00110$
      008623                        481 00102$:
                                    482 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008623 14 02            [ 1]  483 	and	a, (0x02, sp)
      008625 C7 50 C7         [ 1]  484 	ld	0x50c7, a
      008628 20 13            [ 2]  485 	jra	00110$
      00862A                        486 00108$:
                                    487 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00862A C6 50 CA         [ 1]  488 	ld	a, 0x50ca
                                    489 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 284: if (NewState != DISABLE)
      00862D 0D 06            [ 1]  490 	tnz	(0x06, sp)
      00862F 27 07            [ 1]  491 	jreq	00105$
                                    492 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008631 1A 01            [ 1]  493 	or	a, (0x01, sp)
      008633 C7 50 CA         [ 1]  494 	ld	0x50ca, a
      008636 20 05            [ 2]  495 	jra	00110$
      008638                        496 00105$:
                                    497 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008638 14 02            [ 1]  498 	and	a, (0x02, sp)
      00863A C7 50 CA         [ 1]  499 	ld	0x50ca, a
      00863D                        500 00110$:
                                    501 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 295: }
      00863D 5B 03            [ 2]  502 	addw	sp, #3
      00863F 85               [ 2]  503 	popw	x
      008640 84               [ 1]  504 	pop	a
      008641 FC               [ 2]  505 	jp	(x)
                                    506 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    507 ;	-----------------------------------------
                                    508 ;	 function CLK_ClockSwitchConfig
                                    509 ;	-----------------------------------------
      008642                        510 _CLK_ClockSwitchConfig:
      008642 89               [ 2]  511 	pushw	x
      008643 6B 02            [ 1]  512 	ld	(0x02, sp), a
                                    513 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 316: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      008645 7B 05            [ 1]  514 	ld	a, (0x05, sp)
      008647 A1 E1            [ 1]  515 	cp	a, #0xe1
      008649 27 18            [ 1]  516 	jreq	00140$
      00864B 7B 05            [ 1]  517 	ld	a, (0x05, sp)
      00864D A1 D2            [ 1]  518 	cp	a, #0xd2
      00864F 27 12            [ 1]  519 	jreq	00140$
      008651 7B 05            [ 1]  520 	ld	a, (0x05, sp)
      008653 A1 B4            [ 1]  521 	cp	a, #0xb4
      008655 27 0C            [ 1]  522 	jreq	00140$
      008657 4B 3C            [ 1]  523 	push	#0x3c
      008659 4B 01            [ 1]  524 	push	#0x01
      00865B 5F               [ 1]  525 	clrw	x
      00865C 89               [ 2]  526 	pushw	x
      00865D AE 80 9B         [ 2]  527 	ldw	x, #(___str_0+0)
      008660 CD AB 90         [ 4]  528 	call	_assert_failed
      008663                        529 00140$:
                                    530 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 317: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      008663 7B 02            [ 1]  531 	ld	a, (0x02, sp)
      008665 4A               [ 1]  532 	dec	a
      008666 26 05            [ 1]  533 	jrne	00309$
      008668 A6 01            [ 1]  534 	ld	a, #0x01
      00866A 6B 01            [ 1]  535 	ld	(0x01, sp), a
      00866C C5                     536 	.byte 0xc5
      00866D                        537 00309$:
      00866D 0F 01            [ 1]  538 	clr	(0x01, sp)
      00866F                        539 00310$:
      00866F 0D 02            [ 1]  540 	tnz	(0x02, sp)
      008671 27 10            [ 1]  541 	jreq	00148$
      008673 0D 01            [ 1]  542 	tnz	(0x01, sp)
      008675 26 0C            [ 1]  543 	jrne	00148$
      008677 4B 3D            [ 1]  544 	push	#0x3d
      008679 4B 01            [ 1]  545 	push	#0x01
      00867B 5F               [ 1]  546 	clrw	x
      00867C 89               [ 2]  547 	pushw	x
      00867D AE 80 9B         [ 2]  548 	ldw	x, #(___str_0+0)
      008680 CD AB 90         [ 4]  549 	call	_assert_failed
      008683                        550 00148$:
                                    551 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 318: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      008683 0D 06            [ 1]  552 	tnz	(0x06, sp)
      008685 27 11            [ 1]  553 	jreq	00153$
      008687 7B 06            [ 1]  554 	ld	a, (0x06, sp)
      008689 4A               [ 1]  555 	dec	a
      00868A 27 0C            [ 1]  556 	jreq	00153$
      00868C 4B 3E            [ 1]  557 	push	#0x3e
      00868E 4B 01            [ 1]  558 	push	#0x01
      008690 5F               [ 1]  559 	clrw	x
      008691 89               [ 2]  560 	pushw	x
      008692 AE 80 9B         [ 2]  561 	ldw	x, #(___str_0+0)
      008695 CD AB 90         [ 4]  562 	call	_assert_failed
      008698                        563 00153$:
                                    564 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 319: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      008698 0D 07            [ 1]  565 	tnz	(0x07, sp)
      00869A 27 11            [ 1]  566 	jreq	00158$
      00869C 7B 07            [ 1]  567 	ld	a, (0x07, sp)
      00869E 4A               [ 1]  568 	dec	a
      00869F 27 0C            [ 1]  569 	jreq	00158$
      0086A1 4B 3F            [ 1]  570 	push	#0x3f
      0086A3 4B 01            [ 1]  571 	push	#0x01
      0086A5 5F               [ 1]  572 	clrw	x
      0086A6 89               [ 2]  573 	pushw	x
      0086A7 AE 80 9B         [ 2]  574 	ldw	x, #(___str_0+0)
      0086AA CD AB 90         [ 4]  575 	call	_assert_failed
      0086AD                        576 00158$:
                                    577 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      0086AD C6 50 C3         [ 1]  578 	ld	a, 0x50c3
      0086B0 90 97            [ 1]  579 	ld	yl, a
                                    580 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0086B2 C6 50 C5         [ 1]  581 	ld	a, 0x50c5
      0086B5 97               [ 1]  582 	ld	xl, a
                                    583 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      0086B6 7B 01            [ 1]  584 	ld	a, (0x01, sp)
      0086B8 27 37            [ 1]  585 	jreq	00122$
                                    586 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0086BA 9F               [ 1]  587 	ld	a, xl
      0086BB AA 02            [ 1]  588 	or	a, #0x02
      0086BD C7 50 C5         [ 1]  589 	ld	0x50c5, a
      0086C0 C6 50 C5         [ 1]  590 	ld	a, 0x50c5
                                    591 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 331: if (ITState != DISABLE)
      0086C3 0D 06            [ 1]  592 	tnz	(0x06, sp)
      0086C5 27 07            [ 1]  593 	jreq	00102$
                                    594 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      0086C7 AA 04            [ 1]  595 	or	a, #0x04
      0086C9 C7 50 C5         [ 1]  596 	ld	0x50c5, a
      0086CC 20 05            [ 2]  597 	jra	00103$
      0086CE                        598 00102$:
                                    599 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0086CE A4 FB            [ 1]  600 	and	a, #0xfb
      0086D0 C7 50 C5         [ 1]  601 	ld	0x50c5, a
      0086D3                        602 00103$:
                                    603 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      0086D3 AE 50 C4         [ 2]  604 	ldw	x, #0x50c4
      0086D6 7B 05            [ 1]  605 	ld	a, (0x05, sp)
      0086D8 F7               [ 1]  606 	ld	(x), a
                                    607 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      0086D9 5F               [ 1]  608 	clrw	x
      0086DA 5A               [ 2]  609 	decw	x
      0086DB                        610 00105$:
      0086DB 72 01 50 C5 06   [ 2]  611 	btjf	0x50c5, #0, 00107$
      0086E0 5D               [ 2]  612 	tnzw	x
      0086E1 27 03            [ 1]  613 	jreq	00107$
                                    614 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 346: DownCounter--;
      0086E3 5A               [ 2]  615 	decw	x
      0086E4 20 F5            [ 2]  616 	jra	00105$
      0086E6                        617 00107$:
                                    618 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 349: if(DownCounter != 0)
      0086E6 5D               [ 2]  619 	tnzw	x
      0086E7 27 05            [ 1]  620 	jreq	00109$
                                    621 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 351: Swif = SUCCESS;
      0086E9 A6 01            [ 1]  622 	ld	a, #0x01
      0086EB 97               [ 1]  623 	ld	xl, a
      0086EC 20 34            [ 2]  624 	jra	00123$
      0086EE                        625 00109$:
                                    626 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 355: Swif = ERROR;
      0086EE 5F               [ 1]  627 	clrw	x
      0086EF 20 31            [ 2]  628 	jra	00123$
      0086F1                        629 00122$:
                                    630 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 361: if (ITState != DISABLE)
      0086F1 0D 06            [ 1]  631 	tnz	(0x06, sp)
      0086F3 27 08            [ 1]  632 	jreq	00112$
                                    633 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      0086F5 9F               [ 1]  634 	ld	a, xl
      0086F6 AA 04            [ 1]  635 	or	a, #0x04
      0086F8 C7 50 C5         [ 1]  636 	ld	0x50c5, a
      0086FB 20 06            [ 2]  637 	jra	00113$
      0086FD                        638 00112$:
                                    639 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0086FD 9F               [ 1]  640 	ld	a, xl
      0086FE A4 FB            [ 1]  641 	and	a, #0xfb
      008700 C7 50 C5         [ 1]  642 	ld	0x50c5, a
      008703                        643 00113$:
                                    644 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      008703 AE 50 C4         [ 2]  645 	ldw	x, #0x50c4
      008706 7B 05            [ 1]  646 	ld	a, (0x05, sp)
      008708 F7               [ 1]  647 	ld	(x), a
                                    648 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      008709 5F               [ 1]  649 	clrw	x
      00870A 5A               [ 2]  650 	decw	x
      00870B                        651 00115$:
      00870B 72 07 50 C5 06   [ 2]  652 	btjf	0x50c5, #3, 00117$
      008710 5D               [ 2]  653 	tnzw	x
      008711 27 03            [ 1]  654 	jreq	00117$
                                    655 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 376: DownCounter--;
      008713 5A               [ 2]  656 	decw	x
      008714 20 F5            [ 2]  657 	jra	00115$
      008716                        658 00117$:
                                    659 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 379: if(DownCounter != 0)
      008716 5D               [ 2]  660 	tnzw	x
      008717 27 08            [ 1]  661 	jreq	00119$
                                    662 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      008719 72 12 50 C5      [ 1]  663 	bset	0x50c5, #1
                                    664 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 383: Swif = SUCCESS;
      00871D A6 01            [ 1]  665 	ld	a, #0x01
      00871F 97               [ 1]  666 	ld	xl, a
                                    667 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 387: Swif = ERROR;
      008720 21                     668 	.byte 0x21
      008721                        669 00119$:
      008721 5F               [ 1]  670 	clrw	x
      008722                        671 00123$:
                                    672 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 390: if(Swif != ERROR)
      008722 9F               [ 1]  673 	ld	a, xl
      008723 4D               [ 1]  674 	tnz	a
      008724 27 2E            [ 1]  675 	jreq	00136$
                                    676 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      008726 0D 07            [ 1]  677 	tnz	(0x07, sp)
      008728 26 0C            [ 1]  678 	jrne	00132$
      00872A 90 9F            [ 1]  679 	ld	a, yl
      00872C A1 E1            [ 1]  680 	cp	a, #0xe1
      00872E 26 06            [ 1]  681 	jrne	00132$
                                    682 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008730 72 11 50 C0      [ 1]  683 	bres	0x50c0, #0
      008734 20 1E            [ 2]  684 	jra	00136$
      008736                        685 00132$:
                                    686 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      008736 0D 07            [ 1]  687 	tnz	(0x07, sp)
      008738 26 0C            [ 1]  688 	jrne	00128$
      00873A 90 9F            [ 1]  689 	ld	a, yl
      00873C A1 D2            [ 1]  690 	cp	a, #0xd2
      00873E 26 06            [ 1]  691 	jrne	00128$
                                    692 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008740 72 17 50 C0      [ 1]  693 	bres	0x50c0, #3
      008744 20 0E            [ 2]  694 	jra	00136$
      008746                        695 00128$:
                                    696 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      008746 0D 07            [ 1]  697 	tnz	(0x07, sp)
      008748 26 0A            [ 1]  698 	jrne	00136$
      00874A 90 9F            [ 1]  699 	ld	a, yl
      00874C A1 B4            [ 1]  700 	cp	a, #0xb4
      00874E 26 04            [ 1]  701 	jrne	00136$
                                    702 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008750 72 11 50 C1      [ 1]  703 	bres	0x50c1, #0
      008754                        704 00136$:
                                    705 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 406: return(Swif);
      008754 9F               [ 1]  706 	ld	a, xl
                                    707 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 407: }
      008755 1E 03            [ 2]  708 	ldw	x, (3, sp)
      008757 5B 07            [ 2]  709 	addw	sp, #7
      008759 FC               [ 2]  710 	jp	(x)
                                    711 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    712 ;	-----------------------------------------
                                    713 ;	 function CLK_HSIPrescalerConfig
                                    714 ;	-----------------------------------------
      00875A                        715 _CLK_HSIPrescalerConfig:
      00875A 88               [ 1]  716 	push	a
                                    717 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 418: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      00875B 6B 01            [ 1]  718 	ld	(0x01, sp), a
      00875D 27 1E            [ 1]  719 	jreq	00104$
      00875F 7B 01            [ 1]  720 	ld	a, (0x01, sp)
      008761 A1 08            [ 1]  721 	cp	a, #0x08
      008763 27 18            [ 1]  722 	jreq	00104$
      008765 7B 01            [ 1]  723 	ld	a, (0x01, sp)
      008767 A1 10            [ 1]  724 	cp	a, #0x10
      008769 27 12            [ 1]  725 	jreq	00104$
      00876B 7B 01            [ 1]  726 	ld	a, (0x01, sp)
      00876D A1 18            [ 1]  727 	cp	a, #0x18
      00876F 27 0C            [ 1]  728 	jreq	00104$
      008771 4B A2            [ 1]  729 	push	#0xa2
      008773 4B 01            [ 1]  730 	push	#0x01
      008775 5F               [ 1]  731 	clrw	x
      008776 89               [ 2]  732 	pushw	x
      008777 AE 80 9B         [ 2]  733 	ldw	x, #(___str_0+0)
      00877A CD AB 90         [ 4]  734 	call	_assert_failed
      00877D                        735 00104$:
                                    736 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00877D C6 50 C6         [ 1]  737 	ld	a, 0x50c6
      008780 A4 E7            [ 1]  738 	and	a, #0xe7
      008782 C7 50 C6         [ 1]  739 	ld	0x50c6, a
                                    740 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      008785 C6 50 C6         [ 1]  741 	ld	a, 0x50c6
      008788 1A 01            [ 1]  742 	or	a, (0x01, sp)
      00878A C7 50 C6         [ 1]  743 	ld	0x50c6, a
                                    744 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 425: }
      00878D 84               [ 1]  745 	pop	a
      00878E 81               [ 4]  746 	ret
                                    747 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    748 ;	-----------------------------------------
                                    749 ;	 function CLK_CCOConfig
                                    750 ;	-----------------------------------------
      00878F                        751 _CLK_CCOConfig:
      00878F 88               [ 1]  752 	push	a
                                    753 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 439: assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
      008790 4D               [ 1]  754 	tnz	a
      008791 27 3E            [ 1]  755 	jreq	00104$
      008793 A1 04            [ 1]  756 	cp	a, #0x04
      008795 27 3A            [ 1]  757 	jreq	00104$
      008797 A1 02            [ 1]  758 	cp	a, #0x02
      008799 27 36            [ 1]  759 	jreq	00104$
      00879B A1 08            [ 1]  760 	cp	a, #0x08
      00879D 27 32            [ 1]  761 	jreq	00104$
      00879F A1 0A            [ 1]  762 	cp	a, #0x0a
      0087A1 27 2E            [ 1]  763 	jreq	00104$
      0087A3 A1 0C            [ 1]  764 	cp	a, #0x0c
      0087A5 27 2A            [ 1]  765 	jreq	00104$
      0087A7 A1 0E            [ 1]  766 	cp	a, #0x0e
      0087A9 27 26            [ 1]  767 	jreq	00104$
      0087AB A1 10            [ 1]  768 	cp	a, #0x10
      0087AD 27 22            [ 1]  769 	jreq	00104$
      0087AF A1 12            [ 1]  770 	cp	a, #0x12
      0087B1 27 1E            [ 1]  771 	jreq	00104$
      0087B3 A1 14            [ 1]  772 	cp	a, #0x14
      0087B5 27 1A            [ 1]  773 	jreq	00104$
      0087B7 A1 16            [ 1]  774 	cp	a, #0x16
      0087B9 27 16            [ 1]  775 	jreq	00104$
      0087BB A1 18            [ 1]  776 	cp	a, #0x18
      0087BD 27 12            [ 1]  777 	jreq	00104$
      0087BF A1 1A            [ 1]  778 	cp	a, #0x1a
      0087C1 27 0E            [ 1]  779 	jreq	00104$
      0087C3 88               [ 1]  780 	push	a
      0087C4 4B B7            [ 1]  781 	push	#0xb7
      0087C6 4B 01            [ 1]  782 	push	#0x01
      0087C8 5F               [ 1]  783 	clrw	x
      0087C9 89               [ 2]  784 	pushw	x
      0087CA AE 80 9B         [ 2]  785 	ldw	x, #(___str_0+0)
      0087CD CD AB 90         [ 4]  786 	call	_assert_failed
      0087D0 84               [ 1]  787 	pop	a
      0087D1                        788 00104$:
                                    789 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      0087D1 AE 50 C9         [ 2]  790 	ldw	x, #0x50c9
      0087D4 88               [ 1]  791 	push	a
      0087D5 F6               [ 1]  792 	ld	a, (x)
      0087D6 A4 E1            [ 1]  793 	and	a, #0xe1
      0087D8 6B 02            [ 1]  794 	ld	(0x02, sp), a
      0087DA 84               [ 1]  795 	pop	a
      0087DB AE 50 C9         [ 2]  796 	ldw	x, #0x50c9
      0087DE 88               [ 1]  797 	push	a
      0087DF 7B 02            [ 1]  798 	ld	a, (0x02, sp)
      0087E1 F7               [ 1]  799 	ld	(x), a
      0087E2 84               [ 1]  800 	pop	a
                                    801 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      0087E3 AE 50 C9         [ 2]  802 	ldw	x, #0x50c9
      0087E6 88               [ 1]  803 	push	a
      0087E7 F6               [ 1]  804 	ld	a, (x)
      0087E8 6B 02            [ 1]  805 	ld	(0x02, sp), a
      0087EA 84               [ 1]  806 	pop	a
      0087EB 1A 01            [ 1]  807 	or	a, (0x01, sp)
      0087ED C7 50 C9         [ 1]  808 	ld	0x50c9, a
                                    809 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      0087F0 72 10 50 C9      [ 1]  810 	bset	0x50c9, #0
                                    811 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 449: }
      0087F4 84               [ 1]  812 	pop	a
      0087F5 81               [ 4]  813 	ret
                                    814 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    815 ;	-----------------------------------------
                                    816 ;	 function CLK_ITConfig
                                    817 ;	-----------------------------------------
      0087F6                        818 _CLK_ITConfig:
      0087F6 89               [ 2]  819 	pushw	x
      0087F7 6B 02            [ 1]  820 	ld	(0x02, sp), a
                                    821 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 462: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0087F9 0D 05            [ 1]  822 	tnz	(0x05, sp)
      0087FB 27 11            [ 1]  823 	jreq	00115$
      0087FD 7B 05            [ 1]  824 	ld	a, (0x05, sp)
      0087FF 4A               [ 1]  825 	dec	a
      008800 27 0C            [ 1]  826 	jreq	00115$
      008802 4B CE            [ 1]  827 	push	#0xce
      008804 4B 01            [ 1]  828 	push	#0x01
      008806 5F               [ 1]  829 	clrw	x
      008807 89               [ 2]  830 	pushw	x
      008808 AE 80 9B         [ 2]  831 	ldw	x, #(___str_0+0)
      00880B CD AB 90         [ 4]  832 	call	_assert_failed
      00880E                        833 00115$:
                                    834 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 463: assert_param(IS_CLK_IT_OK(CLK_IT));
      00880E 7B 02            [ 1]  835 	ld	a, (0x02, sp)
      008810 A0 0C            [ 1]  836 	sub	a, #0x0c
      008812 26 02            [ 1]  837 	jrne	00174$
      008814 4C               [ 1]  838 	inc	a
      008815 21                     839 	.byte 0x21
      008816                        840 00174$:
      008816 4F               [ 1]  841 	clr	a
      008817                        842 00175$:
      008817 88               [ 1]  843 	push	a
      008818 7B 03            [ 1]  844 	ld	a, (0x03, sp)
      00881A A1 1C            [ 1]  845 	cp	a, #0x1c
      00881C 84               [ 1]  846 	pop	a
      00881D 26 07            [ 1]  847 	jrne	00177$
      00881F 88               [ 1]  848 	push	a
      008820 A6 01            [ 1]  849 	ld	a, #0x01
      008822 6B 02            [ 1]  850 	ld	(0x02, sp), a
      008824 84               [ 1]  851 	pop	a
      008825 C5                     852 	.byte 0xc5
      008826                        853 00177$:
      008826 0F 01            [ 1]  854 	clr	(0x01, sp)
      008828                        855 00178$:
      008828 4D               [ 1]  856 	tnz	a
      008829 26 12            [ 1]  857 	jrne	00120$
      00882B 0D 01            [ 1]  858 	tnz	(0x01, sp)
      00882D 26 0E            [ 1]  859 	jrne	00120$
      00882F 88               [ 1]  860 	push	a
      008830 4B CF            [ 1]  861 	push	#0xcf
      008832 4B 01            [ 1]  862 	push	#0x01
      008834 5F               [ 1]  863 	clrw	x
      008835 89               [ 2]  864 	pushw	x
      008836 AE 80 9B         [ 2]  865 	ldw	x, #(___str_0+0)
      008839 CD AB 90         [ 4]  866 	call	_assert_failed
      00883C 84               [ 1]  867 	pop	a
      00883D                        868 00120$:
                                    869 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 465: if (NewState != DISABLE)
      00883D 0D 05            [ 1]  870 	tnz	(0x05, sp)
      00883F 27 1B            [ 1]  871 	jreq	00110$
                                    872 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 467: switch (CLK_IT)
      008841 4D               [ 1]  873 	tnz	a
      008842 26 0E            [ 1]  874 	jrne	00102$
      008844 7B 01            [ 1]  875 	ld	a, (0x01, sp)
      008846 27 2D            [ 1]  876 	jreq	00112$
                                    877 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      008848 C6 50 C5         [ 1]  878 	ld	a, 0x50c5
      00884B AA 04            [ 1]  879 	or	a, #0x04
      00884D C7 50 C5         [ 1]  880 	ld	0x50c5, a
                                    881 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 471: break;
      008850 20 23            [ 2]  882 	jra	00112$
                                    883 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      008852                        884 00102$:
                                    885 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      008852 C6 50 C8         [ 1]  886 	ld	a, 0x50c8
      008855 AA 04            [ 1]  887 	or	a, #0x04
      008857 C7 50 C8         [ 1]  888 	ld	0x50c8, a
                                    889 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 474: break;
      00885A 20 19            [ 2]  890 	jra	00112$
                                    891 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 477: }
      00885C                        892 00110$:
                                    893 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 481: switch (CLK_IT)
      00885C 4D               [ 1]  894 	tnz	a
      00885D 26 0E            [ 1]  895 	jrne	00106$
      00885F 7B 01            [ 1]  896 	ld	a, (0x01, sp)
      008861 27 12            [ 1]  897 	jreq	00112$
                                    898 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      008863 C6 50 C5         [ 1]  899 	ld	a, 0x50c5
      008866 A4 FB            [ 1]  900 	and	a, #0xfb
      008868 C7 50 C5         [ 1]  901 	ld	0x50c5, a
                                    902 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 485: break;
      00886B 20 08            [ 2]  903 	jra	00112$
                                    904 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      00886D                        905 00106$:
                                    906 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      00886D C6 50 C8         [ 1]  907 	ld	a, 0x50c8
      008870 A4 FB            [ 1]  908 	and	a, #0xfb
      008872 C7 50 C8         [ 1]  909 	ld	0x50c8, a
                                    910 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 491: }
      008875                        911 00112$:
                                    912 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 493: }
      008875 85               [ 2]  913 	popw	x
      008876 85               [ 2]  914 	popw	x
      008877 84               [ 1]  915 	pop	a
      008878 FC               [ 2]  916 	jp	(x)
                                    917 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    918 ;	-----------------------------------------
                                    919 ;	 function CLK_SYSCLKConfig
                                    920 ;	-----------------------------------------
      008879                        921 _CLK_SYSCLKConfig:
      008879 88               [ 1]  922 	push	a
                                    923 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 503: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      00887A 95               [ 1]  924 	ld	xh, a
      00887B 4D               [ 1]  925 	tnz	a
      00887C 27 4A            [ 1]  926 	jreq	00107$
      00887E 9E               [ 1]  927 	ld	a, xh
      00887F A1 08            [ 1]  928 	cp	a, #0x08
      008881 27 45            [ 1]  929 	jreq	00107$
      008883 9E               [ 1]  930 	ld	a, xh
      008884 A1 10            [ 1]  931 	cp	a, #0x10
      008886 27 40            [ 1]  932 	jreq	00107$
      008888 9E               [ 1]  933 	ld	a, xh
      008889 A1 18            [ 1]  934 	cp	a, #0x18
      00888B 27 3B            [ 1]  935 	jreq	00107$
      00888D 9E               [ 1]  936 	ld	a, xh
      00888E A1 80            [ 1]  937 	cp	a, #0x80
      008890 27 36            [ 1]  938 	jreq	00107$
      008892 9E               [ 1]  939 	ld	a, xh
      008893 A1 81            [ 1]  940 	cp	a, #0x81
      008895 27 31            [ 1]  941 	jreq	00107$
      008897 9E               [ 1]  942 	ld	a, xh
      008898 A1 82            [ 1]  943 	cp	a, #0x82
      00889A 27 2C            [ 1]  944 	jreq	00107$
      00889C 9E               [ 1]  945 	ld	a, xh
      00889D A1 83            [ 1]  946 	cp	a, #0x83
      00889F 27 27            [ 1]  947 	jreq	00107$
      0088A1 9E               [ 1]  948 	ld	a, xh
      0088A2 A1 84            [ 1]  949 	cp	a, #0x84
      0088A4 27 22            [ 1]  950 	jreq	00107$
      0088A6 9E               [ 1]  951 	ld	a, xh
      0088A7 A1 85            [ 1]  952 	cp	a, #0x85
      0088A9 27 1D            [ 1]  953 	jreq	00107$
      0088AB 9E               [ 1]  954 	ld	a, xh
      0088AC A1 86            [ 1]  955 	cp	a, #0x86
      0088AE 27 18            [ 1]  956 	jreq	00107$
      0088B0 9E               [ 1]  957 	ld	a, xh
      0088B1 A1 87            [ 1]  958 	cp	a, #0x87
      0088B3 27 13            [ 1]  959 	jreq	00107$
      0088B5 89               [ 2]  960 	pushw	x
      0088B6 4B F7            [ 1]  961 	push	#0xf7
      0088B8 4B 01            [ 1]  962 	push	#0x01
      0088BA 4B 00            [ 1]  963 	push	#0x00
      0088BC 4B 00            [ 1]  964 	push	#0x00
      0088BE AE 80 9B         [ 2]  965 	ldw	x, #(___str_0+0)
      0088C1 CD AB 90         [ 4]  966 	call	_assert_failed
      0088C4 02               [ 1]  967 	rlwa	x
      0088C5 84               [ 1]  968 	pop	a
      0088C6 01               [ 1]  969 	rrwa	x
      0088C7 84               [ 1]  970 	pop	a
      0088C8                        971 00107$:
                                    972 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0088C8 C6 50 C6         [ 1]  973 	ld	a, 0x50c6
                                    974 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      0088CB 5D               [ 2]  975 	tnzw	x
      0088CC 2B 14            [ 1]  976 	jrmi	00102$
                                    977 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0088CE A4 E7            [ 1]  978 	and	a, #0xe7
      0088D0 C7 50 C6         [ 1]  979 	ld	0x50c6, a
                                    980 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      0088D3 C6 50 C6         [ 1]  981 	ld	a, 0x50c6
      0088D6 6B 01            [ 1]  982 	ld	(0x01, sp), a
      0088D8 9E               [ 1]  983 	ld	a, xh
      0088D9 A4 18            [ 1]  984 	and	a, #0x18
      0088DB 1A 01            [ 1]  985 	or	a, (0x01, sp)
      0088DD C7 50 C6         [ 1]  986 	ld	0x50c6, a
      0088E0 20 12            [ 2]  987 	jra	00104$
      0088E2                        988 00102$:
                                    989 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      0088E2 A4 F8            [ 1]  990 	and	a, #0xf8
      0088E4 C7 50 C6         [ 1]  991 	ld	0x50c6, a
                                    992 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      0088E7 C6 50 C6         [ 1]  993 	ld	a, 0x50c6
      0088EA 6B 01            [ 1]  994 	ld	(0x01, sp), a
      0088EC 9E               [ 1]  995 	ld	a, xh
      0088ED A4 07            [ 1]  996 	and	a, #0x07
      0088EF 1A 01            [ 1]  997 	or	a, (0x01, sp)
      0088F1 C7 50 C6         [ 1]  998 	ld	0x50c6, a
      0088F4                        999 00104$:
                                   1000 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 515: }
      0088F4 84               [ 1] 1001 	pop	a
      0088F5 81               [ 4] 1002 	ret
                                   1003 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                   1004 ;	-----------------------------------------
                                   1005 ;	 function CLK_SWIMConfig
                                   1006 ;	-----------------------------------------
      0088F6                       1007 _CLK_SWIMConfig:
      0088F6 88               [ 1] 1008 	push	a
                                   1009 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 526: assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
      0088F7 6B 01            [ 1] 1010 	ld	(0x01, sp), a
      0088F9 27 11            [ 1] 1011 	jreq	00107$
      0088FB 7B 01            [ 1] 1012 	ld	a, (0x01, sp)
      0088FD 4A               [ 1] 1013 	dec	a
      0088FE 27 0C            [ 1] 1014 	jreq	00107$
      008900 4B 0E            [ 1] 1015 	push	#0x0e
      008902 4B 02            [ 1] 1016 	push	#0x02
      008904 5F               [ 1] 1017 	clrw	x
      008905 89               [ 2] 1018 	pushw	x
      008906 AE 80 9B         [ 2] 1019 	ldw	x, #(___str_0+0)
      008909 CD AB 90         [ 4] 1020 	call	_assert_failed
      00890C                       1021 00107$:
                                   1022 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      00890C C6 50 CD         [ 1] 1023 	ld	a, 0x50cd
                                   1024 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      00890F 0D 01            [ 1] 1025 	tnz	(0x01, sp)
      008911 27 07            [ 1] 1026 	jreq	00102$
                                   1027 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      008913 AA 01            [ 1] 1028 	or	a, #0x01
      008915 C7 50 CD         [ 1] 1029 	ld	0x50cd, a
      008918 20 05            [ 2] 1030 	jra	00104$
      00891A                       1031 00102$:
                                   1032 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      00891A A4 FE            [ 1] 1033 	and	a, #0xfe
      00891C C7 50 CD         [ 1] 1034 	ld	0x50cd, a
      00891F                       1035 00104$:
                                   1036 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 538: }
      00891F 84               [ 1] 1037 	pop	a
      008920 81               [ 4] 1038 	ret
                                   1039 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function CLK_ClockSecuritySystemEnable
                                   1042 ;	-----------------------------------------
      008921                       1043 _CLK_ClockSecuritySystemEnable:
                                   1044 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      008921 72 10 50 C8      [ 1] 1045 	bset	0x50c8, #0
                                   1046 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 551: }
      008925 81               [ 4] 1047 	ret
                                   1048 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                   1049 ;	-----------------------------------------
                                   1050 ;	 function CLK_GetSYSCLKSource
                                   1051 ;	-----------------------------------------
      008926                       1052 _CLK_GetSYSCLKSource:
                                   1053 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      008926 C6 50 C3         [ 1] 1054 	ld	a, 0x50c3
                                   1055 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 562: }
      008929 81               [ 4] 1056 	ret
                                   1057 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                   1058 ;	-----------------------------------------
                                   1059 ;	 function CLK_GetClockFreq
                                   1060 ;	-----------------------------------------
      00892A                       1061 _CLK_GetClockFreq:
      00892A 52 04            [ 2] 1062 	sub	sp, #4
                                   1063 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      00892C C6 50 C3         [ 1] 1064 	ld	a, 0x50c3
                                   1065 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      00892F 6B 04            [ 1] 1066 	ld	(0x04, sp), a
      008931 A1 E1            [ 1] 1067 	cp	a, #0xe1
      008933 26 26            [ 1] 1068 	jrne	00105$
                                   1069 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      008935 C6 50 C6         [ 1] 1070 	ld	a, 0x50c6
      008938 A4 18            [ 1] 1071 	and	a, #0x18
                                   1072 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      00893A 44               [ 1] 1073 	srl	a
      00893B 44               [ 1] 1074 	srl	a
      00893C 44               [ 1] 1075 	srl	a
                                   1076 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      00893D 5F               [ 1] 1077 	clrw	x
      00893E 97               [ 1] 1078 	ld	xl, a
      00893F D6 80 8F         [ 1] 1079 	ld	a, (_HSIDivFactor+0, x)
                                   1080 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      008942 5F               [ 1] 1081 	clrw	x
      008943 97               [ 1] 1082 	ld	xl, a
      008944 90 5F            [ 1] 1083 	clrw	y
      008946 89               [ 2] 1084 	pushw	x
      008947 90 89            [ 2] 1085 	pushw	y
      008949 4B 00            [ 1] 1086 	push	#0x00
      00894B 4B 24            [ 1] 1087 	push	#0x24
      00894D 4B F4            [ 1] 1088 	push	#0xf4
      00894F 4B 00            [ 1] 1089 	push	#0x00
      008951 CD B2 4A         [ 4] 1090 	call	__divulong
      008954 5B 08            [ 2] 1091 	addw	sp, #8
      008956 51               [ 1] 1092 	exgw	x, y
      008957 17 03            [ 2] 1093 	ldw	(0x03, sp), y
      008959 20 17            [ 2] 1094 	jra	00106$
      00895B                       1095 00105$:
                                   1096 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      00895B 7B 04            [ 1] 1097 	ld	a, (0x04, sp)
      00895D A1 D2            [ 1] 1098 	cp	a, #0xd2
      00895F 26 09            [ 1] 1099 	jrne	00102$
                                   1100 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      008961 AE F4 00         [ 2] 1101 	ldw	x, #0xf400
      008964 1F 03            [ 2] 1102 	ldw	(0x03, sp), x
      008966 5F               [ 1] 1103 	clrw	x
      008967 5C               [ 1] 1104 	incw	x
      008968 20 08            [ 2] 1105 	jra	00106$
      00896A                       1106 00102$:
                                   1107 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      00896A AE 24 00         [ 2] 1108 	ldw	x, #0x2400
      00896D 1F 03            [ 2] 1109 	ldw	(0x03, sp), x
      00896F AE 00 F4         [ 2] 1110 	ldw	x, #0x00f4
      008972                       1111 00106$:
                                   1112 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      008972 51               [ 1] 1113 	exgw	x, y
      008973 1E 03            [ 2] 1114 	ldw	x, (0x03, sp)
                                   1115 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 595: }
      008975 5B 04            [ 2] 1116 	addw	sp, #4
      008977 81               [ 4] 1117 	ret
                                   1118 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                   1119 ;	-----------------------------------------
                                   1120 ;	 function CLK_AdjustHSICalibrationValue
                                   1121 ;	-----------------------------------------
      008978                       1122 _CLK_AdjustHSICalibrationValue:
      008978 88               [ 1] 1123 	push	a
                                   1124 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 607: assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
      008979 4D               [ 1] 1125 	tnz	a
      00897A 27 2A            [ 1] 1126 	jreq	00104$
      00897C A1 01            [ 1] 1127 	cp	a, #0x01
      00897E 27 26            [ 1] 1128 	jreq	00104$
      008980 A1 02            [ 1] 1129 	cp	a, #0x02
      008982 27 22            [ 1] 1130 	jreq	00104$
      008984 A1 03            [ 1] 1131 	cp	a, #0x03
      008986 27 1E            [ 1] 1132 	jreq	00104$
      008988 A1 04            [ 1] 1133 	cp	a, #0x04
      00898A 27 1A            [ 1] 1134 	jreq	00104$
      00898C A1 05            [ 1] 1135 	cp	a, #0x05
      00898E 27 16            [ 1] 1136 	jreq	00104$
      008990 A1 06            [ 1] 1137 	cp	a, #0x06
      008992 27 12            [ 1] 1138 	jreq	00104$
      008994 A1 07            [ 1] 1139 	cp	a, #0x07
      008996 27 0E            [ 1] 1140 	jreq	00104$
      008998 88               [ 1] 1141 	push	a
      008999 4B 5F            [ 1] 1142 	push	#0x5f
      00899B 4B 02            [ 1] 1143 	push	#0x02
      00899D 5F               [ 1] 1144 	clrw	x
      00899E 89               [ 2] 1145 	pushw	x
      00899F AE 80 9B         [ 2] 1146 	ldw	x, #(___str_0+0)
      0089A2 CD AB 90         [ 4] 1147 	call	_assert_failed
      0089A5 84               [ 1] 1148 	pop	a
      0089A6                       1149 00104$:
                                   1150 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      0089A6 AE 50 CC         [ 2] 1151 	ldw	x, #0x50cc
      0089A9 88               [ 1] 1152 	push	a
      0089AA F6               [ 1] 1153 	ld	a, (x)
      0089AB A4 F8            [ 1] 1154 	and	a, #0xf8
      0089AD 6B 02            [ 1] 1155 	ld	(0x02, sp), a
      0089AF 84               [ 1] 1156 	pop	a
      0089B0 1A 01            [ 1] 1157 	or	a, (0x01, sp)
      0089B2 C7 50 CC         [ 1] 1158 	ld	0x50cc, a
                                   1159 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 611: }
      0089B5 84               [ 1] 1160 	pop	a
      0089B6 81               [ 4] 1161 	ret
                                   1162 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                   1163 ;	-----------------------------------------
                                   1164 ;	 function CLK_SYSCLKEmergencyClear
                                   1165 ;	-----------------------------------------
      0089B7                       1166 _CLK_SYSCLKEmergencyClear:
                                   1167 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      0089B7 72 11 50 C5      [ 1] 1168 	bres	0x50c5, #0
                                   1169 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 625: }
      0089BB 81               [ 4] 1170 	ret
                                   1171 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                   1172 ;	-----------------------------------------
                                   1173 ;	 function CLK_GetFlagStatus
                                   1174 ;	-----------------------------------------
      0089BC                       1175 _CLK_GetFlagStatus:
                                   1176 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 641: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      0089BC 90 93            [ 1] 1177 	ldw	y, x
      0089BE A3 01 10         [ 2] 1178 	cpw	x, #0x0110
      0089C1 27 3C            [ 1] 1179 	jreq	00119$
      0089C3 A3 01 02         [ 2] 1180 	cpw	x, #0x0102
      0089C6 27 37            [ 1] 1181 	jreq	00119$
      0089C8 A3 02 02         [ 2] 1182 	cpw	x, #0x0202
      0089CB 27 32            [ 1] 1183 	jreq	00119$
      0089CD A3 03 08         [ 2] 1184 	cpw	x, #0x0308
      0089D0 27 2D            [ 1] 1185 	jreq	00119$
      0089D2 A3 03 01         [ 2] 1186 	cpw	x, #0x0301
      0089D5 27 28            [ 1] 1187 	jreq	00119$
      0089D7 A3 04 08         [ 2] 1188 	cpw	x, #0x0408
      0089DA 27 23            [ 1] 1189 	jreq	00119$
      0089DC A3 04 02         [ 2] 1190 	cpw	x, #0x0402
      0089DF 27 1E            [ 1] 1191 	jreq	00119$
      0089E1 A3 05 04         [ 2] 1192 	cpw	x, #0x0504
      0089E4 27 19            [ 1] 1193 	jreq	00119$
      0089E6 A3 05 02         [ 2] 1194 	cpw	x, #0x0502
      0089E9 27 14            [ 1] 1195 	jreq	00119$
      0089EB 89               [ 2] 1196 	pushw	x
      0089EC 90 89            [ 2] 1197 	pushw	y
      0089EE 4B 81            [ 1] 1198 	push	#0x81
      0089F0 4B 02            [ 1] 1199 	push	#0x02
      0089F2 4B 00            [ 1] 1200 	push	#0x00
      0089F4 4B 00            [ 1] 1201 	push	#0x00
      0089F6 AE 80 9B         [ 2] 1202 	ldw	x, #(___str_0+0)
      0089F9 CD AB 90         [ 4] 1203 	call	_assert_failed
      0089FC 90 85            [ 2] 1204 	popw	y
      0089FE 85               [ 2] 1205 	popw	x
      0089FF                       1206 00119$:
                                   1207 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      0089FF 4F               [ 1] 1208 	clr	a
                                   1209 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      008A00 97               [ 1] 1210 	ld	xl, a
      008A01 A3 01 00         [ 2] 1211 	cpw	x, #0x0100
      008A04 26 05            [ 1] 1212 	jrne	00111$
                                   1213 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      008A06 C6 50 C0         [ 1] 1214 	ld	a, 0x50c0
      008A09 20 21            [ 2] 1215 	jra	00112$
      008A0B                       1216 00111$:
                                   1217 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      008A0B A3 02 00         [ 2] 1218 	cpw	x, #0x0200
      008A0E 26 05            [ 1] 1219 	jrne	00108$
                                   1220 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      008A10 C6 50 C1         [ 1] 1221 	ld	a, 0x50c1
      008A13 20 17            [ 2] 1222 	jra	00112$
      008A15                       1223 00108$:
                                   1224 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      008A15 A3 03 00         [ 2] 1225 	cpw	x, #0x0300
      008A18 26 05            [ 1] 1226 	jrne	00105$
                                   1227 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      008A1A C6 50 C5         [ 1] 1228 	ld	a, 0x50c5
      008A1D 20 0D            [ 2] 1229 	jra	00112$
      008A1F                       1230 00105$:
                                   1231 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      008A1F A3 04 00         [ 2] 1232 	cpw	x, #0x0400
      008A22 26 05            [ 1] 1233 	jrne	00102$
                                   1234 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      008A24 C6 50 C8         [ 1] 1235 	ld	a, 0x50c8
      008A27 20 03            [ 2] 1236 	jra	00112$
      008A29                       1237 00102$:
                                   1238 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      008A29 C6 50 C9         [ 1] 1239 	ld	a, 0x50c9
      008A2C                       1240 00112$:
                                   1241 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      008A2C 93               [ 1] 1242 	ldw	x, y
      008A2D 89               [ 2] 1243 	pushw	x
      008A2E 14 02            [ 1] 1244 	and	a, (2, sp)
      008A30 85               [ 2] 1245 	popw	x
      008A31 4D               [ 1] 1246 	tnz	a
      008A32 27 03            [ 1] 1247 	jreq	00114$
                                   1248 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 670: bitstatus = SET;
      008A34 A6 01            [ 1] 1249 	ld	a, #0x01
      008A36 81               [ 4] 1250 	ret
      008A37                       1251 00114$:
                                   1252 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 674: bitstatus = RESET;
      008A37 4F               [ 1] 1253 	clr	a
                                   1254 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                                   1255 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 679: }
      008A38 81               [ 4] 1256 	ret
                                   1257 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1258 ;	-----------------------------------------
                                   1259 ;	 function CLK_GetITStatus
                                   1260 ;	-----------------------------------------
      008A39                       1261 _CLK_GetITStatus:
      008A39 88               [ 1] 1262 	push	a
                                   1263 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 692: assert_param(IS_CLK_IT_OK(CLK_IT));
      008A3A 6B 01            [ 1] 1264 	ld	(0x01, sp), a
      008A3C A0 1C            [ 1] 1265 	sub	a, #0x1c
      008A3E 26 02            [ 1] 1266 	jrne	00143$
      008A40 4C               [ 1] 1267 	inc	a
      008A41 21                    1268 	.byte 0x21
      008A42                       1269 00143$:
      008A42 4F               [ 1] 1270 	clr	a
      008A43                       1271 00144$:
      008A43 88               [ 1] 1272 	push	a
      008A44 7B 02            [ 1] 1273 	ld	a, (0x02, sp)
      008A46 A1 0C            [ 1] 1274 	cp	a, #0x0c
      008A48 84               [ 1] 1275 	pop	a
      008A49 27 11            [ 1] 1276 	jreq	00113$
      008A4B 4D               [ 1] 1277 	tnz	a
      008A4C 26 0E            [ 1] 1278 	jrne	00113$
      008A4E 88               [ 1] 1279 	push	a
      008A4F 4B B4            [ 1] 1280 	push	#0xb4
      008A51 4B 02            [ 1] 1281 	push	#0x02
      008A53 5F               [ 1] 1282 	clrw	x
      008A54 89               [ 2] 1283 	pushw	x
      008A55 AE 80 9B         [ 2] 1284 	ldw	x, #(___str_0+0)
      008A58 CD AB 90         [ 4] 1285 	call	_assert_failed
      008A5B 84               [ 1] 1286 	pop	a
      008A5C                       1287 00113$:
                                   1288 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      008A5C 4D               [ 1] 1289 	tnz	a
      008A5D 27 0F            [ 1] 1290 	jreq	00108$
                                   1291 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008A5F C6 50 C5         [ 1] 1292 	ld	a, 0x50c5
      008A62 14 01            [ 1] 1293 	and	a, (0x01, sp)
                                   1294 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 699: bitstatus = SET;
      008A64 A0 0C            [ 1] 1295 	sub	a, #0x0c
      008A66 26 03            [ 1] 1296 	jrne	00102$
      008A68 4C               [ 1] 1297 	inc	a
      008A69 20 0F            [ 2] 1298 	jra	00109$
      008A6B                       1299 00102$:
                                   1300 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 703: bitstatus = RESET;
      008A6B 4F               [ 1] 1301 	clr	a
      008A6C 20 0C            [ 2] 1302 	jra	00109$
      008A6E                       1303 00108$:
                                   1304 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008A6E C6 50 C8         [ 1] 1305 	ld	a, 0x50c8
      008A71 14 01            [ 1] 1306 	and	a, (0x01, sp)
                                   1307 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 711: bitstatus = SET;
      008A73 A0 0C            [ 1] 1308 	sub	a, #0x0c
      008A75 26 02            [ 1] 1309 	jrne	00105$
      008A77 4C               [ 1] 1310 	inc	a
                                   1311 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 715: bitstatus = RESET;
      008A78 21                    1312 	.byte 0x21
      008A79                       1313 00105$:
      008A79 4F               [ 1] 1314 	clr	a
      008A7A                       1315 00109$:
                                   1316 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 720: return bitstatus;
                                   1317 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 721: }
      008A7A 5B 01            [ 2] 1318 	addw	sp, #1
      008A7C 81               [ 4] 1319 	ret
                                   1320 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1321 ;	-----------------------------------------
                                   1322 ;	 function CLK_ClearITPendingBit
                                   1323 ;	-----------------------------------------
      008A7D                       1324 _CLK_ClearITPendingBit:
                                   1325 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 732: assert_param(IS_CLK_IT_OK(CLK_IT));
      008A7D 97               [ 1] 1326 	ld	xl, a
      008A7E A0 0C            [ 1] 1327 	sub	a, #0x0c
      008A80 26 02            [ 1] 1328 	jrne	00127$
      008A82 4C               [ 1] 1329 	inc	a
      008A83 21                    1330 	.byte 0x21
      008A84                       1331 00127$:
      008A84 4F               [ 1] 1332 	clr	a
      008A85                       1333 00128$:
      008A85 4D               [ 1] 1334 	tnz	a
      008A86 26 15            [ 1] 1335 	jrne	00107$
      008A88 88               [ 1] 1336 	push	a
      008A89 9F               [ 1] 1337 	ld	a, xl
      008A8A A1 1C            [ 1] 1338 	cp	a, #0x1c
      008A8C 84               [ 1] 1339 	pop	a
      008A8D 27 0E            [ 1] 1340 	jreq	00107$
      008A8F 88               [ 1] 1341 	push	a
      008A90 4B DC            [ 1] 1342 	push	#0xdc
      008A92 4B 02            [ 1] 1343 	push	#0x02
      008A94 5F               [ 1] 1344 	clrw	x
      008A95 89               [ 2] 1345 	pushw	x
      008A96 AE 80 9B         [ 2] 1346 	ldw	x, #(___str_0+0)
      008A99 CD AB 90         [ 4] 1347 	call	_assert_failed
      008A9C 84               [ 1] 1348 	pop	a
      008A9D                       1349 00107$:
                                   1350 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      008A9D 4D               [ 1] 1351 	tnz	a
      008A9E 27 05            [ 1] 1352 	jreq	00102$
                                   1353 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      008AA0 72 17 50 C8      [ 1] 1354 	bres	0x50c8, #3
      008AA4 81               [ 4] 1355 	ret
      008AA5                       1356 00102$:
                                   1357 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      008AA5 72 17 50 C5      [ 1] 1358 	bres	0x50c5, #3
                                   1359 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 745: }
      008AA9 81               [ 4] 1360 	ret
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
      00809B 2F 55 73 65 72 73 2F  1379 	.ascii "/Users/alekseydunaev/.platformio/packages/framework-ststm8sp"
             61 6C 65 6B 73 65 79
             64 75 6E 61 65 76 2F
             2E 70 6C 61 74 66 6F
             72 6D 69 6F 2F 70 61
             63 6B 61 67 65 73 2F
             66 72 61 6D 65 77 6F
             72 6B 2D 73 74 73 74
             6D 38 73 70
      0080D7 6C 2F 4C 69 62 72 61  1380 	.ascii "l/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c"
             72 69 65 73 2F 53 54
             4D 38 53 5F 53 74 64
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 63 6C 6B 2E
             63
      008109 00                    1381 	.db 0x00
                                   1382 	.area CODE
                                   1383 	.area INITIALIZER
                                   1384 	.area CABS (ABS)
