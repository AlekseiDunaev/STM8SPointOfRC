#include "athx0.h"

float ATHX0ConverHumidity(uint8_t *Buf) {
    float fAHTX0Humidity = 0;
    fAHTX0Humidity = Buf[1];
    fAHTX0Humidity *= 256;
    fAHTX0Humidity += Buf[2];
    fAHTX0Humidity *= 16;
    fAHTX0Humidity += (Buf[3]>>4);

    fAHTX0Humidity /= 1048576;
    fAHTX0Humidity *= 100;

    return fAHTX0Humidity;
}

float ATHX0ConvertTemperature(uint8_t *Buf) {
    float fAHTX0Temperature = 0;
    fAHTX0Temperature = (Buf[3] & 0x0f);
    fAHTX0Temperature *= 256;
    fAHTX0Temperature += Buf[4];
    fAHTX0Temperature *= 256;
    fAHTX0Temperature += Buf[5];

    fAHTX0Temperature /= 1048576;
    fAHTX0Temperature = fAHTX0Temperature * 200 - 50;
    
    return fAHTX0Temperature;
}