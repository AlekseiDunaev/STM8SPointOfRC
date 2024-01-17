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
                                     15 	.globl _I2C_GeneralCallCmd
                                     16 	.globl _I2C_GenerateSTART
                                     17 	.globl _I2C_GenerateSTOP
                                     18 	.globl _I2C_SoftwareResetCmd
                                     19 	.globl _I2C_StretchClockCmd
                                     20 	.globl _I2C_AcknowledgeConfig
                                     21 	.globl _I2C_ITConfig
                                     22 	.globl _I2C_FastModeDutyCycleConfig
                                     23 	.globl _I2C_ReceiveData
                                     24 	.globl _I2C_Send7bitAddress
                                     25 	.globl _I2C_SendData
                                     26 	.globl _I2C_CheckEvent
                                     27 	.globl _I2C_GetLastEvent
                                     28 	.globl _I2C_GetFlagStatus
                                     29 	.globl _I2C_ClearFlag
                                     30 	.globl _I2C_GetITStatus
                                     31 	.globl _I2C_ClearITPendingBit
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DATA
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area INITIALIZED
                                     40 ;--------------------------------------------------------
                                     41 ; absolute external ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area DABS (ABS)
                                     44 
                                     45 ; default segment ordering for linker
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area CONST
                                     50 	.area INITIALIZER
                                     51 	.area CODE
                                     52 
                                     53 ;--------------------------------------------------------
                                     54 ; global & static initialisations
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area GSINIT
                                     58 	.area GSFINAL
                                     59 	.area GSINIT
                                     60 ;--------------------------------------------------------
                                     61 ; Home
                                     62 ;--------------------------------------------------------
                                     63 	.area HOME
                                     64 	.area HOME
                                     65 ;--------------------------------------------------------
                                     66 ; code
                                     67 ;--------------------------------------------------------
                                     68 	.area CODE
                                     69 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 67: void I2C_DeInit(void)
                                     70 ;	-----------------------------------------
                                     71 ;	 function I2C_DeInit
                                     72 ;	-----------------------------------------
      008B3D                         73 _I2C_DeInit:
                                     74 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 69: I2C->CR1 = I2C_CR1_RESET_VALUE;
      008B3D 35 00 52 10      [ 1]   75 	mov	0x5210+0, #0x00
                                     76 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 70: I2C->CR2 = I2C_CR2_RESET_VALUE;
      008B41 35 00 52 11      [ 1]   77 	mov	0x5211+0, #0x00
                                     78 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 71: I2C->FREQR = I2C_FREQR_RESET_VALUE;
      008B45 35 00 52 12      [ 1]   79 	mov	0x5212+0, #0x00
                                     80 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 72: I2C->OARL = I2C_OARL_RESET_VALUE;
      008B49 35 00 52 13      [ 1]   81 	mov	0x5213+0, #0x00
                                     82 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 73: I2C->OARH = I2C_OARH_RESET_VALUE;
      008B4D 35 00 52 14      [ 1]   83 	mov	0x5214+0, #0x00
                                     84 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 74: I2C->ITR = I2C_ITR_RESET_VALUE;
      008B51 35 00 52 1A      [ 1]   85 	mov	0x521a+0, #0x00
                                     86 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 75: I2C->CCRL = I2C_CCRL_RESET_VALUE;
      008B55 35 00 52 1B      [ 1]   87 	mov	0x521b+0, #0x00
                                     88 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 76: I2C->CCRH = I2C_CCRH_RESET_VALUE;
      008B59 35 00 52 1C      [ 1]   89 	mov	0x521c+0, #0x00
                                     90 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 77: I2C->TRISER = I2C_TRISER_RESET_VALUE;
      008B5D 35 02 52 1D      [ 1]   91 	mov	0x521d+0, #0x02
                                     92 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 78: }
      008B61 81               [ 4]   93 	ret
                                     94 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 96: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
                                     95 ;	-----------------------------------------
                                     96 ;	 function I2C_Init
                                     97 ;	-----------------------------------------
      008B62                         98 _I2C_Init:
      008B62 52 07            [ 2]   99 	sub	sp, #7
                                    100 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 102: uint8_t tmpccrh = 0;
      008B64 0F 05            [ 1]  101 	clr	(0x05, sp)
                                    102 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 105: assert_param(IS_I2C_ACK_OK(Ack));
      008B66 0D 11            [ 1]  103 	tnz	(0x11, sp)
      008B68 27 17            [ 1]  104 	jreq	00114$
      008B6A 7B 11            [ 1]  105 	ld	a, (0x11, sp)
      008B6C 4A               [ 1]  106 	dec	a
      008B6D 27 12            [ 1]  107 	jreq	00114$
      008B6F 7B 11            [ 1]  108 	ld	a, (0x11, sp)
      008B71 A1 02            [ 1]  109 	cp	a, #0x02
      008B73 27 0C            [ 1]  110 	jreq	00114$
      008B75 4B 69            [ 1]  111 	push	#0x69
      008B77 5F               [ 1]  112 	clrw	x
      008B78 89               [ 2]  113 	pushw	x
      008B79 4B 00            [ 1]  114 	push	#0x00
      008B7B AE 81 70         [ 2]  115 	ldw	x, #(___str_0+0)
      008B7E CD AE 90         [ 4]  116 	call	_assert_failed
      008B81                        117 00114$:
                                    118 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 106: assert_param(IS_I2C_ADDMODE_OK(AddMode));
      008B81 0D 12            [ 1]  119 	tnz	(0x12, sp)
      008B83 27 12            [ 1]  120 	jreq	00122$
      008B85 7B 12            [ 1]  121 	ld	a, (0x12, sp)
      008B87 A1 80            [ 1]  122 	cp	a, #0x80
      008B89 27 0C            [ 1]  123 	jreq	00122$
      008B8B 4B 6A            [ 1]  124 	push	#0x6a
      008B8D 5F               [ 1]  125 	clrw	x
      008B8E 89               [ 2]  126 	pushw	x
      008B8F 4B 00            [ 1]  127 	push	#0x00
      008B91 AE 81 70         [ 2]  128 	ldw	x, #(___str_0+0)
      008B94 CD AE 90         [ 4]  129 	call	_assert_failed
      008B97                        130 00122$:
                                    131 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 107: assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
      008B97 1E 0E            [ 2]  132 	ldw	x, (0x0e, sp)
      008B99 A3 03 FF         [ 2]  133 	cpw	x, #0x03ff
      008B9C 23 0C            [ 2]  134 	jrule	00127$
      008B9E 4B 6B            [ 1]  135 	push	#0x6b
      008BA0 5F               [ 1]  136 	clrw	x
      008BA1 89               [ 2]  137 	pushw	x
      008BA2 4B 00            [ 1]  138 	push	#0x00
      008BA4 AE 81 70         [ 2]  139 	ldw	x, #(___str_0+0)
      008BA7 CD AE 90         [ 4]  140 	call	_assert_failed
      008BAA                        141 00127$:
                                    142 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 108: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
      008BAA 0D 10            [ 1]  143 	tnz	(0x10, sp)
      008BAC 27 12            [ 1]  144 	jreq	00129$
      008BAE 7B 10            [ 1]  145 	ld	a, (0x10, sp)
      008BB0 A1 40            [ 1]  146 	cp	a, #0x40
      008BB2 27 0C            [ 1]  147 	jreq	00129$
      008BB4 4B 6C            [ 1]  148 	push	#0x6c
      008BB6 5F               [ 1]  149 	clrw	x
      008BB7 89               [ 2]  150 	pushw	x
      008BB8 4B 00            [ 1]  151 	push	#0x00
      008BBA AE 81 70         [ 2]  152 	ldw	x, #(___str_0+0)
      008BBD CD AE 90         [ 4]  153 	call	_assert_failed
      008BC0                        154 00129$:
                                    155 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 109: assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
      008BC0 7B 13            [ 1]  156 	ld	a, (0x13, sp)
      008BC2 A1 01            [ 1]  157 	cp	a, #0x01
      008BC4 25 06            [ 1]  158 	jrc	00133$
      008BC6 7B 13            [ 1]  159 	ld	a, (0x13, sp)
      008BC8 A1 10            [ 1]  160 	cp	a, #0x10
      008BCA 23 0C            [ 2]  161 	jrule	00134$
      008BCC                        162 00133$:
      008BCC 4B 6D            [ 1]  163 	push	#0x6d
      008BCE 5F               [ 1]  164 	clrw	x
      008BCF 89               [ 2]  165 	pushw	x
      008BD0 4B 00            [ 1]  166 	push	#0x00
      008BD2 AE 81 70         [ 2]  167 	ldw	x, #(___str_0+0)
      008BD5 CD AE 90         [ 4]  168 	call	_assert_failed
      008BD8                        169 00134$:
                                    170 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 110: assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
      008BD8 1E 0C            [ 2]  171 	ldw	x, (0x0c, sp)
      008BDA A3 00 01         [ 2]  172 	cpw	x, #0x0001
      008BDD 7B 0B            [ 1]  173 	ld	a, (0x0b, sp)
      008BDF A2 00            [ 1]  174 	sbc	a, #0x00
      008BE1 7B 0A            [ 1]  175 	ld	a, (0x0a, sp)
      008BE3 A2 00            [ 1]  176 	sbc	a, #0x00
      008BE5 25 0E            [ 1]  177 	jrc	00138$
      008BE7 AE 1A 80         [ 2]  178 	ldw	x, #0x1a80
      008BEA 13 0C            [ 2]  179 	cpw	x, (0x0c, sp)
      008BEC A6 06            [ 1]  180 	ld	a, #0x06
      008BEE 12 0B            [ 1]  181 	sbc	a, (0x0b, sp)
      008BF0 4F               [ 1]  182 	clr	a
      008BF1 12 0A            [ 1]  183 	sbc	a, (0x0a, sp)
      008BF3 24 0C            [ 1]  184 	jrnc	00139$
      008BF5                        185 00138$:
      008BF5 4B 6E            [ 1]  186 	push	#0x6e
      008BF7 5F               [ 1]  187 	clrw	x
      008BF8 89               [ 2]  188 	pushw	x
      008BF9 4B 00            [ 1]  189 	push	#0x00
      008BFB AE 81 70         [ 2]  190 	ldw	x, #(___str_0+0)
      008BFE CD AE 90         [ 4]  191 	call	_assert_failed
      008C01                        192 00139$:
                                    193 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 115: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
      008C01 C6 52 12         [ 1]  194 	ld	a, 0x5212
      008C04 A4 C0            [ 1]  195 	and	a, #0xc0
      008C06 C7 52 12         [ 1]  196 	ld	0x5212, a
                                    197 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 117: I2C->FREQR |= InputClockFrequencyMHz;
      008C09 C6 52 12         [ 1]  198 	ld	a, 0x5212
      008C0C 1A 13            [ 1]  199 	or	a, (0x13, sp)
      008C0E C7 52 12         [ 1]  200 	ld	0x5212, a
                                    201 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 121: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008C11 72 11 52 10      [ 1]  202 	bres	0x5210, #0
                                    203 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 124: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
      008C15 C6 52 1C         [ 1]  204 	ld	a, 0x521c
      008C18 A4 30            [ 1]  205 	and	a, #0x30
      008C1A C7 52 1C         [ 1]  206 	ld	0x521c, a
                                    207 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 125: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
      008C1D C6 52 1B         [ 1]  208 	ld	a, 0x521b
      008C20 35 00 52 1B      [ 1]  209 	mov	0x521b+0, #0x00
                                    210 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008C24 5F               [ 1]  211 	clrw	x
      008C25 7B 13            [ 1]  212 	ld	a, (0x13, sp)
      008C27 97               [ 1]  213 	ld	xl, a
      008C28 90 5F            [ 1]  214 	clrw	y
      008C2A 89               [ 2]  215 	pushw	x
      008C2B 90 89            [ 2]  216 	pushw	y
      008C2D 4B 40            [ 1]  217 	push	#0x40
      008C2F 4B 42            [ 1]  218 	push	#0x42
      008C31 4B 0F            [ 1]  219 	push	#0x0f
      008C33 4B 00            [ 1]  220 	push	#0x00
      008C35 CD BB 47         [ 4]  221 	call	__mullong
      008C38 5B 08            [ 2]  222 	addw	sp, #8
      008C3A 1F 03            [ 2]  223 	ldw	(0x03, sp), x
      008C3C 17 01            [ 2]  224 	ldw	(0x01, sp), y
                                    225 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 128: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
      008C3E AE 86 A0         [ 2]  226 	ldw	x, #0x86a0
      008C41 13 0C            [ 2]  227 	cpw	x, (0x0c, sp)
      008C43 A6 01            [ 1]  228 	ld	a, #0x01
      008C45 12 0B            [ 1]  229 	sbc	a, (0x0b, sp)
      008C47 4F               [ 1]  230 	clr	a
      008C48 12 0A            [ 1]  231 	sbc	a, (0x0a, sp)
      008C4A 24 76            [ 1]  232 	jrnc	00109$
                                    233 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 131: tmpccrh = I2C_CCRH_FS;
      008C4C A6 80            [ 1]  234 	ld	a, #0x80
      008C4E 6B 05            [ 1]  235 	ld	(0x05, sp), a
                                    236 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 133: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
      008C50 0D 10            [ 1]  237 	tnz	(0x10, sp)
      008C52 26 21            [ 1]  238 	jrne	00102$
                                    239 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008C54 1E 0C            [ 2]  240 	ldw	x, (0x0c, sp)
      008C56 89               [ 2]  241 	pushw	x
      008C57 1E 0C            [ 2]  242 	ldw	x, (0x0c, sp)
      008C59 89               [ 2]  243 	pushw	x
      008C5A 4B 03            [ 1]  244 	push	#0x03
      008C5C 5F               [ 1]  245 	clrw	x
      008C5D 89               [ 2]  246 	pushw	x
      008C5E 4B 00            [ 1]  247 	push	#0x00
      008C60 CD BB 47         [ 4]  248 	call	__mullong
      008C63 5B 08            [ 2]  249 	addw	sp, #8
      008C65 89               [ 2]  250 	pushw	x
      008C66 90 89            [ 2]  251 	pushw	y
      008C68 1E 07            [ 2]  252 	ldw	x, (0x07, sp)
      008C6A 89               [ 2]  253 	pushw	x
      008C6B 1E 07            [ 2]  254 	ldw	x, (0x07, sp)
      008C6D 89               [ 2]  255 	pushw	x
      008C6E CD B8 29         [ 4]  256 	call	__divulong
      008C71 5B 08            [ 2]  257 	addw	sp, #8
      008C73 20 26            [ 2]  258 	jra	00103$
      008C75                        259 00102$:
                                    260 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 141: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
      008C75 1E 0C            [ 2]  261 	ldw	x, (0x0c, sp)
      008C77 89               [ 2]  262 	pushw	x
      008C78 1E 0C            [ 2]  263 	ldw	x, (0x0c, sp)
      008C7A 89               [ 2]  264 	pushw	x
      008C7B 4B 19            [ 1]  265 	push	#0x19
      008C7D 5F               [ 1]  266 	clrw	x
      008C7E 89               [ 2]  267 	pushw	x
      008C7F 4B 00            [ 1]  268 	push	#0x00
      008C81 CD BB 47         [ 4]  269 	call	__mullong
      008C84 5B 08            [ 2]  270 	addw	sp, #8
      008C86 9F               [ 1]  271 	ld	a, xl
      008C87 88               [ 1]  272 	push	a
      008C88 9E               [ 1]  273 	ld	a, xh
      008C89 88               [ 1]  274 	push	a
      008C8A 90 89            [ 2]  275 	pushw	y
      008C8C 1E 07            [ 2]  276 	ldw	x, (0x07, sp)
      008C8E 89               [ 2]  277 	pushw	x
      008C8F 1E 07            [ 2]  278 	ldw	x, (0x07, sp)
      008C91 89               [ 2]  279 	pushw	x
      008C92 CD B8 29         [ 4]  280 	call	__divulong
      008C95 5B 08            [ 2]  281 	addw	sp, #8
                                    282 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 143: tmpccrh |= I2C_CCRH_DUTY;
      008C97 A6 C0            [ 1]  283 	ld	a, #0xc0
      008C99 6B 05            [ 1]  284 	ld	(0x05, sp), a
      008C9B                        285 00103$:
                                    286 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 147: if (result < (uint16_t)0x01)
      008C9B A3 00 01         [ 2]  287 	cpw	x, #0x0001
      008C9E 24 02            [ 1]  288 	jrnc	00105$
                                    289 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 150: result = (uint16_t)0x0001;
      008CA0 5F               [ 1]  290 	clrw	x
      008CA1 5C               [ 1]  291 	incw	x
      008CA2                        292 00105$:
                                    293 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 156: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
      008CA2 7B 13            [ 1]  294 	ld	a, (0x13, sp)
      008CA4 6B 07            [ 1]  295 	ld	(0x07, sp), a
      008CA6 0F 06            [ 1]  296 	clr	(0x06, sp)
      008CA8 89               [ 2]  297 	pushw	x
      008CA9 1E 08            [ 2]  298 	ldw	x, (0x08, sp)
      008CAB 58               [ 2]  299 	sllw	x
      008CAC 72 FB 08         [ 2]  300 	addw	x, (0x08, sp)
      008CAF 51               [ 1]  301 	exgw	x, y
      008CB0 4B 0A            [ 1]  302 	push	#0x0a
      008CB2 4B 00            [ 1]  303 	push	#0x00
      008CB4 93               [ 1]  304 	ldw	x, y
      008CB5 CD BB C3         [ 4]  305 	call	__divsint
      008CB8 90 93            [ 1]  306 	ldw	y, x
      008CBA 9F               [ 1]  307 	ld	a, xl
      008CBB 85               [ 2]  308 	popw	x
      008CBC 4C               [ 1]  309 	inc	a
                                    310 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 157: I2C->TRISER = (uint8_t)tmpval;
      008CBD C7 52 1D         [ 1]  311 	ld	0x521d, a
      008CC0 20 23            [ 2]  312 	jra	00110$
      008CC2                        313 00109$:
                                    314 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 164: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
      008CC2 1E 0C            [ 2]  315 	ldw	x, (0x0c, sp)
      008CC4 16 0A            [ 2]  316 	ldw	y, (0x0a, sp)
      008CC6 58               [ 2]  317 	sllw	x
      008CC7 90 59            [ 2]  318 	rlcw	y
      008CC9 89               [ 2]  319 	pushw	x
      008CCA 90 89            [ 2]  320 	pushw	y
      008CCC 1E 07            [ 2]  321 	ldw	x, (0x07, sp)
      008CCE 89               [ 2]  322 	pushw	x
      008CCF 1E 07            [ 2]  323 	ldw	x, (0x07, sp)
      008CD1 89               [ 2]  324 	pushw	x
      008CD2 CD B8 29         [ 4]  325 	call	__divulong
      008CD5 5B 08            [ 2]  326 	addw	sp, #8
                                    327 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 167: if (result < (uint16_t)0x0004)
      008CD7 A3 00 04         [ 2]  328 	cpw	x, #0x0004
      008CDA 24 03            [ 1]  329 	jrnc	00107$
                                    330 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 170: result = (uint16_t)0x0004;
      008CDC AE 00 04         [ 2]  331 	ldw	x, #0x0004
      008CDF                        332 00107$:
                                    333 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 176: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
      008CDF 7B 13            [ 1]  334 	ld	a, (0x13, sp)
      008CE1 4C               [ 1]  335 	inc	a
      008CE2 C7 52 1D         [ 1]  336 	ld	0x521d, a
      008CE5                        337 00110$:
                                    338 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 181: I2C->CCRL = (uint8_t)result;
      008CE5 9F               [ 1]  339 	ld	a, xl
      008CE6 C7 52 1B         [ 1]  340 	ld	0x521b, a
                                    341 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 182: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
      008CE9 9E               [ 1]  342 	ld	a, xh
      008CEA A4 0F            [ 1]  343 	and	a, #0x0f
      008CEC 1A 05            [ 1]  344 	or	a, (0x05, sp)
      008CEE C7 52 1C         [ 1]  345 	ld	0x521c, a
                                    346 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 185: I2C->CR1 |= I2C_CR1_PE;
      008CF1 72 10 52 10      [ 1]  347 	bset	0x5210, #0
                                    348 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 188: I2C_AcknowledgeConfig(Ack);
      008CF5 7B 11            [ 1]  349 	ld	a, (0x11, sp)
      008CF7 CD 8E 1C         [ 4]  350 	call	_I2C_AcknowledgeConfig
                                    351 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 191: I2C->OARL = (uint8_t)(OwnAddress);
      008CFA 7B 0F            [ 1]  352 	ld	a, (0x0f, sp)
      008CFC C7 52 13         [ 1]  353 	ld	0x5213, a
                                    354 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 192: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
      008CFF 7B 12            [ 1]  355 	ld	a, (0x12, sp)
      008D01 AA 40            [ 1]  356 	or	a, #0x40
      008D03 6B 07            [ 1]  357 	ld	(0x07, sp), a
                                    358 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 193: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
      008D05 4F               [ 1]  359 	clr	a
      008D06 97               [ 1]  360 	ld	xl, a
      008D07 7B 0E            [ 1]  361 	ld	a, (0x0e, sp)
      008D09 A4 03            [ 1]  362 	and	a, #0x03
      008D0B 95               [ 1]  363 	ld	xh, a
      008D0C A6 80            [ 1]  364 	ld	a, #0x80
      008D0E 62               [ 2]  365 	div	x, a
      008D0F 9F               [ 1]  366 	ld	a, xl
      008D10 1A 07            [ 1]  367 	or	a, (0x07, sp)
      008D12 C7 52 14         [ 1]  368 	ld	0x5214, a
                                    369 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 194: }
      008D15 1E 08            [ 2]  370 	ldw	x, (8, sp)
      008D17 5B 13            [ 2]  371 	addw	sp, #19
      008D19 FC               [ 2]  372 	jp	(x)
                                    373 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 202: void I2C_Cmd(FunctionalState NewState)
                                    374 ;	-----------------------------------------
                                    375 ;	 function I2C_Cmd
                                    376 ;	-----------------------------------------
      008D1A                        377 _I2C_Cmd:
      008D1A 88               [ 1]  378 	push	a
                                    379 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 205: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D1B 6B 01            [ 1]  380 	ld	(0x01, sp), a
      008D1D 27 11            [ 1]  381 	jreq	00107$
      008D1F 7B 01            [ 1]  382 	ld	a, (0x01, sp)
      008D21 4A               [ 1]  383 	dec	a
      008D22 27 0C            [ 1]  384 	jreq	00107$
      008D24 4B CD            [ 1]  385 	push	#0xcd
      008D26 5F               [ 1]  386 	clrw	x
      008D27 89               [ 2]  387 	pushw	x
      008D28 4B 00            [ 1]  388 	push	#0x00
      008D2A AE 81 70         [ 2]  389 	ldw	x, #(___str_0+0)
      008D2D CD AE 90         [ 4]  390 	call	_assert_failed
      008D30                        391 00107$:
                                    392 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      008D30 C6 52 10         [ 1]  393 	ld	a, 0x5210
                                    394 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 207: if (NewState != DISABLE)
      008D33 0D 01            [ 1]  395 	tnz	(0x01, sp)
      008D35 27 07            [ 1]  396 	jreq	00102$
                                    397 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      008D37 AA 01            [ 1]  398 	or	a, #0x01
      008D39 C7 52 10         [ 1]  399 	ld	0x5210, a
      008D3C 20 05            [ 2]  400 	jra	00104$
      008D3E                        401 00102$:
                                    402 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 215: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008D3E A4 FE            [ 1]  403 	and	a, #0xfe
      008D40 C7 52 10         [ 1]  404 	ld	0x5210, a
      008D43                        405 00104$:
                                    406 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 217: }
      008D43 84               [ 1]  407 	pop	a
      008D44 81               [ 4]  408 	ret
                                    409 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 225: void I2C_GeneralCallCmd(FunctionalState NewState)
                                    410 ;	-----------------------------------------
                                    411 ;	 function I2C_GeneralCallCmd
                                    412 ;	-----------------------------------------
      008D45                        413 _I2C_GeneralCallCmd:
      008D45 88               [ 1]  414 	push	a
                                    415 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 228: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D46 6B 01            [ 1]  416 	ld	(0x01, sp), a
      008D48 27 11            [ 1]  417 	jreq	00107$
      008D4A 7B 01            [ 1]  418 	ld	a, (0x01, sp)
      008D4C 4A               [ 1]  419 	dec	a
      008D4D 27 0C            [ 1]  420 	jreq	00107$
      008D4F 4B E4            [ 1]  421 	push	#0xe4
      008D51 5F               [ 1]  422 	clrw	x
      008D52 89               [ 2]  423 	pushw	x
      008D53 4B 00            [ 1]  424 	push	#0x00
      008D55 AE 81 70         [ 2]  425 	ldw	x, #(___str_0+0)
      008D58 CD AE 90         [ 4]  426 	call	_assert_failed
      008D5B                        427 00107$:
                                    428 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 233: I2C->CR1 |= I2C_CR1_ENGC;
      008D5B C6 52 10         [ 1]  429 	ld	a, 0x5210
                                    430 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 230: if (NewState != DISABLE)
      008D5E 0D 01            [ 1]  431 	tnz	(0x01, sp)
      008D60 27 07            [ 1]  432 	jreq	00102$
                                    433 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 233: I2C->CR1 |= I2C_CR1_ENGC;
      008D62 AA 40            [ 1]  434 	or	a, #0x40
      008D64 C7 52 10         [ 1]  435 	ld	0x5210, a
      008D67 20 05            [ 2]  436 	jra	00104$
      008D69                        437 00102$:
                                    438 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 238: I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
      008D69 A4 BF            [ 1]  439 	and	a, #0xbf
      008D6B C7 52 10         [ 1]  440 	ld	0x5210, a
      008D6E                        441 00104$:
                                    442 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 240: }
      008D6E 84               [ 1]  443 	pop	a
      008D6F 81               [ 4]  444 	ret
                                    445 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 250: void I2C_GenerateSTART(FunctionalState NewState)
                                    446 ;	-----------------------------------------
                                    447 ;	 function I2C_GenerateSTART
                                    448 ;	-----------------------------------------
      008D70                        449 _I2C_GenerateSTART:
      008D70 88               [ 1]  450 	push	a
                                    451 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 253: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D71 6B 01            [ 1]  452 	ld	(0x01, sp), a
      008D73 27 11            [ 1]  453 	jreq	00107$
      008D75 7B 01            [ 1]  454 	ld	a, (0x01, sp)
      008D77 4A               [ 1]  455 	dec	a
      008D78 27 0C            [ 1]  456 	jreq	00107$
      008D7A 4B FD            [ 1]  457 	push	#0xfd
      008D7C 5F               [ 1]  458 	clrw	x
      008D7D 89               [ 2]  459 	pushw	x
      008D7E 4B 00            [ 1]  460 	push	#0x00
      008D80 AE 81 70         [ 2]  461 	ldw	x, #(___str_0+0)
      008D83 CD AE 90         [ 4]  462 	call	_assert_failed
      008D86                        463 00107$:
                                    464 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 258: I2C->CR2 |= I2C_CR2_START;
      008D86 C6 52 11         [ 1]  465 	ld	a, 0x5211
                                    466 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 255: if (NewState != DISABLE)
      008D89 0D 01            [ 1]  467 	tnz	(0x01, sp)
      008D8B 27 07            [ 1]  468 	jreq	00102$
                                    469 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 258: I2C->CR2 |= I2C_CR2_START;
      008D8D AA 01            [ 1]  470 	or	a, #0x01
      008D8F C7 52 11         [ 1]  471 	ld	0x5211, a
      008D92 20 05            [ 2]  472 	jra	00104$
      008D94                        473 00102$:
                                    474 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 263: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
      008D94 A4 FE            [ 1]  475 	and	a, #0xfe
      008D96 C7 52 11         [ 1]  476 	ld	0x5211, a
      008D99                        477 00104$:
                                    478 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 265: }
      008D99 84               [ 1]  479 	pop	a
      008D9A 81               [ 4]  480 	ret
                                    481 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 273: void I2C_GenerateSTOP(FunctionalState NewState)
                                    482 ;	-----------------------------------------
                                    483 ;	 function I2C_GenerateSTOP
                                    484 ;	-----------------------------------------
      008D9B                        485 _I2C_GenerateSTOP:
      008D9B 88               [ 1]  486 	push	a
                                    487 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 276: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D9C 6B 01            [ 1]  488 	ld	(0x01, sp), a
      008D9E 27 11            [ 1]  489 	jreq	00107$
      008DA0 7B 01            [ 1]  490 	ld	a, (0x01, sp)
      008DA2 4A               [ 1]  491 	dec	a
      008DA3 27 0C            [ 1]  492 	jreq	00107$
      008DA5 4B 14            [ 1]  493 	push	#0x14
      008DA7 4B 01            [ 1]  494 	push	#0x01
      008DA9 5F               [ 1]  495 	clrw	x
      008DAA 89               [ 2]  496 	pushw	x
      008DAB AE 81 70         [ 2]  497 	ldw	x, #(___str_0+0)
      008DAE CD AE 90         [ 4]  498 	call	_assert_failed
      008DB1                        499 00107$:
                                    500 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 281: I2C->CR2 |= I2C_CR2_STOP;
      008DB1 C6 52 11         [ 1]  501 	ld	a, 0x5211
                                    502 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 278: if (NewState != DISABLE)
      008DB4 0D 01            [ 1]  503 	tnz	(0x01, sp)
      008DB6 27 07            [ 1]  504 	jreq	00102$
                                    505 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 281: I2C->CR2 |= I2C_CR2_STOP;
      008DB8 AA 02            [ 1]  506 	or	a, #0x02
      008DBA C7 52 11         [ 1]  507 	ld	0x5211, a
      008DBD 20 05            [ 2]  508 	jra	00104$
      008DBF                        509 00102$:
                                    510 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 286: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
      008DBF A4 FD            [ 1]  511 	and	a, #0xfd
      008DC1 C7 52 11         [ 1]  512 	ld	0x5211, a
      008DC4                        513 00104$:
                                    514 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 288: }
      008DC4 84               [ 1]  515 	pop	a
      008DC5 81               [ 4]  516 	ret
                                    517 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 296: void I2C_SoftwareResetCmd(FunctionalState NewState)
                                    518 ;	-----------------------------------------
                                    519 ;	 function I2C_SoftwareResetCmd
                                    520 ;	-----------------------------------------
      008DC6                        521 _I2C_SoftwareResetCmd:
      008DC6 88               [ 1]  522 	push	a
                                    523 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 299: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008DC7 6B 01            [ 1]  524 	ld	(0x01, sp), a
      008DC9 27 11            [ 1]  525 	jreq	00107$
      008DCB 7B 01            [ 1]  526 	ld	a, (0x01, sp)
      008DCD 4A               [ 1]  527 	dec	a
      008DCE 27 0C            [ 1]  528 	jreq	00107$
      008DD0 4B 2B            [ 1]  529 	push	#0x2b
      008DD2 4B 01            [ 1]  530 	push	#0x01
      008DD4 5F               [ 1]  531 	clrw	x
      008DD5 89               [ 2]  532 	pushw	x
      008DD6 AE 81 70         [ 2]  533 	ldw	x, #(___str_0+0)
      008DD9 CD AE 90         [ 4]  534 	call	_assert_failed
      008DDC                        535 00107$:
                                    536 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 304: I2C->CR2 |= I2C_CR2_SWRST;
      008DDC C6 52 11         [ 1]  537 	ld	a, 0x5211
                                    538 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 301: if (NewState != DISABLE)
      008DDF 0D 01            [ 1]  539 	tnz	(0x01, sp)
      008DE1 27 07            [ 1]  540 	jreq	00102$
                                    541 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 304: I2C->CR2 |= I2C_CR2_SWRST;
      008DE3 AA 80            [ 1]  542 	or	a, #0x80
      008DE5 C7 52 11         [ 1]  543 	ld	0x5211, a
      008DE8 20 05            [ 2]  544 	jra	00104$
      008DEA                        545 00102$:
                                    546 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 309: I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
      008DEA A4 7F            [ 1]  547 	and	a, #0x7f
      008DEC C7 52 11         [ 1]  548 	ld	0x5211, a
      008DEF                        549 00104$:
                                    550 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 311: }
      008DEF 84               [ 1]  551 	pop	a
      008DF0 81               [ 4]  552 	ret
                                    553 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 320: void I2C_StretchClockCmd(FunctionalState NewState)
                                    554 ;	-----------------------------------------
                                    555 ;	 function I2C_StretchClockCmd
                                    556 ;	-----------------------------------------
      008DF1                        557 _I2C_StretchClockCmd:
      008DF1 88               [ 1]  558 	push	a
                                    559 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 323: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008DF2 6B 01            [ 1]  560 	ld	(0x01, sp), a
      008DF4 27 11            [ 1]  561 	jreq	00107$
      008DF6 7B 01            [ 1]  562 	ld	a, (0x01, sp)
      008DF8 4A               [ 1]  563 	dec	a
      008DF9 27 0C            [ 1]  564 	jreq	00107$
      008DFB 4B 43            [ 1]  565 	push	#0x43
      008DFD 4B 01            [ 1]  566 	push	#0x01
      008DFF 5F               [ 1]  567 	clrw	x
      008E00 89               [ 2]  568 	pushw	x
      008E01 AE 81 70         [ 2]  569 	ldw	x, #(___str_0+0)
      008E04 CD AE 90         [ 4]  570 	call	_assert_failed
      008E07                        571 00107$:
                                    572 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 328: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
      008E07 C6 52 10         [ 1]  573 	ld	a, 0x5210
                                    574 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 325: if (NewState != DISABLE)
      008E0A 0D 01            [ 1]  575 	tnz	(0x01, sp)
      008E0C 27 07            [ 1]  576 	jreq	00102$
                                    577 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 328: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
      008E0E A4 7F            [ 1]  578 	and	a, #0x7f
      008E10 C7 52 10         [ 1]  579 	ld	0x5210, a
      008E13 20 05            [ 2]  580 	jra	00104$
      008E15                        581 00102$:
                                    582 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 334: I2C->CR1 |= I2C_CR1_NOSTRETCH;
      008E15 AA 80            [ 1]  583 	or	a, #0x80
      008E17 C7 52 10         [ 1]  584 	ld	0x5210, a
      008E1A                        585 00104$:
                                    586 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 336: }
      008E1A 84               [ 1]  587 	pop	a
      008E1B 81               [ 4]  588 	ret
                                    589 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 345: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
                                    590 ;	-----------------------------------------
                                    591 ;	 function I2C_AcknowledgeConfig
                                    592 ;	-----------------------------------------
      008E1C                        593 _I2C_AcknowledgeConfig:
                                    594 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 348: assert_param(IS_I2C_ACK_OK(Ack));
      008E1C 97               [ 1]  595 	ld	xl, a
      008E1D 4A               [ 1]  596 	dec	a
      008E1E 26 05            [ 1]  597 	jrne	00143$
      008E20 A6 01            [ 1]  598 	ld	a, #0x01
      008E22 95               [ 1]  599 	ld	xh, a
      008E23 20 02            [ 2]  600 	jra	00144$
      008E25                        601 00143$:
      008E25 4F               [ 1]  602 	clr	a
      008E26 95               [ 1]  603 	ld	xh, a
      008E27                        604 00144$:
      008E27 9F               [ 1]  605 	ld	a, xl
      008E28 4D               [ 1]  606 	tnz	a
      008E29 27 19            [ 1]  607 	jreq	00110$
      008E2B 9E               [ 1]  608 	ld	a, xh
      008E2C 4D               [ 1]  609 	tnz	a
      008E2D 26 15            [ 1]  610 	jrne	00110$
      008E2F 9F               [ 1]  611 	ld	a, xl
      008E30 A1 02            [ 1]  612 	cp	a, #0x02
      008E32 27 10            [ 1]  613 	jreq	00110$
      008E34 89               [ 2]  614 	pushw	x
      008E35 4B 5C            [ 1]  615 	push	#0x5c
      008E37 4B 01            [ 1]  616 	push	#0x01
      008E39 4B 00            [ 1]  617 	push	#0x00
      008E3B 4B 00            [ 1]  618 	push	#0x00
      008E3D AE 81 70         [ 2]  619 	ldw	x, #(___str_0+0)
      008E40 CD AE 90         [ 4]  620 	call	_assert_failed
      008E43 85               [ 2]  621 	popw	x
      008E44                        622 00110$:
                                    623 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008E44 C6 52 11         [ 1]  624 	ld	a, 0x5211
                                    625 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 350: if (Ack == I2C_ACK_NONE)
      008E47 41               [ 1]  626 	exg	a, xl
      008E48 4D               [ 1]  627 	tnz	a
      008E49 41               [ 1]  628 	exg	a, xl
      008E4A 26 06            [ 1]  629 	jrne	00105$
                                    630 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008E4C A4 FB            [ 1]  631 	and	a, #0xfb
      008E4E C7 52 11         [ 1]  632 	ld	0x5211, a
      008E51 81               [ 4]  633 	ret
      008E52                        634 00105$:
                                    635 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 358: I2C->CR2 |= I2C_CR2_ACK;
      008E52 AA 04            [ 1]  636 	or	a, #0x04
      008E54 C7 52 11         [ 1]  637 	ld	0x5211, a
                                    638 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008E57 C6 52 11         [ 1]  639 	ld	a, 0x5211
                                    640 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 360: if (Ack == I2C_ACK_CURR)
      008E5A 88               [ 1]  641 	push	a
      008E5B 9E               [ 1]  642 	ld	a, xh
      008E5C 4D               [ 1]  643 	tnz	a
      008E5D 84               [ 1]  644 	pop	a
      008E5E 27 06            [ 1]  645 	jreq	00102$
                                    646 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 363: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
      008E60 A4 F7            [ 1]  647 	and	a, #0xf7
      008E62 C7 52 11         [ 1]  648 	ld	0x5211, a
      008E65 81               [ 4]  649 	ret
      008E66                        650 00102$:
                                    651 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 368: I2C->CR2 |= I2C_CR2_POS;
      008E66 AA 08            [ 1]  652 	or	a, #0x08
      008E68 C7 52 11         [ 1]  653 	ld	0x5211, a
                                    654 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 371: }
      008E6B 81               [ 4]  655 	ret
                                    656 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 381: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
                                    657 ;	-----------------------------------------
                                    658 ;	 function I2C_ITConfig
                                    659 ;	-----------------------------------------
      008E6C                        660 _I2C_ITConfig:
      008E6C 88               [ 1]  661 	push	a
                                    662 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 384: assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
      008E6D A1 01            [ 1]  663 	cp	a, #0x01
      008E6F 27 26            [ 1]  664 	jreq	00107$
      008E71 A1 02            [ 1]  665 	cp	a, #0x02
      008E73 27 22            [ 1]  666 	jreq	00107$
      008E75 A1 04            [ 1]  667 	cp	a, #0x04
      008E77 27 1E            [ 1]  668 	jreq	00107$
      008E79 A1 03            [ 1]  669 	cp	a, #0x03
      008E7B 27 1A            [ 1]  670 	jreq	00107$
      008E7D A1 05            [ 1]  671 	cp	a, #0x05
      008E7F 27 16            [ 1]  672 	jreq	00107$
      008E81 A1 06            [ 1]  673 	cp	a, #0x06
      008E83 27 12            [ 1]  674 	jreq	00107$
      008E85 A1 07            [ 1]  675 	cp	a, #0x07
      008E87 27 0E            [ 1]  676 	jreq	00107$
      008E89 88               [ 1]  677 	push	a
      008E8A 4B 80            [ 1]  678 	push	#0x80
      008E8C 4B 01            [ 1]  679 	push	#0x01
      008E8E 5F               [ 1]  680 	clrw	x
      008E8F 89               [ 2]  681 	pushw	x
      008E90 AE 81 70         [ 2]  682 	ldw	x, #(___str_0+0)
      008E93 CD AE 90         [ 4]  683 	call	_assert_failed
      008E96 84               [ 1]  684 	pop	a
      008E97                        685 00107$:
                                    686 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 385: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008E97 0D 04            [ 1]  687 	tnz	(0x04, sp)
      008E99 27 15            [ 1]  688 	jreq	00127$
      008E9B 88               [ 1]  689 	push	a
      008E9C 7B 05            [ 1]  690 	ld	a, (0x05, sp)
      008E9E 4A               [ 1]  691 	dec	a
      008E9F 84               [ 1]  692 	pop	a
      008EA0 27 0E            [ 1]  693 	jreq	00127$
      008EA2 88               [ 1]  694 	push	a
      008EA3 4B 81            [ 1]  695 	push	#0x81
      008EA5 4B 01            [ 1]  696 	push	#0x01
      008EA7 5F               [ 1]  697 	clrw	x
      008EA8 89               [ 2]  698 	pushw	x
      008EA9 AE 81 70         [ 2]  699 	ldw	x, #(___str_0+0)
      008EAC CD AE 90         [ 4]  700 	call	_assert_failed
      008EAF 84               [ 1]  701 	pop	a
      008EB0                        702 00127$:
                                    703 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 390: I2C->ITR |= (uint8_t)I2C_IT;
      008EB0 AE 52 1A         [ 2]  704 	ldw	x, #0x521a
      008EB3 88               [ 1]  705 	push	a
      008EB4 F6               [ 1]  706 	ld	a, (x)
      008EB5 6B 02            [ 1]  707 	ld	(0x02, sp), a
      008EB7 84               [ 1]  708 	pop	a
                                    709 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 387: if (NewState != DISABLE)
      008EB8 0D 04            [ 1]  710 	tnz	(0x04, sp)
      008EBA 27 07            [ 1]  711 	jreq	00102$
                                    712 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 390: I2C->ITR |= (uint8_t)I2C_IT;
      008EBC 1A 01            [ 1]  713 	or	a, (0x01, sp)
      008EBE C7 52 1A         [ 1]  714 	ld	0x521a, a
      008EC1 20 06            [ 2]  715 	jra	00104$
      008EC3                        716 00102$:
                                    717 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 395: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
      008EC3 43               [ 1]  718 	cpl	a
      008EC4 14 01            [ 1]  719 	and	a, (0x01, sp)
      008EC6 C7 52 1A         [ 1]  720 	ld	0x521a, a
      008EC9                        721 00104$:
                                    722 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 397: }
      008EC9 84               [ 1]  723 	pop	a
      008ECA 85               [ 2]  724 	popw	x
      008ECB 84               [ 1]  725 	pop	a
      008ECC FC               [ 2]  726 	jp	(x)
                                    727 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 405: void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
                                    728 ;	-----------------------------------------
                                    729 ;	 function I2C_FastModeDutyCycleConfig
                                    730 ;	-----------------------------------------
      008ECD                        731 _I2C_FastModeDutyCycleConfig:
      008ECD 88               [ 1]  732 	push	a
                                    733 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 408: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
      008ECE A1 40            [ 1]  734 	cp	a, #0x40
      008ED0 26 07            [ 1]  735 	jrne	00127$
      008ED2 88               [ 1]  736 	push	a
      008ED3 A6 01            [ 1]  737 	ld	a, #0x01
      008ED5 6B 02            [ 1]  738 	ld	(0x02, sp), a
      008ED7 84               [ 1]  739 	pop	a
      008ED8 C5                     740 	.byte 0xc5
      008ED9                        741 00127$:
      008ED9 0F 01            [ 1]  742 	clr	(0x01, sp)
      008EDB                        743 00128$:
      008EDB 4D               [ 1]  744 	tnz	a
      008EDC 27 10            [ 1]  745 	jreq	00107$
      008EDE 0D 01            [ 1]  746 	tnz	(0x01, sp)
      008EE0 26 0C            [ 1]  747 	jrne	00107$
      008EE2 4B 98            [ 1]  748 	push	#0x98
      008EE4 4B 01            [ 1]  749 	push	#0x01
      008EE6 5F               [ 1]  750 	clrw	x
      008EE7 89               [ 2]  751 	pushw	x
      008EE8 AE 81 70         [ 2]  752 	ldw	x, #(___str_0+0)
      008EEB CD AE 90         [ 4]  753 	call	_assert_failed
      008EEE                        754 00107$:
                                    755 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 413: I2C->CCRH |= I2C_CCRH_DUTY;
      008EEE C6 52 1C         [ 1]  756 	ld	a, 0x521c
      008EF1 97               [ 1]  757 	ld	xl, a
                                    758 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 410: if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
      008EF2 7B 01            [ 1]  759 	ld	a, (0x01, sp)
      008EF4 27 08            [ 1]  760 	jreq	00102$
                                    761 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 413: I2C->CCRH |= I2C_CCRH_DUTY;
      008EF6 9F               [ 1]  762 	ld	a, xl
      008EF7 AA 40            [ 1]  763 	or	a, #0x40
      008EF9 C7 52 1C         [ 1]  764 	ld	0x521c, a
      008EFC 20 06            [ 2]  765 	jra	00104$
      008EFE                        766 00102$:
                                    767 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 418: I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
      008EFE 9F               [ 1]  768 	ld	a, xl
      008EFF A4 BF            [ 1]  769 	and	a, #0xbf
      008F01 C7 52 1C         [ 1]  770 	ld	0x521c, a
      008F04                        771 00104$:
                                    772 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 420: }
      008F04 84               [ 1]  773 	pop	a
      008F05 81               [ 4]  774 	ret
                                    775 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 427: uint8_t I2C_ReceiveData(void)
                                    776 ;	-----------------------------------------
                                    777 ;	 function I2C_ReceiveData
                                    778 ;	-----------------------------------------
      008F06                        779 _I2C_ReceiveData:
                                    780 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 430: return ((uint8_t)I2C->DR);
      008F06 C6 52 16         [ 1]  781 	ld	a, 0x5216
                                    782 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 431: }
      008F09 81               [ 4]  783 	ret
                                    784 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 440: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
                                    785 ;	-----------------------------------------
                                    786 ;	 function I2C_Send7bitAddress
                                    787 ;	-----------------------------------------
      008F0A                        788 _I2C_Send7bitAddress:
      008F0A 88               [ 1]  789 	push	a
                                    790 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 443: assert_param(IS_I2C_ADDRESS_OK(Address));
      008F0B 6B 01            [ 1]  791 	ld	(0x01, sp), a
      008F0D 44               [ 1]  792 	srl	a
      008F0E 24 0C            [ 1]  793 	jrnc	00104$
      008F10 4B BB            [ 1]  794 	push	#0xbb
      008F12 4B 01            [ 1]  795 	push	#0x01
      008F14 5F               [ 1]  796 	clrw	x
      008F15 89               [ 2]  797 	pushw	x
      008F16 AE 81 70         [ 2]  798 	ldw	x, #(___str_0+0)
      008F19 CD AE 90         [ 4]  799 	call	_assert_failed
      008F1C                        800 00104$:
                                    801 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 444: assert_param(IS_I2C_DIRECTION_OK(Direction));
      008F1C 0D 04            [ 1]  802 	tnz	(0x04, sp)
      008F1E 27 11            [ 1]  803 	jreq	00106$
      008F20 7B 04            [ 1]  804 	ld	a, (0x04, sp)
      008F22 4A               [ 1]  805 	dec	a
      008F23 27 0C            [ 1]  806 	jreq	00106$
      008F25 4B BC            [ 1]  807 	push	#0xbc
      008F27 4B 01            [ 1]  808 	push	#0x01
      008F29 5F               [ 1]  809 	clrw	x
      008F2A 89               [ 2]  810 	pushw	x
      008F2B AE 81 70         [ 2]  811 	ldw	x, #(___str_0+0)
      008F2E CD AE 90         [ 4]  812 	call	_assert_failed
      008F31                        813 00106$:
                                    814 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 447: Address &= (uint8_t)0xFE;
      008F31 7B 01            [ 1]  815 	ld	a, (0x01, sp)
      008F33 A4 FE            [ 1]  816 	and	a, #0xfe
                                    817 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 450: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
      008F35 1A 04            [ 1]  818 	or	a, (0x04, sp)
      008F37 C7 52 16         [ 1]  819 	ld	0x5216, a
                                    820 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 451: }
      008F3A 84               [ 1]  821 	pop	a
      008F3B 85               [ 2]  822 	popw	x
      008F3C 84               [ 1]  823 	pop	a
      008F3D FC               [ 2]  824 	jp	(x)
                                    825 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 458: void I2C_SendData(uint8_t Data)
                                    826 ;	-----------------------------------------
                                    827 ;	 function I2C_SendData
                                    828 ;	-----------------------------------------
      008F3E                        829 _I2C_SendData:
                                    830 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 461: I2C->DR = Data;
      008F3E C7 52 16         [ 1]  831 	ld	0x5216, a
                                    832 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 462: }
      008F41 81               [ 4]  833 	ret
                                    834 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 578: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
                                    835 ;	-----------------------------------------
                                    836 ;	 function I2C_CheckEvent
                                    837 ;	-----------------------------------------
      008F42                        838 _I2C_CheckEvent:
      008F42 52 06            [ 2]  839 	sub	sp, #6
                                    840 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 580: __IO uint16_t lastevent = 0x00;
      008F44 0F 02            [ 1]  841 	clr	(0x02, sp)
      008F46 0F 01            [ 1]  842 	clr	(0x01, sp)
                                    843 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 586: assert_param(IS_I2C_EVENT_OK(I2C_Event));
      008F48 A3 00 04         [ 2]  844 	cpw	x, #0x0004
      008F4B 26 03            [ 1]  845 	jrne	00247$
      008F4D A6 01            [ 1]  846 	ld	a, #0x01
      008F4F 21                     847 	.byte 0x21
      008F50                        848 00247$:
      008F50 4F               [ 1]  849 	clr	a
      008F51                        850 00248$:
      008F51 A3 06 82         [ 2]  851 	cpw	x, #0x0682
      008F54 27 5B            [ 1]  852 	jreq	00110$
      008F56 A3 02 02         [ 2]  853 	cpw	x, #0x0202
      008F59 27 56            [ 1]  854 	jreq	00110$
      008F5B A3 12 00         [ 2]  855 	cpw	x, #0x1200
      008F5E 27 51            [ 1]  856 	jreq	00110$
      008F60 A3 02 40         [ 2]  857 	cpw	x, #0x0240
      008F63 27 4C            [ 1]  858 	jreq	00110$
      008F65 A3 03 50         [ 2]  859 	cpw	x, #0x0350
      008F68 27 47            [ 1]  860 	jreq	00110$
      008F6A A3 06 84         [ 2]  861 	cpw	x, #0x0684
      008F6D 27 42            [ 1]  862 	jreq	00110$
      008F6F A3 07 94         [ 2]  863 	cpw	x, #0x0794
      008F72 27 3D            [ 1]  864 	jreq	00110$
      008F74 4D               [ 1]  865 	tnz	a
      008F75 26 3A            [ 1]  866 	jrne	00110$
      008F77 A3 00 10         [ 2]  867 	cpw	x, #0x0010
      008F7A 27 35            [ 1]  868 	jreq	00110$
      008F7C A3 03 01         [ 2]  869 	cpw	x, #0x0301
      008F7F 27 30            [ 1]  870 	jreq	00110$
      008F81 A3 07 82         [ 2]  871 	cpw	x, #0x0782
      008F84 27 2B            [ 1]  872 	jreq	00110$
      008F86 A3 03 02         [ 2]  873 	cpw	x, #0x0302
      008F89 27 26            [ 1]  874 	jreq	00110$
      008F8B A3 03 40         [ 2]  875 	cpw	x, #0x0340
      008F8E 27 21            [ 1]  876 	jreq	00110$
      008F90 A3 07 84         [ 2]  877 	cpw	x, #0x0784
      008F93 27 1C            [ 1]  878 	jreq	00110$
      008F95 A3 07 80         [ 2]  879 	cpw	x, #0x0780
      008F98 27 17            [ 1]  880 	jreq	00110$
      008F9A A3 03 08         [ 2]  881 	cpw	x, #0x0308
      008F9D 27 12            [ 1]  882 	jreq	00110$
      008F9F 88               [ 1]  883 	push	a
      008FA0 89               [ 2]  884 	pushw	x
      008FA1 4B 4A            [ 1]  885 	push	#0x4a
      008FA3 4B 02            [ 1]  886 	push	#0x02
      008FA5 4B 00            [ 1]  887 	push	#0x00
      008FA7 4B 00            [ 1]  888 	push	#0x00
      008FA9 AE 81 70         [ 2]  889 	ldw	x, #(___str_0+0)
      008FAC CD AE 90         [ 4]  890 	call	_assert_failed
      008FAF 85               [ 2]  891 	popw	x
      008FB0 84               [ 1]  892 	pop	a
      008FB1                        893 00110$:
                                    894 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 588: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
      008FB1 4D               [ 1]  895 	tnz	a
      008FB2 27 0D            [ 1]  896 	jreq	00102$
                                    897 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 590: lastevent = I2C->SR2 & I2C_SR2_AF;
      008FB4 C6 52 18         [ 1]  898 	ld	a, 0x5218
      008FB7 A4 04            [ 1]  899 	and	a, #0x04
      008FB9 90 5F            [ 1]  900 	clrw	y
      008FBB 90 97            [ 1]  901 	ld	yl, a
      008FBD 17 01            [ 2]  902 	ldw	(0x01, sp), y
      008FBF 20 1A            [ 2]  903 	jra	00103$
      008FC1                        904 00102$:
                                    905 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 594: flag1 = I2C->SR1;
      008FC1 C6 52 17         [ 1]  906 	ld	a, 0x5217
      008FC4 6B 06            [ 1]  907 	ld	(0x06, sp), a
                                    908 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 595: flag2 = I2C->SR3;
      008FC6 C6 52 19         [ 1]  909 	ld	a, 0x5219
                                    910 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 596: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
      008FC9 90 95            [ 1]  911 	ld	yh, a
      008FCB 0F 04            [ 1]  912 	clr	(0x04, sp)
      008FCD 7B 06            [ 1]  913 	ld	a, (0x06, sp)
      008FCF 0F 05            [ 1]  914 	clr	(0x05, sp)
      008FD1 1A 04            [ 1]  915 	or	a, (0x04, sp)
      008FD3 90 02            [ 1]  916 	rlwa	y
      008FD5 1A 05            [ 1]  917 	or	a, (0x05, sp)
      008FD7 90 95            [ 1]  918 	ld	yh, a
      008FD9 17 01            [ 2]  919 	ldw	(0x01, sp), y
      008FDB                        920 00103$:
                                    921 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 599: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
      008FDB 9F               [ 1]  922 	ld	a, xl
      008FDC 14 02            [ 1]  923 	and	a, (0x02, sp)
      008FDE 6B 06            [ 1]  924 	ld	(0x06, sp), a
      008FE0 9E               [ 1]  925 	ld	a, xh
      008FE1 14 01            [ 1]  926 	and	a, (0x01, sp)
      008FE3 6B 05            [ 1]  927 	ld	(0x05, sp), a
      008FE5 13 05            [ 2]  928 	cpw	x, (0x05, sp)
      008FE7 26 03            [ 1]  929 	jrne	00105$
                                    930 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 602: status = SUCCESS;
      008FE9 A6 01            [ 1]  931 	ld	a, #0x01
                                    932 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 607: status = ERROR;
      008FEB 21                     933 	.byte 0x21
      008FEC                        934 00105$:
      008FEC 4F               [ 1]  935 	clr	a
      008FED                        936 00106$:
                                    937 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 611: return status;
                                    938 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 612: }
      008FED 5B 06            [ 2]  939 	addw	sp, #6
      008FEF 81               [ 4]  940 	ret
                                    941 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 628: I2C_Event_TypeDef I2C_GetLastEvent(void)
                                    942 ;	-----------------------------------------
                                    943 ;	 function I2C_GetLastEvent
                                    944 ;	-----------------------------------------
      008FF0                        945 _I2C_GetLastEvent:
      008FF0 52 04            [ 2]  946 	sub	sp, #4
                                    947 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 630: __IO uint16_t lastevent = 0;
      008FF2 5F               [ 1]  948 	clrw	x
      008FF3 1F 01            [ 2]  949 	ldw	(0x01, sp), x
                                    950 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 634: if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
      008FF5 72 05 52 18 07   [ 2]  951 	btjf	0x5218, #2, 00102$
                                    952 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 636: lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
      008FFA AE 00 04         [ 2]  953 	ldw	x, #0x0004
      008FFD 1F 01            [ 2]  954 	ldw	(0x01, sp), x
      008FFF 20 13            [ 2]  955 	jra	00103$
      009001                        956 00102$:
                                    957 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 641: flag1 = I2C->SR1;
      009001 C6 52 17         [ 1]  958 	ld	a, 0x5217
      009004 6B 04            [ 1]  959 	ld	(0x04, sp), a
      009006 0F 03            [ 1]  960 	clr	(0x03, sp)
                                    961 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 642: flag2 = I2C->SR3;
      009008 C6 52 19         [ 1]  962 	ld	a, 0x5219
                                    963 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 645: lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
      00900B 95               [ 1]  964 	ld	xh, a
      00900C 7B 04            [ 1]  965 	ld	a, (0x04, sp)
      00900E 02               [ 1]  966 	rlwa	x
      00900F 1A 03            [ 1]  967 	or	a, (0x03, sp)
      009011 95               [ 1]  968 	ld	xh, a
      009012 1F 01            [ 2]  969 	ldw	(0x01, sp), x
      009014                        970 00103$:
                                    971 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 648: return (I2C_Event_TypeDef)lastevent;
      009014 1E 01            [ 2]  972 	ldw	x, (0x01, sp)
                                    973 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 649: }
      009016 5B 04            [ 2]  974 	addw	sp, #4
      009018 81               [ 4]  975 	ret
                                    976 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 679: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
                                    977 ;	-----------------------------------------
                                    978 ;	 function I2C_GetFlagStatus
                                    979 ;	-----------------------------------------
      009019                        980 _I2C_GetFlagStatus:
      009019 52 03            [ 2]  981 	sub	sp, #3
      00901B 1F 02            [ 2]  982 	ldw	(0x02, sp), x
                                    983 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 681: uint8_t tempreg = 0;
      00901D 0F 01            [ 1]  984 	clr	(0x01, sp)
                                    985 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 686: assert_param(IS_I2C_FLAG_OK(I2C_Flag));
      00901F 1E 02            [ 2]  986 	ldw	x, (0x02, sp)
      009021 A3 01 80         [ 2]  987 	cpw	x, #0x0180
      009024 27 5B            [ 1]  988 	jreq	00112$
      009026 A3 01 40         [ 2]  989 	cpw	x, #0x0140
      009029 27 56            [ 1]  990 	jreq	00112$
      00902B A3 01 10         [ 2]  991 	cpw	x, #0x0110
      00902E 27 51            [ 1]  992 	jreq	00112$
      009030 A3 01 08         [ 2]  993 	cpw	x, #0x0108
      009033 27 4C            [ 1]  994 	jreq	00112$
      009035 A3 01 04         [ 2]  995 	cpw	x, #0x0104
      009038 27 47            [ 1]  996 	jreq	00112$
      00903A A3 01 02         [ 2]  997 	cpw	x, #0x0102
      00903D 27 42            [ 1]  998 	jreq	00112$
      00903F A3 01 01         [ 2]  999 	cpw	x, #0x0101
      009042 27 3D            [ 1] 1000 	jreq	00112$
      009044 A3 02 20         [ 2] 1001 	cpw	x, #0x0220
      009047 27 38            [ 1] 1002 	jreq	00112$
      009049 A3 02 08         [ 2] 1003 	cpw	x, #0x0208
      00904C 27 33            [ 1] 1004 	jreq	00112$
      00904E A3 02 04         [ 2] 1005 	cpw	x, #0x0204
      009051 27 2E            [ 1] 1006 	jreq	00112$
      009053 A3 02 02         [ 2] 1007 	cpw	x, #0x0202
      009056 27 29            [ 1] 1008 	jreq	00112$
      009058 A3 02 01         [ 2] 1009 	cpw	x, #0x0201
      00905B 27 24            [ 1] 1010 	jreq	00112$
      00905D A3 03 10         [ 2] 1011 	cpw	x, #0x0310
      009060 27 1F            [ 1] 1012 	jreq	00112$
      009062 A3 03 04         [ 2] 1013 	cpw	x, #0x0304
      009065 27 1A            [ 1] 1014 	jreq	00112$
      009067 A3 03 02         [ 2] 1015 	cpw	x, #0x0302
      00906A 27 15            [ 1] 1016 	jreq	00112$
      00906C A3 03 01         [ 2] 1017 	cpw	x, #0x0301
      00906F 27 10            [ 1] 1018 	jreq	00112$
      009071 89               [ 2] 1019 	pushw	x
      009072 4B AE            [ 1] 1020 	push	#0xae
      009074 4B 02            [ 1] 1021 	push	#0x02
      009076 4B 00            [ 1] 1022 	push	#0x00
      009078 4B 00            [ 1] 1023 	push	#0x00
      00907A AE 81 70         [ 2] 1024 	ldw	x, #(___str_0+0)
      00907D CD AE 90         [ 4] 1025 	call	_assert_failed
      009080 85               [ 2] 1026 	popw	x
      009081                       1027 00112$:
                                   1028 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 689: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
      009081 9E               [ 1] 1029 	ld	a, xh
                                   1030 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 691: switch (regindex)
      009082 A1 01            [ 1] 1031 	cp	a, #0x01
      009084 27 0A            [ 1] 1032 	jreq	00101$
      009086 A1 02            [ 1] 1033 	cp	a, #0x02
      009088 27 0D            [ 1] 1034 	jreq	00102$
      00908A A1 03            [ 1] 1035 	cp	a, #0x03
      00908C 27 10            [ 1] 1036 	jreq	00103$
      00908E 20 13            [ 2] 1037 	jra	00105$
                                   1038 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 694: case 0x01:
      009090                       1039 00101$:
                                   1040 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 695: tempreg = (uint8_t)I2C->SR1;
      009090 C6 52 17         [ 1] 1041 	ld	a, 0x5217
      009093 6B 01            [ 1] 1042 	ld	(0x01, sp), a
                                   1043 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 696: break;
      009095 20 0C            [ 2] 1044 	jra	00105$
                                   1045 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 699: case 0x02:
      009097                       1046 00102$:
                                   1047 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 700: tempreg = (uint8_t)I2C->SR2;
      009097 C6 52 18         [ 1] 1048 	ld	a, 0x5218
      00909A 6B 01            [ 1] 1049 	ld	(0x01, sp), a
                                   1050 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 701: break;
      00909C 20 05            [ 2] 1051 	jra	00105$
                                   1052 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 704: case 0x03:
      00909E                       1053 00103$:
                                   1054 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 705: tempreg = (uint8_t)I2C->SR3;
      00909E C6 52 19         [ 1] 1055 	ld	a, 0x5219
      0090A1 6B 01            [ 1] 1056 	ld	(0x01, sp), a
                                   1057 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 710: }
      0090A3                       1058 00105$:
                                   1059 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 713: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
      0090A3 7B 03            [ 1] 1060 	ld	a, (0x03, sp)
      0090A5 14 01            [ 1] 1061 	and	a, (0x01, sp)
      0090A7 27 03            [ 1] 1062 	jreq	00107$
                                   1063 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 716: bitstatus = SET;
      0090A9 A6 01            [ 1] 1064 	ld	a, #0x01
                                   1065 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 721: bitstatus = RESET;
      0090AB 21                    1066 	.byte 0x21
      0090AC                       1067 00107$:
      0090AC 4F               [ 1] 1068 	clr	a
      0090AD                       1069 00108$:
                                   1070 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 724: return bitstatus;
                                   1071 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 725: }
      0090AD 5B 03            [ 2] 1072 	addw	sp, #3
      0090AF 81               [ 4] 1073 	ret
                                   1074 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 759: void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
                                   1075 ;	-----------------------------------------
                                   1076 ;	 function I2C_ClearFlag
                                   1077 ;	-----------------------------------------
      0090B0                       1078 _I2C_ClearFlag:
                                   1079 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 763: assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
      0090B0 9E               [ 1] 1080 	ld	a, xh
      0090B1 A5 FD            [ 1] 1081 	bcp	a, #0xfd
      0090B3 26 03            [ 1] 1082 	jrne	00103$
      0090B5 5D               [ 2] 1083 	tnzw	x
      0090B6 26 10            [ 1] 1084 	jrne	00104$
      0090B8                       1085 00103$:
      0090B8 89               [ 2] 1086 	pushw	x
      0090B9 4B FB            [ 1] 1087 	push	#0xfb
      0090BB 4B 02            [ 1] 1088 	push	#0x02
      0090BD 4B 00            [ 1] 1089 	push	#0x00
      0090BF 4B 00            [ 1] 1090 	push	#0x00
      0090C1 AE 81 70         [ 2] 1091 	ldw	x, #(___str_0+0)
      0090C4 CD AE 90         [ 4] 1092 	call	_assert_failed
      0090C7 85               [ 2] 1093 	popw	x
      0090C8                       1094 00104$:
                                   1095 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 766: flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
      0090C8 4F               [ 1] 1096 	clr	a
      0090C9 95               [ 1] 1097 	ld	xh, a
                                   1098 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 768: I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
      0090CA 53               [ 2] 1099 	cplw	x
      0090CB 9F               [ 1] 1100 	ld	a, xl
      0090CC C7 52 18         [ 1] 1101 	ld	0x5218, a
                                   1102 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 769: }
      0090CF 81               [ 4] 1103 	ret
                                   1104 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 791: ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
                                   1105 ;	-----------------------------------------
                                   1106 ;	 function I2C_GetITStatus
                                   1107 ;	-----------------------------------------
      0090D0                       1108 _I2C_GetITStatus:
      0090D0 52 06            [ 2] 1109 	sub	sp, #6
      0090D2 1F 05            [ 2] 1110 	ldw	(0x05, sp), x
                                   1111 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 794: __IO uint8_t enablestatus = 0;
      0090D4 0F 03            [ 1] 1112 	clr	(0x03, sp)
                                   1113 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 798: assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
      0090D6 1E 05            [ 2] 1114 	ldw	x, (0x05, sp)
      0090D8 A3 16 80         [ 2] 1115 	cpw	x, #0x1680
      0090DB 27 47            [ 1] 1116 	jreq	00115$
      0090DD A3 16 40         [ 2] 1117 	cpw	x, #0x1640
      0090E0 27 42            [ 1] 1118 	jreq	00115$
      0090E2 A3 12 10         [ 2] 1119 	cpw	x, #0x1210
      0090E5 27 3D            [ 1] 1120 	jreq	00115$
      0090E7 A3 12 08         [ 2] 1121 	cpw	x, #0x1208
      0090EA 27 38            [ 1] 1122 	jreq	00115$
      0090EC A3 12 04         [ 2] 1123 	cpw	x, #0x1204
      0090EF 27 33            [ 1] 1124 	jreq	00115$
      0090F1 A3 12 02         [ 2] 1125 	cpw	x, #0x1202
      0090F4 27 2E            [ 1] 1126 	jreq	00115$
      0090F6 A3 12 01         [ 2] 1127 	cpw	x, #0x1201
      0090F9 27 29            [ 1] 1128 	jreq	00115$
      0090FB A3 22 20         [ 2] 1129 	cpw	x, #0x2220
      0090FE 27 24            [ 1] 1130 	jreq	00115$
      009100 A3 21 08         [ 2] 1131 	cpw	x, #0x2108
      009103 27 1F            [ 1] 1132 	jreq	00115$
      009105 A3 21 04         [ 2] 1133 	cpw	x, #0x2104
      009108 27 1A            [ 1] 1134 	jreq	00115$
      00910A A3 21 02         [ 2] 1135 	cpw	x, #0x2102
      00910D 27 15            [ 1] 1136 	jreq	00115$
      00910F A3 21 01         [ 2] 1137 	cpw	x, #0x2101
      009112 27 10            [ 1] 1138 	jreq	00115$
      009114 89               [ 2] 1139 	pushw	x
      009115 4B 1E            [ 1] 1140 	push	#0x1e
      009117 4B 03            [ 1] 1141 	push	#0x03
      009119 4B 00            [ 1] 1142 	push	#0x00
      00911B 4B 00            [ 1] 1143 	push	#0x00
      00911D AE 81 70         [ 2] 1144 	ldw	x, #(___str_0+0)
      009120 CD AE 90         [ 4] 1145 	call	_assert_failed
      009123 85               [ 2] 1146 	popw	x
      009124                       1147 00115$:
                                   1148 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 800: tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
      009124 0F 02            [ 1] 1149 	clr	(0x02, sp)
      009126 9E               [ 1] 1150 	ld	a, xh
      009127 A4 07            [ 1] 1151 	and	a, #0x07
      009129 6B 04            [ 1] 1152 	ld	(0x04, sp), a
                                   1153 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 803: enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
      00912B C6 52 1A         [ 1] 1154 	ld	a, 0x521a
      00912E 14 04            [ 1] 1155 	and	a, (0x04, sp)
      009130 6B 03            [ 1] 1156 	ld	(0x03, sp), a
                                   1157 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 805: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
      009132 4F               [ 1] 1158 	clr	a
      009133 02               [ 1] 1159 	rlwa	x
      009134 A4 30            [ 1] 1160 	and	a, #0x30
      009136 95               [ 1] 1161 	ld	xh, a
                                   1162 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 808: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      009137 7B 06            [ 1] 1163 	ld	a, (0x06, sp)
      009139 6B 04            [ 1] 1164 	ld	(0x04, sp), a
                                   1165 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 805: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
      00913B A3 01 00         [ 2] 1166 	cpw	x, #0x0100
      00913E 26 12            [ 1] 1167 	jrne	00110$
                                   1168 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 808: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      009140 C6 52 17         [ 1] 1169 	ld	a, 0x5217
      009143 14 04            [ 1] 1170 	and	a, (0x04, sp)
      009145 27 08            [ 1] 1171 	jreq	00102$
      009147 0D 03            [ 1] 1172 	tnz	(0x03, sp)
      009149 27 04            [ 1] 1173 	jreq	00102$
                                   1174 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 811: bitstatus = SET;
      00914B A6 01            [ 1] 1175 	ld	a, #0x01
      00914D 20 12            [ 2] 1176 	jra	00111$
      00914F                       1177 00102$:
                                   1178 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 816: bitstatus = RESET;
      00914F 4F               [ 1] 1179 	clr	a
      009150 20 0F            [ 2] 1180 	jra	00111$
      009152                       1181 00110$:
                                   1182 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 822: if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      009152 C6 52 18         [ 1] 1183 	ld	a, 0x5218
      009155 14 04            [ 1] 1184 	and	a, (0x04, sp)
      009157 27 07            [ 1] 1185 	jreq	00106$
      009159 0D 03            [ 1] 1186 	tnz	(0x03, sp)
      00915B 27 03            [ 1] 1187 	jreq	00106$
                                   1188 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 825: bitstatus = SET;
      00915D A6 01            [ 1] 1189 	ld	a, #0x01
                                   1190 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 830: bitstatus = RESET;
      00915F 21                    1191 	.byte 0x21
      009160                       1192 00106$:
      009160 4F               [ 1] 1193 	clr	a
      009161                       1194 00111$:
                                   1195 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 834: return  bitstatus;
                                   1196 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 835: }
      009161 5B 06            [ 2] 1197 	addw	sp, #6
      009163 81               [ 4] 1198 	ret
                                   1199 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 871: void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
                                   1200 ;	-----------------------------------------
                                   1201 ;	 function I2C_ClearITPendingBit
                                   1202 ;	-----------------------------------------
      009164                       1203 _I2C_ClearITPendingBit:
                                   1204 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 876: assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
      009164 A3 22 20         [ 2] 1205 	cpw	x, #0x2220
      009167 27 24            [ 1] 1206 	jreq	00104$
      009169 A3 21 08         [ 2] 1207 	cpw	x, #0x2108
      00916C 27 1F            [ 1] 1208 	jreq	00104$
      00916E A3 21 04         [ 2] 1209 	cpw	x, #0x2104
      009171 27 1A            [ 1] 1210 	jreq	00104$
      009173 A3 21 02         [ 2] 1211 	cpw	x, #0x2102
      009176 27 15            [ 1] 1212 	jreq	00104$
      009178 A3 21 01         [ 2] 1213 	cpw	x, #0x2101
      00917B 27 10            [ 1] 1214 	jreq	00104$
      00917D 89               [ 2] 1215 	pushw	x
      00917E 4B 6C            [ 1] 1216 	push	#0x6c
      009180 4B 03            [ 1] 1217 	push	#0x03
      009182 4B 00            [ 1] 1218 	push	#0x00
      009184 4B 00            [ 1] 1219 	push	#0x00
      009186 AE 81 70         [ 2] 1220 	ldw	x, #(___str_0+0)
      009189 CD AE 90         [ 4] 1221 	call	_assert_failed
      00918C 85               [ 2] 1222 	popw	x
      00918D                       1223 00104$:
                                   1224 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 879: flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
      00918D 4F               [ 1] 1225 	clr	a
      00918E 95               [ 1] 1226 	ld	xh, a
                                   1227 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 882: I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
      00918F 53               [ 2] 1228 	cplw	x
      009190 9F               [ 1] 1229 	ld	a, xl
      009191 C7 52 18         [ 1] 1230 	ld	0x5218, a
                                   1231 ;	C:\Users\dunaev\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 883: }
      009194 81               [ 4] 1232 	ret
                                   1233 	.area CODE
                                   1234 	.area CONST
                                   1235 	.area CONST
      008170                       1236 ___str_0:
      008170 43 3A                 1237 	.ascii "C:"
      008172 5C                    1238 	.db 0x5c
      008173 55 73 65 72 73        1239 	.ascii "Users"
      008178 5C                    1240 	.db 0x5c
      008179 64 75 6E 61 65 76     1241 	.ascii "dunaev"
      00817F 5C                    1242 	.db 0x5c
      008180 2E 70 6C 61 74 66 6F  1243 	.ascii ".platformio"
             72 6D 69 6F
      00818B 5C                    1244 	.db 0x5c
      00818C 70 61 63 6B 61 67 65  1245 	.ascii "packages"
             73
      008194 5C                    1246 	.db 0x5c
      008195 66 72 61 6D 65 77 6F  1247 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      0081A8 5C                    1248 	.db 0x5c
      0081A9 4C 69 62 72 61 72 69  1249 	.ascii "Libraries"
             65 73
      0081B2 5C                    1250 	.db 0x5c
      0081B3 53 54 4D 38 53 5F 53  1251 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0081C9 5C                    1252 	.db 0x5c
      0081CA 73 72 63              1253 	.ascii "src"
      0081CD 5C                    1254 	.db 0x5c
      0081CE 73 74 6D 38 73 5F 69  1255 	.ascii "stm8s_i2c.c"
             32 63 2E 63
      0081D9 00                    1256 	.db 0x00
                                   1257 	.area CODE
                                   1258 	.area INITIALIZER
                                   1259 	.area CABS (ABS)
