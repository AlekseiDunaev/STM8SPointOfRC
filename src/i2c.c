#include "i2c.h"

/**
  * @brief I2C Initialization Function
  * @param None
  * @retval None
  */
void I2C_Setup(void) {
  I2C_DeInit();
  
  // I2C_ITConfig((I2C_IT_TypeDef)(I2C_IT_EVT | I2C_IT_BUF) , ENABLE); // прерывания по событиям пока не настраивал
  I2C_Init(I2C_MAX_STANDARD_FREQ, I2C_ID_ADDRESS, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, I2C_MAX_INPUT_FREQ);
  I2C_Cmd(ENABLE);
}

void I2C_Send_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
    uint32_t time_out= I2C_TIME_ERROR;//Счетчик от зависания функции.
    while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
    I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
    time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
    while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
    I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_TX);//Отсылаем адрес вызываемого устройства.
    time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
    while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
    (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
    while(countData) {//Повторяем пока не отправятся все данные.
        time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
        while(!(I2C->SR1 & 128) && (time_out--));//Ждём когда буфер передающего регистра будет пуст.
        I2C_SendData(*dataBuffer);
        *dataBuffer++;
        countData--;
    }
    time_out= I2C_TIME_ERROR;//Счетчик от зависания функции.
    while((!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED)) && (time_out--));//Ждём окончания отправки данных.
    I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
    time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
    while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
}

uint8_t I2C_Read_Byte(uint8_t Addr) {
  uint32_t time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
  while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
  I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
  time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
  while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
  I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства и бит приёма данных.
  time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
  while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
  /*Функционал для приёма одного байта.*/
  //Clear ACK
  I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
  //Clear ADDR flag
  (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
  //Set STOP
  I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
  time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
  //Poll RXNE
  while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
  //Read byte
  uint8_t read_byte = I2C_ReceiveData();//Читаем данные.
  time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
  //Poll STOPF
  while((I2C->CR2 & I2C_CR2_STOP)&& (time_out--));//Ждём остановки передачи и STOP на линии.
  I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
  return read_byte;
}

/*Функция читает три байта данных.*/
void I2C_Read_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
    uint32_t time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
    while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
    I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
    time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
    while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
    I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства.
    time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
    while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
    /*Функционал для приёма трёх байтов.*/
    (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
    if(countData > 3) {//Если принимаем больше трёх байтов.
        while(countData > 3) {
            time_out= I2C_TIME_ERROR;//Счетчик от зависания функции.
            while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
            *dataBuffer = I2C_ReceiveData();
            *dataBuffer++;
            countData--;
        }
    }
    time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
    while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
    I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
    *dataBuffer = I2C_ReceiveData();
    *dataBuffer++;
    I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
    *dataBuffer = I2C_ReceiveData();
    *dataBuffer++;
    time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
    while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
    *dataBuffer = I2C_ReceiveData();
    time_out = I2C_TIME_ERROR;//Счетчик от зависания функции.
    while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
    I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
}

/*
void HAL_I2C_MasterTxCpltCallback(I2C_HandleTypeDef *hi2c)
{
  HAL_I2C_Master_Receive_IT(&hi2c1, (I2C_ADDRESS << 1), &regData, 1);
}
*/

/*
void HAL_I2C_MasterRxCpltCallback(I2C_HandleTypeDef *hi2c)
{
  // I2C data ready!
}
*/
