#include "bme280.h"

//------------------------------------------------

// extern I2C_HandleTypeDef hi2c1;
// extern UART_HandleTypeDef huart2;
#define BME280_DEBUG
// #define BME280_DEBUG_CALIBRATE

extern char str1[UART_BUF_SIZE];
BME280_CalibData CalibData;
BME280_Registers Registers;
int32_t temper_int;

void Error(void) {
    LED_OFF;
}

void BME280_Setup(void) {
  uint32_t value32 = 0;

  uint8_t res = BME280_ReadReg(BME280_REG_ID);
#ifdef BME280_DEBUG
  printf("BME280_ID: 0x%02X\r\n", res);
#endif

  if (res != BME280_ID) {
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


#ifdef BME280_DEBUG
  sprintf(str1, "Measurements status: %04X%04X\r\n", (uint16_t)(value32>>16), (uint16_t)value32);
  printf("%s", str1);
  sprintf(str1, "Temperature: %s\r\nPressure: %s\r\nHumidity: %s\r\n", \
   (value32 & BME280_OSRS_T_MSK) ? "ON" : "OFF", \
   (value32 & BME280_OSRS_P_MSK) ? "ON" : "OFF", \
   ((value32 >> 8) & BME280_OSRS_H_MSK) ? "ON" : "OFF");
  printf("%s", str1);
#endif

  BME280_SetMode(BME280_MODE_FORCED);
  // BME280_SetMode(BME280_MODE_NORMAL);

  LED_ON;
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

void BME280_ReadRegisters(BME280_Registers *Regs) {
  uint8_t iData[1] = { BME280_REGISTER_PRESSUREDATA };
  uint8_t iRes[8];
  I2C_Send_Bytes((BME280_ADDRESS), sizeof(iData), iData);
  I2C_Read_Bytes((BME280_ADDRESS), sizeof(iRes), iRes);
  Regs->pressure = iRes[0];
  // printf("Registers.pressure: %lu\r\n", Regs->pressure);
  Regs->pressure <<= 8;
  Regs->pressure += iRes[1];
  Regs->pressure <<= 8;
  Regs->pressure += iRes[2];
  Regs->pressure &= 0x00FFFFFF;
  Regs->temperature = iRes[3];
  Regs->pressure <<= 8;
  Regs->pressure += iRes[4];
  Regs->pressure <<= 8;
  Regs->pressure += iRes[5];
  Regs->pressure &= 0x00FFFFFF;
  Regs->humidity = iRes[6];
  Regs->humidity <<= 8;
  Regs->humidity = iRes[7];
#ifdef BME280_DEBUG
  for(uint8_t i = 0; i < (sizeof(iRes)/sizeof(iRes[0])); i++) {
    printf("Res[%d]: 0x%02X\r\n", i, iRes[i]);
  }
#endif
  sprintf(str1, "Registers.pressure: 0x%X%X%X%X\r\n", \
    (int8_t)((Regs->pressure)>>24), (int8_t)((Regs->pressure)>>16), \
    (int8_t)((Regs->pressure)>>8), (int8_t)(Regs->pressure));
  printf("%s", str1);
  // sprintf(str1, "Registers.temperature: %li\r\n", Regs->temperature);
  // printf("%s", str1);
  // sprintf(str1, "Registers.humidity: %li\r\n", Regs->temperature);
  // printf("%s", str1);
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
  sprintf(str1, "T1: %u\r\n", CalibData.dig_T1);
  printf("%s", str1);
  sprintf(str1, "T2: %d\r\n", CalibData.dig_T2);
  printf("%s", str1);
  sprintf(str1, "T3: %d\r\n", CalibData.dig_T3);
  printf("%s", str1);
  sprintf(str1, "P1: %u\r\n", CalibData.dig_P1);
  printf("%s", str1);
  sprintf(str1, "P2: %d\r\n", CalibData.dig_P2);
  printf("%s", str1);
  sprintf(str1, "P3: %d\r\n", CalibData.dig_P3);
  printf("%s", str1);
  sprintf(str1, "P4: %d\r\n", CalibData.dig_P4);
  printf("%s", str1);
  sprintf(str1, "P5: %d\r\n", CalibData.dig_P5);
  printf("%s", str1);
  sprintf(str1, "P6: %d\r\n", CalibData.dig_P6);
  printf("%s", str1);
  sprintf(str1, "P7: %d\r\n", CalibData.dig_P7);
  printf("%s", str1);
  sprintf(str1, "P8: %d\r\n", CalibData.dig_P8);
  printf("%s", str1);
  sprintf(str1, "P9: %d\r\n", CalibData.dig_P9);
  printf("%s", str1);
  sprintf(str1, "H1: %d\r\n", CalibData.dig_H1);
  printf("%s", str1);
  sprintf(str1, "H2: %d\r\n", CalibData.dig_H2);
  printf("%s", str1);
  sprintf(str1, "H3: %d\r\n", CalibData.dig_H3);
  printf("%s", str1);
  sprintf(str1, "H4: %d\r\n", CalibData.dig_H4);
  printf("%s", str1);
  sprintf(str1, "H5: %d\r\n", CalibData.dig_H5);
  printf("%s", str1);
  sprintf(str1, "H6: %d\r\n", CalibData.dig_H3);
  printf("%s", str1);
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

float BME280_ReadTemperature(void) {
  float temper_float = 0.0f;
  int32_t val1, val2;
  // В руководстве переменная temper_raw со знаком 
  int32_t temper_raw;
 
  // temper_raw = Registers.temperature;
  BME280_ReadReg_U24(BME280_REGISTER_TEMPDATA, &temper_raw);

#ifdef BME280_DEBUG
  // sprintf(str1, "Temperature RAW: 0x%04X%04X\r\n", (uint16_t)temper_raw >> 16, (uint16_t)temper_raw); 
  // printf("%s", str1);  
  // sprintf(str1, "Temperature RAW: %lu\r\n", temper_raw); 
  // printf("%s", str1);  
#endif

	temper_raw >>= 4;

#ifdef BME280_DEBUG
  // sprintf(str1, "Temperature RAW after right shift: 0x%04X%04X\r\n", (uint16_t)temper_raw >> 16, (uint16_t)temper_raw); 
  // printf("%s", str1);  
  sprintf(str1, "Temperature RAW: %lu\r\n", temper_raw); 
  printf("%s", str1);  
#endif

  val1 = ((((temper_raw>>3) - ((int32_t)CalibData.dig_T1<<1))) * ((int32_t)CalibData.dig_T2)) >> 11;
  val2 = (((((temper_raw>>4) - ((int32_t)CalibData.dig_T1)) * ((temper_raw>>4) - ((int32_t)CalibData.dig_T1)))>>12) * ((int32_t)CalibData.dig_T3)) >> 14;
  temper_int = val1 + val2;

#ifdef BME280_DEBUG_G
  sprintf(str1, "val1: 0x%04X\r\n", (uint16_t)val1); 
  printf("%s", str1);
  sprintf(str1, "val2: 0x%04X\r\n", (uint16_t)val2); 
  printf("%s", str1);
  sprintf(str1, "temper_int: 0x%04X%04X\r\n", (int16_t)(temper_int>>16), (int16_t)temper_int); 
  printf("%s", str1);
#endif
  
  temper_float = ((temper_int * 5 + 128) >> 8);
  temper_float /= 100.0f;

  return temper_float;
}

float BME280_ReadPressure(void) {
	float val1, val2;
	// int32_t val1, val2;
  // uint32_t p;
  int32_t press_raw;
  float p;
  // float p_float;
	// BME280_ReadTemperature(); // must be done first to get t_fine
	BME280_ReadReg_U24(BME280_REGISTER_PRESSUREDATA, &press_raw);
  // press_raw = Registers.pressure;
	
#ifdef BME280_DEBUG
  sprintf(str1, "Pressure RAW after: 0x%04X%04X\r\n", (uint16_t)press_raw >> 16, (uint16_t)press_raw); 
  printf("%s", str1);  
  // sprintf(str1, "Pressure RAW: %lu\r\n", press_raw); 
  // printf("%s", str1);  
#endif

  press_raw >>= 4;
  
#ifdef BME280_DEBUG
  sprintf(str1, "Pressure RAW after right shift: 0x%04X%04X\r\n", (uint16_t)press_raw >> 16, (uint16_t)press_raw); 
  printf("%s", str1);  
  sprintf(str1, "Pressure RAW after right shift: %lu\r\n", press_raw); 
  printf("%s", str1);  
#endif

  val1 = (float)temper_int/2 - 64000.0;
  val2= val1 * val1 * (float)CalibData.dig_P6 / 32768.0;
  val2 = val2 + val1 * (float)CalibData.dig_P5 * 2;
  val2 = (val1/4.0) + CalibData.dig_P4 * 65536;
  val1 = (1 + val1 / 32768) * (float)CalibData.dig_P1;
  p = 1048576.0 - (float)press_raw;
  p = (p -(val2/4096)) * 6250 / val1;
  val1 = (float)CalibData.dig_P9 * p * p / 2147483648;
  val2 = p * (float)CalibData.dig_P8 / 32768.0;
  p = p + (val1 + val2 + (float)CalibData.dig_P7)/16.0;

#ifdef BME280_DEBUG_G
  int8_t integer_bit  = 10;
  int8_t decimal_bit = 10;
  
  int8_t sizeValueString = integer_bit + decimal_bit + 1;
  int8_t sizeSendUARTString = sizeof("val1 %s") + sizeValueString;
  char *stringValue = (char*)malloc(sizeValueString * sizeof(char));
  char *stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));

  floatToStr(stringValue, val1, integer_bit, decimal_bit);
  sprintf(stringSendUART, "val1 %s", stringValue);
  printf("%s\r\n", stringSendUART);

  int8_t sizeValueString = integer_bit + decimal_bit + 1;
  int8_t sizeSendUARTString = sizeof("val2 %s") + sizeValueString;
  char *stringValue = (char*)malloc(sizeValueString * sizeof(char));
  char *stringSendUART = (char*)malloc(sizeSendUARTString * sizeof(char));

  floatToStr(stringValue, val2, integer_bit, decimal_bit);
  sprintf(stringSendUART, "val2 %s", stringValue);
  printf("%s\r\n", stringSendUART);

#endif

  /*
  val1 = (((int32_t)temper_int) >> 1) - (int32_t)64000;
	val2 = (((val1 >> 2) * (val1 >> 2)) >> 11) * (int32_t)CalibData.dig_P6;
	val2 = val2 + ((val1 * ((int32_t)CalibData.dig_P5)) << 1);
	val2 = (val2>>2) + ((int32_t)CalibData.dig_P4) << 16;
	val1 = (((CalibData.dig_P3 * (((val1 >> 2) * (val1 >> 2)) >> 13)) >> 3) + (((int32_t)CalibData.dig_P2) * val1) >> 1) >> 18;
	val1 = (((32768 + val1) * ((int32_t)CalibData.dig_P1)) >> 15);
	if (val1 == 0) {
		return 0; // avoid exception caused by division by zero
	}
	p = (((uint32_t)(((int32_t)1048576) - press_raw) - (val2 >> 12))) * 3125;
  if (p < 0x80000000) {
    p = (p<<1) / ((uint32_t)val1);
  } else {
    p =(p/(uint32_t)val1) * 2;
  }
	val1 = (((int32_t)CalibData.dig_P9) * ((int32_t)(((p >> 3) * (p >> 3)) >> 13))) >> 12;
	val2 = (((int32_t)(p >> 2)) * ((int32_t)CalibData.dig_P8)) >> 13;
	p = (uint32_t)((int32_t)p + ((val1 + val2 + CalibData.dig_P7) >> 4));
  */

  // p_float = p * 1.0;
  // return p_float;
  return p;
}

float BME280_ReadHumidity(void) {
  float hum_float = 0.0f;
	int16_t hum_raw;
	int32_t hum_raw_sign, v_x1_u32r;
	// BME280_ReadTemperature(); // must be done first to get t_fine
	BME280_ReadReg_S16(BME280_REGISTER_HUMIDDATA, &hum_raw);
  // hum_raw = Registers.humidity;
#ifdef BME280_DEBUG_G
  sprintf(str1, "hum_raw: 0x%04X\r\n", hum_raw); 
  printf("%s", str1);
#endif
	hum_raw_sign = ((int32_t)hum_raw)&0x0000FFFF;
	v_x1_u32r = (temper_int - ((int32_t)76800));
	v_x1_u32r = (((((hum_raw_sign << 14) - (((int32_t)CalibData.dig_H4) << 20) - \
    (((int32_t)CalibData.dig_H5) * v_x1_u32r)) + ((int32_t)16384)) >> 15) * \
    (((((((v_x1_u32r * ((int32_t)CalibData.dig_H6)) >> 10) * (((v_x1_u32r * \
    ((int32_t)CalibData.dig_H3)) >> 11) + ((int32_t)32768))) >> 10) + ((int32_t)2097152)) \
    * ((int32_t)CalibData.dig_H2) + 8192) >> 14));
	v_x1_u32r = (v_x1_u32r - (((((v_x1_u32r >> 15) * (v_x1_u32r >> 15)) >> 7) * \
    ((int32_t)CalibData.dig_H1)) >> 4));
	v_x1_u32r = (v_x1_u32r < 0) ? 0 : v_x1_u32r;
	v_x1_u32r = (v_x1_u32r > 419430400) ? 419430400 : v_x1_u32r;
	hum_float = (uint32_t)(v_x1_u32r >> 12);
	hum_float /= 1024.0f;
  return hum_float;
}

/*
float BME280_ReadAltitude(float seaLevel) {
  float att = 0.0f;
	float atm = BME280_ReadPressure();
	// att = 44330.0 * (1.0 - pow(atm / seaLevel, 0.1903));
  return att;
}
*/
