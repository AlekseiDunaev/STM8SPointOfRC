#ifndef _I2C_H
#define _I2C_H

// Реализация взята с http://progcont.ru/?articles=50&category_articles=STM8S

#include "stm8s.h"

#define I2C_ID                  0x38
#define I2C_REQ_STATUS_WORD     0x71
#define I2C_TIMEOUT             10
#define I2C_ID_ADDRESS          0xD0
#define I2C_TIME_ERROR          1000 //Время ожидания ошибки или выход из функции принудительно, спасает от зависания.

void I2C_Setup(void);
void I2C_Send_Byte(uint8_t iAddr, uint8_t iData);
void I2C_Send_Data(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer);
uint8_t I2C_Read_Byte_Old(uint8_t Addr);
void I2C_Read_Byte(uint8_t iAddr, uint8_t iData, uint8_t* pBuff);
void I2C_Read_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer);

#endif