#ifndef _CONFIG_POINT_H_
#define _CONFIG_POINT_H

#define AHT21_ENABLE
#define BME280_ENABLE
#define DS18X20_ENABLE

// #define POINT_ID "TEST_POINT"
#define POINT_ID "YAROSLAVL"

static const char *TemperatureStr = "temperature";
static const char *HumidityStr = "humidity";
static const char *PressureStr = "pressure";

static const char *DS18X20SensorName = "ds18X20";
static const char *BME280SensorName = "BME280";
static const char *AHT21SensorName = "AHT21";
static const char *SystemTopic = "system";

#endif