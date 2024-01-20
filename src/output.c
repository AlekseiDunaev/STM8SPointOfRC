#include "output.h"

#define UART_BUF_SIZE 128
/*
// Read buffer
uint8_t read_ok = 0; // read completion flag
uint8_t read_idx = 0;
uint8_t read_len = 0;
NEAR uint8_t read_buffer[UART_BUF_SIZE]; // @near can be placed when the buffer setting is large

// Write buffer
uint8_t write_ok = 0; // write completion flag
uint8_t write_idx = 0;
uint8_t write_len = 0;
NEAR uint8_t write_buffer[UART_BUF_SIZE]; // @near can be placed when the buffer setting is large
*/

static const char table[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};

void floatToStr(char *str, float number, uint8_t integer_bit, uint8_t decimal_bit) {
        uint8_t i;
        uint8_t minus = 0;
        float t2 = 0.0;
        uint16_t temp;
        uint8_t trailing_zero_count = 0;

        if (number < 0) {
          str[0] = 0x2D;
          number *= -1;
          minus = 1;
        }
        
        temp = (uint32_t)(number/1);

        for (i = 1; i <= integer_bit; i++) {
                if (temp == 0) {
                        str[integer_bit - i + minus] = table[0];
                } else {
                        str[integer_bit - i + minus] = table[temp%10];
                }
                temp /= 10;
        }
        
        for (i = 0; i < (integer_bit - 1); i++) {
          if (str[i + minus] == '0') {
            trailing_zero_count += 1;
          } else {
            break;
          }
        }
        
        for (i = minus; i <= trailing_zero_count + minus; i++) {
          str[i] = str[i + trailing_zero_count];
        }
        
        *(str + integer_bit - trailing_zero_count + minus) = '.';
        temp = 0;
        t2 = number;

        for (i = 1; i <= decimal_bit; i++) {
                temp = t2 * 10;
                str[integer_bit + i - trailing_zero_count + minus] = table[temp%10];
                t2 *= 10;
        }

        *(str + integer_bit + 1 + decimal_bit - trailing_zero_count + minus) = '\0';
}

/*
// write multiple bytes
void uart_send_n_byte(uint8_t* data, uint8_t len)
{
	uint16_t count = 0;
	UART2_ITConfig(UART2_IT_TXE, DISABLE);

	 // Prepare to write data buffer (copy from user data area to serial port write buffer, initialize index value, etc.)
	memcpy(write_buffer, data, len);
	write_idx = 0;
	write_len = len;

	 // write interrupt
	UART2_ITConfig(UART2_IT_TXE, ENABLE);
	
	 while(!write_ok) { // Wait for the write to complete (synchronous processing)
		count++;
		 if( count >= 10000 ) { // Simple timeout processing, no timeout can be removed
			write_idx = 0;
			write_len = 0;
			break;
		}
	}
	 write_ok = 0; // Write complete, reset write complete flag
	return;
}

// read multiple bytes
void  uart_read_n_byte(uint8_t* data, uint8_t len)
{
	 // turn off interrupt
	UART2_ITConfig(UART2_IT_RXNE_OR, DISABLE);

	 // Clear the read buffer (reset the read index value)
	read_idx = 0;
	read_len = len;

	 // open read interrupt
	UART2_ITConfig(UART2_IT_RXNE_OR, ENABLE);
	
	 while(!read_ok); // Wait for the read operation to complete (synchronization processing), add timeout processing, refer to the above write operation
	 read_ok = 0; // write complete, reset write complete flag
	 memcpy(data, read_buffer, read_len); // copy data to user buffer
	return;
}
*/
