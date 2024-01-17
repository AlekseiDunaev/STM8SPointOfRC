;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module stm8s_it
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TRAP_IRQHandler
	.globl _TLI_IRQHandler
	.globl _AWU_IRQHandler
	.globl _CLK_IRQHandler
	.globl _EXTI_PORTA_IRQHandler
	.globl _EXTI_PORTB_IRQHandler
	.globl _EXTI_PORTC_IRQHandler
	.globl _EXTI_PORTD_IRQHandler
	.globl _EXTI_PORTE_IRQHandler
	.globl _SPI_IRQHandler
	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
	.globl _TIM1_CAP_COM_IRQHandler
	.globl _TIM2_UPD_OVF_BRK_IRQHandler
	.globl _TIM2_CAP_COM_IRQHandler
	.globl _TIM3_UPD_OVF_BRK_IRQHandler
	.globl _TIM3_CAP_COM_IRQHandler
	.globl _I2C_IRQHandler
	.globl _UART2_TX_IRQHandler
	.globl _UART2_RX_IRQHandler
	.globl _ADC1_IRQHandler
	.globl _TIM4_UPD_OVF_IRQHandler
	.globl _EEPROM_EEC_IRQHandler
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	src\stm8s_it.c: 74: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
;	-----------------------------------------
;	 function TRAP_IRQHandler
;	-----------------------------------------
_TRAP_IRQHandler:
;	src\stm8s_it.c: 79: }
	iret
;	src\stm8s_it.c: 88: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
;	-----------------------------------------
;	 function TLI_IRQHandler
;	-----------------------------------------
_TLI_IRQHandler:
;	src\stm8s_it.c: 93: }
	iret
;	src\stm8s_it.c: 101: INTERRUPT_HANDLER(AWU_IRQHandler, 1)	
;	-----------------------------------------
;	 function AWU_IRQHandler
;	-----------------------------------------
_AWU_IRQHandler:
;	src\stm8s_it.c: 106: }
	iret
;	src\stm8s_it.c: 114: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
;	-----------------------------------------
;	 function CLK_IRQHandler
;	-----------------------------------------
_CLK_IRQHandler:
;	src\stm8s_it.c: 119: }
	iret
;	src\stm8s_it.c: 127: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
;	-----------------------------------------
;	 function EXTI_PORTA_IRQHandler
;	-----------------------------------------
_EXTI_PORTA_IRQHandler:
;	src\stm8s_it.c: 132: }
	iret
;	src\stm8s_it.c: 139: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
;	-----------------------------------------
;	 function EXTI_PORTB_IRQHandler
;	-----------------------------------------
_EXTI_PORTB_IRQHandler:
;	src\stm8s_it.c: 144: }
	iret
;	src\stm8s_it.c: 152: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
;	-----------------------------------------
;	 function EXTI_PORTC_IRQHandler
;	-----------------------------------------
_EXTI_PORTC_IRQHandler:
;	src\stm8s_it.c: 157: }
	iret
;	src\stm8s_it.c: 165: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
;	-----------------------------------------
;	 function EXTI_PORTD_IRQHandler
;	-----------------------------------------
_EXTI_PORTD_IRQHandler:
;	src\stm8s_it.c: 170: }
	iret
;	src\stm8s_it.c: 178: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
;	-----------------------------------------
;	 function EXTI_PORTE_IRQHandler
;	-----------------------------------------
_EXTI_PORTE_IRQHandler:
;	src\stm8s_it.c: 183: }
	iret
;	src\stm8s_it.c: 233: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
;	-----------------------------------------
;	 function SPI_IRQHandler
;	-----------------------------------------
_SPI_IRQHandler:
;	src\stm8s_it.c: 238: }
	iret
;	src\stm8s_it.c: 246: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
;	-----------------------------------------
;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
;	-----------------------------------------
_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
;	src\stm8s_it.c: 251: }
	iret
;	src\stm8s_it.c: 259: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
;	-----------------------------------------
;	 function TIM1_CAP_COM_IRQHandler
;	-----------------------------------------
_TIM1_CAP_COM_IRQHandler:
;	src\stm8s_it.c: 264: }
	iret
;	src\stm8s_it.c: 299: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
;	-----------------------------------------
;	 function TIM2_UPD_OVF_BRK_IRQHandler
;	-----------------------------------------
_TIM2_UPD_OVF_BRK_IRQHandler:
;	src\stm8s_it.c: 304: }
	iret
;	src\stm8s_it.c: 312: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
;	-----------------------------------------
;	 function TIM2_CAP_COM_IRQHandler
;	-----------------------------------------
_TIM2_CAP_COM_IRQHandler:
;	src\stm8s_it.c: 317: }
	iret
;	src\stm8s_it.c: 328: INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
;	-----------------------------------------
;	 function TIM3_UPD_OVF_BRK_IRQHandler
;	-----------------------------------------
_TIM3_UPD_OVF_BRK_IRQHandler:
;	src\stm8s_it.c: 333: }
	iret
;	src\stm8s_it.c: 341: INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
;	-----------------------------------------
;	 function TIM3_CAP_COM_IRQHandler
;	-----------------------------------------
_TIM3_CAP_COM_IRQHandler:
;	src\stm8s_it.c: 346: }
	iret
;	src\stm8s_it.c: 384: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
;	-----------------------------------------
;	 function I2C_IRQHandler
;	-----------------------------------------
_I2C_IRQHandler:
;	src\stm8s_it.c: 389: }
	iret
;	src\stm8s_it.c: 398: INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
;	-----------------------------------------
;	 function UART2_TX_IRQHandler
;	-----------------------------------------
_UART2_TX_IRQHandler:
;	src\stm8s_it.c: 416: }
	iret
;	src\stm8s_it.c: 424: INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
;	-----------------------------------------
;	 function UART2_RX_IRQHandler
;	-----------------------------------------
_UART2_RX_IRQHandler:
;	src\stm8s_it.c: 445: }
	iret
;	src\stm8s_it.c: 495: INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
;	-----------------------------------------
;	 function ADC1_IRQHandler
;	-----------------------------------------
_ADC1_IRQHandler:
;	src\stm8s_it.c: 500: }
	iret
;	src\stm8s_it.c: 523: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
;	-----------------------------------------
;	 function TIM4_UPD_OVF_IRQHandler
;	-----------------------------------------
_TIM4_UPD_OVF_IRQHandler:
;	src\stm8s_it.c: 528: }
	iret
;	src\stm8s_it.c: 537: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
;	-----------------------------------------
;	 function EEPROM_EEC_IRQHandler
;	-----------------------------------------
_EEPROM_EEC_IRQHandler:
;	src\stm8s_it.c: 542: }
	iret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
