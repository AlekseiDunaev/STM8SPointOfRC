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
      008A80                         73 _I2C_DeInit:
                                     74 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 69: I2C->CR1 = I2C_CR1_RESET_VALUE;
      008A80 35 00 52 10      [ 1]   75 	mov	0x5210+0, #0x00
                                     76 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 70: I2C->CR2 = I2C_CR2_RESET_VALUE;
      008A84 35 00 52 11      [ 1]   77 	mov	0x5211+0, #0x00
                                     78 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 71: I2C->FREQR = I2C_FREQR_RESET_VALUE;
      008A88 35 00 52 12      [ 1]   79 	mov	0x5212+0, #0x00
                                     80 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 72: I2C->OARL = I2C_OARL_RESET_VALUE;
      008A8C 35 00 52 13      [ 1]   81 	mov	0x5213+0, #0x00
                                     82 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 73: I2C->OARH = I2C_OARH_RESET_VALUE;
      008A90 35 00 52 14      [ 1]   83 	mov	0x5214+0, #0x00
                                     84 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 74: I2C->ITR = I2C_ITR_RESET_VALUE;
      008A94 35 00 52 1A      [ 1]   85 	mov	0x521a+0, #0x00
                                     86 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 75: I2C->CCRL = I2C_CCRL_RESET_VALUE;
      008A98 35 00 52 1B      [ 1]   87 	mov	0x521b+0, #0x00
                                     88 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 76: I2C->CCRH = I2C_CCRH_RESET_VALUE;
      008A9C 35 00 52 1C      [ 1]   89 	mov	0x521c+0, #0x00
                                     90 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 77: I2C->TRISER = I2C_TRISER_RESET_VALUE;
      008AA0 35 02 52 1D      [ 1]   91 	mov	0x521d+0, #0x02
                                     92 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 78: }
      008AA4 81               [ 4]   93 	ret
                                     94 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 96: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
                                     95 ;	-----------------------------------------
                                     96 ;	 function I2C_Init
                                     97 ;	-----------------------------------------
      008AA5                         98 _I2C_Init:
      008AA5 52 0B            [ 2]   99 	sub	sp, #11
                                    100 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 102: uint8_t tmpccrh = 0;
      008AA7 0F 09            [ 1]  101 	clr	(0x09, sp)
                                    102 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 105: assert_param(IS_I2C_ACK_OK(Ack));
      008AA9 0D 15            [ 1]  103 	tnz	(0x15, sp)
      008AAB 27 17            [ 1]  104 	jreq	00114$
      008AAD 7B 15            [ 1]  105 	ld	a, (0x15, sp)
      008AAF 4A               [ 1]  106 	dec	a
      008AB0 27 12            [ 1]  107 	jreq	00114$
      008AB2 7B 15            [ 1]  108 	ld	a, (0x15, sp)
      008AB4 A1 02            [ 1]  109 	cp	a, #0x02
      008AB6 27 0C            [ 1]  110 	jreq	00114$
      008AB8 4B 69            [ 1]  111 	push	#0x69
      008ABA 5F               [ 1]  112 	clrw	x
      008ABB 89               [ 2]  113 	pushw	x
      008ABC 4B 00            [ 1]  114 	push	#0x00
      008ABE AE 81 7A         [ 2]  115 	ldw	x, #(___str_0+0)
      008AC1 CD AA 54         [ 4]  116 	call	_assert_failed
      008AC4                        117 00114$:
                                    118 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 106: assert_param(IS_I2C_ADDMODE_OK(AddMode));
      008AC4 0D 16            [ 1]  119 	tnz	(0x16, sp)
      008AC6 27 12            [ 1]  120 	jreq	00122$
      008AC8 7B 16            [ 1]  121 	ld	a, (0x16, sp)
      008ACA A1 80            [ 1]  122 	cp	a, #0x80
      008ACC 27 0C            [ 1]  123 	jreq	00122$
      008ACE 4B 6A            [ 1]  124 	push	#0x6a
      008AD0 5F               [ 1]  125 	clrw	x
      008AD1 89               [ 2]  126 	pushw	x
      008AD2 4B 00            [ 1]  127 	push	#0x00
      008AD4 AE 81 7A         [ 2]  128 	ldw	x, #(___str_0+0)
      008AD7 CD AA 54         [ 4]  129 	call	_assert_failed
      008ADA                        130 00122$:
                                    131 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 107: assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
      008ADA 1E 12            [ 2]  132 	ldw	x, (0x12, sp)
      008ADC A3 03 FF         [ 2]  133 	cpw	x, #0x03ff
      008ADF 23 0C            [ 2]  134 	jrule	00127$
      008AE1 4B 6B            [ 1]  135 	push	#0x6b
      008AE3 5F               [ 1]  136 	clrw	x
      008AE4 89               [ 2]  137 	pushw	x
      008AE5 4B 00            [ 1]  138 	push	#0x00
      008AE7 AE 81 7A         [ 2]  139 	ldw	x, #(___str_0+0)
      008AEA CD AA 54         [ 4]  140 	call	_assert_failed
      008AED                        141 00127$:
                                    142 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 108: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
      008AED 0D 14            [ 1]  143 	tnz	(0x14, sp)
      008AEF 27 12            [ 1]  144 	jreq	00129$
      008AF1 7B 14            [ 1]  145 	ld	a, (0x14, sp)
      008AF3 A1 40            [ 1]  146 	cp	a, #0x40
      008AF5 27 0C            [ 1]  147 	jreq	00129$
      008AF7 4B 6C            [ 1]  148 	push	#0x6c
      008AF9 5F               [ 1]  149 	clrw	x
      008AFA 89               [ 2]  150 	pushw	x
      008AFB 4B 00            [ 1]  151 	push	#0x00
      008AFD AE 81 7A         [ 2]  152 	ldw	x, #(___str_0+0)
      008B00 CD AA 54         [ 4]  153 	call	_assert_failed
      008B03                        154 00129$:
                                    155 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 109: assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
      008B03 7B 17            [ 1]  156 	ld	a, (0x17, sp)
      008B05 A1 01            [ 1]  157 	cp	a, #0x01
      008B07 25 06            [ 1]  158 	jrc	00133$
      008B09 7B 17            [ 1]  159 	ld	a, (0x17, sp)
      008B0B A1 10            [ 1]  160 	cp	a, #0x10
      008B0D 23 0C            [ 2]  161 	jrule	00134$
      008B0F                        162 00133$:
      008B0F 4B 6D            [ 1]  163 	push	#0x6d
      008B11 5F               [ 1]  164 	clrw	x
      008B12 89               [ 2]  165 	pushw	x
      008B13 4B 00            [ 1]  166 	push	#0x00
      008B15 AE 81 7A         [ 2]  167 	ldw	x, #(___str_0+0)
      008B18 CD AA 54         [ 4]  168 	call	_assert_failed
      008B1B                        169 00134$:
                                    170 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 110: assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
      008B1B 1E 10            [ 2]  171 	ldw	x, (0x10, sp)
      008B1D A3 00 01         [ 2]  172 	cpw	x, #0x0001
      008B20 7B 0F            [ 1]  173 	ld	a, (0x0f, sp)
      008B22 A2 00            [ 1]  174 	sbc	a, #0x00
      008B24 7B 0E            [ 1]  175 	ld	a, (0x0e, sp)
      008B26 A2 00            [ 1]  176 	sbc	a, #0x00
      008B28 25 0E            [ 1]  177 	jrc	00138$
      008B2A AE 1A 80         [ 2]  178 	ldw	x, #0x1a80
      008B2D 13 10            [ 2]  179 	cpw	x, (0x10, sp)
      008B2F A6 06            [ 1]  180 	ld	a, #0x06
      008B31 12 0F            [ 1]  181 	sbc	a, (0x0f, sp)
      008B33 4F               [ 1]  182 	clr	a
      008B34 12 0E            [ 1]  183 	sbc	a, (0x0e, sp)
      008B36 24 0C            [ 1]  184 	jrnc	00139$
      008B38                        185 00138$:
      008B38 4B 6E            [ 1]  186 	push	#0x6e
      008B3A 5F               [ 1]  187 	clrw	x
      008B3B 89               [ 2]  188 	pushw	x
      008B3C 4B 00            [ 1]  189 	push	#0x00
      008B3E AE 81 7A         [ 2]  190 	ldw	x, #(___str_0+0)
      008B41 CD AA 54         [ 4]  191 	call	_assert_failed
      008B44                        192 00139$:
                                    193 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 115: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
      008B44 C6 52 12         [ 1]  194 	ld	a, 0x5212
      008B47 A4 C0            [ 1]  195 	and	a, #0xc0
      008B49 C7 52 12         [ 1]  196 	ld	0x5212, a
                                    197 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 117: I2C->FREQR |= InputClockFrequencyMHz;
      008B4C C6 52 12         [ 1]  198 	ld	a, 0x5212
      008B4F 1A 17            [ 1]  199 	or	a, (0x17, sp)
      008B51 C7 52 12         [ 1]  200 	ld	0x5212, a
                                    201 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 121: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008B54 72 11 52 10      [ 1]  202 	bres	0x5210, #0
                                    203 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 124: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
      008B58 C6 52 1C         [ 1]  204 	ld	a, 0x521c
      008B5B A4 30            [ 1]  205 	and	a, #0x30
      008B5D C7 52 1C         [ 1]  206 	ld	0x521c, a
                                    207 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 125: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
      008B60 C6 52 1B         [ 1]  208 	ld	a, 0x521b
      008B63 35 00 52 1B      [ 1]  209 	mov	0x521b+0, #0x00
                                    210 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008B67 5F               [ 1]  211 	clrw	x
      008B68 7B 17            [ 1]  212 	ld	a, (0x17, sp)
      008B6A 97               [ 1]  213 	ld	xl, a
      008B6B 90 5F            [ 1]  214 	clrw	y
      008B6D 89               [ 2]  215 	pushw	x
      008B6E 90 89            [ 2]  216 	pushw	y
      008B70 4B 40            [ 1]  217 	push	#0x40
      008B72 4B 42            [ 1]  218 	push	#0x42
      008B74 4B 0F            [ 1]  219 	push	#0x0f
      008B76 4B 00            [ 1]  220 	push	#0x00
      008B78 CD B4 09         [ 4]  221 	call	__mullong
      008B7B 5B 08            [ 2]  222 	addw	sp, #8
      008B7D 1F 07            [ 2]  223 	ldw	(0x07, sp), x
      008B7F 17 05            [ 2]  224 	ldw	(0x05, sp), y
                                    225 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 128: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
      008B81 AE 86 A0         [ 2]  226 	ldw	x, #0x86a0
      008B84 13 10            [ 2]  227 	cpw	x, (0x10, sp)
      008B86 A6 01            [ 1]  228 	ld	a, #0x01
      008B88 12 0F            [ 1]  229 	sbc	a, (0x0f, sp)
      008B8A 4F               [ 1]  230 	clr	a
      008B8B 12 0E            [ 1]  231 	sbc	a, (0x0e, sp)
      008B8D 24 7C            [ 1]  232 	jrnc	00109$
                                    233 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 131: tmpccrh = I2C_CCRH_FS;
      008B8F A6 80            [ 1]  234 	ld	a, #0x80
      008B91 6B 09            [ 1]  235 	ld	(0x09, sp), a
                                    236 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 133: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
      008B93 0D 14            [ 1]  237 	tnz	(0x14, sp)
      008B95 26 23            [ 1]  238 	jrne	00102$
                                    239 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008B97 1E 10            [ 2]  240 	ldw	x, (0x10, sp)
      008B99 89               [ 2]  241 	pushw	x
      008B9A 1E 10            [ 2]  242 	ldw	x, (0x10, sp)
      008B9C 89               [ 2]  243 	pushw	x
      008B9D 4B 03            [ 1]  244 	push	#0x03
      008B9F 5F               [ 1]  245 	clrw	x
      008BA0 89               [ 2]  246 	pushw	x
      008BA1 4B 00            [ 1]  247 	push	#0x00
      008BA3 CD B4 09         [ 4]  248 	call	__mullong
      008BA6 5B 08            [ 2]  249 	addw	sp, #8
      008BA8 89               [ 2]  250 	pushw	x
      008BA9 90 89            [ 2]  251 	pushw	y
      008BAB 1E 0B            [ 2]  252 	ldw	x, (0x0b, sp)
      008BAD 89               [ 2]  253 	pushw	x
      008BAE 1E 0B            [ 2]  254 	ldw	x, (0x0b, sp)
      008BB0 89               [ 2]  255 	pushw	x
      008BB1 CD B1 36         [ 4]  256 	call	__divulong
      008BB4 5B 08            [ 2]  257 	addw	sp, #8
      008BB6 1F 0A            [ 2]  258 	ldw	(0x0a, sp), x
      008BB8 20 2D            [ 2]  259 	jra	00103$
      008BBA                        260 00102$:
                                    261 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 141: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
      008BBA 1E 10            [ 2]  262 	ldw	x, (0x10, sp)
      008BBC 89               [ 2]  263 	pushw	x
      008BBD 1E 10            [ 2]  264 	ldw	x, (0x10, sp)
      008BBF 89               [ 2]  265 	pushw	x
      008BC0 4B 19            [ 1]  266 	push	#0x19
      008BC2 5F               [ 1]  267 	clrw	x
      008BC3 89               [ 2]  268 	pushw	x
      008BC4 4B 00            [ 1]  269 	push	#0x00
      008BC6 CD B4 09         [ 4]  270 	call	__mullong
      008BC9 5B 08            [ 2]  271 	addw	sp, #8
      008BCB 17 01            [ 2]  272 	ldw	(0x01, sp), y
      008BCD 9F               [ 1]  273 	ld	a, xl
      008BCE 88               [ 1]  274 	push	a
      008BCF 9E               [ 1]  275 	ld	a, xh
      008BD0 88               [ 1]  276 	push	a
      008BD1 1E 03            [ 2]  277 	ldw	x, (0x03, sp)
      008BD3 89               [ 2]  278 	pushw	x
      008BD4 1E 0B            [ 2]  279 	ldw	x, (0x0b, sp)
      008BD6 89               [ 2]  280 	pushw	x
      008BD7 1E 0B            [ 2]  281 	ldw	x, (0x0b, sp)
      008BD9 89               [ 2]  282 	pushw	x
      008BDA CD B1 36         [ 4]  283 	call	__divulong
      008BDD 5B 08            [ 2]  284 	addw	sp, #8
      008BDF 1F 0A            [ 2]  285 	ldw	(0x0a, sp), x
      008BE1 17 08            [ 2]  286 	ldw	(0x08, sp), y
                                    287 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 143: tmpccrh |= I2C_CCRH_DUTY;
      008BE3 A6 C0            [ 1]  288 	ld	a, #0xc0
      008BE5 6B 09            [ 1]  289 	ld	(0x09, sp), a
      008BE7                        290 00103$:
                                    291 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 147: if (result < (uint16_t)0x01)
      008BE7 1E 0A            [ 2]  292 	ldw	x, (0x0a, sp)
      008BE9 A3 00 01         [ 2]  293 	cpw	x, #0x0001
      008BEC 24 04            [ 1]  294 	jrnc	00105$
                                    295 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 150: result = (uint16_t)0x0001;
      008BEE 5F               [ 1]  296 	clrw	x
      008BEF 5C               [ 1]  297 	incw	x
      008BF0 1F 0A            [ 2]  298 	ldw	(0x0a, sp), x
      008BF2                        299 00105$:
                                    300 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 156: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
      008BF2 7B 17            [ 1]  301 	ld	a, (0x17, sp)
      008BF4 5F               [ 1]  302 	clrw	x
      008BF5 97               [ 1]  303 	ld	xl, a
      008BF6 89               [ 2]  304 	pushw	x
      008BF7 58               [ 2]  305 	sllw	x
      008BF8 72 FB 01         [ 2]  306 	addw	x, (1, sp)
      008BFB 5B 02            [ 2]  307 	addw	sp, #2
      008BFD 4B 0A            [ 1]  308 	push	#0x0a
      008BFF 4B 00            [ 1]  309 	push	#0x00
      008C01 CD B4 85         [ 4]  310 	call	__divsint
      008C04 9F               [ 1]  311 	ld	a, xl
      008C05 4C               [ 1]  312 	inc	a
                                    313 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 157: I2C->TRISER = (uint8_t)tmpval;
      008C06 C7 52 1D         [ 1]  314 	ld	0x521d, a
      008C09 20 27            [ 2]  315 	jra	00110$
      008C0B                        316 00109$:
                                    317 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 164: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
      008C0B 1E 10            [ 2]  318 	ldw	x, (0x10, sp)
      008C0D 16 0E            [ 2]  319 	ldw	y, (0x0e, sp)
      008C0F 58               [ 2]  320 	sllw	x
      008C10 90 59            [ 2]  321 	rlcw	y
      008C12 89               [ 2]  322 	pushw	x
      008C13 90 89            [ 2]  323 	pushw	y
      008C15 1E 0B            [ 2]  324 	ldw	x, (0x0b, sp)
      008C17 89               [ 2]  325 	pushw	x
      008C18 1E 0B            [ 2]  326 	ldw	x, (0x0b, sp)
      008C1A 89               [ 2]  327 	pushw	x
      008C1B CD B1 36         [ 4]  328 	call	__divulong
      008C1E 5B 08            [ 2]  329 	addw	sp, #8
                                    330 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 167: if (result < (uint16_t)0x0004)
      008C20 1F 0A            [ 2]  331 	ldw	(0x0a, sp), x
      008C22 A3 00 04         [ 2]  332 	cpw	x, #0x0004
      008C25 24 05            [ 1]  333 	jrnc	00107$
                                    334 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 170: result = (uint16_t)0x0004;
      008C27 AE 00 04         [ 2]  335 	ldw	x, #0x0004
      008C2A 1F 0A            [ 2]  336 	ldw	(0x0a, sp), x
      008C2C                        337 00107$:
                                    338 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 176: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
      008C2C 7B 17            [ 1]  339 	ld	a, (0x17, sp)
      008C2E 4C               [ 1]  340 	inc	a
      008C2F C7 52 1D         [ 1]  341 	ld	0x521d, a
      008C32                        342 00110$:
                                    343 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 181: I2C->CCRL = (uint8_t)result;
      008C32 7B 0B            [ 1]  344 	ld	a, (0x0b, sp)
      008C34 C7 52 1B         [ 1]  345 	ld	0x521b, a
                                    346 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 182: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
      008C37 7B 0A            [ 1]  347 	ld	a, (0x0a, sp)
      008C39 A4 0F            [ 1]  348 	and	a, #0x0f
      008C3B 1A 09            [ 1]  349 	or	a, (0x09, sp)
      008C3D C7 52 1C         [ 1]  350 	ld	0x521c, a
                                    351 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 185: I2C->CR1 |= I2C_CR1_PE;
      008C40 72 10 52 10      [ 1]  352 	bset	0x5210, #0
                                    353 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 188: I2C_AcknowledgeConfig(Ack);
      008C44 7B 15            [ 1]  354 	ld	a, (0x15, sp)
      008C46 CD 8D 6B         [ 4]  355 	call	_I2C_AcknowledgeConfig
                                    356 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 191: I2C->OARL = (uint8_t)(OwnAddress);
      008C49 7B 13            [ 1]  357 	ld	a, (0x13, sp)
      008C4B C7 52 13         [ 1]  358 	ld	0x5213, a
                                    359 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 192: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
      008C4E 7B 16            [ 1]  360 	ld	a, (0x16, sp)
      008C50 AA 40            [ 1]  361 	or	a, #0x40
      008C52 6B 0B            [ 1]  362 	ld	(0x0b, sp), a
                                    363 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 193: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
      008C54 4F               [ 1]  364 	clr	a
      008C55 97               [ 1]  365 	ld	xl, a
      008C56 7B 12            [ 1]  366 	ld	a, (0x12, sp)
      008C58 A4 03            [ 1]  367 	and	a, #0x03
      008C5A 95               [ 1]  368 	ld	xh, a
      008C5B A6 80            [ 1]  369 	ld	a, #0x80
      008C5D 62               [ 2]  370 	div	x, a
      008C5E 9F               [ 1]  371 	ld	a, xl
      008C5F 1A 0B            [ 1]  372 	or	a, (0x0b, sp)
      008C61 C7 52 14         [ 1]  373 	ld	0x5214, a
                                    374 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 194: }
      008C64 1E 0C            [ 2]  375 	ldw	x, (12, sp)
      008C66 5B 17            [ 2]  376 	addw	sp, #23
      008C68 FC               [ 2]  377 	jp	(x)
                                    378 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 202: void I2C_Cmd(FunctionalState NewState)
                                    379 ;	-----------------------------------------
                                    380 ;	 function I2C_Cmd
                                    381 ;	-----------------------------------------
      008C69                        382 _I2C_Cmd:
      008C69 88               [ 1]  383 	push	a
                                    384 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 205: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008C6A 6B 01            [ 1]  385 	ld	(0x01, sp), a
      008C6C 27 11            [ 1]  386 	jreq	00107$
      008C6E 7B 01            [ 1]  387 	ld	a, (0x01, sp)
      008C70 4A               [ 1]  388 	dec	a
      008C71 27 0C            [ 1]  389 	jreq	00107$
      008C73 4B CD            [ 1]  390 	push	#0xcd
      008C75 5F               [ 1]  391 	clrw	x
      008C76 89               [ 2]  392 	pushw	x
      008C77 4B 00            [ 1]  393 	push	#0x00
      008C79 AE 81 7A         [ 2]  394 	ldw	x, #(___str_0+0)
      008C7C CD AA 54         [ 4]  395 	call	_assert_failed
      008C7F                        396 00107$:
                                    397 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      008C7F C6 52 10         [ 1]  398 	ld	a, 0x5210
                                    399 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 207: if (NewState != DISABLE)
      008C82 0D 01            [ 1]  400 	tnz	(0x01, sp)
      008C84 27 07            [ 1]  401 	jreq	00102$
                                    402 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      008C86 AA 01            [ 1]  403 	or	a, #0x01
      008C88 C7 52 10         [ 1]  404 	ld	0x5210, a
      008C8B 20 05            [ 2]  405 	jra	00104$
      008C8D                        406 00102$:
                                    407 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 215: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008C8D A4 FE            [ 1]  408 	and	a, #0xfe
      008C8F C7 52 10         [ 1]  409 	ld	0x5210, a
      008C92                        410 00104$:
                                    411 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 217: }
      008C92 84               [ 1]  412 	pop	a
      008C93 81               [ 4]  413 	ret
                                    414 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 225: void I2C_GeneralCallCmd(FunctionalState NewState)
                                    415 ;	-----------------------------------------
                                    416 ;	 function I2C_GeneralCallCmd
                                    417 ;	-----------------------------------------
      008C94                        418 _I2C_GeneralCallCmd:
      008C94 88               [ 1]  419 	push	a
                                    420 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 228: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008C95 6B 01            [ 1]  421 	ld	(0x01, sp), a
      008C97 27 11            [ 1]  422 	jreq	00107$
      008C99 7B 01            [ 1]  423 	ld	a, (0x01, sp)
      008C9B 4A               [ 1]  424 	dec	a
      008C9C 27 0C            [ 1]  425 	jreq	00107$
      008C9E 4B E4            [ 1]  426 	push	#0xe4
      008CA0 5F               [ 1]  427 	clrw	x
      008CA1 89               [ 2]  428 	pushw	x
      008CA2 4B 00            [ 1]  429 	push	#0x00
      008CA4 AE 81 7A         [ 2]  430 	ldw	x, #(___str_0+0)
      008CA7 CD AA 54         [ 4]  431 	call	_assert_failed
      008CAA                        432 00107$:
                                    433 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 233: I2C->CR1 |= I2C_CR1_ENGC;
      008CAA C6 52 10         [ 1]  434 	ld	a, 0x5210
                                    435 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 230: if (NewState != DISABLE)
      008CAD 0D 01            [ 1]  436 	tnz	(0x01, sp)
      008CAF 27 07            [ 1]  437 	jreq	00102$
                                    438 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 233: I2C->CR1 |= I2C_CR1_ENGC;
      008CB1 AA 40            [ 1]  439 	or	a, #0x40
      008CB3 C7 52 10         [ 1]  440 	ld	0x5210, a
      008CB6 20 05            [ 2]  441 	jra	00104$
      008CB8                        442 00102$:
                                    443 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 238: I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
      008CB8 A4 BF            [ 1]  444 	and	a, #0xbf
      008CBA C7 52 10         [ 1]  445 	ld	0x5210, a
      008CBD                        446 00104$:
                                    447 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 240: }
      008CBD 84               [ 1]  448 	pop	a
      008CBE 81               [ 4]  449 	ret
                                    450 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 250: void I2C_GenerateSTART(FunctionalState NewState)
                                    451 ;	-----------------------------------------
                                    452 ;	 function I2C_GenerateSTART
                                    453 ;	-----------------------------------------
      008CBF                        454 _I2C_GenerateSTART:
      008CBF 88               [ 1]  455 	push	a
                                    456 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 253: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008CC0 6B 01            [ 1]  457 	ld	(0x01, sp), a
      008CC2 27 11            [ 1]  458 	jreq	00107$
      008CC4 7B 01            [ 1]  459 	ld	a, (0x01, sp)
      008CC6 4A               [ 1]  460 	dec	a
      008CC7 27 0C            [ 1]  461 	jreq	00107$
      008CC9 4B FD            [ 1]  462 	push	#0xfd
      008CCB 5F               [ 1]  463 	clrw	x
      008CCC 89               [ 2]  464 	pushw	x
      008CCD 4B 00            [ 1]  465 	push	#0x00
      008CCF AE 81 7A         [ 2]  466 	ldw	x, #(___str_0+0)
      008CD2 CD AA 54         [ 4]  467 	call	_assert_failed
      008CD5                        468 00107$:
                                    469 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 258: I2C->CR2 |= I2C_CR2_START;
      008CD5 C6 52 11         [ 1]  470 	ld	a, 0x5211
                                    471 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 255: if (NewState != DISABLE)
      008CD8 0D 01            [ 1]  472 	tnz	(0x01, sp)
      008CDA 27 07            [ 1]  473 	jreq	00102$
                                    474 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 258: I2C->CR2 |= I2C_CR2_START;
      008CDC AA 01            [ 1]  475 	or	a, #0x01
      008CDE C7 52 11         [ 1]  476 	ld	0x5211, a
      008CE1 20 05            [ 2]  477 	jra	00104$
      008CE3                        478 00102$:
                                    479 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 263: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
      008CE3 A4 FE            [ 1]  480 	and	a, #0xfe
      008CE5 C7 52 11         [ 1]  481 	ld	0x5211, a
      008CE8                        482 00104$:
                                    483 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 265: }
      008CE8 84               [ 1]  484 	pop	a
      008CE9 81               [ 4]  485 	ret
                                    486 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 273: void I2C_GenerateSTOP(FunctionalState NewState)
                                    487 ;	-----------------------------------------
                                    488 ;	 function I2C_GenerateSTOP
                                    489 ;	-----------------------------------------
      008CEA                        490 _I2C_GenerateSTOP:
      008CEA 88               [ 1]  491 	push	a
                                    492 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 276: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008CEB 6B 01            [ 1]  493 	ld	(0x01, sp), a
      008CED 27 11            [ 1]  494 	jreq	00107$
      008CEF 7B 01            [ 1]  495 	ld	a, (0x01, sp)
      008CF1 4A               [ 1]  496 	dec	a
      008CF2 27 0C            [ 1]  497 	jreq	00107$
      008CF4 4B 14            [ 1]  498 	push	#0x14
      008CF6 4B 01            [ 1]  499 	push	#0x01
      008CF8 5F               [ 1]  500 	clrw	x
      008CF9 89               [ 2]  501 	pushw	x
      008CFA AE 81 7A         [ 2]  502 	ldw	x, #(___str_0+0)
      008CFD CD AA 54         [ 4]  503 	call	_assert_failed
      008D00                        504 00107$:
                                    505 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 281: I2C->CR2 |= I2C_CR2_STOP;
      008D00 C6 52 11         [ 1]  506 	ld	a, 0x5211
                                    507 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 278: if (NewState != DISABLE)
      008D03 0D 01            [ 1]  508 	tnz	(0x01, sp)
      008D05 27 07            [ 1]  509 	jreq	00102$
                                    510 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 281: I2C->CR2 |= I2C_CR2_STOP;
      008D07 AA 02            [ 1]  511 	or	a, #0x02
      008D09 C7 52 11         [ 1]  512 	ld	0x5211, a
      008D0C 20 05            [ 2]  513 	jra	00104$
      008D0E                        514 00102$:
                                    515 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 286: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
      008D0E A4 FD            [ 1]  516 	and	a, #0xfd
      008D10 C7 52 11         [ 1]  517 	ld	0x5211, a
      008D13                        518 00104$:
                                    519 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 288: }
      008D13 84               [ 1]  520 	pop	a
      008D14 81               [ 4]  521 	ret
                                    522 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 296: void I2C_SoftwareResetCmd(FunctionalState NewState)
                                    523 ;	-----------------------------------------
                                    524 ;	 function I2C_SoftwareResetCmd
                                    525 ;	-----------------------------------------
      008D15                        526 _I2C_SoftwareResetCmd:
      008D15 88               [ 1]  527 	push	a
                                    528 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 299: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D16 6B 01            [ 1]  529 	ld	(0x01, sp), a
      008D18 27 11            [ 1]  530 	jreq	00107$
      008D1A 7B 01            [ 1]  531 	ld	a, (0x01, sp)
      008D1C 4A               [ 1]  532 	dec	a
      008D1D 27 0C            [ 1]  533 	jreq	00107$
      008D1F 4B 2B            [ 1]  534 	push	#0x2b
      008D21 4B 01            [ 1]  535 	push	#0x01
      008D23 5F               [ 1]  536 	clrw	x
      008D24 89               [ 2]  537 	pushw	x
      008D25 AE 81 7A         [ 2]  538 	ldw	x, #(___str_0+0)
      008D28 CD AA 54         [ 4]  539 	call	_assert_failed
      008D2B                        540 00107$:
                                    541 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 304: I2C->CR2 |= I2C_CR2_SWRST;
      008D2B C6 52 11         [ 1]  542 	ld	a, 0x5211
                                    543 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 301: if (NewState != DISABLE)
      008D2E 0D 01            [ 1]  544 	tnz	(0x01, sp)
      008D30 27 07            [ 1]  545 	jreq	00102$
                                    546 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 304: I2C->CR2 |= I2C_CR2_SWRST;
      008D32 AA 80            [ 1]  547 	or	a, #0x80
      008D34 C7 52 11         [ 1]  548 	ld	0x5211, a
      008D37 20 05            [ 2]  549 	jra	00104$
      008D39                        550 00102$:
                                    551 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 309: I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
      008D39 A4 7F            [ 1]  552 	and	a, #0x7f
      008D3B C7 52 11         [ 1]  553 	ld	0x5211, a
      008D3E                        554 00104$:
                                    555 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 311: }
      008D3E 84               [ 1]  556 	pop	a
      008D3F 81               [ 4]  557 	ret
                                    558 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 320: void I2C_StretchClockCmd(FunctionalState NewState)
                                    559 ;	-----------------------------------------
                                    560 ;	 function I2C_StretchClockCmd
                                    561 ;	-----------------------------------------
      008D40                        562 _I2C_StretchClockCmd:
      008D40 88               [ 1]  563 	push	a
                                    564 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 323: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D41 6B 01            [ 1]  565 	ld	(0x01, sp), a
      008D43 27 11            [ 1]  566 	jreq	00107$
      008D45 7B 01            [ 1]  567 	ld	a, (0x01, sp)
      008D47 4A               [ 1]  568 	dec	a
      008D48 27 0C            [ 1]  569 	jreq	00107$
      008D4A 4B 43            [ 1]  570 	push	#0x43
      008D4C 4B 01            [ 1]  571 	push	#0x01
      008D4E 5F               [ 1]  572 	clrw	x
      008D4F 89               [ 2]  573 	pushw	x
      008D50 AE 81 7A         [ 2]  574 	ldw	x, #(___str_0+0)
      008D53 CD AA 54         [ 4]  575 	call	_assert_failed
      008D56                        576 00107$:
                                    577 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 328: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
      008D56 C6 52 10         [ 1]  578 	ld	a, 0x5210
                                    579 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 325: if (NewState != DISABLE)
      008D59 0D 01            [ 1]  580 	tnz	(0x01, sp)
      008D5B 27 07            [ 1]  581 	jreq	00102$
                                    582 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 328: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
      008D5D A4 7F            [ 1]  583 	and	a, #0x7f
      008D5F C7 52 10         [ 1]  584 	ld	0x5210, a
      008D62 20 05            [ 2]  585 	jra	00104$
      008D64                        586 00102$:
                                    587 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 334: I2C->CR1 |= I2C_CR1_NOSTRETCH;
      008D64 AA 80            [ 1]  588 	or	a, #0x80
      008D66 C7 52 10         [ 1]  589 	ld	0x5210, a
      008D69                        590 00104$:
                                    591 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 336: }
      008D69 84               [ 1]  592 	pop	a
      008D6A 81               [ 4]  593 	ret
                                    594 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 345: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
                                    595 ;	-----------------------------------------
                                    596 ;	 function I2C_AcknowledgeConfig
                                    597 ;	-----------------------------------------
      008D6B                        598 _I2C_AcknowledgeConfig:
                                    599 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 348: assert_param(IS_I2C_ACK_OK(Ack));
      008D6B 97               [ 1]  600 	ld	xl, a
      008D6C 4A               [ 1]  601 	dec	a
      008D6D 26 05            [ 1]  602 	jrne	00143$
      008D6F A6 01            [ 1]  603 	ld	a, #0x01
      008D71 95               [ 1]  604 	ld	xh, a
      008D72 20 02            [ 2]  605 	jra	00144$
      008D74                        606 00143$:
      008D74 4F               [ 1]  607 	clr	a
      008D75 95               [ 1]  608 	ld	xh, a
      008D76                        609 00144$:
      008D76 9F               [ 1]  610 	ld	a, xl
      008D77 4D               [ 1]  611 	tnz	a
      008D78 27 19            [ 1]  612 	jreq	00110$
      008D7A 9E               [ 1]  613 	ld	a, xh
      008D7B 4D               [ 1]  614 	tnz	a
      008D7C 26 15            [ 1]  615 	jrne	00110$
      008D7E 9F               [ 1]  616 	ld	a, xl
      008D7F A1 02            [ 1]  617 	cp	a, #0x02
      008D81 27 10            [ 1]  618 	jreq	00110$
      008D83 89               [ 2]  619 	pushw	x
      008D84 4B 5C            [ 1]  620 	push	#0x5c
      008D86 4B 01            [ 1]  621 	push	#0x01
      008D88 4B 00            [ 1]  622 	push	#0x00
      008D8A 4B 00            [ 1]  623 	push	#0x00
      008D8C AE 81 7A         [ 2]  624 	ldw	x, #(___str_0+0)
      008D8F CD AA 54         [ 4]  625 	call	_assert_failed
      008D92 85               [ 2]  626 	popw	x
      008D93                        627 00110$:
                                    628 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008D93 C6 52 11         [ 1]  629 	ld	a, 0x5211
                                    630 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 350: if (Ack == I2C_ACK_NONE)
      008D96 41               [ 1]  631 	exg	a, xl
      008D97 4D               [ 1]  632 	tnz	a
      008D98 41               [ 1]  633 	exg	a, xl
      008D99 26 06            [ 1]  634 	jrne	00105$
                                    635 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008D9B A4 FB            [ 1]  636 	and	a, #0xfb
      008D9D C7 52 11         [ 1]  637 	ld	0x5211, a
      008DA0 81               [ 4]  638 	ret
      008DA1                        639 00105$:
                                    640 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 358: I2C->CR2 |= I2C_CR2_ACK;
      008DA1 AA 04            [ 1]  641 	or	a, #0x04
      008DA3 C7 52 11         [ 1]  642 	ld	0x5211, a
                                    643 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008DA6 C6 52 11         [ 1]  644 	ld	a, 0x5211
                                    645 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 360: if (Ack == I2C_ACK_CURR)
      008DA9 88               [ 1]  646 	push	a
      008DAA 9E               [ 1]  647 	ld	a, xh
      008DAB 4D               [ 1]  648 	tnz	a
      008DAC 84               [ 1]  649 	pop	a
      008DAD 27 06            [ 1]  650 	jreq	00102$
                                    651 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 363: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
      008DAF A4 F7            [ 1]  652 	and	a, #0xf7
      008DB1 C7 52 11         [ 1]  653 	ld	0x5211, a
      008DB4 81               [ 4]  654 	ret
      008DB5                        655 00102$:
                                    656 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 368: I2C->CR2 |= I2C_CR2_POS;
      008DB5 AA 08            [ 1]  657 	or	a, #0x08
      008DB7 C7 52 11         [ 1]  658 	ld	0x5211, a
                                    659 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 371: }
      008DBA 81               [ 4]  660 	ret
                                    661 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 381: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
                                    662 ;	-----------------------------------------
                                    663 ;	 function I2C_ITConfig
                                    664 ;	-----------------------------------------
      008DBB                        665 _I2C_ITConfig:
      008DBB 88               [ 1]  666 	push	a
                                    667 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 384: assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
      008DBC A1 01            [ 1]  668 	cp	a, #0x01
      008DBE 27 26            [ 1]  669 	jreq	00107$
      008DC0 A1 02            [ 1]  670 	cp	a, #0x02
      008DC2 27 22            [ 1]  671 	jreq	00107$
      008DC4 A1 04            [ 1]  672 	cp	a, #0x04
      008DC6 27 1E            [ 1]  673 	jreq	00107$
      008DC8 A1 03            [ 1]  674 	cp	a, #0x03
      008DCA 27 1A            [ 1]  675 	jreq	00107$
      008DCC A1 05            [ 1]  676 	cp	a, #0x05
      008DCE 27 16            [ 1]  677 	jreq	00107$
      008DD0 A1 06            [ 1]  678 	cp	a, #0x06
      008DD2 27 12            [ 1]  679 	jreq	00107$
      008DD4 A1 07            [ 1]  680 	cp	a, #0x07
      008DD6 27 0E            [ 1]  681 	jreq	00107$
      008DD8 88               [ 1]  682 	push	a
      008DD9 4B 80            [ 1]  683 	push	#0x80
      008DDB 4B 01            [ 1]  684 	push	#0x01
      008DDD 5F               [ 1]  685 	clrw	x
      008DDE 89               [ 2]  686 	pushw	x
      008DDF AE 81 7A         [ 2]  687 	ldw	x, #(___str_0+0)
      008DE2 CD AA 54         [ 4]  688 	call	_assert_failed
      008DE5 84               [ 1]  689 	pop	a
      008DE6                        690 00107$:
                                    691 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 385: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008DE6 0D 04            [ 1]  692 	tnz	(0x04, sp)
      008DE8 27 15            [ 1]  693 	jreq	00127$
      008DEA 88               [ 1]  694 	push	a
      008DEB 7B 05            [ 1]  695 	ld	a, (0x05, sp)
      008DED 4A               [ 1]  696 	dec	a
      008DEE 84               [ 1]  697 	pop	a
      008DEF 27 0E            [ 1]  698 	jreq	00127$
      008DF1 88               [ 1]  699 	push	a
      008DF2 4B 81            [ 1]  700 	push	#0x81
      008DF4 4B 01            [ 1]  701 	push	#0x01
      008DF6 5F               [ 1]  702 	clrw	x
      008DF7 89               [ 2]  703 	pushw	x
      008DF8 AE 81 7A         [ 2]  704 	ldw	x, #(___str_0+0)
      008DFB CD AA 54         [ 4]  705 	call	_assert_failed
      008DFE 84               [ 1]  706 	pop	a
      008DFF                        707 00127$:
                                    708 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 390: I2C->ITR |= (uint8_t)I2C_IT;
      008DFF AE 52 1A         [ 2]  709 	ldw	x, #0x521a
      008E02 88               [ 1]  710 	push	a
      008E03 F6               [ 1]  711 	ld	a, (x)
      008E04 6B 02            [ 1]  712 	ld	(0x02, sp), a
      008E06 84               [ 1]  713 	pop	a
                                    714 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 387: if (NewState != DISABLE)
      008E07 0D 04            [ 1]  715 	tnz	(0x04, sp)
      008E09 27 07            [ 1]  716 	jreq	00102$
                                    717 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 390: I2C->ITR |= (uint8_t)I2C_IT;
      008E0B 1A 01            [ 1]  718 	or	a, (0x01, sp)
      008E0D C7 52 1A         [ 1]  719 	ld	0x521a, a
      008E10 20 06            [ 2]  720 	jra	00104$
      008E12                        721 00102$:
                                    722 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 395: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
      008E12 43               [ 1]  723 	cpl	a
      008E13 14 01            [ 1]  724 	and	a, (0x01, sp)
      008E15 C7 52 1A         [ 1]  725 	ld	0x521a, a
      008E18                        726 00104$:
                                    727 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 397: }
      008E18 84               [ 1]  728 	pop	a
      008E19 85               [ 2]  729 	popw	x
      008E1A 84               [ 1]  730 	pop	a
      008E1B FC               [ 2]  731 	jp	(x)
                                    732 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 405: void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
                                    733 ;	-----------------------------------------
                                    734 ;	 function I2C_FastModeDutyCycleConfig
                                    735 ;	-----------------------------------------
      008E1C                        736 _I2C_FastModeDutyCycleConfig:
      008E1C 88               [ 1]  737 	push	a
                                    738 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 408: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
      008E1D A1 40            [ 1]  739 	cp	a, #0x40
      008E1F 26 07            [ 1]  740 	jrne	00127$
      008E21 88               [ 1]  741 	push	a
      008E22 A6 01            [ 1]  742 	ld	a, #0x01
      008E24 6B 02            [ 1]  743 	ld	(0x02, sp), a
      008E26 84               [ 1]  744 	pop	a
      008E27 C5                     745 	.byte 0xc5
      008E28                        746 00127$:
      008E28 0F 01            [ 1]  747 	clr	(0x01, sp)
      008E2A                        748 00128$:
      008E2A 4D               [ 1]  749 	tnz	a
      008E2B 27 10            [ 1]  750 	jreq	00107$
      008E2D 0D 01            [ 1]  751 	tnz	(0x01, sp)
      008E2F 26 0C            [ 1]  752 	jrne	00107$
      008E31 4B 98            [ 1]  753 	push	#0x98
      008E33 4B 01            [ 1]  754 	push	#0x01
      008E35 5F               [ 1]  755 	clrw	x
      008E36 89               [ 2]  756 	pushw	x
      008E37 AE 81 7A         [ 2]  757 	ldw	x, #(___str_0+0)
      008E3A CD AA 54         [ 4]  758 	call	_assert_failed
      008E3D                        759 00107$:
                                    760 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 413: I2C->CCRH |= I2C_CCRH_DUTY;
      008E3D C6 52 1C         [ 1]  761 	ld	a, 0x521c
      008E40 97               [ 1]  762 	ld	xl, a
                                    763 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 410: if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
      008E41 7B 01            [ 1]  764 	ld	a, (0x01, sp)
      008E43 27 08            [ 1]  765 	jreq	00102$
                                    766 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 413: I2C->CCRH |= I2C_CCRH_DUTY;
      008E45 9F               [ 1]  767 	ld	a, xl
      008E46 AA 40            [ 1]  768 	or	a, #0x40
      008E48 C7 52 1C         [ 1]  769 	ld	0x521c, a
      008E4B 20 06            [ 2]  770 	jra	00104$
      008E4D                        771 00102$:
                                    772 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 418: I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
      008E4D 9F               [ 1]  773 	ld	a, xl
      008E4E A4 BF            [ 1]  774 	and	a, #0xbf
      008E50 C7 52 1C         [ 1]  775 	ld	0x521c, a
      008E53                        776 00104$:
                                    777 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 420: }
      008E53 84               [ 1]  778 	pop	a
      008E54 81               [ 4]  779 	ret
                                    780 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 427: uint8_t I2C_ReceiveData(void)
                                    781 ;	-----------------------------------------
                                    782 ;	 function I2C_ReceiveData
                                    783 ;	-----------------------------------------
      008E55                        784 _I2C_ReceiveData:
                                    785 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 430: return ((uint8_t)I2C->DR);
      008E55 C6 52 16         [ 1]  786 	ld	a, 0x5216
                                    787 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 431: }
      008E58 81               [ 4]  788 	ret
                                    789 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 440: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
                                    790 ;	-----------------------------------------
                                    791 ;	 function I2C_Send7bitAddress
                                    792 ;	-----------------------------------------
      008E59                        793 _I2C_Send7bitAddress:
      008E59 88               [ 1]  794 	push	a
                                    795 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 443: assert_param(IS_I2C_ADDRESS_OK(Address));
      008E5A 6B 01            [ 1]  796 	ld	(0x01, sp), a
      008E5C 44               [ 1]  797 	srl	a
      008E5D 24 0C            [ 1]  798 	jrnc	00104$
      008E5F 4B BB            [ 1]  799 	push	#0xbb
      008E61 4B 01            [ 1]  800 	push	#0x01
      008E63 5F               [ 1]  801 	clrw	x
      008E64 89               [ 2]  802 	pushw	x
      008E65 AE 81 7A         [ 2]  803 	ldw	x, #(___str_0+0)
      008E68 CD AA 54         [ 4]  804 	call	_assert_failed
      008E6B                        805 00104$:
                                    806 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 444: assert_param(IS_I2C_DIRECTION_OK(Direction));
      008E6B 0D 04            [ 1]  807 	tnz	(0x04, sp)
      008E6D 27 11            [ 1]  808 	jreq	00106$
      008E6F 7B 04            [ 1]  809 	ld	a, (0x04, sp)
      008E71 4A               [ 1]  810 	dec	a
      008E72 27 0C            [ 1]  811 	jreq	00106$
      008E74 4B BC            [ 1]  812 	push	#0xbc
      008E76 4B 01            [ 1]  813 	push	#0x01
      008E78 5F               [ 1]  814 	clrw	x
      008E79 89               [ 2]  815 	pushw	x
      008E7A AE 81 7A         [ 2]  816 	ldw	x, #(___str_0+0)
      008E7D CD AA 54         [ 4]  817 	call	_assert_failed
      008E80                        818 00106$:
                                    819 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 447: Address &= (uint8_t)0xFE;
      008E80 7B 01            [ 1]  820 	ld	a, (0x01, sp)
      008E82 A4 FE            [ 1]  821 	and	a, #0xfe
                                    822 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 450: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
      008E84 1A 04            [ 1]  823 	or	a, (0x04, sp)
      008E86 C7 52 16         [ 1]  824 	ld	0x5216, a
                                    825 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 451: }
      008E89 84               [ 1]  826 	pop	a
      008E8A 85               [ 2]  827 	popw	x
      008E8B 84               [ 1]  828 	pop	a
      008E8C FC               [ 2]  829 	jp	(x)
                                    830 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 458: void I2C_SendData(uint8_t Data)
                                    831 ;	-----------------------------------------
                                    832 ;	 function I2C_SendData
                                    833 ;	-----------------------------------------
      008E8D                        834 _I2C_SendData:
                                    835 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 461: I2C->DR = Data;
      008E8D C7 52 16         [ 1]  836 	ld	0x5216, a
                                    837 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 462: }
      008E90 81               [ 4]  838 	ret
                                    839 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 578: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
                                    840 ;	-----------------------------------------
                                    841 ;	 function I2C_CheckEvent
                                    842 ;	-----------------------------------------
      008E91                        843 _I2C_CheckEvent:
      008E91 52 06            [ 2]  844 	sub	sp, #6
                                    845 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 580: __IO uint16_t lastevent = 0x00;
      008E93 0F 02            [ 1]  846 	clr	(0x02, sp)
      008E95 0F 01            [ 1]  847 	clr	(0x01, sp)
                                    848 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 586: assert_param(IS_I2C_EVENT_OK(I2C_Event));
      008E97 A3 00 04         [ 2]  849 	cpw	x, #0x0004
      008E9A 26 03            [ 1]  850 	jrne	00247$
      008E9C A6 01            [ 1]  851 	ld	a, #0x01
      008E9E 21                     852 	.byte 0x21
      008E9F                        853 00247$:
      008E9F 4F               [ 1]  854 	clr	a
      008EA0                        855 00248$:
      008EA0 A3 06 82         [ 2]  856 	cpw	x, #0x0682
      008EA3 27 5B            [ 1]  857 	jreq	00110$
      008EA5 A3 02 02         [ 2]  858 	cpw	x, #0x0202
      008EA8 27 56            [ 1]  859 	jreq	00110$
      008EAA A3 12 00         [ 2]  860 	cpw	x, #0x1200
      008EAD 27 51            [ 1]  861 	jreq	00110$
      008EAF A3 02 40         [ 2]  862 	cpw	x, #0x0240
      008EB2 27 4C            [ 1]  863 	jreq	00110$
      008EB4 A3 03 50         [ 2]  864 	cpw	x, #0x0350
      008EB7 27 47            [ 1]  865 	jreq	00110$
      008EB9 A3 06 84         [ 2]  866 	cpw	x, #0x0684
      008EBC 27 42            [ 1]  867 	jreq	00110$
      008EBE A3 07 94         [ 2]  868 	cpw	x, #0x0794
      008EC1 27 3D            [ 1]  869 	jreq	00110$
      008EC3 4D               [ 1]  870 	tnz	a
      008EC4 26 3A            [ 1]  871 	jrne	00110$
      008EC6 A3 00 10         [ 2]  872 	cpw	x, #0x0010
      008EC9 27 35            [ 1]  873 	jreq	00110$
      008ECB A3 03 01         [ 2]  874 	cpw	x, #0x0301
      008ECE 27 30            [ 1]  875 	jreq	00110$
      008ED0 A3 07 82         [ 2]  876 	cpw	x, #0x0782
      008ED3 27 2B            [ 1]  877 	jreq	00110$
      008ED5 A3 03 02         [ 2]  878 	cpw	x, #0x0302
      008ED8 27 26            [ 1]  879 	jreq	00110$
      008EDA A3 03 40         [ 2]  880 	cpw	x, #0x0340
      008EDD 27 21            [ 1]  881 	jreq	00110$
      008EDF A3 07 84         [ 2]  882 	cpw	x, #0x0784
      008EE2 27 1C            [ 1]  883 	jreq	00110$
      008EE4 A3 07 80         [ 2]  884 	cpw	x, #0x0780
      008EE7 27 17            [ 1]  885 	jreq	00110$
      008EE9 A3 03 08         [ 2]  886 	cpw	x, #0x0308
      008EEC 27 12            [ 1]  887 	jreq	00110$
      008EEE 88               [ 1]  888 	push	a
      008EEF 89               [ 2]  889 	pushw	x
      008EF0 4B 4A            [ 1]  890 	push	#0x4a
      008EF2 4B 02            [ 1]  891 	push	#0x02
      008EF4 4B 00            [ 1]  892 	push	#0x00
      008EF6 4B 00            [ 1]  893 	push	#0x00
      008EF8 AE 81 7A         [ 2]  894 	ldw	x, #(___str_0+0)
      008EFB CD AA 54         [ 4]  895 	call	_assert_failed
      008EFE 85               [ 2]  896 	popw	x
      008EFF 84               [ 1]  897 	pop	a
      008F00                        898 00110$:
                                    899 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 588: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
      008F00 4D               [ 1]  900 	tnz	a
      008F01 27 0D            [ 1]  901 	jreq	00102$
                                    902 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 590: lastevent = I2C->SR2 & I2C_SR2_AF;
      008F03 C6 52 18         [ 1]  903 	ld	a, 0x5218
      008F06 A4 04            [ 1]  904 	and	a, #0x04
      008F08 90 5F            [ 1]  905 	clrw	y
      008F0A 90 97            [ 1]  906 	ld	yl, a
      008F0C 17 01            [ 2]  907 	ldw	(0x01, sp), y
      008F0E 20 1A            [ 2]  908 	jra	00103$
      008F10                        909 00102$:
                                    910 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 594: flag1 = I2C->SR1;
      008F10 C6 52 17         [ 1]  911 	ld	a, 0x5217
      008F13 6B 06            [ 1]  912 	ld	(0x06, sp), a
                                    913 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 595: flag2 = I2C->SR3;
      008F15 C6 52 19         [ 1]  914 	ld	a, 0x5219
                                    915 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 596: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
      008F18 90 95            [ 1]  916 	ld	yh, a
      008F1A 0F 04            [ 1]  917 	clr	(0x04, sp)
      008F1C 7B 06            [ 1]  918 	ld	a, (0x06, sp)
      008F1E 0F 05            [ 1]  919 	clr	(0x05, sp)
      008F20 1A 04            [ 1]  920 	or	a, (0x04, sp)
      008F22 90 02            [ 1]  921 	rlwa	y
      008F24 1A 05            [ 1]  922 	or	a, (0x05, sp)
      008F26 90 95            [ 1]  923 	ld	yh, a
      008F28 17 01            [ 2]  924 	ldw	(0x01, sp), y
      008F2A                        925 00103$:
                                    926 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 599: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
      008F2A 9F               [ 1]  927 	ld	a, xl
      008F2B 14 02            [ 1]  928 	and	a, (0x02, sp)
      008F2D 6B 06            [ 1]  929 	ld	(0x06, sp), a
      008F2F 9E               [ 1]  930 	ld	a, xh
      008F30 14 01            [ 1]  931 	and	a, (0x01, sp)
      008F32 6B 05            [ 1]  932 	ld	(0x05, sp), a
      008F34 13 05            [ 2]  933 	cpw	x, (0x05, sp)
      008F36 26 03            [ 1]  934 	jrne	00105$
                                    935 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 602: status = SUCCESS;
      008F38 A6 01            [ 1]  936 	ld	a, #0x01
                                    937 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 607: status = ERROR;
      008F3A 21                     938 	.byte 0x21
      008F3B                        939 00105$:
      008F3B 4F               [ 1]  940 	clr	a
      008F3C                        941 00106$:
                                    942 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 611: return status;
                                    943 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 612: }
      008F3C 5B 06            [ 2]  944 	addw	sp, #6
      008F3E 81               [ 4]  945 	ret
                                    946 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 628: I2C_Event_TypeDef I2C_GetLastEvent(void)
                                    947 ;	-----------------------------------------
                                    948 ;	 function I2C_GetLastEvent
                                    949 ;	-----------------------------------------
      008F3F                        950 _I2C_GetLastEvent:
      008F3F 52 04            [ 2]  951 	sub	sp, #4
                                    952 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 630: __IO uint16_t lastevent = 0;
      008F41 5F               [ 1]  953 	clrw	x
      008F42 1F 01            [ 2]  954 	ldw	(0x01, sp), x
                                    955 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 634: if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
      008F44 72 05 52 18 07   [ 2]  956 	btjf	0x5218, #2, 00102$
                                    957 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 636: lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
      008F49 AE 00 04         [ 2]  958 	ldw	x, #0x0004
      008F4C 1F 01            [ 2]  959 	ldw	(0x01, sp), x
      008F4E 20 13            [ 2]  960 	jra	00103$
      008F50                        961 00102$:
                                    962 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 641: flag1 = I2C->SR1;
      008F50 C6 52 17         [ 1]  963 	ld	a, 0x5217
      008F53 6B 04            [ 1]  964 	ld	(0x04, sp), a
      008F55 0F 03            [ 1]  965 	clr	(0x03, sp)
                                    966 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 642: flag2 = I2C->SR3;
      008F57 C6 52 19         [ 1]  967 	ld	a, 0x5219
                                    968 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 645: lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
      008F5A 95               [ 1]  969 	ld	xh, a
      008F5B 7B 04            [ 1]  970 	ld	a, (0x04, sp)
      008F5D 02               [ 1]  971 	rlwa	x
      008F5E 1A 03            [ 1]  972 	or	a, (0x03, sp)
      008F60 95               [ 1]  973 	ld	xh, a
      008F61 1F 01            [ 2]  974 	ldw	(0x01, sp), x
      008F63                        975 00103$:
                                    976 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 648: return (I2C_Event_TypeDef)lastevent;
      008F63 1E 01            [ 2]  977 	ldw	x, (0x01, sp)
                                    978 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 649: }
      008F65 5B 04            [ 2]  979 	addw	sp, #4
      008F67 81               [ 4]  980 	ret
                                    981 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 679: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
                                    982 ;	-----------------------------------------
                                    983 ;	 function I2C_GetFlagStatus
                                    984 ;	-----------------------------------------
      008F68                        985 _I2C_GetFlagStatus:
      008F68 52 03            [ 2]  986 	sub	sp, #3
      008F6A 1F 02            [ 2]  987 	ldw	(0x02, sp), x
                                    988 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 681: uint8_t tempreg = 0;
      008F6C 0F 01            [ 1]  989 	clr	(0x01, sp)
                                    990 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 686: assert_param(IS_I2C_FLAG_OK(I2C_Flag));
      008F6E 1E 02            [ 2]  991 	ldw	x, (0x02, sp)
      008F70 A3 01 80         [ 2]  992 	cpw	x, #0x0180
      008F73 27 5B            [ 1]  993 	jreq	00112$
      008F75 A3 01 40         [ 2]  994 	cpw	x, #0x0140
      008F78 27 56            [ 1]  995 	jreq	00112$
      008F7A A3 01 10         [ 2]  996 	cpw	x, #0x0110
      008F7D 27 51            [ 1]  997 	jreq	00112$
      008F7F A3 01 08         [ 2]  998 	cpw	x, #0x0108
      008F82 27 4C            [ 1]  999 	jreq	00112$
      008F84 A3 01 04         [ 2] 1000 	cpw	x, #0x0104
      008F87 27 47            [ 1] 1001 	jreq	00112$
      008F89 A3 01 02         [ 2] 1002 	cpw	x, #0x0102
      008F8C 27 42            [ 1] 1003 	jreq	00112$
      008F8E A3 01 01         [ 2] 1004 	cpw	x, #0x0101
      008F91 27 3D            [ 1] 1005 	jreq	00112$
      008F93 A3 02 20         [ 2] 1006 	cpw	x, #0x0220
      008F96 27 38            [ 1] 1007 	jreq	00112$
      008F98 A3 02 08         [ 2] 1008 	cpw	x, #0x0208
      008F9B 27 33            [ 1] 1009 	jreq	00112$
      008F9D A3 02 04         [ 2] 1010 	cpw	x, #0x0204
      008FA0 27 2E            [ 1] 1011 	jreq	00112$
      008FA2 A3 02 02         [ 2] 1012 	cpw	x, #0x0202
      008FA5 27 29            [ 1] 1013 	jreq	00112$
      008FA7 A3 02 01         [ 2] 1014 	cpw	x, #0x0201
      008FAA 27 24            [ 1] 1015 	jreq	00112$
      008FAC A3 03 10         [ 2] 1016 	cpw	x, #0x0310
      008FAF 27 1F            [ 1] 1017 	jreq	00112$
      008FB1 A3 03 04         [ 2] 1018 	cpw	x, #0x0304
      008FB4 27 1A            [ 1] 1019 	jreq	00112$
      008FB6 A3 03 02         [ 2] 1020 	cpw	x, #0x0302
      008FB9 27 15            [ 1] 1021 	jreq	00112$
      008FBB A3 03 01         [ 2] 1022 	cpw	x, #0x0301
      008FBE 27 10            [ 1] 1023 	jreq	00112$
      008FC0 89               [ 2] 1024 	pushw	x
      008FC1 4B AE            [ 1] 1025 	push	#0xae
      008FC3 4B 02            [ 1] 1026 	push	#0x02
      008FC5 4B 00            [ 1] 1027 	push	#0x00
      008FC7 4B 00            [ 1] 1028 	push	#0x00
      008FC9 AE 81 7A         [ 2] 1029 	ldw	x, #(___str_0+0)
      008FCC CD AA 54         [ 4] 1030 	call	_assert_failed
      008FCF 85               [ 2] 1031 	popw	x
      008FD0                       1032 00112$:
                                   1033 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 689: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
      008FD0 9E               [ 1] 1034 	ld	a, xh
                                   1035 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 691: switch (regindex)
      008FD1 A1 01            [ 1] 1036 	cp	a, #0x01
      008FD3 27 0A            [ 1] 1037 	jreq	00101$
      008FD5 A1 02            [ 1] 1038 	cp	a, #0x02
      008FD7 27 0D            [ 1] 1039 	jreq	00102$
      008FD9 A1 03            [ 1] 1040 	cp	a, #0x03
      008FDB 27 10            [ 1] 1041 	jreq	00103$
      008FDD 20 13            [ 2] 1042 	jra	00105$
                                   1043 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 694: case 0x01:
      008FDF                       1044 00101$:
                                   1045 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 695: tempreg = (uint8_t)I2C->SR1;
      008FDF C6 52 17         [ 1] 1046 	ld	a, 0x5217
      008FE2 6B 01            [ 1] 1047 	ld	(0x01, sp), a
                                   1048 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 696: break;
      008FE4 20 0C            [ 2] 1049 	jra	00105$
                                   1050 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 699: case 0x02:
      008FE6                       1051 00102$:
                                   1052 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 700: tempreg = (uint8_t)I2C->SR2;
      008FE6 C6 52 18         [ 1] 1053 	ld	a, 0x5218
      008FE9 6B 01            [ 1] 1054 	ld	(0x01, sp), a
                                   1055 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 701: break;
      008FEB 20 05            [ 2] 1056 	jra	00105$
                                   1057 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 704: case 0x03:
      008FED                       1058 00103$:
                                   1059 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 705: tempreg = (uint8_t)I2C->SR3;
      008FED C6 52 19         [ 1] 1060 	ld	a, 0x5219
      008FF0 6B 01            [ 1] 1061 	ld	(0x01, sp), a
                                   1062 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 710: }
      008FF2                       1063 00105$:
                                   1064 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 713: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
      008FF2 7B 03            [ 1] 1065 	ld	a, (0x03, sp)
      008FF4 14 01            [ 1] 1066 	and	a, (0x01, sp)
      008FF6 27 03            [ 1] 1067 	jreq	00107$
                                   1068 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 716: bitstatus = SET;
      008FF8 A6 01            [ 1] 1069 	ld	a, #0x01
                                   1070 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 721: bitstatus = RESET;
      008FFA 21                    1071 	.byte 0x21
      008FFB                       1072 00107$:
      008FFB 4F               [ 1] 1073 	clr	a
      008FFC                       1074 00108$:
                                   1075 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 724: return bitstatus;
                                   1076 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 725: }
      008FFC 5B 03            [ 2] 1077 	addw	sp, #3
      008FFE 81               [ 4] 1078 	ret
                                   1079 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 759: void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
                                   1080 ;	-----------------------------------------
                                   1081 ;	 function I2C_ClearFlag
                                   1082 ;	-----------------------------------------
      008FFF                       1083 _I2C_ClearFlag:
                                   1084 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 763: assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
      008FFF 9E               [ 1] 1085 	ld	a, xh
      009000 A5 FD            [ 1] 1086 	bcp	a, #0xfd
      009002 26 03            [ 1] 1087 	jrne	00103$
      009004 5D               [ 2] 1088 	tnzw	x
      009005 26 10            [ 1] 1089 	jrne	00104$
      009007                       1090 00103$:
      009007 89               [ 2] 1091 	pushw	x
      009008 4B FB            [ 1] 1092 	push	#0xfb
      00900A 4B 02            [ 1] 1093 	push	#0x02
      00900C 4B 00            [ 1] 1094 	push	#0x00
      00900E 4B 00            [ 1] 1095 	push	#0x00
      009010 AE 81 7A         [ 2] 1096 	ldw	x, #(___str_0+0)
      009013 CD AA 54         [ 4] 1097 	call	_assert_failed
      009016 85               [ 2] 1098 	popw	x
      009017                       1099 00104$:
                                   1100 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 766: flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
      009017 4F               [ 1] 1101 	clr	a
      009018 95               [ 1] 1102 	ld	xh, a
                                   1103 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 768: I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
      009019 53               [ 2] 1104 	cplw	x
      00901A 9F               [ 1] 1105 	ld	a, xl
      00901B C7 52 18         [ 1] 1106 	ld	0x5218, a
                                   1107 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 769: }
      00901E 81               [ 4] 1108 	ret
                                   1109 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 791: ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
                                   1110 ;	-----------------------------------------
                                   1111 ;	 function I2C_GetITStatus
                                   1112 ;	-----------------------------------------
      00901F                       1113 _I2C_GetITStatus:
      00901F 52 06            [ 2] 1114 	sub	sp, #6
      009021 1F 05            [ 2] 1115 	ldw	(0x05, sp), x
                                   1116 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 794: __IO uint8_t enablestatus = 0;
      009023 0F 03            [ 1] 1117 	clr	(0x03, sp)
                                   1118 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 798: assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
      009025 1E 05            [ 2] 1119 	ldw	x, (0x05, sp)
      009027 A3 16 80         [ 2] 1120 	cpw	x, #0x1680
      00902A 27 47            [ 1] 1121 	jreq	00115$
      00902C A3 16 40         [ 2] 1122 	cpw	x, #0x1640
      00902F 27 42            [ 1] 1123 	jreq	00115$
      009031 A3 12 10         [ 2] 1124 	cpw	x, #0x1210
      009034 27 3D            [ 1] 1125 	jreq	00115$
      009036 A3 12 08         [ 2] 1126 	cpw	x, #0x1208
      009039 27 38            [ 1] 1127 	jreq	00115$
      00903B A3 12 04         [ 2] 1128 	cpw	x, #0x1204
      00903E 27 33            [ 1] 1129 	jreq	00115$
      009040 A3 12 02         [ 2] 1130 	cpw	x, #0x1202
      009043 27 2E            [ 1] 1131 	jreq	00115$
      009045 A3 12 01         [ 2] 1132 	cpw	x, #0x1201
      009048 27 29            [ 1] 1133 	jreq	00115$
      00904A A3 22 20         [ 2] 1134 	cpw	x, #0x2220
      00904D 27 24            [ 1] 1135 	jreq	00115$
      00904F A3 21 08         [ 2] 1136 	cpw	x, #0x2108
      009052 27 1F            [ 1] 1137 	jreq	00115$
      009054 A3 21 04         [ 2] 1138 	cpw	x, #0x2104
      009057 27 1A            [ 1] 1139 	jreq	00115$
      009059 A3 21 02         [ 2] 1140 	cpw	x, #0x2102
      00905C 27 15            [ 1] 1141 	jreq	00115$
      00905E A3 21 01         [ 2] 1142 	cpw	x, #0x2101
      009061 27 10            [ 1] 1143 	jreq	00115$
      009063 89               [ 2] 1144 	pushw	x
      009064 4B 1E            [ 1] 1145 	push	#0x1e
      009066 4B 03            [ 1] 1146 	push	#0x03
      009068 4B 00            [ 1] 1147 	push	#0x00
      00906A 4B 00            [ 1] 1148 	push	#0x00
      00906C AE 81 7A         [ 2] 1149 	ldw	x, #(___str_0+0)
      00906F CD AA 54         [ 4] 1150 	call	_assert_failed
      009072 85               [ 2] 1151 	popw	x
      009073                       1152 00115$:
                                   1153 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 800: tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
      009073 0F 02            [ 1] 1154 	clr	(0x02, sp)
      009075 9E               [ 1] 1155 	ld	a, xh
      009076 A4 07            [ 1] 1156 	and	a, #0x07
      009078 6B 04            [ 1] 1157 	ld	(0x04, sp), a
                                   1158 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 803: enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
      00907A C6 52 1A         [ 1] 1159 	ld	a, 0x521a
      00907D 14 04            [ 1] 1160 	and	a, (0x04, sp)
      00907F 6B 03            [ 1] 1161 	ld	(0x03, sp), a
                                   1162 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 805: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
      009081 4F               [ 1] 1163 	clr	a
      009082 02               [ 1] 1164 	rlwa	x
      009083 A4 30            [ 1] 1165 	and	a, #0x30
      009085 95               [ 1] 1166 	ld	xh, a
                                   1167 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 808: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      009086 7B 06            [ 1] 1168 	ld	a, (0x06, sp)
      009088 6B 04            [ 1] 1169 	ld	(0x04, sp), a
                                   1170 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 805: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
      00908A A3 01 00         [ 2] 1171 	cpw	x, #0x0100
      00908D 26 12            [ 1] 1172 	jrne	00110$
                                   1173 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 808: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      00908F C6 52 17         [ 1] 1174 	ld	a, 0x5217
      009092 14 04            [ 1] 1175 	and	a, (0x04, sp)
      009094 27 08            [ 1] 1176 	jreq	00102$
      009096 0D 03            [ 1] 1177 	tnz	(0x03, sp)
      009098 27 04            [ 1] 1178 	jreq	00102$
                                   1179 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 811: bitstatus = SET;
      00909A A6 01            [ 1] 1180 	ld	a, #0x01
      00909C 20 12            [ 2] 1181 	jra	00111$
      00909E                       1182 00102$:
                                   1183 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 816: bitstatus = RESET;
      00909E 4F               [ 1] 1184 	clr	a
      00909F 20 0F            [ 2] 1185 	jra	00111$
      0090A1                       1186 00110$:
                                   1187 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 822: if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      0090A1 C6 52 18         [ 1] 1188 	ld	a, 0x5218
      0090A4 14 04            [ 1] 1189 	and	a, (0x04, sp)
      0090A6 27 07            [ 1] 1190 	jreq	00106$
      0090A8 0D 03            [ 1] 1191 	tnz	(0x03, sp)
      0090AA 27 03            [ 1] 1192 	jreq	00106$
                                   1193 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 825: bitstatus = SET;
      0090AC A6 01            [ 1] 1194 	ld	a, #0x01
                                   1195 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 830: bitstatus = RESET;
      0090AE 21                    1196 	.byte 0x21
      0090AF                       1197 00106$:
      0090AF 4F               [ 1] 1198 	clr	a
      0090B0                       1199 00111$:
                                   1200 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 834: return  bitstatus;
                                   1201 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 835: }
      0090B0 5B 06            [ 2] 1202 	addw	sp, #6
      0090B2 81               [ 4] 1203 	ret
                                   1204 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 871: void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
                                   1205 ;	-----------------------------------------
                                   1206 ;	 function I2C_ClearITPendingBit
                                   1207 ;	-----------------------------------------
      0090B3                       1208 _I2C_ClearITPendingBit:
                                   1209 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 876: assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
      0090B3 A3 22 20         [ 2] 1210 	cpw	x, #0x2220
      0090B6 27 24            [ 1] 1211 	jreq	00104$
      0090B8 A3 21 08         [ 2] 1212 	cpw	x, #0x2108
      0090BB 27 1F            [ 1] 1213 	jreq	00104$
      0090BD A3 21 04         [ 2] 1214 	cpw	x, #0x2104
      0090C0 27 1A            [ 1] 1215 	jreq	00104$
      0090C2 A3 21 02         [ 2] 1216 	cpw	x, #0x2102
      0090C5 27 15            [ 1] 1217 	jreq	00104$
      0090C7 A3 21 01         [ 2] 1218 	cpw	x, #0x2101
      0090CA 27 10            [ 1] 1219 	jreq	00104$
      0090CC 89               [ 2] 1220 	pushw	x
      0090CD 4B 6C            [ 1] 1221 	push	#0x6c
      0090CF 4B 03            [ 1] 1222 	push	#0x03
      0090D1 4B 00            [ 1] 1223 	push	#0x00
      0090D3 4B 00            [ 1] 1224 	push	#0x00
      0090D5 AE 81 7A         [ 2] 1225 	ldw	x, #(___str_0+0)
      0090D8 CD AA 54         [ 4] 1226 	call	_assert_failed
      0090DB 85               [ 2] 1227 	popw	x
      0090DC                       1228 00104$:
                                   1229 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 879: flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
      0090DC 4F               [ 1] 1230 	clr	a
      0090DD 95               [ 1] 1231 	ld	xh, a
                                   1232 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 882: I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
      0090DE 53               [ 2] 1233 	cplw	x
      0090DF 9F               [ 1] 1234 	ld	a, xl
      0090E0 C7 52 18         [ 1] 1235 	ld	0x5218, a
                                   1236 ;	/Users/alekseydunaev/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_i2c.c: 883: }
      0090E3 81               [ 4] 1237 	ret
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
