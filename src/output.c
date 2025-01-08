#include "output.h"
#include "delay.h"

#define UART_BUF_SIZE 128

static const char table[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
uint8_t count = 0;

void floatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit) {
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
void SendString(const char *str)
{
  char c;
  while((c = *str++)) {
    UART2_SendData8(c);
    while(UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
  }
}
*/

void SendPreambule(void) {
  UART2_SendData8(LORAWAN_MASTER_MSB_ADDRESS);
  while(UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
  UART2_SendData8(LORAWAN_MASTER_LSB_ADDRESS);
  while(UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
  UART2_SendData8(LORAWAN_MASTER_CHANEL);
  while(UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
}

/*
uint8_t counter(void)
{
    static uint8_t cnt = 0;
    if (cnt == 58) {
      cnt = 0;
    }
    return ++cnt;
}
*/

void SendLongString(const char *str) {
  char c;
  
  while(c = *str++) {
    if (count == 0 || count == 58) {
      count = 0;
      delay_ms(1000);
      SendPreambule();
    }
    count++;
    UART2_SendData8(c);
    while(UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
    if (c == '\n') {
      count = 0;
      delay_ms(1000);
    }
  }
}

void SendInitMessage() {
  SendLongString(Start);
  SendLongString(PointID);
  SendLongString(POINT_ID);
  SendLongString(SensorStr);
  SendLongString("system");
  SendLongString(ParameterStr);
  SendLongString(SystemTopic); 
  SendLongString(ValueStr);
  SendLongString("PIoT boot");
  SendLongString(End);
  delay_ms(1000);
}

void SendPIoTInfo() {
  SendLongString(Start);
  SendLongString(PointID);
  SendLongString(POINT_ID);
  SendLongString(SensorStr);
  SendLongString("system");
  SendLongString(ParameterStr);
  SendLongString(SystemTopic); 
  SendLongString(ValueStr);
  SendLongString("info"); 
  SendLongString(End);
}

void SendInfluxMessage(const char *pointID, const char *sensorName, const char *typeValue, const char *value) {
  SendLongString(Start);
  SendLongString(PointID);
  SendLongString(pointID);
  SendLongString(SensorStr);
  SendLongString(sensorName);
  SendLongString(ParameterStr);
  SendLongString(typeValue); 
  SendLongString(ValueStr);
  SendLongString(value); 
  SendLongString(End);
  delay_ms(1000);
}

void Error(void) {
    Beeper_Sound_Fail();
    // LED_ON;
}
