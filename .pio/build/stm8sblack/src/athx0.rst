                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module athx0
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ATHX0ConverHumidity
                                     12 	.globl _ATHX0ConvertTemperature
                                     13 ;--------------------------------------------------------
                                     14 ; ram data
                                     15 ;--------------------------------------------------------
                                     16 	.area DATA
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area INITIALIZED
                                     21 ;--------------------------------------------------------
                                     22 ; absolute external ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DABS (ABS)
                                     25 
                                     26 ; default segment ordering for linker
                                     27 	.area HOME
                                     28 	.area GSINIT
                                     29 	.area GSFINAL
                                     30 	.area CONST
                                     31 	.area INITIALIZER
                                     32 	.area CODE
                                     33 
                                     34 ;--------------------------------------------------------
                                     35 ; global & static initialisations
                                     36 ;--------------------------------------------------------
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area GSINIT
                                     41 ;--------------------------------------------------------
                                     42 ; Home
                                     43 ;--------------------------------------------------------
                                     44 	.area HOME
                                     45 	.area HOME
                                     46 ;--------------------------------------------------------
                                     47 ; code
                                     48 ;--------------------------------------------------------
                                     49 	.area CODE
                                     50 ;	src/athx0.c: 3: float ATHX0ConverHumidity(uint8_t *Buf) {
                                     51 ;	-----------------------------------------
                                     52 ;	 function ATHX0ConverHumidity
                                     53 ;	-----------------------------------------
      009A89                         54 _ATHX0ConverHumidity:
      009A89 52 06            [ 2]   55 	sub	sp, #6
                                     56 ;	src/athx0.c: 5: fAHTX0Humidity = Buf[1];
      009A8B 1F 05            [ 2]   57 	ldw	(0x05, sp), x
      009A8D E6 01            [ 1]   58 	ld	a, (0x1, x)
      009A8F CD B5 4D         [ 4]   59 	call	___uchar2fs
                                     60 ;	src/athx0.c: 6: fAHTX0Humidity *= 256;
      009A92 89               [ 2]   61 	pushw	x
      009A93 90 89            [ 2]   62 	pushw	y
      009A95 5F               [ 1]   63 	clrw	x
      009A96 89               [ 2]   64 	pushw	x
      009A97 4B 80            [ 1]   65 	push	#0x80
      009A99 4B 43            [ 1]   66 	push	#0x43
      009A9B CD AC 41         [ 4]   67 	call	___fsmul
      009A9E 1F 03            [ 2]   68 	ldw	(0x03, sp), x
      009AA0 17 01            [ 2]   69 	ldw	(0x01, sp), y
                                     70 ;	src/athx0.c: 7: fAHTX0Humidity += Buf[2];
      009AA2 1E 05            [ 2]   71 	ldw	x, (0x05, sp)
      009AA4 E6 02            [ 1]   72 	ld	a, (0x2, x)
      009AA6 5F               [ 1]   73 	clrw	x
      009AA7 97               [ 1]   74 	ld	xl, a
      009AA8 CD B2 3A         [ 4]   75 	call	___sint2fs
      009AAB 89               [ 2]   76 	pushw	x
      009AAC 90 89            [ 2]   77 	pushw	y
      009AAE 1E 07            [ 2]   78 	ldw	x, (0x07, sp)
      009AB0 89               [ 2]   79 	pushw	x
      009AB1 1E 07            [ 2]   80 	ldw	x, (0x07, sp)
      009AB3 89               [ 2]   81 	pushw	x
      009AB4 CD AF 60         [ 4]   82 	call	___fsadd
                                     83 ;	src/athx0.c: 8: fAHTX0Humidity *= 16;
      009AB7 89               [ 2]   84 	pushw	x
      009AB8 90 89            [ 2]   85 	pushw	y
      009ABA 5F               [ 1]   86 	clrw	x
      009ABB 89               [ 2]   87 	pushw	x
      009ABC 4B 80            [ 1]   88 	push	#0x80
      009ABE 4B 41            [ 1]   89 	push	#0x41
      009AC0 CD AC 41         [ 4]   90 	call	___fsmul
      009AC3 1F 03            [ 2]   91 	ldw	(0x03, sp), x
      009AC5 17 01            [ 2]   92 	ldw	(0x01, sp), y
                                     93 ;	src/athx0.c: 9: fAHTX0Humidity += (Buf[3]>>4);
      009AC7 1E 05            [ 2]   94 	ldw	x, (0x05, sp)
      009AC9 E6 03            [ 1]   95 	ld	a, (0x3, x)
      009ACB 4E               [ 1]   96 	swap	a
      009ACC A4 0F            [ 1]   97 	and	a, #0x0f
      009ACE 5F               [ 1]   98 	clrw	x
      009ACF 97               [ 1]   99 	ld	xl, a
      009AD0 CD B2 3A         [ 4]  100 	call	___sint2fs
      009AD3 89               [ 2]  101 	pushw	x
      009AD4 90 89            [ 2]  102 	pushw	y
      009AD6 1E 07            [ 2]  103 	ldw	x, (0x07, sp)
      009AD8 89               [ 2]  104 	pushw	x
      009AD9 1E 07            [ 2]  105 	ldw	x, (0x07, sp)
      009ADB 89               [ 2]  106 	pushw	x
      009ADC CD AF 60         [ 4]  107 	call	___fsadd
                                    108 ;	src/athx0.c: 11: fAHTX0Humidity /= 1048576;
      009ADF 4B 00            [ 1]  109 	push	#0x00
      009AE1 4B 00            [ 1]  110 	push	#0x00
      009AE3 4B 80            [ 1]  111 	push	#0x80
      009AE5 4B 49            [ 1]  112 	push	#0x49
      009AE7 89               [ 2]  113 	pushw	x
      009AE8 90 89            [ 2]  114 	pushw	y
      009AEA CD B4 B3         [ 4]  115 	call	___fsdiv
                                    116 ;	src/athx0.c: 12: fAHTX0Humidity *= 100;
      009AED 89               [ 2]  117 	pushw	x
      009AEE 90 89            [ 2]  118 	pushw	y
      009AF0 5F               [ 1]  119 	clrw	x
      009AF1 89               [ 2]  120 	pushw	x
      009AF2 4B C8            [ 1]  121 	push	#0xc8
      009AF4 4B 42            [ 1]  122 	push	#0x42
      009AF6 CD AC 41         [ 4]  123 	call	___fsmul
                                    124 ;	src/athx0.c: 14: return fAHTX0Humidity;
                                    125 ;	src/athx0.c: 15: }
      009AF9 5B 06            [ 2]  126 	addw	sp, #6
      009AFB 81               [ 4]  127 	ret
                                    128 ;	src/athx0.c: 17: float ATHX0ConvertTemperature(uint8_t *Buf) {
                                    129 ;	-----------------------------------------
                                    130 ;	 function ATHX0ConvertTemperature
                                    131 ;	-----------------------------------------
      009AFC                        132 _ATHX0ConvertTemperature:
      009AFC 52 06            [ 2]  133 	sub	sp, #6
                                    134 ;	src/athx0.c: 19: fAHTX0Temperature = (Buf[3] & 0x0f);
      009AFE 1F 05            [ 2]  135 	ldw	(0x05, sp), x
      009B00 E6 03            [ 1]  136 	ld	a, (0x3, x)
      009B02 A4 0F            [ 1]  137 	and	a, #0x0f
      009B04 97               [ 1]  138 	ld	xl, a
      009B05 4F               [ 1]  139 	clr	a
      009B06 95               [ 1]  140 	ld	xh, a
      009B07 CD B2 3A         [ 4]  141 	call	___sint2fs
                                    142 ;	src/athx0.c: 20: fAHTX0Temperature *= 256;
      009B0A 89               [ 2]  143 	pushw	x
      009B0B 90 89            [ 2]  144 	pushw	y
      009B0D 5F               [ 1]  145 	clrw	x
      009B0E 89               [ 2]  146 	pushw	x
      009B0F 4B 80            [ 1]  147 	push	#0x80
      009B11 4B 43            [ 1]  148 	push	#0x43
      009B13 CD AC 41         [ 4]  149 	call	___fsmul
      009B16 1F 03            [ 2]  150 	ldw	(0x03, sp), x
      009B18 17 01            [ 2]  151 	ldw	(0x01, sp), y
                                    152 ;	src/athx0.c: 21: fAHTX0Temperature += Buf[4];
      009B1A 1E 05            [ 2]  153 	ldw	x, (0x05, sp)
      009B1C E6 04            [ 1]  154 	ld	a, (0x4, x)
      009B1E 5F               [ 1]  155 	clrw	x
      009B1F 97               [ 1]  156 	ld	xl, a
      009B20 CD B2 3A         [ 4]  157 	call	___sint2fs
      009B23 89               [ 2]  158 	pushw	x
      009B24 90 89            [ 2]  159 	pushw	y
      009B26 1E 07            [ 2]  160 	ldw	x, (0x07, sp)
      009B28 89               [ 2]  161 	pushw	x
      009B29 1E 07            [ 2]  162 	ldw	x, (0x07, sp)
      009B2B 89               [ 2]  163 	pushw	x
      009B2C CD AF 60         [ 4]  164 	call	___fsadd
                                    165 ;	src/athx0.c: 22: fAHTX0Temperature *= 256;
      009B2F 89               [ 2]  166 	pushw	x
      009B30 90 89            [ 2]  167 	pushw	y
      009B32 5F               [ 1]  168 	clrw	x
      009B33 89               [ 2]  169 	pushw	x
      009B34 4B 80            [ 1]  170 	push	#0x80
      009B36 4B 43            [ 1]  171 	push	#0x43
      009B38 CD AC 41         [ 4]  172 	call	___fsmul
      009B3B 1F 03            [ 2]  173 	ldw	(0x03, sp), x
      009B3D 17 01            [ 2]  174 	ldw	(0x01, sp), y
                                    175 ;	src/athx0.c: 23: fAHTX0Temperature += Buf[5];
      009B3F 1E 05            [ 2]  176 	ldw	x, (0x05, sp)
      009B41 E6 05            [ 1]  177 	ld	a, (0x5, x)
      009B43 5F               [ 1]  178 	clrw	x
      009B44 97               [ 1]  179 	ld	xl, a
      009B45 CD B2 3A         [ 4]  180 	call	___sint2fs
      009B48 89               [ 2]  181 	pushw	x
      009B49 90 89            [ 2]  182 	pushw	y
      009B4B 1E 07            [ 2]  183 	ldw	x, (0x07, sp)
      009B4D 89               [ 2]  184 	pushw	x
      009B4E 1E 07            [ 2]  185 	ldw	x, (0x07, sp)
      009B50 89               [ 2]  186 	pushw	x
      009B51 CD AF 60         [ 4]  187 	call	___fsadd
                                    188 ;	src/athx0.c: 25: fAHTX0Temperature /= 1048576;
      009B54 4B 00            [ 1]  189 	push	#0x00
      009B56 4B 00            [ 1]  190 	push	#0x00
      009B58 4B 80            [ 1]  191 	push	#0x80
      009B5A 4B 49            [ 1]  192 	push	#0x49
      009B5C 89               [ 2]  193 	pushw	x
      009B5D 90 89            [ 2]  194 	pushw	y
      009B5F CD B4 B3         [ 4]  195 	call	___fsdiv
                                    196 ;	src/athx0.c: 26: fAHTX0Temperature = fAHTX0Temperature * 200 - 50;
      009B62 89               [ 2]  197 	pushw	x
      009B63 90 89            [ 2]  198 	pushw	y
      009B65 5F               [ 1]  199 	clrw	x
      009B66 89               [ 2]  200 	pushw	x
      009B67 4B 48            [ 1]  201 	push	#0x48
      009B69 4B 43            [ 1]  202 	push	#0x43
      009B6B CD AC 41         [ 4]  203 	call	___fsmul
      009B6E 4B 00            [ 1]  204 	push	#0x00
      009B70 4B 00            [ 1]  205 	push	#0x00
      009B72 4B 48            [ 1]  206 	push	#0x48
      009B74 4B 42            [ 1]  207 	push	#0x42
      009B76 89               [ 2]  208 	pushw	x
      009B77 90 89            [ 2]  209 	pushw	y
      009B79 CD AB AD         [ 4]  210 	call	___fssub
                                    211 ;	src/athx0.c: 28: return fAHTX0Temperature;
                                    212 ;	src/athx0.c: 29: }
      009B7C 5B 06            [ 2]  213 	addw	sp, #6
      009B7E 81               [ 4]  214 	ret
                                    215 	.area CODE
                                    216 	.area CONST
                                    217 	.area INITIALIZER
                                    218 	.area CABS (ABS)
