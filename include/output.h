#ifndef _OUTPUT_H_
#define _OUTPUT_H_

#include "stm8s.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"

void floatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit);
// void uart_send_n_byte(uint8_t* data, uint8_t len);
// void uart_read_n_byte(uint8_t* data, uint8_t len);

#endif