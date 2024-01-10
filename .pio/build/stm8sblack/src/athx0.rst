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
      00998F                         54 _ATHX0ConverHumidity:
      00998F 52 06            [ 2]   55 	sub	sp, #6
                                     56 ;	src\athx0.c: 5: fAHTX0Humidity = Buf[1];
      009991 1F 05            [ 2]   57 	ldw	(0x05, sp), x
      009993 E6 01            [ 1]   58 	ld	a, (0x1, x)
      009995 CD B5 91         [ 4]   59 	call	___uchar2fs
                                     60 ;	src\athx0.c: 6: fAHTX0Humidity *= 256;
      009998 89               [ 2]   61 	pushw	x
      009999 90 89            [ 2]   62 	pushw	y
      00999B 5F               [ 1]   63 	clrw	x
      00999C 89               [ 2]   64 	pushw	x
      00999D 4B 80            [ 1]   65 	push	#0x80
      00999F 4B 43            [ 1]   66 	push	#0x43
      0099A1 CD AB DE         [ 4]   67 	call	___fsmul
      0099A4 1F 03            [ 2]   68 	ldw	(0x03, sp), x
      0099A6 17 01            [ 2]   69 	ldw	(0x01, sp), y
                                     70 ;	src\athx0.c: 7: fAHTX0Humidity += Buf[2];
      0099A8 1E 05            [ 2]   71 	ldw	x, (0x05, sp)
      0099AA E6 02            [ 1]   72 	ld	a, (0x2, x)
      0099AC 5F               [ 1]   73 	clrw	x
      0099AD 97               [ 1]   74 	ld	xl, a
      0099AE CD B2 C3         [ 4]   75 	call	___sint2fs
      0099B1 89               [ 2]   76 	pushw	x
      0099B2 90 89            [ 2]   77 	pushw	y
      0099B4 1E 07            [ 2]   78 	ldw	x, (0x07, sp)
      0099B6 89               [ 2]   79 	pushw	x
      0099B7 1E 07            [ 2]   80 	ldw	x, (0x07, sp)
      0099B9 89               [ 2]   81 	pushw	x
      0099BA CD B0 51         [ 4]   82 	call	___fsadd
                                     83 ;	src\athx0.c: 8: fAHTX0Humidity *= 16;
      0099BD 89               [ 2]   84 	pushw	x
      0099BE 90 89            [ 2]   85 	pushw	y
      0099C0 5F               [ 1]   86 	clrw	x
      0099C1 89               [ 2]   87 	pushw	x
      0099C2 4B 80            [ 1]   88 	push	#0x80
      0099C4 4B 41            [ 1]   89 	push	#0x41
      0099C6 CD AB DE         [ 4]   90 	call	___fsmul
      0099C9 1F 03            [ 2]   91 	ldw	(0x03, sp), x
      0099CB 17 01            [ 2]   92 	ldw	(0x01, sp), y
                                     93 ;	src\athx0.c: 9: fAHTX0Humidity += (Buf[3]>>4);
      0099CD 1E 05            [ 2]   94 	ldw	x, (0x05, sp)
      0099CF E6 03            [ 1]   95 	ld	a, (0x3, x)
      0099D1 4E               [ 1]   96 	swap	a
      0099D2 A4 0F            [ 1]   97 	and	a, #0x0f
      0099D4 5F               [ 1]   98 	clrw	x
      0099D5 97               [ 1]   99 	ld	xl, a
      0099D6 CD B2 C3         [ 4]  100 	call	___sint2fs
      0099D9 89               [ 2]  101 	pushw	x
      0099DA 90 89            [ 2]  102 	pushw	y
      0099DC 1E 07            [ 2]  103 	ldw	x, (0x07, sp)
      0099DE 89               [ 2]  104 	pushw	x
      0099DF 1E 07            [ 2]  105 	ldw	x, (0x07, sp)
      0099E1 89               [ 2]  106 	pushw	x
      0099E2 CD B0 51         [ 4]  107 	call	___fsadd
                                    108 ;	src\athx0.c: 11: fAHTX0Humidity /= 1048576;
      0099E5 4B 00            [ 1]  109 	push	#0x00
      0099E7 4B 00            [ 1]  110 	push	#0x00
      0099E9 4B 80            [ 1]  111 	push	#0x80
      0099EB 4B 49            [ 1]  112 	push	#0x49
      0099ED 89               [ 2]  113 	pushw	x
      0099EE 90 89            [ 2]  114 	pushw	y
      0099F0 CD B5 18         [ 4]  115 	call	___fsdiv
                                    116 ;	src\athx0.c: 12: fAHTX0Humidity *= 100;
      0099F3 89               [ 2]  117 	pushw	x
      0099F4 90 89            [ 2]  118 	pushw	y
      0099F6 5F               [ 1]  119 	clrw	x
      0099F7 89               [ 2]  120 	pushw	x
      0099F8 4B C8            [ 1]  121 	push	#0xc8
      0099FA 4B 42            [ 1]  122 	push	#0x42
      0099FC CD AB DE         [ 4]  123 	call	___fsmul
                                    124 ;	src\athx0.c: 14: return fAHTX0Humidity;
                                    125 ;	src\athx0.c: 15: }
      0099FF 5B 06            [ 2]  126 	addw	sp, #6
      009A01 81               [ 4]  127 	ret
                                    128 ;	src\athx0.c: 17: float ATHX0ConvertTemperature(uint8_t *Buf) {
                                    129 ;	-----------------------------------------
                                    130 ;	 function ATHX0ConvertTemperature
                                    131 ;	-----------------------------------------
      009A02                        132 _ATHX0ConvertTemperature:
      009A02 52 06            [ 2]  133 	sub	sp, #6
                                    134 ;	src\athx0.c: 19: fAHTX0Temperature = (Buf[3] & 0x0f);
      009A04 1F 05            [ 2]  135 	ldw	(0x05, sp), x
      009A06 E6 03            [ 1]  136 	ld	a, (0x3, x)
      009A08 A4 0F            [ 1]  137 	and	a, #0x0f
      009A0A 97               [ 1]  138 	ld	xl, a
      009A0B 4F               [ 1]  139 	clr	a
      009A0C 95               [ 1]  140 	ld	xh, a
      009A0D CD B2 C3         [ 4]  141 	call	___sint2fs
                                    142 ;	src\athx0.c: 20: fAHTX0Temperature *= 256;
      009A10 89               [ 2]  143 	pushw	x
      009A11 90 89            [ 2]  144 	pushw	y
      009A13 5F               [ 1]  145 	clrw	x
      009A14 89               [ 2]  146 	pushw	x
      009A15 4B 80            [ 1]  147 	push	#0x80
      009A17 4B 43            [ 1]  148 	push	#0x43
      009A19 CD AB DE         [ 4]  149 	call	___fsmul
      009A1C 1F 03            [ 2]  150 	ldw	(0x03, sp), x
      009A1E 17 01            [ 2]  151 	ldw	(0x01, sp), y
                                    152 ;	src\athx0.c: 21: fAHTX0Temperature += Buf[4];
      009A20 1E 05            [ 2]  153 	ldw	x, (0x05, sp)
      009A22 E6 04            [ 1]  154 	ld	a, (0x4, x)
      009A24 5F               [ 1]  155 	clrw	x
      009A25 97               [ 1]  156 	ld	xl, a
      009A26 CD B2 C3         [ 4]  157 	call	___sint2fs
      009A29 89               [ 2]  158 	pushw	x
      009A2A 90 89            [ 2]  159 	pushw	y
      009A2C 1E 07            [ 2]  160 	ldw	x, (0x07, sp)
      009A2E 89               [ 2]  161 	pushw	x
      009A2F 1E 07            [ 2]  162 	ldw	x, (0x07, sp)
      009A31 89               [ 2]  163 	pushw	x
      009A32 CD B0 51         [ 4]  164 	call	___fsadd
                                    165 ;	src\athx0.c: 22: fAHTX0Temperature *= 256;
      009A35 89               [ 2]  166 	pushw	x
      009A36 90 89            [ 2]  167 	pushw	y
      009A38 5F               [ 1]  168 	clrw	x
      009A39 89               [ 2]  169 	pushw	x
      009A3A 4B 80            [ 1]  170 	push	#0x80
      009A3C 4B 43            [ 1]  171 	push	#0x43
      009A3E CD AB DE         [ 4]  172 	call	___fsmul
      009A41 1F 03            [ 2]  173 	ldw	(0x03, sp), x
      009A43 17 01            [ 2]  174 	ldw	(0x01, sp), y
                                    175 ;	src\athx0.c: 23: fAHTX0Temperature += Buf[5];
      009A45 1E 05            [ 2]  176 	ldw	x, (0x05, sp)
      009A47 E6 05            [ 1]  177 	ld	a, (0x5, x)
      009A49 5F               [ 1]  178 	clrw	x
      009A4A 97               [ 1]  179 	ld	xl, a
      009A4B CD B2 C3         [ 4]  180 	call	___sint2fs
      009A4E 89               [ 2]  181 	pushw	x
      009A4F 90 89            [ 2]  182 	pushw	y
      009A51 1E 07            [ 2]  183 	ldw	x, (0x07, sp)
      009A53 89               [ 2]  184 	pushw	x
      009A54 1E 07            [ 2]  185 	ldw	x, (0x07, sp)
      009A56 89               [ 2]  186 	pushw	x
      009A57 CD B0 51         [ 4]  187 	call	___fsadd
                                    188 ;	src\athx0.c: 25: fAHTX0Temperature /= 1048576;
      009A5A 4B 00            [ 1]  189 	push	#0x00
      009A5C 4B 00            [ 1]  190 	push	#0x00
      009A5E 4B 80            [ 1]  191 	push	#0x80
      009A60 4B 49            [ 1]  192 	push	#0x49
      009A62 89               [ 2]  193 	pushw	x
      009A63 90 89            [ 2]  194 	pushw	y
      009A65 CD B5 18         [ 4]  195 	call	___fsdiv
                                    196 ;	src\athx0.c: 26: fAHTX0Temperature = fAHTX0Temperature * 200 - 50;
      009A68 89               [ 2]  197 	pushw	x
      009A69 90 89            [ 2]  198 	pushw	y
      009A6B 5F               [ 1]  199 	clrw	x
      009A6C 89               [ 2]  200 	pushw	x
      009A6D 4B 48            [ 1]  201 	push	#0x48
      009A6F 4B 43            [ 1]  202 	push	#0x43
      009A71 CD AB DE         [ 4]  203 	call	___fsmul
      009A74 4B 00            [ 1]  204 	push	#0x00
      009A76 4B 00            [ 1]  205 	push	#0x00
      009A78 4B 48            [ 1]  206 	push	#0x48
      009A7A 4B 42            [ 1]  207 	push	#0x42
      009A7C 89               [ 2]  208 	pushw	x
      009A7D 90 89            [ 2]  209 	pushw	y
      009A7F CD AB 4A         [ 4]  210 	call	___fssub
                                    211 ;	src\athx0.c: 28: return fAHTX0Temperature;
                                    212 ;	src\athx0.c: 29: }
      009A82 5B 06            [ 2]  213 	addw	sp, #6
      009A84 81               [ 4]  214 	ret
                                    215 	.area CODE
                                    216 	.area CONST
                                    217 	.area INITIALIZER
                                    218 	.area CABS (ABS)
