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
      0094BD                         54 _ATHX0ConverHumidity:
      0094BD 52 06            [ 2]   55 	sub	sp, #6
                                     56 ;	src\athx0.c: 5: fAHTX0Humidity = Buf[1];
      0094BF 1F 05            [ 2]   57 	ldw	(0x05, sp), x
      0094C1 E6 01            [ 1]   58 	ld	a, (0x1, x)
      0094C3 CD B0 BF         [ 4]   59 	call	___uchar2fs
                                     60 ;	src\athx0.c: 6: fAHTX0Humidity *= 256;
      0094C6 89               [ 2]   61 	pushw	x
      0094C7 90 89            [ 2]   62 	pushw	y
      0094C9 5F               [ 1]   63 	clrw	x
      0094CA 89               [ 2]   64 	pushw	x
      0094CB 4B 80            [ 1]   65 	push	#0x80
      0094CD 4B 43            [ 1]   66 	push	#0x43
      0094CF CD A7 0C         [ 4]   67 	call	___fsmul
      0094D2 1F 03            [ 2]   68 	ldw	(0x03, sp), x
      0094D4 17 01            [ 2]   69 	ldw	(0x01, sp), y
                                     70 ;	src\athx0.c: 7: fAHTX0Humidity += Buf[2];
      0094D6 1E 05            [ 2]   71 	ldw	x, (0x05, sp)
      0094D8 E6 02            [ 1]   72 	ld	a, (0x2, x)
      0094DA 5F               [ 1]   73 	clrw	x
      0094DB 97               [ 1]   74 	ld	xl, a
      0094DC CD AD F1         [ 4]   75 	call	___sint2fs
      0094DF 89               [ 2]   76 	pushw	x
      0094E0 90 89            [ 2]   77 	pushw	y
      0094E2 1E 07            [ 2]   78 	ldw	x, (0x07, sp)
      0094E4 89               [ 2]   79 	pushw	x
      0094E5 1E 07            [ 2]   80 	ldw	x, (0x07, sp)
      0094E7 89               [ 2]   81 	pushw	x
      0094E8 CD AB 7F         [ 4]   82 	call	___fsadd
                                     83 ;	src\athx0.c: 8: fAHTX0Humidity *= 16;
      0094EB 89               [ 2]   84 	pushw	x
      0094EC 90 89            [ 2]   85 	pushw	y
      0094EE 5F               [ 1]   86 	clrw	x
      0094EF 89               [ 2]   87 	pushw	x
      0094F0 4B 80            [ 1]   88 	push	#0x80
      0094F2 4B 41            [ 1]   89 	push	#0x41
      0094F4 CD A7 0C         [ 4]   90 	call	___fsmul
      0094F7 1F 03            [ 2]   91 	ldw	(0x03, sp), x
      0094F9 17 01            [ 2]   92 	ldw	(0x01, sp), y
                                     93 ;	src\athx0.c: 9: fAHTX0Humidity += (Buf[3]>>4);
      0094FB 1E 05            [ 2]   94 	ldw	x, (0x05, sp)
      0094FD E6 03            [ 1]   95 	ld	a, (0x3, x)
      0094FF 4E               [ 1]   96 	swap	a
      009500 A4 0F            [ 1]   97 	and	a, #0x0f
      009502 5F               [ 1]   98 	clrw	x
      009503 97               [ 1]   99 	ld	xl, a
      009504 CD AD F1         [ 4]  100 	call	___sint2fs
      009507 89               [ 2]  101 	pushw	x
      009508 90 89            [ 2]  102 	pushw	y
      00950A 1E 07            [ 2]  103 	ldw	x, (0x07, sp)
      00950C 89               [ 2]  104 	pushw	x
      00950D 1E 07            [ 2]  105 	ldw	x, (0x07, sp)
      00950F 89               [ 2]  106 	pushw	x
      009510 CD AB 7F         [ 4]  107 	call	___fsadd
                                    108 ;	src\athx0.c: 11: fAHTX0Humidity /= 1048576;
      009513 4B 00            [ 1]  109 	push	#0x00
      009515 4B 00            [ 1]  110 	push	#0x00
      009517 4B 80            [ 1]  111 	push	#0x80
      009519 4B 49            [ 1]  112 	push	#0x49
      00951B 89               [ 2]  113 	pushw	x
      00951C 90 89            [ 2]  114 	pushw	y
      00951E CD B0 46         [ 4]  115 	call	___fsdiv
                                    116 ;	src\athx0.c: 12: fAHTX0Humidity *= 100;
      009521 89               [ 2]  117 	pushw	x
      009522 90 89            [ 2]  118 	pushw	y
      009524 5F               [ 1]  119 	clrw	x
      009525 89               [ 2]  120 	pushw	x
      009526 4B C8            [ 1]  121 	push	#0xc8
      009528 4B 42            [ 1]  122 	push	#0x42
      00952A CD A7 0C         [ 4]  123 	call	___fsmul
                                    124 ;	src\athx0.c: 14: return fAHTX0Humidity;
                                    125 ;	src\athx0.c: 15: }
      00952D 5B 06            [ 2]  126 	addw	sp, #6
      00952F 81               [ 4]  127 	ret
                                    128 ;	src\athx0.c: 17: float ATHX0ConvertTemperature(uint8_t *Buf) {
                                    129 ;	-----------------------------------------
                                    130 ;	 function ATHX0ConvertTemperature
                                    131 ;	-----------------------------------------
      009530                        132 _ATHX0ConvertTemperature:
      009530 52 06            [ 2]  133 	sub	sp, #6
                                    134 ;	src\athx0.c: 19: fAHTX0Temperature = (Buf[3] & 0x0f);
      009532 1F 05            [ 2]  135 	ldw	(0x05, sp), x
      009534 E6 03            [ 1]  136 	ld	a, (0x3, x)
      009536 A4 0F            [ 1]  137 	and	a, #0x0f
      009538 97               [ 1]  138 	ld	xl, a
      009539 4F               [ 1]  139 	clr	a
      00953A 95               [ 1]  140 	ld	xh, a
      00953B CD AD F1         [ 4]  141 	call	___sint2fs
                                    142 ;	src\athx0.c: 20: fAHTX0Temperature *= 256;
      00953E 89               [ 2]  143 	pushw	x
      00953F 90 89            [ 2]  144 	pushw	y
      009541 5F               [ 1]  145 	clrw	x
      009542 89               [ 2]  146 	pushw	x
      009543 4B 80            [ 1]  147 	push	#0x80
      009545 4B 43            [ 1]  148 	push	#0x43
      009547 CD A7 0C         [ 4]  149 	call	___fsmul
      00954A 1F 03            [ 2]  150 	ldw	(0x03, sp), x
      00954C 17 01            [ 2]  151 	ldw	(0x01, sp), y
                                    152 ;	src\athx0.c: 21: fAHTX0Temperature += Buf[4];
      00954E 1E 05            [ 2]  153 	ldw	x, (0x05, sp)
      009550 E6 04            [ 1]  154 	ld	a, (0x4, x)
      009552 5F               [ 1]  155 	clrw	x
      009553 97               [ 1]  156 	ld	xl, a
      009554 CD AD F1         [ 4]  157 	call	___sint2fs
      009557 89               [ 2]  158 	pushw	x
      009558 90 89            [ 2]  159 	pushw	y
      00955A 1E 07            [ 2]  160 	ldw	x, (0x07, sp)
      00955C 89               [ 2]  161 	pushw	x
      00955D 1E 07            [ 2]  162 	ldw	x, (0x07, sp)
      00955F 89               [ 2]  163 	pushw	x
      009560 CD AB 7F         [ 4]  164 	call	___fsadd
                                    165 ;	src\athx0.c: 22: fAHTX0Temperature *= 256;
      009563 89               [ 2]  166 	pushw	x
      009564 90 89            [ 2]  167 	pushw	y
      009566 5F               [ 1]  168 	clrw	x
      009567 89               [ 2]  169 	pushw	x
      009568 4B 80            [ 1]  170 	push	#0x80
      00956A 4B 43            [ 1]  171 	push	#0x43
      00956C CD A7 0C         [ 4]  172 	call	___fsmul
      00956F 1F 03            [ 2]  173 	ldw	(0x03, sp), x
      009571 17 01            [ 2]  174 	ldw	(0x01, sp), y
                                    175 ;	src\athx0.c: 23: fAHTX0Temperature += Buf[5];
      009573 1E 05            [ 2]  176 	ldw	x, (0x05, sp)
      009575 E6 05            [ 1]  177 	ld	a, (0x5, x)
      009577 5F               [ 1]  178 	clrw	x
      009578 97               [ 1]  179 	ld	xl, a
      009579 CD AD F1         [ 4]  180 	call	___sint2fs
      00957C 89               [ 2]  181 	pushw	x
      00957D 90 89            [ 2]  182 	pushw	y
      00957F 1E 07            [ 2]  183 	ldw	x, (0x07, sp)
      009581 89               [ 2]  184 	pushw	x
      009582 1E 07            [ 2]  185 	ldw	x, (0x07, sp)
      009584 89               [ 2]  186 	pushw	x
      009585 CD AB 7F         [ 4]  187 	call	___fsadd
                                    188 ;	src\athx0.c: 25: fAHTX0Temperature /= 1048576;
      009588 4B 00            [ 1]  189 	push	#0x00
      00958A 4B 00            [ 1]  190 	push	#0x00
      00958C 4B 80            [ 1]  191 	push	#0x80
      00958E 4B 49            [ 1]  192 	push	#0x49
      009590 89               [ 2]  193 	pushw	x
      009591 90 89            [ 2]  194 	pushw	y
      009593 CD B0 46         [ 4]  195 	call	___fsdiv
                                    196 ;	src\athx0.c: 26: fAHTX0Temperature = fAHTX0Temperature * 200 - 50;
      009596 89               [ 2]  197 	pushw	x
      009597 90 89            [ 2]  198 	pushw	y
      009599 5F               [ 1]  199 	clrw	x
      00959A 89               [ 2]  200 	pushw	x
      00959B 4B 48            [ 1]  201 	push	#0x48
      00959D 4B 43            [ 1]  202 	push	#0x43
      00959F CD A7 0C         [ 4]  203 	call	___fsmul
      0095A2 4B 00            [ 1]  204 	push	#0x00
      0095A4 4B 00            [ 1]  205 	push	#0x00
      0095A6 4B 48            [ 1]  206 	push	#0x48
      0095A8 4B 42            [ 1]  207 	push	#0x42
      0095AA 89               [ 2]  208 	pushw	x
      0095AB 90 89            [ 2]  209 	pushw	y
      0095AD CD A6 78         [ 4]  210 	call	___fssub
                                    211 ;	src\athx0.c: 28: return fAHTX0Temperature;
                                    212 ;	src\athx0.c: 29: }
      0095B0 5B 06            [ 2]  213 	addw	sp, #6
      0095B2 81               [ 4]  214 	ret
                                    215 	.area CODE
                                    216 	.area CONST
                                    217 	.area INITIALIZER
                                    218 	.area CABS (ABS)
