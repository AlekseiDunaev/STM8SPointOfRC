#ifndef _OUTPUT_H_
#define _OUTPUT_H_

#include "stm8s.h"
#include "lorawan.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"
static const char *TopicStr = "{\"topic\" : \"mqtt\/";
static const char *ValueStr = "\", \"value\" : \"";
static const char *DS18X20TemperatureTopic = "temperature-room";
static const char *AHT21HumidityTopic = "humidity-aht21";
static const char *AHT21TeperatureTopic = "temperature-aht21";
static const char *BME280TemperatureTopic = "temperature-bme280";
static const char *BME280HumidityTopic = "humidity-bme280";
static const char *BME280PressureTopic = "pressure-bme280";
static const char *SystemTopic = "system";
static const char *End = "\"}\n";

void floatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit);
void SendString(const char *str);
void SendPreambule(void);

#endif