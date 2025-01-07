#ifndef _BEEPER_H_
#define _BEEPER_H_

#include "stm8s.h"
#include "delay.h"

void Beeper_Init(void);
void Beeper_Dash();
void Beeper_Space();
void Beeper_Dot();
void Beeper_Sound_OK(void);
void Beeper_Sound_Fail(void);

#endif