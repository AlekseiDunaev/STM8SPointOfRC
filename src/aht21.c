#include "aht21.h"

float AHT21ConvertHumidity(uint8_t *Buf) {
    float fAHTX0Humidity = 0;
    fAHTX0Humidity = Buf[1];
    fAHTX0Humidity *= 256;
    fAHTX0Humidity += Buf[2];
    fAHTX0Humidity *= 16;
    fAHTX0Humidity += (Buf[3]>>4);

    fAHTX0Humidity /= 1048576.0f;
    fAHTX0Humidity *= 100.0f;

    return fAHTX0Humidity;
}

float AHT21ConvertTemperature(uint8_t *Buf) {
    float fAHT21Temperature = 0;
    fAHT21Temperature = (Buf[3] & 0x0f);
    fAHT21Temperature *= 256;
    fAHT21Temperature += Buf[4];
    fAHT21Temperature *= 256;
    fAHT21Temperature += Buf[5];

    fAHT21Temperature /= 1048576.0f;
    fAHT21Temperature = fAHT21Temperature * 200.0f - 50.0f;
    
    return fAHT21Temperature;
}