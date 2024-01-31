#ifndef _DS18X20_H_
#define _DS18X20_H_

#include "stm8s.h"
#include "stm8s_conf.h"
#include "delay.h"

// #define DS18B20_DEBUG

/* ROM COMMANDS */
#define SEARCH_ROM         (u8)0XF0
#define READ_ROM           (u8)0x33
#define MATCH_ROM          (u8)0x55
#define SKIP_ROM           (u8)0xCC
#define ALARM_SEARCH       (u8)0XEC
/* FUNCTION COMMANDS */
#define CONVERT_T          (u8)0x44
#define WRITE_SCRATCHPAD   (u8)0x4E
#define READ_SCRATCHPAD    (u8)0xBE
#define COPY_SCRATCHPAD    (u8)0X48
#define RECALL_EE          (u8)0XB8
#define READ_POWER_SUPPLY  (u8)0XB4

// 1Wire Bus PC3: Port C
#define ONEWIREBUS_PORT   GPIOC
#define ONEWIREBUS_PIN    GPIO_PIN_3

#define OW_INPUT()  do{GPIO_DeInit(ONEWIREBUS_PORT); GPIO_Init(ONEWIREBUS_PORT, ONEWIREBUS_PIN, GPIO_MODE_IN_FL_NO_IT);}while(0)
#define OW_OUTPUT() do{GPIO_DeInit(ONEWIREBUS_PORT); GPIO_Init(ONEWIREBUS_PORT, ONEWIREBUS_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);}while(0)
#define OW_READ()   GPIO_ReadInputPin(ONEWIREBUS_PORT, ONEWIREBUS_PIN)
#define OW_LOW()    GPIO_WriteLow(ONEWIREBUS_PORT, ONEWIREBUS_PIN)
#define OW_HIGH()   GPIO_WriteHigh(ONEWIREBUS_PORT, ONEWIREBUS_PIN) 

// #define OW_LOW()  (ONEWIREBUS_PORT->ODR &= (u8)(~ONEWIREBUS_PIN))   /* drive 1-wire bus low */
// #define OW_HIGH() (ONEWIREBUS_PORT->ODR |= ONEWIREBUS_PIN)    /* release 1-wire bus */
// #define OW_READ() (u8)(ONEWIREBUS_PORT->IDR & ONEWIREBUS_PIN)     /* read 1-wire bus */

bool DS18X20_Reset(void);
void DS18X20_Write_Byte(uint8_t data);
uint8_t DS18X20_Read_Byte(void);
bool DS18X20_Read_ID(uint8_t *ROM_ID);
bool DS18X20_Skip_ID(void);
float DS18X20_Get_Temperature(void);
void DS18X20_Setup(void);

#endif