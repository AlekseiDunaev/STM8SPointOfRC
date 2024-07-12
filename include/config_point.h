#ifndef _CONFIG_POINT_H_
#define _CONFIG_POINT_H

#define AHT21_ENABLE
#define BME280_ENABLE
#define DS18X20_ENABLE

#define POINT_ID "YAROSLAVL"

static const char *TemperatureStr = "temperature";
static const char *HumidityStr = "humidity";
static const char *PressureStr = "pressure";

#ifdef DS18X20_ENABLE
static const char *DS18X20SensorName = "ds18X20";
#endif

#ifdef BME280_ENABLE
static const char *BME280SensorName = "BME280";
#endif

#ifdef AHT21_ENABLE 
static const char *AHT21SensorName = "AHT21";
#endif

static const char *SystemTopic = "system";

#endif