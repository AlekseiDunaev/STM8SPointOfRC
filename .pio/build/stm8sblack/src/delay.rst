                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_us
                                     12 	.globl _delay_ms
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
                                     50 ;	src\delay.c: 3: void delay_us(uint16_t value) {
                                     51 ;	-----------------------------------------
                                     52 ;	 function delay_us
                                     53 ;	-----------------------------------------
      00A19A                         54 _delay_us:
                                     55 ;	src\delay.c: 4: register unsigned int loops = (dly_const * value) ;
      00A19A CD B3 2C         [ 4]   56 	call	___uint2fs
      00A19D 89               [ 2]   57 	pushw	x
      00A19E 90 89            [ 2]   58 	pushw	y
      00A1A0 CD B3 37         [ 4]   59 	call	___fs2uint
                                     60 ;	src\delay.c: 6: while(loops) {
      00A1A3                         61 00101$:
      00A1A3 5D               [ 2]   62 	tnzw	x
      00A1A4 26 01            [ 1]   63 	jrne	00117$
      00A1A6 81               [ 4]   64 	ret
      00A1A7                         65 00117$:
                                     66 ;	src\delay.c: 7: __asm__ ("nop");
      00A1A7 9D               [ 1]   67 	nop
                                     68 ;	src\delay.c: 8: loops--;
      00A1A8 5A               [ 2]   69 	decw	x
      00A1A9 20 F8            [ 2]   70 	jra	00101$
                                     71 ;	src\delay.c: 10: }
      00A1AB 81               [ 4]   72 	ret
                                     73 ;	src\delay.c: 12: void delay_ms(uint16_t value) {
                                     74 ;	-----------------------------------------
                                     75 ;	 function delay_ms
                                     76 ;	-----------------------------------------
      00A1AC                         77 _delay_ms:
                                     78 ;	src\delay.c: 13: while(value)
      00A1AC                         79 00101$:
      00A1AC 5D               [ 2]   80 	tnzw	x
      00A1AD 26 01            [ 1]   81 	jrne	00117$
      00A1AF 81               [ 4]   82 	ret
      00A1B0                         83 00117$:
                                     84 ;	src\delay.c: 15: delay_us(1000);
      00A1B0 89               [ 2]   85 	pushw	x
      00A1B1 AE 03 E8         [ 2]   86 	ldw	x, #0x03e8
      00A1B4 CD A1 9A         [ 4]   87 	call	_delay_us
      00A1B7 85               [ 2]   88 	popw	x
                                     89 ;	src\delay.c: 16: value--;
      00A1B8 5A               [ 2]   90 	decw	x
      00A1B9 20 F1            [ 2]   91 	jra	00101$
                                     92 ;	src\delay.c: 18: }
      00A1BB 81               [ 4]   93 	ret
                                     94 	.area CODE
                                     95 	.area CONST
                                     96 	.area INITIALIZER
                                     97 	.area CABS (ABS)
