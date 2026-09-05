1 SCREEN 0 : COLOR 2,1,1 : CLS : LOCATE 21,25 : PRINT "Woronev. 11.92"
2 I3$(1)="Б И З Н Е С" : I3$(2)="Э К О Н О М И Ч Е С К А Я" : I3$(3)="И Г Р А"
3 FOR Z9=1 TO 3
4 I=40 : J=0 : I3$=I3$(Z9)
5 LOCATE 10,I : PRINT LEFT$(I3$,J) : I=I-1
6 IF J<LEN(I3$)-1 THEN J=J+1 : GO TO 5
7 J=LEN(I3$) : LOCATE 10,I : PRINT I3$ : I=I-1
8 J1=J+I+1 : LOCATE 10,J1 : PRINT "                                           "
9 IF I>0 THEN 7
10 LOCATE 10,1 : PRINT RIGHT$(I3$,J) : J=J-1
11 LOCATE 10,J1 : PRINT "                                   " : J1=J1-1
12 IF J>0 THEN 10
13 LOCATE 10,1 : PRINT "  "
14 NEXT Z9
15 LOCATE 10,2 : PRINT "Желаете узнать правила (Д)а/(Н)ет"
16 LOCATE 10,37 : INPUT J$
17 IF J$="N" THEN 178 : IF J$="Н" THEN 178 : IF J$="н" THEN 178
18 SCREEN 1 : CLS : PRINT TAB(28)"П Р А В И Л А   И Г Р Ы" : I=3
19 I3$(1)="В этой игре максимальное число игроков четверо. Но можно играть и "
20 I3$(2)="одному,против компьютера. Вся игра построена по принципу вопросов и"
21 I3$(3)="ответов. Компьютер делает вам предложение, например: Бросьте кубик,"
22 I3$(4)="вы производите действие, в данном случае просто нажимаете ВК. На"
23 I3$(5)="вопрс о покупке фирмы нужно отвечать либо положительно <D> либо от-"
24 I3$(6)="рицательно, просто нажав ВК. Чтобы закончить игру надо после пред-"
25 I3$(7)="ложения бросить кубик, нажав клавишы <E> и ВК. По окончании игры"
26 I3$(8)="подсчитывается сумма чеков и стоимость фирм, определяется победит-"
27 I3$(9)="ель и сумма очков, набранная победителем, сравнивается с рекордом"
28 I3$(10)="игры. Если устоновлен новый рекорд, он будет записан на диск."
99 FOR I=1 TO 10
100 LOCATE I+3,8 : PRINT I3$(I)
101 NEXT I
102 LOCATE 20,6 : PRINT "НАЖМИТЕ <ВК> ЧТОБЫ НАЧАТЬ ИГРУ"
103 LOCATE 20,38 : INPUT I3$
178 DIM O$(17),O(17),O1(17),F4(112),F$(112),V(112),F3$(112)
179 SCREEN 0
180 PRINT TAB(10)"Сколько человек играет?"
181 INPUT A
182 K4$="КОМПЬЮТЕР"
183 IF A<1 THEN 180 : IF A>4 THEN 180
184 PRINT TAB(10)"Ваши имена?"
185 PRINT  : IF A=1 THEN PRINT TAB(4)"% - КОМПЬЮТЕР"
186 IF A=1 THEN PRINT 
187 PRINT TAB(4)"@" : INPUT A$
188 IF A=1 THEN 194
189 PRINT  : PRINT TAB(4)"$" : INPUT B$
190 IF A=2 THEN 194
191 PRINT  : PRINT TAB(4)"&" : INPUT C$
192 IF A=3 THEN 194
193 PRINT  : PRINT TAB(4)"#" : INPUT D$
194 BEEP : BEEP : BEEP : SCREEN 1
195 GOSUB 197
196 GO TO 204
197 LINE (0,0)-(640,0) : LINE (0,25)-(640,25)
198 LINE (0,49)-(640,49) : LINE (0,73)-(640,73)
199 LINE (0,97)-(640,97) : LINE (0,121)-(640,121)
200 LINE (0,145)-(640,145) : LINE (0,169)-(640,169)
201 RETURN
204 GOSUB 1000
205 I1=-1 : FOR I=0 TO 6 : I1=I1+3 : J1=82
210 FOR J=0 TO 15 : J1=J1-5 : READ E$
220 LOCATE I1,J1 : PRINT E$
230 NEXT J : NEXT I
240 REM T-телевидение5,A-авиация4,B-обувь0,S-сигареты0,J-ювелиры7,M-машины1
250 REM N-спиртное5,F-фотоапараты3,G-галантерея1,O-одежда6,P-парфюмерия4
260 REM R-радиоапаратура6,W-компьютеры3,K-космос5,V-мотоцыклы7
270 DATA "R15","R8","J1","O6","K1","O8","M12","V3","F3","G3","O9","R1","P10"
280 DATA "F4","P7","P1","A2","V1","вор!","W4","F4","R9","O2","БАНК","J2","B1"
290 DATA "M6","F6","K3","S2","ШАНС","R10","S12","M2","S11","P12","R5","ШАНС"
300 DATA "M9","S2","W5","A5","S5","КЛАД","вор!","R11","A6","S1","R7","O5","R6"
310 DATA "G1","S9","P5","M4","K2","КЛАД","P9","T3","W2","S3","БАНК","M5","P4"
320 DATA "P3","ШАНС","P8","M11","вор!","T2","V2","F2","КЛАД","M3","A3","S4"
330 DATA "вор!","B2","O6","W1","W6","F1","M8","R14","O7","W3","R4","ШАНС","G2"
340 DATA "S6","F5","N2","P8","N3","M10","O3","T1","A1","B3","S10","КЛАД","J3"
350 DATA "S8","M1","R13","R3","БАНК","M7","R12","N1","R2","A4"
370 F$=A$ : F1$="@" : C=1
375 GOSUB 1200
376 IF A=1 THEN B$=K4$
380 F$=B$ : F1$="$" : C=2 : IF A=1 THEN F1$="%"
385 GOSUB 1200 : IF A=1 THEN 410
386 IF A=2 THEN 410
390 F$=C$ : F1$="&" : C=3
395 GOSUB 1200 : IF A=3 THEN 410
400 F$=D$ : F1$="#" : C=4
405 GOSUB 1200
410 F$=A$ : F1$="@" : C=1
415 GOSUB 1510
420 F$=B$ : F1$="$" : C=2 : IF A=1 THEN F1$="%"
425 GOSUB 1510 : IF A=1 THEN 410
426 IF A=2 THEN 410
430 F$=C$ : F1$="&" : C=3
435 GOSUB 1510 : IF A=3 THEN 410
440 F$=D$ : F1$="#" : C=4
445 GOSUB 1510
500 GO TO 410
999 STOP
1000 LINE (1,0)-(1,169) : LINE (40,0)-(40,169)
1010 LINE (80,0)-(80,169) : LINE (120,0)-(120,169)
1020 LINE (160,0)-(160,169) : LINE (200,0)-(200,169)
1030 LINE (240,0)-(240,169) : LINE (280,0)-(280,169)
1040 LINE (320,0)-(320,169) : LINE (360,0)-(360,169)
1050 LINE (400,0)-(400,169) : LINE (440,0)-(440,169)
1060 LINE (480,0)-(480,169) : LINE (520,0)-(520,169)
1070 LINE (560,0)-(560,169) : LINE (600,0)-(600,169)
1080 LINE (639,0)-(639,169) : RETURN
1100 LOCATE 23,8 : PRINT "          "
1105 GOSUB 1000 : BEEP : LOCATE 23,2 : PRINT "ХОДИТ: ";F$
1110 PRINT TAB(1)"БРОСЬТЕ КУБИК"
1112 IF F$=K4$ THEN  GOSUB 1250
1115 IF F$=K4$ THEN 1120
1119 LOCATE 24,15 : INPUT A1$ : IF A1$="E" THEN  GOSUB 3500 : GO TO 10000
1120 RANDOMIZE : LOCATE 24,2 : B=INT(RND(1)*6)+1
1130 RANDOMIZE : PRINT "НА КУБИКЕ: ";B : BEEP
1135 B1=B
1140 RETURN
1150 E(1)=50 : E(2)=100 : E(3)=200 : E(4)=400 : E(5)=25 : E(6)=500
1160 LOCATE 23,18 : PRINT "  НА СЧЕТЕ В БАНКЕ: ";E(B);" ЧЕКОВ"
1170 B5(C)=E(B)
1180 RETURN
1190 FOR I5=0 TO 1200 : NEXT I5 : RETURN
1200 B2$(C)=F$ : GOSUB 1100 : GOSUB 1150 : GOSUB 1190 : GOSUB 1250 : GOSUB 1100
1210 GOSUB 1600 : GOSUB 1300 : GOSUB 1400 : GOSUB 1250 : J(C)=J : I(C)=I
1220 RETURN
1250 LOCATE 23,18
1260 PRINT "                                                            "
1270 LOCATE 24,18
1280 PRINT "                                                            "
1290 RETURN
1300 J=21 : I=77+C-1
1310 LOCATE J,I : PRINT F1$ : I=I-5 : IF I<1 THEN  GOSUB 1350
1320 IF J<3 THEN LOCATE 3,1+C : PRINT " " : J=21 : N5(C)=N5(C)+50
1330 IF I>71 THEN  GOSUB 1365
1340 B1=B1-1 : IF B1>0 THEN  GOSUB 1360
1345 IF B1>0 THEN 1310 : RETURN
1350 J=J-3 : I=77+C-1 : RETURN
1360 LOCATE J,I+5 : PRINT " " : RETURN
1365 IF I<>77+C-1 THEN  GOSUB 1370
1366 RETURN
1370 I1=1+C : J1=J+3 : LOCATE J1,I1 : PRINT " " : RETURN
1400 M(C)=M(C)+B : IF M(C)>112 THEN M(C)=M(C)-112
1410 Q=M(C) : GOSUB 2000 : GOSUB 1800 : IF F3$(Q)="2" THEN RETURN
1411 IF F3$(Q)<>"" THEN  GOSUB 1650
1412 IF F3$(Q)="" THEN  GOSUB 1420
1415 RETURN
1420 LOCATE 23,20 : PRINT F$(Q);" ЦЕНА: ";V(Q);" ХОЗЯИН: ";F3$(Q)
1430 LOCATE 24,20 : PRINT "У ВАС: ";D5(C);" ЧЕКОВ. ПОКУПАЕТЕ ФИРМУ"
1431 IF F$=K4$ THEN IF D5(C)>V(Q) THEN H$="D" : GOSUB 1190
1432 IF F$=K4$ THEN IF D5(C)>V(Q) THEN 1450
1433 IF F$=K4$ THEN  GOSUB 1190
1434 IF F$=K4$ THEN IF D5(C)<=V(Q) THEN 1500
1440 LOCATE 24,57 : INPUT H$
1450 IF H$="д" THEN IF D5(C)<V(Q) THEN  GOSUB 1700
1453 IF H$="д" THEN IF D5(C)<V(Q) THEN 1500
1456 IF H$="D" THEN IF D5(C)>=V(Q) THEN N5(C)=N5(C)-V(Q) : F3$(Q)=F$ : F4(Q)=C
1460 IF H$="D" THEN IF D5(C)<V(Q) THEN  GOSUB 1700
1463 IF H$="д" THEN IF D5(C)<V(Q) THEN 1500
1466 IF H$="д" THEN IF D5(C)>=V(Q) THEN N5(C)=N5(C)-V(Q) : F3$(Q)=F$ : F4(Q)=C
1468 I3=I-C+9 : J3=J-2 : IF I=77+C-1 THEN I3=5 : J3=J+1
1469 IF I=77+C-1 THEN IF J=21 THEN I3=5 : J3=1
1470 IF H$="D" THEN IF D5(C)>=V(Q) THEN LOCATE J3,I3 : PRINT "*" : GOSUB 197
1480 IF H$="д" THEN IF D5(C)>=V(Q) THEN LOCATE J3,I3 : PRINT "*" : GOSUB 197
1500 RETURN
1510 I=I(C) : J=J(C) : GOSUB 1100 : GOSUB 1360 : GOSUB 1310 : GOSUB 1600
1520 GOSUB 1400 : GOSUB 1250 : I(C)=I : J(C)=J
1530 RETURN
1600 D5(C)=B5(C)+N5(C) : IF N5(C)<0 THEN N5(C)=0 : B5(C)=D5(C)
1605 IF B5<0 THEN B5=0
1610 RETURN
1650 V1=INT(V(Q)/5) : LOCATE 23,20 : PRINT F$(Q);" ХОЗЯИН: ";F3$(Q)
1660 LOCATE 24,20 : PRINT "ПЛАТА ВЛАДЕЛЬЦУ: ";V1
1670 GOSUB 1190 : N5(C)=N5(C)-V1 : S=F4(Q) : N5(S)=N5(S)+V1
1680 RETURN
1700 LOCATE 23,20 : PRINT "ВЫ НЕ ПЛАТЕЖЕ СПОСОБНЫ!!! СДЕЛКА РАСТОРГНУТА!!!"
1710 LOCATE 24,20 : PRINT "ШТРАФ 5 ЧЕКОВ" : N5(C)=N5(C)-5
1720 GOSUB 1190 : RETURN
1800 IF Q=11 THEN  GOSUB 1900 : GOSUB 1940
1805 IF Q=76 THEN  GOSUB 1900 : GOSUB 1910
1810 IF Q=5 THEN  GOSUB 1900 : GOSUB 1910
1815 IF Q=77 THEN  GOSUB 1900 : GOSUB 1950
1820 IF Q=24 THEN  GOSUB 1900 : GOSUB 3000
1825 IF Q=83 THEN  GOSUB 1900 : GOSUB 1950
1830 IF Q=34 THEN  GOSUB 1900 : GOSUB 3000
1835 IF Q=88 THEN  GOSUB 1900 : GOSUB 1940
1840 IF Q=37 THEN  GOSUB 1900 : GOSUB 1950
1845 IF Q=95 THEN  GOSUB 1900 : GOSUB 3000
1850 IF Q=41 THEN  GOSUB 1900 : GOSUB 1910
1860 IF Q=45 THEN  GOSUB 1900 : GOSUB 1950
1870 IF Q=57 THEN  GOSUB 1900 : GOSUB 1910
1880 IF Q=62 THEN  GOSUB 1900 : GOSUB 1940
1890 IF Q=70 THEN  GOSUB 1900 : GOSUB 3000
1895 RETURN
1900 LOCATE 23,20 : PRINT F$(Q) : GOSUB 1190 : RETURN
1910 RANDOMIZE : R=INT(RND(1)*4) : P(0)=25 : P(1)=50 : P(2)=100 : P(3)=200
1920 RANDOMIZE : LOCATE 24,25 : PRINT P(R);" ЧЕКОВ" : N5(C)=N5(C)+P(R)
1930 GOSUB 1190 : RETURN
1940 B5(C)=D5(C) : IF N5(C)>0 THEN N5(C)=0
1941 RETURN
1950 IF N5(C)>0 THEN N5(C)=0
1951 RETURN
2000 F$(1)="BBC" : F$(2)="BOING" : F$(3)="BOTOS" : F$(4)="JPS"
2010 F$(5)="НУ И ВЕЗЕТЖЕ ВАМ!!! ЗДЕСЬ ЛЕЖИТ КЛАД."
2020 F$(6)="LAZARE KAPLAN & SONS"
2030 F$(7)="MORE" : F$(8)="AUDI" : F$(9)="CROWN" : F$(10)="SONI"
2040 F$(11)="ВСЕ ДЕНЬГИ ПЕРЕВЕДЕНЫ В БАНК"
2050 F$(76)=F$(5) : F$(88)=F$(11) : F$(62)=F$(11)
2060 F$(12)="FORD" : F$(13)="BASF" : F$(14)="MARTINI"
2070 F$(15)="UNISEF" : F$(16)="FOKEL"
2080 F$(17)="IBM" : F$(18)="KONICA" : F$(19)="OPEL"
2090 F$(20)="SHIVAKI" : F$(21)="HAXAP"
2100 F$(22)="APLE" : F$(23)="AKAJ" : F$(25)="LILLIAN VERNON"
2110 F$(26)="MALBORO" : F$(27)="OLIMPUS"
2120 F$(28)="SCOTCH" : F$(29)="JOHNSON & JOHNSON"
2130 F$(30)="SHERRY & BRENDI" : F$(31)="FIAT" : F$(32)="ZIP"
2140 F$(33)="FORMANTA 2" : F$(35)="PUIG" : F$(36)="BMW"
2150 F$(37)=F$(45) : F$(38)="CW"
2160 F$(39)="JAWA" : F$(40)="PENTAX" : F$(42)="SEAT"
2170 F$(43)="AERONICA" : F$(44)="BOND" : F$(46)="ADIDAS"
2180 F$(47)="SUB 4" : F$(48)="SPM" : F$(49)="AJVA"
2190 F$(50)="MISHEL paris" : F$(51)="PANASONIC"
2200 F$(57)="PUPA" : F$(53)="du MAURIER" : F$(54)="ALEN DELON"
2210 F$(55)="PORSH" : F$(56)="CHELENDGR"
2220 F$(52)="SAMSONITE" : F$(58)="PERT" : F$(59)="CTV SISTEM"
2230 F$(60)="SINKLER" : F$(61)="KONGRES"
2240 F$(63)="TATRA" : F$(64)="NINA RICCI" : F$(65)="BELAIR"
2250 F$(66)="TOYOTA" : F$(67)="LIGHTS"
2260 F$(68)="HERMES" : F$(69)="PHILIPS" : F$(71)="VOLVO"
2270 F$(72)="TRIUMPH" : F$(73)="JAMAHA"
2280 F$(74)="COPA" : F$(75)="OPAL" : F$(78)="SHARP"
2290 F$(79)="AIR FRANS" : F$(80)="JIGHTS"
2300 F$(87)="SEARS" : F$(82)="HARLEJ" : F$(84)="SPEKTRUM"
2310 F$(85)="POLAROID" : F$(86)="NATIONAL"
2320 F$(81)="KONKORD" : F$(93)="SHATL" : F$(90)="SCHOLL"
2330 F$(91)="MAZDA" : F$(92)="KODAK"
2335 F$(45)="ВСЕ НАЛИЧНЫЕ ЧЕКИ УКРАДЕНЫ!!!"
2340 F$(89)="JEWELERS OF AMERICA" : F$(94)="HAVANA SIGARAS"
2350 F$(96)="SANYO" : F$(97)="JVS"
2360 F$(98)="SAMSUNG" : F$(99)="KEEPSAKE"
2370 F$(100)="FROST & TIP" : F$(101)="ENERGIA"
2380 F$(102)="CITEZEN" : F$(103)="MERSEDES-BENZ"
2390 F$(104)="HONDA" : F$(105)="VIVITAR"
2400 F$(106)="HARTMANN" : F$(107)="RIERRE CARDIN paris" : F$(108)="PIONER"
2410 F$(109)="GOLOYS" : F$(110)="LANVIN"
2420 F$(111)="REVLON" : F$(112)="CHRISTIAN DIOR"
2430 F$(41)=F$(5) : F$(57)=F$(5) : F$(83)=F$(45) : F$(77)=F$(37)
2600 V(1)=500 : V(2)=100 : V(3)=14 : V(4)=7 : V(6)=60 : V(7)=7
2610 V(10)=30 : V(12)=60 : V(13)=30 : V(14)=15 : V(15)=20 : V(16)=90
2620 V(17)=50 : V(18)=28 : V(19)=60 : V(20)=25 : V(21)=15 : V(22)=45
2630 V(23)=30 : V(25)=13 : V(26)=10 : V(27)=30 : V(28)=24 : V(29)=15
2640 V(30)=30 : V(31)=65 : V(32)=12 : V(8)=70 : V(9)=26
2650 V(33)=13 : V(35)=10 : V(36)=70 : V(38)=450 : V(39)=30 : V(40)=25
2660 V(42)=50 : V(43)=90 : V(44)=10 : V(46)=25 : V(47)=20 : V(48)=45
2670 V(49)=25 : V(50)=25 : V(51)=30 : V(52)=15 : V(53)=8 : V(54)=15
2680 V(55)=70 : V(56)=1000 : V(58)=12 : V(59)=400 : V(60)=40 : V(61)=8
2690 V(63)=50 : V(64)=15 : V(65)=7 : V(66)=70 : V(67)=5 : V(68)=15
2700 V(69)=28 : V(71)=55 : V(72)=8 : V(73)=45 : V(74)=87 : V(75)=5
2710 V(78)=30 : V(79)=90 : V(80)=5 : V(81)=100 : V(82)=40 : V(84)=59
2720 V(85)=30 : V(86)=28 : V(87)=23 : V(89)=70 : V(90)=13 : V(91)=70
2730 V(92)=30 : V(93)=1000 : V(94)=10 : V(96)=30 : V(97)=30 : V(98)=26
2740 V(99)=70 : V(100)=24 : V(101)=950 : V(102)=23 : V(103)=70 : V(104)=35
2750 V(105)=27 : V(106)=15 : V(107)=30 : V(108)=28 : V(109)=12
2760 V(110)=14 : V(111)=15 : V(112)=17
2770 F3$(5)="2" : F3$(11)="2" : F3$(24)="2" : F3$(41)="2" : F3$(57)="2"
2780 F3$(76)="2" : F3$(62)="2" : F3$(88)="2" : F3$(34)="2" : F3$(70)="2"
2790 F3$(95)="2" : F3$(45)="2" : F3$(83)="2" : F3$(37)="2" : F3$(77)="2"
2800 RETURN
3000 O$(1)="ВАША ПРИБЫЛЬ ВОЗРОСЛА. ПОЛУЧИТЕ:" : O(1)=50
3010 O$(0)="ВЫ ВСТАВИЛИ ЗОЛОТЫЕ КАРОНКИ. ПЛАТИТЕ:" : O(0)=-30
3020 O$(2)="ВЫ ВЫИГРАЛИ НА БИЛЬЯРДЕ. ПОЛУЧИТЕ ПРИЗ:" : O(2)=25
3030 O$(3)="ЗАПЛАТИТЕ ГОНОРАР АДВОКАТУ:" : O(3)=-40
3040 O$(4)="Г Р А Н - П Р И :" : O(4)=500
3050 O$(5)="ВАША ПИБЫЛЬ УПАЛА. ЗАПЛАТИТЕ:" : O(5)=-50
3060 O$(6)="У ВАС ДЕНЬ РОЖДЕНИЯ. ВАМ ПОДАРИЛИ:" : O(6)=60
3070 O$(7)="ВАШ ДРУГ РАЗБОГАТЕЛ И ДАЛ ВАМ ВЗАЙМЫ:" : O(7)=50
3080 O$(8)="ПЛАТИТЕ СТРАХОВКУ ЗА АВТОМОБИЛЬ:" : O(8)=-10
3090 O$(9)="ВЫ ПОЛУЧИЛИ НАСЛЕДСТВО:" : O(9)=100
3100 O$(10)="ВАМ ВЕРНУЛИ СТАРЫЙ ДОЛГ:" : O(10)=50
3110 O$(11)="ВЫ ПОЛУЧИЛИ СТРОИТЕЛЬНУ ССУДУ:" : O(11)=150
3120 O$(12)="ВЫ РАЗБИЛИ ЗЕРКАЛО В РЕСТОРАНЕ. ПЛАТИТЕ ШТРАФ:" : O(12)=-25
3130 O$(13)="НУ И ВЕЗЕТ ЖЕ ВАМ! ПОЛУЧИТЕ ПРОСТО ТАК:" : O(13)=200
3140 O$(14)="ПЛАТИТЕ ШТРАФ ЗА НАРУШЕНИЕ ПРАВИЛ ТОРГОВЛИ:" : O(14)=-150
3150 O$(15)="ВЫ ВЫИГРАЛИ НА БЕГАХ. ПОЛУЧИТЕ ПРИЗ:" : O(15)=100
3160 O$(16)="ВАШ ДЯДЯ УМЕР И ОСТАВИЛ В НАСЛЕДСТВО КУЧУ ДОЛГОВ:" : O(16)=-200
3170 O$(17)="КУРС ВАШИХ АКЦИЙ НА БИРЖЕ ПОДНЯЛСЯ. ПОЛУЧИТЕ:" : O(17)=100
3180 RANDOMIZE : L=INT(RND(1)*18) : RANDOMIZE
3190 LOCATE 23,20 : PRINT O$(L)
3200 LOCATE 24,20 : IF O(L)<0 THEN PRINT O(L)*-1;" ЧЕКОВ" : GO TO 3220
3210 PRINT O(L);" ЧЕКОВ"
3220 GOSUB 1190 : IF O1(L)<>0 THEN FOR I=1 TO A : N5(I)=N5(I)+O1(L) : NEXT I
3230 IF O1(L)<>0 THEN N5(C)=N5(C)+O(L)*2
3240 N5(C)=N5(C)+O(L)
3450 RETURN
3490 IF A=1 TO A=3
3500 FOR C=1 TO A+1
3510 FOR Q=1 TO 112
3520 IF F4(Q)=C THEN V2(C)=V2(C)+V(Q)
3530 NEXT Q
3532 O2(C)=(B5(C)+N5(C)+V2(C))/10
3534 NEXT C
3540 CLS : PRINT 
3550 PRINT "             ********  П Ь Е Д Е С Т А Л    П О Ч Е Т А  ********"
3555 GOSUB 3560 : GO TO 3610
3560 LINE (15,35)-(600,35)
3570 LINE (15,35)-(15,180) : LINE (600,35)-(600,180)
3580 LINE (15,55)-(600,55) : LINE (15,180)-(600,180)
3590 LINE (150,35)-(150,180) : LINE (265,35)-(265,180)
3600 LINE (380,35)-(380,180) : LINE (490,35)-(490,180)
3605 RETURN
3610 LOCATE 6,8 : PRINT "И М Я"
3620 LOCATE 6,21 : PRINT "Д Е Н Ь Г И"
3630 LOCATE 6,36 : PRINT "Ф И Р М Ы"
3640 LOCATE 6,52 : PRINT "О Ч К И"
3650 LOCATE 6,65 : PRINT "М Е С Т О"
3655 J=9 : A7=A : IF A=1 THEN A7=2
3660 FOR I=1 TO A7 : LOCATE J,69 : PRINT I : J=J+3 : NEXT I
3670 IF A=1 THEN A=2
3699 J=0
3700 U=0 : N1=O2(1) : N2=O2(2) : N3=O2(3) : N4=O2(4)
3705 FOR I=1 TO A
3710 IF N1>N2 THEN IF N1>N3 THEN IF N1>N4 THEN C=1 : GOSUB 4000
3720 IF N2>N1 THEN IF N2>N3 THEN IF N2>N4 THEN C=2 : GOSUB 4000
3730 IF N3>N1 THEN IF N3>N2 THEN IF N3>N4 THEN C=3 : GOSUB 4000
3740 IF N4>N1 THEN IF N4>N2 THEN IF N4>N3 THEN C=4 : GOSUB 4000
3745 NEXT I
3750 J=6 : IF A=1 THEN A=3
3760 FOR I=1 TO A
3770 J=J+3
3780 LOCATE J,5 : PRINT B3$(I)TAB(22)D2(I)TAB(36)V3(I)TAB(50)O3(I)
3790 NEXT I
3800 GOSUB 3560
3810 OPEN "BIZNES.DAT" FOR INPUT AS #1
3820 INPUT #1,O3
3825 CLOSE 
3830 IF O3(1)>O3 THEN  GOSUB 4100
3840 IF O3>O3(1) THEN  GOSUB 4200
3999 GO TO 9000
4000 U=U+1 : O3(U)=O2(C) : V3(U)=V2(C) : D2(U)=B5(C)+N5(C) : B3$(U)=B2$(C)
4005 O2(C)=0 : N1=O2(1) : N2=O2(2) : N3=O2(3) : N4=O2(4)
4010 RETURN
4100 LOCATE 24,10
4105 PRINT B3$(1);"  ВЫ УСТАНОВИЛИ НОВЫЙ РЕКОРД И ВОШЛИ В ИСТОРИЮ!!!"
4106 LOCATE 25,10
4107 PRINT "СТАРЫЙ РЕКОРД: ";O3;" НОВЫЙ РЕКОРД: ";O3(1)
4110 OPEN "BIZNES.DAT" FOR OUTPUT AS #1
4120 PRINT #1,O3(1)
4130 CLOSE 
4140 RETURN
4200 LOCATE 24,10 : PRINT "РЕКОРД ИГРЫ ОСТАЛСЯ ПРЕЖНИМ: ";O3;" ОЧКОВ"
4210 RETURN
9000 FOR I=0 TO 4000 : NEXT I
10000 CLS : END
                                                                                                                                                                                                                                                                                                                                                                                                                                      