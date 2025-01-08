#ifndef _OUTPUT_H_
#define _OUTPUT_H_

#include "stm8s.h"
#include "lorawan.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "config_point.h"
#include "beeper.h"

static const char *Start = "{";
static const char *PointID = "\"point_id\" : \"";
static const char *SensorStr = "\", \"sensor\" : \"";
static const char *ParameterStr = "\", \"parameter\" : \"";
static const char *ValueStr = "\", \"value\" : \"";
static const char *End = "\"}\n";

typedef struct IoTMessage {
    const char *start;
    const char *pointID;
    const char *sensorString;
    const char *paramenterString;
    const char *valueStr;
    const char *end;
} IoTMessage_t;

void floatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit);
// void SendString(const char *str);
void SendPreambule(void);
void SendLongString(const char *str);
void SendInitMessage();
void SendInfluxMessage(const char *pointID, const char *sensorName, const char *typeValue, const char *value);
void SendPIoTInfo();
void Error(void);

#endif