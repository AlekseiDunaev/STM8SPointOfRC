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
      0094F9                         54 _ATHX0ConverHumidity:
      0094F9 52 06            [ 2]   55 	sub	sp, #6
                                     56 ;	src\athx0.c: 5: fAHTX0Humidity = Buf[1];
      0094FB 1F 05            [ 2]   57 	ldw	(0x05, sp), x
      0094FD E6 01            [ 1]   58 	ld	a, (0x1, x)
      0094FF CD B4 7B         [ 4]   59 	call	___uchar2fs
                                     60 ;	src\athx0.c: 6: fAHTX0Humidity *= 256;
      009502 89               [ 2]   61 	pushw	x
      009503 90 89            [ 2]   62 	pushw	y
      009505 5F               [ 1]   63 	clrw	x
      009506 89               [ 2]   64 	pushw	x
      009507 4B 80            [ 1]   65 	push	#0x80
      009509 4B 43            [ 1]   66 	push	#0x43
      00950B CD AA C8         [ 4]   67 	call	___fsmul
      00950E 1F 03            [ 2]   68 	ldw	(0x03, sp), x
      009510 17 01            [ 2]   69 	ldw	(0x01, sp), y
                                     70 ;	src\athx0.c: 7: fAHTX0Humidity += Buf[2];
      009512 1E 05            [ 2]   71 	ldw	x, (0x05, sp)
      009514 E6 02            [ 1]   72 	ld	a, (0x2, x)
      009516 5F               [ 1]   73 	clrw	x
      009517 97               [ 1]   74 	ld	xl, a
      009518 CD B1 AD         [ 4]   75 	call	___sint2fs
      00951B 89               [ 2]   76 	pushw	x
      00951C 90 89            [ 2]   77 	pushw	y
      00951E 1E 07            [ 2]   78 	ldw	x, (0x07, sp)
      009520 89               [ 2]   79 	pushw	x
      009521 1E 07            [ 2]   80 	ldw	x, (0x07, sp)
      009523 89               [ 2]   81 	pushw	x
      009524 CD AF 3B         [ 4]   82 	call	___fsadd
                                     83 ;	src\athx0.c: 8: fAHTX0Humidity *= 16;
      009527 89               [ 2]   84 	pushw	x
      009528 90 89            [ 2]   85 	pushw	y
      00952A 5F               [ 1]   86 	clrw	x
      00952B 89               [ 2]   87 	pushw	x
      00952C 4B 80            [ 1]   88 	push	#0x80
      00952E 4B 41            [ 1]   89 	push	#0x41
      009530 CD AA C8         [ 4]   90 	call	___fsmul
      009533 1F 03            [ 2]   91 	ldw	(0x03, sp), x
      009535 17 01            [ 2]   92 	ldw	(0x01, sp), y
                                     93 ;	src\athx0.c: 9: fAHTX0Humidity += (Buf[3]>>4);
      009537 1E 05            [ 2]   94 	ldw	x, (0x05, sp)
      009539 E6 03            [ 1]   95 	ld	a, (0x3, x)
      00953B 4E               [ 1]   96 	swap	a
      00953C A4 0F            [ 1]   97 	and	a, #0x0f
      00953E 5F               [ 1]   98 	clrw	x
      00953F 97               [ 1]   99 	ld	xl, a
      009540 CD B1 AD         [ 4]  100 	call	___sint2fs
      009543 89               [ 2]  101 	pushw	x
      009544 90 89            [ 2]  102 	pushw	y
      009546 1E 07            [ 2]  103 	ldw	x, (0x07, sp)
      009548 89               [ 2]  104 	pushw	x
      009549 1E 07            [ 2]  105 	ldw	x, (0x07, sp)
      00954B 89               [ 2]  106 	pushw	x
      00954C CD AF 3B         [ 4]  107 	call	___fsadd
                                    108 ;	src\athx0.c: 11: fAHTX0Humidity /= 1048576;
      00954F 4B 00            [ 1]  109 	push	#0x00
      009551 4B 00            [ 1]  110 	push	#0x00
      009553 4B 80            [ 1]  111 	push	#0x80
      009555 4B 49            [ 1]  112 	push	#0x49
      009557 89               [ 2]  113 	pushw	x
      009558 90 89            [ 2]  114 	pushw	y
      00955A CD B4 02         [ 4]  115 	call	___fsdiv
                                    116 ;	src\athx0.c: 12: fAHTX0Humidity *= 100;
      00955D 89               [ 2]  117 	pushw	x
      00955E 90 89            [ 2]  118 	pushw	y
      009560 5F               [ 1]  119 	clrw	x
      009561 89               [ 2]  120 	pushw	x
      009562 4B C8            [ 1]  121 	push	#0xc8
      009564 4B 42            [ 1]  122 	push	#0x42
      009566 CD AA C8         [ 4]  123 	call	___fsmul
                                    124 ;	src\athx0.c: 14: return fAHTX0Humidity;
                                    125 ;	src\athx0.c: 15: }
      009569 5B 06            [ 2]  126 	addw	sp, #6
      00956B 81               [ 4]  127 	ret
                                    128 ;	src\athx0.c: 17: float ATHX0ConvertTemperature(uint8_t *Buf) {
                                    129 ;	-----------------------------------------
                                    130 ;	 function ATHX0ConvertTemperature
                                    131 ;	-----------------------------------------
      00956C                        132 _ATHX0ConvertTemperature:
      00956C 52 06            [ 2]  133 	sub	sp, #6
                                    134 ;	src\athx0.c: 19: fAHTX0Temperature = (Buf[3] & 0x0f);
      00956E 1F 05            [ 2]  135 	ldw	(0x05, sp), x
      009570 E6 03            [ 1]  136 	ld	a, (0x3, x)
      009572 A4 0F            [ 1]  137 	and	a, #0x0f
      009574 97               [ 1]  138 	ld	xl, a
      009575 4F               [ 1]  139 	clr	a
      009576 95               [ 1]  140 	ld	xh, a
      009577 CD B1 AD         [ 4]  141 	call	___sint2fs
                                    142 ;	src\athx0.c: 20: fAHTX0Temperature *= 256;
      00957A 89               [ 2]  143 	pushw	x
      00957B 90 89            [ 2]  144 	pushw	y
      00957D 5F               [ 1]  145 	clrw	x
      00957E 89               [ 2]  146 	pushw	x
      00957F 4B 80            [ 1]  147 	push	#0x80
      009581 4B 43            [ 1]  148 	push	#0x43
      009583 CD AA C8         [ 4]  149 	call	___fsmul
      009586 1F 03            [ 2]  150 	ldw	(0x03, sp), x
      009588 17 01            [ 2]  151 	ldw	(0x01, sp), y
                                    152 ;	src\athx0.c: 21: fAHTX0Temperature += Buf[4];
      00958A 1E 05            [ 2]  153 	ldw	x, (0x05, sp)
      00958C E6 04            [ 1]  154 	ld	a, (0x4, x)
      00958E 5F               [ 1]  155 	clrw	x
      00958F 97               [ 1]  156 	ld	xl, a
      009590 CD B1 AD         [ 4]  157 	call	___sint2fs
      009593 89               [ 2]  158 	pushw	x
      009594 90 89            [ 2]  159 	pushw	y
      009596 1E 07            [ 2]  160 	ldw	x, (0x07, sp)
      009598 89               [ 2]  161 	pushw	x
      009599 1E 07            [ 2]  162 	ldw	x, (0x07, sp)
      00959B 89               [ 2]  163 	pushw	x
      00959C CD AF 3B         [ 4]  164 	call	___fsadd
                                    165 ;	src\athx0.c: 22: fAHTX0Temperature *= 256;
      00959F 89               [ 2]  166 	pushw	x
      0095A0 90 89            [ 2]  167 	pushw	y
      0095A2 5F               [ 1]  168 	clrw	x
      0095A3 89               [ 2]  169 	pushw	x
      0095A4 4B 80            [ 1]  170 	push	#0x80
      0095A6 4B 43            [ 1]  171 	push	#0x43
      0095A8 CD AA C8         [ 4]  172 	call	___fsmul
      0095AB 1F 03            [ 2]  173 	ldw	(0x03, sp), x
      0095AD 17 01            [ 2]  174 	ldw	(0x01, sp), y
                                    175 ;	src\athx0.c: 23: fAHTX0Temperature += Buf[5];
      0095AF 1E 05            [ 2]  176 	ldw	x, (0x05, sp)
      0095B1 E6 05            [ 1]  177 	ld	a, (0x5, x)
      0095B3 5F               [ 1]  178 	clrw	x
      0095B4 97               [ 1]  179 	ld	xl, a
      0095B5 CD B1 AD         [ 4]  180 	call	___sint2fs
      0095B8 89               [ 2]  181 	pushw	x
      0095B9 90 89            [ 2]  182 	pushw	y
      0095BB 1E 07            [ 2]  183 	ldw	x, (0x07, sp)
      0095BD 89               [ 2]  184 	pushw	x
      0095BE 1E 07            [ 2]  185 	ldw	x, (0x07, sp)
      0095C0 89               [ 2]  186 	pushw	x
      0095C1 CD AF 3B         [ 4]  187 	call	___fsadd
                                    188 ;	src\athx0.c: 25: fAHTX0Temperature /= 1048576;
      0095C4 4B 00            [ 1]  189 	push	#0x00
      0095C6 4B 00            [ 1]  190 	push	#0x00
      0095C8 4B 80            [ 1]  191 	push	#0x80
      0095CA 4B 49            [ 1]  192 	push	#0x49
      0095CC 89               [ 2]  193 	pushw	x
      0095CD 90 89            [ 2]  194 	pushw	y
      0095CF CD B4 02         [ 4]  195 	call	___fsdiv
                                    196 ;	src\athx0.c: 26: fAHTX0Temperature = fAHTX0Temperature * 200 - 50;
      0095D2 89               [ 2]  197 	pushw	x
      0095D3 90 89            [ 2]  198 	pushw	y
      0095D5 5F               [ 1]  199 	clrw	x
      0095D6 89               [ 2]  200 	pushw	x
      0095D7 4B 48            [ 1]  201 	push	#0x48
      0095D9 4B 43            [ 1]  202 	push	#0x43
      0095DB CD AA C8         [ 4]  203 	call	___fsmul
      0095DE 4B 00            [ 1]  204 	push	#0x00
      0095E0 4B 00            [ 1]  205 	push	#0x00
      0095E2 4B 48            [ 1]  206 	push	#0x48
      0095E4 4B 42            [ 1]  207 	push	#0x42
      0095E6 89               [ 2]  208 	pushw	x
      0095E7 90 89            [ 2]  209 	pushw	y
      0095E9 CD AA 34         [ 4]  210 	call	___fssub
                                    211 ;	src\athx0.c: 28: return fAHTX0Temperature;
                                    212 ;	src\athx0.c: 29: }
      0095EC 5B 06            [ 2]  213 	addw	sp, #6
      0095EE 81               [ 4]  214 	ret
                                    215 	.area CODE
                                    216 	.area CONST
                                    217 	.area INITIALIZER
                                    218 	.area CABS (ABS)
