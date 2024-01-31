#include "stm8s.h"

// #define AHT21_DEBUG

#define AHT21_I2C_ID                  (0x38 << 1)
#define AHT21_I2C_REQ_STATUS_WORD     0x71

float AHT21ConvertHumidity(uint8_t *Buf);
float AHT21ConvertTemperature(uint8_t *Buf);