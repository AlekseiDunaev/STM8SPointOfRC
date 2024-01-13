/**
  ******************************************************************************
  * @file UART1_Printf\main.c
  * @brief This file contains the main function for: retarget the C library printf
  *        /scanf functions to the UART1 example.
  * @author  MCD Application Team
  * @version V2.0.4
  * @date     26-April-2018
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */ 

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include "stm8s_it.h"    /* SDCC patch: required by SDCC for interrupts */
#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "config.h"
#include "delay.h"
#include "i2c.h"
#include "ds18X20.h"
#include "athx0.h"
#include "bme280.h"

/**
 * 
 * 
  * @addtogroup UART1_Printf
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#ifdef _RAISONANCE_
  #define PUTCHAR_PROTOTYPE int putchar (char c)
  #define GETCHAR_PROTOTYPE int getchar (void)
#elif defined (_COSMIC_)
  #define PUTCHAR_PROTOTYPE char putchar (char c)
  #define GETCHAR_PROTOTYPE char getchar (void)
#elif defined (_SDCC_)         /* SDCC patch: ensure same types as stdio.h */
  #if SDCC_VERSION >= 30605      // declaration changed in sdcc 3.6.5 (officially with 3.7.0)
    #define PUTCHAR_PROTOTYPE int putchar(int c)
    #define GETCHAR_PROTOTYPE int getchar(void)
  #else
    #define PUTCHAR_PROTOTYPE void putchar(char c)
    #define GETCHAR_PROTOTYPE char getchar(void)
  #endif 
#else /* _IAR_ */
  #define PUTCHAR_PROTOTYPE int putchar (int c)
  #define GETCHAR_PROTOTYPE int getchar (void)
#endif /* _RAISONANCE_ */
/* Private macro -------------------------------------------------------------*/
/* Some chips have UART1, but other chips only have UART2 and not UART1. 
 * We want this example to work on both types of chips, so we 
 * macro-define all the correct SPL functions to the default UART of the device. 
 * 
 * UART1 devices: STM8S208, STM8S207, STM8S007, STM8S103, STM8S003, STM8S001, STM8S903
 * STM8AF52Ax, STM8AF62Ax
 * UART2 devices (which do not have UART1): STM8S105, STM8S005, STM8AF626x
 * 
 * For the TX and RX pins, see chip datasheet.
 * For STM8S103 devices, this is e.g. TX=PD5, RX=PD6.
*/

#define DEBUG
// #define QUICK_CICLE
#define DS18X20_ENABLE
// #define DS18B20_DEBUG
// #define AHTX0_ENABLE
// #define AHTX0_DEBUG
#define BME280_ENABLE


#if defined(STM8S105) || defined(STM8S005) ||  defined (STM8AF626x)
#define UART_NAME "UART2"
#define UART_INIT UART2_Init
#define UART_DEINIT UART2_DeInit
#define UART_SENDDATA8 UART2_SendData8
#define UART_RECEIVEDATA8 UART2_ReceiveData8
#define UART_GETFLAGSTATUS UART2_GetFlagStatus
#define UART_FLAG_RXNE UART2_FLAG_RXNE
#define UART_FLAG_TXE UART2_FLAG_TXE
#define UART_WORDLENGTH_8D UART2_WORDLENGTH_8D
#define UART_STOPBITS_1 UART2_STOPBITS_1
#define UART_PARITY_NO UART2_PARITY_NO
#define UART_SYNCMODE_CLOCK_DISABLE UART2_SYNCMODE_CLOCK_DISABLE
#define UART_MODE_TXRX_ENABLE UART2_MODE_TXRX_ENABLE
#else
/* other boards have normal UART 1*/
#define UART_NAME "UART1"
#define UART_INIT UART1_Init
#define UART_DEINIT UART1_DeInit
#define UART_SENDDATA8 UART1_SendData8
#define UART_RECEIVEDATA8 UART1_ReceiveData8
#define UART_GETFLAGSTATUS UART1_GetFlagStatus
#define UART_FLAG_RXNE UART1_FLAG_RXNE
#define UART_FLAG_TXE UART1_FLAG_TXE
#define UART_WORDLENGTH_8D UART1_WORDLENGTH_8D
#define UART_STOPBITS_1 UART1_STOPBITS_1
#define UART_PARITY_NO UART1_PARITY_NO
#define UART_SYNCMODE_CLOCK_DISABLE UART1_SYNCMODE_CLOCK_DISABLE
#define UART_MODE_TXRX_ENABLE UART1_MODE_TXRX_ENABLE
#endif

// Functions
void FloatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit);
// void uart_send_n_byte(uint8_t* data, uint8_t len);
// void uart_read_n_byte(uint8_t* data, uint8_t len);

// Variables
static const char table[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
uint8_t iDS18X20RomID[8];
uint8_t iI2CWrite[3];
uint8_t iI2CRead[7];
float fDS18X20Temperature = -100.0f;
// float fAHTX0Humidity = 0.0f;
// float fAHTX0Temperature = 0.0f;
float fBME280Temperature = 0.0f;
float fBME280Humidity = 0.0f;
char sString[UART_BUF_SIZE];
char str1[UART_BUF_SIZE];
// extern BME280_CalibData CalibData;

/*
// Read buffer
extern uint8_t read_ok;
extern uint8_t read_idx;
extern uint8_t read_len;
extern uint8_t read_buffer[];
*/

/*
// Write buffer
extern uint8_t write_ok;
extern uint8_t write_idx;
extern uint8_t write_len;
extern uint8_t write_buffer[];
*/

void Clock_Setup(void) {
  CLK_DeInit();
  CLK_HSECmd(DISABLE);
  CLK_LSICmd(DISABLE);
  CLK_HSICmd(ENABLE);
  while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
  CLK_ClockSwitchCmd(ENABLE);
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
  CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
  CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
  // CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, ENABLE);
   CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
   CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
  // CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART2, ENABLE);
   CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
   CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
   CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
}

void GPIO_Setup(void) {
  // GPIO_DeInit(GPIOA);
  // GPIO_DeInit(GPIOB);
  // GPIO_DeInit(GPIOC);
  // GPIO_DeInit(GPIOD);
  GPIO_DeInit(GPIOE);
  GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
}

void UART_Setup() {
  UART_DEINIT();
  /* Configure either UART1 or UART2 per board definitions above */
  /* UART configured as follow:
        - BaudRate = 115200 baud  
        - Word Length = 8 Bits
        - One Stop Bit
        -  parity
        - Receive and transmit enabled
        - UART1 Clock disabled
  */
  UART_INIT((uint32_t)9600, UART_WORDLENGTH_8D, UART_STOPBITS_1, UART_PARITY_NO, UART_SYNCMODE_CLOCK_DISABLE, UART_MODE_TXRX_ENABLE);
}

/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void) {
  Clock_Setup();
  GPIO_Setup();
  DS18X20_Setup();
  I2C_Setup();
  UART_Setup();
#ifdef BME280_ENABLE
  BME280_Setup();
#endif

  while (1) {
    char *stringSendUART = NULL;
    char *stringValue = NULL;
    uint8_t integer_bit, decimal_bit;
    uint8_t sizeValueString = 0;
    uint8_t sizeSendUARTString = 0;
    // static const char preambule[] = { 0x00, 0x00, 0x18 };
    static const char placeholderDS18X20String[] = "{\"topic\" : \"mqtt\/temperature-room\", \"value\" : \"%s\"}";
    // static const char placeholderDS18X20String_test[] = "{\"topic\" : \"mqtt\/temperature-room\", \"value\" : \"";
    // const char placeholderHumidityAHTX0String[] = "{\"topic\" : \"mqtt\/humidity-aht20\", \"value\": \"%s\"}";
    // const char placeholderTemperatureAHTX0String[] = "{\"topic\" : \"mqtt\/temperature-aht20\", \"value\": \"%s\"}";
    static const char placeholderHumidityBME280String[] = "{\"topic\" : \"mqtt\/humidity-bme280\", \"value\": \"%s\"}";
    // static const char placeholderHumidityBME280String_test[] = "{\"topic\" : \"mqtt\/humidity-bme280\", \"value\": \"";
    static const char placeholderTemperatureBME280String[] = "{\"topic\" : \"mqtt\/temperature-bme280\", \"value\": \"%s\"}";
    // static const char placeholderTemperatureBME280String_test[] = "{\"topic\" : \"mqtt\/temperature-bme280\", \"value\": \"";
    // static const char placeholderPressureBME280String[] = "{\"topic\" : \"mqtt\/pressure-bme280\", \"value\": \"%s\"}";
    // static const char end[] = "\"}\r\n";

    LED_ON;

#ifdef DS18X20_ENABLE
    DS18X20_Reset();

    delay_ms(2000);

    if (!DS18X20_Read_ID(iDS18X20RomID)) {
      for (uint8_t i = 0; i < 8; i++) {
        iDS18X20RomID[i] = 0;
      }
    };
    fDS18X20Temperature = DS18X20_Get_Temperature();
    integer_bit = 2;
    decimal_bit = 2;
    
#ifdef DS18B20_DEBUG
    printf("Famaly ID: 0x%02X, ", iDS18X20RomID[0]);
    printf("Sensor ID: ");

    for (int8_t i = 6; i > 0 ; i--) {
      printf("0x%02X", iDS18X20RomID[i]);
    }

    printf("\r\n");

    FloatToStr(sString, fDS18X20Temperature, integer_bit, decimal_bit);
    printf("DS18X20 temperature: %s\r\n", sString);
#endif

    sizeValueString = integer_bit + decimal_bit + 1;
    sizeSendUARTString = sizeof(placeholderDS18X20String) + sizeValueString;
    stringValue = (char*)malloc(sizeValueString * sizeof(char));
    stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
    
    FloatToStr(stringValue, fDS18X20Temperature, integer_bit, decimal_bit);

    sprintf(stringSendUART, placeholderDS18X20String, stringValue);
    putchar(0x00);
    putchar(0x00);
    putchar(0x18);
    printf("%s\r\n", stringSendUART);

    free(stringSendUART);
    free(stringValue);

    delay_ms(5000);
#endif
    
#ifdef AHTX0_ENABLE
    iI2CWrite[0] = 0xAC;
    iI2CWrite[1] = 0x33;
    iI2CWrite[2] = 0x00;

    I2C_Send_Bytes((I2C_ID << 1), sizeof(iI2CWrite), iI2CWrite);
    delay_ms(300);
    I2C_Read_Bytes((I2C_ID << 1), sizeof(iI2CRead), iI2CRead);

    fAHTX0Humidity = ATHX0ConverHumidity(iI2CRead);
    fAHTX0Temperature = ATHX0ConvertTemperature(iI2CRead);
    
#ifdef AHTX0_DEBUG
    FloatToStr(sString, fAHTX0Humidity, 2, 2);
    printf("ATHX0 humidity: %s\r\n", sString);
    FloatToStr(sString, fAHTX0Temperature, 2, 2);
    printf("AHTX0 temperature: %s\r\n", sString);
#endif

    integer_bit = 2;
    decimal_bit = 2;
    
    sizeValueString = integer_bit + decimal_bit + 1;
    sizeSendUARTString = sizeof(placeholderHumidityAHTX0String) + sizeValueString;
    stringValue = (char*)malloc(sizeValueString * sizeof(char));
    stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
    
    FloatToStr(stringValue, fAHTX0Humidity, integer_bit, decimal_bit);

    sprintf(stringSendUART, placeholderHumidityAHTX0String, stringValue);
    printf("%s\r\n", stringSendUART);
    
    free(stringSendUART);
    free(stringValue);
    
    integer_bit = 2;
    decimal_bit = 2;

    delay_ms(5000);
    
    sizeValueString = integer_bit + decimal_bit + 1;
    sizeSendUARTString = sizeof(placeholderTemperatureAHTX0String) + sizeValueString;
    stringValue = (char*)malloc(sizeValueString * sizeof(char));
    stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
    
    FloatToStr(stringValue, fAHTX0Temperature, integer_bit, decimal_bit);

    sprintf(stringSendUART, placeholderTemperatureAHTX0String, stringValue);
    printf("%s\r\n", stringSendUART);
    
    free(stringSendUART);
    free(stringValue);

#endif

#ifdef BME280_ENABLE
    integer_bit = 3;
    decimal_bit = 2;

    fBME280Temperature = BME280_ReadTemperature();
    delay_ms(2000);
    
    sizeValueString = integer_bit + decimal_bit + 1;
    stringValue = (char*)malloc(sizeValueString * sizeof(char));
    sizeSendUARTString = sizeof(placeholderTemperatureBME280String) + sizeValueString;
    stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));
    
    FloatToStr(stringValue, fBME280Temperature, integer_bit, decimal_bit);
    sprintf(stringSendUART, placeholderTemperatureBME280String, stringValue);
    putchar(0x00);
    putchar(0x00);
    putchar(0x18);
    printf("%s\r\n", stringSendUART);
  
    free(stringSendUART);
    free(stringValue);

    integer_bit = 2;
    decimal_bit = 2;

    fBME280Humidity = BME280_ReadHumidity();
    delay_ms(2000);

    sizeValueString = integer_bit + decimal_bit + 1;
    sizeSendUARTString = sizeof(placeholderHumidityBME280String) + sizeValueString;
    stringValue = (char*)malloc(sizeValueString * sizeof(char));
    stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));

    FloatToStr(stringValue, fBME280Humidity, integer_bit, decimal_bit);
    sprintf(stringSendUART, placeholderHumidityBME280String, stringValue);
    // uart_send_n_byte(preambule, sizeof(preambule));
    // uart_send_n_byte(placeholderHumidityBME280String_test, sizeof(placeholderHumidityBME280String_test));
    // uart_send_n_byte(stringValue, sizeof(stringValue));
    // uart_send_n_byte(end, sizeof(end));
    putchar(0x00);
    putchar(0x00);
    putchar(0x18);
    printf("%s\r\n", stringSendUART);
    
    free(stringSendUART);
    free(stringValue);

#endif
    
#ifdef QUICK_CICLE
    delay_ms(10000);
#endif

#ifndef QUICK_CICLE
    for (uint8_t i = 0; i < 9; i++) {
      delay_ms(65535);
    }
#endif

    LED_OFF;

    // Polling mode
    // HAL_I2C_Master_Transmit(&hi2c1, (I2C_ADDRESS << 1), &regAddress, 1,  I2C_TIMEOUT);
    // HAL_I2C_Master_Receive(&hi2c1, (I2C_ADDRESS << 1), &regData, 1,  I2C_TIMEOUT);
    
    /* you may also use blocking getchar() to get input */ 
    //char ans = getchar();
    //printf("%c", ans);  
  }
}

void FloatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit) {
        uint8_t i;
        uint8_t minus = 0;
        float t2 = 0.0;
        uint16_t temp;
        uint8_t trailing_zero_count = 0;

        if (number < 0) {
          str[0] = 0x2D;
          number *= -1;
          minus = 1;
        }
        
        temp = (uint32_t)(number/1);

        for (i = 1; i <= integer_bit; i++) {
                if (temp == 0) {
                        str[integer_bit - i + minus] = table[0];
                } else {
                        str[integer_bit - i + minus] = table[temp%10];
                }
                temp /= 10;
        }
        
        for (i = 0; i < (integer_bit - 1); i++) {
          if (str[i + minus] == '0') {
            trailing_zero_count += 1;
          } else {
            break;
          }
        }
        
        for (i = minus; i <= trailing_zero_count + minus; i++) {
          str[i] = str[i + trailing_zero_count];
        }
        
        *(str + integer_bit - trailing_zero_count + minus) = '.';
        temp = 0;
        t2 = number;

        for (i = 1; i <= decimal_bit; i++) {
                temp = t2 * 10;
                str[integer_bit + i - trailing_zero_count + minus] = table[temp%10];
                t2 *= 10;
        }

        *(str + integer_bit + 1 + decimal_bit - trailing_zero_count + minus) = '\0';
}

/*
// write multiple bytes
void uart_send_n_byte(uint8_t* data, uint8_t len)
{
	uint16_t count = 0;
	UART2_ITConfig(UART2_IT_TXE, DISABLE);

	 // Prepare to write data buffer (copy from user data area to serial port write buffer, initialize index value, etc.)
	memcpy(write_buffer, data, len);
	write_idx = 0;
	write_len = len;

	 // write interrupt
	UART2_ITConfig(UART2_IT_TXE, ENABLE);
	
	 while(!write_ok) { // Wait for the write to complete (synchronous processing)
		count++;
		 if( count >= 10000 ) { // Simple timeout processing, no timeout can be removed
			write_idx = 0;
			write_len = 0;
			break;
		}
	}
	 write_ok = 0; // Write complete, reset write complete flag
	return;
}
*/

/*
// read multiple bytes
void  uart_read_n_byte(uint8_t* data, uint8_t len)
{
	 // turn off interrupt
	UART2_ITConfig(UART2_IT_RXNE_OR, DISABLE);

	 // Clear the read buffer (reset the read index value)
	read_idx = 0;
	read_len = len;

	 // open read interrupt
	UART2_ITConfig(UART2_IT_RXNE_OR, ENABLE);
	
	 while(!read_ok); // Wait for the read operation to complete (synchronization processing), add timeout processing, refer to the above write operation
	 read_ok = 0; // write complete, reset write complete flag
	 memcpy(data, read_buffer, read_len); // copy data to user buffer
	return;
}
*/

/**
  * @brief Retargets the C library printf function to the UART.
  * @param c Character to send
  * @retval char Character sent
  */
PUTCHAR_PROTOTYPE
{
  // Write a character to the UART1
  UART_SENDDATA8(c);
  // Loop until the end of transmission
  while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);

  return (c);
}

/**
  * @brief Retargets the C library scanf function to the USART.
  * @param None
  * @retval char Character to Read
  */
GETCHAR_PROTOTYPE
{
#ifdef _COSMIC_
  char c = 0;
#else
  int c = 0;
#endif
  // Loop until the Read data register flag is SET
  while (UART_GETFLAGSTATUS(UART_FLAG_TXE) == RESET);
    c = UART_RECEIVEDATA8();
  return (c);
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  (void) file;
  (void) line;
  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/