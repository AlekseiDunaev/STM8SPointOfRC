;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module bme280
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_Read_Bytes
	.globl _I2C_Read_Byte
	.globl _I2C_Send_Bytes
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
	.globl _temper_int
	.globl _CalibData
	.globl _Error
	.globl _BME280_Setup
	.globl _BME280_WriteReg
	.globl _BME280_ReadReg
	.globl _BME280_ReadReg_U16
	.globl _BME280_ReadReg_LE_U16
	.globl _BME280_ReadReg_U24
	.globl _BME280_ReadReg_S16
	.globl _BME280_ReadReg_LE_S16
	.globl _BME280_ReadStatus
	.globl _BME280_ReadCoefficients
	.globl _BME280_SetStandby
	.globl _BME280_SetFilter
	.globl _BME280_SetOversamplingTemper
	.globl _BME280_SetOversamplingPressure
	.globl _BME280_SetOversamplingHum
	.globl _BME280_SetMode
	.globl _BME280_ReadTemperature
	.globl _BME280_ReadHumidity
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_CalibData::
	.ds 33
_temper_int::
	.ds 4
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
;	src\bme280.c: 15: void Error(void) {
;	-----------------------------------------
;	 function Error
;	-----------------------------------------
_Error:
;	src\bme280.c: 16: LED_OFF;
	ld	a, #0x20
	ldw	x, #0x5014
;	src\bme280.c: 17: }
	jp	_GPIO_WriteHigh
;	src\bme280.c: 19: void BME280_Setup(void) {
;	-----------------------------------------
;	 function BME280_Setup
;	-----------------------------------------
_BME280_Setup:
;	src\bme280.c: 22: uint8_t res = BME280_ReadReg(BME280_REG_ID);
	ld	a, #0xd0
	call	_BME280_ReadReg
;	src\bme280.c: 27: if (res != BME280_ID) {
	cp	a, #0x60
	jreq	00102$
;	src\bme280.c: 28: Error();
;	src\bme280.c: 29: return;
	jp	_Error
00102$:
;	src\bme280.c: 32: BME280_WriteReg(BME280_REG_SOFTRESET, BME280_SOFTRESET_VALUE);
	push	#0xb6
	ld	a, #0xe0
	call	_BME280_WriteReg
;	src\bme280.c: 33: while (BME280_ReadStatus() & BME280_STATUS_IM_UPDATE);
00103$:
	call	_BME280_ReadStatus
	srl	a
	jrc	00103$
;	src\bme280.c: 35: BME280_ReadCoefficients();
	call	_BME280_ReadCoefficients
;	src\bme280.c: 36: BME280_SetStandby(BME280_STBY_1000);
	ld	a, #0xa0
	call	_BME280_SetStandby
;	src\bme280.c: 37: BME280_SetFilter(BME280_FILTER_4);
	ld	a, #0x08
	call	_BME280_SetFilter
;	src\bme280.c: 38: BME280_SetOversamplingTemper(BME280_OSRS_T_x4);
	ld	a, #0x60
	call	_BME280_SetOversamplingTemper
;	src\bme280.c: 39: BME280_SetOversamplingPressure(BME280_OSRS_P_x2);
	ld	a, #0x08
	call	_BME280_SetOversamplingPressure
;	src\bme280.c: 40: BME280_SetOversamplingHum(BME280_OSRS_H_x1);
	ld	a, #0x01
	call	_BME280_SetOversamplingHum
;	src\bme280.c: 42: value32 = BME280_ReadReg(BME280_REG_CTRL_MEAS);
	ld	a, #0xf4
	call	_BME280_ReadReg
;	src\bme280.c: 43: value32 |= BME280_ReadReg(BME280_REG_CTRL_HUM) << 8;
	ld	a, #0xf2
	call	_BME280_ReadReg
;	src\bme280.c: 56: BME280_SetMode(BME280_MODE_NORMAL);
	ld	a, #0x03
	call	_BME280_SetMode
;	src\bme280.c: 58: LED_ON;
	ld	a, #0x20
	ldw	x, #0x5014
;	src\bme280.c: 59: }
	jp	_GPIO_WriteLow
;	src\bme280.c: 61: void BME280_WriteReg(uint8_t iReg, uint8_t iValue) {
;	-----------------------------------------
;	 function BME280_WriteReg
;	-----------------------------------------
_BME280_WriteReg:
	pushw	x
;	src\bme280.c: 63: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 64: iData[1] = iValue;
	ld	a, (0x05, sp)
	ld	(0x02, sp), a
;	src\bme280.c: 65: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	ldw	x, #0x0002
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 67: }
	popw	x
	popw	x
	pop	a
	jp	(x)
;	src\bme280.c: 69: uint8_t BME280_ReadReg(uint8_t iReg) {
;	-----------------------------------------
;	 function BME280_ReadReg
;	-----------------------------------------
_BME280_ReadReg:
	push	a
;	src\bme280.c: 71: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 72: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 74: return I2C_Read_Byte(BME280_ADDRESS);
	ld	a, #0xee
	call	_I2C_Read_Byte
;	src\bme280.c: 76: }
	addw	sp, #1
	ret
;	src\bme280.c: 78: void BME280_ReadReg_U16(uint8_t iReg, uint16_t *iValue) {
;	-----------------------------------------
;	 function BME280_ReadReg_U16
;	-----------------------------------------
_BME280_ReadReg_U16:
	sub	sp, #7
	ldw	(0x06, sp), x
;	src\bme280.c: 81: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 82: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 84: I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	ldw	x, #0x0002
	ld	a, #0xee
	call	_I2C_Read_Bytes
;	src\bme280.c: 86: *iValue = iRes[0];
	ld	a, (0x02, sp)
	clrw	y
	ld	yl, a
	ldw	x, (0x06, sp)
	ldw	(x), y
;	src\bme280.c: 87: *iValue <<= 8;
	clr	a
	rlwa	y
	ldw	x, (0x06, sp)
	ldw	(x), y
;	src\bme280.c: 88: *iValue += iRes[1];
	ld	a, (0x03, sp)
	clrw	x
	ld	xl, a
	ldw	(0x04, sp), x
	addw	y, (0x04, sp)
	ldw	x, (0x06, sp)
	ldw	(x), y
;	src\bme280.c: 89: }
	addw	sp, #7
	ret
;	src\bme280.c: 91: void BME280_ReadReg_LE_U16(uint8_t iReg, uint16_t *iValue) {
;	-----------------------------------------
;	 function BME280_ReadReg_LE_U16
;	-----------------------------------------
_BME280_ReadReg_LE_U16:
	sub	sp, #9
	ldw	(0x08, sp), x
;	src\bme280.c: 94: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 95: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 97: I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	ldw	x, #0x0002
	ld	a, #0xee
	call	_I2C_Read_Bytes
;	src\bme280.c: 99: *iValue = iRes[0];
	ld	a, (0x02, sp)
	clrw	y
	ld	yl, a
	ldw	x, (0x08, sp)
	ldw	(x), y
;	src\bme280.c: 100: *iValue <<= 8;
	clr	a
	rlwa	y
	ldw	x, (0x08, sp)
	ldw	(x), y
;	src\bme280.c: 101: *iValue += iRes[1];
	ld	a, (0x03, sp)
	clrw	x
	ld	xl, a
	ldw	(0x06, sp), x
	addw	y, (0x06, sp)
	ldw	x, (0x08, sp)
	ldw	(x), y
;	src\bme280.c: 102: *(uint16_t *)iValue = be16toword(*(uint16_t *) iValue);
	ldw	x, y
	clr	(0x05, sp)
	ld	a, yl
	clr	(0x06, sp)
	or	a, (0x06, sp)
	ld	yh, a
	ld	a, xh
	or	a, (0x05, sp)
	ld	yl, a
	ldw	x, (0x08, sp)
	ldw	(x), y
;	src\bme280.c: 103: }
	addw	sp, #9
	ret
;	src\bme280.c: 105: void BME280_ReadReg_U24(uint8_t iReg, uint32_t *iValue) {
;	-----------------------------------------
;	 function BME280_ReadReg_U24
;	-----------------------------------------
_BME280_ReadReg_U24:
	sub	sp, #14
	ldw	(0x0d, sp), x
;	src\bme280.c: 108: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 109: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 111: I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	ldw	x, #0x0003
	ld	a, #0xee
	call	_I2C_Read_Bytes
;	src\bme280.c: 113: *iValue = iRes[0];
	ld	a, (0x02, sp)
	clrw	y
	clr	(0x05, sp)
	ldw	x, (0x0d, sp)
	ld	(0x3, x), a
	ldw	(0x1, x), y
	push	a
	ld	a, (0x06, sp)
	ld	(x), a
	pop	a
;	src\bme280.c: 114: *iValue <<= 8;
	ld	(0x0b, sp), a
	ldw	(0x09, sp), y
	clr	(0x0c, sp)
	ldw	x, (0x0d, sp)
	ldw	y, (0x0b, sp)
	ldw	(0x2, x), y
	ldw	y, (0x09, sp)
	ldw	(x), y
;	src\bme280.c: 115: *iValue += iRes[1];
	ld	a, (0x03, sp)
	clrw	y
	clrw	x
	ld	yl, a
	addw	y, (0x0b, sp)
	ld	a, xl
	adc	a, (0x0a, sp)
	push	a
	ld	a, xh
	adc	a, (0x0a, sp)
	ld	(0x06, sp), a
	pop	a
	ldw	x, (0x0d, sp)
	ldw	(0x2, x), y
	ld	(0x1, x), a
	push	a
	ld	a, (0x06, sp)
	ld	(x), a
	pop	a
;	src\bme280.c: 116: *iValue <<= 8;
	ldw	(0x0a, sp), y
	ld	(0x09, sp), a
	clr	(0x0c, sp)
	ldw	x, (0x0d, sp)
	ldw	y, (0x0b, sp)
	ldw	(0x2, x), y
	ldw	y, (0x09, sp)
	ldw	(x), y
;	src\bme280.c: 117: *iValue += iRes[2];
	ld	a, (0x04, sp)
	clrw	y
	clrw	x
	ld	yl, a
	addw	y, (0x0b, sp)
	ld	a, xl
	adc	a, (0x0a, sp)
	push	a
	ld	a, xh
	adc	a, (0x0a, sp)
	ld	(0x06, sp), a
	pop	a
	ldw	x, (0x0d, sp)
	ldw	(0x2, x), y
	ld	(0x1, x), a
	push	a
	ld	a, (0x06, sp)
	ld	(x), a
	pop	a
;	src\bme280.c: 118: *(uint32_t*)iValue &= 0x00FFFFFF;
	ld	(0x0a, sp), a
	clr	(0x09, sp)
	ldw	x, (0x0d, sp)
	ldw	(0x2, x), y
	ldw	y, (0x09, sp)
	ldw	(x), y
;	src\bme280.c: 119: }
	addw	sp, #14
	ret
;	src\bme280.c: 139: void BME280_ReadReg_S16(uint8_t iReg, int16_t *iValue) {
;	-----------------------------------------
;	 function BME280_ReadReg_S16
;	-----------------------------------------
_BME280_ReadReg_S16:
	sub	sp, #7
	ldw	(0x06, sp), x
;	src\bme280.c: 142: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 143: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 145: I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	ldw	x, #0x0002
	ld	a, #0xee
	call	_I2C_Read_Bytes
;	src\bme280.c: 147: *iValue = iRes[0];
	ld	a, (0x02, sp)
	clrw	x
	ld	xl, a
	ldw	y, (0x06, sp)
	ldw	(y), x
;	src\bme280.c: 148: *iValue <<= 8;
	clr	a
	rlwa	x
	ldw	y, (0x06, sp)
	ldw	(y), x
;	src\bme280.c: 149: *iValue += iRes[1];
	ld	a, (0x03, sp)
	ld	(0x05, sp), a
	clr	(0x04, sp)
	addw	x, (0x04, sp)
	ldw	y, (0x06, sp)
	ldw	(y), x
;	src\bme280.c: 150: }
	addw	sp, #7
	ret
;	src\bme280.c: 152: void BME280_ReadReg_LE_S16(uint8_t iReg, int16_t *iValue) {
;	-----------------------------------------
;	 function BME280_ReadReg_LE_S16
;	-----------------------------------------
_BME280_ReadReg_LE_S16:
	sub	sp, #9
	ldw	(0x08, sp), x
;	src\bme280.c: 155: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 156: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 158: I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	ldw	x, #0x0002
	ld	a, #0xee
	call	_I2C_Read_Bytes
;	src\bme280.c: 160: *iValue = iRes[0];
	ld	a, (0x02, sp)
	clrw	x
	ld	xl, a
	ldw	y, (0x08, sp)
	ldw	(y), x
;	src\bme280.c: 161: *iValue <<= 8;
	clr	a
	rlwa	x
	ldw	y, (0x08, sp)
	ldw	(y), x
;	src\bme280.c: 162: *iValue += iRes[1];
	ld	a, (0x03, sp)
	ld	(0x07, sp), a
	clr	(0x06, sp)
	addw	x, (0x06, sp)
	ldw	y, (0x08, sp)
	ldw	(y), x
;	src\bme280.c: 163: *(int16_t *)iValue = be16toword(*(int16_t *) iValue);
	ldw	y, x
	clr	(0x05, sp)
	ld	a, xl
	clr	(0x06, sp)
	or	a, (0x06, sp)
	ld	xh, a
	ld	a, yh
	or	a, (0x05, sp)
	ld	xl, a
	ldw	y, (0x08, sp)
	ldw	(y), x
;	src\bme280.c: 164: }
	addw	sp, #9
	ret
;	src\bme280.c: 166: uint8_t BME280_ReadStatus(void) {
;	-----------------------------------------
;	 function BME280_ReadStatus
;	-----------------------------------------
_BME280_ReadStatus:
;	src\bme280.c: 168: uint8_t res = BME280_ReadReg(BME280_REGISTER_STATUS) & 0x09;
	ld	a, #0xf3
	call	_BME280_ReadReg
	and	a, #0x09
;	src\bme280.c: 169: return res;
;	src\bme280.c: 170: }
	ret
;	src\bme280.c: 172: void BME280_ReadCoefficients(void) {
;	-----------------------------------------
;	 function BME280_ReadCoefficients
;	-----------------------------------------
_BME280_ReadCoefficients:
	sub	sp, #4
;	src\bme280.c: 173: BME280_ReadReg_LE_U16(BME280_REGISTER_DIG_T1, &CalibData.dig_T1);
	ldw	x, #(_CalibData+0)
	ld	a, #0x88
	call	_BME280_ReadReg_LE_U16
;	src\bme280.c: 174: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_T2, &CalibData.dig_T2);
	ldw	x, #(_CalibData+2)
	ld	a, #0x8a
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 175: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_T3, &CalibData.dig_T3);
	ldw	x, #(_CalibData+4)
	ld	a, #0x8c
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 176: BME280_ReadReg_LE_U16(BME280_REGISTER_DIG_P1, &CalibData.dig_P1);
	ldw	x, #(_CalibData+6)
	ld	a, #0x8e
	call	_BME280_ReadReg_LE_U16
;	src\bme280.c: 177: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P2, &CalibData.dig_P2);
	ldw	x, #(_CalibData+8)
	ld	a, #0x90
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 178: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P3, &CalibData.dig_P3);
	ldw	x, #(_CalibData+10)
	ld	a, #0x92
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 179: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P4, &CalibData.dig_P4);
	ldw	x, #(_CalibData+12)
	ld	a, #0x94
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 180: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P5, &CalibData.dig_P5);
	ldw	x, #(_CalibData+14)
	ld	a, #0x96
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 181: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P6, &CalibData.dig_P6);
	ldw	x, #(_CalibData+16)
	ld	a, #0x98
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 182: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P7, &CalibData.dig_P7);
	ldw	x, #(_CalibData+18)
	ld	a, #0x9a
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 183: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P8, &CalibData.dig_P8);
	ldw	x, #(_CalibData+20)
	ld	a, #0x9c
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 184: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P9, &CalibData.dig_P9);
	ldw	x, #(_CalibData+22)
	ld	a, #0x9e
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 185: CalibData.dig_H1 = BME280_ReadReg(BME280_REGISTER_DIG_H1);
	ld	a, #0xa1
	call	_BME280_ReadReg
	ld	_CalibData+24, a
;	src\bme280.c: 186: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_H2, &CalibData.dig_H2);
	ldw	x, #(_CalibData+25)
	ld	a, #0xe1
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 187: CalibData.dig_H3 = BME280_ReadReg(BME280_REGISTER_DIG_H3);
	ld	a, #0xe3
	call	_BME280_ReadReg
	ld	_CalibData+27, a
;	src\bme280.c: 188: CalibData.dig_H4 = (BME280_ReadReg(BME280_REGISTER_DIG_H4) << 4) | (BME280_ReadReg(BME280_REGISTER_DIG_H4+1) & 0xF);
	ld	a, #0xe4
	call	_BME280_ReadReg
	clrw	x
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x01, sp), x
	ld	a, #0xe5
	call	_BME280_ReadReg
	and	a, #0x0f
	ld	(0x04, sp), a
	ld	a, (0x01, sp)
	ld	xh, a
	ld	a, (0x02, sp)
	or	a, (0x04, sp)
	ld	xl, a
	ldw	_CalibData+28, x
;	src\bme280.c: 189: CalibData.dig_H5 = (BME280_ReadReg(BME280_REGISTER_DIG_H5+1) << 4) | (BME280_ReadReg(BME280_REGISTER_DIG_H5) >> 4);
	ld	a, #0xe6
	call	_BME280_ReadReg
	clrw	x
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x03, sp), x
	ld	a, #0xe5
	call	_BME280_ReadReg
	swap	a
	and	a, #0x0f
	clrw	x
	or	a, (0x04, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
	ldw	_CalibData+30, x
;	src\bme280.c: 190: CalibData.dig_H6 = (int8_t)BME280_ReadReg(BME280_REGISTER_DIG_H6);
	ld	a, #0xe7
	call	_BME280_ReadReg
	ld	_CalibData+32, a
;	src\bme280.c: 230: }
	addw	sp, #4
	ret
;	src\bme280.c: 232: void BME280_SetStandby(uint8_t tsb) {
;	-----------------------------------------
;	 function BME280_SetStandby
;	-----------------------------------------
_BME280_SetStandby:
	pushw	x
	ld	(0x02, sp), a
;	src\bme280.c: 234: reg = BME280_ReadReg(BME280_REG_CONFIG) & ~BME280_STBY_MSK;
	ld	a, #0xf5
	call	_BME280_ReadReg
	and	a, #0x1f
	ld	(0x01, sp), a
;	src\bme280.c: 235: reg |= tsb & BME280_STBY_MSK;
	ld	a, (0x02, sp)
	and	a, #0xe0
	or	a, (0x01, sp)
;	src\bme280.c: 236: BME280_WriteReg(BME280_REG_CONFIG,reg);
	push	a
	ld	a, #0xf5
	call	_BME280_WriteReg
;	src\bme280.c: 237: }
	popw	x
	ret
;	src\bme280.c: 239: void BME280_SetFilter(uint8_t filter) {
;	-----------------------------------------
;	 function BME280_SetFilter
;	-----------------------------------------
_BME280_SetFilter:
	pushw	x
	ld	(0x02, sp), a
;	src\bme280.c: 241: reg = BME280_ReadReg(BME280_REG_CONFIG) & ~BME280_FILTER_MSK;
	ld	a, #0xf5
	call	_BME280_ReadReg
	and	a, #0xe3
	ld	(0x01, sp), a
;	src\bme280.c: 242: reg |= filter & BME280_FILTER_MSK;
	ld	a, (0x02, sp)
	and	a, #0x1c
	or	a, (0x01, sp)
;	src\bme280.c: 243: BME280_WriteReg(BME280_REG_CONFIG,reg);
	push	a
	ld	a, #0xf5
	call	_BME280_WriteReg
;	src\bme280.c: 244: }
	popw	x
	ret
;	src\bme280.c: 246: void BME280_SetOversamplingTemper(uint8_t osrs) {
;	-----------------------------------------
;	 function BME280_SetOversamplingTemper
;	-----------------------------------------
_BME280_SetOversamplingTemper:
	pushw	x
	ld	(0x02, sp), a
;	src\bme280.c: 248: reg = BME280_ReadReg(BME280_REG_CTRL_MEAS) & ~BME280_OSRS_T_MSK;
	ld	a, #0xf4
	call	_BME280_ReadReg
	and	a, #0x1f
	ld	(0x01, sp), a
;	src\bme280.c: 249: reg |= osrs & BME280_OSRS_T_MSK;
	ld	a, (0x02, sp)
	and	a, #0xe0
	or	a, (0x01, sp)
;	src\bme280.c: 250: BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
	push	a
	ld	a, #0xf4
	call	_BME280_WriteReg
;	src\bme280.c: 251: }
	popw	x
	ret
;	src\bme280.c: 253: void BME280_SetOversamplingPressure(uint8_t osrs) {
;	-----------------------------------------
;	 function BME280_SetOversamplingPressure
;	-----------------------------------------
_BME280_SetOversamplingPressure:
	pushw	x
	ld	(0x02, sp), a
;	src\bme280.c: 255: reg = BME280_ReadReg(BME280_REG_CTRL_MEAS) & ~BME280_OSRS_P_MSK;
	ld	a, #0xf4
	call	_BME280_ReadReg
	and	a, #0xe3
	ld	(0x01, sp), a
;	src\bme280.c: 256: reg |= osrs & BME280_OSRS_P_MSK;
	ld	a, (0x02, sp)
	and	a, #0x1c
	or	a, (0x01, sp)
;	src\bme280.c: 257: BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
	push	a
	ld	a, #0xf4
	call	_BME280_WriteReg
;	src\bme280.c: 258: }
	popw	x
	ret
;	src\bme280.c: 260: void BME280_SetOversamplingHum(uint8_t osrs) {
;	-----------------------------------------
;	 function BME280_SetOversamplingHum
;	-----------------------------------------
_BME280_SetOversamplingHum:
	pushw	x
	ld	(0x02, sp), a
;	src\bme280.c: 262: reg = BME280_ReadReg(BME280_REG_CTRL_HUM) & ~BME280_OSRS_H_MSK;
	ld	a, #0xf2
	call	_BME280_ReadReg
	and	a, #0xf8
	ld	(0x01, sp), a
;	src\bme280.c: 263: reg |= osrs & BME280_OSRS_H_MSK;
	ld	a, (0x02, sp)
	and	a, #0x07
	or	a, (0x01, sp)
;	src\bme280.c: 264: BME280_WriteReg(BME280_REG_CTRL_HUM,reg);
	push	a
	ld	a, #0xf2
	call	_BME280_WriteReg
;	src\bme280.c: 267: reg = BME280_ReadReg(BME280_REG_CTRL_MEAS);
	ld	a, #0xf4
	call	_BME280_ReadReg
;	src\bme280.c: 268: BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
	push	a
	ld	a, #0xf4
	call	_BME280_WriteReg
;	src\bme280.c: 269: }
	popw	x
	ret
;	src\bme280.c: 271: void BME280_SetMode(uint8_t mode) {
;	-----------------------------------------
;	 function BME280_SetMode
;	-----------------------------------------
_BME280_SetMode:
	pushw	x
	ld	(0x02, sp), a
;	src\bme280.c: 273: reg = BME280_ReadReg(BME280_REG_CTRL_MEAS) & ~BME280_MODE_MSK;
	ld	a, #0xf4
	call	_BME280_ReadReg
	and	a, #0xfc
	ld	(0x01, sp), a
;	src\bme280.c: 274: reg |= mode & BME280_MODE_MSK;
	ld	a, (0x02, sp)
	and	a, #0x03
	or	a, (0x01, sp)
;	src\bme280.c: 275: BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
	push	a
	ld	a, #0xf4
	call	_BME280_WriteReg
;	src\bme280.c: 276: }
	popw	x
	ret
;	src\bme280.c: 278: float BME280_ReadTemperature(void) {
;	-----------------------------------------
;	 function BME280_ReadTemperature
;	-----------------------------------------
_BME280_ReadTemperature:
	sub	sp, #16
;	src\bme280.c: 284: BME280_ReadReg_U24(BME280_REGISTER_TEMPDATA, &temper_raw);
	ldw	x, sp
	incw	x
	ld	a, #0xfa
	call	_BME280_ReadReg_U24
;	src\bme280.c: 290: temper_raw >>= 4;
	ldw	x, (0x03, sp)
	ldw	y, (0x01, sp)
	sraw	y
	rrcw	x
	sraw	y
	rrcw	x
	sraw	y
	rrcw	x
	sraw	y
	rrcw	x
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	src\bme280.c: 294: val1 = ((((temper_raw>>3) - ((int32_t)CalibData.dig_T1<<1))) * ((int32_t)CalibData.dig_T2)) >> 11;
	ldw	y, (0x03, sp)
	ldw	x, (0x01, sp)
	sraw	x
	rrcw	y
	sraw	x
	rrcw	y
	sraw	x
	rrcw	y
	ldw	(0x05, sp), x
	ldw	x, _CalibData+0
	clr	(0x0e, sp)
	clr	a
	ld	(0x09, sp), a
	ld	a, (0x0e, sp)
	sllw	x
	rlc	a
	rlc	(0x09, sp)
	ldw	(0x0b, sp), x
	subw	y, (0x0b, sp)
	push	a
	ld	a, (0x07, sp)
	sbc	a, (1, sp)
	ld	(0x0f, sp), a
	ld	a, (0x06, sp)
	sbc	a, (0x0a, sp)
	ld	(0x0e, sp), a
	pop	a
	ldw	x, _CalibData+2
	ld	a, xh
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0a, sp), a
	ld	(0x09, sp), a
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
	ldw	x, (0x13, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	ld	a, #0x0b
00103$:
	sraw	y
	rrcw	x
	dec	a
	jrne	00103$
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	src\bme280.c: 305: val2 = (((((temper_raw>>4) - ((int32_t)CalibData.dig_T1)) * ((temper_raw>>4) - ((int32_t)CalibData.dig_T1)))>>12) * ((int32_t)CalibData.dig_T3)) >> 14;
	ldw	y, (0x03, sp)
	ldw	x, (0x01, sp)
	sraw	x
	rrcw	y
	sraw	x
	rrcw	y
	sraw	x
	rrcw	y
	sraw	x
	rrcw	y
	ldw	(0x09, sp), x
	ldw	x, _CalibData+0
	ldw	(0x0f, sp), x
	clrw	x
	subw	y, (0x0f, sp)
	ld	a, (0x0a, sp)
	pushw	x
	sbc	a, (2, sp)
	popw	x
	ld	xl, a
	ld	a, (0x09, sp)
	pushw	x
	sbc	a, (1, sp)
	popw	x
	ld	xh, a
	pushw	y
	pushw	x
	pushw	y
	pushw	x
	call	__mullong
	addw	sp, #8
	ld	a, #0x0c
00105$:
	sraw	y
	rrcw	x
	dec	a
	jrne	00105$
	ldw	(0x0b, sp), x
	ldw	x, _CalibData+4
	ld	a, xh
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0e, sp), a
	ld	(0x0d, sp), a
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	pushw	y
	call	__mullong
	addw	sp, #8
	exgw	x, y
	ld	a, #0x0e
00107$:
	sraw	x
	rrcw	y
	dec	a
	jrne	00107$
;	src\bme280.c: 314: temper_int = val1 + val2;
	addw	y, (0x07, sp)
	ld	a, xl
	adc	a, (0x06, sp)
	rlwa	x
	adc	a, (0x05, sp)
	ld	xh, a
	ldw	_temper_int+2, y
	ldw	_temper_int+0, x
;	src\bme280.c: 320: temper_float = ((temper_int * 5 + 128) >> 8);
	ldw	x, _temper_int+2
	pushw	x
	ldw	x, _temper_int+0
	pushw	x
	push	#0x05
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x0d, sp), y
	addw	x, #0x0080
	exgw	x, y
	ldw	x, (0x0d, sp)
	jrnc	00109$
	incw	x
00109$:
	clr	a
	tnzw	x
	jrpl	00110$
	dec	a
00110$:
	rrwa	x
	rrwa	y
	pushw	y
	pushw	x
	call	___slong2fs
	addw	sp, #4
;	src\bme280.c: 321: temper_float /= 100.0f;
	push	#0x00
	push	#0x00
	push	#0xc8
	push	#0x42
	pushw	x
	pushw	y
	call	___fsdiv
;	src\bme280.c: 323: return temper_float;
;	src\bme280.c: 324: }
	addw	sp, #16
	ret
;	src\bme280.c: 355: float BME280_ReadHumidity(void) {
;	-----------------------------------------
;	 function BME280_ReadHumidity
;	-----------------------------------------
_BME280_ReadHumidity:
	sub	sp, #18
;	src\bme280.c: 359: BME280_ReadTemperature(); // must be done first to get t_fine
	call	_BME280_ReadTemperature
;	src\bme280.c: 360: BME280_ReadReg_S16(BME280_REGISTER_HUMIDDATA, &hum_raw);
	ldw	x, sp
	incw	x
	ld	a, #0xfd
	call	_BME280_ReadReg_S16
;	src\bme280.c: 367: hum_raw_sign = ((int32_t)hum_raw)&0x0000FFFF;
	ldw	y, (0x01, sp)
	clrw	x
	tnzw	y
	jrpl	00117$
	decw	x
00117$:
	clr	(0x10, sp)
	clr	(0x0f, sp)
;	src\bme280.c: 368: v_x1_u32r = (temper_int - ((int32_t)76800));
	ldw	x, _temper_int+2
	subw	x, #0x2c00
	ldw	(0x05, sp), x
	ld	a, _temper_int+1
	sbc	a, #0x01
	ld	(0x04, sp), a
	ld	a, _temper_int+0
	sbc	a, #0x00
;	src\bme280.c: 369: v_x1_u32r = (((((hum_raw_sign << 14) - (((int32_t)CalibData.dig_H4) << 20) - \
	push	a
	ldw	x, (0x10, sp)
	ld	a, #0x0e
00118$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00118$
	ldw	(0x0c, sp), x
	pop	a
	ldw	x, _CalibData+28
	ldw	(0x09, sp), x
	clrw	x
	tnz	(0x09, sp)
	jrpl	00120$
	decw	x
00120$:
	push	a
	ldw	x, (0x0a, sp)
	clr	(0x13, sp)
	clr	(0x12, sp)
	ld	a, #0x04
00121$:
	sllw	x
	dec	a
	jrne	00121$
	pop	a
	subw	y, (0x11, sp)
	ldw	(0x09, sp), y
	push	a
	ld	a, (0x0d, sp)
	pushw	x
	sbc	a, (2, sp)
	popw	x
	ld	(0x09, sp), a
	ld	a, (0x0c, sp)
	pushw	x
	sbc	a, (1, sp)
	popw	x
	ld	(0x08, sp), a
	pop	a
	ldw	x, _CalibData+30
	ldw	(0x11, sp), x
	clrw	x
	tnz	(0x11, sp)
	jrpl	00123$
	decw	x
00123$:
	push	a
	ldw	y, (0x06, sp)
	pushw	y
	exg	a, yl
	ld	a, (0x07, sp)
	exg	a, yl
	pushw	y
	addw	sp, #1
	push	a
	ldw	y, (0x16, sp)
	pushw	y
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x0e, sp), x
	ldw	(0x0c, sp), y
	pop	a
	ldw	x, (0x09, sp)
	subw	x, (0x0d, sp)
	push	a
	ld	a, (0x09, sp)
	sbc	a, (0x0d, sp)
	ld	(0x11, sp), a
	ld	a, (0x08, sp)
	sbc	a, (0x0c, sp)
	ld	(0x10, sp), a
	pop	a
	addw	x, #0x4000
	ldw	y, (0x0f, sp)
	jrnc	00124$
	incw	y
00124$:
	push	a
	ld	a, #0x0f
00125$:
	sraw	y
	rrcw	x
	dec	a
	jrne	00125$
	ldw	(0x0a, sp), x
	ldw	(0x08, sp), y
	pop	a
	ldw	x, #(_CalibData+0)
	push	a
	ld	a, (0x20, x)
	ld	xl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	ld	(0x11, sp), a
	ld	(0x10, sp), a
	pop	a
	push	a
	pushw	x
	ldw	x, (0x12, sp)
	pushw	x
	ldw	x, (0x0a, sp)
	pushw	x
	exg	a, xl
	ld	a, (0x0b, sp)
	exg	a, xl
	pushw	x
	addw	sp, #1
	push	a
	call	__mullong
	addw	sp, #8
	clr	a
	tnzw	y
	jrpl	00127$
	dec	a
00127$:
	rrwa	y
	rrwa	x
	pop	a
	sraw	y
	rrcw	x
	sraw	y
	rrcw	x
	ldw	(0x0d, sp), x
	ldw	(0x0b, sp), y
	ldw	x, #(_CalibData+0)
	push	a
	ld	a, (0x1b, x)
	ld	xl, a
	pop	a
	rlwa	x
	clr	a
	rrwa	x
	clr	(0x10, sp)
	clr	(0x0f, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	exg	a, xl
	ld	a, (0x0a, sp)
	exg	a, xl
	pushw	x
	addw	sp, #1
	push	a
	call	__mullong
	addw	sp, #8
	ld	a, #0x0b
00128$:
	sraw	y
	rrcw	x
	dec	a
	jrne	00128$
	ldw	(0x0f, sp), y
	addw	x, #0x8000
	ldw	y, (0x0f, sp)
	jrnc	00130$
	incw	y
00130$:
	pushw	x
	pushw	y
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	exgw	x, y
	clr	a
	tnzw	x
	jrpl	00131$
	dec	a
00131$:
	rrwa	x
	rrwa	y
	sraw	x
	rrcw	y
	sraw	x
	rrcw	y
	addw	x, #0x0020
	ldw	(0x0b, sp), x
	ldw	x, _CalibData+25
	ld	a, xh
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x10, sp), a
	ld	(0x0f, sp), a
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	pushw	y
	ldw	x, (0x11, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x0f, sp), y
	addw	x, #0x2000
	ldw	y, (0x0f, sp)
	jrnc	00132$
	incw	y
00132$:
	ld	a, #0x0e
00133$:
	sraw	y
	rrcw	x
	dec	a
	jrne	00133$
	pushw	x
	pushw	y
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x0d, sp), x
;	src\bme280.c: 374: v_x1_u32r = (v_x1_u32r - (((((v_x1_u32r >> 15) * (v_x1_u32r >> 15)) >> 7) * \
	ldw	(0x0f, sp), y
	ldw	x, (0x0d, sp)
	ld	a, #0x0f
00135$:
	sra	(0x0f, sp)
	rrc	(0x10, sp)
	rrcw	x
	dec	a
	jrne	00135$
	pushw	y
	pushw	x
	ld	a, (0x14, sp)
	push	a
	ld	a, (0x14, sp)
	push	a
	pushw	x
	ldw	x, (0x17, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	exg	a, yl
	ld	(0x12, sp), a
	exg	a, yl
	ld	a, yh
	popw	y
	push	a
	ld	a, (0x11, sp)
	ld	(0x09, sp), a
	pop	a
	sra	a
	rrc	(0x08, sp)
	rrcw	x
	sra	a
	rrc	(0x08, sp)
	rrcw	x
	sra	a
	rrc	(0x08, sp)
	rrcw	x
	sra	a
	rrc	(0x08, sp)
	rrcw	x
	sra	a
	rrc	(0x08, sp)
	rrcw	x
	sra	a
	rrc	(0x08, sp)
	rrcw	x
	sra	a
	rrc	(0x08, sp)
	rrcw	x
	ldw	(0x09, sp), x
	ld	(0x07, sp), a
	ld	a, _CalibData+24
	clrw	x
	ldw	(0x0f, sp), x
	pushw	y
	push	a
	ld	a, xh
	push	a
	ldw	x, (0x13, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x11, sp), y
	popw	y
	ld	a, (0x10, sp)
	sra	(0x0f, sp)
	rrc	a
	rrcw	x
	sra	(0x0f, sp)
	rrc	a
	rrcw	x
	sra	(0x0f, sp)
	rrc	a
	rrcw	x
	sra	(0x0f, sp)
	rrc	a
	rrcw	x
	ldw	(0x11, sp), x
	ldw	x, (0x0d, sp)
	subw	x, (0x11, sp)
	push	a
	ld	a, yl
	sbc	a, (1, sp)
	rlwa	y
	sbc	a, (0x10, sp)
	ld	yh, a
	pop	a
	ldw	(0x11, sp), x
	ldw	(0x0f, sp), y
;	src\bme280.c: 376: v_x1_u32r = (v_x1_u32r < 0) ? 0 : v_x1_u32r;
	tnz	(0x0f, sp)
	jrpl	00103$
	clrw	x
	ldw	(0x11, sp), x
	ldw	(0x0f, sp), x
00103$:
;	src\bme280.c: 377: v_x1_u32r = (v_x1_u32r > 419430400) ? 419430400 : v_x1_u32r;
	clrw	x
	cpw	x, (0x11, sp)
	clr	a
	sbc	a, (0x10, sp)
	ld	a, #0x19
	sbc	a, (0x0f, sp)
	jrsge	00105$
	clrw	x
	ldw	(0x11, sp), x
	ldw	x, #0x1900
	.byte 0xc5
00105$:
	ldw	x, (0x0f, sp)
00106$:
	ldw	y, (0x11, sp)
;	src\bme280.c: 378: hum_float = (v_x1_u32r >> 12);
	ld	a, #0x0c
00139$:
	sraw	x
	rrcw	y
	dec	a
	jrne	00139$
	pushw	y
	pushw	x
	call	___slong2fs
	addw	sp, #4
;	src\bme280.c: 379: hum_float /= 1024.0f;
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x44
	pushw	x
	pushw	y
	call	___fsdiv
;	src\bme280.c: 380: return hum_float;
;	src\bme280.c: 381: }
	addw	sp, #18
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
