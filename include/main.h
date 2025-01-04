#ifndef __MAIN_H_
#define __MAIN_H_
/* Includes ------------------------------------------------------------------*/
#include "stm8s_conf.h"
#include "config_chip.h"
// #include "i2c.h"
#include "ds18X20.h"
#include "aht21.h"
#include "bme280.h"
#include "output.h"
#include "lorawan.h"

/* Private typedef -------------------------------------------------------------*/
typedef enum { FAILED = 0, PASSED = !FAILED} Status;
/* Private define ------------------------------------------------------------*/
// #define DEBUG_IT_TX
#define RxBufferSize   256
#define UART_BUF_SIZE   256
#define LED_PORT  GPIOE
#define LED_PIN   GPIO_PIN_5
/* Private macro -------------------------------------------------------------*/
// #define countof(a)   (sizeof(a) / sizeof((a[0])))
// #define LED_STATE (LED_PORT->IDR & LED_PIN)

#define LED_ON      GPIO_WriteLow(LED_PORT, LED_PIN)
#define LED_OFF     GPIO_WriteHigh(LED_PORT, LED_PIN)
#define LED_REVERSE GPIO_WriteReverse(LED_PORT, LED_PIN)

#define AWU_TIME AWU_TIMEBASE_30S //Set higest for more time to sleep mode
#define TIME_BETWEEN_MEASURE 1800

/* Private define -------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
static void Clock_Setup(void);
static void GPIO_Setup(void);
static void UART_Setup();
static void AWU_Config(void);
uint8_t GetVar_TxCounter(void);
uint8_t IncrementVar_TxCounter(void);
uint8_t GetVar_RxCounter(void);
uint8_t IncrementVar_RxCounter(void);
void ResetVar_RxCounter(void);
Status GetVar_ReceiveStatus(void);
void SetVar_ReceiveStatus(void);
void ResetVar_ReceiveStatus(void);

#endif