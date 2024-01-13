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
      009EB8                         67 _I2C_Setup:
                                     68 ;	src\i2c.c: 9: I2C_DeInit();
      009EB8 CD 88 4E         [ 4]   69 	call	_I2C_DeInit
                                     70 ;	src\i2c.c: 12: I2C_Init(I2C_MAX_STANDARD_FREQ, I2C_ID_ADDRESS, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, I2C_MAX_INPUT_FREQ);
      009EBB 4B 10            [ 1]   71 	push	#0x10
      009EBD 4B 00            [ 1]   72 	push	#0x00
      009EBF 4B 01            [ 1]   73 	push	#0x01
      009EC1 4B 00            [ 1]   74 	push	#0x00
      009EC3 4B EE            [ 1]   75 	push	#0xee
      009EC5 4B 00            [ 1]   76 	push	#0x00
      009EC7 4B A0            [ 1]   77 	push	#0xa0
      009EC9 4B 86            [ 1]   78 	push	#0x86
      009ECB 4B 01            [ 1]   79 	push	#0x01
      009ECD 4B 00            [ 1]   80 	push	#0x00
      009ECF CD 88 73         [ 4]   81 	call	_I2C_Init
                                     82 ;	src\i2c.c: 13: I2C_Cmd(ENABLE);
      009ED2 A6 01            [ 1]   83 	ld	a, #0x01
                                     84 ;	src\i2c.c: 14: }
      009ED4 CC 8A 2B         [ 2]   85 	jp	_I2C_Cmd
                                     86 ;	src\i2c.c: 16: void I2C_Send_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
                                     87 ;	-----------------------------------------
                                     88 ;	 function I2C_Send_Bytes
                                     89 ;	-----------------------------------------
      009ED7                         90 _I2C_Send_Bytes:
      009ED7 52 0F            [ 2]   91 	sub	sp, #15
      009ED9 6B 07            [ 1]   92 	ld	(0x07, sp), a
      009EDB 1F 05            [ 2]   93 	ldw	(0x05, sp), x
                                     94 ;	src\i2c.c: 18: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      009EDD AE 03 E8         [ 2]   95 	ldw	x, #0x03e8
      009EE0 1F 0E            [ 2]   96 	ldw	(0x0e, sp), x
      009EE2 5F               [ 1]   97 	clrw	x
      009EE3 1F 0C            [ 2]   98 	ldw	(0x0c, sp), x
      009EE5                         99 00102$:
      009EE5 AE 03 02         [ 2]  100 	ldw	x, #0x0302
      009EE8 CD 8B E6         [ 4]  101 	call	_I2C_GetFlagStatus
      009EEB 4D               [ 1]  102 	tnz	a
      009EEC 27 1E            [ 1]  103 	jreq	00104$
      009EEE 16 0E            [ 2]  104 	ldw	y, (0x0e, sp)
      009EF0 17 0A            [ 2]  105 	ldw	(0x0a, sp), y
      009EF2 16 0C            [ 2]  106 	ldw	y, (0x0c, sp)
      009EF4 17 08            [ 2]  107 	ldw	(0x08, sp), y
      009EF6 1E 0E            [ 2]  108 	ldw	x, (0x0e, sp)
      009EF8 1D 00 01         [ 2]  109 	subw	x, #0x0001
      009EFB 1F 0E            [ 2]  110 	ldw	(0x0e, sp), x
      009EFD 1E 0C            [ 2]  111 	ldw	x, (0x0c, sp)
      009EFF 24 01            [ 1]  112 	jrnc	00208$
      009F01 5A               [ 2]  113 	decw	x
      009F02                        114 00208$:
      009F02 1F 0C            [ 2]  115 	ldw	(0x0c, sp), x
      009F04 1E 0A            [ 2]  116 	ldw	x, (0x0a, sp)
      009F06 26 DD            [ 1]  117 	jrne	00102$
      009F08 1E 08            [ 2]  118 	ldw	x, (0x08, sp)
      009F0A 26 D9            [ 1]  119 	jrne	00102$
      009F0C                        120 00104$:
                                    121 ;	src\i2c.c: 19: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      009F0C A6 01            [ 1]  122 	ld	a, #0x01
      009F0E CD 8A 56         [ 4]  123 	call	_I2C_GenerateSTART
                                    124 ;	src\i2c.c: 21: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      009F11 AE 03 E8         [ 2]  125 	ldw	x, #0x03e8
      009F14 1F 0E            [ 2]  126 	ldw	(0x0e, sp), x
      009F16 5F               [ 1]  127 	clrw	x
      009F17                        128 00106$:
      009F17 89               [ 2]  129 	pushw	x
      009F18 AE 03 01         [ 2]  130 	ldw	x, #0x0301
      009F1B CD 8B 38         [ 4]  131 	call	_I2C_CheckEvent
      009F1E 85               [ 2]  132 	popw	x
      009F1F 4D               [ 1]  133 	tnz	a
      009F20 26 19            [ 1]  134 	jrne	00108$
      009F22 1F 08            [ 2]  135 	ldw	(0x08, sp), x
      009F24 16 0E            [ 2]  136 	ldw	y, (0x0e, sp)
      009F26 17 0A            [ 2]  137 	ldw	(0x0a, sp), y
      009F28 16 0E            [ 2]  138 	ldw	y, (0x0e, sp)
      009F2A 72 A2 00 01      [ 2]  139 	subw	y, #0x0001
      009F2E 17 0E            [ 2]  140 	ldw	(0x0e, sp), y
      009F30 24 01            [ 1]  141 	jrnc	00212$
      009F32 5A               [ 2]  142 	decw	x
      009F33                        143 00212$:
      009F33 16 0A            [ 2]  144 	ldw	y, (0x0a, sp)
      009F35 26 E0            [ 1]  145 	jrne	00106$
      009F37 16 08            [ 2]  146 	ldw	y, (0x08, sp)
      009F39 26 DC            [ 1]  147 	jrne	00106$
      009F3B                        148 00108$:
                                    149 ;	src\i2c.c: 22: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_TX);//Отсылаем адрес вызываемого устройства.
      009F3B 4B 00            [ 1]  150 	push	#0x00
      009F3D 7B 08            [ 1]  151 	ld	a, (0x08, sp)
      009F3F CD 8B 00         [ 4]  152 	call	_I2C_Send7bitAddress
                                    153 ;	src\i2c.c: 24: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      009F42 AE 03 E8         [ 2]  154 	ldw	x, #0x03e8
      009F45 1F 0E            [ 2]  155 	ldw	(0x0e, sp), x
      009F47 5F               [ 1]  156 	clrw	x
      009F48                        157 00110$:
      009F48 89               [ 2]  158 	pushw	x
      009F49 AE 01 02         [ 2]  159 	ldw	x, #0x0102
      009F4C CD 8B E6         [ 4]  160 	call	_I2C_GetFlagStatus
      009F4F 85               [ 2]  161 	popw	x
      009F50 4D               [ 1]  162 	tnz	a
      009F51 26 19            [ 1]  163 	jrne	00112$
      009F53 1F 08            [ 2]  164 	ldw	(0x08, sp), x
      009F55 16 0E            [ 2]  165 	ldw	y, (0x0e, sp)
      009F57 17 0A            [ 2]  166 	ldw	(0x0a, sp), y
      009F59 16 0E            [ 2]  167 	ldw	y, (0x0e, sp)
      009F5B 72 A2 00 01      [ 2]  168 	subw	y, #0x0001
      009F5F 17 0E            [ 2]  169 	ldw	(0x0e, sp), y
      009F61 24 01            [ 1]  170 	jrnc	00216$
      009F63 5A               [ 2]  171 	decw	x
      009F64                        172 00216$:
      009F64 16 0A            [ 2]  173 	ldw	y, (0x0a, sp)
      009F66 26 E0            [ 1]  174 	jrne	00110$
      009F68 16 08            [ 2]  175 	ldw	y, (0x08, sp)
      009F6A 26 DC            [ 1]  176 	jrne	00110$
      009F6C                        177 00112$:
                                    178 ;	src\i2c.c: 25: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      009F6C C6 52 17         [ 1]  179 	ld	a, 0x5217
      009F6F C6 52 19         [ 1]  180 	ld	a, 0x5219
                                    181 ;	src\i2c.c: 26: while(countData) {//Повторяем пока не отправятся все данные.
      009F72 16 12            [ 2]  182 	ldw	y, (0x12, sp)
      009F74 17 08            [ 2]  183 	ldw	(0x08, sp), y
      009F76 16 05            [ 2]  184 	ldw	y, (0x05, sp)
      009F78 17 0A            [ 2]  185 	ldw	(0x0a, sp), y
      009F7A                        186 00117$:
      009F7A 1E 0A            [ 2]  187 	ldw	x, (0x0a, sp)
      009F7C 27 36            [ 1]  188 	jreq	00119$
                                    189 ;	src\i2c.c: 28: while(!(I2C->SR1 & 128) && (time_out--));//Ждём когда буфер передающего регистра будет пуст.
      009F7E AE 03 E8         [ 2]  190 	ldw	x, #0x03e8
      009F81 1F 0E            [ 2]  191 	ldw	(0x0e, sp), x
      009F83 5F               [ 1]  192 	clrw	x
      009F84                        193 00114$:
      009F84 C6 52 17         [ 1]  194 	ld	a, 0x5217
      009F87 2B 19            [ 1]  195 	jrmi	00116$
      009F89 1F 01            [ 2]  196 	ldw	(0x01, sp), x
      009F8B 16 0E            [ 2]  197 	ldw	y, (0x0e, sp)
      009F8D 17 03            [ 2]  198 	ldw	(0x03, sp), y
      009F8F 16 0E            [ 2]  199 	ldw	y, (0x0e, sp)
      009F91 72 A2 00 01      [ 2]  200 	subw	y, #0x0001
      009F95 17 0E            [ 2]  201 	ldw	(0x0e, sp), y
      009F97 24 01            [ 1]  202 	jrnc	00221$
      009F99 5A               [ 2]  203 	decw	x
      009F9A                        204 00221$:
      009F9A 16 03            [ 2]  205 	ldw	y, (0x03, sp)
      009F9C 26 E6            [ 1]  206 	jrne	00114$
      009F9E 16 01            [ 2]  207 	ldw	y, (0x01, sp)
      009FA0 26 E2            [ 1]  208 	jrne	00114$
      009FA2                        209 00116$:
                                    210 ;	src\i2c.c: 29: I2C_SendData(*dataBuffer);
      009FA2 1E 08            [ 2]  211 	ldw	x, (0x08, sp)
      009FA4 F6               [ 1]  212 	ld	a, (x)
      009FA5 CD 8B 34         [ 4]  213 	call	_I2C_SendData
                                    214 ;	src\i2c.c: 30: *dataBuffer++;
      009FA8 1E 08            [ 2]  215 	ldw	x, (0x08, sp)
      009FAA 5C               [ 1]  216 	incw	x
      009FAB 1F 08            [ 2]  217 	ldw	(0x08, sp), x
                                    218 ;	src\i2c.c: 31: countData--;
      009FAD 1E 0A            [ 2]  219 	ldw	x, (0x0a, sp)
      009FAF 5A               [ 2]  220 	decw	x
      009FB0 1F 0A            [ 2]  221 	ldw	(0x0a, sp), x
      009FB2 20 C6            [ 2]  222 	jra	00117$
      009FB4                        223 00119$:
                                    224 ;	src\i2c.c: 34: while((!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED)) && (time_out--));//Ждём окончания отправки данных.
      009FB4 AE 03 E8         [ 2]  225 	ldw	x, #0x03e8
      009FB7 1F 0E            [ 2]  226 	ldw	(0x0e, sp), x
      009FB9 5F               [ 1]  227 	clrw	x
      009FBA                        228 00121$:
      009FBA 89               [ 2]  229 	pushw	x
      009FBB AE 07 84         [ 2]  230 	ldw	x, #0x0784
      009FBE CD 8B 38         [ 4]  231 	call	_I2C_CheckEvent
      009FC1 85               [ 2]  232 	popw	x
      009FC2 4D               [ 1]  233 	tnz	a
      009FC3 26 1E            [ 1]  234 	jrne	00123$
      009FC5 1F 08            [ 2]  235 	ldw	(0x08, sp), x
      009FC7 7B 0E            [ 1]  236 	ld	a, (0x0e, sp)
      009FC9 6B 0A            [ 1]  237 	ld	(0x0a, sp), a
      009FCB 7B 0F            [ 1]  238 	ld	a, (0x0f, sp)
      009FCD 16 0E            [ 2]  239 	ldw	y, (0x0e, sp)
      009FCF 72 A2 00 01      [ 2]  240 	subw	y, #0x0001
      009FD3 17 0E            [ 2]  241 	ldw	(0x0e, sp), y
      009FD5 24 01            [ 1]  242 	jrnc	00226$
      009FD7 5A               [ 2]  243 	decw	x
      009FD8                        244 00226$:
      009FD8 4D               [ 1]  245 	tnz	a
      009FD9 26 DF            [ 1]  246 	jrne	00121$
      009FDB 16 09            [ 2]  247 	ldw	y, (0x09, sp)
      009FDD 26 DB            [ 1]  248 	jrne	00121$
      009FDF 0D 08            [ 1]  249 	tnz	(0x08, sp)
      009FE1 26 D7            [ 1]  250 	jrne	00121$
      009FE3                        251 00123$:
                                    252 ;	src\i2c.c: 35: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      009FE3 A6 01            [ 1]  253 	ld	a, #0x01
      009FE5 CD 8A 81         [ 4]  254 	call	_I2C_GenerateSTOP
                                    255 ;	src\i2c.c: 37: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
      009FE8 AE 03 E8         [ 2]  256 	ldw	x, #0x03e8
      009FEB 1F 0E            [ 2]  257 	ldw	(0x0e, sp), x
      009FED 5F               [ 1]  258 	clrw	x
      009FEE                        259 00125$:
      009FEE C6 52 11         [ 1]  260 	ld	a, 0x5211
      009FF1 A5 02            [ 1]  261 	bcp	a, #0x02
      009FF3 27 1E            [ 1]  262 	jreq	00128$
      009FF5 1F 08            [ 2]  263 	ldw	(0x08, sp), x
      009FF7 7B 0E            [ 1]  264 	ld	a, (0x0e, sp)
      009FF9 6B 0A            [ 1]  265 	ld	(0x0a, sp), a
      009FFB 7B 0F            [ 1]  266 	ld	a, (0x0f, sp)
      009FFD 16 0E            [ 2]  267 	ldw	y, (0x0e, sp)
      009FFF 72 A2 00 01      [ 2]  268 	subw	y, #0x0001
      00A003 17 0E            [ 2]  269 	ldw	(0x0e, sp), y
      00A005 24 01            [ 1]  270 	jrnc	00230$
      00A007 5A               [ 2]  271 	decw	x
      00A008                        272 00230$:
      00A008 4D               [ 1]  273 	tnz	a
      00A009 26 E3            [ 1]  274 	jrne	00125$
      00A00B 16 09            [ 2]  275 	ldw	y, (0x09, sp)
      00A00D 26 DF            [ 1]  276 	jrne	00125$
      00A00F 0D 08            [ 1]  277 	tnz	(0x08, sp)
      00A011 26 DB            [ 1]  278 	jrne	00125$
      00A013                        279 00128$:
                                    280 ;	src\i2c.c: 38: }
      00A013 1E 10            [ 2]  281 	ldw	x, (16, sp)
      00A015 5B 13            [ 2]  282 	addw	sp, #19
      00A017 FC               [ 2]  283 	jp	(x)
                                    284 ;	src\i2c.c: 40: uint8_t I2C_Read_Byte(uint8_t Addr) {
                                    285 ;	-----------------------------------------
                                    286 ;	 function I2C_Read_Byte
                                    287 ;	-----------------------------------------
      00A018                        288 _I2C_Read_Byte:
      00A018 52 0A            [ 2]  289 	sub	sp, #10
      00A01A 6B 06            [ 1]  290 	ld	(0x06, sp), a
                                    291 ;	src\i2c.c: 42: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A01C AE 03 E8         [ 2]  292 	ldw	x, #0x03e8
      00A01F 1F 09            [ 2]  293 	ldw	(0x09, sp), x
      00A021 5F               [ 1]  294 	clrw	x
      00A022 1F 07            [ 2]  295 	ldw	(0x07, sp), x
      00A024                        296 00102$:
      00A024 AE 03 02         [ 2]  297 	ldw	x, #0x0302
      00A027 CD 8B E6         [ 4]  298 	call	_I2C_GetFlagStatus
      00A02A 4D               [ 1]  299 	tnz	a
      00A02B 27 1E            [ 1]  300 	jreq	00104$
      00A02D 16 09            [ 2]  301 	ldw	y, (0x09, sp)
      00A02F 17 04            [ 2]  302 	ldw	(0x04, sp), y
      00A031 16 07            [ 2]  303 	ldw	y, (0x07, sp)
      00A033 17 02            [ 2]  304 	ldw	(0x02, sp), y
      00A035 1E 09            [ 2]  305 	ldw	x, (0x09, sp)
      00A037 1D 00 01         [ 2]  306 	subw	x, #0x0001
      00A03A 1F 09            [ 2]  307 	ldw	(0x09, sp), x
      00A03C 1E 07            [ 2]  308 	ldw	x, (0x07, sp)
      00A03E 24 01            [ 1]  309 	jrnc	00179$
      00A040 5A               [ 2]  310 	decw	x
      00A041                        311 00179$:
      00A041 1F 07            [ 2]  312 	ldw	(0x07, sp), x
      00A043 1E 04            [ 2]  313 	ldw	x, (0x04, sp)
      00A045 26 DD            [ 1]  314 	jrne	00102$
      00A047 1E 02            [ 2]  315 	ldw	x, (0x02, sp)
      00A049 26 D9            [ 1]  316 	jrne	00102$
      00A04B                        317 00104$:
                                    318 ;	src\i2c.c: 43: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A04B A6 01            [ 1]  319 	ld	a, #0x01
      00A04D CD 8A 56         [ 4]  320 	call	_I2C_GenerateSTART
                                    321 ;	src\i2c.c: 45: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A050 AE 03 E8         [ 2]  322 	ldw	x, #0x03e8
      00A053 1F 09            [ 2]  323 	ldw	(0x09, sp), x
      00A055 5F               [ 1]  324 	clrw	x
      00A056                        325 00106$:
      00A056 89               [ 2]  326 	pushw	x
      00A057 AE 03 01         [ 2]  327 	ldw	x, #0x0301
      00A05A CD 8B 38         [ 4]  328 	call	_I2C_CheckEvent
      00A05D 85               [ 2]  329 	popw	x
      00A05E 4D               [ 1]  330 	tnz	a
      00A05F 26 19            [ 1]  331 	jrne	00108$
      00A061 1F 02            [ 2]  332 	ldw	(0x02, sp), x
      00A063 16 09            [ 2]  333 	ldw	y, (0x09, sp)
      00A065 17 04            [ 2]  334 	ldw	(0x04, sp), y
      00A067 16 09            [ 2]  335 	ldw	y, (0x09, sp)
      00A069 72 A2 00 01      [ 2]  336 	subw	y, #0x0001
      00A06D 17 09            [ 2]  337 	ldw	(0x09, sp), y
      00A06F 24 01            [ 1]  338 	jrnc	00183$
      00A071 5A               [ 2]  339 	decw	x
      00A072                        340 00183$:
      00A072 16 04            [ 2]  341 	ldw	y, (0x04, sp)
      00A074 26 E0            [ 1]  342 	jrne	00106$
      00A076 16 02            [ 2]  343 	ldw	y, (0x02, sp)
      00A078 26 DC            [ 1]  344 	jrne	00106$
      00A07A                        345 00108$:
                                    346 ;	src\i2c.c: 46: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства и бит приёма данных.
      00A07A 4B 01            [ 1]  347 	push	#0x01
      00A07C 7B 07            [ 1]  348 	ld	a, (0x07, sp)
      00A07E CD 8B 00         [ 4]  349 	call	_I2C_Send7bitAddress
                                    350 ;	src\i2c.c: 48: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A081 AE 03 E8         [ 2]  351 	ldw	x, #0x03e8
      00A084 1F 09            [ 2]  352 	ldw	(0x09, sp), x
      00A086 5F               [ 1]  353 	clrw	x
      00A087                        354 00110$:
      00A087 89               [ 2]  355 	pushw	x
      00A088 AE 01 02         [ 2]  356 	ldw	x, #0x0102
      00A08B CD 8B E6         [ 4]  357 	call	_I2C_GetFlagStatus
      00A08E 85               [ 2]  358 	popw	x
      00A08F 4D               [ 1]  359 	tnz	a
      00A090 26 19            [ 1]  360 	jrne	00112$
      00A092 1F 02            [ 2]  361 	ldw	(0x02, sp), x
      00A094 16 09            [ 2]  362 	ldw	y, (0x09, sp)
      00A096 17 04            [ 2]  363 	ldw	(0x04, sp), y
      00A098 16 09            [ 2]  364 	ldw	y, (0x09, sp)
      00A09A 72 A2 00 01      [ 2]  365 	subw	y, #0x0001
      00A09E 17 09            [ 2]  366 	ldw	(0x09, sp), y
      00A0A0 24 01            [ 1]  367 	jrnc	00187$
      00A0A2 5A               [ 2]  368 	decw	x
      00A0A3                        369 00187$:
      00A0A3 16 04            [ 2]  370 	ldw	y, (0x04, sp)
      00A0A5 26 E0            [ 1]  371 	jrne	00110$
      00A0A7 16 02            [ 2]  372 	ldw	y, (0x02, sp)
      00A0A9 26 DC            [ 1]  373 	jrne	00110$
      00A0AB                        374 00112$:
                                    375 ;	src\i2c.c: 51: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
      00A0AB 4F               [ 1]  376 	clr	a
      00A0AC CD 8A AC         [ 4]  377 	call	_I2C_AcknowledgeConfig
                                    378 ;	src\i2c.c: 53: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A0AF C6 52 17         [ 1]  379 	ld	a, 0x5217
      00A0B2 C6 52 19         [ 1]  380 	ld	a, 0x5219
                                    381 ;	src\i2c.c: 55: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A0B5 A6 01            [ 1]  382 	ld	a, #0x01
      00A0B7 CD 8A 81         [ 4]  383 	call	_I2C_GenerateSTOP
                                    384 ;	src\i2c.c: 58: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
      00A0BA AE 03 E8         [ 2]  385 	ldw	x, #0x03e8
      00A0BD 1F 09            [ 2]  386 	ldw	(0x09, sp), x
      00A0BF 5F               [ 1]  387 	clrw	x
      00A0C0                        388 00114$:
      00A0C0 89               [ 2]  389 	pushw	x
      00A0C1 AE 01 40         [ 2]  390 	ldw	x, #0x0140
      00A0C4 CD 8B E6         [ 4]  391 	call	_I2C_GetFlagStatus
      00A0C7 85               [ 2]  392 	popw	x
      00A0C8 4D               [ 1]  393 	tnz	a
      00A0C9 26 19            [ 1]  394 	jrne	00116$
      00A0CB 1F 02            [ 2]  395 	ldw	(0x02, sp), x
      00A0CD 16 09            [ 2]  396 	ldw	y, (0x09, sp)
      00A0CF 17 04            [ 2]  397 	ldw	(0x04, sp), y
      00A0D1 16 09            [ 2]  398 	ldw	y, (0x09, sp)
      00A0D3 72 A2 00 01      [ 2]  399 	subw	y, #0x0001
      00A0D7 17 09            [ 2]  400 	ldw	(0x09, sp), y
      00A0D9 24 01            [ 1]  401 	jrnc	00191$
      00A0DB 5A               [ 2]  402 	decw	x
      00A0DC                        403 00191$:
      00A0DC 16 04            [ 2]  404 	ldw	y, (0x04, sp)
      00A0DE 26 E0            [ 1]  405 	jrne	00114$
      00A0E0 16 02            [ 2]  406 	ldw	y, (0x02, sp)
      00A0E2 26 DC            [ 1]  407 	jrne	00114$
      00A0E4                        408 00116$:
                                    409 ;	src\i2c.c: 60: uint8_t read_byte = I2C_ReceiveData();//Читаем данные.
      00A0E4 CD 8A FC         [ 4]  410 	call	_I2C_ReceiveData
      00A0E7 6B 01            [ 1]  411 	ld	(0x01, sp), a
                                    412 ;	src\i2c.c: 63: while((I2C->CR2 & I2C_CR2_STOP)&& (time_out--));//Ждём остановки передачи и STOP на линии.
      00A0E9 AE 03 E8         [ 2]  413 	ldw	x, #0x03e8
      00A0EC 1F 09            [ 2]  414 	ldw	(0x09, sp), x
      00A0EE 5F               [ 1]  415 	clrw	x
      00A0EF                        416 00118$:
      00A0EF 72 03 52 11 19   [ 2]  417 	btjf	0x5211, #1, 00120$
      00A0F4 1F 02            [ 2]  418 	ldw	(0x02, sp), x
      00A0F6 16 09            [ 2]  419 	ldw	y, (0x09, sp)
      00A0F8 17 04            [ 2]  420 	ldw	(0x04, sp), y
      00A0FA 16 09            [ 2]  421 	ldw	y, (0x09, sp)
      00A0FC 72 A2 00 01      [ 2]  422 	subw	y, #0x0001
      00A100 17 09            [ 2]  423 	ldw	(0x09, sp), y
      00A102 24 01            [ 1]  424 	jrnc	00195$
      00A104 5A               [ 2]  425 	decw	x
      00A105                        426 00195$:
      00A105 16 04            [ 2]  427 	ldw	y, (0x04, sp)
      00A107 26 E6            [ 1]  428 	jrne	00118$
      00A109 16 02            [ 2]  429 	ldw	y, (0x02, sp)
      00A10B 26 E2            [ 1]  430 	jrne	00118$
      00A10D                        431 00120$:
                                    432 ;	src\i2c.c: 64: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
      00A10D A6 01            [ 1]  433 	ld	a, #0x01
      00A10F CD 8A AC         [ 4]  434 	call	_I2C_AcknowledgeConfig
                                    435 ;	src\i2c.c: 65: return read_byte;
      00A112 7B 01            [ 1]  436 	ld	a, (0x01, sp)
                                    437 ;	src\i2c.c: 66: }
      00A114 5B 0A            [ 2]  438 	addw	sp, #10
      00A116 81               [ 4]  439 	ret
                                    440 ;	src\i2c.c: 69: void I2C_Read_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
                                    441 ;	-----------------------------------------
                                    442 ;	 function I2C_Read_Bytes
                                    443 ;	-----------------------------------------
      00A117                        444 _I2C_Read_Bytes:
      00A117 52 0F            [ 2]  445 	sub	sp, #15
      00A119 6B 07            [ 1]  446 	ld	(0x07, sp), a
      00A11B 1F 05            [ 2]  447 	ldw	(0x05, sp), x
                                    448 ;	src\i2c.c: 71: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A11D AE 03 E8         [ 2]  449 	ldw	x, #0x03e8
      00A120 1F 0E            [ 2]  450 	ldw	(0x0e, sp), x
      00A122 5F               [ 1]  451 	clrw	x
      00A123 1F 0C            [ 2]  452 	ldw	(0x0c, sp), x
      00A125                        453 00102$:
      00A125 AE 03 02         [ 2]  454 	ldw	x, #0x0302
      00A128 CD 8B E6         [ 4]  455 	call	_I2C_GetFlagStatus
      00A12B 4D               [ 1]  456 	tnz	a
      00A12C 27 1E            [ 1]  457 	jreq	00104$
      00A12E 16 0E            [ 2]  458 	ldw	y, (0x0e, sp)
      00A130 17 0A            [ 2]  459 	ldw	(0x0a, sp), y
      00A132 16 0C            [ 2]  460 	ldw	y, (0x0c, sp)
      00A134 17 08            [ 2]  461 	ldw	(0x08, sp), y
      00A136 1E 0E            [ 2]  462 	ldw	x, (0x0e, sp)
      00A138 1D 00 01         [ 2]  463 	subw	x, #0x0001
      00A13B 1F 0E            [ 2]  464 	ldw	(0x0e, sp), x
      00A13D 1E 0C            [ 2]  465 	ldw	x, (0x0c, sp)
      00A13F 24 01            [ 1]  466 	jrnc	00229$
      00A141 5A               [ 2]  467 	decw	x
      00A142                        468 00229$:
      00A142 1F 0C            [ 2]  469 	ldw	(0x0c, sp), x
      00A144 1E 0A            [ 2]  470 	ldw	x, (0x0a, sp)
      00A146 26 DD            [ 1]  471 	jrne	00102$
      00A148 1E 08            [ 2]  472 	ldw	x, (0x08, sp)
      00A14A 26 D9            [ 1]  473 	jrne	00102$
      00A14C                        474 00104$:
                                    475 ;	src\i2c.c: 72: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A14C A6 01            [ 1]  476 	ld	a, #0x01
      00A14E CD 8A 56         [ 4]  477 	call	_I2C_GenerateSTART
                                    478 ;	src\i2c.c: 74: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A151 AE 03 E8         [ 2]  479 	ldw	x, #0x03e8
      00A154 1F 0E            [ 2]  480 	ldw	(0x0e, sp), x
      00A156 5F               [ 1]  481 	clrw	x
      00A157                        482 00106$:
      00A157 89               [ 2]  483 	pushw	x
      00A158 AE 03 01         [ 2]  484 	ldw	x, #0x0301
      00A15B CD 8B 38         [ 4]  485 	call	_I2C_CheckEvent
      00A15E 85               [ 2]  486 	popw	x
      00A15F 4D               [ 1]  487 	tnz	a
      00A160 26 19            [ 1]  488 	jrne	00108$
      00A162 1F 08            [ 2]  489 	ldw	(0x08, sp), x
      00A164 16 0E            [ 2]  490 	ldw	y, (0x0e, sp)
      00A166 17 0A            [ 2]  491 	ldw	(0x0a, sp), y
      00A168 16 0E            [ 2]  492 	ldw	y, (0x0e, sp)
      00A16A 72 A2 00 01      [ 2]  493 	subw	y, #0x0001
      00A16E 17 0E            [ 2]  494 	ldw	(0x0e, sp), y
      00A170 24 01            [ 1]  495 	jrnc	00233$
      00A172 5A               [ 2]  496 	decw	x
      00A173                        497 00233$:
      00A173 16 0A            [ 2]  498 	ldw	y, (0x0a, sp)
      00A175 26 E0            [ 1]  499 	jrne	00106$
      00A177 16 08            [ 2]  500 	ldw	y, (0x08, sp)
      00A179 26 DC            [ 1]  501 	jrne	00106$
      00A17B                        502 00108$:
                                    503 ;	src\i2c.c: 75: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства.
      00A17B 4B 01            [ 1]  504 	push	#0x01
      00A17D 7B 08            [ 1]  505 	ld	a, (0x08, sp)
      00A17F CD 8B 00         [ 4]  506 	call	_I2C_Send7bitAddress
                                    507 ;	src\i2c.c: 77: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A182 AE 03 E8         [ 2]  508 	ldw	x, #0x03e8
      00A185 1F 0E            [ 2]  509 	ldw	(0x0e, sp), x
      00A187 5F               [ 1]  510 	clrw	x
      00A188                        511 00110$:
      00A188 89               [ 2]  512 	pushw	x
      00A189 AE 01 02         [ 2]  513 	ldw	x, #0x0102
      00A18C CD 8B E6         [ 4]  514 	call	_I2C_GetFlagStatus
      00A18F 85               [ 2]  515 	popw	x
      00A190 4D               [ 1]  516 	tnz	a
      00A191 26 19            [ 1]  517 	jrne	00112$
      00A193 1F 08            [ 2]  518 	ldw	(0x08, sp), x
      00A195 16 0E            [ 2]  519 	ldw	y, (0x0e, sp)
      00A197 17 0A            [ 2]  520 	ldw	(0x0a, sp), y
      00A199 16 0E            [ 2]  521 	ldw	y, (0x0e, sp)
      00A19B 72 A2 00 01      [ 2]  522 	subw	y, #0x0001
      00A19F 17 0E            [ 2]  523 	ldw	(0x0e, sp), y
      00A1A1 24 01            [ 1]  524 	jrnc	00237$
      00A1A3 5A               [ 2]  525 	decw	x
      00A1A4                        526 00237$:
      00A1A4 16 0A            [ 2]  527 	ldw	y, (0x0a, sp)
      00A1A6 26 E0            [ 1]  528 	jrne	00110$
      00A1A8 16 08            [ 2]  529 	ldw	y, (0x08, sp)
      00A1AA 26 DC            [ 1]  530 	jrne	00110$
      00A1AC                        531 00112$:
                                    532 ;	src\i2c.c: 79: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A1AC C6 52 17         [ 1]  533 	ld	a, 0x5217
      00A1AF C6 52 19         [ 1]  534 	ld	a, 0x5219
                                    535 ;	src\i2c.c: 80: if(countData > 3) {//Если принимаем больше трёх байтов.
      00A1B2 1E 05            [ 2]  536 	ldw	x, (0x05, sp)
      00A1B4 A3 00 03         [ 2]  537 	cpw	x, #0x0003
      00A1B7 23 55            [ 2]  538 	jrule	00147$
                                    539 ;	src\i2c.c: 81: while(countData > 3) {
      00A1B9 16 12            [ 2]  540 	ldw	y, (0x12, sp)
      00A1BB 17 08            [ 2]  541 	ldw	(0x08, sp), y
      00A1BD 16 05            [ 2]  542 	ldw	y, (0x05, sp)
      00A1BF 17 0A            [ 2]  543 	ldw	(0x0a, sp), y
      00A1C1                        544 00117$:
      00A1C1 1E 0A            [ 2]  545 	ldw	x, (0x0a, sp)
      00A1C3 A3 00 03         [ 2]  546 	cpw	x, #0x0003
      00A1C6 23 42            [ 2]  547 	jrule	00159$
                                    548 ;	src\i2c.c: 83: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
      00A1C8 AE 03 E8         [ 2]  549 	ldw	x, #0x03e8
      00A1CB 1F 0E            [ 2]  550 	ldw	(0x0e, sp), x
      00A1CD 5F               [ 1]  551 	clrw	x
      00A1CE 1F 0C            [ 2]  552 	ldw	(0x0c, sp), x
      00A1D0                        553 00114$:
      00A1D0 AE 01 04         [ 2]  554 	ldw	x, #0x0104
      00A1D3 CD 8B E6         [ 4]  555 	call	_I2C_GetFlagStatus
      00A1D6 6B 04            [ 1]  556 	ld	(0x04, sp), a
      00A1D8 26 1E            [ 1]  557 	jrne	00116$
      00A1DA 16 0E            [ 2]  558 	ldw	y, (0x0e, sp)
      00A1DC 17 03            [ 2]  559 	ldw	(0x03, sp), y
      00A1DE 16 0C            [ 2]  560 	ldw	y, (0x0c, sp)
      00A1E0 17 01            [ 2]  561 	ldw	(0x01, sp), y
      00A1E2 1E 0E            [ 2]  562 	ldw	x, (0x0e, sp)
      00A1E4 1D 00 01         [ 2]  563 	subw	x, #0x0001
      00A1E7 1F 0E            [ 2]  564 	ldw	(0x0e, sp), x
      00A1E9 1E 0C            [ 2]  565 	ldw	x, (0x0c, sp)
      00A1EB 24 01            [ 1]  566 	jrnc	00243$
      00A1ED 5A               [ 2]  567 	decw	x
      00A1EE                        568 00243$:
      00A1EE 1F 0C            [ 2]  569 	ldw	(0x0c, sp), x
      00A1F0 1E 03            [ 2]  570 	ldw	x, (0x03, sp)
      00A1F2 26 DC            [ 1]  571 	jrne	00114$
      00A1F4 1E 01            [ 2]  572 	ldw	x, (0x01, sp)
      00A1F6 26 D8            [ 1]  573 	jrne	00114$
      00A1F8                        574 00116$:
                                    575 ;	src\i2c.c: 84: *dataBuffer = I2C_ReceiveData();
      00A1F8 CD 8A FC         [ 4]  576 	call	_I2C_ReceiveData
      00A1FB 1E 08            [ 2]  577 	ldw	x, (0x08, sp)
      00A1FD F7               [ 1]  578 	ld	(x), a
                                    579 ;	src\i2c.c: 85: *dataBuffer++;
      00A1FE 1E 08            [ 2]  580 	ldw	x, (0x08, sp)
      00A200 5C               [ 1]  581 	incw	x
      00A201 1F 08            [ 2]  582 	ldw	(0x08, sp), x
                                    583 ;	src\i2c.c: 86: countData--;
      00A203 1E 0A            [ 2]  584 	ldw	x, (0x0a, sp)
      00A205 5A               [ 2]  585 	decw	x
      00A206 1F 0A            [ 2]  586 	ldw	(0x0a, sp), x
      00A208 20 B7            [ 2]  587 	jra	00117$
      00A20A                        588 00159$:
      00A20A 16 08            [ 2]  589 	ldw	y, (0x08, sp)
      00A20C 17 12            [ 2]  590 	ldw	(0x12, sp), y
                                    591 ;	src\i2c.c: 90: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
      00A20E                        592 00147$:
      00A20E AE 03 E8         [ 2]  593 	ldw	x, #0x03e8
      00A211 1F 0E            [ 2]  594 	ldw	(0x0e, sp), x
      00A213 5F               [ 1]  595 	clrw	x
      00A214                        596 00123$:
      00A214 89               [ 2]  597 	pushw	x
      00A215 AE 01 04         [ 2]  598 	ldw	x, #0x0104
      00A218 CD 8B E6         [ 4]  599 	call	_I2C_GetFlagStatus
      00A21B 85               [ 2]  600 	popw	x
      00A21C 4D               [ 1]  601 	tnz	a
      00A21D 26 1E            [ 1]  602 	jrne	00125$
      00A21F 1F 08            [ 2]  603 	ldw	(0x08, sp), x
      00A221 7B 0E            [ 1]  604 	ld	a, (0x0e, sp)
      00A223 6B 0A            [ 1]  605 	ld	(0x0a, sp), a
      00A225 7B 0F            [ 1]  606 	ld	a, (0x0f, sp)
      00A227 16 0E            [ 2]  607 	ldw	y, (0x0e, sp)
      00A229 72 A2 00 01      [ 2]  608 	subw	y, #0x0001
      00A22D 17 0E            [ 2]  609 	ldw	(0x0e, sp), y
      00A22F 24 01            [ 1]  610 	jrnc	00248$
      00A231 5A               [ 2]  611 	decw	x
      00A232                        612 00248$:
      00A232 4D               [ 1]  613 	tnz	a
      00A233 26 DF            [ 1]  614 	jrne	00123$
      00A235 16 09            [ 2]  615 	ldw	y, (0x09, sp)
      00A237 26 DB            [ 1]  616 	jrne	00123$
      00A239 0D 08            [ 1]  617 	tnz	(0x08, sp)
      00A23B 26 D7            [ 1]  618 	jrne	00123$
      00A23D                        619 00125$:
                                    620 ;	src\i2c.c: 91: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
      00A23D 4F               [ 1]  621 	clr	a
      00A23E CD 8A AC         [ 4]  622 	call	_I2C_AcknowledgeConfig
                                    623 ;	src\i2c.c: 92: *dataBuffer = I2C_ReceiveData();
      00A241 1E 12            [ 2]  624 	ldw	x, (0x12, sp)
      00A243 89               [ 2]  625 	pushw	x
      00A244 CD 8A FC         [ 4]  626 	call	_I2C_ReceiveData
      00A247 85               [ 2]  627 	popw	x
      00A248 F7               [ 1]  628 	ld	(x), a
                                    629 ;	src\i2c.c: 93: *dataBuffer++;
      00A249 5C               [ 1]  630 	incw	x
      00A24A 1F 12            [ 2]  631 	ldw	(0x12, sp), x
                                    632 ;	src\i2c.c: 94: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A24C A6 01            [ 1]  633 	ld	a, #0x01
      00A24E CD 8A 81         [ 4]  634 	call	_I2C_GenerateSTOP
                                    635 ;	src\i2c.c: 95: *dataBuffer = I2C_ReceiveData();
      00A251 1E 12            [ 2]  636 	ldw	x, (0x12, sp)
      00A253 89               [ 2]  637 	pushw	x
      00A254 CD 8A FC         [ 4]  638 	call	_I2C_ReceiveData
      00A257 85               [ 2]  639 	popw	x
      00A258 F7               [ 1]  640 	ld	(x), a
                                    641 ;	src\i2c.c: 96: *dataBuffer++;
      00A259 5C               [ 1]  642 	incw	x
      00A25A 1F 12            [ 2]  643 	ldw	(0x12, sp), x
                                    644 ;	src\i2c.c: 98: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
      00A25C AE 03 E8         [ 2]  645 	ldw	x, #0x03e8
      00A25F 1F 0E            [ 2]  646 	ldw	(0x0e, sp), x
      00A261 5F               [ 1]  647 	clrw	x
      00A262                        648 00127$:
      00A262 89               [ 2]  649 	pushw	x
      00A263 AE 01 40         [ 2]  650 	ldw	x, #0x0140
      00A266 CD 8B E6         [ 4]  651 	call	_I2C_GetFlagStatus
      00A269 85               [ 2]  652 	popw	x
      00A26A 4D               [ 1]  653 	tnz	a
      00A26B 26 1E            [ 1]  654 	jrne	00129$
      00A26D 1F 08            [ 2]  655 	ldw	(0x08, sp), x
      00A26F 7B 0E            [ 1]  656 	ld	a, (0x0e, sp)
      00A271 6B 0A            [ 1]  657 	ld	(0x0a, sp), a
      00A273 7B 0F            [ 1]  658 	ld	a, (0x0f, sp)
      00A275 16 0E            [ 2]  659 	ldw	y, (0x0e, sp)
      00A277 72 A2 00 01      [ 2]  660 	subw	y, #0x0001
      00A27B 17 0E            [ 2]  661 	ldw	(0x0e, sp), y
      00A27D 24 01            [ 1]  662 	jrnc	00252$
      00A27F 5A               [ 2]  663 	decw	x
      00A280                        664 00252$:
      00A280 4D               [ 1]  665 	tnz	a
      00A281 26 DF            [ 1]  666 	jrne	00127$
      00A283 16 09            [ 2]  667 	ldw	y, (0x09, sp)
      00A285 26 DB            [ 1]  668 	jrne	00127$
      00A287 0D 08            [ 1]  669 	tnz	(0x08, sp)
      00A289 26 D7            [ 1]  670 	jrne	00127$
      00A28B                        671 00129$:
                                    672 ;	src\i2c.c: 99: *dataBuffer = I2C_ReceiveData();
      00A28B 1E 12            [ 2]  673 	ldw	x, (0x12, sp)
      00A28D 89               [ 2]  674 	pushw	x
      00A28E CD 8A FC         [ 4]  675 	call	_I2C_ReceiveData
      00A291 85               [ 2]  676 	popw	x
      00A292 F7               [ 1]  677 	ld	(x), a
                                    678 ;	src\i2c.c: 101: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
      00A293 AE 03 E8         [ 2]  679 	ldw	x, #0x03e8
      00A296 1F 0E            [ 2]  680 	ldw	(0x0e, sp), x
      00A298 5F               [ 1]  681 	clrw	x
      00A299                        682 00131$:
      00A299 72 03 52 11 1E   [ 2]  683 	btjf	0x5211, #1, 00133$
      00A29E 1F 08            [ 2]  684 	ldw	(0x08, sp), x
      00A2A0 7B 0E            [ 1]  685 	ld	a, (0x0e, sp)
      00A2A2 6B 0A            [ 1]  686 	ld	(0x0a, sp), a
      00A2A4 7B 0F            [ 1]  687 	ld	a, (0x0f, sp)
      00A2A6 16 0E            [ 2]  688 	ldw	y, (0x0e, sp)
      00A2A8 72 A2 00 01      [ 2]  689 	subw	y, #0x0001
      00A2AC 17 0E            [ 2]  690 	ldw	(0x0e, sp), y
      00A2AE 24 01            [ 1]  691 	jrnc	00256$
      00A2B0 5A               [ 2]  692 	decw	x
      00A2B1                        693 00256$:
      00A2B1 4D               [ 1]  694 	tnz	a
      00A2B2 26 E5            [ 1]  695 	jrne	00131$
      00A2B4 16 09            [ 2]  696 	ldw	y, (0x09, sp)
      00A2B6 26 E1            [ 1]  697 	jrne	00131$
      00A2B8 0D 08            [ 1]  698 	tnz	(0x08, sp)
      00A2BA 26 DD            [ 1]  699 	jrne	00131$
      00A2BC                        700 00133$:
                                    701 ;	src\i2c.c: 102: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
      00A2BC A6 01            [ 1]  702 	ld	a, #0x01
      00A2BE CD 8A AC         [ 4]  703 	call	_I2C_AcknowledgeConfig
                                    704 ;	src\i2c.c: 103: }
      00A2C1 1E 10            [ 2]  705 	ldw	x, (16, sp)
      00A2C3 5B 13            [ 2]  706 	addw	sp, #19
      00A2C5 FC               [ 2]  707 	jp	(x)
                                    708 	.area CODE
                                    709 	.area CONST
                                    710 	.area INITIALIZER
                                    711 	.area CABS (ABS)
