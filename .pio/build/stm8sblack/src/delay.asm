;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module delay
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_us
	.globl _delay_ms
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	src\delay.c: 3: void delay_us(uint16_t value) {
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
;	src\delay.c: 4: register unsigned int loops = (dly_const * value) ;
	call	___uint2fs
	pushw	x
	pushw	y
	call	___fs2uint
;	src\delay.c: 6: while(loops) {
00101$:
	tnzw	x
	jrne	00117$
	ret
00117$:
;	src\delay.c: 7: __asm__ ("nop");
	nop
;	src\delay.c: 8: loops--;
	decw	x
	jra	00101$
;	src\delay.c: 10: }
	ret
;	src\delay.c: 12: void delay_ms(uint16_t value) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
;	src\delay.c: 13: while(value)
00101$:
	tnzw	x
	jrne	00117$
	ret
00117$:
;	src\delay.c: 15: delay_us(1000);
	pushw	x
	ldw	x, #0x03e8
	call	_delay_us
	popw	x
;	src\delay.c: 16: value--;
	decw	x
	jra	00101$
;	src\delay.c: 18: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
