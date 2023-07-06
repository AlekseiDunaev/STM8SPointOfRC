#include "ds18X20.h"

bool DS18X20_Reset(void) {
	bool i = FALSE;
  // OW_OUTPUT();
	OW_LOW();
	// delay_us(480);
	delay_us(900);
	OW_HIGH();
	// delay_us(15);
	delay_us(120);
  // OW_INPUT();
	if(!OW_READ()) {
	  delay_us(480);
	  if(OW_READ()) {
      delay_us(360);
      return TRUE;
    }
  } else {
    delay_us(900);
  }

	return FALSE;

}

void DS18X20_Write_Byte(uint8_t data) {
  for(uint8_t i = 0; i < 8; i++)
  {
    if(data & 0x01)
    { /* write '1' */
      OW_LOW();               /* master - drive bus low */
      // delay_us(6);    /* master - wait 6us (A-5,6,15) */
      __asm__ ("nop");
      __asm__ ("nop");
      __asm__ ("nop");
      __asm__ ("nop");
      __asm__ ("nop");
      __asm__ ("nop");
      __asm__ ("nop");
      OW_HIGH();              /* master - release bus */
      // delay_us(64);   /* master - wait 64us (B-59,64,N/A) */
      delay_us(50);   /* master - wait 64us (B-59,64,N/A) */
    }
    else
    { /* write '0' */
      OW_LOW();                /* master - drive bus low */
      delay_us(50);    /* master - wait 60us (C-60,60,120) */
      OW_HIGH();               /* master - release bus */
      // delay_us(10);    /* master - wait 10us (D-8,10,N/A) */
      __asm__ ("nop");
      __asm__ ("nop");
      __asm__ ("nop");
      __asm__ ("nop");
      __asm__ ("nop");
      __asm__ ("nop");
      __asm__ ("nop");
    }
    data >>= 1;
  }
}

uint8_t DS18X20_Read_Byte(void) {
  uint8_t result = 0;
  // OW_OUTPUT();
  for(uint8_t i = 0; i < 8; i++)
  {
    result >>= 1;
    OW_LOW();                 /* master - drive bus low */
    // delay_us(6);      /* master - wait 6us (A-5,6,15) */
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    OW_HIGH();                /* master - release bus */
    // delay_us(9);      /* master - wait 9us (E-5,9,12) */
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    __asm__ ("nop");
    // OW_INPUT();
    if(OW_READ())  result |= 0x80;
    delay_us(55);     /* master - wait 55us (F-50,55,N/A) */
  }
  return (result);
}

bool DS18X20_Read_ID(u8 *ROM_ID) {
	if(!DS18X20_Reset()) return FALSE;
	DS18X20_Write_Byte(READ_ROM);
  delay_us(100);
	for(uint8_t i = 0; i < 8; i++)
	{
		ROM_ID[i] = DS18X20_Read_Byte();
	}
	return TRUE;
}

bool DS18X20_Skip_ID() {
	if(!DS18X20_Reset()) return FALSE;
	DS18X20_Write_Byte(SKIP_ROM);
  delay_us(100);
	return TRUE;
}

float DS18X20_Get_Temperature() {
  unsigned char msb = 0x00;
  unsigned char lsb = 0x00;
  register float temperature = -100.0;
  int16_t temp;
  int8_t sign = 1;
  
  DS18X20_Skip_ID();
  if (!DS18X20_Skip_ID()) {
    return temperature;
  }
  DS18X20_Write_Byte(CONVERT_T);
  delay_ms(4000);
  DS18X20_Skip_ID();
  if (!DS18X20_Skip_ID()) {
    return temperature;
  }
  DS18X20_Write_Byte(READ_SCRATCHPAD);
  lsb = DS18X20_Read_Byte();
  msb = DS18X20_Read_Byte();
  if (msb >> 7) {
    msb = ~msb;
    lsb = ~lsb;
    sign = -1;
  }
  temp = msb;
  temp = temp << 8;
  temp |= lsb;
  temp += 1;

  /*
  switch(resolution) {
    case 12: {
      temperature *= 0.0625;
      break;
    }   
    case 11: {
      temperature *= 0.125;     
      break;
    }        
    case 10: {
      temperature *= 0.25;
      break;
    }
    case 9: {
      temperature *= 0.5;
      break;
    }
  }
  */
  return temperature = temp * 0.0625 * sign;
}

void DS18X20_Setup(void) {
  OW_OUTPUT();
}

