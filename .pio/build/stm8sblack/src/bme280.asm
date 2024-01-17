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
	.globl _Registers
	.globl _CalibData
	.globl _Error
	.globl _BME280_Setup
	.globl _BME280_WriteReg
	.globl _BME280_ReadReg
	.globl _BME280_ReadReg_U16
	.globl _BME280_ReadReg_LE_U16
	.globl _BME280_ReadReg_U24
	.globl _BME280_ReadReg_LE_U24
	.globl _BME280_ReadReg_S16
	.globl _BME280_ReadReg_LE_S16
	.globl _BME280_ReadRegisters
	.globl _BME280_ReadStatus
	.globl _BME280_ReadCoefficients
	.globl _BME280_SetStandby
	.globl _BME280_SetFilter
	.globl _BME280_SetOversamplingTemper
	.globl _BME280_SetOversamplingPressure
	.globl _BME280_SetOversamplingHum
	.globl _BME280_SetMode
	.globl _BME280_ReadTemperature
	.globl _BME280_ReadPressure
	.globl _BME280_ReadHumidity
	.globl _BME280_ReadAltitude
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_CalibData::
	.ds 33
_Registers::
	.ds 10
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
;	src\bme280.c: 18: void Error(void) {
;	-----------------------------------------
;	 function Error
;	-----------------------------------------
_Error:
;	src\bme280.c: 19: LED_OFF;
	ld	a, #0x20
	ldw	x, #0x5014
;	src\bme280.c: 20: }
	jp	_GPIO_WriteHigh
;	src\bme280.c: 22: void BME280_Setup(void) {
;	-----------------------------------------
;	 function BME280_Setup
;	-----------------------------------------
_BME280_Setup:
;	src\bme280.c: 25: uint8_t res = BME280_ReadReg(BME280_REG_ID);
	ld	a, #0xd0
	call	_BME280_ReadReg
;	src\bme280.c: 30: if (res != BME280_ID) {
	cp	a, #0x60
	jreq	00102$
;	src\bme280.c: 31: Error();
;	src\bme280.c: 32: return;
	jp	_Error
00102$:
;	src\bme280.c: 35: BME280_WriteReg(BME280_REG_SOFTRESET, BME280_SOFTRESET_VALUE);
	push	#0xb6
	ld	a, #0xe0
	call	_BME280_WriteReg
;	src\bme280.c: 36: while (BME280_ReadStatus() & BME280_STATUS_IM_UPDATE);
00103$:
	call	_BME280_ReadStatus
	srl	a
	jrc	00103$
;	src\bme280.c: 38: BME280_ReadCoefficients();
	call	_BME280_ReadCoefficients
;	src\bme280.c: 39: BME280_SetStandby(BME280_STBY_1000);
	ld	a, #0xa0
	call	_BME280_SetStandby
;	src\bme280.c: 40: BME280_SetFilter(BME280_FILTER_4);
	ld	a, #0x08
	call	_BME280_SetFilter
;	src\bme280.c: 41: BME280_SetOversamplingTemper(BME280_OSRS_T_x4);
	ld	a, #0x60
	call	_BME280_SetOversamplingTemper
;	src\bme280.c: 42: BME280_SetOversamplingPressure(BME280_OSRS_P_x2);
	ld	a, #0x08
	call	_BME280_SetOversamplingPressure
;	src\bme280.c: 43: BME280_SetOversamplingHum(BME280_OSRS_H_x1);
	ld	a, #0x01
	call	_BME280_SetOversamplingHum
;	src\bme280.c: 45: value32 = BME280_ReadReg(BME280_REG_CTRL_MEAS);
	ld	a, #0xf4
	call	_BME280_ReadReg
;	src\bme280.c: 46: value32 |= BME280_ReadReg(BME280_REG_CTRL_HUM) << 8;
	ld	a, #0xf2
	call	_BME280_ReadReg
;	src\bme280.c: 59: BME280_SetMode(BME280_MODE_FORCED);
	ld	a, #0x01
	call	_BME280_SetMode
;	src\bme280.c: 62: LED_ON;
	ld	a, #0x20
	ldw	x, #0x5014
;	src\bme280.c: 63: }
	jp	_GPIO_WriteLow
;	src\bme280.c: 65: void BME280_WriteReg(uint8_t iReg, uint8_t iValue) {
;	-----------------------------------------
;	 function BME280_WriteReg
;	-----------------------------------------
_BME280_WriteReg:
	pushw	x
;	src\bme280.c: 67: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 68: iData[1] = iValue;
	ld	a, (0x05, sp)
	ld	(0x02, sp), a
;	src\bme280.c: 69: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	ldw	x, #0x0002
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 70: }
	popw	x
	popw	x
	pop	a
	jp	(x)
;	src\bme280.c: 72: uint8_t BME280_ReadReg(uint8_t iReg) {
;	-----------------------------------------
;	 function BME280_ReadReg
;	-----------------------------------------
_BME280_ReadReg:
	push	a
;	src\bme280.c: 74: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 75: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 76: return I2C_Read_Byte(BME280_ADDRESS);
	ld	a, #0xee
	call	_I2C_Read_Byte
;	src\bme280.c: 77: }
	addw	sp, #1
	ret
;	src\bme280.c: 79: void BME280_ReadReg_U16(uint8_t iReg, uint16_t *iValue) {
;	-----------------------------------------
;	 function BME280_ReadReg_U16
;	-----------------------------------------
_BME280_ReadReg_U16:
	sub	sp, #7
	ldw	(0x06, sp), x
;	src\bme280.c: 82: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 83: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
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
;	src\bme280.c: 85: *iValue = iRes[0];
	ld	a, (0x02, sp)
	clrw	y
	ld	yl, a
	ldw	x, (0x06, sp)
	ldw	(x), y
;	src\bme280.c: 86: *iValue <<= 8;
	clr	a
	rlwa	y
	ldw	x, (0x06, sp)
	ldw	(x), y
;	src\bme280.c: 87: *iValue += iRes[1];
	ld	a, (0x03, sp)
	clrw	x
	ld	xl, a
	ldw	(0x04, sp), x
	addw	y, (0x04, sp)
	ldw	x, (0x06, sp)
	ldw	(x), y
;	src\bme280.c: 88: }
	addw	sp, #7
	ret
;	src\bme280.c: 90: void BME280_ReadReg_LE_U16(uint8_t iReg, uint16_t *iValue) {
;	-----------------------------------------
;	 function BME280_ReadReg_LE_U16
;	-----------------------------------------
_BME280_ReadReg_LE_U16:
	sub	sp, #9
	ldw	(0x08, sp), x
;	src\bme280.c: 93: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 94: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 95: I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	ldw	x, #0x0002
	ld	a, #0xee
	call	_I2C_Read_Bytes
;	src\bme280.c: 96: *iValue = iRes[0];
	ld	a, (0x02, sp)
	clrw	y
	ld	yl, a
	ldw	x, (0x08, sp)
	ldw	(x), y
;	src\bme280.c: 97: *iValue <<= 8;
	clr	a
	rlwa	y
	ldw	x, (0x08, sp)
	ldw	(x), y
;	src\bme280.c: 98: *iValue += iRes[1];
	ld	a, (0x03, sp)
	clrw	x
	ld	xl, a
	ldw	(0x06, sp), x
	addw	y, (0x06, sp)
	ldw	x, (0x08, sp)
	ldw	(x), y
;	src\bme280.c: 99: *(uint16_t *)iValue = be16toword(*(uint16_t *) iValue);
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
;	src\bme280.c: 100: }
	addw	sp, #9
	ret
;	src\bme280.c: 102: void BME280_ReadReg_U24(uint8_t iReg, uint32_t *iValue) {
;	-----------------------------------------
;	 function BME280_ReadReg_U24
;	-----------------------------------------
_BME280_ReadReg_U24:
	sub	sp, #14
	ldw	(0x0d, sp), x
;	src\bme280.c: 105: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 106: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 107: I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	ldw	x, #0x0003
	ld	a, #0xee
	call	_I2C_Read_Bytes
;	src\bme280.c: 108: *iValue = iRes[0];
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
;	src\bme280.c: 109: *iValue <<= 8;
	ld	(0x0b, sp), a
	ldw	(0x09, sp), y
	clr	(0x0c, sp)
	ldw	x, (0x0d, sp)
	ldw	y, (0x0b, sp)
	ldw	(0x2, x), y
	ldw	y, (0x09, sp)
	ldw	(x), y
;	src\bme280.c: 110: *iValue += iRes[1];
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
;	src\bme280.c: 111: *iValue <<= 8;
	ldw	(0x0a, sp), y
	ld	(0x09, sp), a
	clr	(0x0c, sp)
	ldw	x, (0x0d, sp)
	ldw	y, (0x0b, sp)
	ldw	(0x2, x), y
	ldw	y, (0x09, sp)
	ldw	(x), y
;	src\bme280.c: 112: *iValue += iRes[2];
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
;	src\bme280.c: 113: *(uint32_t*)iValue &= 0x00FFFFFF;
	ld	(0x0a, sp), a
	clr	(0x09, sp)
	ldw	x, (0x0d, sp)
	ldw	(0x2, x), y
	ldw	y, (0x09, sp)
	ldw	(x), y
;	src\bme280.c: 114: }
	addw	sp, #14
	ret
;	src\bme280.c: 116: void BME280_ReadReg_LE_U24(uint8_t iReg, uint32_t *iValue) {
;	-----------------------------------------
;	 function BME280_ReadReg_LE_U24
;	-----------------------------------------
_BME280_ReadReg_LE_U24:
	sub	sp, #22
	ldw	(0x15, sp), x
;	src\bme280.c: 119: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 120: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 121: I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	ldw	x, #0x0003
	ld	a, #0xee
	call	_I2C_Read_Bytes
;	src\bme280.c: 122: *iValue = iRes[0];
	ld	a, (0x02, sp)
	clrw	y
	clr	(0x0d, sp)
	ldw	x, (0x15, sp)
	ld	(0x3, x), a
	ldw	(0x1, x), y
	push	a
	ld	a, (0x0e, sp)
	ld	(x), a
	pop	a
;	src\bme280.c: 123: *iValue <<= 8;
	ld	(0x13, sp), a
	ldw	(0x11, sp), y
	clr	(0x14, sp)
	ldw	x, (0x15, sp)
	ldw	y, (0x13, sp)
	ldw	(0x2, x), y
	ldw	y, (0x11, sp)
	ldw	(x), y
;	src\bme280.c: 124: *iValue += iRes[1];
	ld	a, (0x03, sp)
	clrw	y
	clrw	x
	ld	yl, a
	addw	y, (0x13, sp)
	ld	a, xl
	adc	a, (0x12, sp)
	push	a
	ld	a, xh
	adc	a, (0x12, sp)
	ld	(0x0e, sp), a
	pop	a
	ldw	x, (0x15, sp)
	ldw	(0x2, x), y
	ld	(0x1, x), a
	push	a
	ld	a, (0x0e, sp)
	ld	(x), a
	pop	a
;	src\bme280.c: 125: *iValue <<= 8;
	ldw	(0x12, sp), y
	ld	(0x11, sp), a
	clr	(0x14, sp)
	ldw	x, (0x15, sp)
	ldw	y, (0x13, sp)
	ldw	(0x2, x), y
	ldw	y, (0x11, sp)
	ldw	(x), y
;	src\bme280.c: 126: *iValue += iRes[2];
	ld	a, (0x04, sp)
	clrw	y
	clrw	x
	ld	yl, a
	addw	y, (0x13, sp)
	ld	a, xl
	adc	a, (0x12, sp)
	ld	(0x06, sp), a
	ld	a, xh
	adc	a, (0x11, sp)
	ld	(0x05, sp), a
	ldw	x, (0x15, sp)
	ldw	(0x2, x), y
	ld	a, (0x06, sp)
	ld	(0x1, x), a
	ld	a, (0x05, sp)
	ld	(x), a
;	src\bme280.c: 127: *(uint32_t*)iValue = be24toword(*(uint32_t *)iValue) & 0x00FFFFFF;
	ld	a, (0x06, sp)
	ld	xl, a
	clr	(0x0c, sp)
	rlwa	x
	ld	a, yh
	rrwa	x
	clr	a
	clr	(0x09, sp)
	clr	(0x0f, sp)
	clr	(0x0e, sp)
	clr	(0x0d, sp)
	or	a, (0x0e, sp)
	ld	(0x12, sp), a
	ld	a, xl
	or	a, (0x0c, sp)
	ld	xl, a
	pushw	x
	ld	a, (0x11, sp)
	or	a, (1, sp)
	popw	x
	ld	xh, a
	ld	a, (0x0d, sp)
	or	a, (0x09, sp)
	clr	(0x10, sp)
	clr	(0x0f, sp)
	push	a
	clr	(0x0d, sp)
	clr	(0x0c, sp)
	clr	(0x0a, sp)
	pop	a
	or	a, (0x09, sp)
	ld	yh, a
	ld	a, xl
	or	a, (0x0c, sp)
	rlwa	x
	or	a, (0x0b, sp)
	ld	xh, a
	pushw	y
	ld	a, (0x14, sp)
	or	a, (2, sp)
	popw	y
	ld	(0x0e, sp), a
	ld	(0x12, sp), a
	clr	(0x11, sp)
	ldw	y, (0x15, sp)
	ldw	(0x2, y), x
	ldw	x, (0x11, sp)
	ldw	(y), x
;	src\bme280.c: 128: }
	addw	sp, #22
	ret
;	src\bme280.c: 130: void BME280_ReadReg_S16(uint8_t iReg, int16_t *iValue) {
;	-----------------------------------------
;	 function BME280_ReadReg_S16
;	-----------------------------------------
_BME280_ReadReg_S16:
	sub	sp, #7
	ldw	(0x06, sp), x
;	src\bme280.c: 133: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 134: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 135: I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	ldw	x, #0x0002
	ld	a, #0xee
	call	_I2C_Read_Bytes
;	src\bme280.c: 136: *iValue = iRes[0];
	ld	a, (0x02, sp)
	clrw	x
	ld	xl, a
	ldw	y, (0x06, sp)
	ldw	(y), x
;	src\bme280.c: 137: *iValue <<= 8;
	clr	a
	rlwa	x
	ldw	y, (0x06, sp)
	ldw	(y), x
;	src\bme280.c: 138: *iValue += iRes[1];
	ld	a, (0x03, sp)
	ld	(0x05, sp), a
	clr	(0x04, sp)
	addw	x, (0x04, sp)
	ldw	y, (0x06, sp)
	ldw	(y), x
;	src\bme280.c: 139: }
	addw	sp, #7
	ret
;	src\bme280.c: 141: void BME280_ReadReg_LE_S16(uint8_t iReg, int16_t *iValue) {
;	-----------------------------------------
;	 function BME280_ReadReg_LE_S16
;	-----------------------------------------
_BME280_ReadReg_LE_S16:
	sub	sp, #9
	ldw	(0x08, sp), x
;	src\bme280.c: 144: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src\bme280.c: 145: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 146: I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
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
	ldw	y, (0x08, sp)
	ldw	(y), x
;	src\bme280.c: 148: *iValue <<= 8;
	clr	a
	rlwa	x
	ldw	y, (0x08, sp)
	ldw	(y), x
;	src\bme280.c: 149: *iValue += iRes[1];
	ld	a, (0x03, sp)
	ld	(0x07, sp), a
	clr	(0x06, sp)
	addw	x, (0x06, sp)
	ldw	y, (0x08, sp)
	ldw	(y), x
;	src\bme280.c: 150: *(int16_t *)iValue = be16toword(*(int16_t *) iValue);
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
;	src\bme280.c: 151: }
	addw	sp, #9
	ret
;	src\bme280.c: 153: void BME280_ReadRegisters() {
;	-----------------------------------------
;	 function BME280_ReadRegisters
;	-----------------------------------------
_BME280_ReadRegisters:
	sub	sp, #21
;	src\bme280.c: 154: uint8_t iData[1] = { BME280_REGISTER_PRESSUREDATA };
	ldw	x, sp
	incw	x
	ld	a, #0xf7
	ld	(x), a
;	src\bme280.c: 156: I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src\bme280.c: 157: I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	ldw	x, #0x0008
	ld	a, #0xee
	call	_I2C_Read_Bytes
;	src\bme280.c: 158: Registers.pressure = iRes[0];
	ld	a, (0x02, sp)
	ld	(0x15, sp), a
	clrw	x
	ldw	(0x13, sp), x
	clr	(0x12, sp)
	ldw	x, #(_Registers+0)
	ldw	y, (0x14, sp)
	ldw	(0x2, x), y
	ldw	y, (0x12, sp)
	ldw	(x), y
;	src\bme280.c: 160: Registers.pressure += iRes[1];
	ld	a, (0x03, sp)
	clrw	y
	clrw	x
	tnzw	y
	jrpl	00103$
	decw	x
00103$:
	ld	yl, a
	addw	y, (0x14, sp)
	ld	a, xl
	adc	a, (0x13, sp)
	ld	(0x0b, sp), a
	ld	a, xh
	adc	a, (0x12, sp)
	ld	(0x0a, sp), a
	ldw	x, #(_Registers+0)
	ldw	(0x2, x), y
	ld	a, (0x0b, sp)
	ld	(0x1, x), a
	ld	a, (0x0a, sp)
	ld	(x), a
;	src\bme280.c: 162: Registers.pressure += iRes[2];
	ld	a, (0x04, sp)
	clrw	x
	ld	xl, a
	ldw	(0x10, sp), x
	clrw	x
	tnz	(0x10, sp)
	jrpl	00104$
	decw	x
00104$:
	addw	y, (0x10, sp)
	ld	a, xl
	adc	a, (0x0b, sp)
	push	a
	ld	a, xh
	adc	a, (0x0b, sp)
	ld	(0x13, sp), a
	pop	a
	ldw	x, #(_Registers+0)
	ldw	(0x2, x), y
	ld	(0x1, x), a
	push	a
	ld	a, (0x13, sp)
	ld	(x), a
	pop	a
;	src\bme280.c: 163: Registers.pressure &= 0x00FFFFFF;
	ld	(0x0f, sp), a
	clr	(0x0e, sp)
	ldw	x, #(_Registers+0)
	ldw	(0x2, x), y
	ldw	y, (0x0e, sp)
	ldw	(x), y
;	src\bme280.c: 164: Registers.temperature = iRes[3];
	ld	a, (0x05, sp)
	clrw	y
	clr	(0x12, sp)
	ldw	x, #(_Registers+4)
	ld	(0x3, x), a
	ldw	(0x1, x), y
	ld	a, (0x12, sp)
	ld	(x), a
;	src\bme280.c: 166: Registers.pressure += iRes[4];
	ldw	x, #(_Registers+0)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
	ldw	(0x0e, sp), x
	ld	a, (0x06, sp)
	clrw	x
	ld	xl, a
	ldw	(0x14, sp), x
	clrw	x
	tnz	(0x14, sp)
	jrpl	00105$
	decw	x
00105$:
	addw	y, (0x14, sp)
	ldw	(0x0c, sp), y
	ld	a, xl
	adc	a, (0x0f, sp)
	ld	(0x0b, sp), a
	ld	a, xh
	adc	a, (0x0e, sp)
	ld	(0x0a, sp), a
	ldw	x, #(_Registers+0)
	ldw	y, (0x0c, sp)
	ldw	(0x2, x), y
	ldw	y, (0x0a, sp)
	ldw	(x), y
;	src\bme280.c: 168: Registers.pressure += iRes[5];
	ld	a, (0x07, sp)
	clrw	x
	ld	xl, a
	ld	a, xh
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0f, sp), a
	addw	x, (0x0c, sp)
	exgw	x, y
	push	a
	ld	a, (0x10, sp)
	adc	a, (0x0c, sp)
	ld	(0x14, sp), a
	pop	a
	adc	a, (0x0a, sp)
	ld	(0x12, sp), a
	ldw	x, #(_Registers+0)
	ldw	(0x2, x), y
	ld	a, (0x13, sp)
	ld	(0x1, x), a
	ld	a, (0x12, sp)
	ld	(x), a
;	src\bme280.c: 169: Registers.pressure &= 0x00FFFFFF;
	ld	a, (0x13, sp)
	ld	(0x0f, sp), a
	clr	(0x0e, sp)
	ldw	x, #(_Registers+0)
	ldw	(0x2, x), y
	ldw	y, (0x0e, sp)
	ldw	(x), y
;	src\bme280.c: 170: Registers.humidity = iRes[6];
	ld	a, (0x08, sp)
	clrw	x
	ld	xl, a
	ldw	_Registers+8, x
;	src\bme280.c: 172: Registers.humidity = iRes[7];
	ld	a, (0x09, sp)
	clrw	x
	ld	xl, a
	ldw	_Registers+8, x
;	src\bme280.c: 173: }
	addw	sp, #21
	ret
;	src\bme280.c: 175: uint8_t BME280_ReadStatus(void) {
;	-----------------------------------------
;	 function BME280_ReadStatus
;	-----------------------------------------
_BME280_ReadStatus:
;	src\bme280.c: 177: uint8_t res = BME280_ReadReg(BME280_REGISTER_STATUS) & 0x09;
	ld	a, #0xf3
	call	_BME280_ReadReg
	and	a, #0x09
;	src\bme280.c: 178: return res;
;	src\bme280.c: 179: }
	ret
;	src\bme280.c: 181: void BME280_ReadCoefficients(void) {
;	-----------------------------------------
;	 function BME280_ReadCoefficients
;	-----------------------------------------
_BME280_ReadCoefficients:
	sub	sp, #4
;	src\bme280.c: 182: BME280_ReadReg_LE_U16(BME280_REGISTER_DIG_T1, &CalibData.dig_T1);
	ldw	x, #(_CalibData+0)
	ld	a, #0x88
	call	_BME280_ReadReg_LE_U16
;	src\bme280.c: 183: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_T2, &CalibData.dig_T2);
	ldw	x, #(_CalibData+2)
	ld	a, #0x8a
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 184: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_T3, &CalibData.dig_T3);
	ldw	x, #(_CalibData+4)
	ld	a, #0x8c
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 185: BME280_ReadReg_LE_U16(BME280_REGISTER_DIG_P1, &CalibData.dig_P1);
	ldw	x, #(_CalibData+6)
	ld	a, #0x8e
	call	_BME280_ReadReg_LE_U16
;	src\bme280.c: 186: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P2, &CalibData.dig_P2);
	ldw	x, #(_CalibData+8)
	ld	a, #0x90
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 187: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P3, &CalibData.dig_P3);
	ldw	x, #(_CalibData+10)
	ld	a, #0x92
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 188: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P4, &CalibData.dig_P4);
	ldw	x, #(_CalibData+12)
	ld	a, #0x94
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 189: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P5, &CalibData.dig_P5);
	ldw	x, #(_CalibData+14)
	ld	a, #0x96
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 190: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P6, &CalibData.dig_P6);
	ldw	x, #(_CalibData+16)
	ld	a, #0x98
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 191: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P7, &CalibData.dig_P7);
	ldw	x, #(_CalibData+18)
	ld	a, #0x9a
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 192: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P8, &CalibData.dig_P8);
	ldw	x, #(_CalibData+20)
	ld	a, #0x9c
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 193: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P9, &CalibData.dig_P9);
	ldw	x, #(_CalibData+22)
	ld	a, #0x9e
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 194: CalibData.dig_H1 = BME280_ReadReg(BME280_REGISTER_DIG_H1);
	ld	a, #0xa1
	call	_BME280_ReadReg
	ld	_CalibData+24, a
;	src\bme280.c: 195: BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_H2, &CalibData.dig_H2);
	ldw	x, #(_CalibData+25)
	ld	a, #0xe1
	call	_BME280_ReadReg_LE_S16
;	src\bme280.c: 196: CalibData.dig_H3 = BME280_ReadReg(BME280_REGISTER_DIG_H3);
	ld	a, #0xe3
	call	_BME280_ReadReg
	ld	_CalibData+27, a
;	src\bme280.c: 197: CalibData.dig_H4 = (BME280_ReadReg(BME280_REGISTER_DIG_H4) << 4) | (BME280_ReadReg(BME280_REGISTER_DIG_H4+1) & 0xF);
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
;	src\bme280.c: 198: CalibData.dig_H5 = (BME280_ReadReg(BME280_REGISTER_DIG_H5+1) << 4) | (BME280_ReadReg(BME280_REGISTER_DIG_H5) >> 4);
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
;	src\bme280.c: 199: CalibData.dig_H6 = (int8_t)BME280_ReadReg(BME280_REGISTER_DIG_H6);
	ld	a, #0xe7
	call	_BME280_ReadReg
	ld	_CalibData+32, a
;	src\bme280.c: 239: }
	addw	sp, #4
	ret
;	src\bme280.c: 241: void BME280_SetStandby(uint8_t tsb) {
;	-----------------------------------------
;	 function BME280_SetStandby
;	-----------------------------------------
_BME280_SetStandby:
	pushw	x
	ld	(0x02, sp), a
;	src\bme280.c: 243: reg = BME280_ReadReg(BME280_REG_CONFIG) & ~BME280_STBY_MSK;
	ld	a, #0xf5
	call	_BME280_ReadReg
	and	a, #0x1f
	ld	(0x01, sp), a
;	src\bme280.c: 244: reg |= tsb & BME280_STBY_MSK;
	ld	a, (0x02, sp)
	and	a, #0xe0
	or	a, (0x01, sp)
;	src\bme280.c: 245: BME280_WriteReg(BME280_REG_CONFIG,reg);
	push	a
	ld	a, #0xf5
	call	_BME280_WriteReg
;	src\bme280.c: 246: }
	popw	x
	ret
;	src\bme280.c: 248: void BME280_SetFilter(uint8_t filter) {
;	-----------------------------------------
;	 function BME280_SetFilter
;	-----------------------------------------
_BME280_SetFilter:
	pushw	x
	ld	(0x02, sp), a
;	src\bme280.c: 250: reg = BME280_ReadReg(BME280_REG_CONFIG) & ~BME280_FILTER_MSK;
	ld	a, #0xf5
	call	_BME280_ReadReg
	and	a, #0xe3
	ld	(0x01, sp), a
;	src\bme280.c: 251: reg |= filter & BME280_FILTER_MSK;
	ld	a, (0x02, sp)
	and	a, #0x1c
	or	a, (0x01, sp)
;	src\bme280.c: 252: BME280_WriteReg(BME280_REG_CONFIG,reg);
	push	a
	ld	a, #0xf5
	call	_BME280_WriteReg
;	src\bme280.c: 253: }
	popw	x
	ret
;	src\bme280.c: 255: void BME280_SetOversamplingTemper(uint8_t osrs) {
;	-----------------------------------------
;	 function BME280_SetOversamplingTemper
;	-----------------------------------------
_BME280_SetOversamplingTemper:
	pushw	x
	ld	(0x02, sp), a
;	src\bme280.c: 257: reg = BME280_ReadReg(BME280_REG_CTRL_MEAS) & ~BME280_OSRS_T_MSK;
	ld	a, #0xf4
	call	_BME280_ReadReg
	and	a, #0x1f
	ld	(0x01, sp), a
;	src\bme280.c: 258: reg |= osrs & BME280_OSRS_T_MSK;
	ld	a, (0x02, sp)
	and	a, #0xe0
	or	a, (0x01, sp)
;	src\bme280.c: 259: BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
	push	a
	ld	a, #0xf4
	call	_BME280_WriteReg
;	src\bme280.c: 260: }
	popw	x
	ret
;	src\bme280.c: 262: void BME280_SetOversamplingPressure(uint8_t osrs) {
;	-----------------------------------------
;	 function BME280_SetOversamplingPressure
;	-----------------------------------------
_BME280_SetOversamplingPressure:
	pushw	x
	ld	(0x02, sp), a
;	src\bme280.c: 264: reg = BME280_ReadReg(BME280_REG_CTRL_MEAS) & ~BME280_OSRS_P_MSK;
	ld	a, #0xf4
	call	_BME280_ReadReg
	and	a, #0xe3
	ld	(0x01, sp), a
;	src\bme280.c: 265: reg |= osrs & BME280_OSRS_P_MSK;
	ld	a, (0x02, sp)
	and	a, #0x1c
	or	a, (0x01, sp)
;	src\bme280.c: 266: BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
	push	a
	ld	a, #0xf4
	call	_BME280_WriteReg
;	src\bme280.c: 267: }
	popw	x
	ret
;	src\bme280.c: 269: void BME280_SetOversamplingHum(uint8_t osrs) {
;	-----------------------------------------
;	 function BME280_SetOversamplingHum
;	-----------------------------------------
_BME280_SetOversamplingHum:
	pushw	x
	ld	(0x02, sp), a
;	src\bme280.c: 271: reg = BME280_ReadReg(BME280_REG_CTRL_HUM) & ~BME280_OSRS_H_MSK;
	ld	a, #0xf2
	call	_BME280_ReadReg
	and	a, #0xf8
	ld	(0x01, sp), a
;	src\bme280.c: 272: reg |= osrs & BME280_OSRS_H_MSK;
	ld	a, (0x02, sp)
	and	a, #0x07
	or	a, (0x01, sp)
;	src\bme280.c: 273: BME280_WriteReg(BME280_REG_CTRL_HUM,reg);
	push	a
	ld	a, #0xf2
	call	_BME280_WriteReg
;	src\bme280.c: 276: reg = BME280_ReadReg(BME280_REG_CTRL_MEAS);
	ld	a, #0xf4
	call	_BME280_ReadReg
;	src\bme280.c: 277: BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
	push	a
	ld	a, #0xf4
	call	_BME280_WriteReg
;	src\bme280.c: 278: }
	popw	x
	ret
;	src\bme280.c: 280: void BME280_SetMode(uint8_t mode) {
;	-----------------------------------------
;	 function BME280_SetMode
;	-----------------------------------------
_BME280_SetMode:
	pushw	x
	ld	(0x02, sp), a
;	src\bme280.c: 282: reg = BME280_ReadReg(BME280_REG_CTRL_MEAS) & ~BME280_MODE_MSK;
	ld	a, #0xf4
	call	_BME280_ReadReg
	and	a, #0xfc
	ld	(0x01, sp), a
;	src\bme280.c: 283: reg |= mode & BME280_MODE_MSK;
	ld	a, (0x02, sp)
	and	a, #0x03
	or	a, (0x01, sp)
;	src\bme280.c: 284: BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
	push	a
	ld	a, #0xf4
	call	_BME280_WriteReg
;	src\bme280.c: 285: }
	popw	x
	ret
;	src\bme280.c: 287: float BME280_ReadTemperature(void) {
;	-----------------------------------------
;	 function BME280_ReadTemperature
;	-----------------------------------------
_BME280_ReadTemperature:
	sub	sp, #16
;	src\bme280.c: 293: temper_raw = Registers.temperature;
	ldw	x, #_Registers+4
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
;	src\bme280.c: 303: temper_raw >>= 4;
	sraw	x
	rrcw	y
	sraw	x
	rrcw	y
	sraw	x
	rrcw	y
	sraw	x
	rrcw	y
	ldw	(0x03, sp), y
	ldw	(0x01, sp), x
;	src\bme280.c: 312: val1 = ((((temper_raw>>3) - ((int32_t)CalibData.dig_T1<<1))) * ((int32_t)CalibData.dig_T2)) >> 11;
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
	ldw	(0x0f, sp), x
	ldw	(0x0d, sp), y
;	src\bme280.c: 313: val2 = (((((temper_raw>>4) - ((int32_t)CalibData.dig_T1)) * ((temper_raw>>4) - ((int32_t)CalibData.dig_T1)))>>12) * ((int32_t)CalibData.dig_T3)) >> 14;
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
	ldw	(0x07, sp), x
	clrw	x
	subw	y, (0x07, sp)
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
	ldw	(0x07, sp), x
	ldw	x, _CalibData+4
	ld	a, xh
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0a, sp), a
	ld	(0x09, sp), a
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
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
	addw	y, (0x0f, sp)
	ld	a, xl
	adc	a, (0x0e, sp)
	rlwa	x
	adc	a, (0x0d, sp)
	ld	xh, a
	ldw	_temper_int+2, y
	ldw	_temper_int+0, x
;	src\bme280.c: 325: temper_float = ((temper_int * 5 + 128) >> 8);
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
;	src\bme280.c: 326: temper_float /= 100.0f;
	push	#0x00
	push	#0x00
	push	#0xc8
	push	#0x42
	pushw	x
	pushw	y
	call	___fsdiv
;	src\bme280.c: 328: return temper_float;
;	src\bme280.c: 329: }
	addw	sp, #16
	ret
;	src\bme280.c: 331: float BME280_ReadPressure(void) {
;	-----------------------------------------
;	 function BME280_ReadPressure
;	-----------------------------------------
_BME280_ReadPressure:
	sub	sp, #12
;	src\bme280.c: 340: press_raw = Registers.pressure;
	ldw	x, #_Registers+0
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
;	src\bme280.c: 349: press_raw >>= 4;
	sraw	x
	rrcw	y
	sraw	x
	rrcw	y
	sraw	x
	rrcw	y
	sraw	x
	rrcw	y
	ldw	(0x0b, sp), y
	ldw	(0x09, sp), x
;	src\bme280.c: 358: val1 = (float)temper_int/2 - 64000.0;
	ldw	x, _temper_int+2
	pushw	x
	ldw	x, _temper_int+0
	pushw	x
	call	___slong2fs
	addw	sp, #4
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x40
	pushw	x
	pushw	y
	call	___fsdiv
	push	#0x00
	push	#0x00
	push	#0x7a
	push	#0x47
	pushw	x
	pushw	y
	call	___fssub
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	src\bme280.c: 377: val2 = (val1/4.0) + CalibData.dig_P4 * 65536;
	clrw	x
	pushw	x
	push	#0x80
	push	#0x40
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___fsdiv
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
	ldw	x, _CalibData+12
	ld	a, xh
	rlc	a
	clr	a
	sbc	a, #0x00
	clrw	y
	pushw	y
	pushw	x
	call	___slong2fs
	addw	sp, #4
	pushw	x
	pushw	y
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	___fsadd
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	src\bme280.c: 378: val1 = (1 + val1 / 32768) * (float)CalibData.dig_P1;
	clrw	x
	pushw	x
	push	#0x00
	push	#0x47
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___fsdiv
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x3f
	pushw	x
	pushw	y
	call	___fsadd
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
	ldw	x, _CalibData+6
	call	___uint2fs
	pushw	x
	pushw	y
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___fsmul
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	src\bme280.c: 379: p = 1048576.0 - (float)press_raw;
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___slong2fs
	addw	sp, #4
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x80
	push	#0x49
	call	___fssub
	ldw	(0x0b, sp), x
	ldw	(0x09, sp), y
;	src\bme280.c: 380: p = (p -(val2/4096)) * 6250 / val1;
	clrw	x
	pushw	x
	push	#0x80
	push	#0x45
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	___fsdiv
	pushw	x
	pushw	y
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fssub
	pushw	x
	pushw	y
	push	#0x00
	push	#0x50
	push	#0xc3
	push	#0x45
	call	___fsmul
	ldw	(0x0b, sp), x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	pushw	y
	call	___fsdiv
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	src\bme280.c: 381: val1 = (float)CalibData.dig_P9 * p * p / 2147483648;
	ldw	x, _CalibData+22
	call	___sint2fs
	ldw	(0x0b, sp), x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	pushw	y
	call	___fsmul
	ldw	(0x0b, sp), x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	pushw	y
	call	___fsmul
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x4f
	pushw	x
	pushw	y
	call	___fsdiv
	ldw	(0x0b, sp), x
	ldw	(0x09, sp), y
;	src\bme280.c: 382: val2 = p * (float)CalibData.dig_P8 / 32768.0;
	ldw	x, _CalibData+20
	call	___sint2fs
	pushw	x
	pushw	y
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___fsmul
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x47
	pushw	x
	pushw	y
	call	___fsdiv
;	src\bme280.c: 383: p = p + (val1 + val2 + (float)CalibData.dig_P7)/16.0;
	pushw	x
	pushw	y
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsadd
	ldw	(0x0b, sp), x
	ldw	(0x09, sp), y
	ldw	x, _CalibData+18
	call	___sint2fs
	pushw	x
	pushw	y
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsadd
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x41
	pushw	x
	pushw	y
	call	___fsdiv
	pushw	x
	pushw	y
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___fsadd
;	src\bme280.c: 407: return p;
;	src\bme280.c: 408: }
	addw	sp, #12
	ret
;	src\bme280.c: 410: float BME280_ReadHumidity(void) {
;	-----------------------------------------
;	 function BME280_ReadHumidity
;	-----------------------------------------
_BME280_ReadHumidity:
	sub	sp, #16
;	src\bme280.c: 416: hum_raw = Registers.humidity;
	ldw	y, _Registers+8
;	src\bme280.c: 422: hum_raw_sign = ((int32_t)hum_raw)&0x0000FFFF;
	clrw	x
	tnzw	y
	jrpl	00117$
	decw	x
00117$:
	clrw	x
;	src\bme280.c: 423: v_x1_u32r = (temper_int - ((int32_t)76800));
	ld	a, _temper_int+3
	ld	(0x04, sp), a
	ld	a, _temper_int+2
	sub	a, #0x2c
	ld	(0x03, sp), a
	ld	a, _temper_int+1
	sbc	a, #0x01
	ld	(0x02, sp), a
	ld	a, _temper_int+0
	sbc	a, #0x00
;	src\bme280.c: 424: v_x1_u32r = (((((hum_raw_sign << 14) - (((int32_t)CalibData.dig_H4) << 20) - \
	push	a
	ld	a, #0x0e
00118$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00118$
	ldw	(0x0a, sp), x
	pop	a
	ldw	x, _CalibData+28
	ldw	(0x07, sp), x
	clrw	x
	tnz	(0x07, sp)
	jrpl	00120$
	decw	x
00120$:
	push	a
	ldw	x, (0x08, sp)
	clr	(0x11, sp)
	clr	(0x10, sp)
	ld	a, #0x04
00121$:
	sllw	x
	dec	a
	jrne	00121$
	pop	a
	subw	y, (0x0f, sp)
	ldw	(0x07, sp), y
	push	a
	ld	a, (0x0b, sp)
	pushw	x
	sbc	a, (2, sp)
	popw	x
	ld	(0x07, sp), a
	ld	a, (0x0a, sp)
	pushw	x
	sbc	a, (1, sp)
	popw	x
	ld	(0x06, sp), a
	pop	a
	ldw	x, _CalibData+30
	ldw	(0x0f, sp), x
	clrw	x
	tnz	(0x0f, sp)
	jrpl	00123$
	decw	x
00123$:
	push	a
	ldw	y, (0x04, sp)
	pushw	y
	exg	a, yl
	ld	a, (0x05, sp)
	exg	a, yl
	pushw	y
	addw	sp, #1
	push	a
	ldw	y, (0x14, sp)
	pushw	y
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x0c, sp), x
	ldw	(0x0a, sp), y
	pop	a
	ldw	x, (0x07, sp)
	subw	x, (0x0b, sp)
	push	a
	ld	a, (0x07, sp)
	sbc	a, (0x0b, sp)
	ld	(0x0f, sp), a
	ld	a, (0x06, sp)
	sbc	a, (0x0a, sp)
	ld	(0x0e, sp), a
	pop	a
	addw	x, #0x4000
	ldw	y, (0x0d, sp)
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
	ldw	(0x08, sp), x
	ldw	(0x06, sp), y
	pop	a
	ldw	x, #(_CalibData+0)
	push	a
	ld	a, (0x20, x)
	ld	xl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	ld	(0x0f, sp), a
	ld	(0x0e, sp), a
	pop	a
	push	a
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	exg	a, xl
	ld	a, (0x09, sp)
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
	ldw	(0x0b, sp), x
	ldw	(0x09, sp), y
	ldw	x, #(_CalibData+0)
	push	a
	ld	a, (0x1b, x)
	ld	xl, a
	pop	a
	rlwa	x
	clr	a
	rrwa	x
	clr	(0x0e, sp)
	clr	(0x0d, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	exg	a, xl
	ld	a, (0x08, sp)
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
	ldw	(0x0d, sp), y
	addw	x, #0x8000
	ldw	y, (0x0d, sp)
	jrnc	00130$
	incw	y
00130$:
	pushw	x
	pushw	y
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
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
	ldw	(0x09, sp), x
	ldw	x, _CalibData+25
	ld	a, xh
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0e, sp), a
	ld	(0x0d, sp), a
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	pushw	y
	ldw	x, (0x0f, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x0d, sp), y
	addw	x, #0x2000
	ldw	y, (0x0d, sp)
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
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x0b, sp), x
;	src\bme280.c: 429: v_x1_u32r = (v_x1_u32r - (((((v_x1_u32r >> 15) * (v_x1_u32r >> 15)) >> 7) * \
	ldw	(0x0d, sp), y
	ldw	x, (0x0b, sp)
	ld	a, #0x0f
00135$:
	sra	(0x0d, sp)
	rrc	(0x0e, sp)
	rrcw	x
	dec	a
	jrne	00135$
	pushw	y
	pushw	x
	ld	a, (0x12, sp)
	push	a
	ld	a, (0x12, sp)
	push	a
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	exg	a, yl
	ld	(0x10, sp), a
	exg	a, yl
	ld	a, yh
	popw	y
	push	a
	ld	a, (0x0f, sp)
	ld	(0x07, sp), a
	pop	a
	sra	a
	rrc	(0x06, sp)
	rrcw	x
	sra	a
	rrc	(0x06, sp)
	rrcw	x
	sra	a
	rrc	(0x06, sp)
	rrcw	x
	sra	a
	rrc	(0x06, sp)
	rrcw	x
	sra	a
	rrc	(0x06, sp)
	rrcw	x
	sra	a
	rrc	(0x06, sp)
	rrcw	x
	sra	a
	rrc	(0x06, sp)
	rrcw	x
	ldw	(0x07, sp), x
	ld	(0x05, sp), a
	ld	a, _CalibData+24
	clrw	x
	ldw	(0x0d, sp), x
	pushw	y
	push	a
	ld	a, xh
	push	a
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x0f, sp), y
	popw	y
	ld	a, (0x0e, sp)
	sra	(0x0d, sp)
	rrc	a
	rrcw	x
	sra	(0x0d, sp)
	rrc	a
	rrcw	x
	sra	(0x0d, sp)
	rrc	a
	rrcw	x
	sra	(0x0d, sp)
	rrc	a
	rrcw	x
	ldw	(0x0f, sp), x
	ldw	x, (0x0b, sp)
	subw	x, (0x0f, sp)
	push	a
	ld	a, yl
	sbc	a, (1, sp)
	rlwa	y
	sbc	a, (0x0e, sp)
	ld	yh, a
	pop	a
	ldw	(0x0f, sp), x
	ldw	(0x0d, sp), y
;	src\bme280.c: 431: v_x1_u32r = (v_x1_u32r < 0) ? 0 : v_x1_u32r;
	tnz	(0x0d, sp)
	jrpl	00103$
	clrw	x
	ldw	(0x0f, sp), x
	ldw	(0x0d, sp), x
00103$:
;	src\bme280.c: 432: v_x1_u32r = (v_x1_u32r > 419430400) ? 419430400 : v_x1_u32r;
	clrw	x
	cpw	x, (0x0f, sp)
	clr	a
	sbc	a, (0x0e, sp)
	ld	a, #0x19
	sbc	a, (0x0d, sp)
	jrsge	00105$
	clrw	x
	ldw	(0x0f, sp), x
	ldw	x, #0x1900
	.byte 0xc5
00105$:
	ldw	x, (0x0d, sp)
00106$:
	ldw	y, (0x0f, sp)
;	src\bme280.c: 433: hum_float = (uint32_t)(v_x1_u32r >> 12);
	ld	a, #0x0c
00139$:
	sraw	x
	rrcw	y
	dec	a
	jrne	00139$
	pushw	y
	pushw	x
	call	___ulong2fs
	addw	sp, #4
;	src\bme280.c: 434: hum_float /= 1024.0f;
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x44
	pushw	x
	pushw	y
	call	___fsdiv
;	src\bme280.c: 435: return hum_float;
;	src\bme280.c: 436: }
	addw	sp, #16
	ret
;	src\bme280.c: 438: float BME280_ReadAltitude(float seaLevel) {
;	-----------------------------------------
;	 function BME280_ReadAltitude
;	-----------------------------------------
_BME280_ReadAltitude:
;	src\bme280.c: 440: float atm = BME280_ReadPressure();
	call	_BME280_ReadPressure
;	src\bme280.c: 442: return att;
	clrw	x
	clrw	y
;	src\bme280.c: 443: }
	pushw	x
	ldw	x, (3, sp)
	ldw	(7, sp), x
	popw	x
	addw	sp, #4
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
