#ifndef _CONFIG_H_
#define _CONFIG_H_

#include "stm8s_conf.h"

/* Board LED
PD0: Port D0 / Timer 1 - break input / Configurable clock output [AFR5]
*/
#define UART_BUF_SIZE 128

#define LED_PORT  GPIOE
#define LED_PIN   GPIO_PIN_5

/* #define LED_ON    (LED_PORT->ODR |= LED_PIN) */
#define LED_ON    GPIO_WriteLow(LED_PORT, LED_PIN)
/* #define LED_OFF   (LED_PORT->ODR &= (u8)(~LED_PIN)) */
#define LED_OFF    GPIO_WriteHigh(LED_PORT, LED_PIN)
#define LED_STATE (LED_PORT->IDR & LED_PIN)

#endif