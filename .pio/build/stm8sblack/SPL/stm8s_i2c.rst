                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Mac OS X x86_64)
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
                                     69 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 67: void I2C_DeInit(void)
                                     70 ;	-----------------------------------------
                                     71 ;	 function I2C_DeInit
                                     72 ;	-----------------------------------------
      008C0C                         73 _I2C_DeInit:
                                     74 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 69: I2C->CR1 = I2C_CR1_RESET_VALUE;
      008C0C 35 00 52 10      [ 1]   75 	mov	0x5210+0, #0x00
                                     76 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 70: I2C->CR2 = I2C_CR2_RESET_VALUE;
      008C10 35 00 52 11      [ 1]   77 	mov	0x5211+0, #0x00
                                     78 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 71: I2C->FREQR = I2C_FREQR_RESET_VALUE;
      008C14 35 00 52 12      [ 1]   79 	mov	0x5212+0, #0x00
                                     80 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 72: I2C->OARL = I2C_OARL_RESET_VALUE;
      008C18 35 00 52 13      [ 1]   81 	mov	0x5213+0, #0x00
                                     82 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 73: I2C->OARH = I2C_OARH_RESET_VALUE;
      008C1C 35 00 52 14      [ 1]   83 	mov	0x5214+0, #0x00
                                     84 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 74: I2C->ITR = I2C_ITR_RESET_VALUE;
      008C20 35 00 52 1A      [ 1]   85 	mov	0x521a+0, #0x00
                                     86 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 75: I2C->CCRL = I2C_CCRL_RESET_VALUE;
      008C24 35 00 52 1B      [ 1]   87 	mov	0x521b+0, #0x00
                                     88 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 76: I2C->CCRH = I2C_CCRH_RESET_VALUE;
      008C28 35 00 52 1C      [ 1]   89 	mov	0x521c+0, #0x00
                                     90 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 77: I2C->TRISER = I2C_TRISER_RESET_VALUE;
      008C2C 35 02 52 1D      [ 1]   91 	mov	0x521d+0, #0x02
                                     92 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 78: }
      008C30 81               [ 4]   93 	ret
                                     94 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 96: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
                                     95 ;	-----------------------------------------
                                     96 ;	 function I2C_Init
                                     97 ;	-----------------------------------------
      008C31                         98 _I2C_Init:
      008C31 52 0B            [ 2]   99 	sub	sp, #11
                                    100 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 102: uint8_t tmpccrh = 0;
      008C33 0F 09            [ 1]  101 	clr	(0x09, sp)
                                    102 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 105: assert_param(IS_I2C_ACK_OK(Ack));
      008C35 0D 15            [ 1]  103 	tnz	(0x15, sp)
      008C37 27 17            [ 1]  104 	jreq	00114$
      008C39 7B 15            [ 1]  105 	ld	a, (0x15, sp)
      008C3B 4A               [ 1]  106 	dec	a
      008C3C 27 12            [ 1]  107 	jreq	00114$
      008C3E 7B 15            [ 1]  108 	ld	a, (0x15, sp)
      008C40 A1 02            [ 1]  109 	cp	a, #0x02
      008C42 27 0C            [ 1]  110 	jreq	00114$
      008C44 4B 69            [ 1]  111 	push	#0x69
      008C46 5F               [ 1]  112 	clrw	x
      008C47 89               [ 2]  113 	pushw	x
      008C48 4B 00            [ 1]  114 	push	#0x00
      008C4A AE 81 7A         [ 2]  115 	ldw	x, #(___str_0+0)
      008C4D CD AB 90         [ 4]  116 	call	_assert_failed
      008C50                        117 00114$:
                                    118 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 106: assert_param(IS_I2C_ADDMODE_OK(AddMode));
      008C50 0D 16            [ 1]  119 	tnz	(0x16, sp)
      008C52 27 12            [ 1]  120 	jreq	00122$
      008C54 7B 16            [ 1]  121 	ld	a, (0x16, sp)
      008C56 A1 80            [ 1]  122 	cp	a, #0x80
      008C58 27 0C            [ 1]  123 	jreq	00122$
      008C5A 4B 6A            [ 1]  124 	push	#0x6a
      008C5C 5F               [ 1]  125 	clrw	x
      008C5D 89               [ 2]  126 	pushw	x
      008C5E 4B 00            [ 1]  127 	push	#0x00
      008C60 AE 81 7A         [ 2]  128 	ldw	x, #(___str_0+0)
      008C63 CD AB 90         [ 4]  129 	call	_assert_failed
      008C66                        130 00122$:
                                    131 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 107: assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
      008C66 1E 12            [ 2]  132 	ldw	x, (0x12, sp)
      008C68 A3 03 FF         [ 2]  133 	cpw	x, #0x03ff
      008C6B 23 0C            [ 2]  134 	jrule	00127$
      008C6D 4B 6B            [ 1]  135 	push	#0x6b
      008C6F 5F               [ 1]  136 	clrw	x
      008C70 89               [ 2]  137 	pushw	x
      008C71 4B 00            [ 1]  138 	push	#0x00
      008C73 AE 81 7A         [ 2]  139 	ldw	x, #(___str_0+0)
      008C76 CD AB 90         [ 4]  140 	call	_assert_failed
      008C79                        141 00127$:
                                    142 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 108: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
      008C79 0D 14            [ 1]  143 	tnz	(0x14, sp)
      008C7B 27 12            [ 1]  144 	jreq	00129$
      008C7D 7B 14            [ 1]  145 	ld	a, (0x14, sp)
      008C7F A1 40            [ 1]  146 	cp	a, #0x40
      008C81 27 0C            [ 1]  147 	jreq	00129$
      008C83 4B 6C            [ 1]  148 	push	#0x6c
      008C85 5F               [ 1]  149 	clrw	x
      008C86 89               [ 2]  150 	pushw	x
      008C87 4B 00            [ 1]  151 	push	#0x00
      008C89 AE 81 7A         [ 2]  152 	ldw	x, #(___str_0+0)
      008C8C CD AB 90         [ 4]  153 	call	_assert_failed
      008C8F                        154 00129$:
                                    155 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 109: assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
      008C8F 7B 17            [ 1]  156 	ld	a, (0x17, sp)
      008C91 A1 01            [ 1]  157 	cp	a, #0x01
      008C93 25 06            [ 1]  158 	jrc	00133$
      008C95 7B 17            [ 1]  159 	ld	a, (0x17, sp)
      008C97 A1 10            [ 1]  160 	cp	a, #0x10
      008C99 23 0C            [ 2]  161 	jrule	00134$
      008C9B                        162 00133$:
      008C9B 4B 6D            [ 1]  163 	push	#0x6d
      008C9D 5F               [ 1]  164 	clrw	x
      008C9E 89               [ 2]  165 	pushw	x
      008C9F 4B 00            [ 1]  166 	push	#0x00
      008CA1 AE 81 7A         [ 2]  167 	ldw	x, #(___str_0+0)
      008CA4 CD AB 90         [ 4]  168 	call	_assert_failed
      008CA7                        169 00134$:
                                    170 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 110: assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
      008CA7 1E 10            [ 2]  171 	ldw	x, (0x10, sp)
      008CA9 A3 00 01         [ 2]  172 	cpw	x, #0x0001
      008CAC 7B 0F            [ 1]  173 	ld	a, (0x0f, sp)
      008CAE A2 00            [ 1]  174 	sbc	a, #0x00
      008CB0 7B 0E            [ 1]  175 	ld	a, (0x0e, sp)
      008CB2 A2 00            [ 1]  176 	sbc	a, #0x00
      008CB4 25 0E            [ 1]  177 	jrc	00138$
      008CB6 AE 1A 80         [ 2]  178 	ldw	x, #0x1a80
      008CB9 13 10            [ 2]  179 	cpw	x, (0x10, sp)
      008CBB A6 06            [ 1]  180 	ld	a, #0x06
      008CBD 12 0F            [ 1]  181 	sbc	a, (0x0f, sp)
      008CBF 4F               [ 1]  182 	clr	a
      008CC0 12 0E            [ 1]  183 	sbc	a, (0x0e, sp)
      008CC2 24 0C            [ 1]  184 	jrnc	00139$
      008CC4                        185 00138$:
      008CC4 4B 6E            [ 1]  186 	push	#0x6e
      008CC6 5F               [ 1]  187 	clrw	x
      008CC7 89               [ 2]  188 	pushw	x
      008CC8 4B 00            [ 1]  189 	push	#0x00
      008CCA AE 81 7A         [ 2]  190 	ldw	x, #(___str_0+0)
      008CCD CD AB 90         [ 4]  191 	call	_assert_failed
      008CD0                        192 00139$:
                                    193 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 115: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
      008CD0 C6 52 12         [ 1]  194 	ld	a, 0x5212
      008CD3 A4 C0            [ 1]  195 	and	a, #0xc0
      008CD5 C7 52 12         [ 1]  196 	ld	0x5212, a
                                    197 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 117: I2C->FREQR |= InputClockFrequencyMHz;
      008CD8 C6 52 12         [ 1]  198 	ld	a, 0x5212
      008CDB 1A 17            [ 1]  199 	or	a, (0x17, sp)
      008CDD C7 52 12         [ 1]  200 	ld	0x5212, a
                                    201 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 121: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008CE0 72 11 52 10      [ 1]  202 	bres	0x5210, #0
                                    203 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 124: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
      008CE4 C6 52 1C         [ 1]  204 	ld	a, 0x521c
      008CE7 A4 30            [ 1]  205 	and	a, #0x30
      008CE9 C7 52 1C         [ 1]  206 	ld	0x521c, a
                                    207 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 125: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
      008CEC C6 52 1B         [ 1]  208 	ld	a, 0x521b
      008CEF 35 00 52 1B      [ 1]  209 	mov	0x521b+0, #0x00
                                    210 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008CF3 5F               [ 1]  211 	clrw	x
      008CF4 7B 17            [ 1]  212 	ld	a, (0x17, sp)
      008CF6 97               [ 1]  213 	ld	xl, a
      008CF7 90 5F            [ 1]  214 	clrw	y
      008CF9 89               [ 2]  215 	pushw	x
      008CFA 90 89            [ 2]  216 	pushw	y
      008CFC 4B 40            [ 1]  217 	push	#0x40
      008CFE 4B 42            [ 1]  218 	push	#0x42
      008D00 4B 0F            [ 1]  219 	push	#0x0f
      008D02 4B 00            [ 1]  220 	push	#0x00
      008D04 CD B5 5A         [ 4]  221 	call	__mullong
      008D07 5B 08            [ 2]  222 	addw	sp, #8
      008D09 1F 07            [ 2]  223 	ldw	(0x07, sp), x
      008D0B 17 05            [ 2]  224 	ldw	(0x05, sp), y
                                    225 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 128: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
      008D0D AE 86 A0         [ 2]  226 	ldw	x, #0x86a0
      008D10 13 10            [ 2]  227 	cpw	x, (0x10, sp)
      008D12 A6 01            [ 1]  228 	ld	a, #0x01
      008D14 12 0F            [ 1]  229 	sbc	a, (0x0f, sp)
      008D16 4F               [ 1]  230 	clr	a
      008D17 12 0E            [ 1]  231 	sbc	a, (0x0e, sp)
      008D19 24 7C            [ 1]  232 	jrnc	00109$
                                    233 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 131: tmpccrh = I2C_CCRH_FS;
      008D1B A6 80            [ 1]  234 	ld	a, #0x80
      008D1D 6B 09            [ 1]  235 	ld	(0x09, sp), a
                                    236 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 133: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
      008D1F 0D 14            [ 1]  237 	tnz	(0x14, sp)
      008D21 26 23            [ 1]  238 	jrne	00102$
                                    239 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008D23 1E 10            [ 2]  240 	ldw	x, (0x10, sp)
      008D25 89               [ 2]  241 	pushw	x
      008D26 1E 10            [ 2]  242 	ldw	x, (0x10, sp)
      008D28 89               [ 2]  243 	pushw	x
      008D29 4B 03            [ 1]  244 	push	#0x03
      008D2B 5F               [ 1]  245 	clrw	x
      008D2C 89               [ 2]  246 	pushw	x
      008D2D 4B 00            [ 1]  247 	push	#0x00
      008D2F CD B5 5A         [ 4]  248 	call	__mullong
      008D32 5B 08            [ 2]  249 	addw	sp, #8
      008D34 89               [ 2]  250 	pushw	x
      008D35 90 89            [ 2]  251 	pushw	y
      008D37 1E 0B            [ 2]  252 	ldw	x, (0x0b, sp)
      008D39 89               [ 2]  253 	pushw	x
      008D3A 1E 0B            [ 2]  254 	ldw	x, (0x0b, sp)
      008D3C 89               [ 2]  255 	pushw	x
      008D3D CD B2 4A         [ 4]  256 	call	__divulong
      008D40 5B 08            [ 2]  257 	addw	sp, #8
      008D42 1F 0A            [ 2]  258 	ldw	(0x0a, sp), x
      008D44 20 2D            [ 2]  259 	jra	00103$
      008D46                        260 00102$:
                                    261 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 141: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
      008D46 1E 10            [ 2]  262 	ldw	x, (0x10, sp)
      008D48 89               [ 2]  263 	pushw	x
      008D49 1E 10            [ 2]  264 	ldw	x, (0x10, sp)
      008D4B 89               [ 2]  265 	pushw	x
      008D4C 4B 19            [ 1]  266 	push	#0x19
      008D4E 5F               [ 1]  267 	clrw	x
      008D4F 89               [ 2]  268 	pushw	x
      008D50 4B 00            [ 1]  269 	push	#0x00
      008D52 CD B5 5A         [ 4]  270 	call	__mullong
      008D55 5B 08            [ 2]  271 	addw	sp, #8
      008D57 17 01            [ 2]  272 	ldw	(0x01, sp), y
      008D59 9F               [ 1]  273 	ld	a, xl
      008D5A 88               [ 1]  274 	push	a
      008D5B 9E               [ 1]  275 	ld	a, xh
      008D5C 88               [ 1]  276 	push	a
      008D5D 1E 03            [ 2]  277 	ldw	x, (0x03, sp)
      008D5F 89               [ 2]  278 	pushw	x
      008D60 1E 0B            [ 2]  279 	ldw	x, (0x0b, sp)
      008D62 89               [ 2]  280 	pushw	x
      008D63 1E 0B            [ 2]  281 	ldw	x, (0x0b, sp)
      008D65 89               [ 2]  282 	pushw	x
      008D66 CD B2 4A         [ 4]  283 	call	__divulong
      008D69 5B 08            [ 2]  284 	addw	sp, #8
      008D6B 1F 0A            [ 2]  285 	ldw	(0x0a, sp), x
      008D6D 17 08            [ 2]  286 	ldw	(0x08, sp), y
                                    287 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 143: tmpccrh |= I2C_CCRH_DUTY;
      008D6F A6 C0            [ 1]  288 	ld	a, #0xc0
      008D71 6B 09            [ 1]  289 	ld	(0x09, sp), a
      008D73                        290 00103$:
                                    291 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 147: if (result < (uint16_t)0x01)
      008D73 1E 0A            [ 2]  292 	ldw	x, (0x0a, sp)
      008D75 A3 00 01         [ 2]  293 	cpw	x, #0x0001
      008D78 24 04            [ 1]  294 	jrnc	00105$
                                    295 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 150: result = (uint16_t)0x0001;
      008D7A 5F               [ 1]  296 	clrw	x
      008D7B 5C               [ 1]  297 	incw	x
      008D7C 1F 0A            [ 2]  298 	ldw	(0x0a, sp), x
      008D7E                        299 00105$:
                                    300 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 156: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
      008D7E 7B 17            [ 1]  301 	ld	a, (0x17, sp)
      008D80 5F               [ 1]  302 	clrw	x
      008D81 97               [ 1]  303 	ld	xl, a
      008D82 89               [ 2]  304 	pushw	x
      008D83 58               [ 2]  305 	sllw	x
      008D84 72 FB 01         [ 2]  306 	addw	x, (1, sp)
      008D87 5B 02            [ 2]  307 	addw	sp, #2
      008D89 4B 0A            [ 1]  308 	push	#0x0a
      008D8B 4B 00            [ 1]  309 	push	#0x00
      008D8D CD B5 D6         [ 4]  310 	call	__divsint
      008D90 9F               [ 1]  311 	ld	a, xl
      008D91 4C               [ 1]  312 	inc	a
                                    313 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 157: I2C->TRISER = (uint8_t)tmpval;
      008D92 C7 52 1D         [ 1]  314 	ld	0x521d, a
      008D95 20 27            [ 2]  315 	jra	00110$
      008D97                        316 00109$:
                                    317 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 164: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
      008D97 1E 10            [ 2]  318 	ldw	x, (0x10, sp)
      008D99 16 0E            [ 2]  319 	ldw	y, (0x0e, sp)
      008D9B 58               [ 2]  320 	sllw	x
      008D9C 90 59            [ 2]  321 	rlcw	y
      008D9E 89               [ 2]  322 	pushw	x
      008D9F 90 89            [ 2]  323 	pushw	y
      008DA1 1E 0B            [ 2]  324 	ldw	x, (0x0b, sp)
      008DA3 89               [ 2]  325 	pushw	x
      008DA4 1E 0B            [ 2]  326 	ldw	x, (0x0b, sp)
      008DA6 89               [ 2]  327 	pushw	x
      008DA7 CD B2 4A         [ 4]  328 	call	__divulong
      008DAA 5B 08            [ 2]  329 	addw	sp, #8
                                    330 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 167: if (result < (uint16_t)0x0004)
      008DAC 1F 0A            [ 2]  331 	ldw	(0x0a, sp), x
      008DAE A3 00 04         [ 2]  332 	cpw	x, #0x0004
      008DB1 24 05            [ 1]  333 	jrnc	00107$
                                    334 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 170: result = (uint16_t)0x0004;
      008DB3 AE 00 04         [ 2]  335 	ldw	x, #0x0004
      008DB6 1F 0A            [ 2]  336 	ldw	(0x0a, sp), x
      008DB8                        337 00107$:
                                    338 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 176: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
      008DB8 7B 17            [ 1]  339 	ld	a, (0x17, sp)
      008DBA 4C               [ 1]  340 	inc	a
      008DBB C7 52 1D         [ 1]  341 	ld	0x521d, a
      008DBE                        342 00110$:
                                    343 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 181: I2C->CCRL = (uint8_t)result;
      008DBE 7B 0B            [ 1]  344 	ld	a, (0x0b, sp)
      008DC0 C7 52 1B         [ 1]  345 	ld	0x521b, a
                                    346 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 182: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
      008DC3 7B 0A            [ 1]  347 	ld	a, (0x0a, sp)
      008DC5 A4 0F            [ 1]  348 	and	a, #0x0f
      008DC7 1A 09            [ 1]  349 	or	a, (0x09, sp)
      008DC9 C7 52 1C         [ 1]  350 	ld	0x521c, a
                                    351 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 185: I2C->CR1 |= I2C_CR1_PE;
      008DCC 72 10 52 10      [ 1]  352 	bset	0x5210, #0
                                    353 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 188: I2C_AcknowledgeConfig(Ack);
      008DD0 7B 15            [ 1]  354 	ld	a, (0x15, sp)
      008DD2 CD 8E F7         [ 4]  355 	call	_I2C_AcknowledgeConfig
                                    356 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 191: I2C->OARL = (uint8_t)(OwnAddress);
      008DD5 7B 13            [ 1]  357 	ld	a, (0x13, sp)
      008DD7 C7 52 13         [ 1]  358 	ld	0x5213, a
                                    359 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 192: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
      008DDA 7B 16            [ 1]  360 	ld	a, (0x16, sp)
      008DDC AA 40            [ 1]  361 	or	a, #0x40
      008DDE 6B 0B            [ 1]  362 	ld	(0x0b, sp), a
                                    363 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 193: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
      008DE0 4F               [ 1]  364 	clr	a
      008DE1 97               [ 1]  365 	ld	xl, a
      008DE2 7B 12            [ 1]  366 	ld	a, (0x12, sp)
      008DE4 A4 03            [ 1]  367 	and	a, #0x03
      008DE6 95               [ 1]  368 	ld	xh, a
      008DE7 A6 80            [ 1]  369 	ld	a, #0x80
      008DE9 62               [ 2]  370 	div	x, a
      008DEA 9F               [ 1]  371 	ld	a, xl
      008DEB 1A 0B            [ 1]  372 	or	a, (0x0b, sp)
      008DED C7 52 14         [ 1]  373 	ld	0x5214, a
                                    374 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 194: }
      008DF0 1E 0C            [ 2]  375 	ldw	x, (12, sp)
      008DF2 5B 17            [ 2]  376 	addw	sp, #23
      008DF4 FC               [ 2]  377 	jp	(x)
                                    378 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 202: void I2C_Cmd(FunctionalState NewState)
                                    379 ;	-----------------------------------------
                                    380 ;	 function I2C_Cmd
                                    381 ;	-----------------------------------------
      008DF5                        382 _I2C_Cmd:
      008DF5 88               [ 1]  383 	push	a
                                    384 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 205: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008DF6 6B 01            [ 1]  385 	ld	(0x01, sp), a
      008DF8 27 11            [ 1]  386 	jreq	00107$
      008DFA 7B 01            [ 1]  387 	ld	a, (0x01, sp)
      008DFC 4A               [ 1]  388 	dec	a
      008DFD 27 0C            [ 1]  389 	jreq	00107$
      008DFF 4B CD            [ 1]  390 	push	#0xcd
      008E01 5F               [ 1]  391 	clrw	x
      008E02 89               [ 2]  392 	pushw	x
      008E03 4B 00            [ 1]  393 	push	#0x00
      008E05 AE 81 7A         [ 2]  394 	ldw	x, #(___str_0+0)
      008E08 CD AB 90         [ 4]  395 	call	_assert_failed
      008E0B                        396 00107$:
                                    397 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      008E0B C6 52 10         [ 1]  398 	ld	a, 0x5210
                                    399 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 207: if (NewState != DISABLE)
      008E0E 0D 01            [ 1]  400 	tnz	(0x01, sp)
      008E10 27 07            [ 1]  401 	jreq	00102$
                                    402 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      008E12 AA 01            [ 1]  403 	or	a, #0x01
      008E14 C7 52 10         [ 1]  404 	ld	0x5210, a
      008E17 20 05            [ 2]  405 	jra	00104$
      008E19                        406 00102$:
                                    407 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 215: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008E19 A4 FE            [ 1]  408 	and	a, #0xfe
      008E1B C7 52 10         [ 1]  409 	ld	0x5210, a
      008E1E                        410 00104$:
                                    411 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 217: }
      008E1E 84               [ 1]  412 	pop	a
      008E1F 81               [ 4]  413 	ret
                                    414 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 225: void I2C_GeneralCallCmd(FunctionalState NewState)
                                    415 ;	-----------------------------------------
                                    416 ;	 function I2C_GeneralCallCmd
                                    417 ;	-----------------------------------------
      008E20                        418 _I2C_GeneralCallCmd:
      008E20 88               [ 1]  419 	push	a
                                    420 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 228: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008E21 6B 01            [ 1]  421 	ld	(0x01, sp), a
      008E23 27 11            [ 1]  422 	jreq	00107$
      008E25 7B 01            [ 1]  423 	ld	a, (0x01, sp)
      008E27 4A               [ 1]  424 	dec	a
      008E28 27 0C            [ 1]  425 	jreq	00107$
      008E2A 4B E4            [ 1]  426 	push	#0xe4
      008E2C 5F               [ 1]  427 	clrw	x
      008E2D 89               [ 2]  428 	pushw	x
      008E2E 4B 00            [ 1]  429 	push	#0x00
      008E30 AE 81 7A         [ 2]  430 	ldw	x, #(___str_0+0)
      008E33 CD AB 90         [ 4]  431 	call	_assert_failed
      008E36                        432 00107$:
                                    433 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 233: I2C->CR1 |= I2C_CR1_ENGC;
      008E36 C6 52 10         [ 1]  434 	ld	a, 0x5210
                                    435 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 230: if (NewState != DISABLE)
      008E39 0D 01            [ 1]  436 	tnz	(0x01, sp)
      008E3B 27 07            [ 1]  437 	jreq	00102$
                                    438 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 233: I2C->CR1 |= I2C_CR1_ENGC;
      008E3D AA 40            [ 1]  439 	or	a, #0x40
      008E3F C7 52 10         [ 1]  440 	ld	0x5210, a
      008E42 20 05            [ 2]  441 	jra	00104$
      008E44                        442 00102$:
                                    443 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 238: I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
      008E44 A4 BF            [ 1]  444 	and	a, #0xbf
      008E46 C7 52 10         [ 1]  445 	ld	0x5210, a
      008E49                        446 00104$:
                                    447 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 240: }
      008E49 84               [ 1]  448 	pop	a
      008E4A 81               [ 4]  449 	ret
                                    450 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 250: void I2C_GenerateSTART(FunctionalState NewState)
                                    451 ;	-----------------------------------------
                                    452 ;	 function I2C_GenerateSTART
                                    453 ;	-----------------------------------------
      008E4B                        454 _I2C_GenerateSTART:
      008E4B 88               [ 1]  455 	push	a
                                    456 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 253: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008E4C 6B 01            [ 1]  457 	ld	(0x01, sp), a
      008E4E 27 11            [ 1]  458 	jreq	00107$
      008E50 7B 01            [ 1]  459 	ld	a, (0x01, sp)
      008E52 4A               [ 1]  460 	dec	a
      008E53 27 0C            [ 1]  461 	jreq	00107$
      008E55 4B FD            [ 1]  462 	push	#0xfd
      008E57 5F               [ 1]  463 	clrw	x
      008E58 89               [ 2]  464 	pushw	x
      008E59 4B 00            [ 1]  465 	push	#0x00
      008E5B AE 81 7A         [ 2]  466 	ldw	x, #(___str_0+0)
      008E5E CD AB 90         [ 4]  467 	call	_assert_failed
      008E61                        468 00107$:
                                    469 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 258: I2C->CR2 |= I2C_CR2_START;
      008E61 C6 52 11         [ 1]  470 	ld	a, 0x5211
                                    471 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 255: if (NewState != DISABLE)
      008E64 0D 01            [ 1]  472 	tnz	(0x01, sp)
      008E66 27 07            [ 1]  473 	jreq	00102$
                                    474 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 258: I2C->CR2 |= I2C_CR2_START;
      008E68 AA 01            [ 1]  475 	or	a, #0x01
      008E6A C7 52 11         [ 1]  476 	ld	0x5211, a
      008E6D 20 05            [ 2]  477 	jra	00104$
      008E6F                        478 00102$:
                                    479 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 263: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
      008E6F A4 FE            [ 1]  480 	and	a, #0xfe
      008E71 C7 52 11         [ 1]  481 	ld	0x5211, a
      008E74                        482 00104$:
                                    483 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 265: }
      008E74 84               [ 1]  484 	pop	a
      008E75 81               [ 4]  485 	ret
                                    486 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 273: void I2C_GenerateSTOP(FunctionalState NewState)
                                    487 ;	-----------------------------------------
                                    488 ;	 function I2C_GenerateSTOP
                                    489 ;	-----------------------------------------
      008E76                        490 _I2C_GenerateSTOP:
      008E76 88               [ 1]  491 	push	a
                                    492 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 276: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008E77 6B 01            [ 1]  493 	ld	(0x01, sp), a
      008E79 27 11            [ 1]  494 	jreq	00107$
      008E7B 7B 01            [ 1]  495 	ld	a, (0x01, sp)
      008E7D 4A               [ 1]  496 	dec	a
      008E7E 27 0C            [ 1]  497 	jreq	00107$
      008E80 4B 14            [ 1]  498 	push	#0x14
      008E82 4B 01            [ 1]  499 	push	#0x01
      008E84 5F               [ 1]  500 	clrw	x
      008E85 89               [ 2]  501 	pushw	x
      008E86 AE 81 7A         [ 2]  502 	ldw	x, #(___str_0+0)
      008E89 CD AB 90         [ 4]  503 	call	_assert_failed
      008E8C                        504 00107$:
                                    505 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 281: I2C->CR2 |= I2C_CR2_STOP;
      008E8C C6 52 11         [ 1]  506 	ld	a, 0x5211
                                    507 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 278: if (NewState != DISABLE)
      008E8F 0D 01            [ 1]  508 	tnz	(0x01, sp)
      008E91 27 07            [ 1]  509 	jreq	00102$
                                    510 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 281: I2C->CR2 |= I2C_CR2_STOP;
      008E93 AA 02            [ 1]  511 	or	a, #0x02
      008E95 C7 52 11         [ 1]  512 	ld	0x5211, a
      008E98 20 05            [ 2]  513 	jra	00104$
      008E9A                        514 00102$:
                                    515 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 286: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
      008E9A A4 FD            [ 1]  516 	and	a, #0xfd
      008E9C C7 52 11         [ 1]  517 	ld	0x5211, a
      008E9F                        518 00104$:
                                    519 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 288: }
      008E9F 84               [ 1]  520 	pop	a
      008EA0 81               [ 4]  521 	ret
                                    522 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 296: void I2C_SoftwareResetCmd(FunctionalState NewState)
                                    523 ;	-----------------------------------------
                                    524 ;	 function I2C_SoftwareResetCmd
                                    525 ;	-----------------------------------------
      008EA1                        526 _I2C_SoftwareResetCmd:
      008EA1 88               [ 1]  527 	push	a
                                    528 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 299: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008EA2 6B 01            [ 1]  529 	ld	(0x01, sp), a
      008EA4 27 11            [ 1]  530 	jreq	00107$
      008EA6 7B 01            [ 1]  531 	ld	a, (0x01, sp)
      008EA8 4A               [ 1]  532 	dec	a
      008EA9 27 0C            [ 1]  533 	jreq	00107$
      008EAB 4B 2B            [ 1]  534 	push	#0x2b
      008EAD 4B 01            [ 1]  535 	push	#0x01
      008EAF 5F               [ 1]  536 	clrw	x
      008EB0 89               [ 2]  537 	pushw	x
      008EB1 AE 81 7A         [ 2]  538 	ldw	x, #(___str_0+0)
      008EB4 CD AB 90         [ 4]  539 	call	_assert_failed
      008EB7                        540 00107$:
                                    541 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 304: I2C->CR2 |= I2C_CR2_SWRST;
      008EB7 C6 52 11         [ 1]  542 	ld	a, 0x5211
                                    543 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 301: if (NewState != DISABLE)
      008EBA 0D 01            [ 1]  544 	tnz	(0x01, sp)
      008EBC 27 07            [ 1]  545 	jreq	00102$
                                    546 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 304: I2C->CR2 |= I2C_CR2_SWRST;
      008EBE AA 80            [ 1]  547 	or	a, #0x80
      008EC0 C7 52 11         [ 1]  548 	ld	0x5211, a
      008EC3 20 05            [ 2]  549 	jra	00104$
      008EC5                        550 00102$:
                                    551 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 309: I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
      008EC5 A4 7F            [ 1]  552 	and	a, #0x7f
      008EC7 C7 52 11         [ 1]  553 	ld	0x5211, a
      008ECA                        554 00104$:
                                    555 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 311: }
      008ECA 84               [ 1]  556 	pop	a
      008ECB 81               [ 4]  557 	ret
                                    558 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 320: void I2C_StretchClockCmd(FunctionalState NewState)
                                    559 ;	-----------------------------------------
                                    560 ;	 function I2C_StretchClockCmd
                                    561 ;	-----------------------------------------
      008ECC                        562 _I2C_StretchClockCmd:
      008ECC 88               [ 1]  563 	push	a
                                    564 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 323: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008ECD 6B 01            [ 1]  565 	ld	(0x01, sp), a
      008ECF 27 11            [ 1]  566 	jreq	00107$
      008ED1 7B 01            [ 1]  567 	ld	a, (0x01, sp)
      008ED3 4A               [ 1]  568 	dec	a
      008ED4 27 0C            [ 1]  569 	jreq	00107$
      008ED6 4B 43            [ 1]  570 	push	#0x43
      008ED8 4B 01            [ 1]  571 	push	#0x01
      008EDA 5F               [ 1]  572 	clrw	x
      008EDB 89               [ 2]  573 	pushw	x
      008EDC AE 81 7A         [ 2]  574 	ldw	x, #(___str_0+0)
      008EDF CD AB 90         [ 4]  575 	call	_assert_failed
      008EE2                        576 00107$:
                                    577 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 328: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
      008EE2 C6 52 10         [ 1]  578 	ld	a, 0x5210
                                    579 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 325: if (NewState != DISABLE)
      008EE5 0D 01            [ 1]  580 	tnz	(0x01, sp)
      008EE7 27 07            [ 1]  581 	jreq	00102$
                                    582 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 328: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
      008EE9 A4 7F            [ 1]  583 	and	a, #0x7f
      008EEB C7 52 10         [ 1]  584 	ld	0x5210, a
      008EEE 20 05            [ 2]  585 	jra	00104$
      008EF0                        586 00102$:
                                    587 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 334: I2C->CR1 |= I2C_CR1_NOSTRETCH;
      008EF0 AA 80            [ 1]  588 	or	a, #0x80
      008EF2 C7 52 10         [ 1]  589 	ld	0x5210, a
      008EF5                        590 00104$:
                                    591 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 336: }
      008EF5 84               [ 1]  592 	pop	a
      008EF6 81               [ 4]  593 	ret
                                    594 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 345: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
                                    595 ;	-----------------------------------------
                                    596 ;	 function I2C_AcknowledgeConfig
                                    597 ;	-----------------------------------------
      008EF7                        598 _I2C_AcknowledgeConfig:
                                    599 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 348: assert_param(IS_I2C_ACK_OK(Ack));
      008EF7 97               [ 1]  600 	ld	xl, a
      008EF8 4A               [ 1]  601 	dec	a
      008EF9 26 05            [ 1]  602 	jrne	00143$
      008EFB A6 01            [ 1]  603 	ld	a, #0x01
      008EFD 95               [ 1]  604 	ld	xh, a
      008EFE 20 02            [ 2]  605 	jra	00144$
      008F00                        606 00143$:
      008F00 4F               [ 1]  607 	clr	a
      008F01 95               [ 1]  608 	ld	xh, a
      008F02                        609 00144$:
      008F02 9F               [ 1]  610 	ld	a, xl
      008F03 4D               [ 1]  611 	tnz	a
      008F04 27 19            [ 1]  612 	jreq	00110$
      008F06 9E               [ 1]  613 	ld	a, xh
      008F07 4D               [ 1]  614 	tnz	a
      008F08 26 15            [ 1]  615 	jrne	00110$
      008F0A 9F               [ 1]  616 	ld	a, xl
      008F0B A1 02            [ 1]  617 	cp	a, #0x02
      008F0D 27 10            [ 1]  618 	jreq	00110$
      008F0F 89               [ 2]  619 	pushw	x
      008F10 4B 5C            [ 1]  620 	push	#0x5c
      008F12 4B 01            [ 1]  621 	push	#0x01
      008F14 4B 00            [ 1]  622 	push	#0x00
      008F16 4B 00            [ 1]  623 	push	#0x00
      008F18 AE 81 7A         [ 2]  624 	ldw	x, #(___str_0+0)
      008F1B CD AB 90         [ 4]  625 	call	_assert_failed
      008F1E 85               [ 2]  626 	popw	x
      008F1F                        627 00110$:
                                    628 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008F1F C6 52 11         [ 1]  629 	ld	a, 0x5211
                                    630 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 350: if (Ack == I2C_ACK_NONE)
      008F22 41               [ 1]  631 	exg	a, xl
      008F23 4D               [ 1]  632 	tnz	a
      008F24 41               [ 1]  633 	exg	a, xl
      008F25 26 06            [ 1]  634 	jrne	00105$
                                    635 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008F27 A4 FB            [ 1]  636 	and	a, #0xfb
      008F29 C7 52 11         [ 1]  637 	ld	0x5211, a
      008F2C 81               [ 4]  638 	ret
      008F2D                        639 00105$:
                                    640 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 358: I2C->CR2 |= I2C_CR2_ACK;
      008F2D AA 04            [ 1]  641 	or	a, #0x04
      008F2F C7 52 11         [ 1]  642 	ld	0x5211, a
                                    643 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008F32 C6 52 11         [ 1]  644 	ld	a, 0x5211
                                    645 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 360: if (Ack == I2C_ACK_CURR)
      008F35 88               [ 1]  646 	push	a
      008F36 9E               [ 1]  647 	ld	a, xh
      008F37 4D               [ 1]  648 	tnz	a
      008F38 84               [ 1]  649 	pop	a
      008F39 27 06            [ 1]  650 	jreq	00102$
                                    651 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 363: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
      008F3B A4 F7            [ 1]  652 	and	a, #0xf7
      008F3D C7 52 11         [ 1]  653 	ld	0x5211, a
      008F40 81               [ 4]  654 	ret
      008F41                        655 00102$:
                                    656 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 368: I2C->CR2 |= I2C_CR2_POS;
      008F41 AA 08            [ 1]  657 	or	a, #0x08
      008F43 C7 52 11         [ 1]  658 	ld	0x5211, a
                                    659 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 371: }
      008F46 81               [ 4]  660 	ret
                                    661 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 381: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
                                    662 ;	-----------------------------------------
                                    663 ;	 function I2C_ITConfig
                                    664 ;	-----------------------------------------
      008F47                        665 _I2C_ITConfig:
      008F47 88               [ 1]  666 	push	a
                                    667 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 384: assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
      008F48 A1 01            [ 1]  668 	cp	a, #0x01
      008F4A 27 26            [ 1]  669 	jreq	00107$
      008F4C A1 02            [ 1]  670 	cp	a, #0x02
      008F4E 27 22            [ 1]  671 	jreq	00107$
      008F50 A1 04            [ 1]  672 	cp	a, #0x04
      008F52 27 1E            [ 1]  673 	jreq	00107$
      008F54 A1 03            [ 1]  674 	cp	a, #0x03
      008F56 27 1A            [ 1]  675 	jreq	00107$
      008F58 A1 05            [ 1]  676 	cp	a, #0x05
      008F5A 27 16            [ 1]  677 	jreq	00107$
      008F5C A1 06            [ 1]  678 	cp	a, #0x06
      008F5E 27 12            [ 1]  679 	jreq	00107$
      008F60 A1 07            [ 1]  680 	cp	a, #0x07
      008F62 27 0E            [ 1]  681 	jreq	00107$
      008F64 88               [ 1]  682 	push	a
      008F65 4B 80            [ 1]  683 	push	#0x80
      008F67 4B 01            [ 1]  684 	push	#0x01
      008F69 5F               [ 1]  685 	clrw	x
      008F6A 89               [ 2]  686 	pushw	x
      008F6B AE 81 7A         [ 2]  687 	ldw	x, #(___str_0+0)
      008F6E CD AB 90         [ 4]  688 	call	_assert_failed
      008F71 84               [ 1]  689 	pop	a
      008F72                        690 00107$:
                                    691 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 385: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008F72 0D 04            [ 1]  692 	tnz	(0x04, sp)
      008F74 27 15            [ 1]  693 	jreq	00127$
      008F76 88               [ 1]  694 	push	a
      008F77 7B 05            [ 1]  695 	ld	a, (0x05, sp)
      008F79 4A               [ 1]  696 	dec	a
      008F7A 84               [ 1]  697 	pop	a
      008F7B 27 0E            [ 1]  698 	jreq	00127$
      008F7D 88               [ 1]  699 	push	a
      008F7E 4B 81            [ 1]  700 	push	#0x81
      008F80 4B 01            [ 1]  701 	push	#0x01
      008F82 5F               [ 1]  702 	clrw	x
      008F83 89               [ 2]  703 	pushw	x
      008F84 AE 81 7A         [ 2]  704 	ldw	x, #(___str_0+0)
      008F87 CD AB 90         [ 4]  705 	call	_assert_failed
      008F8A 84               [ 1]  706 	pop	a
      008F8B                        707 00127$:
                                    708 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 390: I2C->ITR |= (uint8_t)I2C_IT;
      008F8B AE 52 1A         [ 2]  709 	ldw	x, #0x521a
      008F8E 88               [ 1]  710 	push	a
      008F8F F6               [ 1]  711 	ld	a, (x)
      008F90 6B 02            [ 1]  712 	ld	(0x02, sp), a
      008F92 84               [ 1]  713 	pop	a
                                    714 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 387: if (NewState != DISABLE)
      008F93 0D 04            [ 1]  715 	tnz	(0x04, sp)
      008F95 27 07            [ 1]  716 	jreq	00102$
                                    717 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 390: I2C->ITR |= (uint8_t)I2C_IT;
      008F97 1A 01            [ 1]  718 	or	a, (0x01, sp)
      008F99 C7 52 1A         [ 1]  719 	ld	0x521a, a
      008F9C 20 06            [ 2]  720 	jra	00104$
      008F9E                        721 00102$:
                                    722 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 395: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
      008F9E 43               [ 1]  723 	cpl	a
      008F9F 14 01            [ 1]  724 	and	a, (0x01, sp)
      008FA1 C7 52 1A         [ 1]  725 	ld	0x521a, a
      008FA4                        726 00104$:
                                    727 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 397: }
      008FA4 84               [ 1]  728 	pop	a
      008FA5 85               [ 2]  729 	popw	x
      008FA6 84               [ 1]  730 	pop	a
      008FA7 FC               [ 2]  731 	jp	(x)
                                    732 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 405: void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
                                    733 ;	-----------------------------------------
                                    734 ;	 function I2C_FastModeDutyCycleConfig
                                    735 ;	-----------------------------------------
      008FA8                        736 _I2C_FastModeDutyCycleConfig:
      008FA8 88               [ 1]  737 	push	a
                                    738 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 408: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
      008FA9 A1 40            [ 1]  739 	cp	a, #0x40
      008FAB 26 07            [ 1]  740 	jrne	00127$
      008FAD 88               [ 1]  741 	push	a
      008FAE A6 01            [ 1]  742 	ld	a, #0x01
      008FB0 6B 02            [ 1]  743 	ld	(0x02, sp), a
      008FB2 84               [ 1]  744 	pop	a
      008FB3 C5                     745 	.byte 0xc5
      008FB4                        746 00127$:
      008FB4 0F 01            [ 1]  747 	clr	(0x01, sp)
      008FB6                        748 00128$:
      008FB6 4D               [ 1]  749 	tnz	a
      008FB7 27 10            [ 1]  750 	jreq	00107$
      008FB9 0D 01            [ 1]  751 	tnz	(0x01, sp)
      008FBB 26 0C            [ 1]  752 	jrne	00107$
      008FBD 4B 98            [ 1]  753 	push	#0x98
      008FBF 4B 01            [ 1]  754 	push	#0x01
      008FC1 5F               [ 1]  755 	clrw	x
      008FC2 89               [ 2]  756 	pushw	x
      008FC3 AE 81 7A         [ 2]  757 	ldw	x, #(___str_0+0)
      008FC6 CD AB 90         [ 4]  758 	call	_assert_failed
      008FC9                        759 00107$:
                                    760 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 413: I2C->CCRH |= I2C_CCRH_DUTY;
      008FC9 C6 52 1C         [ 1]  761 	ld	a, 0x521c
      008FCC 97               [ 1]  762 	ld	xl, a
                                    763 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 410: if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
      008FCD 7B 01            [ 1]  764 	ld	a, (0x01, sp)
      008FCF 27 08            [ 1]  765 	jreq	00102$
                                    766 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 413: I2C->CCRH |= I2C_CCRH_DUTY;
      008FD1 9F               [ 1]  767 	ld	a, xl
      008FD2 AA 40            [ 1]  768 	or	a, #0x40
      008FD4 C7 52 1C         [ 1]  769 	ld	0x521c, a
      008FD7 20 06            [ 2]  770 	jra	00104$
      008FD9                        771 00102$:
                                    772 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 418: I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
      008FD9 9F               [ 1]  773 	ld	a, xl
      008FDA A4 BF            [ 1]  774 	and	a, #0xbf
      008FDC C7 52 1C         [ 1]  775 	ld	0x521c, a
      008FDF                        776 00104$:
                                    777 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 420: }
      008FDF 84               [ 1]  778 	pop	a
      008FE0 81               [ 4]  779 	ret
                                    780 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 427: uint8_t I2C_ReceiveData(void)
                                    781 ;	-----------------------------------------
                                    782 ;	 function I2C_ReceiveData
                                    783 ;	-----------------------------------------
      008FE1                        784 _I2C_ReceiveData:
                                    785 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 430: return ((uint8_t)I2C->DR);
      008FE1 C6 52 16         [ 1]  786 	ld	a, 0x5216
                                    787 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 431: }
      008FE4 81               [ 4]  788 	ret
                                    789 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 440: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
                                    790 ;	-----------------------------------------
                                    791 ;	 function I2C_Send7bitAddress
                                    792 ;	-----------------------------------------
      008FE5                        793 _I2C_Send7bitAddress:
      008FE5 88               [ 1]  794 	push	a
                                    795 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 443: assert_param(IS_I2C_ADDRESS_OK(Address));
      008FE6 6B 01            [ 1]  796 	ld	(0x01, sp), a
      008FE8 44               [ 1]  797 	srl	a
      008FE9 24 0C            [ 1]  798 	jrnc	00104$
      008FEB 4B BB            [ 1]  799 	push	#0xbb
      008FED 4B 01            [ 1]  800 	push	#0x01
      008FEF 5F               [ 1]  801 	clrw	x
      008FF0 89               [ 2]  802 	pushw	x
      008FF1 AE 81 7A         [ 2]  803 	ldw	x, #(___str_0+0)
      008FF4 CD AB 90         [ 4]  804 	call	_assert_failed
      008FF7                        805 00104$:
                                    806 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 444: assert_param(IS_I2C_DIRECTION_OK(Direction));
      008FF7 0D 04            [ 1]  807 	tnz	(0x04, sp)
      008FF9 27 11            [ 1]  808 	jreq	00106$
      008FFB 7B 04            [ 1]  809 	ld	a, (0x04, sp)
      008FFD 4A               [ 1]  810 	dec	a
      008FFE 27 0C            [ 1]  811 	jreq	00106$
      009000 4B BC            [ 1]  812 	push	#0xbc
      009002 4B 01            [ 1]  813 	push	#0x01
      009004 5F               [ 1]  814 	clrw	x
      009005 89               [ 2]  815 	pushw	x
      009006 AE 81 7A         [ 2]  816 	ldw	x, #(___str_0+0)
      009009 CD AB 90         [ 4]  817 	call	_assert_failed
      00900C                        818 00106$:
                                    819 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 447: Address &= (uint8_t)0xFE;
      00900C 7B 01            [ 1]  820 	ld	a, (0x01, sp)
      00900E A4 FE            [ 1]  821 	and	a, #0xfe
                                    822 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 450: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
      009010 1A 04            [ 1]  823 	or	a, (0x04, sp)
      009012 C7 52 16         [ 1]  824 	ld	0x5216, a
                                    825 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 451: }
      009015 84               [ 1]  826 	pop	a
      009016 85               [ 2]  827 	popw	x
      009017 84               [ 1]  828 	pop	a
      009018 FC               [ 2]  829 	jp	(x)
                                    830 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 458: void I2C_SendData(uint8_t Data)
                                    831 ;	-----------------------------------------
                                    832 ;	 function I2C_SendData
                                    833 ;	-----------------------------------------
      009019                        834 _I2C_SendData:
                                    835 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 461: I2C->DR = Data;
      009019 C7 52 16         [ 1]  836 	ld	0x5216, a
                                    837 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 462: }
      00901C 81               [ 4]  838 	ret
                                    839 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 578: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
                                    840 ;	-----------------------------------------
                                    841 ;	 function I2C_CheckEvent
                                    842 ;	-----------------------------------------
      00901D                        843 _I2C_CheckEvent:
      00901D 52 06            [ 2]  844 	sub	sp, #6
                                    845 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 580: __IO uint16_t lastevent = 0x00;
      00901F 0F 02            [ 1]  846 	clr	(0x02, sp)
      009021 0F 01            [ 1]  847 	clr	(0x01, sp)
                                    848 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 586: assert_param(IS_I2C_EVENT_OK(I2C_Event));
      009023 A3 00 04         [ 2]  849 	cpw	x, #0x0004
      009026 26 03            [ 1]  850 	jrne	00247$
      009028 A6 01            [ 1]  851 	ld	a, #0x01
      00902A 21                     852 	.byte 0x21
      00902B                        853 00247$:
      00902B 4F               [ 1]  854 	clr	a
      00902C                        855 00248$:
      00902C A3 06 82         [ 2]  856 	cpw	x, #0x0682
      00902F 27 5B            [ 1]  857 	jreq	00110$
      009031 A3 02 02         [ 2]  858 	cpw	x, #0x0202
      009034 27 56            [ 1]  859 	jreq	00110$
      009036 A3 12 00         [ 2]  860 	cpw	x, #0x1200
      009039 27 51            [ 1]  861 	jreq	00110$
      00903B A3 02 40         [ 2]  862 	cpw	x, #0x0240
      00903E 27 4C            [ 1]  863 	jreq	00110$
      009040 A3 03 50         [ 2]  864 	cpw	x, #0x0350
      009043 27 47            [ 1]  865 	jreq	00110$
      009045 A3 06 84         [ 2]  866 	cpw	x, #0x0684
      009048 27 42            [ 1]  867 	jreq	00110$
      00904A A3 07 94         [ 2]  868 	cpw	x, #0x0794
      00904D 27 3D            [ 1]  869 	jreq	00110$
      00904F 4D               [ 1]  870 	tnz	a
      009050 26 3A            [ 1]  871 	jrne	00110$
      009052 A3 00 10         [ 2]  872 	cpw	x, #0x0010
      009055 27 35            [ 1]  873 	jreq	00110$
      009057 A3 03 01         [ 2]  874 	cpw	x, #0x0301
      00905A 27 30            [ 1]  875 	jreq	00110$
      00905C A3 07 82         [ 2]  876 	cpw	x, #0x0782
      00905F 27 2B            [ 1]  877 	jreq	00110$
      009061 A3 03 02         [ 2]  878 	cpw	x, #0x0302
      009064 27 26            [ 1]  879 	jreq	00110$
      009066 A3 03 40         [ 2]  880 	cpw	x, #0x0340
      009069 27 21            [ 1]  881 	jreq	00110$
      00906B A3 07 84         [ 2]  882 	cpw	x, #0x0784
      00906E 27 1C            [ 1]  883 	jreq	00110$
      009070 A3 07 80         [ 2]  884 	cpw	x, #0x0780
      009073 27 17            [ 1]  885 	jreq	00110$
      009075 A3 03 08         [ 2]  886 	cpw	x, #0x0308
      009078 27 12            [ 1]  887 	jreq	00110$
      00907A 88               [ 1]  888 	push	a
      00907B 89               [ 2]  889 	pushw	x
      00907C 4B 4A            [ 1]  890 	push	#0x4a
      00907E 4B 02            [ 1]  891 	push	#0x02
      009080 4B 00            [ 1]  892 	push	#0x00
      009082 4B 00            [ 1]  893 	push	#0x00
      009084 AE 81 7A         [ 2]  894 	ldw	x, #(___str_0+0)
      009087 CD AB 90         [ 4]  895 	call	_assert_failed
      00908A 85               [ 2]  896 	popw	x
      00908B 84               [ 1]  897 	pop	a
      00908C                        898 00110$:
                                    899 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 588: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
      00908C 4D               [ 1]  900 	tnz	a
      00908D 27 0D            [ 1]  901 	jreq	00102$
                                    902 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 590: lastevent = I2C->SR2 & I2C_SR2_AF;
      00908F C6 52 18         [ 1]  903 	ld	a, 0x5218
      009092 A4 04            [ 1]  904 	and	a, #0x04
      009094 90 5F            [ 1]  905 	clrw	y
      009096 90 97            [ 1]  906 	ld	yl, a
      009098 17 01            [ 2]  907 	ldw	(0x01, sp), y
      00909A 20 1A            [ 2]  908 	jra	00103$
      00909C                        909 00102$:
                                    910 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 594: flag1 = I2C->SR1;
      00909C C6 52 17         [ 1]  911 	ld	a, 0x5217
      00909F 6B 06            [ 1]  912 	ld	(0x06, sp), a
                                    913 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 595: flag2 = I2C->SR3;
      0090A1 C6 52 19         [ 1]  914 	ld	a, 0x5219
                                    915 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 596: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
      0090A4 90 95            [ 1]  916 	ld	yh, a
      0090A6 0F 04            [ 1]  917 	clr	(0x04, sp)
      0090A8 7B 06            [ 1]  918 	ld	a, (0x06, sp)
      0090AA 0F 05            [ 1]  919 	clr	(0x05, sp)
      0090AC 1A 04            [ 1]  920 	or	a, (0x04, sp)
      0090AE 90 02            [ 1]  921 	rlwa	y
      0090B0 1A 05            [ 1]  922 	or	a, (0x05, sp)
      0090B2 90 95            [ 1]  923 	ld	yh, a
      0090B4 17 01            [ 2]  924 	ldw	(0x01, sp), y
      0090B6                        925 00103$:
                                    926 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 599: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
      0090B6 9F               [ 1]  927 	ld	a, xl
      0090B7 14 02            [ 1]  928 	and	a, (0x02, sp)
      0090B9 6B 06            [ 1]  929 	ld	(0x06, sp), a
      0090BB 9E               [ 1]  930 	ld	a, xh
      0090BC 14 01            [ 1]  931 	and	a, (0x01, sp)
      0090BE 6B 05            [ 1]  932 	ld	(0x05, sp), a
      0090C0 13 05            [ 2]  933 	cpw	x, (0x05, sp)
      0090C2 26 03            [ 1]  934 	jrne	00105$
                                    935 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 602: status = SUCCESS;
      0090C4 A6 01            [ 1]  936 	ld	a, #0x01
                                    937 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 607: status = ERROR;
      0090C6 21                     938 	.byte 0x21
      0090C7                        939 00105$:
      0090C7 4F               [ 1]  940 	clr	a
      0090C8                        941 00106$:
                                    942 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 611: return status;
                                    943 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 612: }
      0090C8 5B 06            [ 2]  944 	addw	sp, #6
      0090CA 81               [ 4]  945 	ret
                                    946 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 628: I2C_Event_TypeDef I2C_GetLastEvent(void)
                                    947 ;	-----------------------------------------
                                    948 ;	 function I2C_GetLastEvent
                                    949 ;	-----------------------------------------
      0090CB                        950 _I2C_GetLastEvent:
      0090CB 52 04            [ 2]  951 	sub	sp, #4
                                    952 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 630: __IO uint16_t lastevent = 0;
      0090CD 5F               [ 1]  953 	clrw	x
      0090CE 1F 01            [ 2]  954 	ldw	(0x01, sp), x
                                    955 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 634: if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
      0090D0 72 05 52 18 07   [ 2]  956 	btjf	0x5218, #2, 00102$
                                    957 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 636: lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
      0090D5 AE 00 04         [ 2]  958 	ldw	x, #0x0004
      0090D8 1F 01            [ 2]  959 	ldw	(0x01, sp), x
      0090DA 20 13            [ 2]  960 	jra	00103$
      0090DC                        961 00102$:
                                    962 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 641: flag1 = I2C->SR1;
      0090DC C6 52 17         [ 1]  963 	ld	a, 0x5217
      0090DF 6B 04            [ 1]  964 	ld	(0x04, sp), a
      0090E1 0F 03            [ 1]  965 	clr	(0x03, sp)
                                    966 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 642: flag2 = I2C->SR3;
      0090E3 C6 52 19         [ 1]  967 	ld	a, 0x5219
                                    968 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 645: lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
      0090E6 95               [ 1]  969 	ld	xh, a
      0090E7 7B 04            [ 1]  970 	ld	a, (0x04, sp)
      0090E9 02               [ 1]  971 	rlwa	x
      0090EA 1A 03            [ 1]  972 	or	a, (0x03, sp)
      0090EC 95               [ 1]  973 	ld	xh, a
      0090ED 1F 01            [ 2]  974 	ldw	(0x01, sp), x
      0090EF                        975 00103$:
                                    976 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 648: return (I2C_Event_TypeDef)lastevent;
      0090EF 1E 01            [ 2]  977 	ldw	x, (0x01, sp)
                                    978 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 649: }
      0090F1 5B 04            [ 2]  979 	addw	sp, #4
      0090F3 81               [ 4]  980 	ret
                                    981 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 679: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
                                    982 ;	-----------------------------------------
                                    983 ;	 function I2C_GetFlagStatus
                                    984 ;	-----------------------------------------
      0090F4                        985 _I2C_GetFlagStatus:
      0090F4 52 03            [ 2]  986 	sub	sp, #3
      0090F6 1F 02            [ 2]  987 	ldw	(0x02, sp), x
                                    988 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 681: uint8_t tempreg = 0;
      0090F8 0F 01            [ 1]  989 	clr	(0x01, sp)
                                    990 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 686: assert_param(IS_I2C_FLAG_OK(I2C_Flag));
      0090FA 1E 02            [ 2]  991 	ldw	x, (0x02, sp)
      0090FC A3 01 80         [ 2]  992 	cpw	x, #0x0180
      0090FF 27 5B            [ 1]  993 	jreq	00112$
      009101 A3 01 40         [ 2]  994 	cpw	x, #0x0140
      009104 27 56            [ 1]  995 	jreq	00112$
      009106 A3 01 10         [ 2]  996 	cpw	x, #0x0110
      009109 27 51            [ 1]  997 	jreq	00112$
      00910B A3 01 08         [ 2]  998 	cpw	x, #0x0108
      00910E 27 4C            [ 1]  999 	jreq	00112$
      009110 A3 01 04         [ 2] 1000 	cpw	x, #0x0104
      009113 27 47            [ 1] 1001 	jreq	00112$
      009115 A3 01 02         [ 2] 1002 	cpw	x, #0x0102
      009118 27 42            [ 1] 1003 	jreq	00112$
      00911A A3 01 01         [ 2] 1004 	cpw	x, #0x0101
      00911D 27 3D            [ 1] 1005 	jreq	00112$
      00911F A3 02 20         [ 2] 1006 	cpw	x, #0x0220
      009122 27 38            [ 1] 1007 	jreq	00112$
      009124 A3 02 08         [ 2] 1008 	cpw	x, #0x0208
      009127 27 33            [ 1] 1009 	jreq	00112$
      009129 A3 02 04         [ 2] 1010 	cpw	x, #0x0204
      00912C 27 2E            [ 1] 1011 	jreq	00112$
      00912E A3 02 02         [ 2] 1012 	cpw	x, #0x0202
      009131 27 29            [ 1] 1013 	jreq	00112$
      009133 A3 02 01         [ 2] 1014 	cpw	x, #0x0201
      009136 27 24            [ 1] 1015 	jreq	00112$
      009138 A3 03 10         [ 2] 1016 	cpw	x, #0x0310
      00913B 27 1F            [ 1] 1017 	jreq	00112$
      00913D A3 03 04         [ 2] 1018 	cpw	x, #0x0304
      009140 27 1A            [ 1] 1019 	jreq	00112$
      009142 A3 03 02         [ 2] 1020 	cpw	x, #0x0302
      009145 27 15            [ 1] 1021 	jreq	00112$
      009147 A3 03 01         [ 2] 1022 	cpw	x, #0x0301
      00914A 27 10            [ 1] 1023 	jreq	00112$
      00914C 89               [ 2] 1024 	pushw	x
      00914D 4B AE            [ 1] 1025 	push	#0xae
      00914F 4B 02            [ 1] 1026 	push	#0x02
      009151 4B 00            [ 1] 1027 	push	#0x00
      009153 4B 00            [ 1] 1028 	push	#0x00
      009155 AE 81 7A         [ 2] 1029 	ldw	x, #(___str_0+0)
      009158 CD AB 90         [ 4] 1030 	call	_assert_failed
      00915B 85               [ 2] 1031 	popw	x
      00915C                       1032 00112$:
                                   1033 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 689: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
      00915C 9E               [ 1] 1034 	ld	a, xh
                                   1035 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 691: switch (regindex)
      00915D A1 01            [ 1] 1036 	cp	a, #0x01
      00915F 27 0A            [ 1] 1037 	jreq	00101$
      009161 A1 02            [ 1] 1038 	cp	a, #0x02
      009163 27 0D            [ 1] 1039 	jreq	00102$
      009165 A1 03            [ 1] 1040 	cp	a, #0x03
      009167 27 10            [ 1] 1041 	jreq	00103$
      009169 20 13            [ 2] 1042 	jra	00105$
                                   1043 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 694: case 0x01:
      00916B                       1044 00101$:
                                   1045 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 695: tempreg = (uint8_t)I2C->SR1;
      00916B C6 52 17         [ 1] 1046 	ld	a, 0x5217
      00916E 6B 01            [ 1] 1047 	ld	(0x01, sp), a
                                   1048 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 696: break;
      009170 20 0C            [ 2] 1049 	jra	00105$
                                   1050 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 699: case 0x02:
      009172                       1051 00102$:
                                   1052 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 700: tempreg = (uint8_t)I2C->SR2;
      009172 C6 52 18         [ 1] 1053 	ld	a, 0x5218
      009175 6B 01            [ 1] 1054 	ld	(0x01, sp), a
                                   1055 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 701: break;
      009177 20 05            [ 2] 1056 	jra	00105$
                                   1057 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 704: case 0x03:
      009179                       1058 00103$:
                                   1059 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 705: tempreg = (uint8_t)I2C->SR3;
      009179 C6 52 19         [ 1] 1060 	ld	a, 0x5219
      00917C 6B 01            [ 1] 1061 	ld	(0x01, sp), a
                                   1062 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 710: }
      00917E                       1063 00105$:
                                   1064 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 713: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
      00917E 7B 03            [ 1] 1065 	ld	a, (0x03, sp)
      009180 14 01            [ 1] 1066 	and	a, (0x01, sp)
      009182 27 03            [ 1] 1067 	jreq	00107$
                                   1068 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 716: bitstatus = SET;
      009184 A6 01            [ 1] 1069 	ld	a, #0x01
                                   1070 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 721: bitstatus = RESET;
      009186 21                    1071 	.byte 0x21
      009187                       1072 00107$:
      009187 4F               [ 1] 1073 	clr	a
      009188                       1074 00108$:
                                   1075 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 724: return bitstatus;
                                   1076 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 725: }
      009188 5B 03            [ 2] 1077 	addw	sp, #3
      00918A 81               [ 4] 1078 	ret
                                   1079 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 759: void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
                                   1080 ;	-----------------------------------------
                                   1081 ;	 function I2C_ClearFlag
                                   1082 ;	-----------------------------------------
      00918B                       1083 _I2C_ClearFlag:
                                   1084 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 763: assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
      00918B 9E               [ 1] 1085 	ld	a, xh
      00918C A5 FD            [ 1] 1086 	bcp	a, #0xfd
      00918E 26 03            [ 1] 1087 	jrne	00103$
      009190 5D               [ 2] 1088 	tnzw	x
      009191 26 10            [ 1] 1089 	jrne	00104$
      009193                       1090 00103$:
      009193 89               [ 2] 1091 	pushw	x
      009194 4B FB            [ 1] 1092 	push	#0xfb
      009196 4B 02            [ 1] 1093 	push	#0x02
      009198 4B 00            [ 1] 1094 	push	#0x00
      00919A 4B 00            [ 1] 1095 	push	#0x00
      00919C AE 81 7A         [ 2] 1096 	ldw	x, #(___str_0+0)
      00919F CD AB 90         [ 4] 1097 	call	_assert_failed
      0091A2 85               [ 2] 1098 	popw	x
      0091A3                       1099 00104$:
                                   1100 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 766: flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
      0091A3 4F               [ 1] 1101 	clr	a
      0091A4 95               [ 1] 1102 	ld	xh, a
                                   1103 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 768: I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
      0091A5 53               [ 2] 1104 	cplw	x
      0091A6 9F               [ 1] 1105 	ld	a, xl
      0091A7 C7 52 18         [ 1] 1106 	ld	0x5218, a
                                   1107 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 769: }
      0091AA 81               [ 4] 1108 	ret
                                   1109 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 791: ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
                                   1110 ;	-----------------------------------------
                                   1111 ;	 function I2C_GetITStatus
                                   1112 ;	-----------------------------------------
      0091AB                       1113 _I2C_GetITStatus:
      0091AB 52 06            [ 2] 1114 	sub	sp, #6
      0091AD 1F 05            [ 2] 1115 	ldw	(0x05, sp), x
                                   1116 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 794: __IO uint8_t enablestatus = 0;
      0091AF 0F 03            [ 1] 1117 	clr	(0x03, sp)
                                   1118 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 798: assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
      0091B1 1E 05            [ 2] 1119 	ldw	x, (0x05, sp)
      0091B3 A3 16 80         [ 2] 1120 	cpw	x, #0x1680
      0091B6 27 47            [ 1] 1121 	jreq	00115$
      0091B8 A3 16 40         [ 2] 1122 	cpw	x, #0x1640
      0091BB 27 42            [ 1] 1123 	jreq	00115$
      0091BD A3 12 10         [ 2] 1124 	cpw	x, #0x1210
      0091C0 27 3D            [ 1] 1125 	jreq	00115$
      0091C2 A3 12 08         [ 2] 1126 	cpw	x, #0x1208
      0091C5 27 38            [ 1] 1127 	jreq	00115$
      0091C7 A3 12 04         [ 2] 1128 	cpw	x, #0x1204
      0091CA 27 33            [ 1] 1129 	jreq	00115$
      0091CC A3 12 02         [ 2] 1130 	cpw	x, #0x1202
      0091CF 27 2E            [ 1] 1131 	jreq	00115$
      0091D1 A3 12 01         [ 2] 1132 	cpw	x, #0x1201
      0091D4 27 29            [ 1] 1133 	jreq	00115$
      0091D6 A3 22 20         [ 2] 1134 	cpw	x, #0x2220
      0091D9 27 24            [ 1] 1135 	jreq	00115$
      0091DB A3 21 08         [ 2] 1136 	cpw	x, #0x2108
      0091DE 27 1F            [ 1] 1137 	jreq	00115$
      0091E0 A3 21 04         [ 2] 1138 	cpw	x, #0x2104
      0091E3 27 1A            [ 1] 1139 	jreq	00115$
      0091E5 A3 21 02         [ 2] 1140 	cpw	x, #0x2102
      0091E8 27 15            [ 1] 1141 	jreq	00115$
      0091EA A3 21 01         [ 2] 1142 	cpw	x, #0x2101
      0091ED 27 10            [ 1] 1143 	jreq	00115$
      0091EF 89               [ 2] 1144 	pushw	x
      0091F0 4B 1E            [ 1] 1145 	push	#0x1e
      0091F2 4B 03            [ 1] 1146 	push	#0x03
      0091F4 4B 00            [ 1] 1147 	push	#0x00
      0091F6 4B 00            [ 1] 1148 	push	#0x00
      0091F8 AE 81 7A         [ 2] 1149 	ldw	x, #(___str_0+0)
      0091FB CD AB 90         [ 4] 1150 	call	_assert_failed
      0091FE 85               [ 2] 1151 	popw	x
      0091FF                       1152 00115$:
                                   1153 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 800: tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
      0091FF 0F 02            [ 1] 1154 	clr	(0x02, sp)
      009201 9E               [ 1] 1155 	ld	a, xh
      009202 A4 07            [ 1] 1156 	and	a, #0x07
      009204 6B 04            [ 1] 1157 	ld	(0x04, sp), a
                                   1158 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 803: enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
      009206 C6 52 1A         [ 1] 1159 	ld	a, 0x521a
      009209 14 04            [ 1] 1160 	and	a, (0x04, sp)
      00920B 6B 03            [ 1] 1161 	ld	(0x03, sp), a
                                   1162 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 805: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
      00920D 4F               [ 1] 1163 	clr	a
      00920E 02               [ 1] 1164 	rlwa	x
      00920F A4 30            [ 1] 1165 	and	a, #0x30
      009211 95               [ 1] 1166 	ld	xh, a
                                   1167 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 808: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      009212 7B 06            [ 1] 1168 	ld	a, (0x06, sp)
      009214 6B 04            [ 1] 1169 	ld	(0x04, sp), a
                                   1170 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 805: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
      009216 A3 01 00         [ 2] 1171 	cpw	x, #0x0100
      009219 26 12            [ 1] 1172 	jrne	00110$
                                   1173 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 808: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      00921B C6 52 17         [ 1] 1174 	ld	a, 0x5217
      00921E 14 04            [ 1] 1175 	and	a, (0x04, sp)
      009220 27 08            [ 1] 1176 	jreq	00102$
      009222 0D 03            [ 1] 1177 	tnz	(0x03, sp)
      009224 27 04            [ 1] 1178 	jreq	00102$
                                   1179 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 811: bitstatus = SET;
      009226 A6 01            [ 1] 1180 	ld	a, #0x01
      009228 20 12            [ 2] 1181 	jra	00111$
      00922A                       1182 00102$:
                                   1183 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 816: bitstatus = RESET;
      00922A 4F               [ 1] 1184 	clr	a
      00922B 20 0F            [ 2] 1185 	jra	00111$
      00922D                       1186 00110$:
                                   1187 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 822: if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      00922D C6 52 18         [ 1] 1188 	ld	a, 0x5218
      009230 14 04            [ 1] 1189 	and	a, (0x04, sp)
      009232 27 07            [ 1] 1190 	jreq	00106$
      009234 0D 03            [ 1] 1191 	tnz	(0x03, sp)
      009236 27 03            [ 1] 1192 	jreq	00106$
                                   1193 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 825: bitstatus = SET;
      009238 A6 01            [ 1] 1194 	ld	a, #0x01
                                   1195 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 830: bitstatus = RESET;
      00923A 21                    1196 	.byte 0x21
      00923B                       1197 00106$:
      00923B 4F               [ 1] 1198 	clr	a
      00923C                       1199 00111$:
                                   1200 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 834: return  bitstatus;
                                   1201 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 835: }
      00923C 5B 06            [ 2] 1202 	addw	sp, #6
      00923E 81               [ 4] 1203 	ret
                                   1204 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 871: void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
                                   1205 ;	-----------------------------------------
                                   1206 ;	 function I2C_ClearITPendingBit
                                   1207 ;	-----------------------------------------
      00923F                       1208 _I2C_ClearITPendingBit:
                                   1209 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 876: assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
      00923F A3 22 20         [ 2] 1210 	cpw	x, #0x2220
      009242 27 24            [ 1] 1211 	jreq	00104$
      009244 A3 21 08         [ 2] 1212 	cpw	x, #0x2108
      009247 27 1F            [ 1] 1213 	jreq	00104$
      009249 A3 21 04         [ 2] 1214 	cpw	x, #0x2104
      00924C 27 1A            [ 1] 1215 	jreq	00104$
      00924E A3 21 02         [ 2] 1216 	cpw	x, #0x2102
      009251 27 15            [ 1] 1217 	jreq	00104$
      009253 A3 21 01         [ 2] 1218 	cpw	x, #0x2101
      009256 27 10            [ 1] 1219 	jreq	00104$
      009258 89               [ 2] 1220 	pushw	x
      009259 4B 6C            [ 1] 1221 	push	#0x6c
      00925B 4B 03            [ 1] 1222 	push	#0x03
      00925D 4B 00            [ 1] 1223 	push	#0x00
      00925F 4B 00            [ 1] 1224 	push	#0x00
      009261 AE 81 7A         [ 2] 1225 	ldw	x, #(___str_0+0)
      009264 CD AB 90         [ 4] 1226 	call	_assert_failed
      009267 85               [ 2] 1227 	popw	x
      009268                       1228 00104$:
                                   1229 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 879: flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
      009268 4F               [ 1] 1230 	clr	a
      009269 95               [ 1] 1231 	ld	xh, a
                                   1232 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 882: I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
      00926A 53               [ 2] 1233 	cplw	x
      00926B 9F               [ 1] 1234 	ld	a, xl
      00926C C7 52 18         [ 1] 1235 	ld	0x5218, a
                                   1236 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 883: }
      00926F 81               [ 4] 1237 	ret
                                   1238 	.area CODE
                                   1239 	.area CONST
                                   1240 	.area CONST
      00817A                       1241 ___str_0:
      00817A 2F 55 73 65 72 73 2F  1242 	.ascii "/Users/alekseydunaev/.platformio/packages/framework-ststm8sp"
             61 6C 65 6B 73 65 79
             64 75 6E 61 65 76 2F
             2E 70 6C 61 74 66 6F
             72 6D 69 6F 2F 70 61
             63 6B 61 67 65 73 2F
             66 72 61 6D 65 77 6F
             72 6B 2D 73 74 73 74
             6D 38 73 70
      0081B6 6C 2F 4C 69 62 72 61  1243 	.ascii "l/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c"
             72 69 65 73 2F 53 54
             4D 38 53 5F 53 74 64
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 69 32 63 2E
             63
      0081E8 00                    1244 	.db 0x00
                                   1245 	.area CODE
                                   1246 	.area INITIALIZER
                                   1247 	.area CABS (ABS)
