                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Mac OS X x86_64)
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
                                     50 ;	src/delay.c: 3: void delay_us(uint16_t value) {
                                     51 ;	-----------------------------------------
                                     52 ;	 function delay_us
                                     53 ;	-----------------------------------------
      009C2A                         54 _delay_us:
                                     55 ;	src/delay.c: 4: register unsigned int loops = (dly_const * value) ;
      009C2A CD B1 8F         [ 4]   56 	call	___uint2fs
      009C2D 89               [ 2]   57 	pushw	x
      009C2E 90 89            [ 2]   58 	pushw	y
      009C30 CD B1 9A         [ 4]   59 	call	___fs2uint
                                     60 ;	src/delay.c: 6: while(loops) {
      009C33                         61 00101$:
      009C33 5D               [ 2]   62 	tnzw	x
      009C34 26 01            [ 1]   63 	jrne	00117$
      009C36 81               [ 4]   64 	ret
      009C37                         65 00117$:
                                     66 ;	src/delay.c: 7: __asm__ ("nop");
      009C37 9D               [ 1]   67 	nop
                                     68 ;	src/delay.c: 8: loops--;
      009C38 5A               [ 2]   69 	decw	x
      009C39 20 F8            [ 2]   70 	jra	00101$
                                     71 ;	src/delay.c: 10: }
      009C3B 81               [ 4]   72 	ret
                                     73 ;	src/delay.c: 12: void delay_ms(uint16_t value) {
                                     74 ;	-----------------------------------------
                                     75 ;	 function delay_ms
                                     76 ;	-----------------------------------------
      009C3C                         77 _delay_ms:
                                     78 ;	src/delay.c: 13: while(value)
      009C3C                         79 00101$:
      009C3C 5D               [ 2]   80 	tnzw	x
      009C3D 26 01            [ 1]   81 	jrne	00117$
      009C3F 81               [ 4]   82 	ret
      009C40                         83 00117$:
                                     84 ;	src/delay.c: 15: delay_us(1000);
      009C40 89               [ 2]   85 	pushw	x
      009C41 AE 03 E8         [ 2]   86 	ldw	x, #0x03e8
      009C44 CD 9C 2A         [ 4]   87 	call	_delay_us
      009C47 85               [ 2]   88 	popw	x
                                     89 ;	src/delay.c: 16: value--;
      009C48 5A               [ 2]   90 	decw	x
      009C49 20 F1            [ 2]   91 	jra	00101$
                                     92 ;	src/delay.c: 18: }
      009C4B 81               [ 4]   93 	ret
                                     94 	.area CODE
                                     95 	.area CONST
                                     96 	.area INITIALIZER
                                     97 	.area CABS (ABS)
