                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
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
                                     63 ;	src\i2c.c: 8: void I2C_Setup(void) {
                                     64 ;	-----------------------------------------
                                     65 ;	 function I2C_Setup
                                     66 ;	-----------------------------------------
      00A38A                         67 _I2C_Setup:
                                     68 ;	src\i2c.c: 9: I2C_DeInit();
      00A38A CD 8A F7         [ 4]   69 	call	_I2C_DeInit
                                     70 ;	src\i2c.c: 12: I2C_Init(I2C_MAX_STANDARD_FREQ, I2C_ID_ADDRESS, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, I2C_MAX_INPUT_FREQ);
      00A38D 4B 10            [ 1]   71 	push	#0x10
      00A38F 4B 00            [ 1]   72 	push	#0x00
      00A391 4B 01            [ 1]   73 	push	#0x01
      00A393 4B 00            [ 1]   74 	push	#0x00
      00A395 4B EE            [ 1]   75 	push	#0xee
      00A397 4B 00            [ 1]   76 	push	#0x00
      00A399 4B A0            [ 1]   77 	push	#0xa0
      00A39B 4B 86            [ 1]   78 	push	#0x86
      00A39D 4B 01            [ 1]   79 	push	#0x01
      00A39F 4B 00            [ 1]   80 	push	#0x00
      00A3A1 CD 8B 1C         [ 4]   81 	call	_I2C_Init
                                     82 ;	src\i2c.c: 13: I2C_Cmd(ENABLE);
      00A3A4 A6 01            [ 1]   83 	ld	a, #0x01
                                     84 ;	src\i2c.c: 14: }
      00A3A6 CC 8C D4         [ 2]   85 	jp	_I2C_Cmd
                                     86 ;	src\i2c.c: 16: void I2C_Send_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
                                     87 ;	-----------------------------------------
                                     88 ;	 function I2C_Send_Bytes
                                     89 ;	-----------------------------------------
      00A3A9                         90 _I2C_Send_Bytes:
      00A3A9 52 0F            [ 2]   91 	sub	sp, #15
      00A3AB 6B 07            [ 1]   92 	ld	(0x07, sp), a
      00A3AD 1F 05            [ 2]   93 	ldw	(0x05, sp), x
                                     94 ;	src\i2c.c: 18: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A3AF AE 03 E8         [ 2]   95 	ldw	x, #0x03e8
      00A3B2 1F 0E            [ 2]   96 	ldw	(0x0e, sp), x
      00A3B4 5F               [ 1]   97 	clrw	x
      00A3B5 1F 0C            [ 2]   98 	ldw	(0x0c, sp), x
      00A3B7                         99 00102$:
      00A3B7 AE 03 02         [ 2]  100 	ldw	x, #0x0302
      00A3BA CD 8F D3         [ 4]  101 	call	_I2C_GetFlagStatus
      00A3BD 4D               [ 1]  102 	tnz	a
      00A3BE 27 1E            [ 1]  103 	jreq	00104$
      00A3C0 16 0E            [ 2]  104 	ldw	y, (0x0e, sp)
      00A3C2 17 0A            [ 2]  105 	ldw	(0x0a, sp), y
      00A3C4 16 0C            [ 2]  106 	ldw	y, (0x0c, sp)
      00A3C6 17 08            [ 2]  107 	ldw	(0x08, sp), y
      00A3C8 1E 0E            [ 2]  108 	ldw	x, (0x0e, sp)
      00A3CA 1D 00 01         [ 2]  109 	subw	x, #0x0001
      00A3CD 1F 0E            [ 2]  110 	ldw	(0x0e, sp), x
      00A3CF 1E 0C            [ 2]  111 	ldw	x, (0x0c, sp)
      00A3D1 24 01            [ 1]  112 	jrnc	00208$
      00A3D3 5A               [ 2]  113 	decw	x
      00A3D4                        114 00208$:
      00A3D4 1F 0C            [ 2]  115 	ldw	(0x0c, sp), x
      00A3D6 1E 0A            [ 2]  116 	ldw	x, (0x0a, sp)
      00A3D8 26 DD            [ 1]  117 	jrne	00102$
      00A3DA 1E 08            [ 2]  118 	ldw	x, (0x08, sp)
      00A3DC 26 D9            [ 1]  119 	jrne	00102$
      00A3DE                        120 00104$:
                                    121 ;	src\i2c.c: 19: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A3DE A6 01            [ 1]  122 	ld	a, #0x01
      00A3E0 CD 8D 2A         [ 4]  123 	call	_I2C_GenerateSTART
                                    124 ;	src\i2c.c: 21: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A3E3 AE 03 E8         [ 2]  125 	ldw	x, #0x03e8
      00A3E6 1F 0E            [ 2]  126 	ldw	(0x0e, sp), x
      00A3E8 5F               [ 1]  127 	clrw	x
      00A3E9                        128 00106$:
      00A3E9 89               [ 2]  129 	pushw	x
      00A3EA AE 03 01         [ 2]  130 	ldw	x, #0x0301
      00A3ED CD 8E FC         [ 4]  131 	call	_I2C_CheckEvent
      00A3F0 85               [ 2]  132 	popw	x
      00A3F1 4D               [ 1]  133 	tnz	a
      00A3F2 26 19            [ 1]  134 	jrne	00108$
      00A3F4 1F 08            [ 2]  135 	ldw	(0x08, sp), x
      00A3F6 16 0E            [ 2]  136 	ldw	y, (0x0e, sp)
      00A3F8 17 0A            [ 2]  137 	ldw	(0x0a, sp), y
      00A3FA 16 0E            [ 2]  138 	ldw	y, (0x0e, sp)
      00A3FC 72 A2 00 01      [ 2]  139 	subw	y, #0x0001
      00A400 17 0E            [ 2]  140 	ldw	(0x0e, sp), y
      00A402 24 01            [ 1]  141 	jrnc	00212$
      00A404 5A               [ 2]  142 	decw	x
      00A405                        143 00212$:
      00A405 16 0A            [ 2]  144 	ldw	y, (0x0a, sp)
      00A407 26 E0            [ 1]  145 	jrne	00106$
      00A409 16 08            [ 2]  146 	ldw	y, (0x08, sp)
      00A40B 26 DC            [ 1]  147 	jrne	00106$
      00A40D                        148 00108$:
                                    149 ;	src\i2c.c: 22: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_TX);//Отсылаем адрес вызываемого устройства.
      00A40D 4B 00            [ 1]  150 	push	#0x00
      00A40F 7B 08            [ 1]  151 	ld	a, (0x08, sp)
      00A411 CD 8E C4         [ 4]  152 	call	_I2C_Send7bitAddress
                                    153 ;	src\i2c.c: 24: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A414 AE 03 E8         [ 2]  154 	ldw	x, #0x03e8
      00A417 1F 0E            [ 2]  155 	ldw	(0x0e, sp), x
      00A419 5F               [ 1]  156 	clrw	x
      00A41A                        157 00110$:
      00A41A 89               [ 2]  158 	pushw	x
      00A41B AE 01 02         [ 2]  159 	ldw	x, #0x0102
      00A41E CD 8F D3         [ 4]  160 	call	_I2C_GetFlagStatus
      00A421 85               [ 2]  161 	popw	x
      00A422 4D               [ 1]  162 	tnz	a
      00A423 26 19            [ 1]  163 	jrne	00112$
      00A425 1F 08            [ 2]  164 	ldw	(0x08, sp), x
      00A427 16 0E            [ 2]  165 	ldw	y, (0x0e, sp)
      00A429 17 0A            [ 2]  166 	ldw	(0x0a, sp), y
      00A42B 16 0E            [ 2]  167 	ldw	y, (0x0e, sp)
      00A42D 72 A2 00 01      [ 2]  168 	subw	y, #0x0001
      00A431 17 0E            [ 2]  169 	ldw	(0x0e, sp), y
      00A433 24 01            [ 1]  170 	jrnc	00216$
      00A435 5A               [ 2]  171 	decw	x
      00A436                        172 00216$:
      00A436 16 0A            [ 2]  173 	ldw	y, (0x0a, sp)
      00A438 26 E0            [ 1]  174 	jrne	00110$
      00A43A 16 08            [ 2]  175 	ldw	y, (0x08, sp)
      00A43C 26 DC            [ 1]  176 	jrne	00110$
      00A43E                        177 00112$:
                                    178 ;	src\i2c.c: 25: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A43E C6 52 17         [ 1]  179 	ld	a, 0x5217
      00A441 C6 52 19         [ 1]  180 	ld	a, 0x5219
                                    181 ;	src\i2c.c: 26: while(countData) {//Повторяем пока не отправятся все данные.
      00A444 16 12            [ 2]  182 	ldw	y, (0x12, sp)
      00A446 17 08            [ 2]  183 	ldw	(0x08, sp), y
      00A448 16 05            [ 2]  184 	ldw	y, (0x05, sp)
      00A44A 17 0A            [ 2]  185 	ldw	(0x0a, sp), y
      00A44C                        186 00117$:
      00A44C 1E 0A            [ 2]  187 	ldw	x, (0x0a, sp)
      00A44E 27 36            [ 1]  188 	jreq	00119$
                                    189 ;	src\i2c.c: 28: while(!(I2C->SR1 & 128) && (time_out--));//Ждём когда буфер передающего регистра будет пуст.
      00A450 AE 03 E8         [ 2]  190 	ldw	x, #0x03e8
      00A453 1F 0E            [ 2]  191 	ldw	(0x0e, sp), x
      00A455 5F               [ 1]  192 	clrw	x
      00A456                        193 00114$:
      00A456 C6 52 17         [ 1]  194 	ld	a, 0x5217
      00A459 2B 19            [ 1]  195 	jrmi	00116$
      00A45B 1F 01            [ 2]  196 	ldw	(0x01, sp), x
      00A45D 16 0E            [ 2]  197 	ldw	y, (0x0e, sp)
      00A45F 17 03            [ 2]  198 	ldw	(0x03, sp), y
      00A461 16 0E            [ 2]  199 	ldw	y, (0x0e, sp)
      00A463 72 A2 00 01      [ 2]  200 	subw	y, #0x0001
      00A467 17 0E            [ 2]  201 	ldw	(0x0e, sp), y
      00A469 24 01            [ 1]  202 	jrnc	00221$
      00A46B 5A               [ 2]  203 	decw	x
      00A46C                        204 00221$:
      00A46C 16 03            [ 2]  205 	ldw	y, (0x03, sp)
      00A46E 26 E6            [ 1]  206 	jrne	00114$
      00A470 16 01            [ 2]  207 	ldw	y, (0x01, sp)
      00A472 26 E2            [ 1]  208 	jrne	00114$
      00A474                        209 00116$:
                                    210 ;	src\i2c.c: 29: I2C_SendData(*dataBuffer);
      00A474 1E 08            [ 2]  211 	ldw	x, (0x08, sp)
      00A476 F6               [ 1]  212 	ld	a, (x)
      00A477 CD 8E F8         [ 4]  213 	call	_I2C_SendData
                                    214 ;	src\i2c.c: 30: *dataBuffer++;
      00A47A 1E 08            [ 2]  215 	ldw	x, (0x08, sp)
      00A47C 5C               [ 1]  216 	incw	x
      00A47D 1F 08            [ 2]  217 	ldw	(0x08, sp), x
                                    218 ;	src\i2c.c: 31: countData--;
      00A47F 1E 0A            [ 2]  219 	ldw	x, (0x0a, sp)
      00A481 5A               [ 2]  220 	decw	x
      00A482 1F 0A            [ 2]  221 	ldw	(0x0a, sp), x
      00A484 20 C6            [ 2]  222 	jra	00117$
      00A486                        223 00119$:
                                    224 ;	src\i2c.c: 34: while((!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED)) && (time_out--));//Ждём окончания отправки данных.
      00A486 AE 03 E8         [ 2]  225 	ldw	x, #0x03e8
      00A489 1F 0E            [ 2]  226 	ldw	(0x0e, sp), x
      00A48B 5F               [ 1]  227 	clrw	x
      00A48C                        228 00121$:
      00A48C 89               [ 2]  229 	pushw	x
      00A48D AE 07 84         [ 2]  230 	ldw	x, #0x0784
      00A490 CD 8E FC         [ 4]  231 	call	_I2C_CheckEvent
      00A493 85               [ 2]  232 	popw	x
      00A494 4D               [ 1]  233 	tnz	a
      00A495 26 1E            [ 1]  234 	jrne	00123$
      00A497 1F 08            [ 2]  235 	ldw	(0x08, sp), x
      00A499 7B 0E            [ 1]  236 	ld	a, (0x0e, sp)
      00A49B 6B 0A            [ 1]  237 	ld	(0x0a, sp), a
      00A49D 7B 0F            [ 1]  238 	ld	a, (0x0f, sp)
      00A49F 16 0E            [ 2]  239 	ldw	y, (0x0e, sp)
      00A4A1 72 A2 00 01      [ 2]  240 	subw	y, #0x0001
      00A4A5 17 0E            [ 2]  241 	ldw	(0x0e, sp), y
      00A4A7 24 01            [ 1]  242 	jrnc	00226$
      00A4A9 5A               [ 2]  243 	decw	x
      00A4AA                        244 00226$:
      00A4AA 4D               [ 1]  245 	tnz	a
      00A4AB 26 DF            [ 1]  246 	jrne	00121$
      00A4AD 16 09            [ 2]  247 	ldw	y, (0x09, sp)
      00A4AF 26 DB            [ 1]  248 	jrne	00121$
      00A4B1 0D 08            [ 1]  249 	tnz	(0x08, sp)
      00A4B3 26 D7            [ 1]  250 	jrne	00121$
      00A4B5                        251 00123$:
                                    252 ;	src\i2c.c: 35: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A4B5 A6 01            [ 1]  253 	ld	a, #0x01
      00A4B7 CD 8D 55         [ 4]  254 	call	_I2C_GenerateSTOP
                                    255 ;	src\i2c.c: 37: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
      00A4BA AE 03 E8         [ 2]  256 	ldw	x, #0x03e8
      00A4BD 1F 0E            [ 2]  257 	ldw	(0x0e, sp), x
      00A4BF 5F               [ 1]  258 	clrw	x
      00A4C0                        259 00125$:
      00A4C0 C6 52 11         [ 1]  260 	ld	a, 0x5211
      00A4C3 A5 02            [ 1]  261 	bcp	a, #0x02
      00A4C5 27 1E            [ 1]  262 	jreq	00128$
      00A4C7 1F 08            [ 2]  263 	ldw	(0x08, sp), x
      00A4C9 7B 0E            [ 1]  264 	ld	a, (0x0e, sp)
      00A4CB 6B 0A            [ 1]  265 	ld	(0x0a, sp), a
      00A4CD 7B 0F            [ 1]  266 	ld	a, (0x0f, sp)
      00A4CF 16 0E            [ 2]  267 	ldw	y, (0x0e, sp)
      00A4D1 72 A2 00 01      [ 2]  268 	subw	y, #0x0001
      00A4D5 17 0E            [ 2]  269 	ldw	(0x0e, sp), y
      00A4D7 24 01            [ 1]  270 	jrnc	00230$
      00A4D9 5A               [ 2]  271 	decw	x
      00A4DA                        272 00230$:
      00A4DA 4D               [ 1]  273 	tnz	a
      00A4DB 26 E3            [ 1]  274 	jrne	00125$
      00A4DD 16 09            [ 2]  275 	ldw	y, (0x09, sp)
      00A4DF 26 DF            [ 1]  276 	jrne	00125$
      00A4E1 0D 08            [ 1]  277 	tnz	(0x08, sp)
      00A4E3 26 DB            [ 1]  278 	jrne	00125$
      00A4E5                        279 00128$:
                                    280 ;	src\i2c.c: 38: }
      00A4E5 1E 10            [ 2]  281 	ldw	x, (16, sp)
      00A4E7 5B 13            [ 2]  282 	addw	sp, #19
      00A4E9 FC               [ 2]  283 	jp	(x)
                                    284 ;	src\i2c.c: 40: uint8_t I2C_Read_Byte(uint8_t Addr) {
                                    285 ;	-----------------------------------------
                                    286 ;	 function I2C_Read_Byte
                                    287 ;	-----------------------------------------
      00A4EA                        288 _I2C_Read_Byte:
      00A4EA 52 0A            [ 2]  289 	sub	sp, #10
      00A4EC 6B 06            [ 1]  290 	ld	(0x06, sp), a
                                    291 ;	src\i2c.c: 42: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A4EE AE 03 E8         [ 2]  292 	ldw	x, #0x03e8
      00A4F1 1F 09            [ 2]  293 	ldw	(0x09, sp), x
      00A4F3 5F               [ 1]  294 	clrw	x
      00A4F4 1F 07            [ 2]  295 	ldw	(0x07, sp), x
      00A4F6                        296 00102$:
      00A4F6 AE 03 02         [ 2]  297 	ldw	x, #0x0302
      00A4F9 CD 8F D3         [ 4]  298 	call	_I2C_GetFlagStatus
      00A4FC 4D               [ 1]  299 	tnz	a
      00A4FD 27 1E            [ 1]  300 	jreq	00104$
      00A4FF 16 09            [ 2]  301 	ldw	y, (0x09, sp)
      00A501 17 04            [ 2]  302 	ldw	(0x04, sp), y
      00A503 16 07            [ 2]  303 	ldw	y, (0x07, sp)
      00A505 17 02            [ 2]  304 	ldw	(0x02, sp), y
      00A507 1E 09            [ 2]  305 	ldw	x, (0x09, sp)
      00A509 1D 00 01         [ 2]  306 	subw	x, #0x0001
      00A50C 1F 09            [ 2]  307 	ldw	(0x09, sp), x
      00A50E 1E 07            [ 2]  308 	ldw	x, (0x07, sp)
      00A510 24 01            [ 1]  309 	jrnc	00179$
      00A512 5A               [ 2]  310 	decw	x
      00A513                        311 00179$:
      00A513 1F 07            [ 2]  312 	ldw	(0x07, sp), x
      00A515 1E 04            [ 2]  313 	ldw	x, (0x04, sp)
      00A517 26 DD            [ 1]  314 	jrne	00102$
      00A519 1E 02            [ 2]  315 	ldw	x, (0x02, sp)
      00A51B 26 D9            [ 1]  316 	jrne	00102$
      00A51D                        317 00104$:
                                    318 ;	src\i2c.c: 43: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A51D A6 01            [ 1]  319 	ld	a, #0x01
      00A51F CD 8D 2A         [ 4]  320 	call	_I2C_GenerateSTART
                                    321 ;	src\i2c.c: 45: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A522 AE 03 E8         [ 2]  322 	ldw	x, #0x03e8
      00A525 1F 09            [ 2]  323 	ldw	(0x09, sp), x
      00A527 5F               [ 1]  324 	clrw	x
      00A528                        325 00106$:
      00A528 89               [ 2]  326 	pushw	x
      00A529 AE 03 01         [ 2]  327 	ldw	x, #0x0301
      00A52C CD 8E FC         [ 4]  328 	call	_I2C_CheckEvent
      00A52F 85               [ 2]  329 	popw	x
      00A530 4D               [ 1]  330 	tnz	a
      00A531 26 19            [ 1]  331 	jrne	00108$
      00A533 1F 02            [ 2]  332 	ldw	(0x02, sp), x
      00A535 16 09            [ 2]  333 	ldw	y, (0x09, sp)
      00A537 17 04            [ 2]  334 	ldw	(0x04, sp), y
      00A539 16 09            [ 2]  335 	ldw	y, (0x09, sp)
      00A53B 72 A2 00 01      [ 2]  336 	subw	y, #0x0001
      00A53F 17 09            [ 2]  337 	ldw	(0x09, sp), y
      00A541 24 01            [ 1]  338 	jrnc	00183$
      00A543 5A               [ 2]  339 	decw	x
      00A544                        340 00183$:
      00A544 16 04            [ 2]  341 	ldw	y, (0x04, sp)
      00A546 26 E0            [ 1]  342 	jrne	00106$
      00A548 16 02            [ 2]  343 	ldw	y, (0x02, sp)
      00A54A 26 DC            [ 1]  344 	jrne	00106$
      00A54C                        345 00108$:
                                    346 ;	src\i2c.c: 46: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства и бит приёма данных.
      00A54C 4B 01            [ 1]  347 	push	#0x01
      00A54E 7B 07            [ 1]  348 	ld	a, (0x07, sp)
      00A550 CD 8E C4         [ 4]  349 	call	_I2C_Send7bitAddress
                                    350 ;	src\i2c.c: 48: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A553 AE 03 E8         [ 2]  351 	ldw	x, #0x03e8
      00A556 1F 09            [ 2]  352 	ldw	(0x09, sp), x
      00A558 5F               [ 1]  353 	clrw	x
      00A559                        354 00110$:
      00A559 89               [ 2]  355 	pushw	x
      00A55A AE 01 02         [ 2]  356 	ldw	x, #0x0102
      00A55D CD 8F D3         [ 4]  357 	call	_I2C_GetFlagStatus
      00A560 85               [ 2]  358 	popw	x
      00A561 4D               [ 1]  359 	tnz	a
      00A562 26 19            [ 1]  360 	jrne	00112$
      00A564 1F 02            [ 2]  361 	ldw	(0x02, sp), x
      00A566 16 09            [ 2]  362 	ldw	y, (0x09, sp)
      00A568 17 04            [ 2]  363 	ldw	(0x04, sp), y
      00A56A 16 09            [ 2]  364 	ldw	y, (0x09, sp)
      00A56C 72 A2 00 01      [ 2]  365 	subw	y, #0x0001
      00A570 17 09            [ 2]  366 	ldw	(0x09, sp), y
      00A572 24 01            [ 1]  367 	jrnc	00187$
      00A574 5A               [ 2]  368 	decw	x
      00A575                        369 00187$:
      00A575 16 04            [ 2]  370 	ldw	y, (0x04, sp)
      00A577 26 E0            [ 1]  371 	jrne	00110$
      00A579 16 02            [ 2]  372 	ldw	y, (0x02, sp)
      00A57B 26 DC            [ 1]  373 	jrne	00110$
      00A57D                        374 00112$:
                                    375 ;	src\i2c.c: 51: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
      00A57D 4F               [ 1]  376 	clr	a
      00A57E CD 8D D6         [ 4]  377 	call	_I2C_AcknowledgeConfig
                                    378 ;	src\i2c.c: 53: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A581 C6 52 17         [ 1]  379 	ld	a, 0x5217
      00A584 C6 52 19         [ 1]  380 	ld	a, 0x5219
                                    381 ;	src\i2c.c: 55: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A587 A6 01            [ 1]  382 	ld	a, #0x01
      00A589 CD 8D 55         [ 4]  383 	call	_I2C_GenerateSTOP
                                    384 ;	src\i2c.c: 58: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
      00A58C AE 03 E8         [ 2]  385 	ldw	x, #0x03e8
      00A58F 1F 09            [ 2]  386 	ldw	(0x09, sp), x
      00A591 5F               [ 1]  387 	clrw	x
      00A592                        388 00114$:
      00A592 89               [ 2]  389 	pushw	x
      00A593 AE 01 40         [ 2]  390 	ldw	x, #0x0140
      00A596 CD 8F D3         [ 4]  391 	call	_I2C_GetFlagStatus
      00A599 85               [ 2]  392 	popw	x
      00A59A 4D               [ 1]  393 	tnz	a
      00A59B 26 19            [ 1]  394 	jrne	00116$
      00A59D 1F 02            [ 2]  395 	ldw	(0x02, sp), x
      00A59F 16 09            [ 2]  396 	ldw	y, (0x09, sp)
      00A5A1 17 04            [ 2]  397 	ldw	(0x04, sp), y
      00A5A3 16 09            [ 2]  398 	ldw	y, (0x09, sp)
      00A5A5 72 A2 00 01      [ 2]  399 	subw	y, #0x0001
      00A5A9 17 09            [ 2]  400 	ldw	(0x09, sp), y
      00A5AB 24 01            [ 1]  401 	jrnc	00191$
      00A5AD 5A               [ 2]  402 	decw	x
      00A5AE                        403 00191$:
      00A5AE 16 04            [ 2]  404 	ldw	y, (0x04, sp)
      00A5B0 26 E0            [ 1]  405 	jrne	00114$
      00A5B2 16 02            [ 2]  406 	ldw	y, (0x02, sp)
      00A5B4 26 DC            [ 1]  407 	jrne	00114$
      00A5B6                        408 00116$:
                                    409 ;	src\i2c.c: 60: uint8_t read_byte = I2C_ReceiveData();//Читаем данные.
      00A5B6 CD 8E C0         [ 4]  410 	call	_I2C_ReceiveData
      00A5B9 6B 01            [ 1]  411 	ld	(0x01, sp), a
                                    412 ;	src\i2c.c: 63: while((I2C->CR2 & I2C_CR2_STOP)&& (time_out--));//Ждём остановки передачи и STOP на линии.
      00A5BB AE 03 E8         [ 2]  413 	ldw	x, #0x03e8
      00A5BE 1F 09            [ 2]  414 	ldw	(0x09, sp), x
      00A5C0 5F               [ 1]  415 	clrw	x
      00A5C1                        416 00118$:
      00A5C1 72 03 52 11 19   [ 2]  417 	btjf	0x5211, #1, 00120$
      00A5C6 1F 02            [ 2]  418 	ldw	(0x02, sp), x
      00A5C8 16 09            [ 2]  419 	ldw	y, (0x09, sp)
      00A5CA 17 04            [ 2]  420 	ldw	(0x04, sp), y
      00A5CC 16 09            [ 2]  421 	ldw	y, (0x09, sp)
      00A5CE 72 A2 00 01      [ 2]  422 	subw	y, #0x0001
      00A5D2 17 09            [ 2]  423 	ldw	(0x09, sp), y
      00A5D4 24 01            [ 1]  424 	jrnc	00195$
      00A5D6 5A               [ 2]  425 	decw	x
      00A5D7                        426 00195$:
      00A5D7 16 04            [ 2]  427 	ldw	y, (0x04, sp)
      00A5D9 26 E6            [ 1]  428 	jrne	00118$
      00A5DB 16 02            [ 2]  429 	ldw	y, (0x02, sp)
      00A5DD 26 E2            [ 1]  430 	jrne	00118$
      00A5DF                        431 00120$:
                                    432 ;	src\i2c.c: 64: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
      00A5DF A6 01            [ 1]  433 	ld	a, #0x01
      00A5E1 CD 8D D6         [ 4]  434 	call	_I2C_AcknowledgeConfig
                                    435 ;	src\i2c.c: 65: return read_byte;
      00A5E4 7B 01            [ 1]  436 	ld	a, (0x01, sp)
                                    437 ;	src\i2c.c: 66: }
      00A5E6 5B 0A            [ 2]  438 	addw	sp, #10
      00A5E8 81               [ 4]  439 	ret
                                    440 ;	src\i2c.c: 69: void I2C_Read_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
                                    441 ;	-----------------------------------------
                                    442 ;	 function I2C_Read_Bytes
                                    443 ;	-----------------------------------------
      00A5E9                        444 _I2C_Read_Bytes:
      00A5E9 52 0F            [ 2]  445 	sub	sp, #15
      00A5EB 6B 07            [ 1]  446 	ld	(0x07, sp), a
      00A5ED 1F 05            [ 2]  447 	ldw	(0x05, sp), x
                                    448 ;	src\i2c.c: 71: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A5EF AE 03 E8         [ 2]  449 	ldw	x, #0x03e8
      00A5F2 1F 0E            [ 2]  450 	ldw	(0x0e, sp), x
      00A5F4 5F               [ 1]  451 	clrw	x
      00A5F5 1F 0C            [ 2]  452 	ldw	(0x0c, sp), x
      00A5F7                        453 00102$:
      00A5F7 AE 03 02         [ 2]  454 	ldw	x, #0x0302
      00A5FA CD 8F D3         [ 4]  455 	call	_I2C_GetFlagStatus
      00A5FD 4D               [ 1]  456 	tnz	a
      00A5FE 27 1E            [ 1]  457 	jreq	00104$
      00A600 16 0E            [ 2]  458 	ldw	y, (0x0e, sp)
      00A602 17 0A            [ 2]  459 	ldw	(0x0a, sp), y
      00A604 16 0C            [ 2]  460 	ldw	y, (0x0c, sp)
      00A606 17 08            [ 2]  461 	ldw	(0x08, sp), y
      00A608 1E 0E            [ 2]  462 	ldw	x, (0x0e, sp)
      00A60A 1D 00 01         [ 2]  463 	subw	x, #0x0001
      00A60D 1F 0E            [ 2]  464 	ldw	(0x0e, sp), x
      00A60F 1E 0C            [ 2]  465 	ldw	x, (0x0c, sp)
      00A611 24 01            [ 1]  466 	jrnc	00229$
      00A613 5A               [ 2]  467 	decw	x
      00A614                        468 00229$:
      00A614 1F 0C            [ 2]  469 	ldw	(0x0c, sp), x
      00A616 1E 0A            [ 2]  470 	ldw	x, (0x0a, sp)
      00A618 26 DD            [ 1]  471 	jrne	00102$
      00A61A 1E 08            [ 2]  472 	ldw	x, (0x08, sp)
      00A61C 26 D9            [ 1]  473 	jrne	00102$
      00A61E                        474 00104$:
                                    475 ;	src\i2c.c: 72: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A61E A6 01            [ 1]  476 	ld	a, #0x01
      00A620 CD 8D 2A         [ 4]  477 	call	_I2C_GenerateSTART
                                    478 ;	src\i2c.c: 74: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A623 AE 03 E8         [ 2]  479 	ldw	x, #0x03e8
      00A626 1F 0E            [ 2]  480 	ldw	(0x0e, sp), x
      00A628 5F               [ 1]  481 	clrw	x
      00A629                        482 00106$:
      00A629 89               [ 2]  483 	pushw	x
      00A62A AE 03 01         [ 2]  484 	ldw	x, #0x0301
      00A62D CD 8E FC         [ 4]  485 	call	_I2C_CheckEvent
      00A630 85               [ 2]  486 	popw	x
      00A631 4D               [ 1]  487 	tnz	a
      00A632 26 19            [ 1]  488 	jrne	00108$
      00A634 1F 08            [ 2]  489 	ldw	(0x08, sp), x
      00A636 16 0E            [ 2]  490 	ldw	y, (0x0e, sp)
      00A638 17 0A            [ 2]  491 	ldw	(0x0a, sp), y
      00A63A 16 0E            [ 2]  492 	ldw	y, (0x0e, sp)
      00A63C 72 A2 00 01      [ 2]  493 	subw	y, #0x0001
      00A640 17 0E            [ 2]  494 	ldw	(0x0e, sp), y
      00A642 24 01            [ 1]  495 	jrnc	00233$
      00A644 5A               [ 2]  496 	decw	x
      00A645                        497 00233$:
      00A645 16 0A            [ 2]  498 	ldw	y, (0x0a, sp)
      00A647 26 E0            [ 1]  499 	jrne	00106$
      00A649 16 08            [ 2]  500 	ldw	y, (0x08, sp)
      00A64B 26 DC            [ 1]  501 	jrne	00106$
      00A64D                        502 00108$:
                                    503 ;	src\i2c.c: 75: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства.
      00A64D 4B 01            [ 1]  504 	push	#0x01
      00A64F 7B 08            [ 1]  505 	ld	a, (0x08, sp)
      00A651 CD 8E C4         [ 4]  506 	call	_I2C_Send7bitAddress
                                    507 ;	src\i2c.c: 77: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A654 AE 03 E8         [ 2]  508 	ldw	x, #0x03e8
      00A657 1F 0E            [ 2]  509 	ldw	(0x0e, sp), x
      00A659 5F               [ 1]  510 	clrw	x
      00A65A                        511 00110$:
      00A65A 89               [ 2]  512 	pushw	x
      00A65B AE 01 02         [ 2]  513 	ldw	x, #0x0102
      00A65E CD 8F D3         [ 4]  514 	call	_I2C_GetFlagStatus
      00A661 85               [ 2]  515 	popw	x
      00A662 4D               [ 1]  516 	tnz	a
      00A663 26 19            [ 1]  517 	jrne	00112$
      00A665 1F 08            [ 2]  518 	ldw	(0x08, sp), x
      00A667 16 0E            [ 2]  519 	ldw	y, (0x0e, sp)
      00A669 17 0A            [ 2]  520 	ldw	(0x0a, sp), y
      00A66B 16 0E            [ 2]  521 	ldw	y, (0x0e, sp)
      00A66D 72 A2 00 01      [ 2]  522 	subw	y, #0x0001
      00A671 17 0E            [ 2]  523 	ldw	(0x0e, sp), y
      00A673 24 01            [ 1]  524 	jrnc	00237$
      00A675 5A               [ 2]  525 	decw	x
      00A676                        526 00237$:
      00A676 16 0A            [ 2]  527 	ldw	y, (0x0a, sp)
      00A678 26 E0            [ 1]  528 	jrne	00110$
      00A67A 16 08            [ 2]  529 	ldw	y, (0x08, sp)
      00A67C 26 DC            [ 1]  530 	jrne	00110$
      00A67E                        531 00112$:
                                    532 ;	src\i2c.c: 79: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A67E C6 52 17         [ 1]  533 	ld	a, 0x5217
      00A681 C6 52 19         [ 1]  534 	ld	a, 0x5219
                                    535 ;	src\i2c.c: 80: if(countData > 3) {//Если принимаем больше трёх байтов.
      00A684 1E 05            [ 2]  536 	ldw	x, (0x05, sp)
      00A686 A3 00 03         [ 2]  537 	cpw	x, #0x0003
      00A689 23 55            [ 2]  538 	jrule	00147$
                                    539 ;	src\i2c.c: 81: while(countData > 3) {
      00A68B 16 12            [ 2]  540 	ldw	y, (0x12, sp)
      00A68D 17 08            [ 2]  541 	ldw	(0x08, sp), y
      00A68F 16 05            [ 2]  542 	ldw	y, (0x05, sp)
      00A691 17 0A            [ 2]  543 	ldw	(0x0a, sp), y
      00A693                        544 00117$:
      00A693 1E 0A            [ 2]  545 	ldw	x, (0x0a, sp)
      00A695 A3 00 03         [ 2]  546 	cpw	x, #0x0003
      00A698 23 42            [ 2]  547 	jrule	00159$
                                    548 ;	src\i2c.c: 83: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
      00A69A AE 03 E8         [ 2]  549 	ldw	x, #0x03e8
      00A69D 1F 0E            [ 2]  550 	ldw	(0x0e, sp), x
      00A69F 5F               [ 1]  551 	clrw	x
      00A6A0 1F 0C            [ 2]  552 	ldw	(0x0c, sp), x
      00A6A2                        553 00114$:
      00A6A2 AE 01 04         [ 2]  554 	ldw	x, #0x0104
      00A6A5 CD 8F D3         [ 4]  555 	call	_I2C_GetFlagStatus
      00A6A8 6B 04            [ 1]  556 	ld	(0x04, sp), a
      00A6AA 26 1E            [ 1]  557 	jrne	00116$
      00A6AC 16 0E            [ 2]  558 	ldw	y, (0x0e, sp)
      00A6AE 17 03            [ 2]  559 	ldw	(0x03, sp), y
      00A6B0 16 0C            [ 2]  560 	ldw	y, (0x0c, sp)
      00A6B2 17 01            [ 2]  561 	ldw	(0x01, sp), y
      00A6B4 1E 0E            [ 2]  562 	ldw	x, (0x0e, sp)
      00A6B6 1D 00 01         [ 2]  563 	subw	x, #0x0001
      00A6B9 1F 0E            [ 2]  564 	ldw	(0x0e, sp), x
      00A6BB 1E 0C            [ 2]  565 	ldw	x, (0x0c, sp)
      00A6BD 24 01            [ 1]  566 	jrnc	00243$
      00A6BF 5A               [ 2]  567 	decw	x
      00A6C0                        568 00243$:
      00A6C0 1F 0C            [ 2]  569 	ldw	(0x0c, sp), x
      00A6C2 1E 03            [ 2]  570 	ldw	x, (0x03, sp)
      00A6C4 26 DC            [ 1]  571 	jrne	00114$
      00A6C6 1E 01            [ 2]  572 	ldw	x, (0x01, sp)
      00A6C8 26 D8            [ 1]  573 	jrne	00114$
      00A6CA                        574 00116$:
                                    575 ;	src\i2c.c: 84: *dataBuffer = I2C_ReceiveData();
      00A6CA CD 8E C0         [ 4]  576 	call	_I2C_ReceiveData
      00A6CD 1E 08            [ 2]  577 	ldw	x, (0x08, sp)
      00A6CF F7               [ 1]  578 	ld	(x), a
                                    579 ;	src\i2c.c: 85: *dataBuffer++;
      00A6D0 1E 08            [ 2]  580 	ldw	x, (0x08, sp)
      00A6D2 5C               [ 1]  581 	incw	x
      00A6D3 1F 08            [ 2]  582 	ldw	(0x08, sp), x
                                    583 ;	src\i2c.c: 86: countData--;
      00A6D5 1E 0A            [ 2]  584 	ldw	x, (0x0a, sp)
      00A6D7 5A               [ 2]  585 	decw	x
      00A6D8 1F 0A            [ 2]  586 	ldw	(0x0a, sp), x
      00A6DA 20 B7            [ 2]  587 	jra	00117$
      00A6DC                        588 00159$:
      00A6DC 16 08            [ 2]  589 	ldw	y, (0x08, sp)
      00A6DE 17 12            [ 2]  590 	ldw	(0x12, sp), y
                                    591 ;	src\i2c.c: 90: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
      00A6E0                        592 00147$:
      00A6E0 AE 03 E8         [ 2]  593 	ldw	x, #0x03e8
      00A6E3 1F 0E            [ 2]  594 	ldw	(0x0e, sp), x
      00A6E5 5F               [ 1]  595 	clrw	x
      00A6E6                        596 00123$:
      00A6E6 89               [ 2]  597 	pushw	x
      00A6E7 AE 01 04         [ 2]  598 	ldw	x, #0x0104
      00A6EA CD 8F D3         [ 4]  599 	call	_I2C_GetFlagStatus
      00A6ED 85               [ 2]  600 	popw	x
      00A6EE 4D               [ 1]  601 	tnz	a
      00A6EF 26 1E            [ 1]  602 	jrne	00125$
      00A6F1 1F 08            [ 2]  603 	ldw	(0x08, sp), x
      00A6F3 7B 0E            [ 1]  604 	ld	a, (0x0e, sp)
      00A6F5 6B 0A            [ 1]  605 	ld	(0x0a, sp), a
      00A6F7 7B 0F            [ 1]  606 	ld	a, (0x0f, sp)
      00A6F9 16 0E            [ 2]  607 	ldw	y, (0x0e, sp)
      00A6FB 72 A2 00 01      [ 2]  608 	subw	y, #0x0001
      00A6FF 17 0E            [ 2]  609 	ldw	(0x0e, sp), y
      00A701 24 01            [ 1]  610 	jrnc	00248$
      00A703 5A               [ 2]  611 	decw	x
      00A704                        612 00248$:
      00A704 4D               [ 1]  613 	tnz	a
      00A705 26 DF            [ 1]  614 	jrne	00123$
      00A707 16 09            [ 2]  615 	ldw	y, (0x09, sp)
      00A709 26 DB            [ 1]  616 	jrne	00123$
      00A70B 0D 08            [ 1]  617 	tnz	(0x08, sp)
      00A70D 26 D7            [ 1]  618 	jrne	00123$
      00A70F                        619 00125$:
                                    620 ;	src\i2c.c: 91: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
      00A70F 4F               [ 1]  621 	clr	a
      00A710 CD 8D D6         [ 4]  622 	call	_I2C_AcknowledgeConfig
                                    623 ;	src\i2c.c: 92: *dataBuffer = I2C_ReceiveData();
      00A713 1E 12            [ 2]  624 	ldw	x, (0x12, sp)
      00A715 89               [ 2]  625 	pushw	x
      00A716 CD 8E C0         [ 4]  626 	call	_I2C_ReceiveData
      00A719 85               [ 2]  627 	popw	x
      00A71A F7               [ 1]  628 	ld	(x), a
                                    629 ;	src\i2c.c: 93: *dataBuffer++;
      00A71B 5C               [ 1]  630 	incw	x
      00A71C 1F 12            [ 2]  631 	ldw	(0x12, sp), x
                                    632 ;	src\i2c.c: 94: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A71E A6 01            [ 1]  633 	ld	a, #0x01
      00A720 CD 8D 55         [ 4]  634 	call	_I2C_GenerateSTOP
                                    635 ;	src\i2c.c: 95: *dataBuffer = I2C_ReceiveData();
      00A723 1E 12            [ 2]  636 	ldw	x, (0x12, sp)
      00A725 89               [ 2]  637 	pushw	x
      00A726 CD 8E C0         [ 4]  638 	call	_I2C_ReceiveData
      00A729 85               [ 2]  639 	popw	x
      00A72A F7               [ 1]  640 	ld	(x), a
                                    641 ;	src\i2c.c: 96: *dataBuffer++;
      00A72B 5C               [ 1]  642 	incw	x
      00A72C 1F 12            [ 2]  643 	ldw	(0x12, sp), x
                                    644 ;	src\i2c.c: 98: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
      00A72E AE 03 E8         [ 2]  645 	ldw	x, #0x03e8
      00A731 1F 0E            [ 2]  646 	ldw	(0x0e, sp), x
      00A733 5F               [ 1]  647 	clrw	x
      00A734                        648 00127$:
      00A734 89               [ 2]  649 	pushw	x
      00A735 AE 01 40         [ 2]  650 	ldw	x, #0x0140
      00A738 CD 8F D3         [ 4]  651 	call	_I2C_GetFlagStatus
      00A73B 85               [ 2]  652 	popw	x
      00A73C 4D               [ 1]  653 	tnz	a
      00A73D 26 1E            [ 1]  654 	jrne	00129$
      00A73F 1F 08            [ 2]  655 	ldw	(0x08, sp), x
      00A741 7B 0E            [ 1]  656 	ld	a, (0x0e, sp)
      00A743 6B 0A            [ 1]  657 	ld	(0x0a, sp), a
      00A745 7B 0F            [ 1]  658 	ld	a, (0x0f, sp)
      00A747 16 0E            [ 2]  659 	ldw	y, (0x0e, sp)
      00A749 72 A2 00 01      [ 2]  660 	subw	y, #0x0001
      00A74D 17 0E            [ 2]  661 	ldw	(0x0e, sp), y
      00A74F 24 01            [ 1]  662 	jrnc	00252$
      00A751 5A               [ 2]  663 	decw	x
      00A752                        664 00252$:
      00A752 4D               [ 1]  665 	tnz	a
      00A753 26 DF            [ 1]  666 	jrne	00127$
      00A755 16 09            [ 2]  667 	ldw	y, (0x09, sp)
      00A757 26 DB            [ 1]  668 	jrne	00127$
      00A759 0D 08            [ 1]  669 	tnz	(0x08, sp)
      00A75B 26 D7            [ 1]  670 	jrne	00127$
      00A75D                        671 00129$:
                                    672 ;	src\i2c.c: 99: *dataBuffer = I2C_ReceiveData();
      00A75D 1E 12            [ 2]  673 	ldw	x, (0x12, sp)
      00A75F 89               [ 2]  674 	pushw	x
      00A760 CD 8E C0         [ 4]  675 	call	_I2C_ReceiveData
      00A763 85               [ 2]  676 	popw	x
      00A764 F7               [ 1]  677 	ld	(x), a
                                    678 ;	src\i2c.c: 101: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
      00A765 AE 03 E8         [ 2]  679 	ldw	x, #0x03e8
      00A768 1F 0E            [ 2]  680 	ldw	(0x0e, sp), x
      00A76A 5F               [ 1]  681 	clrw	x
      00A76B                        682 00131$:
      00A76B 72 03 52 11 1E   [ 2]  683 	btjf	0x5211, #1, 00133$
      00A770 1F 08            [ 2]  684 	ldw	(0x08, sp), x
      00A772 7B 0E            [ 1]  685 	ld	a, (0x0e, sp)
      00A774 6B 0A            [ 1]  686 	ld	(0x0a, sp), a
      00A776 7B 0F            [ 1]  687 	ld	a, (0x0f, sp)
      00A778 16 0E            [ 2]  688 	ldw	y, (0x0e, sp)
      00A77A 72 A2 00 01      [ 2]  689 	subw	y, #0x0001
      00A77E 17 0E            [ 2]  690 	ldw	(0x0e, sp), y
      00A780 24 01            [ 1]  691 	jrnc	00256$
      00A782 5A               [ 2]  692 	decw	x
      00A783                        693 00256$:
      00A783 4D               [ 1]  694 	tnz	a
      00A784 26 E5            [ 1]  695 	jrne	00131$
      00A786 16 09            [ 2]  696 	ldw	y, (0x09, sp)
      00A788 26 E1            [ 1]  697 	jrne	00131$
      00A78A 0D 08            [ 1]  698 	tnz	(0x08, sp)
      00A78C 26 DD            [ 1]  699 	jrne	00131$
      00A78E                        700 00133$:
                                    701 ;	src\i2c.c: 102: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
      00A78E A6 01            [ 1]  702 	ld	a, #0x01
      00A790 CD 8D D6         [ 4]  703 	call	_I2C_AcknowledgeConfig
                                    704 ;	src\i2c.c: 103: }
      00A793 1E 10            [ 2]  705 	ldw	x, (16, sp)
      00A795 5B 13            [ 2]  706 	addw	sp, #19
      00A797 FC               [ 2]  707 	jp	(x)
                                    708 	.area CODE
                                    709 	.area CONST
                                    710 	.area INITIALIZER
                                    711 	.area CABS (ABS)
