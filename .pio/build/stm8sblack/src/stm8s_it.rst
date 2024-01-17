                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_it
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TRAP_IRQHandler
                                     12 	.globl _TLI_IRQHandler
                                     13 	.globl _AWU_IRQHandler
                                     14 	.globl _CLK_IRQHandler
                                     15 	.globl _EXTI_PORTA_IRQHandler
                                     16 	.globl _EXTI_PORTB_IRQHandler
                                     17 	.globl _EXTI_PORTC_IRQHandler
                                     18 	.globl _EXTI_PORTD_IRQHandler
                                     19 	.globl _EXTI_PORTE_IRQHandler
                                     20 	.globl _SPI_IRQHandler
                                     21 	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                     22 	.globl _TIM1_CAP_COM_IRQHandler
                                     23 	.globl _TIM2_UPD_OVF_BRK_IRQHandler
                                     24 	.globl _TIM2_CAP_COM_IRQHandler
                                     25 	.globl _TIM3_UPD_OVF_BRK_IRQHandler
                                     26 	.globl _TIM3_CAP_COM_IRQHandler
                                     27 	.globl _I2C_IRQHandler
                                     28 	.globl _UART2_TX_IRQHandler
                                     29 	.globl _UART2_RX_IRQHandler
                                     30 	.globl _ADC1_IRQHandler
                                     31 	.globl _TIM4_UPD_OVF_IRQHandler
                                     32 	.globl _EEPROM_EEC_IRQHandler
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DATA
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area INITIALIZED
                                     41 ;--------------------------------------------------------
                                     42 ; absolute external ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area DABS (ABS)
                                     45 
                                     46 ; default segment ordering for linker
                                     47 	.area HOME
                                     48 	.area GSINIT
                                     49 	.area GSFINAL
                                     50 	.area CONST
                                     51 	.area INITIALIZER
                                     52 	.area CODE
                                     53 
                                     54 ;--------------------------------------------------------
                                     55 ; global & static initialisations
                                     56 ;--------------------------------------------------------
                                     57 	.area HOME
                                     58 	.area GSINIT
                                     59 	.area GSFINAL
                                     60 	.area GSINIT
                                     61 ;--------------------------------------------------------
                                     62 ; Home
                                     63 ;--------------------------------------------------------
                                     64 	.area HOME
                                     65 	.area HOME
                                     66 ;--------------------------------------------------------
                                     67 ; code
                                     68 ;--------------------------------------------------------
                                     69 	.area CODE
                                     70 ;	src\stm8s_it.c: 89: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                     71 ;	-----------------------------------------
                                     72 ;	 function TRAP_IRQHandler
                                     73 ;	-----------------------------------------
      00AA1E                         74 _TRAP_IRQHandler:
                                     75 ;	src\stm8s_it.c: 94: }
      00AA1E 80               [11]   76 	iret
                                     77 ;	src\stm8s_it.c: 103: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
                                     78 ;	-----------------------------------------
                                     79 ;	 function TLI_IRQHandler
                                     80 ;	-----------------------------------------
      00AA1F                         81 _TLI_IRQHandler:
                                     82 ;	src\stm8s_it.c: 108: }
      00AA1F 80               [11]   83 	iret
                                     84 ;	src\stm8s_it.c: 116: INTERRUPT_HANDLER(AWU_IRQHandler, 1)	
                                     85 ;	-----------------------------------------
                                     86 ;	 function AWU_IRQHandler
                                     87 ;	-----------------------------------------
      00AA20                         88 _AWU_IRQHandler:
                                     89 ;	src\stm8s_it.c: 121: }
      00AA20 80               [11]   90 	iret
                                     91 ;	src\stm8s_it.c: 129: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
                                     92 ;	-----------------------------------------
                                     93 ;	 function CLK_IRQHandler
                                     94 ;	-----------------------------------------
      00AA21                         95 _CLK_IRQHandler:
                                     96 ;	src\stm8s_it.c: 134: }
      00AA21 80               [11]   97 	iret
                                     98 ;	src\stm8s_it.c: 142: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
                                     99 ;	-----------------------------------------
                                    100 ;	 function EXTI_PORTA_IRQHandler
                                    101 ;	-----------------------------------------
      00AA22                        102 _EXTI_PORTA_IRQHandler:
                                    103 ;	src\stm8s_it.c: 147: }
      00AA22 80               [11]  104 	iret
                                    105 ;	src\stm8s_it.c: 154: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
                                    106 ;	-----------------------------------------
                                    107 ;	 function EXTI_PORTB_IRQHandler
                                    108 ;	-----------------------------------------
      00AA23                        109 _EXTI_PORTB_IRQHandler:
                                    110 ;	src\stm8s_it.c: 159: }
      00AA23 80               [11]  111 	iret
                                    112 ;	src\stm8s_it.c: 167: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
                                    113 ;	-----------------------------------------
                                    114 ;	 function EXTI_PORTC_IRQHandler
                                    115 ;	-----------------------------------------
      00AA24                        116 _EXTI_PORTC_IRQHandler:
                                    117 ;	src\stm8s_it.c: 172: }
      00AA24 80               [11]  118 	iret
                                    119 ;	src\stm8s_it.c: 180: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
                                    120 ;	-----------------------------------------
                                    121 ;	 function EXTI_PORTD_IRQHandler
                                    122 ;	-----------------------------------------
      00AA25                        123 _EXTI_PORTD_IRQHandler:
                                    124 ;	src\stm8s_it.c: 185: }
      00AA25 80               [11]  125 	iret
                                    126 ;	src\stm8s_it.c: 193: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
                                    127 ;	-----------------------------------------
                                    128 ;	 function EXTI_PORTE_IRQHandler
                                    129 ;	-----------------------------------------
      00AA26                        130 _EXTI_PORTE_IRQHandler:
                                    131 ;	src\stm8s_it.c: 198: }
      00AA26 80               [11]  132 	iret
                                    133 ;	src\stm8s_it.c: 248: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
                                    134 ;	-----------------------------------------
                                    135 ;	 function SPI_IRQHandler
                                    136 ;	-----------------------------------------
      00AA27                        137 _SPI_IRQHandler:
                                    138 ;	src\stm8s_it.c: 253: }
      00AA27 80               [11]  139 	iret
                                    140 ;	src\stm8s_it.c: 261: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
                                    141 ;	-----------------------------------------
                                    142 ;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                    143 ;	-----------------------------------------
      00AA28                        144 _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
                                    145 ;	src\stm8s_it.c: 266: }
      00AA28 80               [11]  146 	iret
                                    147 ;	src\stm8s_it.c: 274: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
                                    148 ;	-----------------------------------------
                                    149 ;	 function TIM1_CAP_COM_IRQHandler
                                    150 ;	-----------------------------------------
      00AA29                        151 _TIM1_CAP_COM_IRQHandler:
                                    152 ;	src\stm8s_it.c: 279: }
      00AA29 80               [11]  153 	iret
                                    154 ;	src\stm8s_it.c: 314: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
                                    155 ;	-----------------------------------------
                                    156 ;	 function TIM2_UPD_OVF_BRK_IRQHandler
                                    157 ;	-----------------------------------------
      00AA2A                        158 _TIM2_UPD_OVF_BRK_IRQHandler:
                                    159 ;	src\stm8s_it.c: 319: }
      00AA2A 80               [11]  160 	iret
                                    161 ;	src\stm8s_it.c: 327: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
                                    162 ;	-----------------------------------------
                                    163 ;	 function TIM2_CAP_COM_IRQHandler
                                    164 ;	-----------------------------------------
      00AA2B                        165 _TIM2_CAP_COM_IRQHandler:
                                    166 ;	src\stm8s_it.c: 332: }
      00AA2B 80               [11]  167 	iret
                                    168 ;	src\stm8s_it.c: 343: INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
                                    169 ;	-----------------------------------------
                                    170 ;	 function TIM3_UPD_OVF_BRK_IRQHandler
                                    171 ;	-----------------------------------------
      00AA2C                        172 _TIM3_UPD_OVF_BRK_IRQHandler:
                                    173 ;	src\stm8s_it.c: 348: }
      00AA2C 80               [11]  174 	iret
                                    175 ;	src\stm8s_it.c: 356: INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
                                    176 ;	-----------------------------------------
                                    177 ;	 function TIM3_CAP_COM_IRQHandler
                                    178 ;	-----------------------------------------
      00AA2D                        179 _TIM3_CAP_COM_IRQHandler:
                                    180 ;	src\stm8s_it.c: 361: }
      00AA2D 80               [11]  181 	iret
                                    182 ;	src\stm8s_it.c: 399: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
                                    183 ;	-----------------------------------------
                                    184 ;	 function I2C_IRQHandler
                                    185 ;	-----------------------------------------
      00AA2E                        186 _I2C_IRQHandler:
                                    187 ;	src\stm8s_it.c: 404: }
      00AA2E 80               [11]  188 	iret
                                    189 ;	src\stm8s_it.c: 413: INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
                                    190 ;	-----------------------------------------
                                    191 ;	 function UART2_TX_IRQHandler
                                    192 ;	-----------------------------------------
      00AA2F                        193 _UART2_TX_IRQHandler:
                                    194 ;	src\stm8s_it.c: 431: }
      00AA2F 80               [11]  195 	iret
                                    196 ;	src\stm8s_it.c: 439: INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
                                    197 ;	-----------------------------------------
                                    198 ;	 function UART2_RX_IRQHandler
                                    199 ;	-----------------------------------------
      00AA30                        200 _UART2_RX_IRQHandler:
                                    201 ;	src\stm8s_it.c: 460: }
      00AA30 80               [11]  202 	iret
                                    203 ;	src\stm8s_it.c: 510: INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
                                    204 ;	-----------------------------------------
                                    205 ;	 function ADC1_IRQHandler
                                    206 ;	-----------------------------------------
      00AA31                        207 _ADC1_IRQHandler:
                                    208 ;	src\stm8s_it.c: 515: }
      00AA31 80               [11]  209 	iret
                                    210 ;	src\stm8s_it.c: 538: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
                                    211 ;	-----------------------------------------
                                    212 ;	 function TIM4_UPD_OVF_IRQHandler
                                    213 ;	-----------------------------------------
      00AA32                        214 _TIM4_UPD_OVF_IRQHandler:
                                    215 ;	src\stm8s_it.c: 543: }
      00AA32 80               [11]  216 	iret
                                    217 ;	src\stm8s_it.c: 552: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
                                    218 ;	-----------------------------------------
                                    219 ;	 function EEPROM_EEC_IRQHandler
                                    220 ;	-----------------------------------------
      00AA33                        221 _EEPROM_EEC_IRQHandler:
                                    222 ;	src\stm8s_it.c: 557: }
      00AA33 80               [11]  223 	iret
                                    224 	.area CODE
                                    225 	.area CONST
                                    226 	.area INITIALIZER
                                    227 	.area CABS (ABS)
