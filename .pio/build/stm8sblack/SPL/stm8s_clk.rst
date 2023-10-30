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
      008288                         78 _CLK_DeInit:
                                     79 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      008288 35 01 50 C0      [ 1]   80 	mov	0x50c0+0, #0x01
                                     81 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      00828C 35 00 50 C1      [ 1]   82 	mov	0x50c1+0, #0x00
                                     83 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      008290 35 E1 50 C4      [ 1]   84 	mov	0x50c4+0, #0xe1
                                     85 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      008294 35 00 50 C5      [ 1]   86 	mov	0x50c5+0, #0x00
                                     87 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      008298 35 18 50 C6      [ 1]   88 	mov	0x50c6+0, #0x18
                                     89 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      00829C 35 FF 50 C7      [ 1]   90 	mov	0x50c7+0, #0xff
                                     91 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      0082A0 35 FF 50 CA      [ 1]   92 	mov	0x50ca+0, #0xff
                                     93 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      0082A4 35 00 50 C8      [ 1]   94 	mov	0x50c8+0, #0x00
                                     95 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      0082A8 35 00 50 C9      [ 1]   96 	mov	0x50c9+0, #0x00
                                     97 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      0082AC                         98 00101$:
      0082AC 72 00 50 C9 FB   [ 2]   99 	btjt	0x50c9, #0, 00101$
                                    100 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      0082B1 35 00 50 C9      [ 1]  101 	mov	0x50c9+0, #0x00
                                    102 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      0082B5 35 00 50 CC      [ 1]  103 	mov	0x50cc+0, #0x00
                                    104 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      0082B9 35 00 50 CD      [ 1]  105 	mov	0x50cd+0, #0x00
                                    106 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 88: }
      0082BD 81               [ 4]  107 	ret
                                    108 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    109 ;	-----------------------------------------
                                    110 ;	 function CLK_FastHaltWakeUpCmd
                                    111 ;	-----------------------------------------
      0082BE                        112 _CLK_FastHaltWakeUpCmd:
      0082BE 88               [ 1]  113 	push	a
                                    114 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 102: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0082BF 6B 01            [ 1]  115 	ld	(0x01, sp), a
      0082C1 27 11            [ 1]  116 	jreq	00107$
      0082C3 7B 01            [ 1]  117 	ld	a, (0x01, sp)
      0082C5 4A               [ 1]  118 	dec	a
      0082C6 27 0C            [ 1]  119 	jreq	00107$
      0082C8 4B 66            [ 1]  120 	push	#0x66
      0082CA 5F               [ 1]  121 	clrw	x
      0082CB 89               [ 2]  122 	pushw	x
      0082CC 4B 00            [ 1]  123 	push	#0x00
      0082CE AE 80 9B         [ 2]  124 	ldw	x, #(___str_0+0)
      0082D1 CD AA 54         [ 4]  125 	call	_assert_failed
      0082D4                        126 00107$:
                                    127 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      0082D4 C6 50 C0         [ 1]  128 	ld	a, 0x50c0
                                    129 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 104: if (NewState != DISABLE)
      0082D7 0D 01            [ 1]  130 	tnz	(0x01, sp)
      0082D9 27 07            [ 1]  131 	jreq	00102$
                                    132 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      0082DB AA 04            [ 1]  133 	or	a, #0x04
      0082DD C7 50 C0         [ 1]  134 	ld	0x50c0, a
      0082E0 20 05            [ 2]  135 	jra	00104$
      0082E2                        136 00102$:
                                    137 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      0082E2 A4 FB            [ 1]  138 	and	a, #0xfb
      0082E4 C7 50 C0         [ 1]  139 	ld	0x50c0, a
      0082E7                        140 00104$:
                                    141 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 114: }
      0082E7 84               [ 1]  142 	pop	a
      0082E8 81               [ 4]  143 	ret
                                    144 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    145 ;	-----------------------------------------
                                    146 ;	 function CLK_HSECmd
                                    147 ;	-----------------------------------------
      0082E9                        148 _CLK_HSECmd:
      0082E9 88               [ 1]  149 	push	a
                                    150 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 124: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0082EA 6B 01            [ 1]  151 	ld	(0x01, sp), a
      0082EC 27 11            [ 1]  152 	jreq	00107$
      0082EE 7B 01            [ 1]  153 	ld	a, (0x01, sp)
      0082F0 4A               [ 1]  154 	dec	a
      0082F1 27 0C            [ 1]  155 	jreq	00107$
      0082F3 4B 7C            [ 1]  156 	push	#0x7c
      0082F5 5F               [ 1]  157 	clrw	x
      0082F6 89               [ 2]  158 	pushw	x
      0082F7 4B 00            [ 1]  159 	push	#0x00
      0082F9 AE 80 9B         [ 2]  160 	ldw	x, #(___str_0+0)
      0082FC CD AA 54         [ 4]  161 	call	_assert_failed
      0082FF                        162 00107$:
                                    163 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0082FF C6 50 C1         [ 1]  164 	ld	a, 0x50c1
                                    165 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 126: if (NewState != DISABLE)
      008302 0D 01            [ 1]  166 	tnz	(0x01, sp)
      008304 27 07            [ 1]  167 	jreq	00102$
                                    168 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      008306 AA 01            [ 1]  169 	or	a, #0x01
      008308 C7 50 C1         [ 1]  170 	ld	0x50c1, a
      00830B 20 05            [ 2]  171 	jra	00104$
      00830D                        172 00102$:
                                    173 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00830D A4 FE            [ 1]  174 	and	a, #0xfe
      00830F C7 50 C1         [ 1]  175 	ld	0x50c1, a
      008312                        176 00104$:
                                    177 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 136: }
      008312 84               [ 1]  178 	pop	a
      008313 81               [ 4]  179 	ret
                                    180 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    181 ;	-----------------------------------------
                                    182 ;	 function CLK_HSICmd
                                    183 ;	-----------------------------------------
      008314                        184 _CLK_HSICmd:
      008314 88               [ 1]  185 	push	a
                                    186 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 146: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008315 6B 01            [ 1]  187 	ld	(0x01, sp), a
      008317 27 11            [ 1]  188 	jreq	00107$
      008319 7B 01            [ 1]  189 	ld	a, (0x01, sp)
      00831B 4A               [ 1]  190 	dec	a
      00831C 27 0C            [ 1]  191 	jreq	00107$
      00831E 4B 92            [ 1]  192 	push	#0x92
      008320 5F               [ 1]  193 	clrw	x
      008321 89               [ 2]  194 	pushw	x
      008322 4B 00            [ 1]  195 	push	#0x00
      008324 AE 80 9B         [ 2]  196 	ldw	x, #(___str_0+0)
      008327 CD AA 54         [ 4]  197 	call	_assert_failed
      00832A                        198 00107$:
                                    199 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      00832A C6 50 C0         [ 1]  200 	ld	a, 0x50c0
                                    201 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 148: if (NewState != DISABLE)
      00832D 0D 01            [ 1]  202 	tnz	(0x01, sp)
      00832F 27 07            [ 1]  203 	jreq	00102$
                                    204 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      008331 AA 01            [ 1]  205 	or	a, #0x01
      008333 C7 50 C0         [ 1]  206 	ld	0x50c0, a
      008336 20 05            [ 2]  207 	jra	00104$
      008338                        208 00102$:
                                    209 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008338 A4 FE            [ 1]  210 	and	a, #0xfe
      00833A C7 50 C0         [ 1]  211 	ld	0x50c0, a
      00833D                        212 00104$:
                                    213 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 158: }
      00833D 84               [ 1]  214 	pop	a
      00833E 81               [ 4]  215 	ret
                                    216 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    217 ;	-----------------------------------------
                                    218 ;	 function CLK_LSICmd
                                    219 ;	-----------------------------------------
      00833F                        220 _CLK_LSICmd:
      00833F 88               [ 1]  221 	push	a
                                    222 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 169: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008340 6B 01            [ 1]  223 	ld	(0x01, sp), a
      008342 27 11            [ 1]  224 	jreq	00107$
      008344 7B 01            [ 1]  225 	ld	a, (0x01, sp)
      008346 4A               [ 1]  226 	dec	a
      008347 27 0C            [ 1]  227 	jreq	00107$
      008349 4B A9            [ 1]  228 	push	#0xa9
      00834B 5F               [ 1]  229 	clrw	x
      00834C 89               [ 2]  230 	pushw	x
      00834D 4B 00            [ 1]  231 	push	#0x00
      00834F AE 80 9B         [ 2]  232 	ldw	x, #(___str_0+0)
      008352 CD AA 54         [ 4]  233 	call	_assert_failed
      008355                        234 00107$:
                                    235 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      008355 C6 50 C0         [ 1]  236 	ld	a, 0x50c0
                                    237 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 171: if (NewState != DISABLE)
      008358 0D 01            [ 1]  238 	tnz	(0x01, sp)
      00835A 27 07            [ 1]  239 	jreq	00102$
                                    240 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      00835C AA 08            [ 1]  241 	or	a, #0x08
      00835E C7 50 C0         [ 1]  242 	ld	0x50c0, a
      008361 20 05            [ 2]  243 	jra	00104$
      008363                        244 00102$:
                                    245 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008363 A4 F7            [ 1]  246 	and	a, #0xf7
      008365 C7 50 C0         [ 1]  247 	ld	0x50c0, a
      008368                        248 00104$:
                                    249 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 181: }
      008368 84               [ 1]  250 	pop	a
      008369 81               [ 4]  251 	ret
                                    252 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    253 ;	-----------------------------------------
                                    254 ;	 function CLK_CCOCmd
                                    255 ;	-----------------------------------------
      00836A                        256 _CLK_CCOCmd:
      00836A 88               [ 1]  257 	push	a
                                    258 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 192: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00836B 6B 01            [ 1]  259 	ld	(0x01, sp), a
      00836D 27 11            [ 1]  260 	jreq	00107$
      00836F 7B 01            [ 1]  261 	ld	a, (0x01, sp)
      008371 4A               [ 1]  262 	dec	a
      008372 27 0C            [ 1]  263 	jreq	00107$
      008374 4B C0            [ 1]  264 	push	#0xc0
      008376 5F               [ 1]  265 	clrw	x
      008377 89               [ 2]  266 	pushw	x
      008378 4B 00            [ 1]  267 	push	#0x00
      00837A AE 80 9B         [ 2]  268 	ldw	x, #(___str_0+0)
      00837D CD AA 54         [ 4]  269 	call	_assert_failed
      008380                        270 00107$:
                                    271 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      008380 C6 50 C9         [ 1]  272 	ld	a, 0x50c9
                                    273 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 194: if (NewState != DISABLE)
      008383 0D 01            [ 1]  274 	tnz	(0x01, sp)
      008385 27 07            [ 1]  275 	jreq	00102$
                                    276 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      008387 AA 01            [ 1]  277 	or	a, #0x01
      008389 C7 50 C9         [ 1]  278 	ld	0x50c9, a
      00838C 20 05            [ 2]  279 	jra	00104$
      00838E                        280 00102$:
                                    281 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      00838E A4 FE            [ 1]  282 	and	a, #0xfe
      008390 C7 50 C9         [ 1]  283 	ld	0x50c9, a
      008393                        284 00104$:
                                    285 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 204: }
      008393 84               [ 1]  286 	pop	a
      008394 81               [ 4]  287 	ret
                                    288 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    289 ;	-----------------------------------------
                                    290 ;	 function CLK_ClockSwitchCmd
                                    291 ;	-----------------------------------------
      008395                        292 _CLK_ClockSwitchCmd:
      008395 88               [ 1]  293 	push	a
                                    294 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008396 6B 01            [ 1]  295 	ld	(0x01, sp), a
      008398 27 11            [ 1]  296 	jreq	00107$
      00839A 7B 01            [ 1]  297 	ld	a, (0x01, sp)
      00839C 4A               [ 1]  298 	dec	a
      00839D 27 0C            [ 1]  299 	jreq	00107$
      00839F 4B D8            [ 1]  300 	push	#0xd8
      0083A1 5F               [ 1]  301 	clrw	x
      0083A2 89               [ 2]  302 	pushw	x
      0083A3 4B 00            [ 1]  303 	push	#0x00
      0083A5 AE 80 9B         [ 2]  304 	ldw	x, #(___str_0+0)
      0083A8 CD AA 54         [ 4]  305 	call	_assert_failed
      0083AB                        306 00107$:
                                    307 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      0083AB C6 50 C5         [ 1]  308 	ld	a, 0x50c5
                                    309 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 218: if (NewState != DISABLE )
      0083AE 0D 01            [ 1]  310 	tnz	(0x01, sp)
      0083B0 27 07            [ 1]  311 	jreq	00102$
                                    312 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      0083B2 AA 02            [ 1]  313 	or	a, #0x02
      0083B4 C7 50 C5         [ 1]  314 	ld	0x50c5, a
      0083B7 20 05            [ 2]  315 	jra	00104$
      0083B9                        316 00102$:
                                    317 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      0083B9 A4 FD            [ 1]  318 	and	a, #0xfd
      0083BB C7 50 C5         [ 1]  319 	ld	0x50c5, a
      0083BE                        320 00104$:
                                    321 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 228: }
      0083BE 84               [ 1]  322 	pop	a
      0083BF 81               [ 4]  323 	ret
                                    324 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    325 ;	-----------------------------------------
                                    326 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    327 ;	-----------------------------------------
      0083C0                        328 _CLK_SlowActiveHaltWakeUpCmd:
      0083C0 88               [ 1]  329 	push	a
                                    330 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 241: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0083C1 6B 01            [ 1]  331 	ld	(0x01, sp), a
      0083C3 27 11            [ 1]  332 	jreq	00107$
      0083C5 7B 01            [ 1]  333 	ld	a, (0x01, sp)
      0083C7 4A               [ 1]  334 	dec	a
      0083C8 27 0C            [ 1]  335 	jreq	00107$
      0083CA 4B F1            [ 1]  336 	push	#0xf1
      0083CC 5F               [ 1]  337 	clrw	x
      0083CD 89               [ 2]  338 	pushw	x
      0083CE 4B 00            [ 1]  339 	push	#0x00
      0083D0 AE 80 9B         [ 2]  340 	ldw	x, #(___str_0+0)
      0083D3 CD AA 54         [ 4]  341 	call	_assert_failed
      0083D6                        342 00107$:
                                    343 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      0083D6 C6 50 C0         [ 1]  344 	ld	a, 0x50c0
                                    345 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 243: if (NewState != DISABLE)
      0083D9 0D 01            [ 1]  346 	tnz	(0x01, sp)
      0083DB 27 07            [ 1]  347 	jreq	00102$
                                    348 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      0083DD AA 20            [ 1]  349 	or	a, #0x20
      0083DF C7 50 C0         [ 1]  350 	ld	0x50c0, a
      0083E2 20 05            [ 2]  351 	jra	00104$
      0083E4                        352 00102$:
                                    353 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      0083E4 A4 DF            [ 1]  354 	and	a, #0xdf
      0083E6 C7 50 C0         [ 1]  355 	ld	0x50c0, a
      0083E9                        356 00104$:
                                    357 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 253: }
      0083E9 84               [ 1]  358 	pop	a
      0083EA 81               [ 4]  359 	ret
                                    360 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    361 ;	-----------------------------------------
                                    362 ;	 function CLK_PeripheralClockConfig
                                    363 ;	-----------------------------------------
      0083EB                        364 _CLK_PeripheralClockConfig:
      0083EB 52 03            [ 2]  365 	sub	sp, #3
      0083ED 6B 03            [ 1]  366 	ld	(0x03, sp), a
                                    367 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 266: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0083EF 0D 06            [ 1]  368 	tnz	(0x06, sp)
      0083F1 27 11            [ 1]  369 	jreq	00113$
      0083F3 7B 06            [ 1]  370 	ld	a, (0x06, sp)
      0083F5 4A               [ 1]  371 	dec	a
      0083F6 27 0C            [ 1]  372 	jreq	00113$
      0083F8 4B 0A            [ 1]  373 	push	#0x0a
      0083FA 4B 01            [ 1]  374 	push	#0x01
      0083FC 5F               [ 1]  375 	clrw	x
      0083FD 89               [ 2]  376 	pushw	x
      0083FE AE 80 9B         [ 2]  377 	ldw	x, #(___str_0+0)
      008401 CD AA 54         [ 4]  378 	call	_assert_failed
      008404                        379 00113$:
                                    380 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 267: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      008404 0D 03            [ 1]  381 	tnz	(0x03, sp)
      008406 27 64            [ 1]  382 	jreq	00118$
      008408 7B 03            [ 1]  383 	ld	a, (0x03, sp)
      00840A 4A               [ 1]  384 	dec	a
      00840B 27 5F            [ 1]  385 	jreq	00118$
      00840D 7B 03            [ 1]  386 	ld	a, (0x03, sp)
      00840F A0 03            [ 1]  387 	sub	a, #0x03
      008411 26 02            [ 1]  388 	jrne	00262$
      008413 4C               [ 1]  389 	inc	a
      008414 21                     390 	.byte 0x21
      008415                        391 00262$:
      008415 4F               [ 1]  392 	clr	a
      008416                        393 00263$:
      008416 4D               [ 1]  394 	tnz	a
      008417 26 53            [ 1]  395 	jrne	00118$
      008419 4D               [ 1]  396 	tnz	a
      00841A 26 50            [ 1]  397 	jrne	00118$
      00841C 4D               [ 1]  398 	tnz	a
      00841D 26 4D            [ 1]  399 	jrne	00118$
      00841F 7B 03            [ 1]  400 	ld	a, (0x03, sp)
      008421 A0 04            [ 1]  401 	sub	a, #0x04
      008423 26 04            [ 1]  402 	jrne	00268$
      008425 4C               [ 1]  403 	inc	a
      008426 97               [ 1]  404 	ld	xl, a
      008427 20 02            [ 2]  405 	jra	00269$
      008429                        406 00268$:
      008429 4F               [ 1]  407 	clr	a
      00842A 97               [ 1]  408 	ld	xl, a
      00842B                        409 00269$:
      00842B 9F               [ 1]  410 	ld	a, xl
      00842C 4D               [ 1]  411 	tnz	a
      00842D 26 3D            [ 1]  412 	jrne	00118$
      00842F 7B 03            [ 1]  413 	ld	a, (0x03, sp)
      008431 A0 05            [ 1]  414 	sub	a, #0x05
      008433 26 02            [ 1]  415 	jrne	00272$
      008435 4C               [ 1]  416 	inc	a
      008436 21                     417 	.byte 0x21
      008437                        418 00272$:
      008437 4F               [ 1]  419 	clr	a
      008438                        420 00273$:
      008438 4D               [ 1]  421 	tnz	a
      008439 26 31            [ 1]  422 	jrne	00118$
      00843B 4D               [ 1]  423 	tnz	a
      00843C 26 2E            [ 1]  424 	jrne	00118$
      00843E 9F               [ 1]  425 	ld	a, xl
      00843F 4D               [ 1]  426 	tnz	a
      008440 26 2A            [ 1]  427 	jrne	00118$
      008442 7B 03            [ 1]  428 	ld	a, (0x03, sp)
      008444 A1 06            [ 1]  429 	cp	a, #0x06
      008446 27 24            [ 1]  430 	jreq	00118$
      008448 7B 03            [ 1]  431 	ld	a, (0x03, sp)
      00844A A1 07            [ 1]  432 	cp	a, #0x07
      00844C 27 1E            [ 1]  433 	jreq	00118$
      00844E 7B 03            [ 1]  434 	ld	a, (0x03, sp)
      008450 A1 17            [ 1]  435 	cp	a, #0x17
      008452 27 18            [ 1]  436 	jreq	00118$
      008454 7B 03            [ 1]  437 	ld	a, (0x03, sp)
      008456 A1 13            [ 1]  438 	cp	a, #0x13
      008458 27 12            [ 1]  439 	jreq	00118$
      00845A 7B 03            [ 1]  440 	ld	a, (0x03, sp)
      00845C A1 12            [ 1]  441 	cp	a, #0x12
      00845E 27 0C            [ 1]  442 	jreq	00118$
      008460 4B 0B            [ 1]  443 	push	#0x0b
      008462 4B 01            [ 1]  444 	push	#0x01
      008464 5F               [ 1]  445 	clrw	x
      008465 89               [ 2]  446 	pushw	x
      008466 AE 80 9B         [ 2]  447 	ldw	x, #(___str_0+0)
      008469 CD AA 54         [ 4]  448 	call	_assert_failed
      00846C                        449 00118$:
                                    450 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00846C 7B 03            [ 1]  451 	ld	a, (0x03, sp)
      00846E A4 0F            [ 1]  452 	and	a, #0x0f
      008470 88               [ 1]  453 	push	a
      008471 A6 01            [ 1]  454 	ld	a, #0x01
      008473 6B 02            [ 1]  455 	ld	(0x02, sp), a
      008475 84               [ 1]  456 	pop	a
      008476 4D               [ 1]  457 	tnz	a
      008477 27 05            [ 1]  458 	jreq	00293$
      008479                        459 00292$:
      008479 08 01            [ 1]  460 	sll	(0x01, sp)
      00847B 4A               [ 1]  461 	dec	a
      00847C 26 FB            [ 1]  462 	jrne	00292$
      00847E                        463 00293$:
                                    464 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00847E 7B 01            [ 1]  465 	ld	a, (0x01, sp)
      008480 43               [ 1]  466 	cpl	a
      008481 6B 02            [ 1]  467 	ld	(0x02, sp), a
                                    468 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      008483 7B 03            [ 1]  469 	ld	a, (0x03, sp)
      008485 A5 10            [ 1]  470 	bcp	a, #0x10
      008487 26 15            [ 1]  471 	jrne	00108$
                                    472 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008489 C6 50 C7         [ 1]  473 	ld	a, 0x50c7
                                    474 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 271: if (NewState != DISABLE)
      00848C 0D 06            [ 1]  475 	tnz	(0x06, sp)
      00848E 27 07            [ 1]  476 	jreq	00102$
                                    477 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008490 1A 01            [ 1]  478 	or	a, (0x01, sp)
      008492 C7 50 C7         [ 1]  479 	ld	0x50c7, a
      008495 20 1A            [ 2]  480 	jra	00110$
      008497                        481 00102$:
                                    482 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008497 14 02            [ 1]  483 	and	a, (0x02, sp)
      008499 C7 50 C7         [ 1]  484 	ld	0x50c7, a
      00849C 20 13            [ 2]  485 	jra	00110$
      00849E                        486 00108$:
                                    487 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00849E C6 50 CA         [ 1]  488 	ld	a, 0x50ca
                                    489 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 284: if (NewState != DISABLE)
      0084A1 0D 06            [ 1]  490 	tnz	(0x06, sp)
      0084A3 27 07            [ 1]  491 	jreq	00105$
                                    492 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0084A5 1A 01            [ 1]  493 	or	a, (0x01, sp)
      0084A7 C7 50 CA         [ 1]  494 	ld	0x50ca, a
      0084AA 20 05            [ 2]  495 	jra	00110$
      0084AC                        496 00105$:
                                    497 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0084AC 14 02            [ 1]  498 	and	a, (0x02, sp)
      0084AE C7 50 CA         [ 1]  499 	ld	0x50ca, a
      0084B1                        500 00110$:
                                    501 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 295: }
      0084B1 5B 03            [ 2]  502 	addw	sp, #3
      0084B3 85               [ 2]  503 	popw	x
      0084B4 84               [ 1]  504 	pop	a
      0084B5 FC               [ 2]  505 	jp	(x)
                                    506 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    507 ;	-----------------------------------------
                                    508 ;	 function CLK_ClockSwitchConfig
                                    509 ;	-----------------------------------------
      0084B6                        510 _CLK_ClockSwitchConfig:
      0084B6 89               [ 2]  511 	pushw	x
      0084B7 6B 02            [ 1]  512 	ld	(0x02, sp), a
                                    513 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 316: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      0084B9 7B 05            [ 1]  514 	ld	a, (0x05, sp)
      0084BB A1 E1            [ 1]  515 	cp	a, #0xe1
      0084BD 27 18            [ 1]  516 	jreq	00140$
      0084BF 7B 05            [ 1]  517 	ld	a, (0x05, sp)
      0084C1 A1 D2            [ 1]  518 	cp	a, #0xd2
      0084C3 27 12            [ 1]  519 	jreq	00140$
      0084C5 7B 05            [ 1]  520 	ld	a, (0x05, sp)
      0084C7 A1 B4            [ 1]  521 	cp	a, #0xb4
      0084C9 27 0C            [ 1]  522 	jreq	00140$
      0084CB 4B 3C            [ 1]  523 	push	#0x3c
      0084CD 4B 01            [ 1]  524 	push	#0x01
      0084CF 5F               [ 1]  525 	clrw	x
      0084D0 89               [ 2]  526 	pushw	x
      0084D1 AE 80 9B         [ 2]  527 	ldw	x, #(___str_0+0)
      0084D4 CD AA 54         [ 4]  528 	call	_assert_failed
      0084D7                        529 00140$:
                                    530 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 317: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      0084D7 7B 02            [ 1]  531 	ld	a, (0x02, sp)
      0084D9 4A               [ 1]  532 	dec	a
      0084DA 26 05            [ 1]  533 	jrne	00309$
      0084DC A6 01            [ 1]  534 	ld	a, #0x01
      0084DE 6B 01            [ 1]  535 	ld	(0x01, sp), a
      0084E0 C5                     536 	.byte 0xc5
      0084E1                        537 00309$:
      0084E1 0F 01            [ 1]  538 	clr	(0x01, sp)
      0084E3                        539 00310$:
      0084E3 0D 02            [ 1]  540 	tnz	(0x02, sp)
      0084E5 27 10            [ 1]  541 	jreq	00148$
      0084E7 0D 01            [ 1]  542 	tnz	(0x01, sp)
      0084E9 26 0C            [ 1]  543 	jrne	00148$
      0084EB 4B 3D            [ 1]  544 	push	#0x3d
      0084ED 4B 01            [ 1]  545 	push	#0x01
      0084EF 5F               [ 1]  546 	clrw	x
      0084F0 89               [ 2]  547 	pushw	x
      0084F1 AE 80 9B         [ 2]  548 	ldw	x, #(___str_0+0)
      0084F4 CD AA 54         [ 4]  549 	call	_assert_failed
      0084F7                        550 00148$:
                                    551 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 318: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      0084F7 0D 06            [ 1]  552 	tnz	(0x06, sp)
      0084F9 27 11            [ 1]  553 	jreq	00153$
      0084FB 7B 06            [ 1]  554 	ld	a, (0x06, sp)
      0084FD 4A               [ 1]  555 	dec	a
      0084FE 27 0C            [ 1]  556 	jreq	00153$
      008500 4B 3E            [ 1]  557 	push	#0x3e
      008502 4B 01            [ 1]  558 	push	#0x01
      008504 5F               [ 1]  559 	clrw	x
      008505 89               [ 2]  560 	pushw	x
      008506 AE 80 9B         [ 2]  561 	ldw	x, #(___str_0+0)
      008509 CD AA 54         [ 4]  562 	call	_assert_failed
      00850C                        563 00153$:
                                    564 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 319: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      00850C 0D 07            [ 1]  565 	tnz	(0x07, sp)
      00850E 27 11            [ 1]  566 	jreq	00158$
      008510 7B 07            [ 1]  567 	ld	a, (0x07, sp)
      008512 4A               [ 1]  568 	dec	a
      008513 27 0C            [ 1]  569 	jreq	00158$
      008515 4B 3F            [ 1]  570 	push	#0x3f
      008517 4B 01            [ 1]  571 	push	#0x01
      008519 5F               [ 1]  572 	clrw	x
      00851A 89               [ 2]  573 	pushw	x
      00851B AE 80 9B         [ 2]  574 	ldw	x, #(___str_0+0)
      00851E CD AA 54         [ 4]  575 	call	_assert_failed
      008521                        576 00158$:
                                    577 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      008521 C6 50 C3         [ 1]  578 	ld	a, 0x50c3
      008524 90 97            [ 1]  579 	ld	yl, a
                                    580 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      008526 C6 50 C5         [ 1]  581 	ld	a, 0x50c5
      008529 97               [ 1]  582 	ld	xl, a
                                    583 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      00852A 7B 01            [ 1]  584 	ld	a, (0x01, sp)
      00852C 27 37            [ 1]  585 	jreq	00122$
                                    586 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      00852E 9F               [ 1]  587 	ld	a, xl
      00852F AA 02            [ 1]  588 	or	a, #0x02
      008531 C7 50 C5         [ 1]  589 	ld	0x50c5, a
      008534 C6 50 C5         [ 1]  590 	ld	a, 0x50c5
                                    591 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 331: if (ITState != DISABLE)
      008537 0D 06            [ 1]  592 	tnz	(0x06, sp)
      008539 27 07            [ 1]  593 	jreq	00102$
                                    594 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      00853B AA 04            [ 1]  595 	or	a, #0x04
      00853D C7 50 C5         [ 1]  596 	ld	0x50c5, a
      008540 20 05            [ 2]  597 	jra	00103$
      008542                        598 00102$:
                                    599 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008542 A4 FB            [ 1]  600 	and	a, #0xfb
      008544 C7 50 C5         [ 1]  601 	ld	0x50c5, a
      008547                        602 00103$:
                                    603 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      008547 AE 50 C4         [ 2]  604 	ldw	x, #0x50c4
      00854A 7B 05            [ 1]  605 	ld	a, (0x05, sp)
      00854C F7               [ 1]  606 	ld	(x), a
                                    607 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      00854D 5F               [ 1]  608 	clrw	x
      00854E 5A               [ 2]  609 	decw	x
      00854F                        610 00105$:
      00854F 72 01 50 C5 06   [ 2]  611 	btjf	0x50c5, #0, 00107$
      008554 5D               [ 2]  612 	tnzw	x
      008555 27 03            [ 1]  613 	jreq	00107$
                                    614 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 346: DownCounter--;
      008557 5A               [ 2]  615 	decw	x
      008558 20 F5            [ 2]  616 	jra	00105$
      00855A                        617 00107$:
                                    618 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 349: if(DownCounter != 0)
      00855A 5D               [ 2]  619 	tnzw	x
      00855B 27 05            [ 1]  620 	jreq	00109$
                                    621 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 351: Swif = SUCCESS;
      00855D A6 01            [ 1]  622 	ld	a, #0x01
      00855F 97               [ 1]  623 	ld	xl, a
      008560 20 34            [ 2]  624 	jra	00123$
      008562                        625 00109$:
                                    626 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 355: Swif = ERROR;
      008562 5F               [ 1]  627 	clrw	x
      008563 20 31            [ 2]  628 	jra	00123$
      008565                        629 00122$:
                                    630 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 361: if (ITState != DISABLE)
      008565 0D 06            [ 1]  631 	tnz	(0x06, sp)
      008567 27 08            [ 1]  632 	jreq	00112$
                                    633 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      008569 9F               [ 1]  634 	ld	a, xl
      00856A AA 04            [ 1]  635 	or	a, #0x04
      00856C C7 50 C5         [ 1]  636 	ld	0x50c5, a
      00856F 20 06            [ 2]  637 	jra	00113$
      008571                        638 00112$:
                                    639 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008571 9F               [ 1]  640 	ld	a, xl
      008572 A4 FB            [ 1]  641 	and	a, #0xfb
      008574 C7 50 C5         [ 1]  642 	ld	0x50c5, a
      008577                        643 00113$:
                                    644 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      008577 AE 50 C4         [ 2]  645 	ldw	x, #0x50c4
      00857A 7B 05            [ 1]  646 	ld	a, (0x05, sp)
      00857C F7               [ 1]  647 	ld	(x), a
                                    648 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      00857D 5F               [ 1]  649 	clrw	x
      00857E 5A               [ 2]  650 	decw	x
      00857F                        651 00115$:
      00857F 72 07 50 C5 06   [ 2]  652 	btjf	0x50c5, #3, 00117$
      008584 5D               [ 2]  653 	tnzw	x
      008585 27 03            [ 1]  654 	jreq	00117$
                                    655 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 376: DownCounter--;
      008587 5A               [ 2]  656 	decw	x
      008588 20 F5            [ 2]  657 	jra	00115$
      00858A                        658 00117$:
                                    659 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 379: if(DownCounter != 0)
      00858A 5D               [ 2]  660 	tnzw	x
      00858B 27 08            [ 1]  661 	jreq	00119$
                                    662 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      00858D 72 12 50 C5      [ 1]  663 	bset	0x50c5, #1
                                    664 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 383: Swif = SUCCESS;
      008591 A6 01            [ 1]  665 	ld	a, #0x01
      008593 97               [ 1]  666 	ld	xl, a
                                    667 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 387: Swif = ERROR;
      008594 21                     668 	.byte 0x21
      008595                        669 00119$:
      008595 5F               [ 1]  670 	clrw	x
      008596                        671 00123$:
                                    672 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 390: if(Swif != ERROR)
      008596 9F               [ 1]  673 	ld	a, xl
      008597 4D               [ 1]  674 	tnz	a
      008598 27 2E            [ 1]  675 	jreq	00136$
                                    676 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      00859A 0D 07            [ 1]  677 	tnz	(0x07, sp)
      00859C 26 0C            [ 1]  678 	jrne	00132$
      00859E 90 9F            [ 1]  679 	ld	a, yl
      0085A0 A1 E1            [ 1]  680 	cp	a, #0xe1
      0085A2 26 06            [ 1]  681 	jrne	00132$
                                    682 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0085A4 72 11 50 C0      [ 1]  683 	bres	0x50c0, #0
      0085A8 20 1E            [ 2]  684 	jra	00136$
      0085AA                        685 00132$:
                                    686 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      0085AA 0D 07            [ 1]  687 	tnz	(0x07, sp)
      0085AC 26 0C            [ 1]  688 	jrne	00128$
      0085AE 90 9F            [ 1]  689 	ld	a, yl
      0085B0 A1 D2            [ 1]  690 	cp	a, #0xd2
      0085B2 26 06            [ 1]  691 	jrne	00128$
                                    692 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0085B4 72 17 50 C0      [ 1]  693 	bres	0x50c0, #3
      0085B8 20 0E            [ 2]  694 	jra	00136$
      0085BA                        695 00128$:
                                    696 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      0085BA 0D 07            [ 1]  697 	tnz	(0x07, sp)
      0085BC 26 0A            [ 1]  698 	jrne	00136$
      0085BE 90 9F            [ 1]  699 	ld	a, yl
      0085C0 A1 B4            [ 1]  700 	cp	a, #0xb4
      0085C2 26 04            [ 1]  701 	jrne	00136$
                                    702 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0085C4 72 11 50 C1      [ 1]  703 	bres	0x50c1, #0
      0085C8                        704 00136$:
                                    705 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 406: return(Swif);
      0085C8 9F               [ 1]  706 	ld	a, xl
                                    707 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 407: }
      0085C9 1E 03            [ 2]  708 	ldw	x, (3, sp)
      0085CB 5B 07            [ 2]  709 	addw	sp, #7
      0085CD FC               [ 2]  710 	jp	(x)
                                    711 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    712 ;	-----------------------------------------
                                    713 ;	 function CLK_HSIPrescalerConfig
                                    714 ;	-----------------------------------------
      0085CE                        715 _CLK_HSIPrescalerConfig:
      0085CE 88               [ 1]  716 	push	a
                                    717 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 418: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      0085CF 6B 01            [ 1]  718 	ld	(0x01, sp), a
      0085D1 27 1E            [ 1]  719 	jreq	00104$
      0085D3 7B 01            [ 1]  720 	ld	a, (0x01, sp)
      0085D5 A1 08            [ 1]  721 	cp	a, #0x08
      0085D7 27 18            [ 1]  722 	jreq	00104$
      0085D9 7B 01            [ 1]  723 	ld	a, (0x01, sp)
      0085DB A1 10            [ 1]  724 	cp	a, #0x10
      0085DD 27 12            [ 1]  725 	jreq	00104$
      0085DF 7B 01            [ 1]  726 	ld	a, (0x01, sp)
      0085E1 A1 18            [ 1]  727 	cp	a, #0x18
      0085E3 27 0C            [ 1]  728 	jreq	00104$
      0085E5 4B A2            [ 1]  729 	push	#0xa2
      0085E7 4B 01            [ 1]  730 	push	#0x01
      0085E9 5F               [ 1]  731 	clrw	x
      0085EA 89               [ 2]  732 	pushw	x
      0085EB AE 80 9B         [ 2]  733 	ldw	x, #(___str_0+0)
      0085EE CD AA 54         [ 4]  734 	call	_assert_failed
      0085F1                        735 00104$:
                                    736 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0085F1 C6 50 C6         [ 1]  737 	ld	a, 0x50c6
      0085F4 A4 E7            [ 1]  738 	and	a, #0xe7
      0085F6 C7 50 C6         [ 1]  739 	ld	0x50c6, a
                                    740 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      0085F9 C6 50 C6         [ 1]  741 	ld	a, 0x50c6
      0085FC 1A 01            [ 1]  742 	or	a, (0x01, sp)
      0085FE C7 50 C6         [ 1]  743 	ld	0x50c6, a
                                    744 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 425: }
      008601 84               [ 1]  745 	pop	a
      008602 81               [ 4]  746 	ret
                                    747 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    748 ;	-----------------------------------------
                                    749 ;	 function CLK_CCOConfig
                                    750 ;	-----------------------------------------
      008603                        751 _CLK_CCOConfig:
      008603 88               [ 1]  752 	push	a
                                    753 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 439: assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
      008604 4D               [ 1]  754 	tnz	a
      008605 27 3E            [ 1]  755 	jreq	00104$
      008607 A1 04            [ 1]  756 	cp	a, #0x04
      008609 27 3A            [ 1]  757 	jreq	00104$
      00860B A1 02            [ 1]  758 	cp	a, #0x02
      00860D 27 36            [ 1]  759 	jreq	00104$
      00860F A1 08            [ 1]  760 	cp	a, #0x08
      008611 27 32            [ 1]  761 	jreq	00104$
      008613 A1 0A            [ 1]  762 	cp	a, #0x0a
      008615 27 2E            [ 1]  763 	jreq	00104$
      008617 A1 0C            [ 1]  764 	cp	a, #0x0c
      008619 27 2A            [ 1]  765 	jreq	00104$
      00861B A1 0E            [ 1]  766 	cp	a, #0x0e
      00861D 27 26            [ 1]  767 	jreq	00104$
      00861F A1 10            [ 1]  768 	cp	a, #0x10
      008621 27 22            [ 1]  769 	jreq	00104$
      008623 A1 12            [ 1]  770 	cp	a, #0x12
      008625 27 1E            [ 1]  771 	jreq	00104$
      008627 A1 14            [ 1]  772 	cp	a, #0x14
      008629 27 1A            [ 1]  773 	jreq	00104$
      00862B A1 16            [ 1]  774 	cp	a, #0x16
      00862D 27 16            [ 1]  775 	jreq	00104$
      00862F A1 18            [ 1]  776 	cp	a, #0x18
      008631 27 12            [ 1]  777 	jreq	00104$
      008633 A1 1A            [ 1]  778 	cp	a, #0x1a
      008635 27 0E            [ 1]  779 	jreq	00104$
      008637 88               [ 1]  780 	push	a
      008638 4B B7            [ 1]  781 	push	#0xb7
      00863A 4B 01            [ 1]  782 	push	#0x01
      00863C 5F               [ 1]  783 	clrw	x
      00863D 89               [ 2]  784 	pushw	x
      00863E AE 80 9B         [ 2]  785 	ldw	x, #(___str_0+0)
      008641 CD AA 54         [ 4]  786 	call	_assert_failed
      008644 84               [ 1]  787 	pop	a
      008645                        788 00104$:
                                    789 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      008645 AE 50 C9         [ 2]  790 	ldw	x, #0x50c9
      008648 88               [ 1]  791 	push	a
      008649 F6               [ 1]  792 	ld	a, (x)
      00864A A4 E1            [ 1]  793 	and	a, #0xe1
      00864C 6B 02            [ 1]  794 	ld	(0x02, sp), a
      00864E 84               [ 1]  795 	pop	a
      00864F AE 50 C9         [ 2]  796 	ldw	x, #0x50c9
      008652 88               [ 1]  797 	push	a
      008653 7B 02            [ 1]  798 	ld	a, (0x02, sp)
      008655 F7               [ 1]  799 	ld	(x), a
      008656 84               [ 1]  800 	pop	a
                                    801 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      008657 AE 50 C9         [ 2]  802 	ldw	x, #0x50c9
      00865A 88               [ 1]  803 	push	a
      00865B F6               [ 1]  804 	ld	a, (x)
      00865C 6B 02            [ 1]  805 	ld	(0x02, sp), a
      00865E 84               [ 1]  806 	pop	a
      00865F 1A 01            [ 1]  807 	or	a, (0x01, sp)
      008661 C7 50 C9         [ 1]  808 	ld	0x50c9, a
                                    809 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      008664 72 10 50 C9      [ 1]  810 	bset	0x50c9, #0
                                    811 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 449: }
      008668 84               [ 1]  812 	pop	a
      008669 81               [ 4]  813 	ret
                                    814 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    815 ;	-----------------------------------------
                                    816 ;	 function CLK_ITConfig
                                    817 ;	-----------------------------------------
      00866A                        818 _CLK_ITConfig:
      00866A 89               [ 2]  819 	pushw	x
      00866B 6B 02            [ 1]  820 	ld	(0x02, sp), a
                                    821 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 462: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00866D 0D 05            [ 1]  822 	tnz	(0x05, sp)
      00866F 27 11            [ 1]  823 	jreq	00115$
      008671 7B 05            [ 1]  824 	ld	a, (0x05, sp)
      008673 4A               [ 1]  825 	dec	a
      008674 27 0C            [ 1]  826 	jreq	00115$
      008676 4B CE            [ 1]  827 	push	#0xce
      008678 4B 01            [ 1]  828 	push	#0x01
      00867A 5F               [ 1]  829 	clrw	x
      00867B 89               [ 2]  830 	pushw	x
      00867C AE 80 9B         [ 2]  831 	ldw	x, #(___str_0+0)
      00867F CD AA 54         [ 4]  832 	call	_assert_failed
      008682                        833 00115$:
                                    834 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 463: assert_param(IS_CLK_IT_OK(CLK_IT));
      008682 7B 02            [ 1]  835 	ld	a, (0x02, sp)
      008684 A0 0C            [ 1]  836 	sub	a, #0x0c
      008686 26 02            [ 1]  837 	jrne	00174$
      008688 4C               [ 1]  838 	inc	a
      008689 21                     839 	.byte 0x21
      00868A                        840 00174$:
      00868A 4F               [ 1]  841 	clr	a
      00868B                        842 00175$:
      00868B 88               [ 1]  843 	push	a
      00868C 7B 03            [ 1]  844 	ld	a, (0x03, sp)
      00868E A1 1C            [ 1]  845 	cp	a, #0x1c
      008690 84               [ 1]  846 	pop	a
      008691 26 07            [ 1]  847 	jrne	00177$
      008693 88               [ 1]  848 	push	a
      008694 A6 01            [ 1]  849 	ld	a, #0x01
      008696 6B 02            [ 1]  850 	ld	(0x02, sp), a
      008698 84               [ 1]  851 	pop	a
      008699 C5                     852 	.byte 0xc5
      00869A                        853 00177$:
      00869A 0F 01            [ 1]  854 	clr	(0x01, sp)
      00869C                        855 00178$:
      00869C 4D               [ 1]  856 	tnz	a
      00869D 26 12            [ 1]  857 	jrne	00120$
      00869F 0D 01            [ 1]  858 	tnz	(0x01, sp)
      0086A1 26 0E            [ 1]  859 	jrne	00120$
      0086A3 88               [ 1]  860 	push	a
      0086A4 4B CF            [ 1]  861 	push	#0xcf
      0086A6 4B 01            [ 1]  862 	push	#0x01
      0086A8 5F               [ 1]  863 	clrw	x
      0086A9 89               [ 2]  864 	pushw	x
      0086AA AE 80 9B         [ 2]  865 	ldw	x, #(___str_0+0)
      0086AD CD AA 54         [ 4]  866 	call	_assert_failed
      0086B0 84               [ 1]  867 	pop	a
      0086B1                        868 00120$:
                                    869 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 465: if (NewState != DISABLE)
      0086B1 0D 05            [ 1]  870 	tnz	(0x05, sp)
      0086B3 27 1B            [ 1]  871 	jreq	00110$
                                    872 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 467: switch (CLK_IT)
      0086B5 4D               [ 1]  873 	tnz	a
      0086B6 26 0E            [ 1]  874 	jrne	00102$
      0086B8 7B 01            [ 1]  875 	ld	a, (0x01, sp)
      0086BA 27 2D            [ 1]  876 	jreq	00112$
                                    877 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      0086BC C6 50 C5         [ 1]  878 	ld	a, 0x50c5
      0086BF AA 04            [ 1]  879 	or	a, #0x04
      0086C1 C7 50 C5         [ 1]  880 	ld	0x50c5, a
                                    881 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 471: break;
      0086C4 20 23            [ 2]  882 	jra	00112$
                                    883 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      0086C6                        884 00102$:
                                    885 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      0086C6 C6 50 C8         [ 1]  886 	ld	a, 0x50c8
      0086C9 AA 04            [ 1]  887 	or	a, #0x04
      0086CB C7 50 C8         [ 1]  888 	ld	0x50c8, a
                                    889 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 474: break;
      0086CE 20 19            [ 2]  890 	jra	00112$
                                    891 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 477: }
      0086D0                        892 00110$:
                                    893 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 481: switch (CLK_IT)
      0086D0 4D               [ 1]  894 	tnz	a
      0086D1 26 0E            [ 1]  895 	jrne	00106$
      0086D3 7B 01            [ 1]  896 	ld	a, (0x01, sp)
      0086D5 27 12            [ 1]  897 	jreq	00112$
                                    898 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      0086D7 C6 50 C5         [ 1]  899 	ld	a, 0x50c5
      0086DA A4 FB            [ 1]  900 	and	a, #0xfb
      0086DC C7 50 C5         [ 1]  901 	ld	0x50c5, a
                                    902 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 485: break;
      0086DF 20 08            [ 2]  903 	jra	00112$
                                    904 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      0086E1                        905 00106$:
                                    906 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      0086E1 C6 50 C8         [ 1]  907 	ld	a, 0x50c8
      0086E4 A4 FB            [ 1]  908 	and	a, #0xfb
      0086E6 C7 50 C8         [ 1]  909 	ld	0x50c8, a
                                    910 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 491: }
      0086E9                        911 00112$:
                                    912 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 493: }
      0086E9 85               [ 2]  913 	popw	x
      0086EA 85               [ 2]  914 	popw	x
      0086EB 84               [ 1]  915 	pop	a
      0086EC FC               [ 2]  916 	jp	(x)
                                    917 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    918 ;	-----------------------------------------
                                    919 ;	 function CLK_SYSCLKConfig
                                    920 ;	-----------------------------------------
      0086ED                        921 _CLK_SYSCLKConfig:
      0086ED 88               [ 1]  922 	push	a
                                    923 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 503: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      0086EE 95               [ 1]  924 	ld	xh, a
      0086EF 4D               [ 1]  925 	tnz	a
      0086F0 27 4A            [ 1]  926 	jreq	00107$
      0086F2 9E               [ 1]  927 	ld	a, xh
      0086F3 A1 08            [ 1]  928 	cp	a, #0x08
      0086F5 27 45            [ 1]  929 	jreq	00107$
      0086F7 9E               [ 1]  930 	ld	a, xh
      0086F8 A1 10            [ 1]  931 	cp	a, #0x10
      0086FA 27 40            [ 1]  932 	jreq	00107$
      0086FC 9E               [ 1]  933 	ld	a, xh
      0086FD A1 18            [ 1]  934 	cp	a, #0x18
      0086FF 27 3B            [ 1]  935 	jreq	00107$
      008701 9E               [ 1]  936 	ld	a, xh
      008702 A1 80            [ 1]  937 	cp	a, #0x80
      008704 27 36            [ 1]  938 	jreq	00107$
      008706 9E               [ 1]  939 	ld	a, xh
      008707 A1 81            [ 1]  940 	cp	a, #0x81
      008709 27 31            [ 1]  941 	jreq	00107$
      00870B 9E               [ 1]  942 	ld	a, xh
      00870C A1 82            [ 1]  943 	cp	a, #0x82
      00870E 27 2C            [ 1]  944 	jreq	00107$
      008710 9E               [ 1]  945 	ld	a, xh
      008711 A1 83            [ 1]  946 	cp	a, #0x83
      008713 27 27            [ 1]  947 	jreq	00107$
      008715 9E               [ 1]  948 	ld	a, xh
      008716 A1 84            [ 1]  949 	cp	a, #0x84
      008718 27 22            [ 1]  950 	jreq	00107$
      00871A 9E               [ 1]  951 	ld	a, xh
      00871B A1 85            [ 1]  952 	cp	a, #0x85
      00871D 27 1D            [ 1]  953 	jreq	00107$
      00871F 9E               [ 1]  954 	ld	a, xh
      008720 A1 86            [ 1]  955 	cp	a, #0x86
      008722 27 18            [ 1]  956 	jreq	00107$
      008724 9E               [ 1]  957 	ld	a, xh
      008725 A1 87            [ 1]  958 	cp	a, #0x87
      008727 27 13            [ 1]  959 	jreq	00107$
      008729 89               [ 2]  960 	pushw	x
      00872A 4B F7            [ 1]  961 	push	#0xf7
      00872C 4B 01            [ 1]  962 	push	#0x01
      00872E 4B 00            [ 1]  963 	push	#0x00
      008730 4B 00            [ 1]  964 	push	#0x00
      008732 AE 80 9B         [ 2]  965 	ldw	x, #(___str_0+0)
      008735 CD AA 54         [ 4]  966 	call	_assert_failed
      008738 02               [ 1]  967 	rlwa	x
      008739 84               [ 1]  968 	pop	a
      00873A 01               [ 1]  969 	rrwa	x
      00873B 84               [ 1]  970 	pop	a
      00873C                        971 00107$:
                                    972 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00873C C6 50 C6         [ 1]  973 	ld	a, 0x50c6
                                    974 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      00873F 5D               [ 2]  975 	tnzw	x
      008740 2B 14            [ 1]  976 	jrmi	00102$
                                    977 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008742 A4 E7            [ 1]  978 	and	a, #0xe7
      008744 C7 50 C6         [ 1]  979 	ld	0x50c6, a
                                    980 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      008747 C6 50 C6         [ 1]  981 	ld	a, 0x50c6
      00874A 6B 01            [ 1]  982 	ld	(0x01, sp), a
      00874C 9E               [ 1]  983 	ld	a, xh
      00874D A4 18            [ 1]  984 	and	a, #0x18
      00874F 1A 01            [ 1]  985 	or	a, (0x01, sp)
      008751 C7 50 C6         [ 1]  986 	ld	0x50c6, a
      008754 20 12            [ 2]  987 	jra	00104$
      008756                        988 00102$:
                                    989 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      008756 A4 F8            [ 1]  990 	and	a, #0xf8
      008758 C7 50 C6         [ 1]  991 	ld	0x50c6, a
                                    992 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      00875B C6 50 C6         [ 1]  993 	ld	a, 0x50c6
      00875E 6B 01            [ 1]  994 	ld	(0x01, sp), a
      008760 9E               [ 1]  995 	ld	a, xh
      008761 A4 07            [ 1]  996 	and	a, #0x07
      008763 1A 01            [ 1]  997 	or	a, (0x01, sp)
      008765 C7 50 C6         [ 1]  998 	ld	0x50c6, a
      008768                        999 00104$:
                                   1000 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 515: }
      008768 84               [ 1] 1001 	pop	a
      008769 81               [ 4] 1002 	ret
                                   1003 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                   1004 ;	-----------------------------------------
                                   1005 ;	 function CLK_SWIMConfig
                                   1006 ;	-----------------------------------------
      00876A                       1007 _CLK_SWIMConfig:
      00876A 88               [ 1] 1008 	push	a
                                   1009 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 526: assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
      00876B 6B 01            [ 1] 1010 	ld	(0x01, sp), a
      00876D 27 11            [ 1] 1011 	jreq	00107$
      00876F 7B 01            [ 1] 1012 	ld	a, (0x01, sp)
      008771 4A               [ 1] 1013 	dec	a
      008772 27 0C            [ 1] 1014 	jreq	00107$
      008774 4B 0E            [ 1] 1015 	push	#0x0e
      008776 4B 02            [ 1] 1016 	push	#0x02
      008778 5F               [ 1] 1017 	clrw	x
      008779 89               [ 2] 1018 	pushw	x
      00877A AE 80 9B         [ 2] 1019 	ldw	x, #(___str_0+0)
      00877D CD AA 54         [ 4] 1020 	call	_assert_failed
      008780                       1021 00107$:
                                   1022 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      008780 C6 50 CD         [ 1] 1023 	ld	a, 0x50cd
                                   1024 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      008783 0D 01            [ 1] 1025 	tnz	(0x01, sp)
      008785 27 07            [ 1] 1026 	jreq	00102$
                                   1027 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      008787 AA 01            [ 1] 1028 	or	a, #0x01
      008789 C7 50 CD         [ 1] 1029 	ld	0x50cd, a
      00878C 20 05            [ 2] 1030 	jra	00104$
      00878E                       1031 00102$:
                                   1032 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      00878E A4 FE            [ 1] 1033 	and	a, #0xfe
      008790 C7 50 CD         [ 1] 1034 	ld	0x50cd, a
      008793                       1035 00104$:
                                   1036 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 538: }
      008793 84               [ 1] 1037 	pop	a
      008794 81               [ 4] 1038 	ret
                                   1039 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function CLK_ClockSecuritySystemEnable
                                   1042 ;	-----------------------------------------
      008795                       1043 _CLK_ClockSecuritySystemEnable:
                                   1044 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      008795 72 10 50 C8      [ 1] 1045 	bset	0x50c8, #0
                                   1046 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 551: }
      008799 81               [ 4] 1047 	ret
                                   1048 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                   1049 ;	-----------------------------------------
                                   1050 ;	 function CLK_GetSYSCLKSource
                                   1051 ;	-----------------------------------------
      00879A                       1052 _CLK_GetSYSCLKSource:
                                   1053 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      00879A C6 50 C3         [ 1] 1054 	ld	a, 0x50c3
                                   1055 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 562: }
      00879D 81               [ 4] 1056 	ret
                                   1057 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                   1058 ;	-----------------------------------------
                                   1059 ;	 function CLK_GetClockFreq
                                   1060 ;	-----------------------------------------
      00879E                       1061 _CLK_GetClockFreq:
      00879E 52 04            [ 2] 1062 	sub	sp, #4
                                   1063 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      0087A0 C6 50 C3         [ 1] 1064 	ld	a, 0x50c3
                                   1065 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      0087A3 6B 04            [ 1] 1066 	ld	(0x04, sp), a
      0087A5 A1 E1            [ 1] 1067 	cp	a, #0xe1
      0087A7 26 26            [ 1] 1068 	jrne	00105$
                                   1069 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      0087A9 C6 50 C6         [ 1] 1070 	ld	a, 0x50c6
      0087AC A4 18            [ 1] 1071 	and	a, #0x18
                                   1072 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      0087AE 44               [ 1] 1073 	srl	a
      0087AF 44               [ 1] 1074 	srl	a
      0087B0 44               [ 1] 1075 	srl	a
                                   1076 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      0087B1 5F               [ 1] 1077 	clrw	x
      0087B2 97               [ 1] 1078 	ld	xl, a
      0087B3 D6 80 8F         [ 1] 1079 	ld	a, (_HSIDivFactor+0, x)
                                   1080 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      0087B6 5F               [ 1] 1081 	clrw	x
      0087B7 97               [ 1] 1082 	ld	xl, a
      0087B8 90 5F            [ 1] 1083 	clrw	y
      0087BA 89               [ 2] 1084 	pushw	x
      0087BB 90 89            [ 2] 1085 	pushw	y
      0087BD 4B 00            [ 1] 1086 	push	#0x00
      0087BF 4B 24            [ 1] 1087 	push	#0x24
      0087C1 4B F4            [ 1] 1088 	push	#0xf4
      0087C3 4B 00            [ 1] 1089 	push	#0x00
      0087C5 CD B1 36         [ 4] 1090 	call	__divulong
      0087C8 5B 08            [ 2] 1091 	addw	sp, #8
      0087CA 51               [ 1] 1092 	exgw	x, y
      0087CB 17 03            [ 2] 1093 	ldw	(0x03, sp), y
      0087CD 20 17            [ 2] 1094 	jra	00106$
      0087CF                       1095 00105$:
                                   1096 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      0087CF 7B 04            [ 1] 1097 	ld	a, (0x04, sp)
      0087D1 A1 D2            [ 1] 1098 	cp	a, #0xd2
      0087D3 26 09            [ 1] 1099 	jrne	00102$
                                   1100 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      0087D5 AE F4 00         [ 2] 1101 	ldw	x, #0xf400
      0087D8 1F 03            [ 2] 1102 	ldw	(0x03, sp), x
      0087DA 5F               [ 1] 1103 	clrw	x
      0087DB 5C               [ 1] 1104 	incw	x
      0087DC 20 08            [ 2] 1105 	jra	00106$
      0087DE                       1106 00102$:
                                   1107 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      0087DE AE 24 00         [ 2] 1108 	ldw	x, #0x2400
      0087E1 1F 03            [ 2] 1109 	ldw	(0x03, sp), x
      0087E3 AE 00 F4         [ 2] 1110 	ldw	x, #0x00f4
      0087E6                       1111 00106$:
                                   1112 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0087E6 51               [ 1] 1113 	exgw	x, y
      0087E7 1E 03            [ 2] 1114 	ldw	x, (0x03, sp)
                                   1115 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 595: }
      0087E9 5B 04            [ 2] 1116 	addw	sp, #4
      0087EB 81               [ 4] 1117 	ret
                                   1118 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                   1119 ;	-----------------------------------------
                                   1120 ;	 function CLK_AdjustHSICalibrationValue
                                   1121 ;	-----------------------------------------
      0087EC                       1122 _CLK_AdjustHSICalibrationValue:
      0087EC 88               [ 1] 1123 	push	a
                                   1124 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 607: assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
      0087ED 4D               [ 1] 1125 	tnz	a
      0087EE 27 2A            [ 1] 1126 	jreq	00104$
      0087F0 A1 01            [ 1] 1127 	cp	a, #0x01
      0087F2 27 26            [ 1] 1128 	jreq	00104$
      0087F4 A1 02            [ 1] 1129 	cp	a, #0x02
      0087F6 27 22            [ 1] 1130 	jreq	00104$
      0087F8 A1 03            [ 1] 1131 	cp	a, #0x03
      0087FA 27 1E            [ 1] 1132 	jreq	00104$
      0087FC A1 04            [ 1] 1133 	cp	a, #0x04
      0087FE 27 1A            [ 1] 1134 	jreq	00104$
      008800 A1 05            [ 1] 1135 	cp	a, #0x05
      008802 27 16            [ 1] 1136 	jreq	00104$
      008804 A1 06            [ 1] 1137 	cp	a, #0x06
      008806 27 12            [ 1] 1138 	jreq	00104$
      008808 A1 07            [ 1] 1139 	cp	a, #0x07
      00880A 27 0E            [ 1] 1140 	jreq	00104$
      00880C 88               [ 1] 1141 	push	a
      00880D 4B 5F            [ 1] 1142 	push	#0x5f
      00880F 4B 02            [ 1] 1143 	push	#0x02
      008811 5F               [ 1] 1144 	clrw	x
      008812 89               [ 2] 1145 	pushw	x
      008813 AE 80 9B         [ 2] 1146 	ldw	x, #(___str_0+0)
      008816 CD AA 54         [ 4] 1147 	call	_assert_failed
      008819 84               [ 1] 1148 	pop	a
      00881A                       1149 00104$:
                                   1150 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      00881A AE 50 CC         [ 2] 1151 	ldw	x, #0x50cc
      00881D 88               [ 1] 1152 	push	a
      00881E F6               [ 1] 1153 	ld	a, (x)
      00881F A4 F8            [ 1] 1154 	and	a, #0xf8
      008821 6B 02            [ 1] 1155 	ld	(0x02, sp), a
      008823 84               [ 1] 1156 	pop	a
      008824 1A 01            [ 1] 1157 	or	a, (0x01, sp)
      008826 C7 50 CC         [ 1] 1158 	ld	0x50cc, a
                                   1159 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 611: }
      008829 84               [ 1] 1160 	pop	a
      00882A 81               [ 4] 1161 	ret
                                   1162 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                   1163 ;	-----------------------------------------
                                   1164 ;	 function CLK_SYSCLKEmergencyClear
                                   1165 ;	-----------------------------------------
      00882B                       1166 _CLK_SYSCLKEmergencyClear:
                                   1167 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      00882B 72 11 50 C5      [ 1] 1168 	bres	0x50c5, #0
                                   1169 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 625: }
      00882F 81               [ 4] 1170 	ret
                                   1171 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                   1172 ;	-----------------------------------------
                                   1173 ;	 function CLK_GetFlagStatus
                                   1174 ;	-----------------------------------------
      008830                       1175 _CLK_GetFlagStatus:
                                   1176 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 641: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      008830 90 93            [ 1] 1177 	ldw	y, x
      008832 A3 01 10         [ 2] 1178 	cpw	x, #0x0110
      008835 27 3C            [ 1] 1179 	jreq	00119$
      008837 A3 01 02         [ 2] 1180 	cpw	x, #0x0102
      00883A 27 37            [ 1] 1181 	jreq	00119$
      00883C A3 02 02         [ 2] 1182 	cpw	x, #0x0202
      00883F 27 32            [ 1] 1183 	jreq	00119$
      008841 A3 03 08         [ 2] 1184 	cpw	x, #0x0308
      008844 27 2D            [ 1] 1185 	jreq	00119$
      008846 A3 03 01         [ 2] 1186 	cpw	x, #0x0301
      008849 27 28            [ 1] 1187 	jreq	00119$
      00884B A3 04 08         [ 2] 1188 	cpw	x, #0x0408
      00884E 27 23            [ 1] 1189 	jreq	00119$
      008850 A3 04 02         [ 2] 1190 	cpw	x, #0x0402
      008853 27 1E            [ 1] 1191 	jreq	00119$
      008855 A3 05 04         [ 2] 1192 	cpw	x, #0x0504
      008858 27 19            [ 1] 1193 	jreq	00119$
      00885A A3 05 02         [ 2] 1194 	cpw	x, #0x0502
      00885D 27 14            [ 1] 1195 	jreq	00119$
      00885F 89               [ 2] 1196 	pushw	x
      008860 90 89            [ 2] 1197 	pushw	y
      008862 4B 81            [ 1] 1198 	push	#0x81
      008864 4B 02            [ 1] 1199 	push	#0x02
      008866 4B 00            [ 1] 1200 	push	#0x00
      008868 4B 00            [ 1] 1201 	push	#0x00
      00886A AE 80 9B         [ 2] 1202 	ldw	x, #(___str_0+0)
      00886D CD AA 54         [ 4] 1203 	call	_assert_failed
      008870 90 85            [ 2] 1204 	popw	y
      008872 85               [ 2] 1205 	popw	x
      008873                       1206 00119$:
                                   1207 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      008873 4F               [ 1] 1208 	clr	a
                                   1209 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      008874 97               [ 1] 1210 	ld	xl, a
      008875 A3 01 00         [ 2] 1211 	cpw	x, #0x0100
      008878 26 05            [ 1] 1212 	jrne	00111$
                                   1213 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      00887A C6 50 C0         [ 1] 1214 	ld	a, 0x50c0
      00887D 20 21            [ 2] 1215 	jra	00112$
      00887F                       1216 00111$:
                                   1217 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      00887F A3 02 00         [ 2] 1218 	cpw	x, #0x0200
      008882 26 05            [ 1] 1219 	jrne	00108$
                                   1220 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      008884 C6 50 C1         [ 1] 1221 	ld	a, 0x50c1
      008887 20 17            [ 2] 1222 	jra	00112$
      008889                       1223 00108$:
                                   1224 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      008889 A3 03 00         [ 2] 1225 	cpw	x, #0x0300
      00888C 26 05            [ 1] 1226 	jrne	00105$
                                   1227 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      00888E C6 50 C5         [ 1] 1228 	ld	a, 0x50c5
      008891 20 0D            [ 2] 1229 	jra	00112$
      008893                       1230 00105$:
                                   1231 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      008893 A3 04 00         [ 2] 1232 	cpw	x, #0x0400
      008896 26 05            [ 1] 1233 	jrne	00102$
                                   1234 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      008898 C6 50 C8         [ 1] 1235 	ld	a, 0x50c8
      00889B 20 03            [ 2] 1236 	jra	00112$
      00889D                       1237 00102$:
                                   1238 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      00889D C6 50 C9         [ 1] 1239 	ld	a, 0x50c9
      0088A0                       1240 00112$:
                                   1241 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      0088A0 93               [ 1] 1242 	ldw	x, y
      0088A1 89               [ 2] 1243 	pushw	x
      0088A2 14 02            [ 1] 1244 	and	a, (2, sp)
      0088A4 85               [ 2] 1245 	popw	x
      0088A5 4D               [ 1] 1246 	tnz	a
      0088A6 27 03            [ 1] 1247 	jreq	00114$
                                   1248 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 670: bitstatus = SET;
      0088A8 A6 01            [ 1] 1249 	ld	a, #0x01
      0088AA 81               [ 4] 1250 	ret
      0088AB                       1251 00114$:
                                   1252 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 674: bitstatus = RESET;
      0088AB 4F               [ 1] 1253 	clr	a
                                   1254 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                                   1255 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 679: }
      0088AC 81               [ 4] 1256 	ret
                                   1257 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1258 ;	-----------------------------------------
                                   1259 ;	 function CLK_GetITStatus
                                   1260 ;	-----------------------------------------
      0088AD                       1261 _CLK_GetITStatus:
      0088AD 88               [ 1] 1262 	push	a
                                   1263 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 692: assert_param(IS_CLK_IT_OK(CLK_IT));
      0088AE 6B 01            [ 1] 1264 	ld	(0x01, sp), a
      0088B0 A0 1C            [ 1] 1265 	sub	a, #0x1c
      0088B2 26 02            [ 1] 1266 	jrne	00143$
      0088B4 4C               [ 1] 1267 	inc	a
      0088B5 21                    1268 	.byte 0x21
      0088B6                       1269 00143$:
      0088B6 4F               [ 1] 1270 	clr	a
      0088B7                       1271 00144$:
      0088B7 88               [ 1] 1272 	push	a
      0088B8 7B 02            [ 1] 1273 	ld	a, (0x02, sp)
      0088BA A1 0C            [ 1] 1274 	cp	a, #0x0c
      0088BC 84               [ 1] 1275 	pop	a
      0088BD 27 11            [ 1] 1276 	jreq	00113$
      0088BF 4D               [ 1] 1277 	tnz	a
      0088C0 26 0E            [ 1] 1278 	jrne	00113$
      0088C2 88               [ 1] 1279 	push	a
      0088C3 4B B4            [ 1] 1280 	push	#0xb4
      0088C5 4B 02            [ 1] 1281 	push	#0x02
      0088C7 5F               [ 1] 1282 	clrw	x
      0088C8 89               [ 2] 1283 	pushw	x
      0088C9 AE 80 9B         [ 2] 1284 	ldw	x, #(___str_0+0)
      0088CC CD AA 54         [ 4] 1285 	call	_assert_failed
      0088CF 84               [ 1] 1286 	pop	a
      0088D0                       1287 00113$:
                                   1288 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      0088D0 4D               [ 1] 1289 	tnz	a
      0088D1 27 0F            [ 1] 1290 	jreq	00108$
                                   1291 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      0088D3 C6 50 C5         [ 1] 1292 	ld	a, 0x50c5
      0088D6 14 01            [ 1] 1293 	and	a, (0x01, sp)
                                   1294 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 699: bitstatus = SET;
      0088D8 A0 0C            [ 1] 1295 	sub	a, #0x0c
      0088DA 26 03            [ 1] 1296 	jrne	00102$
      0088DC 4C               [ 1] 1297 	inc	a
      0088DD 20 0F            [ 2] 1298 	jra	00109$
      0088DF                       1299 00102$:
                                   1300 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 703: bitstatus = RESET;
      0088DF 4F               [ 1] 1301 	clr	a
      0088E0 20 0C            [ 2] 1302 	jra	00109$
      0088E2                       1303 00108$:
                                   1304 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      0088E2 C6 50 C8         [ 1] 1305 	ld	a, 0x50c8
      0088E5 14 01            [ 1] 1306 	and	a, (0x01, sp)
                                   1307 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 711: bitstatus = SET;
      0088E7 A0 0C            [ 1] 1308 	sub	a, #0x0c
      0088E9 26 02            [ 1] 1309 	jrne	00105$
      0088EB 4C               [ 1] 1310 	inc	a
                                   1311 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 715: bitstatus = RESET;
      0088EC 21                    1312 	.byte 0x21
      0088ED                       1313 00105$:
      0088ED 4F               [ 1] 1314 	clr	a
      0088EE                       1315 00109$:
                                   1316 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 720: return bitstatus;
                                   1317 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 721: }
      0088EE 5B 01            [ 2] 1318 	addw	sp, #1
      0088F0 81               [ 4] 1319 	ret
                                   1320 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1321 ;	-----------------------------------------
                                   1322 ;	 function CLK_ClearITPendingBit
                                   1323 ;	-----------------------------------------
      0088F1                       1324 _CLK_ClearITPendingBit:
                                   1325 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 732: assert_param(IS_CLK_IT_OK(CLK_IT));
      0088F1 97               [ 1] 1326 	ld	xl, a
      0088F2 A0 0C            [ 1] 1327 	sub	a, #0x0c
      0088F4 26 02            [ 1] 1328 	jrne	00127$
      0088F6 4C               [ 1] 1329 	inc	a
      0088F7 21                    1330 	.byte 0x21
      0088F8                       1331 00127$:
      0088F8 4F               [ 1] 1332 	clr	a
      0088F9                       1333 00128$:
      0088F9 4D               [ 1] 1334 	tnz	a
      0088FA 26 15            [ 1] 1335 	jrne	00107$
      0088FC 88               [ 1] 1336 	push	a
      0088FD 9F               [ 1] 1337 	ld	a, xl
      0088FE A1 1C            [ 1] 1338 	cp	a, #0x1c
      008900 84               [ 1] 1339 	pop	a
      008901 27 0E            [ 1] 1340 	jreq	00107$
      008903 88               [ 1] 1341 	push	a
      008904 4B DC            [ 1] 1342 	push	#0xdc
      008906 4B 02            [ 1] 1343 	push	#0x02
      008908 5F               [ 1] 1344 	clrw	x
      008909 89               [ 2] 1345 	pushw	x
      00890A AE 80 9B         [ 2] 1346 	ldw	x, #(___str_0+0)
      00890D CD AA 54         [ 4] 1347 	call	_assert_failed
      008910 84               [ 1] 1348 	pop	a
      008911                       1349 00107$:
                                   1350 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      008911 4D               [ 1] 1351 	tnz	a
      008912 27 05            [ 1] 1352 	jreq	00102$
                                   1353 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      008914 72 17 50 C8      [ 1] 1354 	bres	0x50c8, #3
      008918 81               [ 4] 1355 	ret
      008919                       1356 00102$:
                                   1357 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      008919 72 17 50 C5      [ 1] 1358 	bres	0x50c5, #3
                                   1359 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 745: }
      00891D 81               [ 4] 1360 	ret
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
