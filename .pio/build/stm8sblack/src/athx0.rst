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
      0098FD                         54 _ATHX0ConverHumidity:
      0098FD 52 06            [ 2]   55 	sub	sp, #6
                                     56 ;	src/athx0.c: 5: fAHTX0Humidity = Buf[1];
      0098FF 1F 05            [ 2]   57 	ldw	(0x05, sp), x
      009901 E6 01            [ 1]   58 	ld	a, (0x1, x)
      009903 CD B3 FC         [ 4]   59 	call	___uchar2fs
                                     60 ;	src/athx0.c: 6: fAHTX0Humidity *= 256;
      009906 89               [ 2]   61 	pushw	x
      009907 90 89            [ 2]   62 	pushw	y
      009909 5F               [ 1]   63 	clrw	x
      00990A 89               [ 2]   64 	pushw	x
      00990B 4B 80            [ 1]   65 	push	#0x80
      00990D 4B 43            [ 1]   66 	push	#0x43
      00990F CD AB 05         [ 4]   67 	call	___fsmul
      009912 1F 03            [ 2]   68 	ldw	(0x03, sp), x
      009914 17 01            [ 2]   69 	ldw	(0x01, sp), y
                                     70 ;	src/athx0.c: 7: fAHTX0Humidity += Buf[2];
      009916 1E 05            [ 2]   71 	ldw	x, (0x05, sp)
      009918 E6 02            [ 1]   72 	ld	a, (0x2, x)
      00991A 5F               [ 1]   73 	clrw	x
      00991B 97               [ 1]   74 	ld	xl, a
      00991C CD B1 26         [ 4]   75 	call	___sint2fs
      00991F 89               [ 2]   76 	pushw	x
      009920 90 89            [ 2]   77 	pushw	y
      009922 1E 07            [ 2]   78 	ldw	x, (0x07, sp)
      009924 89               [ 2]   79 	pushw	x
      009925 1E 07            [ 2]   80 	ldw	x, (0x07, sp)
      009927 89               [ 2]   81 	pushw	x
      009928 CD AE B4         [ 4]   82 	call	___fsadd
                                     83 ;	src/athx0.c: 8: fAHTX0Humidity *= 16;
      00992B 89               [ 2]   84 	pushw	x
      00992C 90 89            [ 2]   85 	pushw	y
      00992E 5F               [ 1]   86 	clrw	x
      00992F 89               [ 2]   87 	pushw	x
      009930 4B 80            [ 1]   88 	push	#0x80
      009932 4B 41            [ 1]   89 	push	#0x41
      009934 CD AB 05         [ 4]   90 	call	___fsmul
      009937 1F 03            [ 2]   91 	ldw	(0x03, sp), x
      009939 17 01            [ 2]   92 	ldw	(0x01, sp), y
                                     93 ;	src/athx0.c: 9: fAHTX0Humidity += (Buf[3]>>4);
      00993B 1E 05            [ 2]   94 	ldw	x, (0x05, sp)
      00993D E6 03            [ 1]   95 	ld	a, (0x3, x)
      00993F 4E               [ 1]   96 	swap	a
      009940 A4 0F            [ 1]   97 	and	a, #0x0f
      009942 5F               [ 1]   98 	clrw	x
      009943 97               [ 1]   99 	ld	xl, a
      009944 CD B1 26         [ 4]  100 	call	___sint2fs
      009947 89               [ 2]  101 	pushw	x
      009948 90 89            [ 2]  102 	pushw	y
      00994A 1E 07            [ 2]  103 	ldw	x, (0x07, sp)
      00994C 89               [ 2]  104 	pushw	x
      00994D 1E 07            [ 2]  105 	ldw	x, (0x07, sp)
      00994F 89               [ 2]  106 	pushw	x
      009950 CD AE B4         [ 4]  107 	call	___fsadd
                                    108 ;	src/athx0.c: 11: fAHTX0Humidity /= 1048576;
      009953 4B 00            [ 1]  109 	push	#0x00
      009955 4B 00            [ 1]  110 	push	#0x00
      009957 4B 80            [ 1]  111 	push	#0x80
      009959 4B 49            [ 1]  112 	push	#0x49
      00995B 89               [ 2]  113 	pushw	x
      00995C 90 89            [ 2]  114 	pushw	y
      00995E CD B3 83         [ 4]  115 	call	___fsdiv
                                    116 ;	src/athx0.c: 12: fAHTX0Humidity *= 100;
      009961 89               [ 2]  117 	pushw	x
      009962 90 89            [ 2]  118 	pushw	y
      009964 5F               [ 1]  119 	clrw	x
      009965 89               [ 2]  120 	pushw	x
      009966 4B C8            [ 1]  121 	push	#0xc8
      009968 4B 42            [ 1]  122 	push	#0x42
      00996A CD AB 05         [ 4]  123 	call	___fsmul
                                    124 ;	src/athx0.c: 14: return fAHTX0Humidity;
                                    125 ;	src/athx0.c: 15: }
      00996D 5B 06            [ 2]  126 	addw	sp, #6
      00996F 81               [ 4]  127 	ret
                                    128 ;	src/athx0.c: 17: float ATHX0ConvertTemperature(uint8_t *Buf) {
                                    129 ;	-----------------------------------------
                                    130 ;	 function ATHX0ConvertTemperature
                                    131 ;	-----------------------------------------
      009970                        132 _ATHX0ConvertTemperature:
      009970 52 06            [ 2]  133 	sub	sp, #6
                                    134 ;	src/athx0.c: 19: fAHTX0Temperature = (Buf[3] & 0x0f);
      009972 1F 05            [ 2]  135 	ldw	(0x05, sp), x
      009974 E6 03            [ 1]  136 	ld	a, (0x3, x)
      009976 A4 0F            [ 1]  137 	and	a, #0x0f
      009978 97               [ 1]  138 	ld	xl, a
      009979 4F               [ 1]  139 	clr	a
      00997A 95               [ 1]  140 	ld	xh, a
      00997B CD B1 26         [ 4]  141 	call	___sint2fs
                                    142 ;	src/athx0.c: 20: fAHTX0Temperature *= 256;
      00997E 89               [ 2]  143 	pushw	x
      00997F 90 89            [ 2]  144 	pushw	y
      009981 5F               [ 1]  145 	clrw	x
      009982 89               [ 2]  146 	pushw	x
      009983 4B 80            [ 1]  147 	push	#0x80
      009985 4B 43            [ 1]  148 	push	#0x43
      009987 CD AB 05         [ 4]  149 	call	___fsmul
      00998A 1F 03            [ 2]  150 	ldw	(0x03, sp), x
      00998C 17 01            [ 2]  151 	ldw	(0x01, sp), y
                                    152 ;	src/athx0.c: 21: fAHTX0Temperature += Buf[4];
      00998E 1E 05            [ 2]  153 	ldw	x, (0x05, sp)
      009990 E6 04            [ 1]  154 	ld	a, (0x4, x)
      009992 5F               [ 1]  155 	clrw	x
      009993 97               [ 1]  156 	ld	xl, a
      009994 CD B1 26         [ 4]  157 	call	___sint2fs
      009997 89               [ 2]  158 	pushw	x
      009998 90 89            [ 2]  159 	pushw	y
      00999A 1E 07            [ 2]  160 	ldw	x, (0x07, sp)
      00999C 89               [ 2]  161 	pushw	x
      00999D 1E 07            [ 2]  162 	ldw	x, (0x07, sp)
      00999F 89               [ 2]  163 	pushw	x
      0099A0 CD AE B4         [ 4]  164 	call	___fsadd
                                    165 ;	src/athx0.c: 22: fAHTX0Temperature *= 256;
      0099A3 89               [ 2]  166 	pushw	x
      0099A4 90 89            [ 2]  167 	pushw	y
      0099A6 5F               [ 1]  168 	clrw	x
      0099A7 89               [ 2]  169 	pushw	x
      0099A8 4B 80            [ 1]  170 	push	#0x80
      0099AA 4B 43            [ 1]  171 	push	#0x43
      0099AC CD AB 05         [ 4]  172 	call	___fsmul
      0099AF 1F 03            [ 2]  173 	ldw	(0x03, sp), x
      0099B1 17 01            [ 2]  174 	ldw	(0x01, sp), y
                                    175 ;	src/athx0.c: 23: fAHTX0Temperature += Buf[5];
      0099B3 1E 05            [ 2]  176 	ldw	x, (0x05, sp)
      0099B5 E6 05            [ 1]  177 	ld	a, (0x5, x)
      0099B7 5F               [ 1]  178 	clrw	x
      0099B8 97               [ 1]  179 	ld	xl, a
      0099B9 CD B1 26         [ 4]  180 	call	___sint2fs
      0099BC 89               [ 2]  181 	pushw	x
      0099BD 90 89            [ 2]  182 	pushw	y
      0099BF 1E 07            [ 2]  183 	ldw	x, (0x07, sp)
      0099C1 89               [ 2]  184 	pushw	x
      0099C2 1E 07            [ 2]  185 	ldw	x, (0x07, sp)
      0099C4 89               [ 2]  186 	pushw	x
      0099C5 CD AE B4         [ 4]  187 	call	___fsadd
                                    188 ;	src/athx0.c: 25: fAHTX0Temperature /= 1048576;
      0099C8 4B 00            [ 1]  189 	push	#0x00
      0099CA 4B 00            [ 1]  190 	push	#0x00
      0099CC 4B 80            [ 1]  191 	push	#0x80
      0099CE 4B 49            [ 1]  192 	push	#0x49
      0099D0 89               [ 2]  193 	pushw	x
      0099D1 90 89            [ 2]  194 	pushw	y
      0099D3 CD B3 83         [ 4]  195 	call	___fsdiv
                                    196 ;	src/athx0.c: 26: fAHTX0Temperature = fAHTX0Temperature * 200 - 50;
      0099D6 89               [ 2]  197 	pushw	x
      0099D7 90 89            [ 2]  198 	pushw	y
      0099D9 5F               [ 1]  199 	clrw	x
      0099DA 89               [ 2]  200 	pushw	x
      0099DB 4B 48            [ 1]  201 	push	#0x48
      0099DD 4B 43            [ 1]  202 	push	#0x43
      0099DF CD AB 05         [ 4]  203 	call	___fsmul
      0099E2 4B 00            [ 1]  204 	push	#0x00
      0099E4 4B 00            [ 1]  205 	push	#0x00
      0099E6 4B 48            [ 1]  206 	push	#0x48
      0099E8 4B 42            [ 1]  207 	push	#0x42
      0099EA 89               [ 2]  208 	pushw	x
      0099EB 90 89            [ 2]  209 	pushw	y
      0099ED CD AA 71         [ 4]  210 	call	___fssub
                                    211 ;	src/athx0.c: 28: return fAHTX0Temperature;
                                    212 ;	src/athx0.c: 29: }
      0099F0 5B 06            [ 2]  213 	addw	sp, #6
      0099F2 81               [ 4]  214 	ret
                                    215 	.area CODE
                                    216 	.area CONST
                                    217 	.area INITIALIZER
                                    218 	.area CABS (ABS)
