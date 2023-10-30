;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Mac OS X x86_64)
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
	.globl _CalibData
	.globl _Error
	.globl _BME280_Setup
	.globl _BME280_WriteReg
	.globl _BME280_ReadReg
	.globl _BME280_ReadReg_U16
	.globl _BME280_ReadReg_S16
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
;	src/bme280.c: 15: void Error(void) {
;	-----------------------------------------
;	 function Error
;	-----------------------------------------
_Error:
;	src/bme280.c: 16: LED_OFF;
	ld	a, #0x20
	ldw	x, #0x5014
;	src/bme280.c: 17: }
	jp	_GPIO_WriteHigh
;	src/bme280.c: 19: void BME280_Setup(void) {
;	-----------------------------------------
;	 function BME280_Setup
;	-----------------------------------------
_BME280_Setup:
;	src/bme280.c: 22: LED_ON;
	ld	a, #0x20
	ldw	x, #0x5014
;	src/bme280.c: 23: }
	jp	_GPIO_WriteLow
;	src/bme280.c: 25: void BME280_WriteReg(uint8_t iReg, uint8_t iValue) {
;	-----------------------------------------
;	 function BME280_WriteReg
;	-----------------------------------------
_BME280_WriteReg:
	pushw	x
;	src/bme280.c: 27: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src/bme280.c: 28: iData[1] = iValue;
	ld	a, (0x05, sp)
	ld	(0x02, sp), a
;	src/bme280.c: 29: I2C_Send_Bytes((BME280_ADDRESS << 1), sizeof(iData), iData);
	pushw	x
	ldw	x, #0x0002
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src/bme280.c: 30: }
	popw	x
	popw	x
	pop	a
	jp	(x)
;	src/bme280.c: 32: uint8_t BME280_ReadReg(uint8_t iReg) {
;	-----------------------------------------
;	 function BME280_ReadReg
;	-----------------------------------------
_BME280_ReadReg:
	push	a
;	src/bme280.c: 34: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src/bme280.c: 35: I2C_Send_Bytes((BME280_ADDRESS << 1), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src/bme280.c: 36: return I2C_Read_Byte(BME280_ADDRESS << 1);
	ld	a, #0xee
	call	_I2C_Read_Byte
;	src/bme280.c: 37: }
	addw	sp, #1
	ret
;	src/bme280.c: 39: void BME280_ReadReg_U16(uint8_t iReg, uint16_t *iValue) {
;	-----------------------------------------
;	 function BME280_ReadReg_U16
;	-----------------------------------------
_BME280_ReadReg_U16:
	sub	sp, #7
	ldw	(0x06, sp), x
;	src/bme280.c: 42: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src/bme280.c: 43: I2C_Send_Bytes((BME280_ADDRESS << 1), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src/bme280.c: 44: I2C_Read_Bytes((BME280_ADDRESS << 1), sizeof(iRes), iRes);
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	ldw	x, #0x0002
	ld	a, #0xee
	call	_I2C_Read_Bytes
;	src/bme280.c: 45: *iValue = iRes[0];
	ld	a, (0x02, sp)
	clrw	y
	ld	yl, a
	ldw	x, (0x06, sp)
	ldw	(x), y
;	src/bme280.c: 46: *iValue <<= 8;
	clr	a
	rlwa	y
	ldw	x, (0x06, sp)
	ldw	(x), y
;	src/bme280.c: 47: *iValue += iRes[1];
	ld	a, (0x03, sp)
	clrw	x
	ld	xl, a
	ldw	(0x04, sp), x
	addw	y, (0x04, sp)
	ldw	x, (0x06, sp)
	ldw	(x), y
;	src/bme280.c: 48: }
	addw	sp, #7
	ret
;	src/bme280.c: 50: void BME280_ReadReg_S16(uint8_t iReg, int16_t *iValue) {
;	-----------------------------------------
;	 function BME280_ReadReg_S16
;	-----------------------------------------
_BME280_ReadReg_S16:
	sub	sp, #7
	ldw	(0x06, sp), x
;	src/bme280.c: 53: iData[0] = iReg;
	ldw	x, sp
	incw	x
	ld	(x), a
;	src/bme280.c: 54: I2C_Send_Bytes((BME280_ADDRESS << 1), sizeof(iData), iData);
	pushw	x
	clrw	x
	incw	x
	ld	a, #0xee
	call	_I2C_Send_Bytes
;	src/bme280.c: 55: I2C_Read_Bytes((BME280_ADDRESS << 1), sizeof(iRes), iRes);
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	ldw	x, #0x0002
	ld	a, #0xee
	call	_I2C_Read_Bytes
;	src/bme280.c: 56: *iValue = iRes[0];
	ld	a, (0x02, sp)
	clrw	x
	ld	xl, a
	ldw	y, (0x06, sp)
	ldw	(y), x
;	src/bme280.c: 57: *iValue <<= 8;
	clr	a
	rlwa	x
	ldw	y, (0x06, sp)
	ldw	(y), x
;	src/bme280.c: 58: *iValue += iRes[1];
	ld	a, (0x03, sp)
	ld	(0x05, sp), a
	clr	(0x04, sp)
	addw	x, (0x04, sp)
	ldw	y, (0x06, sp)
	ldw	(y), x
;	src/bme280.c: 59: }
	addw	sp, #7
	ret
;	src/bme280.c: 61: uint8_t BME280_ReadStatus(void) {
;	-----------------------------------------
;	 function BME280_ReadStatus
;	-----------------------------------------
_BME280_ReadStatus:
;	src/bme280.c: 63: uint8_t res = BME280_ReadReg(BME280_REGISTER_STATUS) & 0x09;
	ld	a, #0xf3
	call	_BME280_ReadReg
	and	a, #0x09
;	src/bme280.c: 64: return res;
;	src/bme280.c: 65: }
	ret
;	src/bme280.c: 67: void BME280_ReadCoefficients(void) {
;	-----------------------------------------
;	 function BME280_ReadCoefficients
;	-----------------------------------------
_BME280_ReadCoefficients:
	sub	sp, #4
;	src/bme280.c: 68: BME280_ReadReg_U16(BME280_REGISTER_DIG_T1, &CalibData.dig_T1);
	ldw	x, #(_CalibData+0)
	ld	a, #0x88
	call	_BME280_ReadReg_U16
;	src/bme280.c: 69: BME280_ReadReg_S16(BME280_REGISTER_DIG_T2, &CalibData.dig_T2);
	ldw	x, #(_CalibData+2)
	ld	a, #0x8a
	call	_BME280_ReadReg_S16
;	src/bme280.c: 70: BME280_ReadReg_S16(BME280_REGISTER_DIG_T3, &CalibData.dig_T3);
	ldw	x, #(_CalibData+4)
	ld	a, #0x8c
	call	_BME280_ReadReg_S16
;	src/bme280.c: 71: BME280_ReadReg_U16(BME280_REGISTER_DIG_P1, &CalibData.dig_P1);
	ldw	x, #(_CalibData+6)
	ld	a, #0x8e
	call	_BME280_ReadReg_U16
;	src/bme280.c: 72: BME280_ReadReg_S16(BME280_REGISTER_DIG_P2, &CalibData.dig_P2);
	ldw	x, #(_CalibData+8)
	ld	a, #0x90
	call	_BME280_ReadReg_S16
;	src/bme280.c: 73: BME280_ReadReg_S16(BME280_REGISTER_DIG_P3, &CalibData.dig_P3);
	ldw	x, #(_CalibData+10)
	ld	a, #0x92
	call	_BME280_ReadReg_S16
;	src/bme280.c: 74: BME280_ReadReg_S16(BME280_REGISTER_DIG_P4, &CalibData.dig_P4);
	ldw	x, #(_CalibData+12)
	ld	a, #0x94
	call	_BME280_ReadReg_S16
;	src/bme280.c: 75: BME280_ReadReg_S16(BME280_REGISTER_DIG_P5, &CalibData.dig_P5);
	ldw	x, #(_CalibData+14)
	ld	a, #0x96
	call	_BME280_ReadReg_S16
;	src/bme280.c: 76: BME280_ReadReg_S16(BME280_REGISTER_DIG_P6, &CalibData.dig_P6);
	ldw	x, #(_CalibData+16)
	ld	a, #0x98
	call	_BME280_ReadReg_S16
;	src/bme280.c: 77: BME280_ReadReg_S16(BME280_REGISTER_DIG_P7, &CalibData.dig_P7);
	ldw	x, #(_CalibData+18)
	ld	a, #0x9a
	call	_BME280_ReadReg_S16
;	src/bme280.c: 78: BME280_ReadReg_S16(BME280_REGISTER_DIG_P8, &CalibData.dig_P8);
	ldw	x, #(_CalibData+20)
	ld	a, #0x9c
	call	_BME280_ReadReg_S16
;	src/bme280.c: 79: BME280_ReadReg_S16(BME280_REGISTER_DIG_P9, &CalibData.dig_P9);
	ldw	x, #(_CalibData+22)
	ld	a, #0x9e
	call	_BME280_ReadReg_S16
;	src/bme280.c: 80: CalibData.dig_H1 = BME280_ReadReg(BME280_REGISTER_DIG_H1);
	ld	a, #0xa1
	call	_BME280_ReadReg
	ld	_CalibData+24, a
;	src/bme280.c: 81: BME280_ReadReg_S16(BME280_REGISTER_DIG_H2, &CalibData.dig_H2);
	ldw	x, #(_CalibData+25)
	ld	a, #0xe1
	call	_BME280_ReadReg_S16
;	src/bme280.c: 82: CalibData.dig_H3 = BME280_ReadReg(BME280_REGISTER_DIG_H3);
	ld	a, #0xe3
	call	_BME280_ReadReg
	ld	_CalibData+27, a
;	src/bme280.c: 83: CalibData.dig_H4 = (BME280_ReadReg(BME280_REGISTER_DIG_H4) << 4) | (BME280_ReadReg(BME280_REGISTER_DIG_H4+1) & 0xF);
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
;	src/bme280.c: 84: CalibData.dig_H5 = (BME280_ReadReg(BME280_REGISTER_DIG_H5+1) << 4) | (BME280_ReadReg(BME280_REGISTER_DIG_H5) >> 4);
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
;	src/bme280.c: 85: CalibData.dig_H6 = (int8_t)BME280_ReadReg(BME280_REGISTER_DIG_H6);
	ld	a, #0xe7
	call	_BME280_ReadReg
	ld	_CalibData+32, a
;	src/bme280.c: 161: }
	addw	sp, #4
	ret
;	src/bme280.c: 163: void BME280_SetStandby(uint8_t tsb) {
;	-----------------------------------------
;	 function BME280_SetStandby
;	-----------------------------------------
_BME280_SetStandby:
	pushw	x
	ld	(0x02, sp), a
;	src/bme280.c: 165: reg = BME280_ReadReg(BME280_REG_CONFIG) & ~BME280_STBY_MSK;
	ld	a, #0xf5
	call	_BME280_ReadReg
	and	a, #0x1f
	ld	(0x01, sp), a
;	src/bme280.c: 166: reg |= tsb & BME280_STBY_MSK;
	ld	a, (0x02, sp)
	and	a, #0xe0
	or	a, (0x01, sp)
;	src/bme280.c: 167: BME280_WriteReg(BME280_REG_CONFIG,reg);
	push	a
	ld	a, #0xf5
	call	_BME280_WriteReg
;	src/bme280.c: 168: }
	popw	x
	ret
;	src/bme280.c: 170: void BME280_SetFilter(uint8_t filter) {
;	-----------------------------------------
;	 function BME280_SetFilter
;	-----------------------------------------
_BME280_SetFilter:
	pushw	x
	ld	(0x02, sp), a
;	src/bme280.c: 172: reg = BME280_ReadReg(BME280_REG_CONFIG) & ~BME280_FILTER_MSK;
	ld	a, #0xf5
	call	_BME280_ReadReg
	and	a, #0xe3
	ld	(0x01, sp), a
;	src/bme280.c: 173: reg |= filter & BME280_FILTER_MSK;
	ld	a, (0x02, sp)
	and	a, #0x1c
	or	a, (0x01, sp)
;	src/bme280.c: 174: BME280_WriteReg(BME280_REG_CONFIG,reg);
	push	a
	ld	a, #0xf5
	call	_BME280_WriteReg
;	src/bme280.c: 175: }
	popw	x
	ret
;	src/bme280.c: 177: void BME280_SetOversamplingTemper(uint8_t osrs) {
;	-----------------------------------------
;	 function BME280_SetOversamplingTemper
;	-----------------------------------------
_BME280_SetOversamplingTemper:
	pushw	x
	ld	(0x02, sp), a
;	src/bme280.c: 179: reg = BME280_ReadReg(BME280_REG_CTRL_MEAS) & ~BME280_OSRS_T_MSK;
	ld	a, #0xf4
	call	_BME280_ReadReg
	and	a, #0x1f
	ld	(0x01, sp), a
;	src/bme280.c: 180: reg |= osrs & BME280_OSRS_T_MSK;
	ld	a, (0x02, sp)
	and	a, #0xe0
	or	a, (0x01, sp)
;	src/bme280.c: 181: BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
	push	a
	ld	a, #0xf4
	call	_BME280_WriteReg
;	src/bme280.c: 182: }
	popw	x
	ret
;	src/bme280.c: 184: void BME280_SetOversamplingPressure(uint8_t osrs) {
;	-----------------------------------------
;	 function BME280_SetOversamplingPressure
;	-----------------------------------------
_BME280_SetOversamplingPressure:
	pushw	x
	ld	(0x02, sp), a
;	src/bme280.c: 186: reg = BME280_ReadReg(BME280_REG_CTRL_MEAS) & ~BME280_OSRS_P_MSK;
	ld	a, #0xf4
	call	_BME280_ReadReg
	and	a, #0xe3
	ld	(0x01, sp), a
;	src/bme280.c: 187: reg |= osrs & BME280_OSRS_P_MSK;
	ld	a, (0x02, sp)
	and	a, #0x1c
	or	a, (0x01, sp)
;	src/bme280.c: 188: BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
	push	a
	ld	a, #0xf4
	call	_BME280_WriteReg
;	src/bme280.c: 189: }
	popw	x
	ret
;	src/bme280.c: 191: void BME280_SetOversamplingHum(uint8_t osrs) {
;	-----------------------------------------
;	 function BME280_SetOversamplingHum
;	-----------------------------------------
_BME280_SetOversamplingHum:
	pushw	x
	ld	(0x02, sp), a
;	src/bme280.c: 193: reg = BME280_ReadReg(BME280_REG_CTRL_HUM) & ~BME280_OSRS_H_MSK;
	ld	a, #0xf2
	call	_BME280_ReadReg
	and	a, #0xf8
	ld	(0x01, sp), a
;	src/bme280.c: 194: reg |= osrs & BME280_OSRS_H_MSK;
	ld	a, (0x02, sp)
	and	a, #0x07
	or	a, (0x01, sp)
;	src/bme280.c: 195: BME280_WriteReg(BME280_REG_CTRL_HUM,reg);
	push	a
	ld	a, #0xf2
	call	_BME280_WriteReg
;	src/bme280.c: 198: reg = BME280_ReadReg(BME280_REG_CTRL_MEAS);
	ld	a, #0xf4
	call	_BME280_ReadReg
;	src/bme280.c: 199: BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
	push	a
	ld	a, #0xf4
	call	_BME280_WriteReg
;	src/bme280.c: 200: }
	popw	x
	ret
;	src/bme280.c: 202: void BME280_SetMode(uint8_t mode) {
;	-----------------------------------------
;	 function BME280_SetMode
;	-----------------------------------------
_BME280_SetMode:
	pushw	x
	ld	(0x02, sp), a
;	src/bme280.c: 204: reg = BME280_ReadReg(BME280_REG_CTRL_MEAS) & ~BME280_MODE_MSK;
	ld	a, #0xf4
	call	_BME280_ReadReg
	and	a, #0xfc
	ld	(0x01, sp), a
;	src/bme280.c: 205: reg |= mode & BME280_MODE_MSK;
	ld	a, (0x02, sp)
	and	a, #0x03
	or	a, (0x01, sp)
;	src/bme280.c: 206: BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
	push	a
	ld	a, #0xf4
	call	_BME280_WriteReg
;	src/bme280.c: 207: }
	popw	x
	ret
;	src/bme280.c: 209: float BME280_ReadTemperature(void) {
;	-----------------------------------------
;	 function BME280_ReadTemperature
;	-----------------------------------------
_BME280_ReadTemperature:
;	src/bme280.c: 211: return temper_float;
	clrw	x
	clrw	y
;	src/bme280.c: 212: }
	ret
;	src/bme280.c: 214: float BME280_ReadPressure(void) {
;	-----------------------------------------
;	 function BME280_ReadPressure
;	-----------------------------------------
_BME280_ReadPressure:
;	src/bme280.c: 216: return press_float;
	clrw	x
	clrw	y
;	src/bme280.c: 217: }
	ret
;	src/bme280.c: 219: float BME280_ReadHumidity(void) {
;	-----------------------------------------
;	 function BME280_ReadHumidity
;	-----------------------------------------
_BME280_ReadHumidity:
;	src/bme280.c: 221: return hum_float;
	clrw	x
	clrw	y
;	src/bme280.c: 222: }
	ret
;	src/bme280.c: 224: float BME280_ReadAltitude(float seaLevel) {
;	-----------------------------------------
;	 function BME280_ReadAltitude
;	-----------------------------------------
_BME280_ReadAltitude:
;	src/bme280.c: 227: return att;
	clrw	x
	clrw	y
;	src/bme280.c: 228: }
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
