;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_GetFlagStatus
	.globl _I2C_CheckEvent
	.globl _I2C_SendData
	.globl _I2C_Send7bitAddress
	.globl _I2C_ReceiveData
	.globl _I2C_AcknowledgeConfig
	.globl _I2C_GenerateSTOP
	.globl _I2C_GenerateSTART
	.globl _I2C_Cmd
	.globl _I2C_Init
	.globl _I2C_DeInit
	.globl _I2C_Setup
	.globl _I2C_Send_Bytes
	.globl _I2C_Read_Byte
	.globl _I2C_Read_Bytes
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
;	src\i2c.c: 8: void I2C_Setup(void) {
;	-----------------------------------------
;	 function I2C_Setup
;	-----------------------------------------
_I2C_Setup:
;	src\i2c.c: 9: I2C_DeInit();
	call	_I2C_DeInit
;	src\i2c.c: 12: I2C_Init(I2C_MAX_STANDARD_FREQ, I2C_ID_ADDRESS, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, I2C_MAX_INPUT_FREQ);
	push	#0x10
	push	#0x00
	push	#0x01
	push	#0x00
	push	#0xee
	push	#0x00
	push	#0xa0
	push	#0x86
	push	#0x01
	push	#0x00
	call	_I2C_Init
;	src\i2c.c: 13: I2C_Cmd(ENABLE);
	ld	a, #0x01
;	src\i2c.c: 14: }
	jp	_I2C_Cmd
;	src\i2c.c: 16: void I2C_Send_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
;	-----------------------------------------
;	 function I2C_Send_Bytes
;	-----------------------------------------
_I2C_Send_Bytes:
	sub	sp, #15
	ld	(0x07, sp), a
	ldw	(0x05, sp), x
;	src\i2c.c: 18: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
	ldw	x, #0x03e8
	ldw	(0x0e, sp), x
	clrw	x
	ldw	(0x0c, sp), x
00102$:
	ldw	x, #0x0302
	call	_I2C_GetFlagStatus
	tnz	a
	jreq	00104$
	ldw	y, (0x0e, sp)
	ldw	(0x0a, sp), y
	ldw	y, (0x0c, sp)
	ldw	(0x08, sp), y
	ldw	x, (0x0e, sp)
	subw	x, #0x0001
	ldw	(0x0e, sp), x
	ldw	x, (0x0c, sp)
	jrnc	00208$
	decw	x
00208$:
	ldw	(0x0c, sp), x
	ldw	x, (0x0a, sp)
	jrne	00102$
	ldw	x, (0x08, sp)
	jrne	00102$
00104$:
;	src\i2c.c: 19: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
	ld	a, #0x01
	call	_I2C_GenerateSTART
;	src\i2c.c: 21: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
	ldw	x, #0x03e8
	ldw	(0x0e, sp), x
	clrw	x
00106$:
	pushw	x
	ldw	x, #0x0301
	call	_I2C_CheckEvent
	popw	x
	tnz	a
	jrne	00108$
	ldw	(0x08, sp), x
	ldw	y, (0x0e, sp)
	ldw	(0x0a, sp), y
	ldw	y, (0x0e, sp)
	subw	y, #0x0001
	ldw	(0x0e, sp), y
	jrnc	00212$
	decw	x
00212$:
	ldw	y, (0x0a, sp)
	jrne	00106$
	ldw	y, (0x08, sp)
	jrne	00106$
00108$:
;	src\i2c.c: 22: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_TX);//Отсылаем адрес вызываемого устройства.
	push	#0x00
	ld	a, (0x08, sp)
	call	_I2C_Send7bitAddress
;	src\i2c.c: 24: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
	ldw	x, #0x03e8
	ldw	(0x0e, sp), x
	clrw	x
00110$:
	pushw	x
	ldw	x, #0x0102
	call	_I2C_GetFlagStatus
	popw	x
	tnz	a
	jrne	00112$
	ldw	(0x08, sp), x
	ldw	y, (0x0e, sp)
	ldw	(0x0a, sp), y
	ldw	y, (0x0e, sp)
	subw	y, #0x0001
	ldw	(0x0e, sp), y
	jrnc	00216$
	decw	x
00216$:
	ldw	y, (0x0a, sp)
	jrne	00110$
	ldw	y, (0x08, sp)
	jrne	00110$
00112$:
;	src\i2c.c: 25: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
	ld	a, 0x5217
	ld	a, 0x5219
;	src\i2c.c: 26: while(countData) {//Повторяем пока не отправятся все данные.
	ldw	y, (0x12, sp)
	ldw	(0x08, sp), y
	ldw	y, (0x05, sp)
	ldw	(0x0a, sp), y
00117$:
	ldw	x, (0x0a, sp)
	jreq	00119$
;	src\i2c.c: 28: while(!(I2C->SR1 & 128) && (time_out--));//Ждём когда буфер передающего регистра будет пуст.
	ldw	x, #0x03e8
	ldw	(0x0e, sp), x
	clrw	x
00114$:
	ld	a, 0x5217
	jrmi	00116$
	ldw	(0x01, sp), x
	ldw	y, (0x0e, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x0e, sp)
	subw	y, #0x0001
	ldw	(0x0e, sp), y
	jrnc	00221$
	decw	x
00221$:
	ldw	y, (0x03, sp)
	jrne	00114$
	ldw	y, (0x01, sp)
	jrne	00114$
00116$:
;	src\i2c.c: 29: I2C_SendData(*dataBuffer);
	ldw	x, (0x08, sp)
	ld	a, (x)
	call	_I2C_SendData
;	src\i2c.c: 30: *dataBuffer++;
	ldw	x, (0x08, sp)
	incw	x
	ldw	(0x08, sp), x
;	src\i2c.c: 31: countData--;
	ldw	x, (0x0a, sp)
	decw	x
	ldw	(0x0a, sp), x
	jra	00117$
00119$:
;	src\i2c.c: 34: while((!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED)) && (time_out--));//Ждём окончания отправки данных.
	ldw	x, #0x03e8
	ldw	(0x0e, sp), x
	clrw	x
00121$:
	pushw	x
	ldw	x, #0x0784
	call	_I2C_CheckEvent
	popw	x
	tnz	a
	jrne	00123$
	ldw	(0x08, sp), x
	ld	a, (0x0e, sp)
	ld	(0x0a, sp), a
	ld	a, (0x0f, sp)
	ldw	y, (0x0e, sp)
	subw	y, #0x0001
	ldw	(0x0e, sp), y
	jrnc	00226$
	decw	x
00226$:
	tnz	a
	jrne	00121$
	ldw	y, (0x09, sp)
	jrne	00121$
	tnz	(0x08, sp)
	jrne	00121$
00123$:
;	src\i2c.c: 35: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
	ld	a, #0x01
	call	_I2C_GenerateSTOP
;	src\i2c.c: 37: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
	ldw	x, #0x03e8
	ldw	(0x0e, sp), x
	clrw	x
00125$:
	ld	a, 0x5211
	bcp	a, #0x02
	jreq	00128$
	ldw	(0x08, sp), x
	ld	a, (0x0e, sp)
	ld	(0x0a, sp), a
	ld	a, (0x0f, sp)
	ldw	y, (0x0e, sp)
	subw	y, #0x0001
	ldw	(0x0e, sp), y
	jrnc	00230$
	decw	x
00230$:
	tnz	a
	jrne	00125$
	ldw	y, (0x09, sp)
	jrne	00125$
	tnz	(0x08, sp)
	jrne	00125$
00128$:
;	src\i2c.c: 38: }
	ldw	x, (16, sp)
	addw	sp, #19
	jp	(x)
;	src\i2c.c: 40: uint8_t I2C_Read_Byte(uint8_t Addr) {
;	-----------------------------------------
;	 function I2C_Read_Byte
;	-----------------------------------------
_I2C_Read_Byte:
	sub	sp, #10
	ld	(0x06, sp), a
;	src\i2c.c: 42: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
	ldw	x, #0x03e8
	ldw	(0x09, sp), x
	clrw	x
	ldw	(0x07, sp), x
00102$:
	ldw	x, #0x0302
	call	_I2C_GetFlagStatus
	tnz	a
	jreq	00104$
	ldw	y, (0x09, sp)
	ldw	(0x04, sp), y
	ldw	y, (0x07, sp)
	ldw	(0x02, sp), y
	ldw	x, (0x09, sp)
	subw	x, #0x0001
	ldw	(0x09, sp), x
	ldw	x, (0x07, sp)
	jrnc	00179$
	decw	x
00179$:
	ldw	(0x07, sp), x
	ldw	x, (0x04, sp)
	jrne	00102$
	ldw	x, (0x02, sp)
	jrne	00102$
00104$:
;	src\i2c.c: 43: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
	ld	a, #0x01
	call	_I2C_GenerateSTART
;	src\i2c.c: 45: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
	ldw	x, #0x03e8
	ldw	(0x09, sp), x
	clrw	x
00106$:
	pushw	x
	ldw	x, #0x0301
	call	_I2C_CheckEvent
	popw	x
	tnz	a
	jrne	00108$
	ldw	(0x02, sp), x
	ldw	y, (0x09, sp)
	ldw	(0x04, sp), y
	ldw	y, (0x09, sp)
	subw	y, #0x0001
	ldw	(0x09, sp), y
	jrnc	00183$
	decw	x
00183$:
	ldw	y, (0x04, sp)
	jrne	00106$
	ldw	y, (0x02, sp)
	jrne	00106$
00108$:
;	src\i2c.c: 46: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства и бит приёма данных.
	push	#0x01
	ld	a, (0x07, sp)
	call	_I2C_Send7bitAddress
;	src\i2c.c: 48: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
	ldw	x, #0x03e8
	ldw	(0x09, sp), x
	clrw	x
00110$:
	pushw	x
	ldw	x, #0x0102
	call	_I2C_GetFlagStatus
	popw	x
	tnz	a
	jrne	00112$
	ldw	(0x02, sp), x
	ldw	y, (0x09, sp)
	ldw	(0x04, sp), y
	ldw	y, (0x09, sp)
	subw	y, #0x0001
	ldw	(0x09, sp), y
	jrnc	00187$
	decw	x
00187$:
	ldw	y, (0x04, sp)
	jrne	00110$
	ldw	y, (0x02, sp)
	jrne	00110$
00112$:
;	src\i2c.c: 51: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
	clr	a
	call	_I2C_AcknowledgeConfig
;	src\i2c.c: 53: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
	ld	a, 0x5217
	ld	a, 0x5219
;	src\i2c.c: 55: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
	ld	a, #0x01
	call	_I2C_GenerateSTOP
;	src\i2c.c: 58: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
	ldw	x, #0x03e8
	ldw	(0x09, sp), x
	clrw	x
00114$:
	pushw	x
	ldw	x, #0x0140
	call	_I2C_GetFlagStatus
	popw	x
	tnz	a
	jrne	00116$
	ldw	(0x02, sp), x
	ldw	y, (0x09, sp)
	ldw	(0x04, sp), y
	ldw	y, (0x09, sp)
	subw	y, #0x0001
	ldw	(0x09, sp), y
	jrnc	00191$
	decw	x
00191$:
	ldw	y, (0x04, sp)
	jrne	00114$
	ldw	y, (0x02, sp)
	jrne	00114$
00116$:
;	src\i2c.c: 60: uint8_t read_byte = I2C_ReceiveData();//Читаем данные.
	call	_I2C_ReceiveData
	ld	(0x01, sp), a
;	src\i2c.c: 63: while((I2C->CR2 & I2C_CR2_STOP)&& (time_out--));//Ждём остановки передачи и STOP на линии.
	ldw	x, #0x03e8
	ldw	(0x09, sp), x
	clrw	x
00118$:
	btjf	0x5211, #1, 00120$
	ldw	(0x02, sp), x
	ldw	y, (0x09, sp)
	ldw	(0x04, sp), y
	ldw	y, (0x09, sp)
	subw	y, #0x0001
	ldw	(0x09, sp), y
	jrnc	00195$
	decw	x
00195$:
	ldw	y, (0x04, sp)
	jrne	00118$
	ldw	y, (0x02, sp)
	jrne	00118$
00120$:
;	src\i2c.c: 64: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
	ld	a, #0x01
	call	_I2C_AcknowledgeConfig
;	src\i2c.c: 65: return read_byte;
	ld	a, (0x01, sp)
;	src\i2c.c: 66: }
	addw	sp, #10
	ret
;	src\i2c.c: 69: void I2C_Read_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
;	-----------------------------------------
;	 function I2C_Read_Bytes
;	-----------------------------------------
_I2C_Read_Bytes:
	sub	sp, #15
	ld	(0x07, sp), a
	ldw	(0x05, sp), x
;	src\i2c.c: 71: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
	ldw	x, #0x03e8
	ldw	(0x0e, sp), x
	clrw	x
	ldw	(0x0c, sp), x
00102$:
	ldw	x, #0x0302
	call	_I2C_GetFlagStatus
	tnz	a
	jreq	00104$
	ldw	y, (0x0e, sp)
	ldw	(0x0a, sp), y
	ldw	y, (0x0c, sp)
	ldw	(0x08, sp), y
	ldw	x, (0x0e, sp)
	subw	x, #0x0001
	ldw	(0x0e, sp), x
	ldw	x, (0x0c, sp)
	jrnc	00229$
	decw	x
00229$:
	ldw	(0x0c, sp), x
	ldw	x, (0x0a, sp)
	jrne	00102$
	ldw	x, (0x08, sp)
	jrne	00102$
00104$:
;	src\i2c.c: 72: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
	ld	a, #0x01
	call	_I2C_GenerateSTART
;	src\i2c.c: 74: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
	ldw	x, #0x03e8
	ldw	(0x0e, sp), x
	clrw	x
00106$:
	pushw	x
	ldw	x, #0x0301
	call	_I2C_CheckEvent
	popw	x
	tnz	a
	jrne	00108$
	ldw	(0x08, sp), x
	ldw	y, (0x0e, sp)
	ldw	(0x0a, sp), y
	ldw	y, (0x0e, sp)
	subw	y, #0x0001
	ldw	(0x0e, sp), y
	jrnc	00233$
	decw	x
00233$:
	ldw	y, (0x0a, sp)
	jrne	00106$
	ldw	y, (0x08, sp)
	jrne	00106$
00108$:
;	src\i2c.c: 75: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства.
	push	#0x01
	ld	a, (0x08, sp)
	call	_I2C_Send7bitAddress
;	src\i2c.c: 77: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
	ldw	x, #0x03e8
	ldw	(0x0e, sp), x
	clrw	x
00110$:
	pushw	x
	ldw	x, #0x0102
	call	_I2C_GetFlagStatus
	popw	x
	tnz	a
	jrne	00112$
	ldw	(0x08, sp), x
	ldw	y, (0x0e, sp)
	ldw	(0x0a, sp), y
	ldw	y, (0x0e, sp)
	subw	y, #0x0001
	ldw	(0x0e, sp), y
	jrnc	00237$
	decw	x
00237$:
	ldw	y, (0x0a, sp)
	jrne	00110$
	ldw	y, (0x08, sp)
	jrne	00110$
00112$:
;	src\i2c.c: 79: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
	ld	a, 0x5217
	ld	a, 0x5219
;	src\i2c.c: 80: if(countData > 3) {//Если принимаем больше трёх байтов.
	ldw	x, (0x05, sp)
	cpw	x, #0x0003
	jrule	00147$
;	src\i2c.c: 81: while(countData > 3) {
	ldw	y, (0x12, sp)
	ldw	(0x08, sp), y
	ldw	y, (0x05, sp)
	ldw	(0x0a, sp), y
00117$:
	ldw	x, (0x0a, sp)
	cpw	x, #0x0003
	jrule	00159$
;	src\i2c.c: 83: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
	ldw	x, #0x03e8
	ldw	(0x0e, sp), x
	clrw	x
	ldw	(0x0c, sp), x
00114$:
	ldw	x, #0x0104
	call	_I2C_GetFlagStatus
	ld	(0x04, sp), a
	jrne	00116$
	ldw	y, (0x0e, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x0c, sp)
	ldw	(0x01, sp), y
	ldw	x, (0x0e, sp)
	subw	x, #0x0001
	ldw	(0x0e, sp), x
	ldw	x, (0x0c, sp)
	jrnc	00243$
	decw	x
00243$:
	ldw	(0x0c, sp), x
	ldw	x, (0x03, sp)
	jrne	00114$
	ldw	x, (0x01, sp)
	jrne	00114$
00116$:
;	src\i2c.c: 84: *dataBuffer = I2C_ReceiveData();
	call	_I2C_ReceiveData
	ldw	x, (0x08, sp)
	ld	(x), a
;	src\i2c.c: 85: *dataBuffer++;
	ldw	x, (0x08, sp)
	incw	x
	ldw	(0x08, sp), x
;	src\i2c.c: 86: countData--;
	ldw	x, (0x0a, sp)
	decw	x
	ldw	(0x0a, sp), x
	jra	00117$
00159$:
	ldw	y, (0x08, sp)
	ldw	(0x12, sp), y
;	src\i2c.c: 90: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
00147$:
	ldw	x, #0x03e8
	ldw	(0x0e, sp), x
	clrw	x
00123$:
	pushw	x
	ldw	x, #0x0104
	call	_I2C_GetFlagStatus
	popw	x
	tnz	a
	jrne	00125$
	ldw	(0x08, sp), x
	ld	a, (0x0e, sp)
	ld	(0x0a, sp), a
	ld	a, (0x0f, sp)
	ldw	y, (0x0e, sp)
	subw	y, #0x0001
	ldw	(0x0e, sp), y
	jrnc	00248$
	decw	x
00248$:
	tnz	a
	jrne	00123$
	ldw	y, (0x09, sp)
	jrne	00123$
	tnz	(0x08, sp)
	jrne	00123$
00125$:
;	src\i2c.c: 91: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
	clr	a
	call	_I2C_AcknowledgeConfig
;	src\i2c.c: 92: *dataBuffer = I2C_ReceiveData();
	ldw	x, (0x12, sp)
	pushw	x
	call	_I2C_ReceiveData
	popw	x
	ld	(x), a
;	src\i2c.c: 93: *dataBuffer++;
	incw	x
	ldw	(0x12, sp), x
;	src\i2c.c: 94: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
	ld	a, #0x01
	call	_I2C_GenerateSTOP
;	src\i2c.c: 95: *dataBuffer = I2C_ReceiveData();
	ldw	x, (0x12, sp)
	pushw	x
	call	_I2C_ReceiveData
	popw	x
	ld	(x), a
;	src\i2c.c: 96: *dataBuffer++;
	incw	x
	ldw	(0x12, sp), x
;	src\i2c.c: 98: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
	ldw	x, #0x03e8
	ldw	(0x0e, sp), x
	clrw	x
00127$:
	pushw	x
	ldw	x, #0x0140
	call	_I2C_GetFlagStatus
	popw	x
	tnz	a
	jrne	00129$
	ldw	(0x08, sp), x
	ld	a, (0x0e, sp)
	ld	(0x0a, sp), a
	ld	a, (0x0f, sp)
	ldw	y, (0x0e, sp)
	subw	y, #0x0001
	ldw	(0x0e, sp), y
	jrnc	00252$
	decw	x
00252$:
	tnz	a
	jrne	00127$
	ldw	y, (0x09, sp)
	jrne	00127$
	tnz	(0x08, sp)
	jrne	00127$
00129$:
;	src\i2c.c: 99: *dataBuffer = I2C_ReceiveData();
	ldw	x, (0x12, sp)
	pushw	x
	call	_I2C_ReceiveData
	popw	x
	ld	(x), a
;	src\i2c.c: 101: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
	ldw	x, #0x03e8
	ldw	(0x0e, sp), x
	clrw	x
00131$:
	btjf	0x5211, #1, 00133$
	ldw	(0x08, sp), x
	ld	a, (0x0e, sp)
	ld	(0x0a, sp), a
	ld	a, (0x0f, sp)
	ldw	y, (0x0e, sp)
	subw	y, #0x0001
	ldw	(0x0e, sp), y
	jrnc	00256$
	decw	x
00256$:
	tnz	a
	jrne	00131$
	ldw	y, (0x09, sp)
	jrne	00131$
	tnz	(0x08, sp)
	jrne	00131$
00133$:
;	src\i2c.c: 102: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
	ld	a, #0x01
	call	_I2C_AcknowledgeConfig
;	src\i2c.c: 103: }
	ldw	x, (16, sp)
	addw	sp, #19
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
