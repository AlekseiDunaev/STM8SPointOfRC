#include "beeper.h"

void Beeper_Init(void) {
    BEEP_DeInit(); 
    BEEP_LSICalibrationConfig(128000);
    BEEP_Init(BEEP_FREQUENCY_2KHZ);
}

void Beeper_Dot(void) {
    BEEP_Cmd(ENABLE);
    delay_ms(200);
    BEEP_Cmd(DISABLE);
    delay_ms(200);
}

void Beeper_Dash(void) {
    BEEP_Cmd(ENABLE);
    delay_ms(600);
    BEEP_Cmd(DISABLE);
    delay_ms(200);
}

void Beeper_Space(void) {
    delay_ms(400);
}

void Beeper_Sound_OK(void) {
    Beeper_Dash();
    Beeper_Dash();
    Beeper_Dash();

    Beeper_Space();

    Beeper_Dash();
    Beeper_Dot();
    Beeper_Dash();
}

void Beeper_Sound_Fail(void) {
    Beeper_Dash();
    Beeper_Dash();
    Beeper_Dash();
    
    Beeper_Space();
    
    Beeper_Dot();
    Beeper_Dot();
    Beeper_Dot();
 
    Beeper_Space();
    
    Beeper_Dash();
    Beeper_Dash();
    Beeper_Dash();
}