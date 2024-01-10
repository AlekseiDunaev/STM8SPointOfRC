;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module athx0
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ATHX0ConverHumidity
	.globl _ATHX0ConvertTemperature
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
;	src\athx0.c: 3: float ATHX0ConverHumidity(uint8_t *Buf) {
;	-----------------------------------------
;	 function ATHX0ConverHumidity
;	-----------------------------------------
_ATHX0ConverHumidity:
	sub	sp, #6
;	src\athx0.c: 5: fAHTX0Humidity = Buf[1];
	ldw	(0x05, sp), x
	ld	a, (0x1, x)
	call	___uchar2fs
;	src\athx0.c: 6: fAHTX0Humidity *= 256;
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x80
	push	#0x43
	call	___fsmul
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	src\athx0.c: 7: fAHTX0Humidity += Buf[2];
	ldw	x, (0x05, sp)
	ld	a, (0x2, x)
	clrw	x
	ld	xl, a
	call	___sint2fs
	pushw	x
	pushw	y
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	___fsadd
;	src\athx0.c: 8: fAHTX0Humidity *= 16;
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x80
	push	#0x41
	call	___fsmul
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	src\athx0.c: 9: fAHTX0Humidity += (Buf[3]>>4);
	ldw	x, (0x05, sp)
	ld	a, (0x3, x)
	swap	a
	and	a, #0x0f
	clrw	x
	ld	xl, a
	call	___sint2fs
	pushw	x
	pushw	y
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	___fsadd
;	src\athx0.c: 11: fAHTX0Humidity /= 1048576;
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x49
	pushw	x
	pushw	y
	call	___fsdiv
;	src\athx0.c: 12: fAHTX0Humidity *= 100;
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0xc8
	push	#0x42
	call	___fsmul
;	src\athx0.c: 14: return fAHTX0Humidity;
;	src\athx0.c: 15: }
	addw	sp, #6
	ret
;	src\athx0.c: 17: float ATHX0ConvertTemperature(uint8_t *Buf) {
;	-----------------------------------------
;	 function ATHX0ConvertTemperature
;	-----------------------------------------
_ATHX0ConvertTemperature:
	sub	sp, #6
;	src\athx0.c: 19: fAHTX0Temperature = (Buf[3] & 0x0f);
	ldw	(0x05, sp), x
	ld	a, (0x3, x)
	and	a, #0x0f
	ld	xl, a
	clr	a
	ld	xh, a
	call	___sint2fs
;	src\athx0.c: 20: fAHTX0Temperature *= 256;
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x80
	push	#0x43
	call	___fsmul
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	src\athx0.c: 21: fAHTX0Temperature += Buf[4];
	ldw	x, (0x05, sp)
	ld	a, (0x4, x)
	clrw	x
	ld	xl, a
	call	___sint2fs
	pushw	x
	pushw	y
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	___fsadd
;	src\athx0.c: 22: fAHTX0Temperature *= 256;
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x80
	push	#0x43
	call	___fsmul
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	src\athx0.c: 23: fAHTX0Temperature += Buf[5];
	ldw	x, (0x05, sp)
	ld	a, (0x5, x)
	clrw	x
	ld	xl, a
	call	___sint2fs
	pushw	x
	pushw	y
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	___fsadd
;	src\athx0.c: 25: fAHTX0Temperature /= 1048576;
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x49
	pushw	x
	pushw	y
	call	___fsdiv
;	src\athx0.c: 26: fAHTX0Temperature = fAHTX0Temperature * 200 - 50;
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x48
	push	#0x43
	call	___fsmul
	push	#0x00
	push	#0x00
	push	#0x48
	push	#0x42
	pushw	x
	pushw	y
	call	___fssub
;	src\athx0.c: 28: return fAHTX0Temperature;
;	src\athx0.c: 29: }
	addw	sp, #6
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
