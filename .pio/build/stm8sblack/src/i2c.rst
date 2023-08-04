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
      009FA6                         67 _I2C_Setup:
                                     68 ;	src/i2c.c: 9: I2C_DeInit();
      009FA6 CD 8C 0C         [ 4]   69 	call	_I2C_DeInit
                                     70 ;	src/i2c.c: 12: I2C_Init(I2C_MAX_STANDARD_FREQ, I2C_ID_ADDRESS, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, I2C_MAX_INPUT_FREQ);
      009FA9 4B 10            [ 1]   71 	push	#0x10
      009FAB 4B 00            [ 1]   72 	push	#0x00
      009FAD 4B 01            [ 1]   73 	push	#0x01
      009FAF 4B 00            [ 1]   74 	push	#0x00
      009FB1 4B EE            [ 1]   75 	push	#0xee
      009FB3 4B 00            [ 1]   76 	push	#0x00
      009FB5 4B A0            [ 1]   77 	push	#0xa0
      009FB7 4B 86            [ 1]   78 	push	#0x86
      009FB9 4B 01            [ 1]   79 	push	#0x01
      009FBB 4B 00            [ 1]   80 	push	#0x00
      009FBD CD 8C 31         [ 4]   81 	call	_I2C_Init
                                     82 ;	src/i2c.c: 13: I2C_Cmd(ENABLE);
      009FC0 A6 01            [ 1]   83 	ld	a, #0x01
                                     84 ;	src/i2c.c: 14: }
      009FC2 CC 8D F5         [ 2]   85 	jp	_I2C_Cmd
                                     86 ;	src/i2c.c: 16: void I2C_Send_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
                                     87 ;	-----------------------------------------
                                     88 ;	 function I2C_Send_Bytes
                                     89 ;	-----------------------------------------
      009FC5                         90 _I2C_Send_Bytes:
      009FC5 52 0F            [ 2]   91 	sub	sp, #15
      009FC7 6B 07            [ 1]   92 	ld	(0x07, sp), a
      009FC9 1F 05            [ 2]   93 	ldw	(0x05, sp), x
                                     94 ;	src/i2c.c: 18: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      009FCB AE 03 E8         [ 2]   95 	ldw	x, #0x03e8
      009FCE 1F 0E            [ 2]   96 	ldw	(0x0e, sp), x
      009FD0 5F               [ 1]   97 	clrw	x
      009FD1 1F 0C            [ 2]   98 	ldw	(0x0c, sp), x
      009FD3                         99 00102$:
      009FD3 AE 03 02         [ 2]  100 	ldw	x, #0x0302
      009FD6 CD 90 F4         [ 4]  101 	call	_I2C_GetFlagStatus
      009FD9 4D               [ 1]  102 	tnz	a
      009FDA 27 1E            [ 1]  103 	jreq	00104$
      009FDC 16 0E            [ 2]  104 	ldw	y, (0x0e, sp)
      009FDE 17 0A            [ 2]  105 	ldw	(0x0a, sp), y
      009FE0 16 0C            [ 2]  106 	ldw	y, (0x0c, sp)
      009FE2 17 08            [ 2]  107 	ldw	(0x08, sp), y
      009FE4 1E 0E            [ 2]  108 	ldw	x, (0x0e, sp)
      009FE6 1D 00 01         [ 2]  109 	subw	x, #0x0001
      009FE9 1F 0E            [ 2]  110 	ldw	(0x0e, sp), x
      009FEB 1E 0C            [ 2]  111 	ldw	x, (0x0c, sp)
      009FED 24 01            [ 1]  112 	jrnc	00208$
      009FEF 5A               [ 2]  113 	decw	x
      009FF0                        114 00208$:
      009FF0 1F 0C            [ 2]  115 	ldw	(0x0c, sp), x
      009FF2 1E 0A            [ 2]  116 	ldw	x, (0x0a, sp)
      009FF4 26 DD            [ 1]  117 	jrne	00102$
      009FF6 1E 08            [ 2]  118 	ldw	x, (0x08, sp)
      009FF8 26 D9            [ 1]  119 	jrne	00102$
      009FFA                        120 00104$:
                                    121 ;	src/i2c.c: 19: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      009FFA A6 01            [ 1]  122 	ld	a, #0x01
      009FFC CD 8E 4B         [ 4]  123 	call	_I2C_GenerateSTART
                                    124 ;	src/i2c.c: 21: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      009FFF AE 03 E8         [ 2]  125 	ldw	x, #0x03e8
      00A002 1F 0E            [ 2]  126 	ldw	(0x0e, sp), x
      00A004 5F               [ 1]  127 	clrw	x
      00A005                        128 00106$:
      00A005 89               [ 2]  129 	pushw	x
      00A006 AE 03 01         [ 2]  130 	ldw	x, #0x0301
      00A009 CD 90 1D         [ 4]  131 	call	_I2C_CheckEvent
      00A00C 85               [ 2]  132 	popw	x
      00A00D 4D               [ 1]  133 	tnz	a
      00A00E 26 19            [ 1]  134 	jrne	00108$
      00A010 1F 08            [ 2]  135 	ldw	(0x08, sp), x
      00A012 16 0E            [ 2]  136 	ldw	y, (0x0e, sp)
      00A014 17 0A            [ 2]  137 	ldw	(0x0a, sp), y
      00A016 16 0E            [ 2]  138 	ldw	y, (0x0e, sp)
      00A018 72 A2 00 01      [ 2]  139 	subw	y, #0x0001
      00A01C 17 0E            [ 2]  140 	ldw	(0x0e, sp), y
      00A01E 24 01            [ 1]  141 	jrnc	00212$
      00A020 5A               [ 2]  142 	decw	x
      00A021                        143 00212$:
      00A021 16 0A            [ 2]  144 	ldw	y, (0x0a, sp)
      00A023 26 E0            [ 1]  145 	jrne	00106$
      00A025 16 08            [ 2]  146 	ldw	y, (0x08, sp)
      00A027 26 DC            [ 1]  147 	jrne	00106$
      00A029                        148 00108$:
                                    149 ;	src/i2c.c: 22: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_TX);//Отсылаем адрес вызываемого устройства.
      00A029 4B 00            [ 1]  150 	push	#0x00
      00A02B 7B 08            [ 1]  151 	ld	a, (0x08, sp)
      00A02D CD 8F E5         [ 4]  152 	call	_I2C_Send7bitAddress
                                    153 ;	src/i2c.c: 24: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A030 AE 03 E8         [ 2]  154 	ldw	x, #0x03e8
      00A033 1F 0E            [ 2]  155 	ldw	(0x0e, sp), x
      00A035 5F               [ 1]  156 	clrw	x
      00A036                        157 00110$:
      00A036 89               [ 2]  158 	pushw	x
      00A037 AE 01 02         [ 2]  159 	ldw	x, #0x0102
      00A03A CD 90 F4         [ 4]  160 	call	_I2C_GetFlagStatus
      00A03D 85               [ 2]  161 	popw	x
      00A03E 4D               [ 1]  162 	tnz	a
      00A03F 26 19            [ 1]  163 	jrne	00112$
      00A041 1F 08            [ 2]  164 	ldw	(0x08, sp), x
      00A043 16 0E            [ 2]  165 	ldw	y, (0x0e, sp)
      00A045 17 0A            [ 2]  166 	ldw	(0x0a, sp), y
      00A047 16 0E            [ 2]  167 	ldw	y, (0x0e, sp)
      00A049 72 A2 00 01      [ 2]  168 	subw	y, #0x0001
      00A04D 17 0E            [ 2]  169 	ldw	(0x0e, sp), y
      00A04F 24 01            [ 1]  170 	jrnc	00216$
      00A051 5A               [ 2]  171 	decw	x
      00A052                        172 00216$:
      00A052 16 0A            [ 2]  173 	ldw	y, (0x0a, sp)
      00A054 26 E0            [ 1]  174 	jrne	00110$
      00A056 16 08            [ 2]  175 	ldw	y, (0x08, sp)
      00A058 26 DC            [ 1]  176 	jrne	00110$
      00A05A                        177 00112$:
                                    178 ;	src/i2c.c: 25: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A05A C6 52 17         [ 1]  179 	ld	a, 0x5217
      00A05D C6 52 19         [ 1]  180 	ld	a, 0x5219
                                    181 ;	src/i2c.c: 26: while(countData) {//Повторяем пока не отправятся все данные.
      00A060 16 12            [ 2]  182 	ldw	y, (0x12, sp)
      00A062 17 08            [ 2]  183 	ldw	(0x08, sp), y
      00A064 16 05            [ 2]  184 	ldw	y, (0x05, sp)
      00A066 17 0A            [ 2]  185 	ldw	(0x0a, sp), y
      00A068                        186 00117$:
      00A068 1E 0A            [ 2]  187 	ldw	x, (0x0a, sp)
      00A06A 27 36            [ 1]  188 	jreq	00119$
                                    189 ;	src/i2c.c: 28: while(!(I2C->SR1 & 128) && (time_out--));//Ждём когда буфер передающего регистра будет пуст.
      00A06C AE 03 E8         [ 2]  190 	ldw	x, #0x03e8
      00A06F 1F 0E            [ 2]  191 	ldw	(0x0e, sp), x
      00A071 5F               [ 1]  192 	clrw	x
      00A072                        193 00114$:
      00A072 C6 52 17         [ 1]  194 	ld	a, 0x5217
      00A075 2B 19            [ 1]  195 	jrmi	00116$
      00A077 1F 01            [ 2]  196 	ldw	(0x01, sp), x
      00A079 16 0E            [ 2]  197 	ldw	y, (0x0e, sp)
      00A07B 17 03            [ 2]  198 	ldw	(0x03, sp), y
      00A07D 16 0E            [ 2]  199 	ldw	y, (0x0e, sp)
      00A07F 72 A2 00 01      [ 2]  200 	subw	y, #0x0001
      00A083 17 0E            [ 2]  201 	ldw	(0x0e, sp), y
      00A085 24 01            [ 1]  202 	jrnc	00221$
      00A087 5A               [ 2]  203 	decw	x
      00A088                        204 00221$:
      00A088 16 03            [ 2]  205 	ldw	y, (0x03, sp)
      00A08A 26 E6            [ 1]  206 	jrne	00114$
      00A08C 16 01            [ 2]  207 	ldw	y, (0x01, sp)
      00A08E 26 E2            [ 1]  208 	jrne	00114$
      00A090                        209 00116$:
                                    210 ;	src/i2c.c: 29: I2C_SendData(*dataBuffer);
      00A090 1E 08            [ 2]  211 	ldw	x, (0x08, sp)
      00A092 F6               [ 1]  212 	ld	a, (x)
      00A093 CD 90 19         [ 4]  213 	call	_I2C_SendData
                                    214 ;	src/i2c.c: 30: *dataBuffer++;
      00A096 1E 08            [ 2]  215 	ldw	x, (0x08, sp)
      00A098 5C               [ 1]  216 	incw	x
      00A099 1F 08            [ 2]  217 	ldw	(0x08, sp), x
                                    218 ;	src/i2c.c: 31: countData--;
      00A09B 1E 0A            [ 2]  219 	ldw	x, (0x0a, sp)
      00A09D 5A               [ 2]  220 	decw	x
      00A09E 1F 0A            [ 2]  221 	ldw	(0x0a, sp), x
      00A0A0 20 C6            [ 2]  222 	jra	00117$
      00A0A2                        223 00119$:
                                    224 ;	src/i2c.c: 34: while((!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED)) && (time_out--));//Ждём окончания отправки данных.
      00A0A2 AE 03 E8         [ 2]  225 	ldw	x, #0x03e8
      00A0A5 1F 0E            [ 2]  226 	ldw	(0x0e, sp), x
      00A0A7 5F               [ 1]  227 	clrw	x
      00A0A8                        228 00121$:
      00A0A8 89               [ 2]  229 	pushw	x
      00A0A9 AE 07 84         [ 2]  230 	ldw	x, #0x0784
      00A0AC CD 90 1D         [ 4]  231 	call	_I2C_CheckEvent
      00A0AF 85               [ 2]  232 	popw	x
      00A0B0 4D               [ 1]  233 	tnz	a
      00A0B1 26 19            [ 1]  234 	jrne	00123$
      00A0B3 1F 08            [ 2]  235 	ldw	(0x08, sp), x
      00A0B5 16 0E            [ 2]  236 	ldw	y, (0x0e, sp)
      00A0B7 17 0A            [ 2]  237 	ldw	(0x0a, sp), y
      00A0B9 16 0E            [ 2]  238 	ldw	y, (0x0e, sp)
      00A0BB 72 A2 00 01      [ 2]  239 	subw	y, #0x0001
      00A0BF 17 0E            [ 2]  240 	ldw	(0x0e, sp), y
      00A0C1 24 01            [ 1]  241 	jrnc	00226$
      00A0C3 5A               [ 2]  242 	decw	x
      00A0C4                        243 00226$:
      00A0C4 16 0A            [ 2]  244 	ldw	y, (0x0a, sp)
      00A0C6 26 E0            [ 1]  245 	jrne	00121$
      00A0C8 16 08            [ 2]  246 	ldw	y, (0x08, sp)
      00A0CA 26 DC            [ 1]  247 	jrne	00121$
      00A0CC                        248 00123$:
                                    249 ;	src/i2c.c: 35: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A0CC A6 01            [ 1]  250 	ld	a, #0x01
      00A0CE CD 8E 76         [ 4]  251 	call	_I2C_GenerateSTOP
                                    252 ;	src/i2c.c: 37: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
      00A0D1 AE 03 E8         [ 2]  253 	ldw	x, #0x03e8
      00A0D4 1F 0E            [ 2]  254 	ldw	(0x0e, sp), x
      00A0D6 5F               [ 1]  255 	clrw	x
      00A0D7                        256 00125$:
      00A0D7 C6 52 11         [ 1]  257 	ld	a, 0x5211
      00A0DA A5 02            [ 1]  258 	bcp	a, #0x02
      00A0DC 27 20            [ 1]  259 	jreq	00128$
      00A0DE 1F 08            [ 2]  260 	ldw	(0x08, sp), x
      00A0E0 7B 0E            [ 1]  261 	ld	a, (0x0e, sp)
      00A0E2 88               [ 1]  262 	push	a
      00A0E3 7B 10            [ 1]  263 	ld	a, (0x10, sp)
      00A0E5 6B 0C            [ 1]  264 	ld	(0x0c, sp), a
      00A0E7 84               [ 1]  265 	pop	a
      00A0E8 16 0E            [ 2]  266 	ldw	y, (0x0e, sp)
      00A0EA 72 A2 00 01      [ 2]  267 	subw	y, #0x0001
      00A0EE 17 0E            [ 2]  268 	ldw	(0x0e, sp), y
      00A0F0 24 01            [ 1]  269 	jrnc	00230$
      00A0F2 5A               [ 2]  270 	decw	x
      00A0F3                        271 00230$:
      00A0F3 0D 0B            [ 1]  272 	tnz	(0x0b, sp)
      00A0F5 26 E0            [ 1]  273 	jrne	00125$
      00A0F7 4D               [ 1]  274 	tnz	a
      00A0F8 26 DD            [ 1]  275 	jrne	00125$
      00A0FA 16 08            [ 2]  276 	ldw	y, (0x08, sp)
      00A0FC 26 D9            [ 1]  277 	jrne	00125$
      00A0FE                        278 00128$:
                                    279 ;	src/i2c.c: 38: }
      00A0FE 1E 10            [ 2]  280 	ldw	x, (16, sp)
      00A100 5B 13            [ 2]  281 	addw	sp, #19
      00A102 FC               [ 2]  282 	jp	(x)
                                    283 ;	src/i2c.c: 40: uint8_t I2C_Read_Byte(uint8_t Addr) {
                                    284 ;	-----------------------------------------
                                    285 ;	 function I2C_Read_Byte
                                    286 ;	-----------------------------------------
      00A103                        287 _I2C_Read_Byte:
      00A103 52 0A            [ 2]  288 	sub	sp, #10
      00A105 6B 06            [ 1]  289 	ld	(0x06, sp), a
                                    290 ;	src/i2c.c: 42: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A107 AE 03 E8         [ 2]  291 	ldw	x, #0x03e8
      00A10A 1F 09            [ 2]  292 	ldw	(0x09, sp), x
      00A10C 5F               [ 1]  293 	clrw	x
      00A10D 1F 07            [ 2]  294 	ldw	(0x07, sp), x
      00A10F                        295 00102$:
      00A10F AE 03 02         [ 2]  296 	ldw	x, #0x0302
      00A112 CD 90 F4         [ 4]  297 	call	_I2C_GetFlagStatus
      00A115 4D               [ 1]  298 	tnz	a
      00A116 27 1E            [ 1]  299 	jreq	00104$
      00A118 16 09            [ 2]  300 	ldw	y, (0x09, sp)
      00A11A 17 04            [ 2]  301 	ldw	(0x04, sp), y
      00A11C 16 07            [ 2]  302 	ldw	y, (0x07, sp)
      00A11E 17 02            [ 2]  303 	ldw	(0x02, sp), y
      00A120 1E 09            [ 2]  304 	ldw	x, (0x09, sp)
      00A122 1D 00 01         [ 2]  305 	subw	x, #0x0001
      00A125 1F 09            [ 2]  306 	ldw	(0x09, sp), x
      00A127 1E 07            [ 2]  307 	ldw	x, (0x07, sp)
      00A129 24 01            [ 1]  308 	jrnc	00179$
      00A12B 5A               [ 2]  309 	decw	x
      00A12C                        310 00179$:
      00A12C 1F 07            [ 2]  311 	ldw	(0x07, sp), x
      00A12E 1E 04            [ 2]  312 	ldw	x, (0x04, sp)
      00A130 26 DD            [ 1]  313 	jrne	00102$
      00A132 1E 02            [ 2]  314 	ldw	x, (0x02, sp)
      00A134 26 D9            [ 1]  315 	jrne	00102$
      00A136                        316 00104$:
                                    317 ;	src/i2c.c: 43: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A136 A6 01            [ 1]  318 	ld	a, #0x01
      00A138 CD 8E 4B         [ 4]  319 	call	_I2C_GenerateSTART
                                    320 ;	src/i2c.c: 45: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A13B AE 03 E8         [ 2]  321 	ldw	x, #0x03e8
      00A13E 1F 09            [ 2]  322 	ldw	(0x09, sp), x
      00A140 5F               [ 1]  323 	clrw	x
      00A141                        324 00106$:
      00A141 89               [ 2]  325 	pushw	x
      00A142 AE 03 01         [ 2]  326 	ldw	x, #0x0301
      00A145 CD 90 1D         [ 4]  327 	call	_I2C_CheckEvent
      00A148 85               [ 2]  328 	popw	x
      00A149 4D               [ 1]  329 	tnz	a
      00A14A 26 19            [ 1]  330 	jrne	00108$
      00A14C 1F 02            [ 2]  331 	ldw	(0x02, sp), x
      00A14E 16 09            [ 2]  332 	ldw	y, (0x09, sp)
      00A150 17 04            [ 2]  333 	ldw	(0x04, sp), y
      00A152 16 09            [ 2]  334 	ldw	y, (0x09, sp)
      00A154 72 A2 00 01      [ 2]  335 	subw	y, #0x0001
      00A158 17 09            [ 2]  336 	ldw	(0x09, sp), y
      00A15A 24 01            [ 1]  337 	jrnc	00183$
      00A15C 5A               [ 2]  338 	decw	x
      00A15D                        339 00183$:
      00A15D 16 04            [ 2]  340 	ldw	y, (0x04, sp)
      00A15F 26 E0            [ 1]  341 	jrne	00106$
      00A161 16 02            [ 2]  342 	ldw	y, (0x02, sp)
      00A163 26 DC            [ 1]  343 	jrne	00106$
      00A165                        344 00108$:
                                    345 ;	src/i2c.c: 46: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства и бит приёма данных.
      00A165 4B 01            [ 1]  346 	push	#0x01
      00A167 7B 07            [ 1]  347 	ld	a, (0x07, sp)
      00A169 CD 8F E5         [ 4]  348 	call	_I2C_Send7bitAddress
                                    349 ;	src/i2c.c: 48: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A16C AE 03 E8         [ 2]  350 	ldw	x, #0x03e8
      00A16F 1F 09            [ 2]  351 	ldw	(0x09, sp), x
      00A171 5F               [ 1]  352 	clrw	x
      00A172                        353 00110$:
      00A172 89               [ 2]  354 	pushw	x
      00A173 AE 01 02         [ 2]  355 	ldw	x, #0x0102
      00A176 CD 90 F4         [ 4]  356 	call	_I2C_GetFlagStatus
      00A179 85               [ 2]  357 	popw	x
      00A17A 4D               [ 1]  358 	tnz	a
      00A17B 26 19            [ 1]  359 	jrne	00112$
      00A17D 1F 02            [ 2]  360 	ldw	(0x02, sp), x
      00A17F 16 09            [ 2]  361 	ldw	y, (0x09, sp)
      00A181 17 04            [ 2]  362 	ldw	(0x04, sp), y
      00A183 16 09            [ 2]  363 	ldw	y, (0x09, sp)
      00A185 72 A2 00 01      [ 2]  364 	subw	y, #0x0001
      00A189 17 09            [ 2]  365 	ldw	(0x09, sp), y
      00A18B 24 01            [ 1]  366 	jrnc	00187$
      00A18D 5A               [ 2]  367 	decw	x
      00A18E                        368 00187$:
      00A18E 16 04            [ 2]  369 	ldw	y, (0x04, sp)
      00A190 26 E0            [ 1]  370 	jrne	00110$
      00A192 16 02            [ 2]  371 	ldw	y, (0x02, sp)
      00A194 26 DC            [ 1]  372 	jrne	00110$
      00A196                        373 00112$:
                                    374 ;	src/i2c.c: 51: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
      00A196 4F               [ 1]  375 	clr	a
      00A197 CD 8E F7         [ 4]  376 	call	_I2C_AcknowledgeConfig
                                    377 ;	src/i2c.c: 53: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A19A C6 52 17         [ 1]  378 	ld	a, 0x5217
      00A19D C6 52 19         [ 1]  379 	ld	a, 0x5219
                                    380 ;	src/i2c.c: 55: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A1A0 A6 01            [ 1]  381 	ld	a, #0x01
      00A1A2 CD 8E 76         [ 4]  382 	call	_I2C_GenerateSTOP
                                    383 ;	src/i2c.c: 58: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
      00A1A5 AE 03 E8         [ 2]  384 	ldw	x, #0x03e8
      00A1A8 1F 09            [ 2]  385 	ldw	(0x09, sp), x
      00A1AA 5F               [ 1]  386 	clrw	x
      00A1AB                        387 00114$:
      00A1AB 89               [ 2]  388 	pushw	x
      00A1AC AE 01 40         [ 2]  389 	ldw	x, #0x0140
      00A1AF CD 90 F4         [ 4]  390 	call	_I2C_GetFlagStatus
      00A1B2 85               [ 2]  391 	popw	x
      00A1B3 4D               [ 1]  392 	tnz	a
      00A1B4 26 19            [ 1]  393 	jrne	00116$
      00A1B6 1F 02            [ 2]  394 	ldw	(0x02, sp), x
      00A1B8 16 09            [ 2]  395 	ldw	y, (0x09, sp)
      00A1BA 17 04            [ 2]  396 	ldw	(0x04, sp), y
      00A1BC 16 09            [ 2]  397 	ldw	y, (0x09, sp)
      00A1BE 72 A2 00 01      [ 2]  398 	subw	y, #0x0001
      00A1C2 17 09            [ 2]  399 	ldw	(0x09, sp), y
      00A1C4 24 01            [ 1]  400 	jrnc	00191$
      00A1C6 5A               [ 2]  401 	decw	x
      00A1C7                        402 00191$:
      00A1C7 16 04            [ 2]  403 	ldw	y, (0x04, sp)
      00A1C9 26 E0            [ 1]  404 	jrne	00114$
      00A1CB 16 02            [ 2]  405 	ldw	y, (0x02, sp)
      00A1CD 26 DC            [ 1]  406 	jrne	00114$
      00A1CF                        407 00116$:
                                    408 ;	src/i2c.c: 60: uint8_t read_byte = I2C_ReceiveData();//Читаем данные.
      00A1CF CD 8F E1         [ 4]  409 	call	_I2C_ReceiveData
      00A1D2 6B 01            [ 1]  410 	ld	(0x01, sp), a
                                    411 ;	src/i2c.c: 63: while((I2C->CR2 & I2C_CR2_STOP)&& (time_out--));//Ждём остановки передачи и STOP на линии.
      00A1D4 AE 03 E8         [ 2]  412 	ldw	x, #0x03e8
      00A1D7 1F 09            [ 2]  413 	ldw	(0x09, sp), x
      00A1D9 5F               [ 1]  414 	clrw	x
      00A1DA                        415 00118$:
      00A1DA 72 03 52 11 19   [ 2]  416 	btjf	0x5211, #1, 00120$
      00A1DF 1F 02            [ 2]  417 	ldw	(0x02, sp), x
      00A1E1 16 09            [ 2]  418 	ldw	y, (0x09, sp)
      00A1E3 17 04            [ 2]  419 	ldw	(0x04, sp), y
      00A1E5 16 09            [ 2]  420 	ldw	y, (0x09, sp)
      00A1E7 72 A2 00 01      [ 2]  421 	subw	y, #0x0001
      00A1EB 17 09            [ 2]  422 	ldw	(0x09, sp), y
      00A1ED 24 01            [ 1]  423 	jrnc	00195$
      00A1EF 5A               [ 2]  424 	decw	x
      00A1F0                        425 00195$:
      00A1F0 16 04            [ 2]  426 	ldw	y, (0x04, sp)
      00A1F2 26 E6            [ 1]  427 	jrne	00118$
      00A1F4 16 02            [ 2]  428 	ldw	y, (0x02, sp)
      00A1F6 26 E2            [ 1]  429 	jrne	00118$
      00A1F8                        430 00120$:
                                    431 ;	src/i2c.c: 64: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
      00A1F8 A6 01            [ 1]  432 	ld	a, #0x01
      00A1FA CD 8E F7         [ 4]  433 	call	_I2C_AcknowledgeConfig
                                    434 ;	src/i2c.c: 65: return read_byte;
      00A1FD 7B 01            [ 1]  435 	ld	a, (0x01, sp)
                                    436 ;	src/i2c.c: 66: }
      00A1FF 5B 0A            [ 2]  437 	addw	sp, #10
      00A201 81               [ 4]  438 	ret
                                    439 ;	src/i2c.c: 69: void I2C_Read_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
                                    440 ;	-----------------------------------------
                                    441 ;	 function I2C_Read_Bytes
                                    442 ;	-----------------------------------------
      00A202                        443 _I2C_Read_Bytes:
      00A202 52 0F            [ 2]  444 	sub	sp, #15
      00A204 6B 07            [ 1]  445 	ld	(0x07, sp), a
      00A206 1F 05            [ 2]  446 	ldw	(0x05, sp), x
                                    447 ;	src/i2c.c: 71: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A208 AE 03 E8         [ 2]  448 	ldw	x, #0x03e8
      00A20B 1F 0E            [ 2]  449 	ldw	(0x0e, sp), x
      00A20D 5F               [ 1]  450 	clrw	x
      00A20E 1F 0C            [ 2]  451 	ldw	(0x0c, sp), x
      00A210                        452 00102$:
      00A210 AE 03 02         [ 2]  453 	ldw	x, #0x0302
      00A213 CD 90 F4         [ 4]  454 	call	_I2C_GetFlagStatus
      00A216 4D               [ 1]  455 	tnz	a
      00A217 27 1E            [ 1]  456 	jreq	00104$
      00A219 16 0E            [ 2]  457 	ldw	y, (0x0e, sp)
      00A21B 17 0A            [ 2]  458 	ldw	(0x0a, sp), y
      00A21D 16 0C            [ 2]  459 	ldw	y, (0x0c, sp)
      00A21F 17 08            [ 2]  460 	ldw	(0x08, sp), y
      00A221 1E 0E            [ 2]  461 	ldw	x, (0x0e, sp)
      00A223 1D 00 01         [ 2]  462 	subw	x, #0x0001
      00A226 1F 0E            [ 2]  463 	ldw	(0x0e, sp), x
      00A228 1E 0C            [ 2]  464 	ldw	x, (0x0c, sp)
      00A22A 24 01            [ 1]  465 	jrnc	00229$
      00A22C 5A               [ 2]  466 	decw	x
      00A22D                        467 00229$:
      00A22D 1F 0C            [ 2]  468 	ldw	(0x0c, sp), x
      00A22F 1E 0A            [ 2]  469 	ldw	x, (0x0a, sp)
      00A231 26 DD            [ 1]  470 	jrne	00102$
      00A233 1E 08            [ 2]  471 	ldw	x, (0x08, sp)
      00A235 26 D9            [ 1]  472 	jrne	00102$
      00A237                        473 00104$:
                                    474 ;	src/i2c.c: 72: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A237 A6 01            [ 1]  475 	ld	a, #0x01
      00A239 CD 8E 4B         [ 4]  476 	call	_I2C_GenerateSTART
                                    477 ;	src/i2c.c: 74: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A23C AE 03 E8         [ 2]  478 	ldw	x, #0x03e8
      00A23F 1F 0E            [ 2]  479 	ldw	(0x0e, sp), x
      00A241 5F               [ 1]  480 	clrw	x
      00A242                        481 00106$:
      00A242 89               [ 2]  482 	pushw	x
      00A243 AE 03 01         [ 2]  483 	ldw	x, #0x0301
      00A246 CD 90 1D         [ 4]  484 	call	_I2C_CheckEvent
      00A249 85               [ 2]  485 	popw	x
      00A24A 4D               [ 1]  486 	tnz	a
      00A24B 26 19            [ 1]  487 	jrne	00108$
      00A24D 1F 08            [ 2]  488 	ldw	(0x08, sp), x
      00A24F 16 0E            [ 2]  489 	ldw	y, (0x0e, sp)
      00A251 17 0A            [ 2]  490 	ldw	(0x0a, sp), y
      00A253 16 0E            [ 2]  491 	ldw	y, (0x0e, sp)
      00A255 72 A2 00 01      [ 2]  492 	subw	y, #0x0001
      00A259 17 0E            [ 2]  493 	ldw	(0x0e, sp), y
      00A25B 24 01            [ 1]  494 	jrnc	00233$
      00A25D 5A               [ 2]  495 	decw	x
      00A25E                        496 00233$:
      00A25E 16 0A            [ 2]  497 	ldw	y, (0x0a, sp)
      00A260 26 E0            [ 1]  498 	jrne	00106$
      00A262 16 08            [ 2]  499 	ldw	y, (0x08, sp)
      00A264 26 DC            [ 1]  500 	jrne	00106$
      00A266                        501 00108$:
                                    502 ;	src/i2c.c: 75: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства.
      00A266 4B 01            [ 1]  503 	push	#0x01
      00A268 7B 08            [ 1]  504 	ld	a, (0x08, sp)
      00A26A CD 8F E5         [ 4]  505 	call	_I2C_Send7bitAddress
                                    506 ;	src/i2c.c: 77: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A26D AE 03 E8         [ 2]  507 	ldw	x, #0x03e8
      00A270 1F 0E            [ 2]  508 	ldw	(0x0e, sp), x
      00A272 5F               [ 1]  509 	clrw	x
      00A273                        510 00110$:
      00A273 89               [ 2]  511 	pushw	x
      00A274 AE 01 02         [ 2]  512 	ldw	x, #0x0102
      00A277 CD 90 F4         [ 4]  513 	call	_I2C_GetFlagStatus
      00A27A 85               [ 2]  514 	popw	x
      00A27B 4D               [ 1]  515 	tnz	a
      00A27C 26 19            [ 1]  516 	jrne	00112$
      00A27E 1F 08            [ 2]  517 	ldw	(0x08, sp), x
      00A280 16 0E            [ 2]  518 	ldw	y, (0x0e, sp)
      00A282 17 0A            [ 2]  519 	ldw	(0x0a, sp), y
      00A284 16 0E            [ 2]  520 	ldw	y, (0x0e, sp)
      00A286 72 A2 00 01      [ 2]  521 	subw	y, #0x0001
      00A28A 17 0E            [ 2]  522 	ldw	(0x0e, sp), y
      00A28C 24 01            [ 1]  523 	jrnc	00237$
      00A28E 5A               [ 2]  524 	decw	x
      00A28F                        525 00237$:
      00A28F 16 0A            [ 2]  526 	ldw	y, (0x0a, sp)
      00A291 26 E0            [ 1]  527 	jrne	00110$
      00A293 16 08            [ 2]  528 	ldw	y, (0x08, sp)
      00A295 26 DC            [ 1]  529 	jrne	00110$
      00A297                        530 00112$:
                                    531 ;	src/i2c.c: 79: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A297 C6 52 17         [ 1]  532 	ld	a, 0x5217
      00A29A C6 52 19         [ 1]  533 	ld	a, 0x5219
                                    534 ;	src/i2c.c: 80: if(countData > 3) {//Если принимаем больше трёх байтов.
      00A29D 1E 05            [ 2]  535 	ldw	x, (0x05, sp)
      00A29F A3 00 03         [ 2]  536 	cpw	x, #0x0003
      00A2A2 23 55            [ 2]  537 	jrule	00147$
                                    538 ;	src/i2c.c: 81: while(countData > 3) {
      00A2A4 16 12            [ 2]  539 	ldw	y, (0x12, sp)
      00A2A6 17 08            [ 2]  540 	ldw	(0x08, sp), y
      00A2A8 16 05            [ 2]  541 	ldw	y, (0x05, sp)
      00A2AA 17 0A            [ 2]  542 	ldw	(0x0a, sp), y
      00A2AC                        543 00117$:
      00A2AC 1E 0A            [ 2]  544 	ldw	x, (0x0a, sp)
      00A2AE A3 00 03         [ 2]  545 	cpw	x, #0x0003
      00A2B1 23 42            [ 2]  546 	jrule	00159$
                                    547 ;	src/i2c.c: 83: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
      00A2B3 AE 03 E8         [ 2]  548 	ldw	x, #0x03e8
      00A2B6 1F 0E            [ 2]  549 	ldw	(0x0e, sp), x
      00A2B8 5F               [ 1]  550 	clrw	x
      00A2B9 1F 0C            [ 2]  551 	ldw	(0x0c, sp), x
      00A2BB                        552 00114$:
      00A2BB AE 01 04         [ 2]  553 	ldw	x, #0x0104
      00A2BE CD 90 F4         [ 4]  554 	call	_I2C_GetFlagStatus
      00A2C1 6B 04            [ 1]  555 	ld	(0x04, sp), a
      00A2C3 26 1E            [ 1]  556 	jrne	00116$
      00A2C5 16 0E            [ 2]  557 	ldw	y, (0x0e, sp)
      00A2C7 17 03            [ 2]  558 	ldw	(0x03, sp), y
      00A2C9 16 0C            [ 2]  559 	ldw	y, (0x0c, sp)
      00A2CB 17 01            [ 2]  560 	ldw	(0x01, sp), y
      00A2CD 1E 0E            [ 2]  561 	ldw	x, (0x0e, sp)
      00A2CF 1D 00 01         [ 2]  562 	subw	x, #0x0001
      00A2D2 1F 0E            [ 2]  563 	ldw	(0x0e, sp), x
      00A2D4 1E 0C            [ 2]  564 	ldw	x, (0x0c, sp)
      00A2D6 24 01            [ 1]  565 	jrnc	00243$
      00A2D8 5A               [ 2]  566 	decw	x
      00A2D9                        567 00243$:
      00A2D9 1F 0C            [ 2]  568 	ldw	(0x0c, sp), x
      00A2DB 1E 03            [ 2]  569 	ldw	x, (0x03, sp)
      00A2DD 26 DC            [ 1]  570 	jrne	00114$
      00A2DF 1E 01            [ 2]  571 	ldw	x, (0x01, sp)
      00A2E1 26 D8            [ 1]  572 	jrne	00114$
      00A2E3                        573 00116$:
                                    574 ;	src/i2c.c: 84: *dataBuffer = I2C_ReceiveData();
      00A2E3 CD 8F E1         [ 4]  575 	call	_I2C_ReceiveData
      00A2E6 1E 08            [ 2]  576 	ldw	x, (0x08, sp)
      00A2E8 F7               [ 1]  577 	ld	(x), a
                                    578 ;	src/i2c.c: 85: *dataBuffer++;
      00A2E9 1E 08            [ 2]  579 	ldw	x, (0x08, sp)
      00A2EB 5C               [ 1]  580 	incw	x
      00A2EC 1F 08            [ 2]  581 	ldw	(0x08, sp), x
                                    582 ;	src/i2c.c: 86: countData--;
      00A2EE 1E 0A            [ 2]  583 	ldw	x, (0x0a, sp)
      00A2F0 5A               [ 2]  584 	decw	x
      00A2F1 1F 0A            [ 2]  585 	ldw	(0x0a, sp), x
      00A2F3 20 B7            [ 2]  586 	jra	00117$
      00A2F5                        587 00159$:
      00A2F5 16 08            [ 2]  588 	ldw	y, (0x08, sp)
      00A2F7 17 12            [ 2]  589 	ldw	(0x12, sp), y
                                    590 ;	src/i2c.c: 90: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
      00A2F9                        591 00147$:
      00A2F9 AE 03 E8         [ 2]  592 	ldw	x, #0x03e8
      00A2FC 1F 0E            [ 2]  593 	ldw	(0x0e, sp), x
      00A2FE 5F               [ 1]  594 	clrw	x
      00A2FF                        595 00123$:
      00A2FF 89               [ 2]  596 	pushw	x
      00A300 AE 01 04         [ 2]  597 	ldw	x, #0x0104
      00A303 CD 90 F4         [ 4]  598 	call	_I2C_GetFlagStatus
      00A306 85               [ 2]  599 	popw	x
      00A307 4D               [ 1]  600 	tnz	a
      00A308 26 19            [ 1]  601 	jrne	00125$
      00A30A 1F 08            [ 2]  602 	ldw	(0x08, sp), x
      00A30C 16 0E            [ 2]  603 	ldw	y, (0x0e, sp)
      00A30E 17 0A            [ 2]  604 	ldw	(0x0a, sp), y
      00A310 16 0E            [ 2]  605 	ldw	y, (0x0e, sp)
      00A312 72 A2 00 01      [ 2]  606 	subw	y, #0x0001
      00A316 17 0E            [ 2]  607 	ldw	(0x0e, sp), y
      00A318 24 01            [ 1]  608 	jrnc	00248$
      00A31A 5A               [ 2]  609 	decw	x
      00A31B                        610 00248$:
      00A31B 16 0A            [ 2]  611 	ldw	y, (0x0a, sp)
      00A31D 26 E0            [ 1]  612 	jrne	00123$
      00A31F 16 08            [ 2]  613 	ldw	y, (0x08, sp)
      00A321 26 DC            [ 1]  614 	jrne	00123$
      00A323                        615 00125$:
                                    616 ;	src/i2c.c: 91: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
      00A323 4F               [ 1]  617 	clr	a
      00A324 CD 8E F7         [ 4]  618 	call	_I2C_AcknowledgeConfig
                                    619 ;	src/i2c.c: 92: *dataBuffer = I2C_ReceiveData();
      00A327 1E 12            [ 2]  620 	ldw	x, (0x12, sp)
      00A329 89               [ 2]  621 	pushw	x
      00A32A CD 8F E1         [ 4]  622 	call	_I2C_ReceiveData
      00A32D 85               [ 2]  623 	popw	x
      00A32E F7               [ 1]  624 	ld	(x), a
                                    625 ;	src/i2c.c: 93: *dataBuffer++;
      00A32F 5C               [ 1]  626 	incw	x
      00A330 1F 12            [ 2]  627 	ldw	(0x12, sp), x
                                    628 ;	src/i2c.c: 94: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A332 A6 01            [ 1]  629 	ld	a, #0x01
      00A334 CD 8E 76         [ 4]  630 	call	_I2C_GenerateSTOP
                                    631 ;	src/i2c.c: 95: *dataBuffer = I2C_ReceiveData();
      00A337 1E 12            [ 2]  632 	ldw	x, (0x12, sp)
      00A339 89               [ 2]  633 	pushw	x
      00A33A CD 8F E1         [ 4]  634 	call	_I2C_ReceiveData
      00A33D 85               [ 2]  635 	popw	x
      00A33E F7               [ 1]  636 	ld	(x), a
                                    637 ;	src/i2c.c: 96: *dataBuffer++;
      00A33F 5C               [ 1]  638 	incw	x
      00A340 1F 12            [ 2]  639 	ldw	(0x12, sp), x
                                    640 ;	src/i2c.c: 98: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
      00A342 AE 03 E8         [ 2]  641 	ldw	x, #0x03e8
      00A345 1F 0E            [ 2]  642 	ldw	(0x0e, sp), x
      00A347 5F               [ 1]  643 	clrw	x
      00A348                        644 00127$:
      00A348 89               [ 2]  645 	pushw	x
      00A349 AE 01 40         [ 2]  646 	ldw	x, #0x0140
      00A34C CD 90 F4         [ 4]  647 	call	_I2C_GetFlagStatus
      00A34F 85               [ 2]  648 	popw	x
      00A350 4D               [ 1]  649 	tnz	a
      00A351 26 19            [ 1]  650 	jrne	00129$
      00A353 1F 08            [ 2]  651 	ldw	(0x08, sp), x
      00A355 16 0E            [ 2]  652 	ldw	y, (0x0e, sp)
      00A357 17 0A            [ 2]  653 	ldw	(0x0a, sp), y
      00A359 16 0E            [ 2]  654 	ldw	y, (0x0e, sp)
      00A35B 72 A2 00 01      [ 2]  655 	subw	y, #0x0001
      00A35F 17 0E            [ 2]  656 	ldw	(0x0e, sp), y
      00A361 24 01            [ 1]  657 	jrnc	00252$
      00A363 5A               [ 2]  658 	decw	x
      00A364                        659 00252$:
      00A364 16 0A            [ 2]  660 	ldw	y, (0x0a, sp)
      00A366 26 E0            [ 1]  661 	jrne	00127$
      00A368 16 08            [ 2]  662 	ldw	y, (0x08, sp)
      00A36A 26 DC            [ 1]  663 	jrne	00127$
      00A36C                        664 00129$:
                                    665 ;	src/i2c.c: 99: *dataBuffer = I2C_ReceiveData();
      00A36C 1E 12            [ 2]  666 	ldw	x, (0x12, sp)
      00A36E 89               [ 2]  667 	pushw	x
      00A36F CD 8F E1         [ 4]  668 	call	_I2C_ReceiveData
      00A372 85               [ 2]  669 	popw	x
      00A373 F7               [ 1]  670 	ld	(x), a
                                    671 ;	src/i2c.c: 101: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
      00A374 AE 03 E8         [ 2]  672 	ldw	x, #0x03e8
      00A377 1F 0E            [ 2]  673 	ldw	(0x0e, sp), x
      00A379 5F               [ 1]  674 	clrw	x
      00A37A                        675 00131$:
      00A37A 72 03 52 11 20   [ 2]  676 	btjf	0x5211, #1, 00133$
      00A37F 1F 08            [ 2]  677 	ldw	(0x08, sp), x
      00A381 7B 0E            [ 1]  678 	ld	a, (0x0e, sp)
      00A383 88               [ 1]  679 	push	a
      00A384 7B 10            [ 1]  680 	ld	a, (0x10, sp)
      00A386 6B 0C            [ 1]  681 	ld	(0x0c, sp), a
      00A388 84               [ 1]  682 	pop	a
      00A389 16 0E            [ 2]  683 	ldw	y, (0x0e, sp)
      00A38B 72 A2 00 01      [ 2]  684 	subw	y, #0x0001
      00A38F 17 0E            [ 2]  685 	ldw	(0x0e, sp), y
      00A391 24 01            [ 1]  686 	jrnc	00256$
      00A393 5A               [ 2]  687 	decw	x
      00A394                        688 00256$:
      00A394 0D 0B            [ 1]  689 	tnz	(0x0b, sp)
      00A396 26 E2            [ 1]  690 	jrne	00131$
      00A398 4D               [ 1]  691 	tnz	a
      00A399 26 DF            [ 1]  692 	jrne	00131$
      00A39B 16 08            [ 2]  693 	ldw	y, (0x08, sp)
      00A39D 26 DB            [ 1]  694 	jrne	00131$
      00A39F                        695 00133$:
                                    696 ;	src/i2c.c: 102: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
      00A39F A6 01            [ 1]  697 	ld	a, #0x01
      00A3A1 CD 8E F7         [ 4]  698 	call	_I2C_AcknowledgeConfig
                                    699 ;	src/i2c.c: 103: }
      00A3A4 1E 10            [ 2]  700 	ldw	x, (16, sp)
      00A3A6 5B 13            [ 2]  701 	addw	sp, #19
      00A3A8 FC               [ 2]  702 	jp	(x)
                                    703 	.area CODE
                                    704 	.area CONST
                                    705 	.area INITIALIZER
                                    706 	.area CABS (ABS)
