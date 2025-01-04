#include "aht21.h"
#include "main.h"

#define INTEGER_BIT_HUMIDITI 2
#define DECIMAL_BIT_HUMIDITI 2
#define INTEGER_BIT_TEMPERATURE 2
#define DECIMAL_BIT_TEMPERATURE 2
#define AHT21_DEBUG

uint8_t iI2CMeasureCommand[3] = { 0xAC, 0x30, 0x00 };
uint8_t iI2CStatusWordCommand[1] = { AHT21_I2C_REQ_STATUS_WORD };
uint8_t iI2CRead[7];
uint8_t iAHT21StatusWord = 0x00;

float AHT21ConvertHumidity(uint8_t *Buf) {
    float fAHT21Humidity;
    fAHT21Humidity = Buf[1];
    fAHT21Humidity *= 256;
    fAHT21Humidity += Buf[2];
    fAHT21Humidity *= 16;
    fAHT21Humidity += (Buf[3]>>4);
    fAHT21Humidity /= 1048576.0f;
    fAHT21Humidity *= 100.0f;
    return fAHT21Humidity;
}

float AHT21ConvertTemperature(uint8_t *Buf) {
    float fAHT21Temperature;
    fAHT21Temperature = (Buf[3] & 0x0f);
    fAHT21Temperature *= 256;
    fAHT21Temperature += Buf[4];
    fAHT21Temperature *= 256;
    fAHT21Temperature += Buf[5];
    fAHT21Temperature /= 1048576.0f;
    fAHT21Temperature = fAHT21Temperature * 200.0f - 50.0f;
    return fAHT21Temperature;
}

void AHT21_Measure(void) {
    I2C_Send_Bytes(AHT21_I2C_ID, sizeof(iI2CMeasureCommand), iI2CStatusWordCommand);
    iAHT21StatusWord = I2C_Read_Byte(AHT21_I2C_ID);
    if((iAHT21StatusWord & 0x18) !=  0x18) {
        SendLongString(Start);
        SendLongString(PointID);
        SendLongString(POINT_ID);
        SendLongString(SensorStr);
        SendLongString(AHT21SensorName);
        SendLongString(ParameterStr);
        SendLongString(SystemTopic); 
        SendLongString(ValueStr);
        SendLongString("Error AHT21"); 
        SendLongString(End);
        delay_ms(1000);
        return;
    }
    delay_ms(50);
    I2C_Send_Bytes(AHT21_I2C_ID, sizeof(iI2CMeasureCommand), iI2CMeasureCommand);
    delay_ms(300);
    I2C_Read_Bytes((AHT21_I2C_ID), sizeof(iI2CRead), iI2CRead);
#ifdef AHT21_DEBUG
    for (uint8_t i = 0; i < 7; i++) {
        char s[4];
        s[0] = ((iI2CRead[i] >> 4) & 0x0F) + 0x30;
        s[1] = (iI2CRead[i] & 0x0F) + 0x30;
        s[2] = ' ';
        s[3] = 0x0A;
        SendLongString(s);
    }
#endif

    float fAHT21Humidity = AHT21ConvertHumidity(iI2CRead);
    float fAHT21Temperature = AHT21ConvertTemperature(iI2CRead);

    char stringValueHumidity[INTEGER_BIT_HUMIDITI + DECIMAL_BIT_HUMIDITI + 1];
    floatToStr(stringValueHumidity, fAHT21Humidity, INTEGER_BIT_HUMIDITI, DECIMAL_BIT_HUMIDITI);
    SendLongString(Start);
    SendLongString(PointID);
    SendLongString(POINT_ID);
    SendLongString(SensorStr);
    SendLongString(AHT21SensorName);
    SendLongString(ParameterStr);
    SendLongString(HumidityStr); 
    SendLongString(ValueStr);
    SendLongString(stringValueHumidity); 
    SendLongString(End);

    char stringValueTemperature[INTEGER_BIT_TEMPERATURE + DECIMAL_BIT_TEMPERATURE + 1];
    floatToStr(stringValueTemperature, fAHT21Temperature, INTEGER_BIT_TEMPERATURE, DECIMAL_BIT_TEMPERATURE);
    SendLongString(Start);
    SendLongString(PointID);
    SendLongString(POINT_ID);
    SendLongString(SensorStr);
    SendLongString(AHT21SensorName);
    SendLongString(ParameterStr);
    SendLongString(TemperatureStr); 
    SendLongString(ValueStr);
    SendLongString(stringValueTemperature); 
    SendLongString(End);
}
