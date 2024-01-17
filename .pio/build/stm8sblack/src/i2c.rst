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
      00A75F                         67 _I2C_Setup:
                                     68 ;	src\i2c.c: 9: I2C_DeInit();
      00A75F CD 8B 3D         [ 4]   69 	call	_I2C_DeInit
                                     70 ;	src\i2c.c: 12: I2C_Init(I2C_MAX_STANDARD_FREQ, I2C_ID_ADDRESS, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, I2C_MAX_INPUT_FREQ);
      00A762 4B 10            [ 1]   71 	push	#0x10
      00A764 4B 00            [ 1]   72 	push	#0x00
      00A766 4B 01            [ 1]   73 	push	#0x01
      00A768 4B 00            [ 1]   74 	push	#0x00
      00A76A 4B EE            [ 1]   75 	push	#0xee
      00A76C 4B 00            [ 1]   76 	push	#0x00
      00A76E 4B A0            [ 1]   77 	push	#0xa0
      00A770 4B 86            [ 1]   78 	push	#0x86
      00A772 4B 01            [ 1]   79 	push	#0x01
      00A774 4B 00            [ 1]   80 	push	#0x00
      00A776 CD 8B 62         [ 4]   81 	call	_I2C_Init
                                     82 ;	src\i2c.c: 13: I2C_Cmd(ENABLE);
      00A779 A6 01            [ 1]   83 	ld	a, #0x01
                                     84 ;	src\i2c.c: 14: }
      00A77B CC 8D 1A         [ 2]   85 	jp	_I2C_Cmd
                                     86 ;	src\i2c.c: 16: void I2C_Send_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
                                     87 ;	-----------------------------------------
                                     88 ;	 function I2C_Send_Bytes
                                     89 ;	-----------------------------------------
      00A77E                         90 _I2C_Send_Bytes:
      00A77E 52 0F            [ 2]   91 	sub	sp, #15
      00A780 6B 07            [ 1]   92 	ld	(0x07, sp), a
      00A782 1F 05            [ 2]   93 	ldw	(0x05, sp), x
                                     94 ;	src\i2c.c: 18: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A784 AE 03 E8         [ 2]   95 	ldw	x, #0x03e8
      00A787 1F 0E            [ 2]   96 	ldw	(0x0e, sp), x
      00A789 5F               [ 1]   97 	clrw	x
      00A78A 1F 0C            [ 2]   98 	ldw	(0x0c, sp), x
      00A78C                         99 00102$:
      00A78C AE 03 02         [ 2]  100 	ldw	x, #0x0302
      00A78F CD 90 19         [ 4]  101 	call	_I2C_GetFlagStatus
      00A792 4D               [ 1]  102 	tnz	a
      00A793 27 1E            [ 1]  103 	jreq	00104$
      00A795 16 0E            [ 2]  104 	ldw	y, (0x0e, sp)
      00A797 17 0A            [ 2]  105 	ldw	(0x0a, sp), y
      00A799 16 0C            [ 2]  106 	ldw	y, (0x0c, sp)
      00A79B 17 08            [ 2]  107 	ldw	(0x08, sp), y
      00A79D 1E 0E            [ 2]  108 	ldw	x, (0x0e, sp)
      00A79F 1D 00 01         [ 2]  109 	subw	x, #0x0001
      00A7A2 1F 0E            [ 2]  110 	ldw	(0x0e, sp), x
      00A7A4 1E 0C            [ 2]  111 	ldw	x, (0x0c, sp)
      00A7A6 24 01            [ 1]  112 	jrnc	00208$
      00A7A8 5A               [ 2]  113 	decw	x
      00A7A9                        114 00208$:
      00A7A9 1F 0C            [ 2]  115 	ldw	(0x0c, sp), x
      00A7AB 1E 0A            [ 2]  116 	ldw	x, (0x0a, sp)
      00A7AD 26 DD            [ 1]  117 	jrne	00102$
      00A7AF 1E 08            [ 2]  118 	ldw	x, (0x08, sp)
      00A7B1 26 D9            [ 1]  119 	jrne	00102$
      00A7B3                        120 00104$:
                                    121 ;	src\i2c.c: 19: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A7B3 A6 01            [ 1]  122 	ld	a, #0x01
      00A7B5 CD 8D 70         [ 4]  123 	call	_I2C_GenerateSTART
                                    124 ;	src\i2c.c: 21: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A7B8 AE 03 E8         [ 2]  125 	ldw	x, #0x03e8
      00A7BB 1F 0E            [ 2]  126 	ldw	(0x0e, sp), x
      00A7BD 5F               [ 1]  127 	clrw	x
      00A7BE                        128 00106$:
      00A7BE 89               [ 2]  129 	pushw	x
      00A7BF AE 03 01         [ 2]  130 	ldw	x, #0x0301
      00A7C2 CD 8F 42         [ 4]  131 	call	_I2C_CheckEvent
      00A7C5 85               [ 2]  132 	popw	x
      00A7C6 4D               [ 1]  133 	tnz	a
      00A7C7 26 19            [ 1]  134 	jrne	00108$
      00A7C9 1F 08            [ 2]  135 	ldw	(0x08, sp), x
      00A7CB 16 0E            [ 2]  136 	ldw	y, (0x0e, sp)
      00A7CD 17 0A            [ 2]  137 	ldw	(0x0a, sp), y
      00A7CF 16 0E            [ 2]  138 	ldw	y, (0x0e, sp)
      00A7D1 72 A2 00 01      [ 2]  139 	subw	y, #0x0001
      00A7D5 17 0E            [ 2]  140 	ldw	(0x0e, sp), y
      00A7D7 24 01            [ 1]  141 	jrnc	00212$
      00A7D9 5A               [ 2]  142 	decw	x
      00A7DA                        143 00212$:
      00A7DA 16 0A            [ 2]  144 	ldw	y, (0x0a, sp)
      00A7DC 26 E0            [ 1]  145 	jrne	00106$
      00A7DE 16 08            [ 2]  146 	ldw	y, (0x08, sp)
      00A7E0 26 DC            [ 1]  147 	jrne	00106$
      00A7E2                        148 00108$:
                                    149 ;	src\i2c.c: 22: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_TX);//Отсылаем адрес вызываемого устройства.
      00A7E2 4B 00            [ 1]  150 	push	#0x00
      00A7E4 7B 08            [ 1]  151 	ld	a, (0x08, sp)
      00A7E6 CD 8F 0A         [ 4]  152 	call	_I2C_Send7bitAddress
                                    153 ;	src\i2c.c: 24: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A7E9 AE 03 E8         [ 2]  154 	ldw	x, #0x03e8
      00A7EC 1F 0E            [ 2]  155 	ldw	(0x0e, sp), x
      00A7EE 5F               [ 1]  156 	clrw	x
      00A7EF                        157 00110$:
      00A7EF 89               [ 2]  158 	pushw	x
      00A7F0 AE 01 02         [ 2]  159 	ldw	x, #0x0102
      00A7F3 CD 90 19         [ 4]  160 	call	_I2C_GetFlagStatus
      00A7F6 85               [ 2]  161 	popw	x
      00A7F7 4D               [ 1]  162 	tnz	a
      00A7F8 26 19            [ 1]  163 	jrne	00112$
      00A7FA 1F 08            [ 2]  164 	ldw	(0x08, sp), x
      00A7FC 16 0E            [ 2]  165 	ldw	y, (0x0e, sp)
      00A7FE 17 0A            [ 2]  166 	ldw	(0x0a, sp), y
      00A800 16 0E            [ 2]  167 	ldw	y, (0x0e, sp)
      00A802 72 A2 00 01      [ 2]  168 	subw	y, #0x0001
      00A806 17 0E            [ 2]  169 	ldw	(0x0e, sp), y
      00A808 24 01            [ 1]  170 	jrnc	00216$
      00A80A 5A               [ 2]  171 	decw	x
      00A80B                        172 00216$:
      00A80B 16 0A            [ 2]  173 	ldw	y, (0x0a, sp)
      00A80D 26 E0            [ 1]  174 	jrne	00110$
      00A80F 16 08            [ 2]  175 	ldw	y, (0x08, sp)
      00A811 26 DC            [ 1]  176 	jrne	00110$
      00A813                        177 00112$:
                                    178 ;	src\i2c.c: 25: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A813 C6 52 17         [ 1]  179 	ld	a, 0x5217
      00A816 C6 52 19         [ 1]  180 	ld	a, 0x5219
                                    181 ;	src\i2c.c: 26: while(countData) {//Повторяем пока не отправятся все данные.
      00A819 16 12            [ 2]  182 	ldw	y, (0x12, sp)
      00A81B 17 08            [ 2]  183 	ldw	(0x08, sp), y
      00A81D 16 05            [ 2]  184 	ldw	y, (0x05, sp)
      00A81F 17 0A            [ 2]  185 	ldw	(0x0a, sp), y
      00A821                        186 00117$:
      00A821 1E 0A            [ 2]  187 	ldw	x, (0x0a, sp)
      00A823 27 36            [ 1]  188 	jreq	00119$
                                    189 ;	src\i2c.c: 28: while(!(I2C->SR1 & 128) && (time_out--));//Ждём когда буфер передающего регистра будет пуст.
      00A825 AE 03 E8         [ 2]  190 	ldw	x, #0x03e8
      00A828 1F 0E            [ 2]  191 	ldw	(0x0e, sp), x
      00A82A 5F               [ 1]  192 	clrw	x
      00A82B                        193 00114$:
      00A82B C6 52 17         [ 1]  194 	ld	a, 0x5217
      00A82E 2B 19            [ 1]  195 	jrmi	00116$
      00A830 1F 01            [ 2]  196 	ldw	(0x01, sp), x
      00A832 16 0E            [ 2]  197 	ldw	y, (0x0e, sp)
      00A834 17 03            [ 2]  198 	ldw	(0x03, sp), y
      00A836 16 0E            [ 2]  199 	ldw	y, (0x0e, sp)
      00A838 72 A2 00 01      [ 2]  200 	subw	y, #0x0001
      00A83C 17 0E            [ 2]  201 	ldw	(0x0e, sp), y
      00A83E 24 01            [ 1]  202 	jrnc	00221$
      00A840 5A               [ 2]  203 	decw	x
      00A841                        204 00221$:
      00A841 16 03            [ 2]  205 	ldw	y, (0x03, sp)
      00A843 26 E6            [ 1]  206 	jrne	00114$
      00A845 16 01            [ 2]  207 	ldw	y, (0x01, sp)
      00A847 26 E2            [ 1]  208 	jrne	00114$
      00A849                        209 00116$:
                                    210 ;	src\i2c.c: 29: I2C_SendData(*dataBuffer);
      00A849 1E 08            [ 2]  211 	ldw	x, (0x08, sp)
      00A84B F6               [ 1]  212 	ld	a, (x)
      00A84C CD 8F 3E         [ 4]  213 	call	_I2C_SendData
                                    214 ;	src\i2c.c: 30: *dataBuffer++;
      00A84F 1E 08            [ 2]  215 	ldw	x, (0x08, sp)
      00A851 5C               [ 1]  216 	incw	x
      00A852 1F 08            [ 2]  217 	ldw	(0x08, sp), x
                                    218 ;	src\i2c.c: 31: countData--;
      00A854 1E 0A            [ 2]  219 	ldw	x, (0x0a, sp)
      00A856 5A               [ 2]  220 	decw	x
      00A857 1F 0A            [ 2]  221 	ldw	(0x0a, sp), x
      00A859 20 C6            [ 2]  222 	jra	00117$
      00A85B                        223 00119$:
                                    224 ;	src\i2c.c: 34: while((!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED)) && (time_out--));//Ждём окончания отправки данных.
      00A85B AE 03 E8         [ 2]  225 	ldw	x, #0x03e8
      00A85E 1F 0E            [ 2]  226 	ldw	(0x0e, sp), x
      00A860 5F               [ 1]  227 	clrw	x
      00A861                        228 00121$:
      00A861 89               [ 2]  229 	pushw	x
      00A862 AE 07 84         [ 2]  230 	ldw	x, #0x0784
      00A865 CD 8F 42         [ 4]  231 	call	_I2C_CheckEvent
      00A868 85               [ 2]  232 	popw	x
      00A869 4D               [ 1]  233 	tnz	a
      00A86A 26 1E            [ 1]  234 	jrne	00123$
      00A86C 1F 08            [ 2]  235 	ldw	(0x08, sp), x
      00A86E 7B 0E            [ 1]  236 	ld	a, (0x0e, sp)
      00A870 6B 0A            [ 1]  237 	ld	(0x0a, sp), a
      00A872 7B 0F            [ 1]  238 	ld	a, (0x0f, sp)
      00A874 16 0E            [ 2]  239 	ldw	y, (0x0e, sp)
      00A876 72 A2 00 01      [ 2]  240 	subw	y, #0x0001
      00A87A 17 0E            [ 2]  241 	ldw	(0x0e, sp), y
      00A87C 24 01            [ 1]  242 	jrnc	00226$
      00A87E 5A               [ 2]  243 	decw	x
      00A87F                        244 00226$:
      00A87F 4D               [ 1]  245 	tnz	a
      00A880 26 DF            [ 1]  246 	jrne	00121$
      00A882 16 09            [ 2]  247 	ldw	y, (0x09, sp)
      00A884 26 DB            [ 1]  248 	jrne	00121$
      00A886 0D 08            [ 1]  249 	tnz	(0x08, sp)
      00A888 26 D7            [ 1]  250 	jrne	00121$
      00A88A                        251 00123$:
                                    252 ;	src\i2c.c: 35: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A88A A6 01            [ 1]  253 	ld	a, #0x01
      00A88C CD 8D 9B         [ 4]  254 	call	_I2C_GenerateSTOP
                                    255 ;	src\i2c.c: 37: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
      00A88F AE 03 E8         [ 2]  256 	ldw	x, #0x03e8
      00A892 1F 0E            [ 2]  257 	ldw	(0x0e, sp), x
      00A894 5F               [ 1]  258 	clrw	x
      00A895                        259 00125$:
      00A895 C6 52 11         [ 1]  260 	ld	a, 0x5211
      00A898 A5 02            [ 1]  261 	bcp	a, #0x02
      00A89A 27 1E            [ 1]  262 	jreq	00128$
      00A89C 1F 08            [ 2]  263 	ldw	(0x08, sp), x
      00A89E 7B 0E            [ 1]  264 	ld	a, (0x0e, sp)
      00A8A0 6B 0A            [ 1]  265 	ld	(0x0a, sp), a
      00A8A2 7B 0F            [ 1]  266 	ld	a, (0x0f, sp)
      00A8A4 16 0E            [ 2]  267 	ldw	y, (0x0e, sp)
      00A8A6 72 A2 00 01      [ 2]  268 	subw	y, #0x0001
      00A8AA 17 0E            [ 2]  269 	ldw	(0x0e, sp), y
      00A8AC 24 01            [ 1]  270 	jrnc	00230$
      00A8AE 5A               [ 2]  271 	decw	x
      00A8AF                        272 00230$:
      00A8AF 4D               [ 1]  273 	tnz	a
      00A8B0 26 E3            [ 1]  274 	jrne	00125$
      00A8B2 16 09            [ 2]  275 	ldw	y, (0x09, sp)
      00A8B4 26 DF            [ 1]  276 	jrne	00125$
      00A8B6 0D 08            [ 1]  277 	tnz	(0x08, sp)
      00A8B8 26 DB            [ 1]  278 	jrne	00125$
      00A8BA                        279 00128$:
                                    280 ;	src\i2c.c: 38: }
      00A8BA 1E 10            [ 2]  281 	ldw	x, (16, sp)
      00A8BC 5B 13            [ 2]  282 	addw	sp, #19
      00A8BE FC               [ 2]  283 	jp	(x)
                                    284 ;	src\i2c.c: 40: uint8_t I2C_Read_Byte(uint8_t Addr) {
                                    285 ;	-----------------------------------------
                                    286 ;	 function I2C_Read_Byte
                                    287 ;	-----------------------------------------
      00A8BF                        288 _I2C_Read_Byte:
      00A8BF 52 0A            [ 2]  289 	sub	sp, #10
      00A8C1 6B 06            [ 1]  290 	ld	(0x06, sp), a
                                    291 ;	src\i2c.c: 42: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A8C3 AE 03 E8         [ 2]  292 	ldw	x, #0x03e8
      00A8C6 1F 09            [ 2]  293 	ldw	(0x09, sp), x
      00A8C8 5F               [ 1]  294 	clrw	x
      00A8C9 1F 07            [ 2]  295 	ldw	(0x07, sp), x
      00A8CB                        296 00102$:
      00A8CB AE 03 02         [ 2]  297 	ldw	x, #0x0302
      00A8CE CD 90 19         [ 4]  298 	call	_I2C_GetFlagStatus
      00A8D1 4D               [ 1]  299 	tnz	a
      00A8D2 27 1E            [ 1]  300 	jreq	00104$
      00A8D4 16 09            [ 2]  301 	ldw	y, (0x09, sp)
      00A8D6 17 04            [ 2]  302 	ldw	(0x04, sp), y
      00A8D8 16 07            [ 2]  303 	ldw	y, (0x07, sp)
      00A8DA 17 02            [ 2]  304 	ldw	(0x02, sp), y
      00A8DC 1E 09            [ 2]  305 	ldw	x, (0x09, sp)
      00A8DE 1D 00 01         [ 2]  306 	subw	x, #0x0001
      00A8E1 1F 09            [ 2]  307 	ldw	(0x09, sp), x
      00A8E3 1E 07            [ 2]  308 	ldw	x, (0x07, sp)
      00A8E5 24 01            [ 1]  309 	jrnc	00179$
      00A8E7 5A               [ 2]  310 	decw	x
      00A8E8                        311 00179$:
      00A8E8 1F 07            [ 2]  312 	ldw	(0x07, sp), x
      00A8EA 1E 04            [ 2]  313 	ldw	x, (0x04, sp)
      00A8EC 26 DD            [ 1]  314 	jrne	00102$
      00A8EE 1E 02            [ 2]  315 	ldw	x, (0x02, sp)
      00A8F0 26 D9            [ 1]  316 	jrne	00102$
      00A8F2                        317 00104$:
                                    318 ;	src\i2c.c: 43: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A8F2 A6 01            [ 1]  319 	ld	a, #0x01
      00A8F4 CD 8D 70         [ 4]  320 	call	_I2C_GenerateSTART
                                    321 ;	src\i2c.c: 45: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A8F7 AE 03 E8         [ 2]  322 	ldw	x, #0x03e8
      00A8FA 1F 09            [ 2]  323 	ldw	(0x09, sp), x
      00A8FC 5F               [ 1]  324 	clrw	x
      00A8FD                        325 00106$:
      00A8FD 89               [ 2]  326 	pushw	x
      00A8FE AE 03 01         [ 2]  327 	ldw	x, #0x0301
      00A901 CD 8F 42         [ 4]  328 	call	_I2C_CheckEvent
      00A904 85               [ 2]  329 	popw	x
      00A905 4D               [ 1]  330 	tnz	a
      00A906 26 19            [ 1]  331 	jrne	00108$
      00A908 1F 02            [ 2]  332 	ldw	(0x02, sp), x
      00A90A 16 09            [ 2]  333 	ldw	y, (0x09, sp)
      00A90C 17 04            [ 2]  334 	ldw	(0x04, sp), y
      00A90E 16 09            [ 2]  335 	ldw	y, (0x09, sp)
      00A910 72 A2 00 01      [ 2]  336 	subw	y, #0x0001
      00A914 17 09            [ 2]  337 	ldw	(0x09, sp), y
      00A916 24 01            [ 1]  338 	jrnc	00183$
      00A918 5A               [ 2]  339 	decw	x
      00A919                        340 00183$:
      00A919 16 04            [ 2]  341 	ldw	y, (0x04, sp)
      00A91B 26 E0            [ 1]  342 	jrne	00106$
      00A91D 16 02            [ 2]  343 	ldw	y, (0x02, sp)
      00A91F 26 DC            [ 1]  344 	jrne	00106$
      00A921                        345 00108$:
                                    346 ;	src\i2c.c: 46: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства и бит приёма данных.
      00A921 4B 01            [ 1]  347 	push	#0x01
      00A923 7B 07            [ 1]  348 	ld	a, (0x07, sp)
      00A925 CD 8F 0A         [ 4]  349 	call	_I2C_Send7bitAddress
                                    350 ;	src\i2c.c: 48: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00A928 AE 03 E8         [ 2]  351 	ldw	x, #0x03e8
      00A92B 1F 09            [ 2]  352 	ldw	(0x09, sp), x
      00A92D 5F               [ 1]  353 	clrw	x
      00A92E                        354 00110$:
      00A92E 89               [ 2]  355 	pushw	x
      00A92F AE 01 02         [ 2]  356 	ldw	x, #0x0102
      00A932 CD 90 19         [ 4]  357 	call	_I2C_GetFlagStatus
      00A935 85               [ 2]  358 	popw	x
      00A936 4D               [ 1]  359 	tnz	a
      00A937 26 19            [ 1]  360 	jrne	00112$
      00A939 1F 02            [ 2]  361 	ldw	(0x02, sp), x
      00A93B 16 09            [ 2]  362 	ldw	y, (0x09, sp)
      00A93D 17 04            [ 2]  363 	ldw	(0x04, sp), y
      00A93F 16 09            [ 2]  364 	ldw	y, (0x09, sp)
      00A941 72 A2 00 01      [ 2]  365 	subw	y, #0x0001
      00A945 17 09            [ 2]  366 	ldw	(0x09, sp), y
      00A947 24 01            [ 1]  367 	jrnc	00187$
      00A949 5A               [ 2]  368 	decw	x
      00A94A                        369 00187$:
      00A94A 16 04            [ 2]  370 	ldw	y, (0x04, sp)
      00A94C 26 E0            [ 1]  371 	jrne	00110$
      00A94E 16 02            [ 2]  372 	ldw	y, (0x02, sp)
      00A950 26 DC            [ 1]  373 	jrne	00110$
      00A952                        374 00112$:
                                    375 ;	src\i2c.c: 51: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
      00A952 4F               [ 1]  376 	clr	a
      00A953 CD 8E 1C         [ 4]  377 	call	_I2C_AcknowledgeConfig
                                    378 ;	src\i2c.c: 53: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00A956 C6 52 17         [ 1]  379 	ld	a, 0x5217
      00A959 C6 52 19         [ 1]  380 	ld	a, 0x5219
                                    381 ;	src\i2c.c: 55: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00A95C A6 01            [ 1]  382 	ld	a, #0x01
      00A95E CD 8D 9B         [ 4]  383 	call	_I2C_GenerateSTOP
                                    384 ;	src\i2c.c: 58: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
      00A961 AE 03 E8         [ 2]  385 	ldw	x, #0x03e8
      00A964 1F 09            [ 2]  386 	ldw	(0x09, sp), x
      00A966 5F               [ 1]  387 	clrw	x
      00A967                        388 00114$:
      00A967 89               [ 2]  389 	pushw	x
      00A968 AE 01 40         [ 2]  390 	ldw	x, #0x0140
      00A96B CD 90 19         [ 4]  391 	call	_I2C_GetFlagStatus
      00A96E 85               [ 2]  392 	popw	x
      00A96F 4D               [ 1]  393 	tnz	a
      00A970 26 19            [ 1]  394 	jrne	00116$
      00A972 1F 02            [ 2]  395 	ldw	(0x02, sp), x
      00A974 16 09            [ 2]  396 	ldw	y, (0x09, sp)
      00A976 17 04            [ 2]  397 	ldw	(0x04, sp), y
      00A978 16 09            [ 2]  398 	ldw	y, (0x09, sp)
      00A97A 72 A2 00 01      [ 2]  399 	subw	y, #0x0001
      00A97E 17 09            [ 2]  400 	ldw	(0x09, sp), y
      00A980 24 01            [ 1]  401 	jrnc	00191$
      00A982 5A               [ 2]  402 	decw	x
      00A983                        403 00191$:
      00A983 16 04            [ 2]  404 	ldw	y, (0x04, sp)
      00A985 26 E0            [ 1]  405 	jrne	00114$
      00A987 16 02            [ 2]  406 	ldw	y, (0x02, sp)
      00A989 26 DC            [ 1]  407 	jrne	00114$
      00A98B                        408 00116$:
                                    409 ;	src\i2c.c: 60: uint8_t read_byte = I2C_ReceiveData();//Читаем данные.
      00A98B CD 8F 06         [ 4]  410 	call	_I2C_ReceiveData
      00A98E 6B 01            [ 1]  411 	ld	(0x01, sp), a
                                    412 ;	src\i2c.c: 63: while((I2C->CR2 & I2C_CR2_STOP)&& (time_out--));//Ждём остановки передачи и STOP на линии.
      00A990 AE 03 E8         [ 2]  413 	ldw	x, #0x03e8
      00A993 1F 09            [ 2]  414 	ldw	(0x09, sp), x
      00A995 5F               [ 1]  415 	clrw	x
      00A996                        416 00118$:
      00A996 72 03 52 11 19   [ 2]  417 	btjf	0x5211, #1, 00120$
      00A99B 1F 02            [ 2]  418 	ldw	(0x02, sp), x
      00A99D 16 09            [ 2]  419 	ldw	y, (0x09, sp)
      00A99F 17 04            [ 2]  420 	ldw	(0x04, sp), y
      00A9A1 16 09            [ 2]  421 	ldw	y, (0x09, sp)
      00A9A3 72 A2 00 01      [ 2]  422 	subw	y, #0x0001
      00A9A7 17 09            [ 2]  423 	ldw	(0x09, sp), y
      00A9A9 24 01            [ 1]  424 	jrnc	00195$
      00A9AB 5A               [ 2]  425 	decw	x
      00A9AC                        426 00195$:
      00A9AC 16 04            [ 2]  427 	ldw	y, (0x04, sp)
      00A9AE 26 E6            [ 1]  428 	jrne	00118$
      00A9B0 16 02            [ 2]  429 	ldw	y, (0x02, sp)
      00A9B2 26 E2            [ 1]  430 	jrne	00118$
      00A9B4                        431 00120$:
                                    432 ;	src\i2c.c: 64: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
      00A9B4 A6 01            [ 1]  433 	ld	a, #0x01
      00A9B6 CD 8E 1C         [ 4]  434 	call	_I2C_AcknowledgeConfig
                                    435 ;	src\i2c.c: 65: return read_byte;
      00A9B9 7B 01            [ 1]  436 	ld	a, (0x01, sp)
                                    437 ;	src\i2c.c: 66: }
      00A9BB 5B 0A            [ 2]  438 	addw	sp, #10
      00A9BD 81               [ 4]  439 	ret
                                    440 ;	src\i2c.c: 69: void I2C_Read_Bytes(uint8_t Addr, uint16_t countData, uint8_t* dataBuffer) {
                                    441 ;	-----------------------------------------
                                    442 ;	 function I2C_Read_Bytes
                                    443 ;	-----------------------------------------
      00A9BE                        444 _I2C_Read_Bytes:
      00A9BE 52 0F            [ 2]  445 	sub	sp, #15
      00A9C0 6B 07            [ 1]  446 	ld	(0x07, sp), a
      00A9C2 1F 05            [ 2]  447 	ldw	(0x05, sp), x
                                    448 ;	src\i2c.c: 71: while((I2C_GetFlagStatus(I2C_FLAG_BUSBUSY)) && (time_out--));//Проверяем занятость линии I2C.
      00A9C4 AE 03 E8         [ 2]  449 	ldw	x, #0x03e8
      00A9C7 1F 0E            [ 2]  450 	ldw	(0x0e, sp), x
      00A9C9 5F               [ 1]  451 	clrw	x
      00A9CA 1F 0C            [ 2]  452 	ldw	(0x0c, sp), x
      00A9CC                        453 00102$:
      00A9CC AE 03 02         [ 2]  454 	ldw	x, #0x0302
      00A9CF CD 90 19         [ 4]  455 	call	_I2C_GetFlagStatus
      00A9D2 4D               [ 1]  456 	tnz	a
      00A9D3 27 1E            [ 1]  457 	jreq	00104$
      00A9D5 16 0E            [ 2]  458 	ldw	y, (0x0e, sp)
      00A9D7 17 0A            [ 2]  459 	ldw	(0x0a, sp), y
      00A9D9 16 0C            [ 2]  460 	ldw	y, (0x0c, sp)
      00A9DB 17 08            [ 2]  461 	ldw	(0x08, sp), y
      00A9DD 1E 0E            [ 2]  462 	ldw	x, (0x0e, sp)
      00A9DF 1D 00 01         [ 2]  463 	subw	x, #0x0001
      00A9E2 1F 0E            [ 2]  464 	ldw	(0x0e, sp), x
      00A9E4 1E 0C            [ 2]  465 	ldw	x, (0x0c, sp)
      00A9E6 24 01            [ 1]  466 	jrnc	00229$
      00A9E8 5A               [ 2]  467 	decw	x
      00A9E9                        468 00229$:
      00A9E9 1F 0C            [ 2]  469 	ldw	(0x0c, sp), x
      00A9EB 1E 0A            [ 2]  470 	ldw	x, (0x0a, sp)
      00A9ED 26 DD            [ 1]  471 	jrne	00102$
      00A9EF 1E 08            [ 2]  472 	ldw	x, (0x08, sp)
      00A9F1 26 D9            [ 1]  473 	jrne	00102$
      00A9F3                        474 00104$:
                                    475 ;	src\i2c.c: 72: I2C_GenerateSTART(ENABLE);//Запуск I2C для передачи данных.
      00A9F3 A6 01            [ 1]  476 	ld	a, #0x01
      00A9F5 CD 8D 70         [ 4]  477 	call	_I2C_GenerateSTART
                                    478 ;	src\i2c.c: 74: while((!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT)) && (time_out--));//Ждём установки бита MASTER.
      00A9F8 AE 03 E8         [ 2]  479 	ldw	x, #0x03e8
      00A9FB 1F 0E            [ 2]  480 	ldw	(0x0e, sp), x
      00A9FD 5F               [ 1]  481 	clrw	x
      00A9FE                        482 00106$:
      00A9FE 89               [ 2]  483 	pushw	x
      00A9FF AE 03 01         [ 2]  484 	ldw	x, #0x0301
      00AA02 CD 8F 42         [ 4]  485 	call	_I2C_CheckEvent
      00AA05 85               [ 2]  486 	popw	x
      00AA06 4D               [ 1]  487 	tnz	a
      00AA07 26 19            [ 1]  488 	jrne	00108$
      00AA09 1F 08            [ 2]  489 	ldw	(0x08, sp), x
      00AA0B 16 0E            [ 2]  490 	ldw	y, (0x0e, sp)
      00AA0D 17 0A            [ 2]  491 	ldw	(0x0a, sp), y
      00AA0F 16 0E            [ 2]  492 	ldw	y, (0x0e, sp)
      00AA11 72 A2 00 01      [ 2]  493 	subw	y, #0x0001
      00AA15 17 0E            [ 2]  494 	ldw	(0x0e, sp), y
      00AA17 24 01            [ 1]  495 	jrnc	00233$
      00AA19 5A               [ 2]  496 	decw	x
      00AA1A                        497 00233$:
      00AA1A 16 0A            [ 2]  498 	ldw	y, (0x0a, sp)
      00AA1C 26 E0            [ 1]  499 	jrne	00106$
      00AA1E 16 08            [ 2]  500 	ldw	y, (0x08, sp)
      00AA20 26 DC            [ 1]  501 	jrne	00106$
      00AA22                        502 00108$:
                                    503 ;	src\i2c.c: 75: I2C_Send7bitAddress((uint8_t)Addr, I2C_DIRECTION_RX);//Отсылаем адрес вызываемого устройства.
      00AA22 4B 01            [ 1]  504 	push	#0x01
      00AA24 7B 08            [ 1]  505 	ld	a, (0x08, sp)
      00AA26 CD 8F 0A         [ 4]  506 	call	_I2C_Send7bitAddress
                                    507 ;	src\i2c.c: 77: while((!I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED)) && (time_out--));//Ждём когда нужное устройство подтвердит.
      00AA29 AE 03 E8         [ 2]  508 	ldw	x, #0x03e8
      00AA2C 1F 0E            [ 2]  509 	ldw	(0x0e, sp), x
      00AA2E 5F               [ 1]  510 	clrw	x
      00AA2F                        511 00110$:
      00AA2F 89               [ 2]  512 	pushw	x
      00AA30 AE 01 02         [ 2]  513 	ldw	x, #0x0102
      00AA33 CD 90 19         [ 4]  514 	call	_I2C_GetFlagStatus
      00AA36 85               [ 2]  515 	popw	x
      00AA37 4D               [ 1]  516 	tnz	a
      00AA38 26 19            [ 1]  517 	jrne	00112$
      00AA3A 1F 08            [ 2]  518 	ldw	(0x08, sp), x
      00AA3C 16 0E            [ 2]  519 	ldw	y, (0x0e, sp)
      00AA3E 17 0A            [ 2]  520 	ldw	(0x0a, sp), y
      00AA40 16 0E            [ 2]  521 	ldw	y, (0x0e, sp)
      00AA42 72 A2 00 01      [ 2]  522 	subw	y, #0x0001
      00AA46 17 0E            [ 2]  523 	ldw	(0x0e, sp), y
      00AA48 24 01            [ 1]  524 	jrnc	00237$
      00AA4A 5A               [ 2]  525 	decw	x
      00AA4B                        526 00237$:
      00AA4B 16 0A            [ 2]  527 	ldw	y, (0x0a, sp)
      00AA4D 26 E0            [ 1]  528 	jrne	00110$
      00AA4F 16 08            [ 2]  529 	ldw	y, (0x08, sp)
      00AA51 26 DC            [ 1]  530 	jrne	00110$
      00AA53                        531 00112$:
                                    532 ;	src\i2c.c: 79: (void)I2C->SR1; (void)I2C->SR3;//Комбинация для сброса ADDR.
      00AA53 C6 52 17         [ 1]  533 	ld	a, 0x5217
      00AA56 C6 52 19         [ 1]  534 	ld	a, 0x5219
                                    535 ;	src\i2c.c: 80: if(countData > 3) {//Если принимаем больше трёх байтов.
      00AA59 1E 05            [ 2]  536 	ldw	x, (0x05, sp)
      00AA5B A3 00 03         [ 2]  537 	cpw	x, #0x0003
      00AA5E 23 55            [ 2]  538 	jrule	00147$
                                    539 ;	src\i2c.c: 81: while(countData > 3) {
      00AA60 16 12            [ 2]  540 	ldw	y, (0x12, sp)
      00AA62 17 08            [ 2]  541 	ldw	(0x08, sp), y
      00AA64 16 05            [ 2]  542 	ldw	y, (0x05, sp)
      00AA66 17 0A            [ 2]  543 	ldw	(0x0a, sp), y
      00AA68                        544 00117$:
      00AA68 1E 0A            [ 2]  545 	ldw	x, (0x0a, sp)
      00AA6A A3 00 03         [ 2]  546 	cpw	x, #0x0003
      00AA6D 23 42            [ 2]  547 	jrule	00159$
                                    548 ;	src\i2c.c: 83: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
      00AA6F AE 03 E8         [ 2]  549 	ldw	x, #0x03e8
      00AA72 1F 0E            [ 2]  550 	ldw	(0x0e, sp), x
      00AA74 5F               [ 1]  551 	clrw	x
      00AA75 1F 0C            [ 2]  552 	ldw	(0x0c, sp), x
      00AA77                        553 00114$:
      00AA77 AE 01 04         [ 2]  554 	ldw	x, #0x0104
      00AA7A CD 90 19         [ 4]  555 	call	_I2C_GetFlagStatus
      00AA7D 6B 04            [ 1]  556 	ld	(0x04, sp), a
      00AA7F 26 1E            [ 1]  557 	jrne	00116$
      00AA81 16 0E            [ 2]  558 	ldw	y, (0x0e, sp)
      00AA83 17 03            [ 2]  559 	ldw	(0x03, sp), y
      00AA85 16 0C            [ 2]  560 	ldw	y, (0x0c, sp)
      00AA87 17 01            [ 2]  561 	ldw	(0x01, sp), y
      00AA89 1E 0E            [ 2]  562 	ldw	x, (0x0e, sp)
      00AA8B 1D 00 01         [ 2]  563 	subw	x, #0x0001
      00AA8E 1F 0E            [ 2]  564 	ldw	(0x0e, sp), x
      00AA90 1E 0C            [ 2]  565 	ldw	x, (0x0c, sp)
      00AA92 24 01            [ 1]  566 	jrnc	00243$
      00AA94 5A               [ 2]  567 	decw	x
      00AA95                        568 00243$:
      00AA95 1F 0C            [ 2]  569 	ldw	(0x0c, sp), x
      00AA97 1E 03            [ 2]  570 	ldw	x, (0x03, sp)
      00AA99 26 DC            [ 1]  571 	jrne	00114$
      00AA9B 1E 01            [ 2]  572 	ldw	x, (0x01, sp)
      00AA9D 26 D8            [ 1]  573 	jrne	00114$
      00AA9F                        574 00116$:
                                    575 ;	src\i2c.c: 84: *dataBuffer = I2C_ReceiveData();
      00AA9F CD 8F 06         [ 4]  576 	call	_I2C_ReceiveData
      00AAA2 1E 08            [ 2]  577 	ldw	x, (0x08, sp)
      00AAA4 F7               [ 1]  578 	ld	(x), a
                                    579 ;	src\i2c.c: 85: *dataBuffer++;
      00AAA5 1E 08            [ 2]  580 	ldw	x, (0x08, sp)
      00AAA7 5C               [ 1]  581 	incw	x
      00AAA8 1F 08            [ 2]  582 	ldw	(0x08, sp), x
                                    583 ;	src\i2c.c: 86: countData--;
      00AAAA 1E 0A            [ 2]  584 	ldw	x, (0x0a, sp)
      00AAAC 5A               [ 2]  585 	decw	x
      00AAAD 1F 0A            [ 2]  586 	ldw	(0x0a, sp), x
      00AAAF 20 B7            [ 2]  587 	jra	00117$
      00AAB1                        588 00159$:
      00AAB1 16 08            [ 2]  589 	ldw	y, (0x08, sp)
      00AAB3 17 12            [ 2]  590 	ldw	(0x12, sp), y
                                    591 ;	src\i2c.c: 90: while ((!I2C_GetFlagStatus(I2C_FLAG_TRANSFERFINISHED)) && (time_out--));//Ждём отправку всех данных устройству.
      00AAB5                        592 00147$:
      00AAB5 AE 03 E8         [ 2]  593 	ldw	x, #0x03e8
      00AAB8 1F 0E            [ 2]  594 	ldw	(0x0e, sp), x
      00AABA 5F               [ 1]  595 	clrw	x
      00AABB                        596 00123$:
      00AABB 89               [ 2]  597 	pushw	x
      00AABC AE 01 04         [ 2]  598 	ldw	x, #0x0104
      00AABF CD 90 19         [ 4]  599 	call	_I2C_GetFlagStatus
      00AAC2 85               [ 2]  600 	popw	x
      00AAC3 4D               [ 1]  601 	tnz	a
      00AAC4 26 1E            [ 1]  602 	jrne	00125$
      00AAC6 1F 08            [ 2]  603 	ldw	(0x08, sp), x
      00AAC8 7B 0E            [ 1]  604 	ld	a, (0x0e, sp)
      00AACA 6B 0A            [ 1]  605 	ld	(0x0a, sp), a
      00AACC 7B 0F            [ 1]  606 	ld	a, (0x0f, sp)
      00AACE 16 0E            [ 2]  607 	ldw	y, (0x0e, sp)
      00AAD0 72 A2 00 01      [ 2]  608 	subw	y, #0x0001
      00AAD4 17 0E            [ 2]  609 	ldw	(0x0e, sp), y
      00AAD6 24 01            [ 1]  610 	jrnc	00248$
      00AAD8 5A               [ 2]  611 	decw	x
      00AAD9                        612 00248$:
      00AAD9 4D               [ 1]  613 	tnz	a
      00AADA 26 DF            [ 1]  614 	jrne	00123$
      00AADC 16 09            [ 2]  615 	ldw	y, (0x09, sp)
      00AADE 26 DB            [ 1]  616 	jrne	00123$
      00AAE0 0D 08            [ 1]  617 	tnz	(0x08, sp)
      00AAE2 26 D7            [ 1]  618 	jrne	00123$
      00AAE4                        619 00125$:
                                    620 ;	src\i2c.c: 91: I2C_AcknowledgeConfig(I2C_ACK_NONE);//Отключаем ACK после приёма последнего байта, что бы не отправлялись данные.
      00AAE4 4F               [ 1]  621 	clr	a
      00AAE5 CD 8E 1C         [ 4]  622 	call	_I2C_AcknowledgeConfig
                                    623 ;	src\i2c.c: 92: *dataBuffer = I2C_ReceiveData();
      00AAE8 1E 12            [ 2]  624 	ldw	x, (0x12, sp)
      00AAEA 89               [ 2]  625 	pushw	x
      00AAEB CD 8F 06         [ 4]  626 	call	_I2C_ReceiveData
      00AAEE 85               [ 2]  627 	popw	x
      00AAEF F7               [ 1]  628 	ld	(x), a
                                    629 ;	src\i2c.c: 93: *dataBuffer++;
      00AAF0 5C               [ 1]  630 	incw	x
      00AAF1 1F 12            [ 2]  631 	ldw	(0x12, sp), x
                                    632 ;	src\i2c.c: 94: I2C_GenerateSTOP(ENABLE);//Установка STOP бита на линии.
      00AAF3 A6 01            [ 1]  633 	ld	a, #0x01
      00AAF5 CD 8D 9B         [ 4]  634 	call	_I2C_GenerateSTOP
                                    635 ;	src\i2c.c: 95: *dataBuffer = I2C_ReceiveData();
      00AAF8 1E 12            [ 2]  636 	ldw	x, (0x12, sp)
      00AAFA 89               [ 2]  637 	pushw	x
      00AAFB CD 8F 06         [ 4]  638 	call	_I2C_ReceiveData
      00AAFE 85               [ 2]  639 	popw	x
      00AAFF F7               [ 1]  640 	ld	(x), a
                                    641 ;	src\i2c.c: 96: *dataBuffer++;
      00AB00 5C               [ 1]  642 	incw	x
      00AB01 1F 12            [ 2]  643 	ldw	(0x12, sp), x
                                    644 ;	src\i2c.c: 98: while((!I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY)) && (time_out--));//Ждём когда придут данные.
      00AB03 AE 03 E8         [ 2]  645 	ldw	x, #0x03e8
      00AB06 1F 0E            [ 2]  646 	ldw	(0x0e, sp), x
      00AB08 5F               [ 1]  647 	clrw	x
      00AB09                        648 00127$:
      00AB09 89               [ 2]  649 	pushw	x
      00AB0A AE 01 40         [ 2]  650 	ldw	x, #0x0140
      00AB0D CD 90 19         [ 4]  651 	call	_I2C_GetFlagStatus
      00AB10 85               [ 2]  652 	popw	x
      00AB11 4D               [ 1]  653 	tnz	a
      00AB12 26 1E            [ 1]  654 	jrne	00129$
      00AB14 1F 08            [ 2]  655 	ldw	(0x08, sp), x
      00AB16 7B 0E            [ 1]  656 	ld	a, (0x0e, sp)
      00AB18 6B 0A            [ 1]  657 	ld	(0x0a, sp), a
      00AB1A 7B 0F            [ 1]  658 	ld	a, (0x0f, sp)
      00AB1C 16 0E            [ 2]  659 	ldw	y, (0x0e, sp)
      00AB1E 72 A2 00 01      [ 2]  660 	subw	y, #0x0001
      00AB22 17 0E            [ 2]  661 	ldw	(0x0e, sp), y
      00AB24 24 01            [ 1]  662 	jrnc	00252$
      00AB26 5A               [ 2]  663 	decw	x
      00AB27                        664 00252$:
      00AB27 4D               [ 1]  665 	tnz	a
      00AB28 26 DF            [ 1]  666 	jrne	00127$
      00AB2A 16 09            [ 2]  667 	ldw	y, (0x09, sp)
      00AB2C 26 DB            [ 1]  668 	jrne	00127$
      00AB2E 0D 08            [ 1]  669 	tnz	(0x08, sp)
      00AB30 26 D7            [ 1]  670 	jrne	00127$
      00AB32                        671 00129$:
                                    672 ;	src\i2c.c: 99: *dataBuffer = I2C_ReceiveData();
      00AB32 1E 12            [ 2]  673 	ldw	x, (0x12, sp)
      00AB34 89               [ 2]  674 	pushw	x
      00AB35 CD 8F 06         [ 4]  675 	call	_I2C_ReceiveData
      00AB38 85               [ 2]  676 	popw	x
      00AB39 F7               [ 1]  677 	ld	(x), a
                                    678 ;	src\i2c.c: 101: while((I2C->CR2 & I2C_CR2_STOP) && (time_out--));//Ждём остановки передачи и STOP на линии.
      00AB3A AE 03 E8         [ 2]  679 	ldw	x, #0x03e8
      00AB3D 1F 0E            [ 2]  680 	ldw	(0x0e, sp), x
      00AB3F 5F               [ 1]  681 	clrw	x
      00AB40                        682 00131$:
      00AB40 72 03 52 11 1E   [ 2]  683 	btjf	0x5211, #1, 00133$
      00AB45 1F 08            [ 2]  684 	ldw	(0x08, sp), x
      00AB47 7B 0E            [ 1]  685 	ld	a, (0x0e, sp)
      00AB49 6B 0A            [ 1]  686 	ld	(0x0a, sp), a
      00AB4B 7B 0F            [ 1]  687 	ld	a, (0x0f, sp)
      00AB4D 16 0E            [ 2]  688 	ldw	y, (0x0e, sp)
      00AB4F 72 A2 00 01      [ 2]  689 	subw	y, #0x0001
      00AB53 17 0E            [ 2]  690 	ldw	(0x0e, sp), y
      00AB55 24 01            [ 1]  691 	jrnc	00256$
      00AB57 5A               [ 2]  692 	decw	x
      00AB58                        693 00256$:
      00AB58 4D               [ 1]  694 	tnz	a
      00AB59 26 E5            [ 1]  695 	jrne	00131$
      00AB5B 16 09            [ 2]  696 	ldw	y, (0x09, sp)
      00AB5D 26 E1            [ 1]  697 	jrne	00131$
      00AB5F 0D 08            [ 1]  698 	tnz	(0x08, sp)
      00AB61 26 DD            [ 1]  699 	jrne	00131$
      00AB63                        700 00133$:
                                    701 ;	src\i2c.c: 102: I2C_AcknowledgeConfig(I2C_ACK_CURR);//Устанавливаем контроль бита ACK.
      00AB63 A6 01            [ 1]  702 	ld	a, #0x01
      00AB65 CD 8E 1C         [ 4]  703 	call	_I2C_AcknowledgeConfig
                                    704 ;	src\i2c.c: 103: }
      00AB68 1E 10            [ 2]  705 	ldw	x, (16, sp)
      00AB6A 5B 13            [ 2]  706 	addw	sp, #19
      00AB6C FC               [ 2]  707 	jp	(x)
                                    708 	.area CODE
                                    709 	.area CONST
                                    710 	.area INITIALIZER
                                    711 	.area CABS (ABS)
