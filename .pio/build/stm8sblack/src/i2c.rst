                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _I2C_GetFlagStatus
                                     12 	.globl _I2C_CheckEvent
                                     13 	.globl _I2C_SendData
                                     14 	.globl _I2C_Send7bitAddress
                                     15 	.globl _I2C_ReceiveData
                                     16 	.globl _I2C_AcknowledgeConfig
                                     17 	.globl _I2C_GenerateSTOP
                                     18 	.globl _I2C_GenerateSTART
                                     19 	.globl _I2C_Cmd
                                     20 	.globl _I2C_Init
                                     21 	.globl _I2C_DeInit
                                     22 	.globl _I2C_Setup
                                     23 	.globl _I2C_Send_Bytes
                                     24 	.globl _I2C_Read_Byte
                                     25 	.globl _I2C_Read_Bytes
                                     26 ;--------------------------------------------------------
                                     27 ; ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area DATA
                                     30 ;--------------------------------------------------------
                                     31 ; ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area INITIALIZED
                                     34 ;--------------------------------------------------------
                                     35 ; absolute external ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area DABS (ABS)
                                     38 
                                     39 ; default segment ordering for linker
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area CONST
                                     44 	.area INITIALIZER
                                     45 	.area CODE
                                     46 
                                     47 ;--------------------------------------------------------
                                     48 ; global & static initialisations
                                     49 ;--------------------------------------------------------
                                     50 	.area HOME
                                     51 	.area GSINIT
                                     52 	.area GSFINAL
                                     53 	.area GSINIT
                                     54 ;--------------------------------------------------------
                                     55 ; Home
                                     56 ;--------------------------------------------------------
                                     57 	.area HOME
                                     58 	.area HOME
                                     59 ;--------------------------------------------------------
                                     60 ; code
                                     61 ;--------------------------------------------------------
                                     62 	.area CODE
                                     63 ;	src/i2c.c: 8: void I2C_Setup(void) {
                                     64 ;	-----------------------------------------
                                     65 ;	 function I2C_Setup
                                     66 ;	-----------------------------------------
      009E1A                         67 _I2C_Setup:
                                     68 ;	src/i2c.c: 9: I2C_DeInit();
      009E1A CD 8A 80         [ 4]   69 	call	_I2C_DeInit
                                     70 ;	src/i2c.c: 12: I2C_Init(I2C_MAX_STANDARD_FREQ, I2C_ID_ADDRESS, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, I2C_MAX_INPUT_FREQ);
      009E1D 4B 10            [ 1]   71 	push	#0x10
      009E1F 4B 00            [ 1]   72 	push	#0x00
      009E21 4B 01            [ 1]   73 	push	#0x01
      009E23 4B 00            [ 1]   74 	push	#0x00
      009E25 4B EE            [ 1]   75 	push	#0xee
      009E27 4B 00            [ 1]   76 	push	#0x00
      009E29 4B A0            [ 1]   77 	push	#0xa0
      009E2B 4B 86            [ 1]   78 	push	#0x86
      009E2D 4B 01            [ 1]   79 	push	#0x01
      009E2F 4B 00            [ 1]   80 	push	#0x00
      009E31 CD 8A A5         [ 4]   81 	call	_I2C_Init
                                     82 ;	src/i2c.c: 13: I2C_Cmd(ENABLE);
      009E34 A6 01            [ 1]   83 	ld	a, #0x01
                                     84 ;	src/i2c.c: 14: }
      009E36 CC 8C 69         [ 2]   85 	jp	_I2C_Cmd
                                     86 ;	src/i2c.c: 16: void I2C_Send_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
                                     87 ;	-----------------------------------------
                                     88 ;	 function I2C_Send_Bytes
                                     89 ;	-----------------------------------------
      009E39                         90 _I2C_Send_Bytes:
      009E39 52 0F            [ 2]   91 	sub	sp, #15
      009E3B 6B 07            [ 1]   92 	ld	(0x07, sp), a
      009E3D 1F 05            [ 2]   93 	ldw	(0x05, sp), x
                                     94 ;	src/i2c.c: 18: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      009E3F AE 03 E8         [ 2]   95 	ldw	x, #0x03e8
      009E42 1F 0E            [ 2]   96 	ldw	(0x0e, sp), x
      009E44 5F               [ 1]   97 	clrw	x
      009E45 1F 0C            [ 2]   98 	ldw	(0x0c, sp), x
      009E47                         99 00102$:
      009E47 AE 03 02         [ 2]  100 	ldw	x, #0x0302
      009E4A CD 8F 68         [ 4]  101 	call	_I2C_GetFlagStatus
      009E4D 4D               [ 1]  102 	tnz	a
      009E4E 27 1E            [ 1]  103 	jreq	00104$
      009E50 16 0E            [ 2]  104 	ldw	y, (0x0e, sp)
      009E52 17 0A            [ 2]  105 	ldw	(0x0a, sp), y
      009E54 16 0C            [ 2]  106 	ldw	y, (0x0c, sp)
      009E56 17 08            [ 2]  107 	ldw	(0x08, sp), y
      009E58 1E 0E            [ 2]  108 	ldw	x, (0x0e, sp)
      009E5A 1D 00 01         [ 2]  109 	subw	x, #0x0001
      009E5D 1F 0E            [ 2]  110 	ldw	(0x0e, sp), x
      009E5F 1E 0C            [ 2]  111 	ldw	x, (0x0c, sp)
      009E61 24 01            [ 1]  112 	jrnc	00208$
      009E63 5A               [ 2]  113 	decw	x
      009E64                        114 00208$:
      009E64 1F 0C            [ 2]  115 	ldw	(0x0c, sp), x
      009E66 1E 0A            [ 2]  116 	ldw	x, (0x0a, sp)
      009E68 26 DD            [ 1]  117 	jrne	00102$
      009E6A 1E 08            [ 2]  118 	ldw	x, (0x08, sp)
      009E6C 26 D9            [ 1]  119 	jrne	00102$
      009E6E                        120 00104$:
                                    121 ;	src/i2c.c: 19: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      009E6E A6 01            [ 1]  122 	ld	a, #0x01
      009E70 CD 8C BF         [ 4]  123 	call	_I2C_GenerateSTART
                                    124 ;	src/i2c.c: 21: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      009E73 AE 03 E8         [ 2]  125 	ldw	x, #0x03e8
      009E76 1F 0E            [ 2]  126 	ldw	(0x0e, sp), x
      009E78 5F               [ 1]  127 	clrw	x
      009E79                        128 00106$:
      009E79 89               [ 2]  129 	pushw	x
      009E7A AE 03 01         [ 2]  130 	ldw	x, #0x0301
      009E7D CD 8E 91         [ 4]  131 	call	_I2C_CheckEvent
      009E80 85               [ 2]  132 	popw	x
      009E81 4D               [ 1]  133 	tnz	a
      009E82 26 19            [ 1]  134 	jrne	00108$
      009E84 1F 08            [ 2]  135 	ldw	(0x08, sp), x
      009E86 16 0E            [ 2]  136 	ldw	y, (0x0e, sp)
      009E88 17 0A            [ 2]  137 	ldw	(0x0a, sp), y
      009E8A 16 0E            [ 2]  138 	ldw	y, (0x0e, sp)
      009E8C 72 A2 00 01      [ 2]  139 	subw	y, #0x0001
      009E90 17 0E            [ 2]  140 	ldw	(0x0e, sp), y
      009E92 24 01            [ 1]  141 	jrnc	00212$
      009E94 5A               [ 2]  142 	decw	x
      009E95                        143 00212$:
      009E95 16 0A            [ 2]  144 	ldw	y, (0x0a, sp)
      009E97 26 E0            [ 1]  145 	jrne	00106$
      009E99 16 08            [ 2]  146 	ldw	y, (0x08, sp)
      009E9B 26 DC            [ 1]  147 	jrne	00106$
      009E9D                        148 00108$:
                                    149 ;	src/i2c.c: 22: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_TX);//Отсылаем адрес вызываемого устройства.
      009E9D 4B 00            [ 1]  150 	push	#0x00
      009E9F 7B 08            [ 1]  151 	ld	a, (0x08, sp)
      009EA1 CD 8E 59         [ 4]  152 	call	_I2C_Send7bitAddress
                                    153 ;	src/i2c.c: 24: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      009EA4 AE 03 E8         [ 2]  154 	ldw	x, #0x03e8
      009EA7 1F 0E            [ 2]  155 	ldw	(0x0e, sp), x
      009EA9 5F               [ 1]  156 	clrw	x
      009EAA                        157 00110$:
      009EAA 89               [ 2]  158 	pushw	x
      009EAB AE 01 02         [ 2]  159 	ldw	x, #0x0102
      009EAE CD 8F 68         [ 4]  160 	call	_I2C_GetFlagStatus
      009EB1 85               [ 2]  161 	popw	x
      009EB2 4D               [ 1]  162 	tnz	a
      009EB3 26 19            [ 1]  163 	jrne	00112$
      009EB5 1F 08            [ 2]  164 	ldw	(0x08, sp), x
      009EB7 16 0E            [ 2]  165 	ldw	y, (0x0e, sp)
      009EB9 17 0A            [ 2]  166 	ldw	(0x0a, sp), y
      009EBB 16 0E            [ 2]  167 	ldw	y, (0x0e, sp)
      009EBD 72 A2 00 01      [ 2]  168 	subw	y, #0x0001
      009EC1 17 0E            [ 2]  169 	ldw	(0x0e, sp), y
      009EC3 24 01            [ 1]  170 	jrnc	00216$
      009EC5 5A               [ 2]  171 	decw	x
      009EC6                        172 00216$:
      009EC6 16 0A            [ 2]  173 	ldw	y, (0x0a, sp)
      009EC8 26 E0            [ 1]  174 	jrne	00110$
      009ECA 16 08            [ 2]  175 	ldw	y, (0x08, sp)
      009ECC 26 DC            [ 1]  176 	jrne	00110$
      009ECE                        177 00112$:
                                    178 ;	src/i2c.c: 25: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      009ECE C6 52 17         [ 1]  179 	ld	a, 0x5217
      009ED1 C6 52 19         [ 1]  180 	ld	a, 0x5219
                                    181 ;	src/i2c.c: 26: while(countData) {//Повторяем пока не отправятся все данные.
      009ED4 16 12            [ 2]  182 	ldw	y, (0x12, sp)
      009ED6 17 08            [ 2]  183 	ldw	(0x08, sp), y
      009ED8 16 05            [ 2]  184 	ldw	y, (0x05, sp)
      009EDA 17 0A            [ 2]  185 	ldw	(0x0a, sp), y
      009EDC                        186 00117$:
      009EDC 1E 0A            [ 2]  187 	ldw	x, (0x0a, sp)
      009EDE 27 36            [ 1]  188 	jreq	00119$
                                    189 ;	src/i2c.c: 28: while(!(I2C->SR1 & 128) && (time_out--));//Ждём когда буфер передающего регистра будет пуст.
      009EE0 AE 03 E8         [ 2]  190 	ldw	x, #0x03e8
      009EE3 1F 0E            [ 2]  191 	ldw	(0x0e, sp), x
      009EE5 5F               [ 1]  192 	clrw	x
      009EE6                        193 00114$:
      009EE6 C6 52 17         [ 1]  194 	ld	a, 0x5217
      009EE9 2B 19            [ 1]  195 	jrmi	00116$
      009EEB 1F 01            [ 2]  196 	ldw	(0x01, sp), x
      009EED 16 0E            [ 2]  197 	ldw	y, (0x0e, sp)
      009EEF 17 03            [ 2]  198 	ldw	(0x03, sp), y
      009EF1 16 0E            [ 2]  199 	ldw	y, (0x0e, sp)
      009EF3 72 A2 00 01      [ 2]  200 	subw	y, #0x0001
      009EF7 17 0E            [ 2]  201 	ldw	(0x0e, sp), y
      009EF9 24 01            [ 1]  202 	jrnc	00221$
      009EFB 5A               [ 2]  203 	decw	x
      009EFC                        204 00221$:
      009EFC 16 03            [ 2]  205 	ldw	y, (0x03, sp)
      009EFE 26 E6            [ 1]  206 	jrne	00114$
      009F00 16 01            [ 2]  207 	ldw	y, (0x01, sp)
      009F02 26 E2            [ 1]  208 	jrne	00114$
      009F04                        209 00116$:
                                    210 ;	src/i2c.c: 29: I2C_SendData(*dataBuffer);
      009F04 1E 08            [ 2]  211 	ldw	x, (0x08, sp)
      009F06 F6               [ 1]  212 	ld	a, (x)
      009F07 CD 8E 8D         [ 4]  213 	call	_I2C_SendData
                                    214 ;	src/i2c.c: 30: *dataBuffer++;
      009F0A 1E 08            [ 2]  215 	ldw	x, (0x08, sp)
      009F0C 5C               [ 1]  216 	incw	x
      009F0D 1F 08            [ 2]  217 	ldw	(0x08, sp), x
                                    218 ;	src/i2c.c: 31: countData--;
      009F0F 1E 0A            [ 2]  219 	ldw	x, (0x0a, sp)
      009F11 5A               [ 2]  220 	decw	x
      009F12 1F 0A            [ 2]  221 	ldw	(0x0a, sp), x
      009F14 20 C6            [ 2]  222 	jra	00117$
      009F16                        223 00119$:
                                    224 ;	src/i2c.c: 34: while((!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED)) && (time_out--));//Ждём окончания отправки данных.
      009F16 AE 03 E8         [ 2]  225 	ldw	x, #0x03e8
      009F19 1F 0E            [ 2]  226 	ldw	(0x0e, sp), x
      009F1B 5F               [ 1]  227 	clrw	x
      009F1C                        228 00121$:
      009F1C 89               [ 2]  229 	pushw	x
      009F1D AE 07 84         [ 2]  230 	ldw	x, #0x0784
      009F20 CD 8E 91         [ 4]  231 	call	_I2C_CheckEvent
      009F23 85               [ 2]  232 	popw	x
      009F24 4D               [ 1]  233 	tnz	a
      009F25 26 19            [ 1]  234 	jrne	00123$
      009F27 1F 08            [ 2]  235 	ldw	(0x08, sp), x
      009F29 16 0E            [ 2]  236 	ldw	y, (0x0e, sp)
      009F2B 17 0A            [ 2]  237 	ldw	(0x0a, sp), y
      009F2D 16 0E            [ 2]  238 	ldw	y, (0x0e, sp)
      009F2F 72 A2 00 01      [ 2]  239 	subw	y, #0x0001
      009F33 17 0E            [ 2]  240 	ldw	(0x0e, sp), y
      009F35 24 01            [ 1]  241 	jrnc	00226$
      009F37 5A               [ 2]  242 	decw	x
      009F38                        243 00226$:
      009F38 16 0A            [ 2]  244 	ldw	y, (0x0a, sp)
      009F3A 26 E0            [ 1]  245 	jrne	00121$
      009F3C 16 08            [ 2]  246 	ldw	y, (0x08, sp)
      009F3E 26 DC            [ 1]  247 	jrne	00121$
      009F40                        248 00123$:
                                    249 ;	src/i2c.c: 35: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      009F40 A6 01            [ 1]  250 	ld	a, #0x01
      009F42 CD 8C EA         [ 4]  251 	call	_I2C_GenerateSTOP
                                    252 ;	src/i2c.c: 37: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
      009F45 AE 03 E8         [ 2]  253 	ldw	x, #0x03e8
      009F48 1F 0E            [ 2]  254 	ldw	(0x0e, sp), x
      009F4A 5F               [ 1]  255 	clrw	x
      009F4B                        256 00125$:
      009F4B C6 52 11         [ 1]  257 	ld	a, 0x5211
      009F4E A5 02            [ 1]  258 	bcp	a, #0x02
      009F50 27 20            [ 1]  259 	jreq	00128$
      009F52 1F 08            [ 2]  260 	ldw	(0x08, sp), x
      009F54 7B 0E            [ 1]  261 	ld	a, (0x0e, sp)
      009F56 88               [ 1]  262 	push	a
      009F57 7B 10            [ 1]  263 	ld	a, (0x10, sp)
      009F59 6B 0C            [ 1]  264 	ld	(0x0c, sp), a
      009F5B 84               [ 1]  265 	pop	a
      009F5C 16 0E            [ 2]  266 	ldw	y, (0x0e, sp)
      009F5E 72 A2 00 01      [ 2]  267 	subw	y, #0x0001
      009F62 17 0E            [ 2]  268 	ldw	(0x0e, sp), y
      009F64 24 01            [ 1]  269 	jrnc	00230$
      009F66 5A               [ 2]  270 	decw	x
      009F67                        271 00230$:
      009F67 0D 0B            [ 1]  272 	tnz	(0x0b, sp)
      009F69 26 E0            [ 1]  273 	jrne	00125$
      009F6B 4D               [ 1]  274 	tnz	a
      009F6C 26 DD            [ 1]  275 	jrne	00125$
      009F6E 16 08            [ 2]  276 	ldw	y, (0x08, sp)
      009F70 26 D9            [ 1]  277 	jrne	00125$
      009F72                        278 00128$:
                                    279 ;	src/i2c.c: 38: }
      009F72 1E 10            [ 2]  280 	ldw	x, (16, sp)
      009F74 5B 13            [ 2]  281 	addw	sp, #19
      009F76 FC               [ 2]  282 	jp	(x)
                                    283 ;	src/i2c.c: 40: uint8_t I2C_Read_Byte(uint8_t Addr) {
                                    284 ;	-----------------------------------------
                                    285 ;	 function I2C_Read_Byte
                                    286 ;	-----------------------------------------
      009F77                        287 _I2C_Read_Byte:
      009F77 52 0A            [ 2]  288 	sub	sp, #10
      009F79 6B 06            [ 1]  289 	ld	(0x06, sp), a
                                    290 ;	src/i2c.c: 42: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      009F7B AE 03 E8         [ 2]  291 	ldw	x, #0x03e8
      009F7E 1F 09            [ 2]  292 	ldw	(0x09, sp), x
      009F80 5F               [ 1]  293 	clrw	x
      009F81 1F 07            [ 2]  294 	ldw	(0x07, sp), x
      009F83                        295 00102$:
      009F83 AE 03 02         [ 2]  296 	ldw	x, #0x0302
      009F86 CD 8F 68         [ 4]  297 	call	_I2C_GetFlagStatus
      009F89 4D               [ 1]  298 	tnz	a
      009F8A 27 1E            [ 1]  299 	jreq	00104$
      009F8C 16 09            [ 2]  300 	ldw	y, (0x09, sp)
      009F8E 17 04            [ 2]  301 	ldw	(0x04, sp), y
      009F90 16 07            [ 2]  302 	ldw	y, (0x07, sp)
      009F92 17 02            [ 2]  303 	ldw	(0x02, sp), y
      009F94 1E 09            [ 2]  304 	ldw	x, (0x09, sp)
      009F96 1D 00 01         [ 2]  305 	subw	x, #0x0001
      009F99 1F 09            [ 2]  306 	ldw	(0x09, sp), x
      009F9B 1E 07            [ 2]  307 	ldw	x, (0x07, sp)
      009F9D 24 01            [ 1]  308 	jrnc	00179$
      009F9F 5A               [ 2]  309 	decw	x
      009FA0                        310 00179$:
      009FA0 1F 07            [ 2]  311 	ldw	(0x07, sp), x
      009FA2 1E 04            [ 2]  312 	ldw	x, (0x04, sp)
      009FA4 26 DD            [ 1]  313 	jrne	00102$
      009FA6 1E 02            [ 2]  314 	ldw	x, (0x02, sp)
      009FA8 26 D9            [ 1]  315 	jrne	00102$
      009FAA                        316 00104$:
                                    317 ;	src/i2c.c: 43: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      009FAA A6 01            [ 1]  318 	ld	a, #0x01
      009FAC CD 8C BF         [ 4]  319 	call	_I2C_GenerateSTART
                                    320 ;	src/i2c.c: 45: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      009FAF AE 03 E8         [ 2]  321 	ldw	x, #0x03e8
      009FB2 1F 09            [ 2]  322 	ldw	(0x09, sp), x
      009FB4 5F               [ 1]  323 	clrw	x
      009FB5                        324 00106$:
      009FB5 89               [ 2]  325 	pushw	x
      009FB6 AE 03 01         [ 2]  326 	ldw	x, #0x0301
      009FB9 CD 8E 91         [ 4]  327 	call	_I2C_CheckEvent
      009FBC 85               [ 2]  328 	popw	x
      009FBD 4D               [ 1]  329 	tnz	a
      009FBE 26 19            [ 1]  330 	jrne	00108$
      009FC0 1F 02            [ 2]  331 	ldw	(0x02, sp), x
      009FC2 16 09            [ 2]  332 	ldw	y, (0x09, sp)
      009FC4 17 04            [ 2]  333 	ldw	(0x04, sp), y
      009FC6 16 09            [ 2]  334 	ldw	y, (0x09, sp)
      009FC8 72 A2 00 01      [ 2]  335 	subw	y, #0x0001
      009FCC 17 09            [ 2]  336 	ldw	(0x09, sp), y
      009FCE 24 01            [ 1]  337 	jrnc	00183$
      009FD0 5A               [ 2]  338 	decw	x
      009FD1                        339 00183$:
      009FD1 16 04            [ 2]  340 	ldw	y, (0x04, sp)
      009FD3 26 E0            [ 1]  341 	jrne	00106$
      009FD5 16 02            [ 2]  342 	ldw	y, (0x02, sp)
      009FD7 26 DC            [ 1]  343 	jrne	00106$
      009FD9                        344 00108$:
                                    345 ;	src/i2c.c: 46: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства и бит приёма данных.
      009FD9 4B 01            [ 1]  346 	push	#0x01
      009FDB 7B 07            [ 1]  347 	ld	a, (0x07, sp)
      009FDD CD 8E 59         [ 4]  348 	call	_I2C_Send7bitAddress
                                    349 ;	src/i2c.c: 48: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      009FE0 AE 03 E8         [ 2]  350 	ldw	x, #0x03e8
      009FE3 1F 09            [ 2]  351 	ldw	(0x09, sp), x
      009FE5 5F               [ 1]  352 	clrw	x
      009FE6                        353 00110$:
      009FE6 89               [ 2]  354 	pushw	x
      009FE7 AE 01 02         [ 2]  355 	ldw	x, #0x0102
      009FEA CD 8F 68         [ 4]  356 	call	_I2C_GetFlagStatus
      009FED 85               [ 2]  357 	popw	x
      009FEE 4D               [ 1]  358 	tnz	a
      009FEF 26 19            [ 1]  359 	jrne	00112$
      009FF1 1F 02            [ 2]  360 	ldw	(0x02, sp), x
      009FF3 16 09            [ 2]  361 	ldw	y, (0x09, sp)
      009FF5 17 04            [ 2]  362 	ldw	(0x04, sp), y
      009FF7 16 09            [ 2]  363 	ldw	y, (0x09, sp)
      009FF9 72 A2 00 01      [ 2]  364 	subw	y, #0x0001
      009FFD 17 09            [ 2]  365 	ldw	(0x09, sp), y
      009FFF 24 01            [ 1]  366 	jrnc	00187$
      00A001 5A               [ 2]  367 	decw	x
      00A002                        368 00187$:
      00A002 16 04            [ 2]  369 	ldw	y, (0x04, sp)
      00A004 26 E0            [ 1]  370 	jrne	00110$
      00A006 16 02            [ 2]  371 	ldw	y, (0x02, sp)
      00A008 26 DC            [ 1]  372 	jrne	00110$
      00A00A                        373 00112$:
                                    374 ;	src/i2c.c: 51: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
      00A00A 4F               [ 1]  375 	clr	a
      00A00B CD 8D 6B         [ 4]  376 	call	_I2C_AcknowledgeConfig
                                    377 ;	src/i2c.c: 53: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A00E C6 52 17         [ 1]  378 	ld	a, 0x5217
      00A011 C6 52 19         [ 1]  379 	ld	a, 0x5219
                                    380 ;	src/i2c.c: 55: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A014 A6 01            [ 1]  381 	ld	a, #0x01
      00A016 CD 8C EA         [ 4]  382 	call	_I2C_GenerateSTOP
                                    383 ;	src/i2c.c: 58: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
      00A019 AE 03 E8         [ 2]  384 	ldw	x, #0x03e8
      00A01C 1F 09            [ 2]  385 	ldw	(0x09, sp), x
      00A01E 5F               [ 1]  386 	clrw	x
      00A01F                        387 00114$:
      00A01F 89               [ 2]  388 	pushw	x
      00A020 AE 01 40         [ 2]  389 	ldw	x, #0x0140
      00A023 CD 8F 68         [ 4]  390 	call	_I2C_GetFlagStatus
      00A026 85               [ 2]  391 	popw	x
      00A027 4D               [ 1]  392 	tnz	a
      00A028 26 19            [ 1]  393 	jrne	00116$
      00A02A 1F 02            [ 2]  394 	ldw	(0x02, sp), x
      00A02C 16 09            [ 2]  395 	ldw	y, (0x09, sp)
      00A02E 17 04            [ 2]  396 	ldw	(0x04, sp), y
      00A030 16 09            [ 2]  397 	ldw	y, (0x09, sp)
      00A032 72 A2 00 01      [ 2]  398 	subw	y, #0x0001
      00A036 17 09            [ 2]  399 	ldw	(0x09, sp), y
      00A038 24 01            [ 1]  400 	jrnc	00191$
      00A03A 5A               [ 2]  401 	decw	x
      00A03B                        402 00191$:
      00A03B 16 04            [ 2]  403 	ldw	y, (0x04, sp)
      00A03D 26 E0            [ 1]  404 	jrne	00114$
      00A03F 16 02            [ 2]  405 	ldw	y, (0x02, sp)
      00A041 26 DC            [ 1]  406 	jrne	00114$
      00A043                        407 00116$:
                                    408 ;	src/i2c.c: 60: uint8_t read_byte = I2C_ReceiveData();//Читаем данные.
      00A043 CD 8E 55         [ 4]  409 	call	_I2C_ReceiveData
      00A046 6B 01            [ 1]  410 	ld	(0x01, sp), a
                                    411 ;	src/i2c.c: 63: while((I2C->CR2 & I2C_CR2_STOP)&& (time_out--));//Ждём остановки передачи и STOP на линии.
      00A048 AE 03 E8         [ 2]  412 	ldw	x, #0x03e8
      00A04B 1F 09            [ 2]  413 	ldw	(0x09, sp), x
      00A04D 5F               [ 1]  414 	clrw	x
      00A04E                        415 00118$:
      00A04E 72 03 52 11 19   [ 2]  416 	btjf	0x5211, #1, 00120$
      00A053 1F 02            [ 2]  417 	ldw	(0x02, sp), x
      00A055 16 09            [ 2]  418 	ldw	y, (0x09, sp)
      00A057 17 04            [ 2]  419 	ldw	(0x04, sp), y
      00A059 16 09            [ 2]  420 	ldw	y, (0x09, sp)
      00A05B 72 A2 00 01      [ 2]  421 	subw	y, #0x0001
      00A05F 17 09            [ 2]  422 	ldw	(0x09, sp), y
      00A061 24 01            [ 1]  423 	jrnc	00195$
      00A063 5A               [ 2]  424 	decw	x
      00A064                        425 00195$:
      00A064 16 04            [ 2]  426 	ldw	y, (0x04, sp)
      00A066 26 E6            [ 1]  427 	jrne	00118$
      00A068 16 02            [ 2]  428 	ldw	y, (0x02, sp)
      00A06A 26 E2            [ 1]  429 	jrne	00118$
      00A06C                        430 00120$:
                                    431 ;	src/i2c.c: 64: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
      00A06C A6 01            [ 1]  432 	ld	a, #0x01
      00A06E CD 8D 6B         [ 4]  433 	call	_I2C_AcknowledgeConfig
                                    434 ;	src/i2c.c: 65: return read_byte;
      00A071 7B 01            [ 1]  435 	ld	a, (0x01, sp)
                                    436 ;	src/i2c.c: 66: }
      00A073 5B 0A            [ 2]  437 	addw	sp, #10
      00A075 81               [ 4]  438 	ret
                                    439 ;	src/i2c.c: 69: void I2C_Read_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
                                    440 ;	-----------------------------------------
                                    441 ;	 function I2C_Read_Bytes
                                    442 ;	-----------------------------------------
      00A076                        443 _I2C_Read_Bytes:
      00A076 52 0F            [ 2]  444 	sub	sp, #15
      00A078 6B 07            [ 1]  445 	ld	(0x07, sp), a
      00A07A 1F 05            [ 2]  446 	ldw	(0x05, sp), x
                                    447 ;	src/i2c.c: 71: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A07C AE 03 E8         [ 2]  448 	ldw	x, #0x03e8
      00A07F 1F 0E            [ 2]  449 	ldw	(0x0e, sp), x
      00A081 5F               [ 1]  450 	clrw	x
      00A082 1F 0C            [ 2]  451 	ldw	(0x0c, sp), x
      00A084                        452 00102$:
      00A084 AE 03 02         [ 2]  453 	ldw	x, #0x0302
      00A087 CD 8F 68         [ 4]  454 	call	_I2C_GetFlagStatus
      00A08A 4D               [ 1]  455 	tnz	a
      00A08B 27 1E            [ 1]  456 	jreq	00104$
      00A08D 16 0E            [ 2]  457 	ldw	y, (0x0e, sp)
      00A08F 17 0A            [ 2]  458 	ldw	(0x0a, sp), y
      00A091 16 0C            [ 2]  459 	ldw	y, (0x0c, sp)
      00A093 17 08            [ 2]  460 	ldw	(0x08, sp), y
      00A095 1E 0E            [ 2]  461 	ldw	x, (0x0e, sp)
      00A097 1D 00 01         [ 2]  462 	subw	x, #0x0001
      00A09A 1F 0E            [ 2]  463 	ldw	(0x0e, sp), x
      00A09C 1E 0C            [ 2]  464 	ldw	x, (0x0c, sp)
      00A09E 24 01            [ 1]  465 	jrnc	00229$
      00A0A0 5A               [ 2]  466 	decw	x
      00A0A1                        467 00229$:
      00A0A1 1F 0C            [ 2]  468 	ldw	(0x0c, sp), x
      00A0A3 1E 0A            [ 2]  469 	ldw	x, (0x0a, sp)
      00A0A5 26 DD            [ 1]  470 	jrne	00102$
      00A0A7 1E 08            [ 2]  471 	ldw	x, (0x08, sp)
      00A0A9 26 D9            [ 1]  472 	jrne	00102$
      00A0AB                        473 00104$:
                                    474 ;	src/i2c.c: 72: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A0AB A6 01            [ 1]  475 	ld	a, #0x01
      00A0AD CD 8C BF         [ 4]  476 	call	_I2C_GenerateSTART
                                    477 ;	src/i2c.c: 74: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A0B0 AE 03 E8         [ 2]  478 	ldw	x, #0x03e8
      00A0B3 1F 0E            [ 2]  479 	ldw	(0x0e, sp), x
      00A0B5 5F               [ 1]  480 	clrw	x
      00A0B6                        481 00106$:
      00A0B6 89               [ 2]  482 	pushw	x
      00A0B7 AE 03 01         [ 2]  483 	ldw	x, #0x0301
      00A0BA CD 8E 91         [ 4]  484 	call	_I2C_CheckEvent
      00A0BD 85               [ 2]  485 	popw	x
      00A0BE 4D               [ 1]  486 	tnz	a
      00A0BF 26 19            [ 1]  487 	jrne	00108$
      00A0C1 1F 08            [ 2]  488 	ldw	(0x08, sp), x
      00A0C3 16 0E            [ 2]  489 	ldw	y, (0x0e, sp)
      00A0C5 17 0A            [ 2]  490 	ldw	(0x0a, sp), y
      00A0C7 16 0E            [ 2]  491 	ldw	y, (0x0e, sp)
      00A0C9 72 A2 00 01      [ 2]  492 	subw	y, #0x0001
      00A0CD 17 0E            [ 2]  493 	ldw	(0x0e, sp), y
      00A0CF 24 01            [ 1]  494 	jrnc	00233$
      00A0D1 5A               [ 2]  495 	decw	x
      00A0D2                        496 00233$:
      00A0D2 16 0A            [ 2]  497 	ldw	y, (0x0a, sp)
      00A0D4 26 E0            [ 1]  498 	jrne	00106$
      00A0D6 16 08            [ 2]  499 	ldw	y, (0x08, sp)
      00A0D8 26 DC            [ 1]  500 	jrne	00106$
      00A0DA                        501 00108$:
                                    502 ;	src/i2c.c: 75: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства.
      00A0DA 4B 01            [ 1]  503 	push	#0x01
      00A0DC 7B 08            [ 1]  504 	ld	a, (0x08, sp)
      00A0DE CD 8E 59         [ 4]  505 	call	_I2C_Send7bitAddress
                                    506 ;	src/i2c.c: 77: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A0E1 AE 03 E8         [ 2]  507 	ldw	x, #0x03e8
      00A0E4 1F 0E            [ 2]  508 	ldw	(0x0e, sp), x
      00A0E6 5F               [ 1]  509 	clrw	x
      00A0E7                        510 00110$:
      00A0E7 89               [ 2]  511 	pushw	x
      00A0E8 AE 01 02         [ 2]  512 	ldw	x, #0x0102
      00A0EB CD 8F 68         [ 4]  513 	call	_I2C_GetFlagStatus
      00A0EE 85               [ 2]  514 	popw	x
      00A0EF 4D               [ 1]  515 	tnz	a
      00A0F0 26 19            [ 1]  516 	jrne	00112$
      00A0F2 1F 08            [ 2]  517 	ldw	(0x08, sp), x
      00A0F4 16 0E            [ 2]  518 	ldw	y, (0x0e, sp)
      00A0F6 17 0A            [ 2]  519 	ldw	(0x0a, sp), y
      00A0F8 16 0E            [ 2]  520 	ldw	y, (0x0e, sp)
      00A0FA 72 A2 00 01      [ 2]  521 	subw	y, #0x0001
      00A0FE 17 0E            [ 2]  522 	ldw	(0x0e, sp), y
      00A100 24 01            [ 1]  523 	jrnc	00237$
      00A102 5A               [ 2]  524 	decw	x
      00A103                        525 00237$:
      00A103 16 0A            [ 2]  526 	ldw	y, (0x0a, sp)
      00A105 26 E0            [ 1]  527 	jrne	00110$
      00A107 16 08            [ 2]  528 	ldw	y, (0x08, sp)
      00A109 26 DC            [ 1]  529 	jrne	00110$
      00A10B                        530 00112$:
                                    531 ;	src/i2c.c: 79: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A10B C6 52 17         [ 1]  532 	ld	a, 0x5217
      00A10E C6 52 19         [ 1]  533 	ld	a, 0x5219
                                    534 ;	src/i2c.c: 80: if(countData > 3) {//Если принимаем больше трёх байтов.
      00A111 1E 05            [ 2]  535 	ldw	x, (0x05, sp)
      00A113 A3 00 03         [ 2]  536 	cpw	x, #0x0003
      00A116 23 55            [ 2]  537 	jrule	00147$
                                    538 ;	src/i2c.c: 81: while(countData > 3) {
      00A118 16 12            [ 2]  539 	ldw	y, (0x12, sp)
      00A11A 17 08            [ 2]  540 	ldw	(0x08, sp), y
      00A11C 16 05            [ 2]  541 	ldw	y, (0x05, sp)
      00A11E 17 0A            [ 2]  542 	ldw	(0x0a, sp), y
      00A120                        543 00117$:
      00A120 1E 0A            [ 2]  544 	ldw	x, (0x0a, sp)
      00A122 A3 00 03         [ 2]  545 	cpw	x, #0x0003
      00A125 23 42            [ 2]  546 	jrule	00159$
                                    547 ;	src/i2c.c: 83: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
      00A127 AE 03 E8         [ 2]  548 	ldw	x, #0x03e8
      00A12A 1F 0E            [ 2]  549 	ldw	(0x0e, sp), x
      00A12C 5F               [ 1]  550 	clrw	x
      00A12D 1F 0C            [ 2]  551 	ldw	(0x0c, sp), x
      00A12F                        552 00114$:
      00A12F AE 01 04         [ 2]  553 	ldw	x, #0x0104
      00A132 CD 8F 68         [ 4]  554 	call	_I2C_GetFlagStatus
      00A135 6B 04            [ 1]  555 	ld	(0x04, sp), a
      00A137 26 1E            [ 1]  556 	jrne	00116$
      00A139 16 0E            [ 2]  557 	ldw	y, (0x0e, sp)
      00A13B 17 03            [ 2]  558 	ldw	(0x03, sp), y
      00A13D 16 0C            [ 2]  559 	ldw	y, (0x0c, sp)
      00A13F 17 01            [ 2]  560 	ldw	(0x01, sp), y
      00A141 1E 0E            [ 2]  561 	ldw	x, (0x0e, sp)
      00A143 1D 00 01         [ 2]  562 	subw	x, #0x0001
      00A146 1F 0E            [ 2]  563 	ldw	(0x0e, sp), x
      00A148 1E 0C            [ 2]  564 	ldw	x, (0x0c, sp)
      00A14A 24 01            [ 1]  565 	jrnc	00243$
      00A14C 5A               [ 2]  566 	decw	x
      00A14D                        567 00243$:
      00A14D 1F 0C            [ 2]  568 	ldw	(0x0c, sp), x
      00A14F 1E 03            [ 2]  569 	ldw	x, (0x03, sp)
      00A151 26 DC            [ 1]  570 	jrne	00114$
      00A153 1E 01            [ 2]  571 	ldw	x, (0x01, sp)
      00A155 26 D8            [ 1]  572 	jrne	00114$
      00A157                        573 00116$:
                                    574 ;	src/i2c.c: 84: *dataBuffer = I2C_ReceiveData();
      00A157 CD 8E 55         [ 4]  575 	call	_I2C_ReceiveData
      00A15A 1E 08            [ 2]  576 	ldw	x, (0x08, sp)
      00A15C F7               [ 1]  577 	ld	(x), a
                                    578 ;	src/i2c.c: 85: *dataBuffer++;
      00A15D 1E 08            [ 2]  579 	ldw	x, (0x08, sp)
      00A15F 5C               [ 1]  580 	incw	x
      00A160 1F 08            [ 2]  581 	ldw	(0x08, sp), x
                                    582 ;	src/i2c.c: 86: countData--;
      00A162 1E 0A            [ 2]  583 	ldw	x, (0x0a, sp)
      00A164 5A               [ 2]  584 	decw	x
      00A165 1F 0A            [ 2]  585 	ldw	(0x0a, sp), x
      00A167 20 B7            [ 2]  586 	jra	00117$
      00A169                        587 00159$:
      00A169 16 08            [ 2]  588 	ldw	y, (0x08, sp)
      00A16B 17 12            [ 2]  589 	ldw	(0x12, sp), y
                                    590 ;	src/i2c.c: 90: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
      00A16D                        591 00147$:
      00A16D AE 03 E8         [ 2]  592 	ldw	x, #0x03e8
      00A170 1F 0E            [ 2]  593 	ldw	(0x0e, sp), x
      00A172 5F               [ 1]  594 	clrw	x
      00A173                        595 00123$:
      00A173 89               [ 2]  596 	pushw	x
      00A174 AE 01 04         [ 2]  597 	ldw	x, #0x0104
      00A177 CD 8F 68         [ 4]  598 	call	_I2C_GetFlagStatus
      00A17A 85               [ 2]  599 	popw	x
      00A17B 4D               [ 1]  600 	tnz	a
      00A17C 26 19            [ 1]  601 	jrne	00125$
      00A17E 1F 08            [ 2]  602 	ldw	(0x08, sp), x
      00A180 16 0E            [ 2]  603 	ldw	y, (0x0e, sp)
      00A182 17 0A            [ 2]  604 	ldw	(0x0a, sp), y
      00A184 16 0E            [ 2]  605 	ldw	y, (0x0e, sp)
      00A186 72 A2 00 01      [ 2]  606 	subw	y, #0x0001
      00A18A 17 0E            [ 2]  607 	ldw	(0x0e, sp), y
      00A18C 24 01            [ 1]  608 	jrnc	00248$
      00A18E 5A               [ 2]  609 	decw	x
      00A18F                        610 00248$:
      00A18F 16 0A            [ 2]  611 	ldw	y, (0x0a, sp)
      00A191 26 E0            [ 1]  612 	jrne	00123$
      00A193 16 08            [ 2]  613 	ldw	y, (0x08, sp)
      00A195 26 DC            [ 1]  614 	jrne	00123$
      00A197                        615 00125$:
                                    616 ;	src/i2c.c: 91: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
      00A197 4F               [ 1]  617 	clr	a
      00A198 CD 8D 6B         [ 4]  618 	call	_I2C_AcknowledgeConfig
                                    619 ;	src/i2c.c: 92: *dataBuffer = I2C_ReceiveData();
      00A19B 1E 12            [ 2]  620 	ldw	x, (0x12, sp)
      00A19D 89               [ 2]  621 	pushw	x
      00A19E CD 8E 55         [ 4]  622 	call	_I2C_ReceiveData
      00A1A1 85               [ 2]  623 	popw	x
      00A1A2 F7               [ 1]  624 	ld	(x), a
                                    625 ;	src/i2c.c: 93: *dataBuffer++;
      00A1A3 5C               [ 1]  626 	incw	x
      00A1A4 1F 12            [ 2]  627 	ldw	(0x12, sp), x
                                    628 ;	src/i2c.c: 94: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A1A6 A6 01            [ 1]  629 	ld	a, #0x01
      00A1A8 CD 8C EA         [ 4]  630 	call	_I2C_GenerateSTOP
                                    631 ;	src/i2c.c: 95: *dataBuffer = I2C_ReceiveData();
      00A1AB 1E 12            [ 2]  632 	ldw	x, (0x12, sp)
      00A1AD 89               [ 2]  633 	pushw	x
      00A1AE CD 8E 55         [ 4]  634 	call	_I2C_ReceiveData
      00A1B1 85               [ 2]  635 	popw	x
      00A1B2 F7               [ 1]  636 	ld	(x), a
                                    637 ;	src/i2c.c: 96: *dataBuffer++;
      00A1B3 5C               [ 1]  638 	incw	x
      00A1B4 1F 12            [ 2]  639 	ldw	(0x12, sp), x
                                    640 ;	src/i2c.c: 98: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
      00A1B6 AE 03 E8         [ 2]  641 	ldw	x, #0x03e8
      00A1B9 1F 0E            [ 2]  642 	ldw	(0x0e, sp), x
      00A1BB 5F               [ 1]  643 	clrw	x
      00A1BC                        644 00127$:
      00A1BC 89               [ 2]  645 	pushw	x
      00A1BD AE 01 40         [ 2]  646 	ldw	x, #0x0140
      00A1C0 CD 8F 68         [ 4]  647 	call	_I2C_GetFlagStatus
      00A1C3 85               [ 2]  648 	popw	x
      00A1C4 4D               [ 1]  649 	tnz	a
      00A1C5 26 19            [ 1]  650 	jrne	00129$
      00A1C7 1F 08            [ 2]  651 	ldw	(0x08, sp), x
      00A1C9 16 0E            [ 2]  652 	ldw	y, (0x0e, sp)
      00A1CB 17 0A            [ 2]  653 	ldw	(0x0a, sp), y
      00A1CD 16 0E            [ 2]  654 	ldw	y, (0x0e, sp)
      00A1CF 72 A2 00 01      [ 2]  655 	subw	y, #0x0001
      00A1D3 17 0E            [ 2]  656 	ldw	(0x0e, sp), y
      00A1D5 24 01            [ 1]  657 	jrnc	00252$
      00A1D7 5A               [ 2]  658 	decw	x
      00A1D8                        659 00252$:
      00A1D8 16 0A            [ 2]  660 	ldw	y, (0x0a, sp)
      00A1DA 26 E0            [ 1]  661 	jrne	00127$
      00A1DC 16 08            [ 2]  662 	ldw	y, (0x08, sp)
      00A1DE 26 DC            [ 1]  663 	jrne	00127$
      00A1E0                        664 00129$:
                                    665 ;	src/i2c.c: 99: *dataBuffer = I2C_ReceiveData();
      00A1E0 1E 12            [ 2]  666 	ldw	x, (0x12, sp)
      00A1E2 89               [ 2]  667 	pushw	x
      00A1E3 CD 8E 55         [ 4]  668 	call	_I2C_ReceiveData
      00A1E6 85               [ 2]  669 	popw	x
      00A1E7 F7               [ 1]  670 	ld	(x), a
                                    671 ;	src/i2c.c: 101: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
      00A1E8 AE 03 E8         [ 2]  672 	ldw	x, #0x03e8
      00A1EB 1F 0E            [ 2]  673 	ldw	(0x0e, sp), x
      00A1ED 5F               [ 1]  674 	clrw	x
      00A1EE                        675 00131$:
      00A1EE 72 03 52 11 20   [ 2]  676 	btjf	0x5211, #1, 00133$
      00A1F3 1F 08            [ 2]  677 	ldw	(0x08, sp), x
      00A1F5 7B 0E            [ 1]  678 	ld	a, (0x0e, sp)
      00A1F7 88               [ 1]  679 	push	a
      00A1F8 7B 10            [ 1]  680 	ld	a, (0x10, sp)
      00A1FA 6B 0C            [ 1]  681 	ld	(0x0c, sp), a
      00A1FC 84               [ 1]  682 	pop	a
      00A1FD 16 0E            [ 2]  683 	ldw	y, (0x0e, sp)
      00A1FF 72 A2 00 01      [ 2]  684 	subw	y, #0x0001
      00A203 17 0E            [ 2]  685 	ldw	(0x0e, sp), y
      00A205 24 01            [ 1]  686 	jrnc	00256$
      00A207 5A               [ 2]  687 	decw	x
      00A208                        688 00256$:
      00A208 0D 0B            [ 1]  689 	tnz	(0x0b, sp)
      00A20A 26 E2            [ 1]  690 	jrne	00131$
      00A20C 4D               [ 1]  691 	tnz	a
      00A20D 26 DF            [ 1]  692 	jrne	00131$
      00A20F 16 08            [ 2]  693 	ldw	y, (0x08, sp)
      00A211 26 DB            [ 1]  694 	jrne	00131$
      00A213                        695 00133$:
                                    696 ;	src/i2c.c: 102: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
      00A213 A6 01            [ 1]  697 	ld	a, #0x01
      00A215 CD 8D 6B         [ 4]  698 	call	_I2C_AcknowledgeConfig
                                    699 ;	src/i2c.c: 103: }
      00A218 1E 10            [ 2]  700 	ldw	x, (16, sp)
      00A21A 5B 13            [ 2]  701 	addw	sp, #19
      00A21C FC               [ 2]  702 	jp	(x)
                                    703 	.area CODE
                                    704 	.area CONST
                                    705 	.area INITIALIZER
                                    706 	.area CABS (ABS)
