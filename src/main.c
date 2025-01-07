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
#include "main.h"
#include "stm8s.h"
#include "stm8s_it.h"    /* SDCC patch: required by SDCC for interrupts */

/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
// Defines
// #define DEBUG_IT_TX
// #define NODEBUG
// Functions
// Variables
uint8_t RxBuffer[RxBufferSize];
__IO uint8_t RxCounter = 0x00;
__IO Status ReceiveStatus = FAILED;
__IO FlagStatus Flag_AWU = SET;
// __IO FlagStatus Flag_AWU = RESET;

char *stringValue;
uint8_t integer_bit, decimal_bit;
uint8_t sizeValueString = 0;

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void) {
  Clock_Setup();
  GPIO_Setup();
  I2C_Setup();
  UART_Setup();
  Beeper_Init();
  AWU_Config();
#ifdef DS18X20_ENABLE
  DS18X20_Init();
#endif
#ifdef BME280_ENABLE
  BME280_Init();
#endif

  /*
  IoTMessage_t IoTMessage = {
    .start = "{",
    .pointID = "\"point_id\" : \"",
    .sensorString = "\", \"sensor\" : \"",
    .paramenterString = "\", \"parameter\" : \"",
    .valueStr = "\", \"value\" : \"",
    .end = "\"}\n"
  };
  */

  SendInitMessage();
  Beeper_Sound_OK();

  delay_ms(1000);

  uint8_t check = 0x30;
  enableInterrupts();

  while (1) {
    if(GetVar_ReceiveStatus()) {
      disableInterrupts();
      // if(!strcmp("Help", "Help")) LED_ON;
      switch (RxBuffer[0]) {
        case 'M':
#ifdef BME280_ENABLE
          BME280_Measure();
#endif
#ifdef AHT21_ENABLE
          AHT21_Measure();
#endif
#ifdef DS18X20_ENABLE
          DS18X20_Measure();
#endif
          break;
        case 'I':
          SendPIoTInfo();
          break;
        case 'S':
          LED_ON;
          SendLongString("Set LED ON\n");
          break;
        case 'U':
          LED_OFF;
          SendLongString("Set LED OFF\n");
          break;
        case 'H':
          SendLongString("Usage:\n");
          SendLongString("\tSend M. Start measure and output measurements.\n");
          SendLongString("\tSend I. Output info about pointofIoT (PIoT).\n");
          SendLongString("\tSend H. Output this info.\n");
          break;
        default:
          break;
      }
      UART2_ITConfig(UART2_IT_RXNE_OR, ENABLE);
      ResetVar_ReceiveStatus();
      enableInterrupts();
    }

    if(Flag_AWU) {
      disableInterrupts();
      Flag_AWU = RESET;
      // LED_REVERSE;
#ifdef BME280_ENABLE
      BME280_Measure();
#endif
#ifdef AHT21_ENABLE
      AHT21_Measure(); 
#endif
#ifdef DS18X20_ENABLE
      DS18X20_Measure();
#endif
      enableInterrupts();
    }
    wfi();
  }
}

static void Clock_Setup(void) {
  // CLK_DeInit();
  // CLK_HSECmd(DISABLE);
  // CLK_LSICmd(DISABLE);
  // CLK_HSICmd(ENABLE);
  // while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
  // CLK_ClockSwitchCmd(ENABLE);
  // CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
  // CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
  // CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);

  // // CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, ENABLE);
  // CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
  // // CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, ENABLE);
  // // CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART2, ENABLE);
  // CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
  // CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
  // CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);

  CLK_DeInit();
  CLK_HSECmd(DISABLE);
  CLK_LSICmd(DISABLE);
  
  CLK_LSICmd(ENABLE);
  while(CLK_GetFlagStatus(CLK_FLAG_LSIRDY) == FALSE);
  CLK_HSICmd(ENABLE);
  while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);

  CLK_ClockSwitchCmd(ENABLE);
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
  CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);

  CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);

  CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
  // CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, DISABLE);
  // CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, DISABLE);
  // CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
  // CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART2, DISABLE);
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
}

static void GPIO_Setup(void) {
  GPIO_DeInit(GPIOA);
  GPIO_DeInit(GPIOB);
  GPIO_DeInit(GPIOC);
  GPIO_DeInit(GPIOD);
  GPIO_DeInit(GPIOE);
  GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
  GPIO_Init(GPIOD, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_FAST);
}

static void UART_Setup() {
  UART2_DeInit();
  /* Configure either UART1 or UART2 per board definitions above */
  /* UART configured as follow:
        - BaudRate = 19600 baud  
        - Word Length = 8 Bits
        - One Stop Bit
        -  parity
        - Receive and transmit enabled
        - UART2 Clock disabled
  */
  UART2_Init((uint32_t)9600, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO, \
  UART2_SYNCMODE_CLOCK_DISABLE, UART2_MODE_TXRX_ENABLE);

  /* Enable UART2 Receive interrupt */
  UART2_ITConfig(UART2_IT_RXNE_OR, ENABLE);
  UART2_Cmd(ENABLE);
}

/**
  * @brief Set AWU
  * @param None
  * @retval None
  * @par Required preconditions:
  * None
  */
static void AWU_Config(void) {
  // CLK_LSICmd(ENABLE); // MAKE INTERNAL LOW -SPEED CLOCK LSI
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, ENABLE);
  AWU_DeInit();
  AWU_Init(AWU_TIME);
  AWU_Cmd(ENABLE);
}

/**
  * @brief Returns RxCounter value.
  * @param None
  * @retval Receive counter index
  * - uint8_t: RxCounter
  * @par Required preconditions:
  * None
  */
uint8_t GetVar_RxCounter(void) {
return RxCounter;
}

/**
  * @brief Reset RxCounter value.
  * @param None
  * @retval None
  * @par Required preconditions:
  * None
  */
void ResetVar_RxCounter(void) {
  RxCounter = 0;
}

/**
  * @brief Increments RxCounter variable and return its value 
  * @param None
  * @retval Receive counter index++
  * - uint8_t: RxCounter++
  * @par Required preconditions:
  * None
  */
uint8_t IncrementVar_RxCounter(void) {
	return RxCounter++;
}

/**
  * @brief Get AWUStatus value.
  * @param None
  * @retval Status
  * - uint8_t: AWUStatus
  * @par Required preconditions:
  * None
  */
Status GetVar_ReceiveStatus(void) {
  return ReceiveStatus;
}

/**
  * @brief Set to PASSED AWUStatus value.
  * @param None
  * @retval None
  * @par Required preconditions:
  * None
  */
void SetVar_ReceiveStatus(void) {
  ReceiveStatus = PASSED;
}

/**
  * @brief Reset to FAILED ReseiveStatus value.
  * @param None
  * @retval None
  * @par Required preconditions:
  * None
  */
void ResetVar_ReceiveStatus(void) {
  ReceiveStatus = FAILED;
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