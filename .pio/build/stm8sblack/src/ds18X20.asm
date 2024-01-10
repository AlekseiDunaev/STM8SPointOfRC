;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module ds18X20
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_ms
	.globl _delay_us
	.globl _GPIO_ReadInputPin
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
	.globl _GPIO_Init
	.globl _GPIO_DeInit
	.globl _DS18X20_Reset
	.globl _DS18X20_Write_Byte
	.globl _DS18X20_Read_Byte
	.globl _DS18X20_Read_ID
	.globl _DS18X20_Skip_ID
	.globl _DS18X20_Get_Temperature
	.globl _DS18X20_Setup
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
;	src\ds18X20.c: 3: bool DS18X20_Reset(void) {
;	-----------------------------------------
;	 function DS18X20_Reset
;	-----------------------------------------
_DS18X20_Reset:
;	src\ds18X20.c: 6: OW_LOW();
	ld	a, #0x08
	ldw	x, #0x500a
	call	_GPIO_WriteLow
;	src\ds18X20.c: 8: delay_us(900);
	ldw	x, #0x0384
	call	_delay_us
;	src\ds18X20.c: 9: OW_HIGH();
	ld	a, #0x08
	ldw	x, #0x500a
	call	_GPIO_WriteHigh
;	src\ds18X20.c: 11: delay_us(120);
	ldw	x, #0x0078
	call	_delay_us
;	src\ds18X20.c: 13: if(!OW_READ()) {
	ld	a, #0x08
	ldw	x, #0x500a
	call	_GPIO_ReadInputPin
	tnz	a
	jrne	00104$
;	src\ds18X20.c: 14: delay_us(480);
	ldw	x, #0x01e0
	call	_delay_us
;	src\ds18X20.c: 15: if(OW_READ()) {
	ld	a, #0x08
	ldw	x, #0x500a
	call	_GPIO_ReadInputPin
	tnz	a
	jreq	00105$
;	src\ds18X20.c: 16: delay_us(360);
	ldw	x, #0x0168
	call	_delay_us
;	src\ds18X20.c: 17: return TRUE;
	ld	a, #0x01
	ret
00104$:
;	src\ds18X20.c: 20: delay_us(900);
	ldw	x, #0x0384
	call	_delay_us
00105$:
;	src\ds18X20.c: 23: return FALSE;
	clr	a
;	src\ds18X20.c: 25: }
	ret
;	src\ds18X20.c: 27: void DS18X20_Write_Byte(uint8_t data) {
;	-----------------------------------------
;	 function DS18X20_Write_Byte
;	-----------------------------------------
_DS18X20_Write_Byte:
	pushw	x
	ld	(0x01, sp), a
;	src\ds18X20.c: 28: for(uint8_t i = 0; i < 8; i++)
	clr	(0x02, sp)
00106$:
	ld	a, (0x02, sp)
	cp	a, #0x08
	jrnc	00108$
;	src\ds18X20.c: 30: if(data & 0x01)
	ld	a, (0x01, sp)
	srl	a
	jrnc	00102$
;	src\ds18X20.c: 32: OW_LOW();               /* master - drive bus low */
	ld	a, #0x08
	ldw	x, #0x500a
	call	_GPIO_WriteLow
;	src\ds18X20.c: 34: __asm__ ("nop");
	nop
;	src\ds18X20.c: 35: __asm__ ("nop");
	nop
;	src\ds18X20.c: 36: __asm__ ("nop");
	nop
;	src\ds18X20.c: 37: __asm__ ("nop");
	nop
;	src\ds18X20.c: 38: __asm__ ("nop");
	nop
;	src\ds18X20.c: 39: __asm__ ("nop");
	nop
;	src\ds18X20.c: 40: __asm__ ("nop");
	nop
;	src\ds18X20.c: 41: OW_HIGH();              /* master - release bus */
	ld	a, #0x08
	ldw	x, #0x500a
	call	_GPIO_WriteHigh
;	src\ds18X20.c: 43: delay_us(50);   /* master - wait 64us (B-59,64,N/A) */
	ldw	x, #0x0032
	call	_delay_us
	jra	00103$
00102$:
;	src\ds18X20.c: 47: OW_LOW();                /* master - drive bus low */
	ld	a, #0x08
	ldw	x, #0x500a
	call	_GPIO_WriteLow
;	src\ds18X20.c: 48: delay_us(50);    /* master - wait 60us (C-60,60,120) */
	ldw	x, #0x0032
	call	_delay_us
;	src\ds18X20.c: 49: OW_HIGH();               /* master - release bus */
	ld	a, #0x08
	ldw	x, #0x500a
	call	_GPIO_WriteHigh
;	src\ds18X20.c: 51: __asm__ ("nop");
	nop
;	src\ds18X20.c: 52: __asm__ ("nop");
	nop
;	src\ds18X20.c: 53: __asm__ ("nop");
	nop
;	src\ds18X20.c: 54: __asm__ ("nop");
	nop
;	src\ds18X20.c: 55: __asm__ ("nop");
	nop
;	src\ds18X20.c: 56: __asm__ ("nop");
	nop
;	src\ds18X20.c: 57: __asm__ ("nop");
	nop
00103$:
;	src\ds18X20.c: 59: data >>= 1;
	srl	(0x01, sp)
;	src\ds18X20.c: 28: for(uint8_t i = 0; i < 8; i++)
	inc	(0x02, sp)
	jra	00106$
00108$:
;	src\ds18X20.c: 61: }
	popw	x
	ret
;	src\ds18X20.c: 63: uint8_t DS18X20_Read_Byte(void) {
;	-----------------------------------------
;	 function DS18X20_Read_Byte
;	-----------------------------------------
_DS18X20_Read_Byte:
	pushw	x
;	src\ds18X20.c: 64: uint8_t result = 0;
	clr	(0x01, sp)
;	src\ds18X20.c: 66: for(uint8_t i = 0; i < 8; i++)
	clr	(0x02, sp)
00105$:
	ld	a, (0x02, sp)
	cp	a, #0x08
	jrnc	00103$
;	src\ds18X20.c: 68: result >>= 1;
	srl	(0x01, sp)
;	src\ds18X20.c: 69: OW_LOW();                 /* master - drive bus low */
	ld	a, #0x08
	ldw	x, #0x500a
	call	_GPIO_WriteLow
;	src\ds18X20.c: 71: __asm__ ("nop");
	nop
;	src\ds18X20.c: 72: __asm__ ("nop");
	nop
;	src\ds18X20.c: 73: __asm__ ("nop");
	nop
;	src\ds18X20.c: 74: __asm__ ("nop");
	nop
;	src\ds18X20.c: 75: __asm__ ("nop");
	nop
;	src\ds18X20.c: 76: __asm__ ("nop");
	nop
;	src\ds18X20.c: 77: __asm__ ("nop");
	nop
;	src\ds18X20.c: 78: OW_HIGH();                /* master - release bus */
	ld	a, #0x08
	ldw	x, #0x500a
	call	_GPIO_WriteHigh
;	src\ds18X20.c: 80: __asm__ ("nop");
	nop
;	src\ds18X20.c: 81: __asm__ ("nop");
	nop
;	src\ds18X20.c: 82: __asm__ ("nop");
	nop
;	src\ds18X20.c: 83: __asm__ ("nop");
	nop
;	src\ds18X20.c: 84: __asm__ ("nop");
	nop
;	src\ds18X20.c: 85: __asm__ ("nop");
	nop
;	src\ds18X20.c: 86: __asm__ ("nop");
	nop
;	src\ds18X20.c: 87: __asm__ ("nop");
	nop
;	src\ds18X20.c: 88: __asm__ ("nop");
	nop
;	src\ds18X20.c: 89: __asm__ ("nop");
	nop
;	src\ds18X20.c: 90: __asm__ ("nop");
	nop
;	src\ds18X20.c: 91: __asm__ ("nop");
	nop
;	src\ds18X20.c: 92: __asm__ ("nop");
	nop
;	src\ds18X20.c: 94: if(OW_READ())  result |= 0x80;
	ld	a, #0x08
	ldw	x, #0x500a
	call	_GPIO_ReadInputPin
	tnz	a
	jreq	00102$
	sll	(0x01, sp)
	scf
	rrc	(0x01, sp)
00102$:
;	src\ds18X20.c: 95: delay_us(55);     /* master - wait 55us (F-50,55,N/A) */
	ldw	x, #0x0037
	call	_delay_us
;	src\ds18X20.c: 66: for(uint8_t i = 0; i < 8; i++)
	inc	(0x02, sp)
	jra	00105$
00103$:
;	src\ds18X20.c: 97: return (result);
	ld	a, (0x01, sp)
;	src\ds18X20.c: 98: }
	popw	x
	ret
;	src\ds18X20.c: 100: bool DS18X20_Read_ID(u8 *ROM_ID) {
;	-----------------------------------------
;	 function DS18X20_Read_ID
;	-----------------------------------------
_DS18X20_Read_ID:
	sub	sp, #3
	ldw	(0x01, sp), x
;	src\ds18X20.c: 101: if(!DS18X20_Reset()) return FALSE;
	call	_DS18X20_Reset
	tnz	a
	jrne	00102$
	clr	a
	jra	00107$
00102$:
;	src\ds18X20.c: 102: DS18X20_Write_Byte(READ_ROM);
	ld	a, #0x33
	call	_DS18X20_Write_Byte
;	src\ds18X20.c: 103: delay_us(100);
	ldw	x, #0x0064
	call	_delay_us
;	src\ds18X20.c: 104: for(uint8_t i = 0; i < 8; i++)
	clr	(0x03, sp)
00105$:
	ld	a, (0x03, sp)
	cp	a, #0x08
	jrnc	00103$
;	src\ds18X20.c: 106: ROM_ID[i] = DS18X20_Read_Byte();
	clrw	x
	ld	a, (0x03, sp)
	ld	xl, a
	addw	x, (0x01, sp)
	pushw	x
	call	_DS18X20_Read_Byte
	popw	x
	ld	(x), a
;	src\ds18X20.c: 104: for(uint8_t i = 0; i < 8; i++)
	inc	(0x03, sp)
	jra	00105$
00103$:
;	src\ds18X20.c: 108: return TRUE;
	ld	a, #0x01
00107$:
;	src\ds18X20.c: 109: }
	addw	sp, #3
	ret
;	src\ds18X20.c: 111: bool DS18X20_Skip_ID() {
;	-----------------------------------------
;	 function DS18X20_Skip_ID
;	-----------------------------------------
_DS18X20_Skip_ID:
;	src\ds18X20.c: 112: if(!DS18X20_Reset()) return FALSE;
	call	_DS18X20_Reset
	tnz	a
	jrne	00102$
	clr	a
	ret
00102$:
;	src\ds18X20.c: 113: DS18X20_Write_Byte(SKIP_ROM);
	ld	a, #0xcc
	call	_DS18X20_Write_Byte
;	src\ds18X20.c: 114: delay_us(100);
	ldw	x, #0x0064
	call	_delay_us
;	src\ds18X20.c: 115: return TRUE;
	ld	a, #0x01
;	src\ds18X20.c: 116: }
	ret
;	src\ds18X20.c: 118: float DS18X20_Get_Temperature() {
;	-----------------------------------------
;	 function DS18X20_Get_Temperature
;	-----------------------------------------
_DS18X20_Get_Temperature:
	sub	sp, #5
;	src\ds18X20.c: 123: int8_t sign = 1;
	ld	a, #0x01
	ld	(0x01, sp), a
;	src\ds18X20.c: 125: DS18X20_Skip_ID();
	call	_DS18X20_Skip_ID
;	src\ds18X20.c: 126: if (!DS18X20_Skip_ID()) {
	call	_DS18X20_Skip_ID
	tnz	a
	jrne	00102$
;	src\ds18X20.c: 127: return temperature;
	clrw	x
	ldw	y, #0xc2c8
	jra	00107$
00102$:
;	src\ds18X20.c: 129: DS18X20_Write_Byte(CONVERT_T);
	ld	a, #0x44
	call	_DS18X20_Write_Byte
;	src\ds18X20.c: 130: delay_ms(4000);
	ldw	x, #0x0fa0
	call	_delay_ms
;	src\ds18X20.c: 131: DS18X20_Skip_ID();
	call	_DS18X20_Skip_ID
;	src\ds18X20.c: 132: if (!DS18X20_Skip_ID()) {
	call	_DS18X20_Skip_ID
	tnz	a
	jrne	00104$
;	src\ds18X20.c: 133: return temperature;
	clrw	x
	ldw	y, #0xc2c8
	jra	00107$
00104$:
;	src\ds18X20.c: 135: DS18X20_Write_Byte(READ_SCRATCHPAD);
	ld	a, #0xbe
	call	_DS18X20_Write_Byte
;	src\ds18X20.c: 136: lsb = DS18X20_Read_Byte();
	call	_DS18X20_Read_Byte
	ld	(0x05, sp), a
;	src\ds18X20.c: 137: msb = DS18X20_Read_Byte();
	call	_DS18X20_Read_Byte
;	src\ds18X20.c: 138: if (msb >> 7) {
	ld	xh, a
	swap	a
	and	a, #0x0f
	srl	a
	srl	a
	srl	a
	tnz	a
	jreq	00106$
;	src\ds18X20.c: 139: msb = ~msb;
	ld	a, xh
	cpl	a
	ld	xh, a
;	src\ds18X20.c: 140: lsb = ~lsb;
	cpl	(0x05, sp)
;	src\ds18X20.c: 141: sign = -1;
	ld	a, #0xff
	ld	(0x01, sp), a
00106$:
;	src\ds18X20.c: 143: temp = msb;
;	src\ds18X20.c: 144: temp = temp << 8;
	clr	(0x03, sp)
;	src\ds18X20.c: 145: temp |= lsb;
	ld	a, (0x05, sp)
	clr	(0x04, sp)
	or	a, (0x03, sp)
	rlwa	x
	or	a, (0x04, sp)
;	src\ds18X20.c: 146: temp += 1;
	ld	xh, a
	incw	x
;	src\ds18X20.c: 168: return temperature = temp * 0.0625 * sign;
	call	___sint2fs
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3d
	call	___fsmul
	ldw	(0x04, sp), x
	ldw	(0x02, sp), y
	ld	a, (0x01, sp)
	call	___schar2fs
	pushw	x
	pushw	y
	ldw	x, (0x08, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	call	___fsmul
00107$:
;	src\ds18X20.c: 169: }
	addw	sp, #5
	ret
;	src\ds18X20.c: 171: void DS18X20_Setup(void) {
;	-----------------------------------------
;	 function DS18X20_Setup
;	-----------------------------------------
_DS18X20_Setup:
;	src\ds18X20.c: 172: OW_OUTPUT();
	ldw	x, #0x500a
	call	_GPIO_DeInit
	push	#0xf0
	ld	a, #0x08
	ldw	x, #0x500a
	call	_GPIO_Init
;	src\ds18X20.c: 173: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
