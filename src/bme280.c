#include "bme280.h"

#ifdef BME280_ENABLE

#define INTEGER_BIT_TEMPERATURE 6
#define DECIMAL_BIT_TEMPERATURE 1
#define INTEGER_BIT_HUMIDITI    2
#define DECIMAL_BIT_HUMIDITI    2
#define INTEGER_BIT_PRESSURE    6
#define DECIMAL_BIT_PRESSURE    1
      // decimal_bit = 1;
//------------------------------------------------

// extern I2C_HandleTypeDef hi2c1;
// extern UART_HandleTypeDef huart2;

float fBME280Pressure = 0.0f;
float fBME280Temperature = 0.0f;
float fBME280Humidity = 0.0f;
BME280_CalibData CalibData;
BME280_Registers Registers;
int32_t temper_int;

void Error(void) {
    Beeper_Sound_Fail();
    // LED_ON;
}

void BME280_Init(void) {
  uint32_t value32 = 0;

  uint8_t res = BME280_ReadReg(BME280_REG_ID);
  /*
  char stringIDBMX280[INTEGER_BIT_TEMPERATURE + DECIMAL_BIT_TEMPERATURE + 1];
  floatToStr(stringIDBMX280, (float)res, INTEGER_BIT_TEMPERATURE, DECIMAL_BIT_TEMPERATURE);
  SendLongString(Start);
  SendLongString(stringIDBMX280); 
  SendLongString(End);
  */
  
  /*
  SendLongString("\r\n");
  char temp[1];
  temp[0] = (uint8_t)(res / 10) + 0x30;
  SendLongString(temp);
  temp[0] = res - 10 * ((uint8_t)(res / 10) + 0x30);
  SendLongString(temp);
  SendLongString("\r\n");
  */
#ifdef BME280_DEBUG_READ_REG
  printf("BME280_ID: 0x%02X\r\n", res);
#endif

  if (res != BME280_ID) {
#ifdef BME280_DEBUG_PRODUCTION
    SendLongString("\r\n");
    SendLongString("BME280 Error Init\r\n");
#endif
    Error();
    return;
  }
   
  BME280_WriteReg(BME280_REG_SOFTRESET, BME280_SOFTRESET_VALUE);
  while (BME280_ReadStatus() & BME280_STATUS_IM_UPDATE);
    
  BME280_ReadCoefficients();
  BME280_SetStandby(BME280_STBY_1000);
  BME280_SetFilter(BME280_FILTER_4);
  BME280_SetOversamplingTemper(BME280_OSRS_T_x4);
  BME280_SetOversamplingPressure(BME280_OSRS_P_x2);
  BME280_SetOversamplingHum(BME280_OSRS_H_x1);
    
  value32 = BME280_ReadReg(BME280_REG_CTRL_MEAS);
  value32 |= BME280_ReadReg(BME280_REG_CTRL_HUM) << 8;

#ifdef BME280_DEBUG_PRODUCTION
  SendLongString("Measurement status: ");
  for (uint8_t i = 0; i < 31; i++) {
    char s[1];
    s[0] = ((value32 >> (31 - i)) & 0x0001) + 0x30;
    SendLongString(s);
  }
  SendLongString("\r\n");
  SendLongString("Temperature: ");
  SendLongString((value32 & BME280_OSRS_T_MSK) ? "ON" : "OFF");
  SendLongString("\r\n");
  SendLongString("Pressure: ");
  SendLongString((value32 & BME280_OSRS_P_MSK) ? "ON" : "OFF");
  SendLongString("\r\n");
  SendLongString("Humidity: ");
  SendLongString(((value32 >> 8) & BME280_OSRS_H_MSK) ? "ON" : "OFF");
  SendLongString("\r\n");
#endif

#ifdef BME280_DEBUG
  printf("Measurements status: %04X%04X\r\n", (uint16_t)(value32>>16), (uint16_t)value32);
  printf("Temperature: %s\r\nPressure: %s\r\nHumidity: %s\r\n", \
  (value32 & BME280_OSRS_T_MSK) ? "ON" : "OFF", \
  (value32 & BME280_OSRS_P_MSK) ? "ON" : "OFF", \
  ((value32 >> 8) & BME280_OSRS_H_MSK) ? "ON" : "OFF");
#endif

  BME280_SetMode(BME280_MODE_FORCED);
  // BME280_SetMode(BME280_MODE_NORMAL);
  Beeper_Sound_OK();
}

void BME280_WriteReg(uint8_t iReg, uint8_t iValue) {
    uint8_t iData[2];
    iData[0] = iReg;
    iData[1] = iValue;
    I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
}

uint8_t BME280_ReadReg(uint8_t iReg) {
    uint8_t iData[1];
    iData[0] = iReg;
    I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
    return I2C_Read_Byte(BME280_ADDRESS);
}

void BME280_ReadReg_U16(uint8_t iReg, uint16_t *iValue) {
    uint8_t iData[1];
    uint8_t iRes[2];
    iData[0] = iReg;
    I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
    I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
    *iValue = iRes[0];
    *iValue <<= 8;
    *iValue += iRes[1];
}

void BME280_ReadReg_LE_U16(uint8_t iReg, uint16_t *iValue) {
    uint8_t iData[1];
    uint8_t iRes[2];
    iData[0] = iReg;
    I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
    I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
    *iValue = iRes[0];
    *iValue <<= 8;
    *iValue += iRes[1];
    *(uint16_t *)iValue = be16toword(*(uint16_t *) iValue);
}

void BME280_ReadReg_U24(uint8_t iReg, uint32_t *iValue) {
    uint8_t iData[1];
    uint8_t iRes[3];
    iData[0] = iReg;
    I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
    I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
    *iValue = iRes[0];
    *iValue <<= 8;
    *iValue += iRes[1];
    *iValue <<= 8;
    *iValue += iRes[2];
    *(uint32_t*)iValue &= 0x00FFFFFF;
}

void BME280_ReadReg_LE_U24(uint8_t iReg, uint32_t *iValue) {
    uint8_t iData[1];
    uint8_t iRes[3];
    iData[0] = iReg;
    I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
    I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
    *iValue = iRes[0];
    *iValue <<= 8;
    *iValue += iRes[1];
    *iValue <<= 8;
    *iValue += iRes[2];
    *(uint32_t*)iValue = be24toword(*(uint32_t *)iValue) & 0x00FFFFFF;
}

void BME280_ReadReg_S16(uint8_t iReg, int16_t *iValue) {
  uint8_t iData[1];
  uint8_t iRes[2];
  iData[0] = iReg;
  I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
  I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
  *iValue = iRes[0];
  *iValue <<= 8;
  *iValue += iRes[1];
}

void BME280_ReadReg_LE_S16(uint8_t iReg, int16_t *iValue) {
  uint8_t iData[1];
  uint8_t iRes[2];
  iData[0] = iReg;
  I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
  I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
  *iValue = iRes[0];
  *iValue <<= 8;
  *iValue += iRes[1];
  *(int16_t *)iValue = be16toword(*(int16_t *) iValue);
}

void BME280_ReadRegisters() {
  uint8_t iData[1] = { BME280_REGISTER_PRESSUREDATA };
  uint8_t iRes[8];
  I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
  I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
  Registers.pressure = iRes[0];
  Registers.pressure <<= 8;
  Registers.pressure += iRes[1];
  Registers.pressure <<= 8;
  Registers.pressure += iRes[2];
  Registers.pressure >>= 4;
#ifdef BME280_DEBUG
  printf("P_RAW shift: 0x%04X%04X\r\n", (int16_t)(Registers.pressure >> 16), (int16_t)Registers.pressure); 
  printf("P_RAW shift: %lu\r\n", Registers.pressure); 
#endif
  Registers.pressure &= 0x000FFFFF;
  Registers.temperature = iRes[3];
  Registers.temperature <<= 8;
  Registers.temperature += iRes[4];
  Registers.temperature <<= 8;
  Registers.temperature += iRes[5];
  Registers.temperature >>= 4;
  Registers.temperature &= 0x000FFFFF;
#ifdef BME280_DEBUG
  printf("T_RAW shift: 0x%04X%04X\r\n", (int16_t)(Registers.temperature >> 16), (int16_t)(Registers.temperature)); 
  printf("T_RAW shift: %lu\r\n", Registers.temperature); 
#endif
  Registers.humidity = iRes[6];
  Registers.humidity <<= 8;
  Registers.humidity += iRes[7];
#ifdef BME280_DEBUG
  printf("H_RAW: 0x%04X\r\n", Registers.humidity); 
  printf("Registers: \r\n");
  for(uint8_t i = 0; i < (sizeof(iRes)/sizeof(iRes[0])); i++) {
    printf("%d: 0x%02X\r\n", i, iRes[i]);
  }
#endif
}

uint8_t BME280_ReadStatus(void) {
  //clear unuset bits
  uint8_t res = BME280_ReadReg(BME280_REGISTER_STATUS) & 0x09;
  return res;
}

void BME280_ReadCoefficients(void) {
  BME280_ReadReg_LE_U16(BME280_REGISTER_DIG_T1, &CalibData.dig_T1);
  BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_T2, &CalibData.dig_T2);
  BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_T3, &CalibData.dig_T3);
  BME280_ReadReg_LE_U16(BME280_REGISTER_DIG_P1, &CalibData.dig_P1);
  BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P2, &CalibData.dig_P2);
  BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P3, &CalibData.dig_P3);
  BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P4, &CalibData.dig_P4);
  BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P5, &CalibData.dig_P5);
  BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P6, &CalibData.dig_P6);
  BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P7, &CalibData.dig_P7);
  BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P8, &CalibData.dig_P8);
  BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_P9, &CalibData.dig_P9);
  CalibData.dig_H1 = BME280_ReadReg(BME280_REGISTER_DIG_H1);
  BME280_ReadReg_LE_S16(BME280_REGISTER_DIG_H2, &CalibData.dig_H2);
  CalibData.dig_H3 = BME280_ReadReg(BME280_REGISTER_DIG_H3);
  CalibData.dig_H4 = (BME280_ReadReg(BME280_REGISTER_DIG_H4) << 4) | (BME280_ReadReg(BME280_REGISTER_DIG_H4+1) & 0xF);
  CalibData.dig_H5 = (BME280_ReadReg(BME280_REGISTER_DIG_H5+1) << 4) | (BME280_ReadReg(BME280_REGISTER_DIG_H5) >> 4);
  CalibData.dig_H6 = (int8_t)BME280_ReadReg(BME280_REGISTER_DIG_H6);

#ifdef BME280_DEBUG_CALIBRATE
  printf("T1: %u\r\n", CalibData.dig_T1);
  printf("T2: %d\r\n", CalibData.dig_T2);
  printf("T3: %d\r\n", CalibData.dig_T3);
  printf("P1: %u\r\n", CalibData.dig_P1);
  printf("P2: %d\r\n", CalibData.dig_P2);
  printf("P3: %d\r\n", CalibData.dig_P3);
  printf("P4: %d\r\n", CalibData.dig_P4);
  printf("P5: %d\r\n", CalibData.dig_P5);
  printf("P6: %d\r\n", CalibData.dig_P6);
  printf("P7: %d\r\n", CalibData.dig_P7);
  printf("P8: %d\r\n", CalibData.dig_P8);
  printf("P9: %d\r\n", CalibData.dig_P9);
  printf("H1: %d\r\n", CalibData.dig_H1);
  printf("H2: %d\r\n", CalibData.dig_H2);
  printf("H3: %d\r\n", CalibData.dig_H3);
  printf("H4: %d\r\n", CalibData.dig_H4);
  printf("H5: %d\r\n", CalibData.dig_H5);
  printf("H6: %d\r\n", CalibData.dig_H3);
#endif
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

int32_t BME280_GetTemperature(void) {
// float BME280_GetTemperature(void) {
  // float temper_float = 0.0f;
  int32_t val1, val2, T;
  // В руководстве переменная temper_raw со знаком 
  // int32_t temper_raw;
 
  /*
  temper_raw = Registers.temperature;
  BME280_ReadReg_U24(BME280_REGISTER_TEMPDATA, &temper_raw);
  val1 = ((float)temper_raw / 16384.0 - (float)CalibData.dig_T1 / 1024.0) * \
  (float)CalibData.dig_T2;
  val2 = ((((float)temper_raw) / 131072.0 - ((float)CalibData.dig_T1) / 8192.0) * \
  (((float)temper_raw) / 131072.0 - ((float)CalibData.dig_T1) / 8192.0)) * \
  ((float)CalibData.dig_T3);
  */
  
  val1 = ((((Registers.temperature >> 3) - ((int32_t)CalibData.dig_T1 << 1))) * \
  ((int32_t)CalibData.dig_T2)) >> 11;
  val2 = (((((Registers.temperature >> 4) - ((int32_t)CalibData.dig_T1)) * \
  ((Registers.temperature >> 4) - ((int32_t)CalibData.dig_T1))) >> 12) * \
  ((int32_t)CalibData.dig_T3)) >> 14;
  temper_int = val1 + val2;

#ifdef BME280_DEBUG
  printf("val1: 0x%04X%04X\r\n", (int16_t)(val1 >> 16), (int16_t)val1); 
  printf("val1: %lu\r\n", val1); 
  printf("val2: 0x%04X%04X\r\n", (int16_t)(val2 >> 16), (int16_t)val1); 
  printf("val2: %lu\r\n", val2); 
  printf("temper_int: 0x%04X%04X\r\n", (int16_t)(temper_int >> 16), (int16_t)temper_int); 
  printf("temper_int: %lu\r\n", temper_int); 
#endif
  
  // temper_float = (val1 + val2) / 5120.0;
  // temper_float /= 100.0f;
  // return temper_float;
  T = (temper_int * 5 + 128) >> 8;
  return T;
}

int32_t BME280_GetPressure(void) {
// float BME280_GetPressure(void) {
	int32_t val1, val2;
  int32_t p;
	/*
  BME280_GetTemperature(); // must be done first to get t_fine
  press_raw = Registers.pressure;
  val1 = (float)temper_int/2 - 64000.0;
  val2 = val1 * val1 * (float)CalibData.dig_P6 / 32768.0;
  val2 = val2 + val1 * CalibData.dig_P5 * 2;
  val2 = (val1/4.0) + CalibData.dig_P4 * 65536;
  val1 = (1 + val1 / 32768) * (float)CalibData.dig_P1;
  p = (p -(val2/4096)) * 6250 / val1;
  val1 = (float)CalibData.dig_P9 * p * p / 2147483648;
  val2 = p * (float)CalibData.dig_P8 / 32768.0;
  p = p + (val1 + val2 + (float)CalibData.dig_P7)/16.0;
  */

  val1 = (((int32_t)temper_int) >> 1) - (int32_t)64000;
	val2 = (((val1 >> 2) * (val1 >> 2)) >> 11) * (int32_t)CalibData.dig_P6;
	val2 = val2 + ((val1 * ((int32_t)CalibData.dig_P5)) << 1);
	val2 = (val2>>2) + (((int32_t)CalibData.dig_P4) << 16);
	val1 = (((CalibData.dig_P3 * (((val1 >> 2) * (val1 >> 2)) >> 13)) >> 3) + \
  (((int32_t)CalibData.dig_P2) * val1) >> 1) >> 18;
	val1 = (((32768 + val1) * ((int32_t)CalibData.dig_P1)) >> 15);
	if (val1 == 0) {
		return 0; // avoid exception caused by division by zero
	}
	p = (((uint32_t)(((int32_t)1048576) - Registers.pressure) - (val2 >> 12))) * 3125;
  if (p < 0x80000000) {
    p = (p << 1) / ((uint32_t)val1);
  } else {
    p =(p / (uint32_t)val1) * 2;
  }
	val1 = (((int32_t)CalibData.dig_P9) * ((int32_t)(((p >> 3) * (p >> 3)) >> 13))) >> 12;
	val2 = (((int32_t)(p >> 2)) * ((int32_t)CalibData.dig_P8)) >> 13;
	p = (uint32_t)((int32_t)p + ((val1 + val2 + CalibData.dig_P7) >> 4));
#ifdef BME280_DEBUG
  printf("p: %lu\r\n", p); 
#endif
  return p;
}

uint32_t BME280_GetHumidity(void) {
//float BME280_GetHumidity(void) {
	int32_t v_x1_u32r;
  // float hum_float = 0.0f;
	v_x1_u32r = (temper_int - ((int32_t)76800));
	v_x1_u32r = ((((((int32_t)Registers.humidity << 14) - (((int32_t)CalibData.dig_H4) << 20) - \
    (((int32_t)CalibData.dig_H5) * v_x1_u32r)) + ((int32_t)16384)) >> 15) * \
    (((((((v_x1_u32r * ((int32_t)CalibData.dig_H6)) >> 10) * (((v_x1_u32r * \
    ((int32_t)CalibData.dig_H3)) >> 11) + ((int32_t)32768))) >> 10) + ((int32_t)2097152)) \
    * ((int32_t)CalibData.dig_H2) + 8192) >> 14));
	v_x1_u32r = (v_x1_u32r - (((((v_x1_u32r >> 15) * (v_x1_u32r >> 15)) >> 7) * \
    ((int32_t)CalibData.dig_H1)) >> 4));
	v_x1_u32r = (v_x1_u32r < 0) ? 0 : v_x1_u32r;
	v_x1_u32r = (v_x1_u32r > 419430400) ? 419430400 : v_x1_u32r;
	return (uint32_t)(v_x1_u32r >> 12);
	// hum_float = (uint32_t)(v_x1_u32r >> 12);
	// hum_float /= 1024.0f;
  // return hum_float;
}

/*
float BME280_GetAltitude(float seaLevel) {
  float att = 0.0f;
	int32_t atm = BME280_GetPressure();
	att = 44330.0 * (1.0 - pow((float)atm / seaLevel, 0.1903));
  return att;
}
*/

void BME280_Measure(void)
{
      // Set forse mode BME280. After measure sensor return to sleep mode.
      BME280_SetMode(BME280_MODE_FORCED);
      delay_ms(2000);

      BME280_ReadRegisters();

      fBME280Temperature = (float)(BME280_GetTemperature() / 100.0);
    
      char stringValueTemperature[INTEGER_BIT_TEMPERATURE + DECIMAL_BIT_TEMPERATURE + 1];
    
      floatToStr(stringValueTemperature, fBME280Temperature, INTEGER_BIT_TEMPERATURE, DECIMAL_BIT_TEMPERATURE);
      SendLongString(Start);
      SendLongString(PointID);
      SendLongString(POINT_ID);
      SendLongString(SensorStr);
      SendLongString(BME280SensorName);
      SendLongString(ParameterStr);
      SendLongString(TemperatureStr); 
      SendLongString(ValueStr);
      SendLongString(stringValueTemperature); 
      SendLongString(End);
      delay_ms(1000);

      fBME280Humidity = (float)(BME280_GetHumidity()) / 1024.0;

      char stringValueHumidity[INTEGER_BIT_HUMIDITI + DECIMAL_BIT_HUMIDITI + 1];

      floatToStr(stringValueHumidity, fBME280Humidity, INTEGER_BIT_HUMIDITI, DECIMAL_BIT_HUMIDITI);
      SendLongString(Start);
      SendLongString(PointID);
      SendLongString(POINT_ID);
      SendLongString(SensorStr);
      SendLongString(BME280SensorName);
      SendLongString(ParameterStr);
      SendLongString(HumidityStr); 
      SendLongString(ValueStr);
      SendLongString(stringValueHumidity); 
      SendLongString(End);
 
      // Pressure in mm Hg
      fBME280Pressure = (float)(BME280_GetPressure()) * 760.0 / 101325.0;

      char stringValuePressure[INTEGER_BIT_PRESSURE + DECIMAL_BIT_PRESSURE + 1]; 

      floatToStr(stringValuePressure, fBME280Pressure, INTEGER_BIT_PRESSURE, DECIMAL_BIT_TEMPERATURE);
      SendLongString(Start);
      SendLongString(PointID);
      SendLongString(POINT_ID);
      SendLongString(SensorStr);
      SendLongString(BME280SensorName);
      SendLongString(ParameterStr);
      SendLongString(PressureStr); 
      SendLongString(ValueStr);
      SendLongString(stringValuePressure); 
      SendLongString(End);
      delay_ms(1000);
}

#endif
