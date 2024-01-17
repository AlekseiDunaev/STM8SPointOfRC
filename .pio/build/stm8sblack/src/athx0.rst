                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
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
                                     50 ;	src\athx0.c: 3: float ATHX0ConverHumidity(uint8_t *Buf) {
                                     51 ;	-----------------------------------------
                                     52 ;	 function ATHX0ConverHumidity
                                     53 ;	-----------------------------------------
      0099D5                         54 _ATHX0ConverHumidity:
      0099D5 52 06            [ 2]   55 	sub	sp, #6
                                     56 ;	src\athx0.c: 5: fAHTX0Humidity = Buf[1];
      0099D7 1F 05            [ 2]   57 	ldw	(0x05, sp), x
      0099D9 E6 01            [ 1]   58 	ld	a, (0x1, x)
      0099DB CD BB 3A         [ 4]   59 	call	___uchar2fs
                                     60 ;	src\athx0.c: 6: fAHTX0Humidity *= 256;
      0099DE 89               [ 2]   61 	pushw	x
      0099DF 90 89            [ 2]   62 	pushw	y
      0099E1 5F               [ 1]   63 	clrw	x
      0099E2 89               [ 2]   64 	pushw	x
      0099E3 4B 80            [ 1]   65 	push	#0x80
      0099E5 4B 43            [ 1]   66 	push	#0x43
      0099E7 CD B1 34         [ 4]   67 	call	___fsmul
      0099EA 1F 03            [ 2]   68 	ldw	(0x03, sp), x
      0099EC 17 01            [ 2]   69 	ldw	(0x01, sp), y
                                     70 ;	src\athx0.c: 7: fAHTX0Humidity += Buf[2];
      0099EE 1E 05            [ 2]   71 	ldw	x, (0x05, sp)
      0099F0 E6 02            [ 1]   72 	ld	a, (0x2, x)
      0099F2 5F               [ 1]   73 	clrw	x
      0099F3 97               [ 1]   74 	ld	xl, a
      0099F4 CD B8 19         [ 4]   75 	call	___sint2fs
      0099F7 89               [ 2]   76 	pushw	x
      0099F8 90 89            [ 2]   77 	pushw	y
      0099FA 1E 07            [ 2]   78 	ldw	x, (0x07, sp)
      0099FC 89               [ 2]   79 	pushw	x
      0099FD 1E 07            [ 2]   80 	ldw	x, (0x07, sp)
      0099FF 89               [ 2]   81 	pushw	x
      009A00 CD B5 A7         [ 4]   82 	call	___fsadd
                                     83 ;	src\athx0.c: 8: fAHTX0Humidity *= 16;
      009A03 89               [ 2]   84 	pushw	x
      009A04 90 89            [ 2]   85 	pushw	y
      009A06 5F               [ 1]   86 	clrw	x
      009A07 89               [ 2]   87 	pushw	x
      009A08 4B 80            [ 1]   88 	push	#0x80
      009A0A 4B 41            [ 1]   89 	push	#0x41
      009A0C CD B1 34         [ 4]   90 	call	___fsmul
      009A0F 1F 03            [ 2]   91 	ldw	(0x03, sp), x
      009A11 17 01            [ 2]   92 	ldw	(0x01, sp), y
                                     93 ;	src\athx0.c: 9: fAHTX0Humidity += (Buf[3]>>4);
      009A13 1E 05            [ 2]   94 	ldw	x, (0x05, sp)
      009A15 E6 03            [ 1]   95 	ld	a, (0x3, x)
      009A17 4E               [ 1]   96 	swap	a
      009A18 A4 0F            [ 1]   97 	and	a, #0x0f
      009A1A 5F               [ 1]   98 	clrw	x
      009A1B 97               [ 1]   99 	ld	xl, a
      009A1C CD B8 19         [ 4]  100 	call	___sint2fs
      009A1F 89               [ 2]  101 	pushw	x
      009A20 90 89            [ 2]  102 	pushw	y
      009A22 1E 07            [ 2]  103 	ldw	x, (0x07, sp)
      009A24 89               [ 2]  104 	pushw	x
      009A25 1E 07            [ 2]  105 	ldw	x, (0x07, sp)
      009A27 89               [ 2]  106 	pushw	x
      009A28 CD B5 A7         [ 4]  107 	call	___fsadd
                                    108 ;	src\athx0.c: 11: fAHTX0Humidity /= 1048576;
      009A2B 4B 00            [ 1]  109 	push	#0x00
      009A2D 4B 00            [ 1]  110 	push	#0x00
      009A2F 4B 80            [ 1]  111 	push	#0x80
      009A31 4B 49            [ 1]  112 	push	#0x49
      009A33 89               [ 2]  113 	pushw	x
      009A34 90 89            [ 2]  114 	pushw	y
      009A36 CD BA C1         [ 4]  115 	call	___fsdiv
                                    116 ;	src\athx0.c: 12: fAHTX0Humidity *= 100;
      009A39 89               [ 2]  117 	pushw	x
      009A3A 90 89            [ 2]  118 	pushw	y
      009A3C 5F               [ 1]  119 	clrw	x
      009A3D 89               [ 2]  120 	pushw	x
      009A3E 4B C8            [ 1]  121 	push	#0xc8
      009A40 4B 42            [ 1]  122 	push	#0x42
      009A42 CD B1 34         [ 4]  123 	call	___fsmul
                                    124 ;	src\athx0.c: 14: return fAHTX0Humidity;
                                    125 ;	src\athx0.c: 15: }
      009A45 5B 06            [ 2]  126 	addw	sp, #6
      009A47 81               [ 4]  127 	ret
                                    128 ;	src\athx0.c: 17: float ATHX0ConvertTemperature(uint8_t *Buf) {
                                    129 ;	-----------------------------------------
                                    130 ;	 function ATHX0ConvertTemperature
                                    131 ;	-----------------------------------------
      009A48                        132 _ATHX0ConvertTemperature:
      009A48 52 06            [ 2]  133 	sub	sp, #6
                                    134 ;	src\athx0.c: 19: fAHTX0Temperature = (Buf[3] & 0x0f);
      009A4A 1F 05            [ 2]  135 	ldw	(0x05, sp), x
      009A4C E6 03            [ 1]  136 	ld	a, (0x3, x)
      009A4E A4 0F            [ 1]  137 	and	a, #0x0f
      009A50 97               [ 1]  138 	ld	xl, a
      009A51 4F               [ 1]  139 	clr	a
      009A52 95               [ 1]  140 	ld	xh, a
      009A53 CD B8 19         [ 4]  141 	call	___sint2fs
                                    142 ;	src\athx0.c: 20: fAHTX0Temperature *= 256;
      009A56 89               [ 2]  143 	pushw	x
      009A57 90 89            [ 2]  144 	pushw	y
      009A59 5F               [ 1]  145 	clrw	x
      009A5A 89               [ 2]  146 	pushw	x
      009A5B 4B 80            [ 1]  147 	push	#0x80
      009A5D 4B 43            [ 1]  148 	push	#0x43
      009A5F CD B1 34         [ 4]  149 	call	___fsmul
      009A62 1F 03            [ 2]  150 	ldw	(0x03, sp), x
      009A64 17 01            [ 2]  151 	ldw	(0x01, sp), y
                                    152 ;	src\athx0.c: 21: fAHTX0Temperature += Buf[4];
      009A66 1E 05            [ 2]  153 	ldw	x, (0x05, sp)
      009A68 E6 04            [ 1]  154 	ld	a, (0x4, x)
      009A6A 5F               [ 1]  155 	clrw	x
      009A6B 97               [ 1]  156 	ld	xl, a
      009A6C CD B8 19         [ 4]  157 	call	___sint2fs
      009A6F 89               [ 2]  158 	pushw	x
      009A70 90 89            [ 2]  159 	pushw	y
      009A72 1E 07            [ 2]  160 	ldw	x, (0x07, sp)
      009A74 89               [ 2]  161 	pushw	x
      009A75 1E 07            [ 2]  162 	ldw	x, (0x07, sp)
      009A77 89               [ 2]  163 	pushw	x
      009A78 CD B5 A7         [ 4]  164 	call	___fsadd
                                    165 ;	src\athx0.c: 22: fAHTX0Temperature *= 256;
      009A7B 89               [ 2]  166 	pushw	x
      009A7C 90 89            [ 2]  167 	pushw	y
      009A7E 5F               [ 1]  168 	clrw	x
      009A7F 89               [ 2]  169 	pushw	x
      009A80 4B 80            [ 1]  170 	push	#0x80
      009A82 4B 43            [ 1]  171 	push	#0x43
      009A84 CD B1 34         [ 4]  172 	call	___fsmul
      009A87 1F 03            [ 2]  173 	ldw	(0x03, sp), x
      009A89 17 01            [ 2]  174 	ldw	(0x01, sp), y
                                    175 ;	src\athx0.c: 23: fAHTX0Temperature += Buf[5];
      009A8B 1E 05            [ 2]  176 	ldw	x, (0x05, sp)
      009A8D E6 05            [ 1]  177 	ld	a, (0x5, x)
      009A8F 5F               [ 1]  178 	clrw	x
      009A90 97               [ 1]  179 	ld	xl, a
      009A91 CD B8 19         [ 4]  180 	call	___sint2fs
      009A94 89               [ 2]  181 	pushw	x
      009A95 90 89            [ 2]  182 	pushw	y
      009A97 1E 07            [ 2]  183 	ldw	x, (0x07, sp)
      009A99 89               [ 2]  184 	pushw	x
      009A9A 1E 07            [ 2]  185 	ldw	x, (0x07, sp)
      009A9C 89               [ 2]  186 	pushw	x
      009A9D CD B5 A7         [ 4]  187 	call	___fsadd
                                    188 ;	src\athx0.c: 25: fAHTX0Temperature /= 1048576;
      009AA0 4B 00            [ 1]  189 	push	#0x00
      009AA2 4B 00            [ 1]  190 	push	#0x00
      009AA4 4B 80            [ 1]  191 	push	#0x80
      009AA6 4B 49            [ 1]  192 	push	#0x49
      009AA8 89               [ 2]  193 	pushw	x
      009AA9 90 89            [ 2]  194 	pushw	y
      009AAB CD BA C1         [ 4]  195 	call	___fsdiv
                                    196 ;	src\athx0.c: 26: fAHTX0Temperature = fAHTX0Temperature * 200 - 50;
      009AAE 89               [ 2]  197 	pushw	x
      009AAF 90 89            [ 2]  198 	pushw	y
      009AB1 5F               [ 1]  199 	clrw	x
      009AB2 89               [ 2]  200 	pushw	x
      009AB3 4B 48            [ 1]  201 	push	#0x48
      009AB5 4B 43            [ 1]  202 	push	#0x43
      009AB7 CD B1 34         [ 4]  203 	call	___fsmul
      009ABA 4B 00            [ 1]  204 	push	#0x00
      009ABC 4B 00            [ 1]  205 	push	#0x00
      009ABE 4B 48            [ 1]  206 	push	#0x48
      009AC0 4B 42            [ 1]  207 	push	#0x42
      009AC2 89               [ 2]  208 	pushw	x
      009AC3 90 89            [ 2]  209 	pushw	y
      009AC5 CD B0 A0         [ 4]  210 	call	___fssub
                                    211 ;	src\athx0.c: 28: return fAHTX0Temperature;
                                    212 ;	src\athx0.c: 29: }
      009AC8 5B 06            [ 2]  213 	addw	sp, #6
      009ACA 81               [ 4]  214 	ret
                                    215 	.area CODE
                                    216 	.area CONST
                                    217 	.area INITIALIZER
                                    218 	.area CABS (ABS)
