#include "bme280.h"
#include "i2c.h"

//------------------------------------------------

// extern I2C_HandleTypeDef hi2c1;
// extern UART_HandleTypeDef huart2;

#ifdef DEBUG
    extern char stirng[];
#endif
// char str1[100];
BME280_CalibData CalibData;

void Error(void) {
    LED_OFF;
}

void BME280_Setup(void) {
    uint8_t value = 0;
    uint16_t value16 = 0;
    LED_ON;
}

void BME280_WriteReg(uint8_t iReg, uint8_t iValue) {
    uint8_t iData[2];
    iData[0] = iReg;
    iData[1] = iValue;
    I2C_Send_Bytes((BME280_ADDRESS << 1), sizeof(iData), iData);
}

uint8_t BME280_ReadReg(uint8_t iReg) {
    uint8_t iData[1];
    iData[0] = iReg;
    I2C_Send_Bytes((BME280_ADDRESS << 1), sizeof(iData), iData);
    return I2C_Read_Byte(BME280_ADDRESS << 1);
}

void BME280_ReadReg_U16(uint8_t iReg, uint16_t *iValue) {
    uint8_t iData[1];
    uint8_t iRes[2];
    iData[0] = iReg;
    I2C_Send_Bytes((BME280_ADDRESS << 1), sizeof(iData), iData);
    I2C_Read_Bytes((BME280_ADDRESS << 1), sizeof(iRes), iRes);
    *iValue = iRes[0];
    *iValue <<= 8;
    *iValue += iRes[1];
}

void BME280_ReadReg_S16(uint8_t iReg, int16_t *iValue) {
    uint8_t iData[1];
    uint8_t iRes[2];
    iData[0] = iReg;
    I2C_Send_Bytes((BME280_ADDRESS << 1), sizeof(iData), iData);
    I2C_Read_Bytes((BME280_ADDRESS << 1), sizeof(iRes), iRes);
    *iValue = iRes[0];
    *iValue <<= 8;
    *iValue += iRes[1];
}

uint8_t BME280_ReadStatus(void) {
  //clear unuset bits
  uint8_t res = BME280_ReadReg(BME280_REGISTER_STATUS) & 0x09;
  return res;
}

void BME280_ReadCoefficients(void) {
  BME280_ReadReg_U16(BME280_REGISTER_DIG_T1, &CalibData.dig_T1);
  // sprintf(str1, "DIG_T1: %urn", CalibData.dig_T1);
  // printf("%s", str1);
  // printf("\r\n");
  BME280_ReadReg_S16(BME280_REGISTER_DIG_T2, &CalibData.dig_T2);
  // sprintf(str1, "DIG_T2: %drn", CalibData.dig_T2);
  // printf("%s", str1);
  // printf("\r\n");
  BME280_ReadReg_S16(BME280_REGISTER_DIG_T3, &CalibData.dig_T3);
  // sprintf(str1, "DIG_T3: %drn", CalibData.dig_T3);
  // printf("%s", str1);
  // printf("\r\n");
  BME280_ReadReg_U16(BME280_REGISTER_DIG_P1, &CalibData.dig_P1);
  // sprintf(str1, "DIG_P1: %urn", CalibData.dig_P1);
  // printf("%s", str1);
  // printf("\r\n");
  BME280_ReadReg_S16(BME280_REGISTER_DIG_P2, &CalibData.dig_P2);
  // sprintf(str1, "DIG_P2: %drn", CalibData.dig_P2);
  // printf("%s", str1);
  // printf("\r\n");
  BME280_ReadReg_S16(BME280_REGISTER_DIG_P3, &CalibData.dig_P3);
  // sprintf(str1, "DIG_P3: %drn", CalibData.dig_P3);
  // printf("%s", str1);
  // printf("\r\n");
  BME280_ReadReg_S16(BME280_REGISTER_DIG_P4, &CalibData.dig_P4);
  // sprintf(str1, "DIG_P4: %drn", CalibData.dig_P4);
  // printf("%s", str1);
  // printf("\r\n");
  BME280_ReadReg_S16(BME280_REGISTER_DIG_P5, &CalibData.dig_P5);
  // sprintf(str1, "DIG_P5: %drn", CalibData.dig_P5);
  // printf("%s", str1);
  // printf("\r\n");
  BME280_ReadReg_S16(BME280_REGISTER_DIG_P6, &CalibData.dig_P6);
  //  sprintf(str1, "DIG_P6: %drn", CalibData.dig_P6);
  // printf("%s", str1);
  // printf("\r\n");
  BME280_ReadReg_S16(BME280_REGISTER_DIG_P7, &CalibData.dig_P7);
  // sprintf(str1, "DIG_P7: %drn", CalibData.dig_P7);
  // printf("%s", str1);
  // printf("\r\n");
  BME280_ReadReg_S16(BME280_REGISTER_DIG_P8, &CalibData.dig_P8);
  // sprintf(str1, "DIG_P8: %drn", CalibData.dig_P8);
  // printf("%s", str1);
  // printf("\r\n");
  BME280_ReadReg_S16(BME280_REGISTER_DIG_P9, &CalibData.dig_P9);
  // sprintf(str1, "DIG_P9: %drn", CalibData.dig_P9);
  // printf("%s", str1);
  // printf("\r\n");
  CalibData.dig_H1 = BME280_ReadReg(BME280_REGISTER_DIG_H1);
  // sprintf(str1, "DIG_H1: %drn", CalibData.dig_H1);
  // printf("%s", str1);
  // printf("\r\n");
  BME280_ReadReg_S16(BME280_REGISTER_DIG_H2, &CalibData.dig_H2);
  // sprintf(str1, "DIG_H2: %drn", CalibData.dig_H2);
  // printf("%s", str1);
  // printf("\r\n");
  CalibData.dig_H3 = BME280_ReadReg(BME280_REGISTER_DIG_H3);
  // sprintf(str1, "DIG_H3: %drn", CalibData.dig_H3);
  // printf("%s", str1);
  // printf("\r\n");
  CalibData.dig_H4 = (BME280_ReadReg(BME280_REGISTER_DIG_H4) << 4) | (BME280_ReadReg(BME280_REGISTER_DIG_H4+1) & 0xF);
  // sprintf(str1, "DIG_H4: %drn", CalibData.dig_H4);
  // printf("%s", str1);
  // printf("\r\n");
  CalibData.dig_H5 = (BME280_ReadReg(BME280_REGISTER_DIG_H5+1) << 4) | (BME280_ReadReg(BME280_REGISTER_DIG_H5) >> 4);
  // sprintf(str1, "DIG_H5: %drn", CalibData.dig_H5);
  // printf("%s", str1);
  // printf("\r\n");
  CalibData.dig_H6 = (int8_t)BME280_ReadReg(BME280_REGISTER_DIG_H6);
  // sprintf(str1, "DIG_H6: %drn", CalibData.dig_H3);
  // printf("%s", str1);
  // printf("\r\n");
}

void BME280_SetStandby(uint8_t tsb) {
  uint8_t reg;
  reg = BME280_ReadReg(BME280_REG_CONFIG) & ~BME280_STBY_MSK;
  reg |= tsb & BME280_STBY_MSK;
  BME280_WriteReg(BME280_REG_CONFIG,reg);
}

void BME280_SetFilter(uint8_t filter) {
  uint8_t reg;
  reg = BME280_ReadReg(BME280_REG_CONFIG) & ~BME280_FILTER_MSK;
  reg |= filter & BME280_FILTER_MSK;
  BME280_WriteReg(BME280_REG_CONFIG,reg);
}

void BME280_SetOversamplingTemper(uint8_t osrs) {
  uint8_t reg;
  reg = BME280_ReadReg(BME280_REG_CTRL_MEAS) & ~BME280_OSRS_T_MSK;
  reg |= osrs & BME280_OSRS_T_MSK;
  BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
}

void BME280_SetOversamplingPressure(uint8_t osrs) {
  uint8_t reg;
  reg = BME280_ReadReg(BME280_REG_CTRL_MEAS) & ~BME280_OSRS_P_MSK;
  reg |= osrs & BME280_OSRS_P_MSK;
  BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
}

void BME280_SetOversamplingHum(uint8_t osrs) {
  uint8_t reg;
  reg = BME280_ReadReg(BME280_REG_CTRL_HUM) & ~BME280_OSRS_H_MSK;
  reg |= osrs & BME280_OSRS_H_MSK;
  BME280_WriteReg(BME280_REG_CTRL_HUM,reg);
  //The 'ctrl_hum' register needs to be written
  //after changing 'ctrl_hum' for the changes to become effwctive.
  reg = BME280_ReadReg(BME280_REG_CTRL_MEAS);
  BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
}

void BME280_SetMode(uint8_t mode) {
  uint8_t reg;
  reg = BME280_ReadReg(BME280_REG_CTRL_MEAS) & ~BME280_MODE_MSK;
  reg |= mode & BME280_MODE_MSK;
  BME280_WriteReg(BME280_REG_CTRL_MEAS,reg);
}

float BME280_ReadTemperature(void) {
  float temper_float = 0.0f;
  return temper_float;
}

float BME280_ReadPressure(void) {
  float press_float = 0.0f;
  return press_float;
}

float BME280_ReadHumidity(void) {
  float hum_float = 0.0f;
  return hum_float;
}

float BME280_ReadAltitude(float seaLevel) {
  float att = 0.0f;
  return att;
}