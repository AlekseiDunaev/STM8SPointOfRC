                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_i2c
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _I2C_DeInit
                                     13 	.globl _I2C_Init
                                     14 	.globl _I2C_Cmd
                                     15 	.globl _I2C_GenerateSTART
                                     16 	.globl _I2C_GenerateSTOP
                                     17 	.globl _I2C_AcknowledgeConfig
                                     18 	.globl _I2C_ReceiveData
                                     19 	.globl _I2C_Send7bitAddress
                                     20 	.globl _I2C_SendData
                                     21 	.globl _I2C_CheckEvent
                                     22 	.globl _I2C_GetFlagStatus
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area DATA
                                     27 ;--------------------------------------------------------
                                     28 ; ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area INITIALIZED
                                     31 ;--------------------------------------------------------
                                     32 ; absolute external ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DABS (ABS)
                                     35 
                                     36 ; default segment ordering for linker
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area CONST
                                     41 	.area INITIALIZER
                                     42 	.area CODE
                                     43 
                                     44 ;--------------------------------------------------------
                                     45 ; global & static initialisations
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area GSINIT
                                     49 	.area GSFINAL
                                     50 	.area GSINIT
                                     51 ;--------------------------------------------------------
                                     52 ; Home
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area HOME
                                     56 ;--------------------------------------------------------
                                     57 ; code
                                     58 ;--------------------------------------------------------
                                     59 	.area CODE
                                     60 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 67: void I2C_DeInit(void)
                                     61 ;	-----------------------------------------
                                     62 ;	 function I2C_DeInit
                                     63 ;	-----------------------------------------
      00884E                         64 _I2C_DeInit:
                                     65 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 69: I2C->CR1 = I2C_CR1_RESET_VALUE;
      00884E 35 00 52 10      [ 1]   66 	mov	0x5210+0, #0x00
                                     67 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 70: I2C->CR2 = I2C_CR2_RESET_VALUE;
      008852 35 00 52 11      [ 1]   68 	mov	0x5211+0, #0x00
                                     69 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 71: I2C->FREQR = I2C_FREQR_RESET_VALUE;
      008856 35 00 52 12      [ 1]   70 	mov	0x5212+0, #0x00
                                     71 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 72: I2C->OARL = I2C_OARL_RESET_VALUE;
      00885A 35 00 52 13      [ 1]   72 	mov	0x5213+0, #0x00
                                     73 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 73: I2C->OARH = I2C_OARH_RESET_VALUE;
      00885E 35 00 52 14      [ 1]   74 	mov	0x5214+0, #0x00
                                     75 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 74: I2C->ITR = I2C_ITR_RESET_VALUE;
      008862 35 00 52 1A      [ 1]   76 	mov	0x521a+0, #0x00
                                     77 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 75: I2C->CCRL = I2C_CCRL_RESET_VALUE;
      008866 35 00 52 1B      [ 1]   78 	mov	0x521b+0, #0x00
                                     79 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 76: I2C->CCRH = I2C_CCRH_RESET_VALUE;
      00886A 35 00 52 1C      [ 1]   80 	mov	0x521c+0, #0x00
                                     81 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 77: I2C->TRISER = I2C_TRISER_RESET_VALUE;
      00886E 35 02 52 1D      [ 1]   82 	mov	0x521d+0, #0x02
                                     83 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 78: }
      008872 81               [ 4]   84 	ret
                                     85 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 96: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
                                     86 ;	-----------------------------------------
                                     87 ;	 function I2C_Init
                                     88 ;	-----------------------------------------
      008873                         89 _I2C_Init:
      008873 52 07            [ 2]   90 	sub	sp, #7
                                     91 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 102: uint8_t tmpccrh = 0;
      008875 0F 05            [ 1]   92 	clr	(0x05, sp)
                                     93 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 105: assert_param(IS_I2C_ACK_OK(Ack));
      008877 0D 11            [ 1]   94 	tnz	(0x11, sp)
      008879 27 17            [ 1]   95 	jreq	00114$
      00887B 7B 11            [ 1]   96 	ld	a, (0x11, sp)
      00887D 4A               [ 1]   97 	dec	a
      00887E 27 12            [ 1]   98 	jreq	00114$
      008880 7B 11            [ 1]   99 	ld	a, (0x11, sp)
      008882 A1 02            [ 1]  100 	cp	a, #0x02
      008884 27 0C            [ 1]  101 	jreq	00114$
      008886 4B 69            [ 1]  102 	push	#0x69
      008888 5F               [ 1]  103 	clrw	x
      008889 89               [ 2]  104 	pushw	x
      00888A 4B 00            [ 1]  105 	push	#0x00
      00888C AE 81 6E         [ 2]  106 	ldw	x, #(___str_0+0)
      00888F CD A6 5B         [ 4]  107 	call	_assert_failed
      008892                        108 00114$:
                                    109 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 106: assert_param(IS_I2C_ADDMODE_OK(AddMode));
      008892 0D 12            [ 1]  110 	tnz	(0x12, sp)
      008894 27 12            [ 1]  111 	jreq	00122$
      008896 7B 12            [ 1]  112 	ld	a, (0x12, sp)
      008898 A1 80            [ 1]  113 	cp	a, #0x80
      00889A 27 0C            [ 1]  114 	jreq	00122$
      00889C 4B 6A            [ 1]  115 	push	#0x6a
      00889E 5F               [ 1]  116 	clrw	x
      00889F 89               [ 2]  117 	pushw	x
      0088A0 4B 00            [ 1]  118 	push	#0x00
      0088A2 AE 81 6E         [ 2]  119 	ldw	x, #(___str_0+0)
      0088A5 CD A6 5B         [ 4]  120 	call	_assert_failed
      0088A8                        121 00122$:
                                    122 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 107: assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
      0088A8 1E 0E            [ 2]  123 	ldw	x, (0x0e, sp)
      0088AA A3 03 FF         [ 2]  124 	cpw	x, #0x03ff
      0088AD 23 0C            [ 2]  125 	jrule	00127$
      0088AF 4B 6B            [ 1]  126 	push	#0x6b
      0088B1 5F               [ 1]  127 	clrw	x
      0088B2 89               [ 2]  128 	pushw	x
      0088B3 4B 00            [ 1]  129 	push	#0x00
      0088B5 AE 81 6E         [ 2]  130 	ldw	x, #(___str_0+0)
      0088B8 CD A6 5B         [ 4]  131 	call	_assert_failed
      0088BB                        132 00127$:
                                    133 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 108: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
      0088BB 0D 10            [ 1]  134 	tnz	(0x10, sp)
      0088BD 27 12            [ 1]  135 	jreq	00129$
      0088BF 7B 10            [ 1]  136 	ld	a, (0x10, sp)
      0088C1 A1 40            [ 1]  137 	cp	a, #0x40
      0088C3 27 0C            [ 1]  138 	jreq	00129$
      0088C5 4B 6C            [ 1]  139 	push	#0x6c
      0088C7 5F               [ 1]  140 	clrw	x
      0088C8 89               [ 2]  141 	pushw	x
      0088C9 4B 00            [ 1]  142 	push	#0x00
      0088CB AE 81 6E         [ 2]  143 	ldw	x, #(___str_0+0)
      0088CE CD A6 5B         [ 4]  144 	call	_assert_failed
      0088D1                        145 00129$:
                                    146 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 109: assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
      0088D1 7B 13            [ 1]  147 	ld	a, (0x13, sp)
      0088D3 A1 01            [ 1]  148 	cp	a, #0x01
      0088D5 25 06            [ 1]  149 	jrc	00133$
      0088D7 7B 13            [ 1]  150 	ld	a, (0x13, sp)
      0088D9 A1 10            [ 1]  151 	cp	a, #0x10
      0088DB 23 0C            [ 2]  152 	jrule	00134$
      0088DD                        153 00133$:
      0088DD 4B 6D            [ 1]  154 	push	#0x6d
      0088DF 5F               [ 1]  155 	clrw	x
      0088E0 89               [ 2]  156 	pushw	x
      0088E1 4B 00            [ 1]  157 	push	#0x00
      0088E3 AE 81 6E         [ 2]  158 	ldw	x, #(___str_0+0)
      0088E6 CD A6 5B         [ 4]  159 	call	_assert_failed
      0088E9                        160 00134$:
                                    161 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 110: assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
      0088E9 1E 0C            [ 2]  162 	ldw	x, (0x0c, sp)
      0088EB A3 00 01         [ 2]  163 	cpw	x, #0x0001
      0088EE 7B 0B            [ 1]  164 	ld	a, (0x0b, sp)
      0088F0 A2 00            [ 1]  165 	sbc	a, #0x00
      0088F2 7B 0A            [ 1]  166 	ld	a, (0x0a, sp)
      0088F4 A2 00            [ 1]  167 	sbc	a, #0x00
      0088F6 25 0E            [ 1]  168 	jrc	00138$
      0088F8 AE 1A 80         [ 2]  169 	ldw	x, #0x1a80
      0088FB 13 0C            [ 2]  170 	cpw	x, (0x0c, sp)
      0088FD A6 06            [ 1]  171 	ld	a, #0x06
      0088FF 12 0B            [ 1]  172 	sbc	a, (0x0b, sp)
      008901 4F               [ 1]  173 	clr	a
      008902 12 0A            [ 1]  174 	sbc	a, (0x0a, sp)
      008904 24 0C            [ 1]  175 	jrnc	00139$
      008906                        176 00138$:
      008906 4B 6E            [ 1]  177 	push	#0x6e
      008908 5F               [ 1]  178 	clrw	x
      008909 89               [ 2]  179 	pushw	x
      00890A 4B 00            [ 1]  180 	push	#0x00
      00890C AE 81 6E         [ 2]  181 	ldw	x, #(___str_0+0)
      00890F CD A6 5B         [ 4]  182 	call	_assert_failed
      008912                        183 00139$:
                                    184 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 115: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
      008912 C6 52 12         [ 1]  185 	ld	a, 0x5212
      008915 A4 C0            [ 1]  186 	and	a, #0xc0
      008917 C7 52 12         [ 1]  187 	ld	0x5212, a
                                    188 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 117: I2C->FREQR |= InputClockFrequencyMHz;
      00891A C6 52 12         [ 1]  189 	ld	a, 0x5212
      00891D 1A 13            [ 1]  190 	or	a, (0x13, sp)
      00891F C7 52 12         [ 1]  191 	ld	0x5212, a
                                    192 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 121: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008922 72 11 52 10      [ 1]  193 	bres	0x5210, #0
                                    194 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 124: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
      008926 C6 52 1C         [ 1]  195 	ld	a, 0x521c
      008929 A4 30            [ 1]  196 	and	a, #0x30
      00892B C7 52 1C         [ 1]  197 	ld	0x521c, a
                                    198 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 125: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
      00892E C6 52 1B         [ 1]  199 	ld	a, 0x521b
      008931 35 00 52 1B      [ 1]  200 	mov	0x521b+0, #0x00
                                    201 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008935 5F               [ 1]  202 	clrw	x
      008936 7B 13            [ 1]  203 	ld	a, (0x13, sp)
      008938 97               [ 1]  204 	ld	xl, a
      008939 90 5F            [ 1]  205 	clrw	y
      00893B 89               [ 2]  206 	pushw	x
      00893C 90 89            [ 2]  207 	pushw	y
      00893E 4B 40            [ 1]  208 	push	#0x40
      008940 4B 42            [ 1]  209 	push	#0x42
      008942 4B 0F            [ 1]  210 	push	#0x0f
      008944 4B 00            [ 1]  211 	push	#0x00
      008946 CD B0 CC         [ 4]  212 	call	__mullong
      008949 5B 08            [ 2]  213 	addw	sp, #8
      00894B 1F 03            [ 2]  214 	ldw	(0x03, sp), x
      00894D 17 01            [ 2]  215 	ldw	(0x01, sp), y
                                    216 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 128: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
      00894F AE 86 A0         [ 2]  217 	ldw	x, #0x86a0
      008952 13 0C            [ 2]  218 	cpw	x, (0x0c, sp)
      008954 A6 01            [ 1]  219 	ld	a, #0x01
      008956 12 0B            [ 1]  220 	sbc	a, (0x0b, sp)
      008958 4F               [ 1]  221 	clr	a
      008959 12 0A            [ 1]  222 	sbc	a, (0x0a, sp)
      00895B 24 76            [ 1]  223 	jrnc	00109$
                                    224 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 131: tmpccrh = I2C_CCRH_FS;
      00895D A6 80            [ 1]  225 	ld	a, #0x80
      00895F 6B 05            [ 1]  226 	ld	(0x05, sp), a
                                    227 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 133: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
      008961 0D 10            [ 1]  228 	tnz	(0x10, sp)
      008963 26 21            [ 1]  229 	jrne	00102$
                                    230 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008965 1E 0C            [ 2]  231 	ldw	x, (0x0c, sp)
      008967 89               [ 2]  232 	pushw	x
      008968 1E 0C            [ 2]  233 	ldw	x, (0x0c, sp)
      00896A 89               [ 2]  234 	pushw	x
      00896B 4B 03            [ 1]  235 	push	#0x03
      00896D 5F               [ 1]  236 	clrw	x
      00896E 89               [ 2]  237 	pushw	x
      00896F 4B 00            [ 1]  238 	push	#0x00
      008971 CD B0 CC         [ 4]  239 	call	__mullong
      008974 5B 08            [ 2]  240 	addw	sp, #8
      008976 89               [ 2]  241 	pushw	x
      008977 90 89            [ 2]  242 	pushw	y
      008979 1E 07            [ 2]  243 	ldw	x, (0x07, sp)
      00897B 89               [ 2]  244 	pushw	x
      00897C 1E 07            [ 2]  245 	ldw	x, (0x07, sp)
      00897E 89               [ 2]  246 	pushw	x
      00897F CD AE 01         [ 4]  247 	call	__divulong
      008982 5B 08            [ 2]  248 	addw	sp, #8
      008984 20 26            [ 2]  249 	jra	00103$
      008986                        250 00102$:
                                    251 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 141: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
      008986 1E 0C            [ 2]  252 	ldw	x, (0x0c, sp)
      008988 89               [ 2]  253 	pushw	x
      008989 1E 0C            [ 2]  254 	ldw	x, (0x0c, sp)
      00898B 89               [ 2]  255 	pushw	x
      00898C 4B 19            [ 1]  256 	push	#0x19
      00898E 5F               [ 1]  257 	clrw	x
      00898F 89               [ 2]  258 	pushw	x
      008990 4B 00            [ 1]  259 	push	#0x00
      008992 CD B0 CC         [ 4]  260 	call	__mullong
      008995 5B 08            [ 2]  261 	addw	sp, #8
      008997 9F               [ 1]  262 	ld	a, xl
      008998 88               [ 1]  263 	push	a
      008999 9E               [ 1]  264 	ld	a, xh
      00899A 88               [ 1]  265 	push	a
      00899B 90 89            [ 2]  266 	pushw	y
      00899D 1E 07            [ 2]  267 	ldw	x, (0x07, sp)
      00899F 89               [ 2]  268 	pushw	x
      0089A0 1E 07            [ 2]  269 	ldw	x, (0x07, sp)
      0089A2 89               [ 2]  270 	pushw	x
      0089A3 CD AE 01         [ 4]  271 	call	__divulong
      0089A6 5B 08            [ 2]  272 	addw	sp, #8
                                    273 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 143: tmpccrh |= I2C_CCRH_DUTY;
      0089A8 A6 C0            [ 1]  274 	ld	a, #0xc0
      0089AA 6B 05            [ 1]  275 	ld	(0x05, sp), a
      0089AC                        276 00103$:
                                    277 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 147: if (result < (uint16_t)0x01)
      0089AC A3 00 01         [ 2]  278 	cpw	x, #0x0001
      0089AF 24 02            [ 1]  279 	jrnc	00105$
                                    280 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 150: result = (uint16_t)0x0001;
      0089B1 5F               [ 1]  281 	clrw	x
      0089B2 5C               [ 1]  282 	incw	x
      0089B3                        283 00105$:
                                    284 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 156: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
      0089B3 7B 13            [ 1]  285 	ld	a, (0x13, sp)
      0089B5 6B 07            [ 1]  286 	ld	(0x07, sp), a
      0089B7 0F 06            [ 1]  287 	clr	(0x06, sp)
      0089B9 89               [ 2]  288 	pushw	x
      0089BA 1E 08            [ 2]  289 	ldw	x, (0x08, sp)
      0089BC 58               [ 2]  290 	sllw	x
      0089BD 72 FB 08         [ 2]  291 	addw	x, (0x08, sp)
      0089C0 51               [ 1]  292 	exgw	x, y
      0089C1 4B 0A            [ 1]  293 	push	#0x0a
      0089C3 4B 00            [ 1]  294 	push	#0x00
      0089C5 93               [ 1]  295 	ldw	x, y
      0089C6 CD B1 48         [ 4]  296 	call	__divsint
      0089C9 90 93            [ 1]  297 	ldw	y, x
      0089CB 9F               [ 1]  298 	ld	a, xl
      0089CC 85               [ 2]  299 	popw	x
      0089CD 4C               [ 1]  300 	inc	a
                                    301 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 157: I2C->TRISER = (uint8_t)tmpval;
      0089CE C7 52 1D         [ 1]  302 	ld	0x521d, a
      0089D1 20 23            [ 2]  303 	jra	00110$
      0089D3                        304 00109$:
                                    305 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 164: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
      0089D3 1E 0C            [ 2]  306 	ldw	x, (0x0c, sp)
      0089D5 16 0A            [ 2]  307 	ldw	y, (0x0a, sp)
      0089D7 58               [ 2]  308 	sllw	x
      0089D8 90 59            [ 2]  309 	rlcw	y
      0089DA 89               [ 2]  310 	pushw	x
      0089DB 90 89            [ 2]  311 	pushw	y
      0089DD 1E 07            [ 2]  312 	ldw	x, (0x07, sp)
      0089DF 89               [ 2]  313 	pushw	x
      0089E0 1E 07            [ 2]  314 	ldw	x, (0x07, sp)
      0089E2 89               [ 2]  315 	pushw	x
      0089E3 CD AE 01         [ 4]  316 	call	__divulong
      0089E6 5B 08            [ 2]  317 	addw	sp, #8
                                    318 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 167: if (result < (uint16_t)0x0004)
      0089E8 A3 00 04         [ 2]  319 	cpw	x, #0x0004
      0089EB 24 03            [ 1]  320 	jrnc	00107$
                                    321 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 170: result = (uint16_t)0x0004;
      0089ED AE 00 04         [ 2]  322 	ldw	x, #0x0004
      0089F0                        323 00107$:
                                    324 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 176: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
      0089F0 7B 13            [ 1]  325 	ld	a, (0x13, sp)
      0089F2 4C               [ 1]  326 	inc	a
      0089F3 C7 52 1D         [ 1]  327 	ld	0x521d, a
      0089F6                        328 00110$:
                                    329 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 181: I2C->CCRL = (uint8_t)result;
      0089F6 9F               [ 1]  330 	ld	a, xl
      0089F7 C7 52 1B         [ 1]  331 	ld	0x521b, a
                                    332 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 182: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
      0089FA 9E               [ 1]  333 	ld	a, xh
      0089FB A4 0F            [ 1]  334 	and	a, #0x0f
      0089FD 1A 05            [ 1]  335 	or	a, (0x05, sp)
      0089FF C7 52 1C         [ 1]  336 	ld	0x521c, a
                                    337 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 185: I2C->CR1 |= I2C_CR1_PE;
      008A02 72 10 52 10      [ 1]  338 	bset	0x5210, #0
                                    339 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 188: I2C_AcknowledgeConfig(Ack);
      008A06 7B 11            [ 1]  340 	ld	a, (0x11, sp)
      008A08 CD 8A AC         [ 4]  341 	call	_I2C_AcknowledgeConfig
                                    342 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 191: I2C->OARL = (uint8_t)(OwnAddress);
      008A0B 7B 0F            [ 1]  343 	ld	a, (0x0f, sp)
      008A0D C7 52 13         [ 1]  344 	ld	0x5213, a
                                    345 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 192: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
      008A10 7B 12            [ 1]  346 	ld	a, (0x12, sp)
      008A12 AA 40            [ 1]  347 	or	a, #0x40
      008A14 6B 07            [ 1]  348 	ld	(0x07, sp), a
                                    349 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 193: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
      008A16 4F               [ 1]  350 	clr	a
      008A17 97               [ 1]  351 	ld	xl, a
      008A18 7B 0E            [ 1]  352 	ld	a, (0x0e, sp)
      008A1A A4 03            [ 1]  353 	and	a, #0x03
      008A1C 95               [ 1]  354 	ld	xh, a
      008A1D A6 80            [ 1]  355 	ld	a, #0x80
      008A1F 62               [ 2]  356 	div	x, a
      008A20 9F               [ 1]  357 	ld	a, xl
      008A21 1A 07            [ 1]  358 	or	a, (0x07, sp)
      008A23 C7 52 14         [ 1]  359 	ld	0x5214, a
                                    360 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 194: }
      008A26 1E 08            [ 2]  361 	ldw	x, (8, sp)
      008A28 5B 13            [ 2]  362 	addw	sp, #19
      008A2A FC               [ 2]  363 	jp	(x)
                                    364 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 202: void I2C_Cmd(FunctionalState NewState)
                                    365 ;	-----------------------------------------
                                    366 ;	 function I2C_Cmd
                                    367 ;	-----------------------------------------
      008A2B                        368 _I2C_Cmd:
      008A2B 88               [ 1]  369 	push	a
                                    370 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 205: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008A2C 6B 01            [ 1]  371 	ld	(0x01, sp), a
      008A2E 27 11            [ 1]  372 	jreq	00107$
      008A30 7B 01            [ 1]  373 	ld	a, (0x01, sp)
      008A32 4A               [ 1]  374 	dec	a
      008A33 27 0C            [ 1]  375 	jreq	00107$
      008A35 4B CD            [ 1]  376 	push	#0xcd
      008A37 5F               [ 1]  377 	clrw	x
      008A38 89               [ 2]  378 	pushw	x
      008A39 4B 00            [ 1]  379 	push	#0x00
      008A3B AE 81 6E         [ 2]  380 	ldw	x, #(___str_0+0)
      008A3E CD A6 5B         [ 4]  381 	call	_assert_failed
      008A41                        382 00107$:
                                    383 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      008A41 C6 52 10         [ 1]  384 	ld	a, 0x5210
                                    385 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 207: if (NewState != DISABLE)
      008A44 0D 01            [ 1]  386 	tnz	(0x01, sp)
      008A46 27 07            [ 1]  387 	jreq	00102$
                                    388 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      008A48 AA 01            [ 1]  389 	or	a, #0x01
      008A4A C7 52 10         [ 1]  390 	ld	0x5210, a
      008A4D 20 05            [ 2]  391 	jra	00104$
      008A4F                        392 00102$:
                                    393 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 215: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008A4F A4 FE            [ 1]  394 	and	a, #0xfe
      008A51 C7 52 10         [ 1]  395 	ld	0x5210, a
      008A54                        396 00104$:
                                    397 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 217: }
      008A54 84               [ 1]  398 	pop	a
      008A55 81               [ 4]  399 	ret
                                    400 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 252: void I2C_GenerateSTART(FunctionalState NewState)
                                    401 ;	-----------------------------------------
                                    402 ;	 function I2C_GenerateSTART
                                    403 ;	-----------------------------------------
      008A56                        404 _I2C_GenerateSTART:
      008A56 88               [ 1]  405 	push	a
                                    406 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 255: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008A57 6B 01            [ 1]  407 	ld	(0x01, sp), a
      008A59 27 11            [ 1]  408 	jreq	00107$
      008A5B 7B 01            [ 1]  409 	ld	a, (0x01, sp)
      008A5D 4A               [ 1]  410 	dec	a
      008A5E 27 0C            [ 1]  411 	jreq	00107$
      008A60 4B FF            [ 1]  412 	push	#0xff
      008A62 5F               [ 1]  413 	clrw	x
      008A63 89               [ 2]  414 	pushw	x
      008A64 4B 00            [ 1]  415 	push	#0x00
      008A66 AE 81 6E         [ 2]  416 	ldw	x, #(___str_0+0)
      008A69 CD A6 5B         [ 4]  417 	call	_assert_failed
      008A6C                        418 00107$:
                                    419 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 260: I2C->CR2 |= I2C_CR2_START;
      008A6C C6 52 11         [ 1]  420 	ld	a, 0x5211
                                    421 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 257: if (NewState != DISABLE)
      008A6F 0D 01            [ 1]  422 	tnz	(0x01, sp)
      008A71 27 07            [ 1]  423 	jreq	00102$
                                    424 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 260: I2C->CR2 |= I2C_CR2_START;
      008A73 AA 01            [ 1]  425 	or	a, #0x01
      008A75 C7 52 11         [ 1]  426 	ld	0x5211, a
      008A78 20 05            [ 2]  427 	jra	00104$
      008A7A                        428 00102$:
                                    429 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 265: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
      008A7A A4 FE            [ 1]  430 	and	a, #0xfe
      008A7C C7 52 11         [ 1]  431 	ld	0x5211, a
      008A7F                        432 00104$:
                                    433 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 267: }
      008A7F 84               [ 1]  434 	pop	a
      008A80 81               [ 4]  435 	ret
                                    436 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 275: void I2C_GenerateSTOP(FunctionalState NewState)
                                    437 ;	-----------------------------------------
                                    438 ;	 function I2C_GenerateSTOP
                                    439 ;	-----------------------------------------
      008A81                        440 _I2C_GenerateSTOP:
      008A81 88               [ 1]  441 	push	a
                                    442 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 278: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008A82 6B 01            [ 1]  443 	ld	(0x01, sp), a
      008A84 27 11            [ 1]  444 	jreq	00107$
      008A86 7B 01            [ 1]  445 	ld	a, (0x01, sp)
      008A88 4A               [ 1]  446 	dec	a
      008A89 27 0C            [ 1]  447 	jreq	00107$
      008A8B 4B 16            [ 1]  448 	push	#0x16
      008A8D 4B 01            [ 1]  449 	push	#0x01
      008A8F 5F               [ 1]  450 	clrw	x
      008A90 89               [ 2]  451 	pushw	x
      008A91 AE 81 6E         [ 2]  452 	ldw	x, #(___str_0+0)
      008A94 CD A6 5B         [ 4]  453 	call	_assert_failed
      008A97                        454 00107$:
                                    455 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 283: I2C->CR2 |= I2C_CR2_STOP;
      008A97 C6 52 11         [ 1]  456 	ld	a, 0x5211
                                    457 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 280: if (NewState != DISABLE)
      008A9A 0D 01            [ 1]  458 	tnz	(0x01, sp)
      008A9C 27 07            [ 1]  459 	jreq	00102$
                                    460 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 283: I2C->CR2 |= I2C_CR2_STOP;
      008A9E AA 02            [ 1]  461 	or	a, #0x02
      008AA0 C7 52 11         [ 1]  462 	ld	0x5211, a
      008AA3 20 05            [ 2]  463 	jra	00104$
      008AA5                        464 00102$:
                                    465 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 288: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
      008AA5 A4 FD            [ 1]  466 	and	a, #0xfd
      008AA7 C7 52 11         [ 1]  467 	ld	0x5211, a
      008AAA                        468 00104$:
                                    469 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 290: }
      008AAA 84               [ 1]  470 	pop	a
      008AAB 81               [ 4]  471 	ret
                                    472 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 351: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
                                    473 ;	-----------------------------------------
                                    474 ;	 function I2C_AcknowledgeConfig
                                    475 ;	-----------------------------------------
      008AAC                        476 _I2C_AcknowledgeConfig:
                                    477 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 354: assert_param(IS_I2C_ACK_OK(Ack));
      008AAC 97               [ 1]  478 	ld	xl, a
      008AAD 4A               [ 1]  479 	dec	a
      008AAE 26 05            [ 1]  480 	jrne	00143$
      008AB0 A6 01            [ 1]  481 	ld	a, #0x01
      008AB2 95               [ 1]  482 	ld	xh, a
      008AB3 20 02            [ 2]  483 	jra	00144$
      008AB5                        484 00143$:
      008AB5 4F               [ 1]  485 	clr	a
      008AB6 95               [ 1]  486 	ld	xh, a
      008AB7                        487 00144$:
      008AB7 9F               [ 1]  488 	ld	a, xl
      008AB8 4D               [ 1]  489 	tnz	a
      008AB9 27 19            [ 1]  490 	jreq	00110$
      008ABB 9E               [ 1]  491 	ld	a, xh
      008ABC 4D               [ 1]  492 	tnz	a
      008ABD 26 15            [ 1]  493 	jrne	00110$
      008ABF 9F               [ 1]  494 	ld	a, xl
      008AC0 A1 02            [ 1]  495 	cp	a, #0x02
      008AC2 27 10            [ 1]  496 	jreq	00110$
      008AC4 89               [ 2]  497 	pushw	x
      008AC5 4B 62            [ 1]  498 	push	#0x62
      008AC7 4B 01            [ 1]  499 	push	#0x01
      008AC9 4B 00            [ 1]  500 	push	#0x00
      008ACB 4B 00            [ 1]  501 	push	#0x00
      008ACD AE 81 6E         [ 2]  502 	ldw	x, #(___str_0+0)
      008AD0 CD A6 5B         [ 4]  503 	call	_assert_failed
      008AD3 85               [ 2]  504 	popw	x
      008AD4                        505 00110$:
                                    506 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 359: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008AD4 C6 52 11         [ 1]  507 	ld	a, 0x5211
                                    508 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 356: if (Ack == I2C_ACK_NONE)
      008AD7 41               [ 1]  509 	exg	a, xl
      008AD8 4D               [ 1]  510 	tnz	a
      008AD9 41               [ 1]  511 	exg	a, xl
      008ADA 26 06            [ 1]  512 	jrne	00105$
                                    513 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 359: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008ADC A4 FB            [ 1]  514 	and	a, #0xfb
      008ADE C7 52 11         [ 1]  515 	ld	0x5211, a
      008AE1 81               [ 4]  516 	ret
      008AE2                        517 00105$:
                                    518 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 364: I2C->CR2 |= I2C_CR2_ACK;
      008AE2 AA 04            [ 1]  519 	or	a, #0x04
      008AE4 C7 52 11         [ 1]  520 	ld	0x5211, a
                                    521 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 359: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008AE7 C6 52 11         [ 1]  522 	ld	a, 0x5211
                                    523 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 366: if (Ack == I2C_ACK_CURR)
      008AEA 88               [ 1]  524 	push	a
      008AEB 9E               [ 1]  525 	ld	a, xh
      008AEC 4D               [ 1]  526 	tnz	a
      008AED 84               [ 1]  527 	pop	a
      008AEE 27 06            [ 1]  528 	jreq	00102$
                                    529 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
      008AF0 A4 F7            [ 1]  530 	and	a, #0xf7
      008AF2 C7 52 11         [ 1]  531 	ld	0x5211, a
      008AF5 81               [ 4]  532 	ret
      008AF6                        533 00102$:
                                    534 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 374: I2C->CR2 |= I2C_CR2_POS;
      008AF6 AA 08            [ 1]  535 	or	a, #0x08
      008AF8 C7 52 11         [ 1]  536 	ld	0x5211, a
                                    537 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 377: }
      008AFB 81               [ 4]  538 	ret
                                    539 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 437: uint8_t I2C_ReceiveData(void)
                                    540 ;	-----------------------------------------
                                    541 ;	 function I2C_ReceiveData
                                    542 ;	-----------------------------------------
      008AFC                        543 _I2C_ReceiveData:
                                    544 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 440: return ((uint8_t)I2C->DR);
      008AFC C6 52 16         [ 1]  545 	ld	a, 0x5216
                                    546 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 441: }
      008AFF 81               [ 4]  547 	ret
                                    548 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 450: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
                                    549 ;	-----------------------------------------
                                    550 ;	 function I2C_Send7bitAddress
                                    551 ;	-----------------------------------------
      008B00                        552 _I2C_Send7bitAddress:
      008B00 88               [ 1]  553 	push	a
                                    554 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 453: assert_param(IS_I2C_ADDRESS_OK(Address));
      008B01 6B 01            [ 1]  555 	ld	(0x01, sp), a
      008B03 44               [ 1]  556 	srl	a
      008B04 24 0C            [ 1]  557 	jrnc	00104$
      008B06 4B C5            [ 1]  558 	push	#0xc5
      008B08 4B 01            [ 1]  559 	push	#0x01
      008B0A 5F               [ 1]  560 	clrw	x
      008B0B 89               [ 2]  561 	pushw	x
      008B0C AE 81 6E         [ 2]  562 	ldw	x, #(___str_0+0)
      008B0F CD A6 5B         [ 4]  563 	call	_assert_failed
      008B12                        564 00104$:
                                    565 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 454: assert_param(IS_I2C_DIRECTION_OK(Direction));
      008B12 0D 04            [ 1]  566 	tnz	(0x04, sp)
      008B14 27 11            [ 1]  567 	jreq	00106$
      008B16 7B 04            [ 1]  568 	ld	a, (0x04, sp)
      008B18 4A               [ 1]  569 	dec	a
      008B19 27 0C            [ 1]  570 	jreq	00106$
      008B1B 4B C6            [ 1]  571 	push	#0xc6
      008B1D 4B 01            [ 1]  572 	push	#0x01
      008B1F 5F               [ 1]  573 	clrw	x
      008B20 89               [ 2]  574 	pushw	x
      008B21 AE 81 6E         [ 2]  575 	ldw	x, #(___str_0+0)
      008B24 CD A6 5B         [ 4]  576 	call	_assert_failed
      008B27                        577 00106$:
                                    578 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 457: Address &= (uint8_t)0xFE;
      008B27 7B 01            [ 1]  579 	ld	a, (0x01, sp)
      008B29 A4 FE            [ 1]  580 	and	a, #0xfe
                                    581 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 460: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
      008B2B 1A 04            [ 1]  582 	or	a, (0x04, sp)
      008B2D C7 52 16         [ 1]  583 	ld	0x5216, a
                                    584 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 461: }
      008B30 84               [ 1]  585 	pop	a
      008B31 85               [ 2]  586 	popw	x
      008B32 84               [ 1]  587 	pop	a
      008B33 FC               [ 2]  588 	jp	(x)
                                    589 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 468: void I2C_SendData(uint8_t Data)
                                    590 ;	-----------------------------------------
                                    591 ;	 function I2C_SendData
                                    592 ;	-----------------------------------------
      008B34                        593 _I2C_SendData:
                                    594 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 471: I2C->DR = Data;
      008B34 C7 52 16         [ 1]  595 	ld	0x5216, a
                                    596 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 472: }
      008B37 81               [ 4]  597 	ret
                                    598 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 588: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
                                    599 ;	-----------------------------------------
                                    600 ;	 function I2C_CheckEvent
                                    601 ;	-----------------------------------------
      008B38                        602 _I2C_CheckEvent:
      008B38 52 06            [ 2]  603 	sub	sp, #6
                                    604 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 590: __IO uint16_t lastevent = 0x00;
      008B3A 0F 02            [ 1]  605 	clr	(0x02, sp)
      008B3C 0F 01            [ 1]  606 	clr	(0x01, sp)
                                    607 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 596: assert_param(IS_I2C_EVENT_OK(I2C_Event));
      008B3E A3 00 04         [ 2]  608 	cpw	x, #0x0004
      008B41 26 03            [ 1]  609 	jrne	00247$
      008B43 A6 01            [ 1]  610 	ld	a, #0x01
      008B45 21                     611 	.byte 0x21
      008B46                        612 00247$:
      008B46 4F               [ 1]  613 	clr	a
      008B47                        614 00248$:
      008B47 A3 06 82         [ 2]  615 	cpw	x, #0x0682
      008B4A 27 5B            [ 1]  616 	jreq	00110$
      008B4C A3 02 02         [ 2]  617 	cpw	x, #0x0202
      008B4F 27 56            [ 1]  618 	jreq	00110$
      008B51 A3 12 00         [ 2]  619 	cpw	x, #0x1200
      008B54 27 51            [ 1]  620 	jreq	00110$
      008B56 A3 02 40         [ 2]  621 	cpw	x, #0x0240
      008B59 27 4C            [ 1]  622 	jreq	00110$
      008B5B A3 03 50         [ 2]  623 	cpw	x, #0x0350
      008B5E 27 47            [ 1]  624 	jreq	00110$
      008B60 A3 06 84         [ 2]  625 	cpw	x, #0x0684
      008B63 27 42            [ 1]  626 	jreq	00110$
      008B65 A3 07 94         [ 2]  627 	cpw	x, #0x0794
      008B68 27 3D            [ 1]  628 	jreq	00110$
      008B6A 4D               [ 1]  629 	tnz	a
      008B6B 26 3A            [ 1]  630 	jrne	00110$
      008B6D A3 00 10         [ 2]  631 	cpw	x, #0x0010
      008B70 27 35            [ 1]  632 	jreq	00110$
      008B72 A3 03 01         [ 2]  633 	cpw	x, #0x0301
      008B75 27 30            [ 1]  634 	jreq	00110$
      008B77 A3 07 82         [ 2]  635 	cpw	x, #0x0782
      008B7A 27 2B            [ 1]  636 	jreq	00110$
      008B7C A3 03 02         [ 2]  637 	cpw	x, #0x0302
      008B7F 27 26            [ 1]  638 	jreq	00110$
      008B81 A3 03 40         [ 2]  639 	cpw	x, #0x0340
      008B84 27 21            [ 1]  640 	jreq	00110$
      008B86 A3 07 84         [ 2]  641 	cpw	x, #0x0784
      008B89 27 1C            [ 1]  642 	jreq	00110$
      008B8B A3 07 80         [ 2]  643 	cpw	x, #0x0780
      008B8E 27 17            [ 1]  644 	jreq	00110$
      008B90 A3 03 08         [ 2]  645 	cpw	x, #0x0308
      008B93 27 12            [ 1]  646 	jreq	00110$
      008B95 88               [ 1]  647 	push	a
      008B96 89               [ 2]  648 	pushw	x
      008B97 4B 54            [ 1]  649 	push	#0x54
      008B99 4B 02            [ 1]  650 	push	#0x02
      008B9B 4B 00            [ 1]  651 	push	#0x00
      008B9D 4B 00            [ 1]  652 	push	#0x00
      008B9F AE 81 6E         [ 2]  653 	ldw	x, #(___str_0+0)
      008BA2 CD A6 5B         [ 4]  654 	call	_assert_failed
      008BA5 85               [ 2]  655 	popw	x
      008BA6 84               [ 1]  656 	pop	a
      008BA7                        657 00110$:
                                    658 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 598: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
      008BA7 4D               [ 1]  659 	tnz	a
      008BA8 27 0D            [ 1]  660 	jreq	00102$
                                    661 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 600: lastevent = I2C->SR2 & I2C_SR2_AF;
      008BAA C6 52 18         [ 1]  662 	ld	a, 0x5218
      008BAD A4 04            [ 1]  663 	and	a, #0x04
      008BAF 90 5F            [ 1]  664 	clrw	y
      008BB1 90 97            [ 1]  665 	ld	yl, a
      008BB3 17 01            [ 2]  666 	ldw	(0x01, sp), y
      008BB5 20 1A            [ 2]  667 	jra	00103$
      008BB7                        668 00102$:
                                    669 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 604: flag1 = I2C->SR1;
      008BB7 C6 52 17         [ 1]  670 	ld	a, 0x5217
      008BBA 6B 06            [ 1]  671 	ld	(0x06, sp), a
                                    672 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 605: flag2 = I2C->SR3;
      008BBC C6 52 19         [ 1]  673 	ld	a, 0x5219
                                    674 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 606: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
      008BBF 90 95            [ 1]  675 	ld	yh, a
      008BC1 0F 04            [ 1]  676 	clr	(0x04, sp)
      008BC3 7B 06            [ 1]  677 	ld	a, (0x06, sp)
      008BC5 0F 05            [ 1]  678 	clr	(0x05, sp)
      008BC7 1A 04            [ 1]  679 	or	a, (0x04, sp)
      008BC9 90 02            [ 1]  680 	rlwa	y
      008BCB 1A 05            [ 1]  681 	or	a, (0x05, sp)
      008BCD 90 95            [ 1]  682 	ld	yh, a
      008BCF 17 01            [ 2]  683 	ldw	(0x01, sp), y
      008BD1                        684 00103$:
                                    685 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 609: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
      008BD1 9F               [ 1]  686 	ld	a, xl
      008BD2 14 02            [ 1]  687 	and	a, (0x02, sp)
      008BD4 6B 06            [ 1]  688 	ld	(0x06, sp), a
      008BD6 9E               [ 1]  689 	ld	a, xh
      008BD7 14 01            [ 1]  690 	and	a, (0x01, sp)
      008BD9 6B 05            [ 1]  691 	ld	(0x05, sp), a
      008BDB 13 05            [ 2]  692 	cpw	x, (0x05, sp)
      008BDD 26 03            [ 1]  693 	jrne	00105$
                                    694 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 612: status = SUCCESS;
      008BDF A6 01            [ 1]  695 	ld	a, #0x01
                                    696 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 617: status = ERROR;
      008BE1 21                     697 	.byte 0x21
      008BE2                        698 00105$:
      008BE2 4F               [ 1]  699 	clr	a
      008BE3                        700 00106$:
                                    701 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 621: return status;
                                    702 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 622: }
      008BE3 5B 06            [ 2]  703 	addw	sp, #6
      008BE5 81               [ 4]  704 	ret
                                    705 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 691: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
                                    706 ;	-----------------------------------------
                                    707 ;	 function I2C_GetFlagStatus
                                    708 ;	-----------------------------------------
      008BE6                        709 _I2C_GetFlagStatus:
      008BE6 52 03            [ 2]  710 	sub	sp, #3
      008BE8 1F 02            [ 2]  711 	ldw	(0x02, sp), x
                                    712 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 693: uint8_t tempreg = 0;
      008BEA 0F 01            [ 1]  713 	clr	(0x01, sp)
                                    714 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 698: assert_param(IS_I2C_FLAG_OK(I2C_Flag));
      008BEC 1E 02            [ 2]  715 	ldw	x, (0x02, sp)
      008BEE A3 01 80         [ 2]  716 	cpw	x, #0x0180
      008BF1 27 5B            [ 1]  717 	jreq	00112$
      008BF3 A3 01 40         [ 2]  718 	cpw	x, #0x0140
      008BF6 27 56            [ 1]  719 	jreq	00112$
      008BF8 A3 01 10         [ 2]  720 	cpw	x, #0x0110
      008BFB 27 51            [ 1]  721 	jreq	00112$
      008BFD A3 01 08         [ 2]  722 	cpw	x, #0x0108
      008C00 27 4C            [ 1]  723 	jreq	00112$
      008C02 A3 01 04         [ 2]  724 	cpw	x, #0x0104
      008C05 27 47            [ 1]  725 	jreq	00112$
      008C07 A3 01 02         [ 2]  726 	cpw	x, #0x0102
      008C0A 27 42            [ 1]  727 	jreq	00112$
      008C0C A3 01 01         [ 2]  728 	cpw	x, #0x0101
      008C0F 27 3D            [ 1]  729 	jreq	00112$
      008C11 A3 02 20         [ 2]  730 	cpw	x, #0x0220
      008C14 27 38            [ 1]  731 	jreq	00112$
      008C16 A3 02 08         [ 2]  732 	cpw	x, #0x0208
      008C19 27 33            [ 1]  733 	jreq	00112$
      008C1B A3 02 04         [ 2]  734 	cpw	x, #0x0204
      008C1E 27 2E            [ 1]  735 	jreq	00112$
      008C20 A3 02 02         [ 2]  736 	cpw	x, #0x0202
      008C23 27 29            [ 1]  737 	jreq	00112$
      008C25 A3 02 01         [ 2]  738 	cpw	x, #0x0201
      008C28 27 24            [ 1]  739 	jreq	00112$
      008C2A A3 03 10         [ 2]  740 	cpw	x, #0x0310
      008C2D 27 1F            [ 1]  741 	jreq	00112$
      008C2F A3 03 04         [ 2]  742 	cpw	x, #0x0304
      008C32 27 1A            [ 1]  743 	jreq	00112$
      008C34 A3 03 02         [ 2]  744 	cpw	x, #0x0302
      008C37 27 15            [ 1]  745 	jreq	00112$
      008C39 A3 03 01         [ 2]  746 	cpw	x, #0x0301
      008C3C 27 10            [ 1]  747 	jreq	00112$
      008C3E 89               [ 2]  748 	pushw	x
      008C3F 4B BA            [ 1]  749 	push	#0xba
      008C41 4B 02            [ 1]  750 	push	#0x02
      008C43 4B 00            [ 1]  751 	push	#0x00
      008C45 4B 00            [ 1]  752 	push	#0x00
      008C47 AE 81 6E         [ 2]  753 	ldw	x, #(___str_0+0)
      008C4A CD A6 5B         [ 4]  754 	call	_assert_failed
      008C4D 85               [ 2]  755 	popw	x
      008C4E                        756 00112$:
                                    757 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 701: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
      008C4E 9E               [ 1]  758 	ld	a, xh
                                    759 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 703: switch (regindex)
      008C4F A1 01            [ 1]  760 	cp	a, #0x01
      008C51 27 0A            [ 1]  761 	jreq	00101$
      008C53 A1 02            [ 1]  762 	cp	a, #0x02
      008C55 27 0D            [ 1]  763 	jreq	00102$
      008C57 A1 03            [ 1]  764 	cp	a, #0x03
      008C59 27 10            [ 1]  765 	jreq	00103$
      008C5B 20 13            [ 2]  766 	jra	00105$
                                    767 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 706: case 0x01:
      008C5D                        768 00101$:
                                    769 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 707: tempreg = (uint8_t)I2C->SR1;
      008C5D C6 52 17         [ 1]  770 	ld	a, 0x5217
      008C60 6B 01            [ 1]  771 	ld	(0x01, sp), a
                                    772 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 708: break;
      008C62 20 0C            [ 2]  773 	jra	00105$
                                    774 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 711: case 0x02:
      008C64                        775 00102$:
                                    776 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 712: tempreg = (uint8_t)I2C->SR2;
      008C64 C6 52 18         [ 1]  777 	ld	a, 0x5218
      008C67 6B 01            [ 1]  778 	ld	(0x01, sp), a
                                    779 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 713: break;
      008C69 20 05            [ 2]  780 	jra	00105$
                                    781 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 716: case 0x03:
      008C6B                        782 00103$:
                                    783 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 717: tempreg = (uint8_t)I2C->SR3;
      008C6B C6 52 19         [ 1]  784 	ld	a, 0x5219
      008C6E 6B 01            [ 1]  785 	ld	(0x01, sp), a
                                    786 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 722: }
      008C70                        787 00105$:
                                    788 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 725: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
      008C70 7B 03            [ 1]  789 	ld	a, (0x03, sp)
      008C72 14 01            [ 1]  790 	and	a, (0x01, sp)
      008C74 27 03            [ 1]  791 	jreq	00107$
                                    792 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 728: bitstatus = SET;
      008C76 A6 01            [ 1]  793 	ld	a, #0x01
                                    794 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 733: bitstatus = RESET;
      008C78 21                     795 	.byte 0x21
      008C79                        796 00107$:
      008C79 4F               [ 1]  797 	clr	a
      008C7A                        798 00108$:
                                    799 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 736: return bitstatus;
                                    800 ;	C:\Users\disan\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 737: }
      008C7A 5B 03            [ 2]  801 	addw	sp, #3
      008C7C 81               [ 4]  802 	ret
                                    803 	.area CODE
                                    804 	.area CONST
                                    805 	.area CONST
      00816E                        806 ___str_0:
      00816E 43 3A                  807 	.ascii "C:"
      008170 5C                     808 	.db 0x5c
      008171 55 73 65 72 73         809 	.ascii "Users"
      008176 5C                     810 	.db 0x5c
      008177 64 69 73 61 6E         811 	.ascii "disan"
      00817C 5C                     812 	.db 0x5c
      00817D 2E 70 6C 61 74 66 6F   813 	.ascii ".platformio"
             72 6D 69 6F
      008188 5C                     814 	.db 0x5c
      008189 70 61 63 6B 61 67 65   815 	.ascii "packages"
             73
      008191 5C                     816 	.db 0x5c
      008192 66 72 61 6D 65 77 6F   817 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      0081A5 5C                     818 	.db 0x5c
      0081A6 4C 69 62 72 61 72 69   819 	.ascii "Libraries"
             65 73
      0081AF 5C                     820 	.db 0x5c
      0081B0 53 54 4D 38 53 5F 53   821 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0081C6 5C                     822 	.db 0x5c
      0081C7 73 72 63               823 	.ascii "src"
      0081CA 5C                     824 	.db 0x5c
      0081CB 73 74 6D 38 73 5F 69   825 	.ascii "stm8s_i2c.c"
             32 63 2E 63
      0081D6 00                     826 	.db 0x00
                                    827 	.area CODE
                                    828 	.area INITIALIZER
                                    829 	.area CABS (ABS)
