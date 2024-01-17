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
      00A17A                         67 _I2C_Setup:
                                     68 ;	src\i2c.c: 9: I2C_DeInit();
      00A17A CD 88 8A         [ 4]   69 	call	_I2C_DeInit
                                     70 ;	src\i2c.c: 12: I2C_Init(I2C_MAX_STANDARD_FREQ, I2C_ID_ADDRESS, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, I2C_MAX_INPUT_FREQ);
      00A17D 4B 10            [ 1]   71 	push	#0x10
      00A17F 4B 00            [ 1]   72 	push	#0x00
      00A181 4B 01            [ 1]   73 	push	#0x01
      00A183 4B 00            [ 1]   74 	push	#0x00
      00A185 4B EE            [ 1]   75 	push	#0xee
      00A187 4B 00            [ 1]   76 	push	#0x00
      00A189 4B A0            [ 1]   77 	push	#0xa0
      00A18B 4B 86            [ 1]   78 	push	#0x86
      00A18D 4B 01            [ 1]   79 	push	#0x01
      00A18F 4B 00            [ 1]   80 	push	#0x00
      00A191 CD 88 AF         [ 4]   81 	call	_I2C_Init
                                     82 ;	src\i2c.c: 13: I2C_Cmd(ENABLE);
      00A194 A6 01            [ 1]   83 	ld	a, #0x01
                                     84 ;	src\i2c.c: 14: }
      00A196 CC 8A 67         [ 2]   85 	jp	_I2C_Cmd
                                     86 ;	src\i2c.c: 16: void I2C_Send_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
                                     87 ;	-----------------------------------------
                                     88 ;	 function I2C_Send_Bytes
                                     89 ;	-----------------------------------------
      00A199                         90 _I2C_Send_Bytes:
      00A199 52 0F            [ 2]   91 	sub	sp, #15
      00A19B 6B 07            [ 1]   92 	ld	(0x07, sp), a
      00A19D 1F 05            [ 2]   93 	ldw	(0x05, sp), x
                                     94 ;	src\i2c.c: 18: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A19F AE 03 E8         [ 2]   95 	ldw	x, #0x03e8
      00A1A2 1F 0E            [ 2]   96 	ldw	(0x0e, sp), x
      00A1A4 5F               [ 1]   97 	clrw	x
      00A1A5 1F 0C            [ 2]   98 	ldw	(0x0c, sp), x
      00A1A7                         99 00102$:
      00A1A7 AE 03 02         [ 2]  100 	ldw	x, #0x0302
      00A1AA CD 8C 22         [ 4]  101 	call	_I2C_GetFlagStatus
      00A1AD 4D               [ 1]  102 	tnz	a
      00A1AE 27 1E            [ 1]  103 	jreq	00104$
      00A1B0 16 0E            [ 2]  104 	ldw	y, (0x0e, sp)
      00A1B2 17 0A            [ 2]  105 	ldw	(0x0a, sp), y
      00A1B4 16 0C            [ 2]  106 	ldw	y, (0x0c, sp)
      00A1B6 17 08            [ 2]  107 	ldw	(0x08, sp), y
      00A1B8 1E 0E            [ 2]  108 	ldw	x, (0x0e, sp)
      00A1BA 1D 00 01         [ 2]  109 	subw	x, #0x0001
      00A1BD 1F 0E            [ 2]  110 	ldw	(0x0e, sp), x
      00A1BF 1E 0C            [ 2]  111 	ldw	x, (0x0c, sp)
      00A1C1 24 01            [ 1]  112 	jrnc	00208$
      00A1C3 5A               [ 2]  113 	decw	x
      00A1C4                        114 00208$:
      00A1C4 1F 0C            [ 2]  115 	ldw	(0x0c, sp), x
      00A1C6 1E 0A            [ 2]  116 	ldw	x, (0x0a, sp)
      00A1C8 26 DD            [ 1]  117 	jrne	00102$
      00A1CA 1E 08            [ 2]  118 	ldw	x, (0x08, sp)
      00A1CC 26 D9            [ 1]  119 	jrne	00102$
      00A1CE                        120 00104$:
                                    121 ;	src\i2c.c: 19: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A1CE A6 01            [ 1]  122 	ld	a, #0x01
      00A1D0 CD 8A 92         [ 4]  123 	call	_I2C_GenerateSTART
                                    124 ;	src\i2c.c: 21: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A1D3 AE 03 E8         [ 2]  125 	ldw	x, #0x03e8
      00A1D6 1F 0E            [ 2]  126 	ldw	(0x0e, sp), x
      00A1D8 5F               [ 1]  127 	clrw	x
      00A1D9                        128 00106$:
      00A1D9 89               [ 2]  129 	pushw	x
      00A1DA AE 03 01         [ 2]  130 	ldw	x, #0x0301
      00A1DD CD 8B 74         [ 4]  131 	call	_I2C_CheckEvent
      00A1E0 85               [ 2]  132 	popw	x
      00A1E1 4D               [ 1]  133 	tnz	a
      00A1E2 26 19            [ 1]  134 	jrne	00108$
      00A1E4 1F 08            [ 2]  135 	ldw	(0x08, sp), x
      00A1E6 16 0E            [ 2]  136 	ldw	y, (0x0e, sp)
      00A1E8 17 0A            [ 2]  137 	ldw	(0x0a, sp), y
      00A1EA 16 0E            [ 2]  138 	ldw	y, (0x0e, sp)
      00A1EC 72 A2 00 01      [ 2]  139 	subw	y, #0x0001
      00A1F0 17 0E            [ 2]  140 	ldw	(0x0e, sp), y
      00A1F2 24 01            [ 1]  141 	jrnc	00212$
      00A1F4 5A               [ 2]  142 	decw	x
      00A1F5                        143 00212$:
      00A1F5 16 0A            [ 2]  144 	ldw	y, (0x0a, sp)
      00A1F7 26 E0            [ 1]  145 	jrne	00106$
      00A1F9 16 08            [ 2]  146 	ldw	y, (0x08, sp)
      00A1FB 26 DC            [ 1]  147 	jrne	00106$
      00A1FD                        148 00108$:
                                    149 ;	src\i2c.c: 22: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_TX);//Отсылаем адрес вызываемого устройства.
      00A1FD 4B 00            [ 1]  150 	push	#0x00
      00A1FF 7B 08            [ 1]  151 	ld	a, (0x08, sp)
      00A201 CD 8B 3C         [ 4]  152 	call	_I2C_Send7bitAddress
                                    153 ;	src\i2c.c: 24: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A204 AE 03 E8         [ 2]  154 	ldw	x, #0x03e8
      00A207 1F 0E            [ 2]  155 	ldw	(0x0e, sp), x
      00A209 5F               [ 1]  156 	clrw	x
      00A20A                        157 00110$:
      00A20A 89               [ 2]  158 	pushw	x
      00A20B AE 01 02         [ 2]  159 	ldw	x, #0x0102
      00A20E CD 8C 22         [ 4]  160 	call	_I2C_GetFlagStatus
      00A211 85               [ 2]  161 	popw	x
      00A212 4D               [ 1]  162 	tnz	a
      00A213 26 19            [ 1]  163 	jrne	00112$
      00A215 1F 08            [ 2]  164 	ldw	(0x08, sp), x
      00A217 16 0E            [ 2]  165 	ldw	y, (0x0e, sp)
      00A219 17 0A            [ 2]  166 	ldw	(0x0a, sp), y
      00A21B 16 0E            [ 2]  167 	ldw	y, (0x0e, sp)
      00A21D 72 A2 00 01      [ 2]  168 	subw	y, #0x0001
      00A221 17 0E            [ 2]  169 	ldw	(0x0e, sp), y
      00A223 24 01            [ 1]  170 	jrnc	00216$
      00A225 5A               [ 2]  171 	decw	x
      00A226                        172 00216$:
      00A226 16 0A            [ 2]  173 	ldw	y, (0x0a, sp)
      00A228 26 E0            [ 1]  174 	jrne	00110$
      00A22A 16 08            [ 2]  175 	ldw	y, (0x08, sp)
      00A22C 26 DC            [ 1]  176 	jrne	00110$
      00A22E                        177 00112$:
                                    178 ;	src\i2c.c: 25: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A22E C6 52 17         [ 1]  179 	ld	a, 0x5217
      00A231 C6 52 19         [ 1]  180 	ld	a, 0x5219
                                    181 ;	src\i2c.c: 26: while(countData) {//Повторяем пока не отправятся все данные.
      00A234 16 12            [ 2]  182 	ldw	y, (0x12, sp)
      00A236 17 08            [ 2]  183 	ldw	(0x08, sp), y
      00A238 16 05            [ 2]  184 	ldw	y, (0x05, sp)
      00A23A 17 0A            [ 2]  185 	ldw	(0x0a, sp), y
      00A23C                        186 00117$:
      00A23C 1E 0A            [ 2]  187 	ldw	x, (0x0a, sp)
      00A23E 27 36            [ 1]  188 	jreq	00119$
                                    189 ;	src\i2c.c: 28: while(!(I2C->SR1 & 128) && (time_out--));//Ждём когда буфер передающего регистра будет пуст.
      00A240 AE 03 E8         [ 2]  190 	ldw	x, #0x03e8
      00A243 1F 0E            [ 2]  191 	ldw	(0x0e, sp), x
      00A245 5F               [ 1]  192 	clrw	x
      00A246                        193 00114$:
      00A246 C6 52 17         [ 1]  194 	ld	a, 0x5217
      00A249 2B 19            [ 1]  195 	jrmi	00116$
      00A24B 1F 01            [ 2]  196 	ldw	(0x01, sp), x
      00A24D 16 0E            [ 2]  197 	ldw	y, (0x0e, sp)
      00A24F 17 03            [ 2]  198 	ldw	(0x03, sp), y
      00A251 16 0E            [ 2]  199 	ldw	y, (0x0e, sp)
      00A253 72 A2 00 01      [ 2]  200 	subw	y, #0x0001
      00A257 17 0E            [ 2]  201 	ldw	(0x0e, sp), y
      00A259 24 01            [ 1]  202 	jrnc	00221$
      00A25B 5A               [ 2]  203 	decw	x
      00A25C                        204 00221$:
      00A25C 16 03            [ 2]  205 	ldw	y, (0x03, sp)
      00A25E 26 E6            [ 1]  206 	jrne	00114$
      00A260 16 01            [ 2]  207 	ldw	y, (0x01, sp)
      00A262 26 E2            [ 1]  208 	jrne	00114$
      00A264                        209 00116$:
                                    210 ;	src\i2c.c: 29: I2C_SendData(*dataBuffer);
      00A264 1E 08            [ 2]  211 	ldw	x, (0x08, sp)
      00A266 F6               [ 1]  212 	ld	a, (x)
      00A267 CD 8B 70         [ 4]  213 	call	_I2C_SendData
                                    214 ;	src\i2c.c: 30: *dataBuffer++;
      00A26A 1E 08            [ 2]  215 	ldw	x, (0x08, sp)
      00A26C 5C               [ 1]  216 	incw	x
      00A26D 1F 08            [ 2]  217 	ldw	(0x08, sp), x
                                    218 ;	src\i2c.c: 31: countData--;
      00A26F 1E 0A            [ 2]  219 	ldw	x, (0x0a, sp)
      00A271 5A               [ 2]  220 	decw	x
      00A272 1F 0A            [ 2]  221 	ldw	(0x0a, sp), x
      00A274 20 C6            [ 2]  222 	jra	00117$
      00A276                        223 00119$:
                                    224 ;	src\i2c.c: 34: while((!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED)) && (time_out--));//Ждём окончания отправки данных.
      00A276 AE 03 E8         [ 2]  225 	ldw	x, #0x03e8
      00A279 1F 0E            [ 2]  226 	ldw	(0x0e, sp), x
      00A27B 5F               [ 1]  227 	clrw	x
      00A27C                        228 00121$:
      00A27C 89               [ 2]  229 	pushw	x
      00A27D AE 07 84         [ 2]  230 	ldw	x, #0x0784
      00A280 CD 8B 74         [ 4]  231 	call	_I2C_CheckEvent
      00A283 85               [ 2]  232 	popw	x
      00A284 4D               [ 1]  233 	tnz	a
      00A285 26 1E            [ 1]  234 	jrne	00123$
      00A287 1F 08            [ 2]  235 	ldw	(0x08, sp), x
      00A289 7B 0E            [ 1]  236 	ld	a, (0x0e, sp)
      00A28B 6B 0A            [ 1]  237 	ld	(0x0a, sp), a
      00A28D 7B 0F            [ 1]  238 	ld	a, (0x0f, sp)
      00A28F 16 0E            [ 2]  239 	ldw	y, (0x0e, sp)
      00A291 72 A2 00 01      [ 2]  240 	subw	y, #0x0001
      00A295 17 0E            [ 2]  241 	ldw	(0x0e, sp), y
      00A297 24 01            [ 1]  242 	jrnc	00226$
      00A299 5A               [ 2]  243 	decw	x
      00A29A                        244 00226$:
      00A29A 4D               [ 1]  245 	tnz	a
      00A29B 26 DF            [ 1]  246 	jrne	00121$
      00A29D 16 09            [ 2]  247 	ldw	y, (0x09, sp)
      00A29F 26 DB            [ 1]  248 	jrne	00121$
      00A2A1 0D 08            [ 1]  249 	tnz	(0x08, sp)
      00A2A3 26 D7            [ 1]  250 	jrne	00121$
      00A2A5                        251 00123$:
                                    252 ;	src\i2c.c: 35: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A2A5 A6 01            [ 1]  253 	ld	a, #0x01
      00A2A7 CD 8A BD         [ 4]  254 	call	_I2C_GenerateSTOP
                                    255 ;	src\i2c.c: 37: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
      00A2AA AE 03 E8         [ 2]  256 	ldw	x, #0x03e8
      00A2AD 1F 0E            [ 2]  257 	ldw	(0x0e, sp), x
      00A2AF 5F               [ 1]  258 	clrw	x
      00A2B0                        259 00125$:
      00A2B0 C6 52 11         [ 1]  260 	ld	a, 0x5211
      00A2B3 A5 02            [ 1]  261 	bcp	a, #0x02
      00A2B5 27 1E            [ 1]  262 	jreq	00128$
      00A2B7 1F 08            [ 2]  263 	ldw	(0x08, sp), x
      00A2B9 7B 0E            [ 1]  264 	ld	a, (0x0e, sp)
      00A2BB 6B 0A            [ 1]  265 	ld	(0x0a, sp), a
      00A2BD 7B 0F            [ 1]  266 	ld	a, (0x0f, sp)
      00A2BF 16 0E            [ 2]  267 	ldw	y, (0x0e, sp)
      00A2C1 72 A2 00 01      [ 2]  268 	subw	y, #0x0001
      00A2C5 17 0E            [ 2]  269 	ldw	(0x0e, sp), y
      00A2C7 24 01            [ 1]  270 	jrnc	00230$
      00A2C9 5A               [ 2]  271 	decw	x
      00A2CA                        272 00230$:
      00A2CA 4D               [ 1]  273 	tnz	a
      00A2CB 26 E3            [ 1]  274 	jrne	00125$
      00A2CD 16 09            [ 2]  275 	ldw	y, (0x09, sp)
      00A2CF 26 DF            [ 1]  276 	jrne	00125$
      00A2D1 0D 08            [ 1]  277 	tnz	(0x08, sp)
      00A2D3 26 DB            [ 1]  278 	jrne	00125$
      00A2D5                        279 00128$:
                                    280 ;	src\i2c.c: 38: }
      00A2D5 1E 10            [ 2]  281 	ldw	x, (16, sp)
      00A2D7 5B 13            [ 2]  282 	addw	sp, #19
      00A2D9 FC               [ 2]  283 	jp	(x)
                                    284 ;	src\i2c.c: 40: uint8_t I2C_Read_Byte(uint8_t Addr) {
                                    285 ;	-----------------------------------------
                                    286 ;	 function I2C_Read_Byte
                                    287 ;	-----------------------------------------
      00A2DA                        288 _I2C_Read_Byte:
      00A2DA 52 0A            [ 2]  289 	sub	sp, #10
      00A2DC 6B 06            [ 1]  290 	ld	(0x06, sp), a
                                    291 ;	src\i2c.c: 42: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A2DE AE 03 E8         [ 2]  292 	ldw	x, #0x03e8
      00A2E1 1F 09            [ 2]  293 	ldw	(0x09, sp), x
      00A2E3 5F               [ 1]  294 	clrw	x
      00A2E4 1F 07            [ 2]  295 	ldw	(0x07, sp), x
      00A2E6                        296 00102$:
      00A2E6 AE 03 02         [ 2]  297 	ldw	x, #0x0302
      00A2E9 CD 8C 22         [ 4]  298 	call	_I2C_GetFlagStatus
      00A2EC 4D               [ 1]  299 	tnz	a
      00A2ED 27 1E            [ 1]  300 	jreq	00104$
      00A2EF 16 09            [ 2]  301 	ldw	y, (0x09, sp)
      00A2F1 17 04            [ 2]  302 	ldw	(0x04, sp), y
      00A2F3 16 07            [ 2]  303 	ldw	y, (0x07, sp)
      00A2F5 17 02            [ 2]  304 	ldw	(0x02, sp), y
      00A2F7 1E 09            [ 2]  305 	ldw	x, (0x09, sp)
      00A2F9 1D 00 01         [ 2]  306 	subw	x, #0x0001
      00A2FC 1F 09            [ 2]  307 	ldw	(0x09, sp), x
      00A2FE 1E 07            [ 2]  308 	ldw	x, (0x07, sp)
      00A300 24 01            [ 1]  309 	jrnc	00179$
      00A302 5A               [ 2]  310 	decw	x
      00A303                        311 00179$:
      00A303 1F 07            [ 2]  312 	ldw	(0x07, sp), x
      00A305 1E 04            [ 2]  313 	ldw	x, (0x04, sp)
      00A307 26 DD            [ 1]  314 	jrne	00102$
      00A309 1E 02            [ 2]  315 	ldw	x, (0x02, sp)
      00A30B 26 D9            [ 1]  316 	jrne	00102$
      00A30D                        317 00104$:
                                    318 ;	src\i2c.c: 43: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A30D A6 01            [ 1]  319 	ld	a, #0x01
      00A30F CD 8A 92         [ 4]  320 	call	_I2C_GenerateSTART
                                    321 ;	src\i2c.c: 45: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A312 AE 03 E8         [ 2]  322 	ldw	x, #0x03e8
      00A315 1F 09            [ 2]  323 	ldw	(0x09, sp), x
      00A317 5F               [ 1]  324 	clrw	x
      00A318                        325 00106$:
      00A318 89               [ 2]  326 	pushw	x
      00A319 AE 03 01         [ 2]  327 	ldw	x, #0x0301
      00A31C CD 8B 74         [ 4]  328 	call	_I2C_CheckEvent
      00A31F 85               [ 2]  329 	popw	x
      00A320 4D               [ 1]  330 	tnz	a
      00A321 26 19            [ 1]  331 	jrne	00108$
      00A323 1F 02            [ 2]  332 	ldw	(0x02, sp), x
      00A325 16 09            [ 2]  333 	ldw	y, (0x09, sp)
      00A327 17 04            [ 2]  334 	ldw	(0x04, sp), y
      00A329 16 09            [ 2]  335 	ldw	y, (0x09, sp)
      00A32B 72 A2 00 01      [ 2]  336 	subw	y, #0x0001
      00A32F 17 09            [ 2]  337 	ldw	(0x09, sp), y
      00A331 24 01            [ 1]  338 	jrnc	00183$
      00A333 5A               [ 2]  339 	decw	x
      00A334                        340 00183$:
      00A334 16 04            [ 2]  341 	ldw	y, (0x04, sp)
      00A336 26 E0            [ 1]  342 	jrne	00106$
      00A338 16 02            [ 2]  343 	ldw	y, (0x02, sp)
      00A33A 26 DC            [ 1]  344 	jrne	00106$
      00A33C                        345 00108$:
                                    346 ;	src\i2c.c: 46: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства и бит приёма данных.
      00A33C 4B 01            [ 1]  347 	push	#0x01
      00A33E 7B 07            [ 1]  348 	ld	a, (0x07, sp)
      00A340 CD 8B 3C         [ 4]  349 	call	_I2C_Send7bitAddress
                                    350 ;	src\i2c.c: 48: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A343 AE 03 E8         [ 2]  351 	ldw	x, #0x03e8
      00A346 1F 09            [ 2]  352 	ldw	(0x09, sp), x
      00A348 5F               [ 1]  353 	clrw	x
      00A349                        354 00110$:
      00A349 89               [ 2]  355 	pushw	x
      00A34A AE 01 02         [ 2]  356 	ldw	x, #0x0102
      00A34D CD 8C 22         [ 4]  357 	call	_I2C_GetFlagStatus
      00A350 85               [ 2]  358 	popw	x
      00A351 4D               [ 1]  359 	tnz	a
      00A352 26 19            [ 1]  360 	jrne	00112$
      00A354 1F 02            [ 2]  361 	ldw	(0x02, sp), x
      00A356 16 09            [ 2]  362 	ldw	y, (0x09, sp)
      00A358 17 04            [ 2]  363 	ldw	(0x04, sp), y
      00A35A 16 09            [ 2]  364 	ldw	y, (0x09, sp)
      00A35C 72 A2 00 01      [ 2]  365 	subw	y, #0x0001
      00A360 17 09            [ 2]  366 	ldw	(0x09, sp), y
      00A362 24 01            [ 1]  367 	jrnc	00187$
      00A364 5A               [ 2]  368 	decw	x
      00A365                        369 00187$:
      00A365 16 04            [ 2]  370 	ldw	y, (0x04, sp)
      00A367 26 E0            [ 1]  371 	jrne	00110$
      00A369 16 02            [ 2]  372 	ldw	y, (0x02, sp)
      00A36B 26 DC            [ 1]  373 	jrne	00110$
      00A36D                        374 00112$:
                                    375 ;	src\i2c.c: 51: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
      00A36D 4F               [ 1]  376 	clr	a
      00A36E CD 8A E8         [ 4]  377 	call	_I2C_AcknowledgeConfig
                                    378 ;	src\i2c.c: 53: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A371 C6 52 17         [ 1]  379 	ld	a, 0x5217
      00A374 C6 52 19         [ 1]  380 	ld	a, 0x5219
                                    381 ;	src\i2c.c: 55: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A377 A6 01            [ 1]  382 	ld	a, #0x01
      00A379 CD 8A BD         [ 4]  383 	call	_I2C_GenerateSTOP
                                    384 ;	src\i2c.c: 58: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
      00A37C AE 03 E8         [ 2]  385 	ldw	x, #0x03e8
      00A37F 1F 09            [ 2]  386 	ldw	(0x09, sp), x
      00A381 5F               [ 1]  387 	clrw	x
      00A382                        388 00114$:
      00A382 89               [ 2]  389 	pushw	x
      00A383 AE 01 40         [ 2]  390 	ldw	x, #0x0140
      00A386 CD 8C 22         [ 4]  391 	call	_I2C_GetFlagStatus
      00A389 85               [ 2]  392 	popw	x
      00A38A 4D               [ 1]  393 	tnz	a
      00A38B 26 19            [ 1]  394 	jrne	00116$
      00A38D 1F 02            [ 2]  395 	ldw	(0x02, sp), x
      00A38F 16 09            [ 2]  396 	ldw	y, (0x09, sp)
      00A391 17 04            [ 2]  397 	ldw	(0x04, sp), y
      00A393 16 09            [ 2]  398 	ldw	y, (0x09, sp)
      00A395 72 A2 00 01      [ 2]  399 	subw	y, #0x0001
      00A399 17 09            [ 2]  400 	ldw	(0x09, sp), y
      00A39B 24 01            [ 1]  401 	jrnc	00191$
      00A39D 5A               [ 2]  402 	decw	x
      00A39E                        403 00191$:
      00A39E 16 04            [ 2]  404 	ldw	y, (0x04, sp)
      00A3A0 26 E0            [ 1]  405 	jrne	00114$
      00A3A2 16 02            [ 2]  406 	ldw	y, (0x02, sp)
      00A3A4 26 DC            [ 1]  407 	jrne	00114$
      00A3A6                        408 00116$:
                                    409 ;	src\i2c.c: 60: uint8_t read_byte = I2C_ReceiveData();//Читаем данные.
      00A3A6 CD 8B 38         [ 4]  410 	call	_I2C_ReceiveData
      00A3A9 6B 01            [ 1]  411 	ld	(0x01, sp), a
                                    412 ;	src\i2c.c: 63: while((I2C->CR2 & I2C_CR2_STOP)&& (time_out--));//Ждём остановки передачи и STOP на линии.
      00A3AB AE 03 E8         [ 2]  413 	ldw	x, #0x03e8
      00A3AE 1F 09            [ 2]  414 	ldw	(0x09, sp), x
      00A3B0 5F               [ 1]  415 	clrw	x
      00A3B1                        416 00118$:
      00A3B1 72 03 52 11 19   [ 2]  417 	btjf	0x5211, #1, 00120$
      00A3B6 1F 02            [ 2]  418 	ldw	(0x02, sp), x
      00A3B8 16 09            [ 2]  419 	ldw	y, (0x09, sp)
      00A3BA 17 04            [ 2]  420 	ldw	(0x04, sp), y
      00A3BC 16 09            [ 2]  421 	ldw	y, (0x09, sp)
      00A3BE 72 A2 00 01      [ 2]  422 	subw	y, #0x0001
      00A3C2 17 09            [ 2]  423 	ldw	(0x09, sp), y
      00A3C4 24 01            [ 1]  424 	jrnc	00195$
      00A3C6 5A               [ 2]  425 	decw	x
      00A3C7                        426 00195$:
      00A3C7 16 04            [ 2]  427 	ldw	y, (0x04, sp)
      00A3C9 26 E6            [ 1]  428 	jrne	00118$
      00A3CB 16 02            [ 2]  429 	ldw	y, (0x02, sp)
      00A3CD 26 E2            [ 1]  430 	jrne	00118$
      00A3CF                        431 00120$:
                                    432 ;	src\i2c.c: 64: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
      00A3CF A6 01            [ 1]  433 	ld	a, #0x01
      00A3D1 CD 8A E8         [ 4]  434 	call	_I2C_AcknowledgeConfig
                                    435 ;	src\i2c.c: 65: return read_byte;
      00A3D4 7B 01            [ 1]  436 	ld	a, (0x01, sp)
                                    437 ;	src\i2c.c: 66: }
      00A3D6 5B 0A            [ 2]  438 	addw	sp, #10
      00A3D8 81               [ 4]  439 	ret
                                    440 ;	src\i2c.c: 69: void I2C_Read_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
                                    441 ;	-----------------------------------------
                                    442 ;	 function I2C_Read_Bytes
                                    443 ;	-----------------------------------------
      00A3D9                        444 _I2C_Read_Bytes:
      00A3D9 52 0F            [ 2]  445 	sub	sp, #15
      00A3DB 6B 07            [ 1]  446 	ld	(0x07, sp), a
      00A3DD 1F 05            [ 2]  447 	ldw	(0x05, sp), x
                                    448 ;	src\i2c.c: 71: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A3DF AE 03 E8         [ 2]  449 	ldw	x, #0x03e8
      00A3E2 1F 0E            [ 2]  450 	ldw	(0x0e, sp), x
      00A3E4 5F               [ 1]  451 	clrw	x
      00A3E5 1F 0C            [ 2]  452 	ldw	(0x0c, sp), x
      00A3E7                        453 00102$:
      00A3E7 AE 03 02         [ 2]  454 	ldw	x, #0x0302
      00A3EA CD 8C 22         [ 4]  455 	call	_I2C_GetFlagStatus
      00A3ED 4D               [ 1]  456 	tnz	a
      00A3EE 27 1E            [ 1]  457 	jreq	00104$
      00A3F0 16 0E            [ 2]  458 	ldw	y, (0x0e, sp)
      00A3F2 17 0A            [ 2]  459 	ldw	(0x0a, sp), y
      00A3F4 16 0C            [ 2]  460 	ldw	y, (0x0c, sp)
      00A3F6 17 08            [ 2]  461 	ldw	(0x08, sp), y
      00A3F8 1E 0E            [ 2]  462 	ldw	x, (0x0e, sp)
      00A3FA 1D 00 01         [ 2]  463 	subw	x, #0x0001
      00A3FD 1F 0E            [ 2]  464 	ldw	(0x0e, sp), x
      00A3FF 1E 0C            [ 2]  465 	ldw	x, (0x0c, sp)
      00A401 24 01            [ 1]  466 	jrnc	00229$
      00A403 5A               [ 2]  467 	decw	x
      00A404                        468 00229$:
      00A404 1F 0C            [ 2]  469 	ldw	(0x0c, sp), x
      00A406 1E 0A            [ 2]  470 	ldw	x, (0x0a, sp)
      00A408 26 DD            [ 1]  471 	jrne	00102$
      00A40A 1E 08            [ 2]  472 	ldw	x, (0x08, sp)
      00A40C 26 D9            [ 1]  473 	jrne	00102$
      00A40E                        474 00104$:
                                    475 ;	src\i2c.c: 72: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A40E A6 01            [ 1]  476 	ld	a, #0x01
      00A410 CD 8A 92         [ 4]  477 	call	_I2C_GenerateSTART
                                    478 ;	src\i2c.c: 74: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A413 AE 03 E8         [ 2]  479 	ldw	x, #0x03e8
      00A416 1F 0E            [ 2]  480 	ldw	(0x0e, sp), x
      00A418 5F               [ 1]  481 	clrw	x
      00A419                        482 00106$:
      00A419 89               [ 2]  483 	pushw	x
      00A41A AE 03 01         [ 2]  484 	ldw	x, #0x0301
      00A41D CD 8B 74         [ 4]  485 	call	_I2C_CheckEvent
      00A420 85               [ 2]  486 	popw	x
      00A421 4D               [ 1]  487 	tnz	a
      00A422 26 19            [ 1]  488 	jrne	00108$
      00A424 1F 08            [ 2]  489 	ldw	(0x08, sp), x
      00A426 16 0E            [ 2]  490 	ldw	y, (0x0e, sp)
      00A428 17 0A            [ 2]  491 	ldw	(0x0a, sp), y
      00A42A 16 0E            [ 2]  492 	ldw	y, (0x0e, sp)
      00A42C 72 A2 00 01      [ 2]  493 	subw	y, #0x0001
      00A430 17 0E            [ 2]  494 	ldw	(0x0e, sp), y
      00A432 24 01            [ 1]  495 	jrnc	00233$
      00A434 5A               [ 2]  496 	decw	x
      00A435                        497 00233$:
      00A435 16 0A            [ 2]  498 	ldw	y, (0x0a, sp)
      00A437 26 E0            [ 1]  499 	jrne	00106$
      00A439 16 08            [ 2]  500 	ldw	y, (0x08, sp)
      00A43B 26 DC            [ 1]  501 	jrne	00106$
      00A43D                        502 00108$:
                                    503 ;	src\i2c.c: 75: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства.
      00A43D 4B 01            [ 1]  504 	push	#0x01
      00A43F 7B 08            [ 1]  505 	ld	a, (0x08, sp)
      00A441 CD 8B 3C         [ 4]  506 	call	_I2C_Send7bitAddress
                                    507 ;	src\i2c.c: 77: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A444 AE 03 E8         [ 2]  508 	ldw	x, #0x03e8
      00A447 1F 0E            [ 2]  509 	ldw	(0x0e, sp), x
      00A449 5F               [ 1]  510 	clrw	x
      00A44A                        511 00110$:
      00A44A 89               [ 2]  512 	pushw	x
      00A44B AE 01 02         [ 2]  513 	ldw	x, #0x0102
      00A44E CD 8C 22         [ 4]  514 	call	_I2C_GetFlagStatus
      00A451 85               [ 2]  515 	popw	x
      00A452 4D               [ 1]  516 	tnz	a
      00A453 26 19            [ 1]  517 	jrne	00112$
      00A455 1F 08            [ 2]  518 	ldw	(0x08, sp), x
      00A457 16 0E            [ 2]  519 	ldw	y, (0x0e, sp)
      00A459 17 0A            [ 2]  520 	ldw	(0x0a, sp), y
      00A45B 16 0E            [ 2]  521 	ldw	y, (0x0e, sp)
      00A45D 72 A2 00 01      [ 2]  522 	subw	y, #0x0001
      00A461 17 0E            [ 2]  523 	ldw	(0x0e, sp), y
      00A463 24 01            [ 1]  524 	jrnc	00237$
      00A465 5A               [ 2]  525 	decw	x
      00A466                        526 00237$:
      00A466 16 0A            [ 2]  527 	ldw	y, (0x0a, sp)
      00A468 26 E0            [ 1]  528 	jrne	00110$
      00A46A 16 08            [ 2]  529 	ldw	y, (0x08, sp)
      00A46C 26 DC            [ 1]  530 	jrne	00110$
      00A46E                        531 00112$:
                                    532 ;	src\i2c.c: 79: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A46E C6 52 17         [ 1]  533 	ld	a, 0x5217
      00A471 C6 52 19         [ 1]  534 	ld	a, 0x5219
                                    535 ;	src\i2c.c: 80: if(countData > 3) {//Если принимаем больше трёх байтов.
      00A474 1E 05            [ 2]  536 	ldw	x, (0x05, sp)
      00A476 A3 00 03         [ 2]  537 	cpw	x, #0x0003
      00A479 23 55            [ 2]  538 	jrule	00147$
                                    539 ;	src\i2c.c: 81: while(countData > 3) {
      00A47B 16 12            [ 2]  540 	ldw	y, (0x12, sp)
      00A47D 17 08            [ 2]  541 	ldw	(0x08, sp), y
      00A47F 16 05            [ 2]  542 	ldw	y, (0x05, sp)
      00A481 17 0A            [ 2]  543 	ldw	(0x0a, sp), y
      00A483                        544 00117$:
      00A483 1E 0A            [ 2]  545 	ldw	x, (0x0a, sp)
      00A485 A3 00 03         [ 2]  546 	cpw	x, #0x0003
      00A488 23 42            [ 2]  547 	jrule	00159$
                                    548 ;	src\i2c.c: 83: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
      00A48A AE 03 E8         [ 2]  549 	ldw	x, #0x03e8
      00A48D 1F 0E            [ 2]  550 	ldw	(0x0e, sp), x
      00A48F 5F               [ 1]  551 	clrw	x
      00A490 1F 0C            [ 2]  552 	ldw	(0x0c, sp), x
      00A492                        553 00114$:
      00A492 AE 01 04         [ 2]  554 	ldw	x, #0x0104
      00A495 CD 8C 22         [ 4]  555 	call	_I2C_GetFlagStatus
      00A498 6B 04            [ 1]  556 	ld	(0x04, sp), a
      00A49A 26 1E            [ 1]  557 	jrne	00116$
      00A49C 16 0E            [ 2]  558 	ldw	y, (0x0e, sp)
      00A49E 17 03            [ 2]  559 	ldw	(0x03, sp), y
      00A4A0 16 0C            [ 2]  560 	ldw	y, (0x0c, sp)
      00A4A2 17 01            [ 2]  561 	ldw	(0x01, sp), y
      00A4A4 1E 0E            [ 2]  562 	ldw	x, (0x0e, sp)
      00A4A6 1D 00 01         [ 2]  563 	subw	x, #0x0001
      00A4A9 1F 0E            [ 2]  564 	ldw	(0x0e, sp), x
      00A4AB 1E 0C            [ 2]  565 	ldw	x, (0x0c, sp)
      00A4AD 24 01            [ 1]  566 	jrnc	00243$
      00A4AF 5A               [ 2]  567 	decw	x
      00A4B0                        568 00243$:
      00A4B0 1F 0C            [ 2]  569 	ldw	(0x0c, sp), x
      00A4B2 1E 03            [ 2]  570 	ldw	x, (0x03, sp)
      00A4B4 26 DC            [ 1]  571 	jrne	00114$
      00A4B6 1E 01            [ 2]  572 	ldw	x, (0x01, sp)
      00A4B8 26 D8            [ 1]  573 	jrne	00114$
      00A4BA                        574 00116$:
                                    575 ;	src\i2c.c: 84: *dataBuffer = I2C_ReceiveData();
      00A4BA CD 8B 38         [ 4]  576 	call	_I2C_ReceiveData
      00A4BD 1E 08            [ 2]  577 	ldw	x, (0x08, sp)
      00A4BF F7               [ 1]  578 	ld	(x), a
                                    579 ;	src\i2c.c: 85: *dataBuffer++;
      00A4C0 1E 08            [ 2]  580 	ldw	x, (0x08, sp)
      00A4C2 5C               [ 1]  581 	incw	x
      00A4C3 1F 08            [ 2]  582 	ldw	(0x08, sp), x
                                    583 ;	src\i2c.c: 86: countData--;
      00A4C5 1E 0A            [ 2]  584 	ldw	x, (0x0a, sp)
      00A4C7 5A               [ 2]  585 	decw	x
      00A4C8 1F 0A            [ 2]  586 	ldw	(0x0a, sp), x
      00A4CA 20 B7            [ 2]  587 	jra	00117$
      00A4CC                        588 00159$:
      00A4CC 16 08            [ 2]  589 	ldw	y, (0x08, sp)
      00A4CE 17 12            [ 2]  590 	ldw	(0x12, sp), y
                                    591 ;	src\i2c.c: 90: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
      00A4D0                        592 00147$:
      00A4D0 AE 03 E8         [ 2]  593 	ldw	x, #0x03e8
      00A4D3 1F 0E            [ 2]  594 	ldw	(0x0e, sp), x
      00A4D5 5F               [ 1]  595 	clrw	x
      00A4D6                        596 00123$:
      00A4D6 89               [ 2]  597 	pushw	x
      00A4D7 AE 01 04         [ 2]  598 	ldw	x, #0x0104
      00A4DA CD 8C 22         [ 4]  599 	call	_I2C_GetFlagStatus
      00A4DD 85               [ 2]  600 	popw	x
      00A4DE 4D               [ 1]  601 	tnz	a
      00A4DF 26 1E            [ 1]  602 	jrne	00125$
      00A4E1 1F 08            [ 2]  603 	ldw	(0x08, sp), x
      00A4E3 7B 0E            [ 1]  604 	ld	a, (0x0e, sp)
      00A4E5 6B 0A            [ 1]  605 	ld	(0x0a, sp), a
      00A4E7 7B 0F            [ 1]  606 	ld	a, (0x0f, sp)
      00A4E9 16 0E            [ 2]  607 	ldw	y, (0x0e, sp)
      00A4EB 72 A2 00 01      [ 2]  608 	subw	y, #0x0001
      00A4EF 17 0E            [ 2]  609 	ldw	(0x0e, sp), y
      00A4F1 24 01            [ 1]  610 	jrnc	00248$
      00A4F3 5A               [ 2]  611 	decw	x
      00A4F4                        612 00248$:
      00A4F4 4D               [ 1]  613 	tnz	a
      00A4F5 26 DF            [ 1]  614 	jrne	00123$
      00A4F7 16 09            [ 2]  615 	ldw	y, (0x09, sp)
      00A4F9 26 DB            [ 1]  616 	jrne	00123$
      00A4FB 0D 08            [ 1]  617 	tnz	(0x08, sp)
      00A4FD 26 D7            [ 1]  618 	jrne	00123$
      00A4FF                        619 00125$:
                                    620 ;	src\i2c.c: 91: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
      00A4FF 4F               [ 1]  621 	clr	a
      00A500 CD 8A E8         [ 4]  622 	call	_I2C_AcknowledgeConfig
                                    623 ;	src\i2c.c: 92: *dataBuffer = I2C_ReceiveData();
      00A503 1E 12            [ 2]  624 	ldw	x, (0x12, sp)
      00A505 89               [ 2]  625 	pushw	x
      00A506 CD 8B 38         [ 4]  626 	call	_I2C_ReceiveData
      00A509 85               [ 2]  627 	popw	x
      00A50A F7               [ 1]  628 	ld	(x), a
                                    629 ;	src\i2c.c: 93: *dataBuffer++;
      00A50B 5C               [ 1]  630 	incw	x
      00A50C 1F 12            [ 2]  631 	ldw	(0x12, sp), x
                                    632 ;	src\i2c.c: 94: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A50E A6 01            [ 1]  633 	ld	a, #0x01
      00A510 CD 8A BD         [ 4]  634 	call	_I2C_GenerateSTOP
                                    635 ;	src\i2c.c: 95: *dataBuffer = I2C_ReceiveData();
      00A513 1E 12            [ 2]  636 	ldw	x, (0x12, sp)
      00A515 89               [ 2]  637 	pushw	x
      00A516 CD 8B 38         [ 4]  638 	call	_I2C_ReceiveData
      00A519 85               [ 2]  639 	popw	x
      00A51A F7               [ 1]  640 	ld	(x), a
                                    641 ;	src\i2c.c: 96: *dataBuffer++;
      00A51B 5C               [ 1]  642 	incw	x
      00A51C 1F 12            [ 2]  643 	ldw	(0x12, sp), x
                                    644 ;	src\i2c.c: 98: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
      00A51E AE 03 E8         [ 2]  645 	ldw	x, #0x03e8
      00A521 1F 0E            [ 2]  646 	ldw	(0x0e, sp), x
      00A523 5F               [ 1]  647 	clrw	x
      00A524                        648 00127$:
      00A524 89               [ 2]  649 	pushw	x
      00A525 AE 01 40         [ 2]  650 	ldw	x, #0x0140
      00A528 CD 8C 22         [ 4]  651 	call	_I2C_GetFlagStatus
      00A52B 85               [ 2]  652 	popw	x
      00A52C 4D               [ 1]  653 	tnz	a
      00A52D 26 1E            [ 1]  654 	jrne	00129$
      00A52F 1F 08            [ 2]  655 	ldw	(0x08, sp), x
      00A531 7B 0E            [ 1]  656 	ld	a, (0x0e, sp)
      00A533 6B 0A            [ 1]  657 	ld	(0x0a, sp), a
      00A535 7B 0F            [ 1]  658 	ld	a, (0x0f, sp)
      00A537 16 0E            [ 2]  659 	ldw	y, (0x0e, sp)
      00A539 72 A2 00 01      [ 2]  660 	subw	y, #0x0001
      00A53D 17 0E            [ 2]  661 	ldw	(0x0e, sp), y
      00A53F 24 01            [ 1]  662 	jrnc	00252$
      00A541 5A               [ 2]  663 	decw	x
      00A542                        664 00252$:
      00A542 4D               [ 1]  665 	tnz	a
      00A543 26 DF            [ 1]  666 	jrne	00127$
      00A545 16 09            [ 2]  667 	ldw	y, (0x09, sp)
      00A547 26 DB            [ 1]  668 	jrne	00127$
      00A549 0D 08            [ 1]  669 	tnz	(0x08, sp)
      00A54B 26 D7            [ 1]  670 	jrne	00127$
      00A54D                        671 00129$:
                                    672 ;	src\i2c.c: 99: *dataBuffer = I2C_ReceiveData();
      00A54D 1E 12            [ 2]  673 	ldw	x, (0x12, sp)
      00A54F 89               [ 2]  674 	pushw	x
      00A550 CD 8B 38         [ 4]  675 	call	_I2C_ReceiveData
      00A553 85               [ 2]  676 	popw	x
      00A554 F7               [ 1]  677 	ld	(x), a
                                    678 ;	src\i2c.c: 101: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
      00A555 AE 03 E8         [ 2]  679 	ldw	x, #0x03e8
      00A558 1F 0E            [ 2]  680 	ldw	(0x0e, sp), x
      00A55A 5F               [ 1]  681 	clrw	x
      00A55B                        682 00131$:
      00A55B 72 03 52 11 1E   [ 2]  683 	btjf	0x5211, #1, 00133$
      00A560 1F 08            [ 2]  684 	ldw	(0x08, sp), x
      00A562 7B 0E            [ 1]  685 	ld	a, (0x0e, sp)
      00A564 6B 0A            [ 1]  686 	ld	(0x0a, sp), a
      00A566 7B 0F            [ 1]  687 	ld	a, (0x0f, sp)
      00A568 16 0E            [ 2]  688 	ldw	y, (0x0e, sp)
      00A56A 72 A2 00 01      [ 2]  689 	subw	y, #0x0001
      00A56E 17 0E            [ 2]  690 	ldw	(0x0e, sp), y
      00A570 24 01            [ 1]  691 	jrnc	00256$
      00A572 5A               [ 2]  692 	decw	x
      00A573                        693 00256$:
      00A573 4D               [ 1]  694 	tnz	a
      00A574 26 E5            [ 1]  695 	jrne	00131$
      00A576 16 09            [ 2]  696 	ldw	y, (0x09, sp)
      00A578 26 E1            [ 1]  697 	jrne	00131$
      00A57A 0D 08            [ 1]  698 	tnz	(0x08, sp)
      00A57C 26 DD            [ 1]  699 	jrne	00131$
      00A57E                        700 00133$:
                                    701 ;	src\i2c.c: 102: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
      00A57E A6 01            [ 1]  702 	ld	a, #0x01
      00A580 CD 8A E8         [ 4]  703 	call	_I2C_AcknowledgeConfig
                                    704 ;	src\i2c.c: 103: }
      00A583 1E 10            [ 2]  705 	ldw	x, (16, sp)
      00A585 5B 13            [ 2]  706 	addw	sp, #19
      00A587 FC               [ 2]  707 	jp	(x)
                                    708 	.area CODE
                                    709 	.area CONST
                                    710 	.area INITIALIZER
                                    711 	.area CABS (ABS)
