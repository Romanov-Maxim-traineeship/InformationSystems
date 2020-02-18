****************************************
procedure VEga
****************************************
clear all
close all
set exclusive on
set exact off
set talk off
set confirm on
set status off
set scoreboard off
set message to 24
set deleted on
set safety off
set bell off
set date french
set heading off
clea
set esca off
set talk off
*eras
stor 'Нажмите ВВОД для продолжения' to ss
? 'Просим Вас внимательно читать все сообщения'
?
? 'Ввод ответа заканчивается нажатием клавиши Enter'
? 'Отмена ввода - нажатие клавиши  Backspase'
?
? 'Введите первую букву своей фамилии '
wait ' ' to ss7

store 60000 to s

stor ASC(ss7) to m00
stor m00*8+3 to m01
stor m01-int(m01/7)*7 to m1
stor 0 to aaa,W9,N

* define window  AWWWi from 0,0 to 24,46 none color scheme 10
defi wind AWWWi from 10,20 to 22,60 color scheme 10 SHADOW

do while aaa=0
acti wind AWWWi
@ 0,2 say  '          СПИСОК ТЕМ:'
@ 1,2 say  '1 - Экономические показатели'
@ 2,2 say  '2 - Функциональные зависимости'
@ 3,2 say  '3 - Приведение отношений к 3НФ'
@ 4,2 say  '4 - Сетевая база данных'
@ 5,2 say  '5 - Организация цепного каталога'
@ 6,2 say  '6 - Иерархическая база данных'
@ 7,2 say  '7 - Построение бинарного дерева'
@ 08,2 say  "0 - ВЫХОД ИЗ СИСТЕМЫ"
@ 10,2 say  "       ВВЕДИТЕ НОМЕР ТЕМЫ " get N pict '9'
read
deacti wind AWWWi
if n#0
? 'Вам предстоит решить 2 задачи по выбранной теме'
endi
DO CASE
case n=0
?
? "Система   V E G A   благодарит Вас за интересную беседу"
?
 wait 
QUIT
case n=8 or n=9
?
? "***************   STUPID PEOPLE!!! RESTART PROGRAM  *********************"
?
 wait 
loop
CASE N=1
DO VER
CASE N=2
DO VET
CASE N=3
DO VEA
CASE N=4
DO VEM
CASE N=5
DO VEL
case n =6
do ve6
case n=7
do ve7
ENDCASE
*eras
clea

IF INT(S/10000)=5
 rrrtt=9
else
 rrrtt=8
ENDI

@ 1,20 to rrrtt,60
set color to w+/g
@ 1,20 to rrrtt,60 fill
@ 1,20 to rrrtt,60

@ 2,26 say "  ИТОГОВЫЕ ДАННЫЕ СЕАНСА"

@ 4,33 say  "Номер темы "+str(INT(S/10000),1)
@ 5,33 say  "------------"
STOR STR(S,5) TO Z
@ 6,25 say  "Общее число ответов      " + substr(Z,2,2)
set color to BG+/g
@ 7,25 say  "Число правильных ответов "+substr(Z,4,2)
IF INT(S/10000)=5
  @ 8,25 say  "Число ошибочных адресов  " + str(W9,2)
ENDI

set color to 

  @ rrrtt+1,2 say  " "
  wait

SELE 2 &&SECO
use
SELE 1  &&PRIM
use

enddo
QUIT



****************************************
procedure VEga1
****************************************
set esca off
set talk off
clea
stor 'Нажмите ВВОД для продолжения' to ss
? 'Просим Вас внимательно читать все сообщения'
?
? 'Ввод ответа заканчивается нажатием клавиши Enter'
? 'Отмена ввода - нажатие клавиши  Backspase'
? 'При некоторых ошибках ввода данных появляется сообщение:'
? ' ИСПРАВИТЬ И ПОВТОРИТЬ?:   Ваш ответ - N'
?
? 'Введите первую букву своей фамилии'
wait to ss7
stor ASC(ss7) to m00
stor m00*8+3 to m01
stor m01-int(m01/7)*7 to m1
stor 0 to aaa
store 60000 to s
do while aaa=0
?
? '          СПИСОК ТЕМ:'
? '1 - Экономические показатели'
? '2 - Функциональные зависимости'
? '3 - Приведение отношений к 3НФ'
? '4 - Сетевая база данных'
? '5 - Организация цепного каталога'
?
? "0 - ВЫХОД ИЗ СИСТЕМЫ"
INPUT "       ВВЕДИТЕ НОМЕР ТЕМЫ" TO N
if n#0
? 'Вам предстоит решить 2 задачи по выбранной теме'
endi
DO CASE
case n=0
?
? "Система   V E G A   благодарит Вас за интересную беседу"
?
QUIT
CASE N=1
DO VER
CASE N=2
DO VET
CASE N=3
DO VEA
CASE N=4
DO VEM
CASE N=5
DO VEL
OTHERWISE
loop
ENDCASE
clea
? "ИТОГОВЫЕ ДАННЫЕ СЕАНСА"
?
? "Номер темы",INT(S/10000)
STOR STR(S,5) TO Z
? "Общее число ответов",substr(Z,2,2)
? "Число правильных ответов",substr(Z,4,2)
IF INT(S/10000)=5
? "Число ошибочных адресов",W9
ENDI
sele 2  &&seco
use
sele 1 &&prim
use
endd
QUIT

****************************************
procedure M1
****************************************
set talk off
set alte to ris2
*set alte on
?
store 175 to a
do while a<225
?? a, chr(a), '   '
store a+1 to a
endd
set alte off
retu

****************************************
procedure VE6
****************************************
sele 1 &&prim
use vehh
clea
1
list next 23 off
wait
skip
clea
list next 23 off
wait
sele 2 &&seco
use veghh
reca all
sele 1 &&prim
store 60000 to s
store 0 to v5
do while v5<2
store m1*8+3 to v3
stor v3-int(v3/5)*5 to m1
stor 10*m1+47 to v4
go v4
clea
? '    Атрибуты:                     Отношения:'
set print off
list next 9 off
skip
stor substr(text,1,1) to ww1
stor val(ww1) to ww
stor 1 to ww2
do whil ww2<=4
stor 'Введите в любом порядке номера атрибутов,образующих ключ' to au
stor au+' отношения '+str(ww2,1)+' ' to au
acce '&au' to w
set print off
stor 'ключ отн. '+str(ww2,1)+':'+str(val(w),7)+' -' to aw
stor len(w) to l0
sele 2 &&seco
loca all for var=m1.and.substr(otv,1,1)='*'.and.substr(otv,2,1)=str(ww2,1).and..not.(substr(otv,2,1)='*')
stor len(trim(otv))-4 to l1
stor substr(otv,4,l1)+'0' to ot1
sele 1 &&prim
use ve
dele all
pack
stor 0 to l
do whil l<l1
stor substr(ot1,1,1) to ot2
stor substr(ot1,2,10) to ot1
appe blan
repl t with ot2
stor l+1 to l
endd
coun all for t$w to l2
do case
case l2=0.or.l2>4
stor 'ов' to ok
case l2=1
stor '  ' to ok
other
stor 'а ' to ok
endc
do case
case l1=l2.and.l0=l1
?? '&aw'+'правильный ответ                                    '
stor s+101 to s
sele 2 &&seco
dele
case l2<l1
stor ' число атрибутов в ключе -' to tr
?? '&aw'+'Вы указали верно '+str(l2,1)+' атрибут'+ok+tr+str(l1,1)
stor s+100 to s
case l1=l2.and.l0>l1
stor '      ' to re
?? '&aw'+'ключ содержит '+str(l2,1)+'атрибут'+ok+' из названных Вами'+re
stor s+100 to s
other
?? '&aw'+'ошибка                                                '
stor s+100 to s
endc
stor ww2+1 to ww2
endd
? '   Укажите минимально возможный набор атрибутов в отношениях'
stor 1 to ww2
do whil ww2<=4
stor 'Введите в любом порядке номера атрибутов' to au
stor au+' отношения '+str(ww2,1)+' ' to au
acce '&au' to w
set print off
stor 'мин. набор в отн. '+str(ww2,1)+':'+str(val(w),7)+' -' to aw
stor len(w) to l0
sele 2 &&seco
loca all for var=m1.and.substr(otv,1,1)='Q'.and.substr(otv,2,1)=str(ww2,1).and..not.(substr(otv,2,1)='*')
stor len(trim(otv))-4 to l1
stor substr(otv,4,l1)+'0' to ot1
sele 1 &&prim
* use ve
dele all
pack
stor 0 to l
do whil l<l1
stor substr(ot1,1,1) to ot2
stor substr(ot1,2,10) to ot1
appe blan
repl t with ot2
stor l+1 to l
endd
coun all for t$w to l2
do case
case l2=0.or.l2>4
stor 'ов' to ok
case l2=1
stor '  ' to ok
other
stor 'а ' to ok
endc
do case
case l1=l2.and.l0=l1
?? '&aw'+'правильный ответ                              '
stor s+101 to s
sele 2 &&seco
dele
case l2<l1
stor ',мин. число атр. -' to tr
?? '&aw'+'Вы указали верно '+str(l2,1)+' атрибут'+ok+tr+str(l1,1)
stor s+100 to s
case l1=l2.and.l0>l1
stor '      ' to re
?? '&aw'+'ключ содержит '+str(l2,1)+'атрибут'+ok+' из названных Вами'+re
stor s+100 to s
other
?? '&aw'+'ошибка                                                '
stor s+100 to s
endc
stor ww2+1 to ww2
endd
sele 2 &&seco
reca all
sele 1 &&prim
     use vehh
     stor v5+1 to v5
     acce 'Нажмите ВВОД для продолжения ' to tr
     endd
     rele l,l0,l1,l2,ot1,ot2
     retu

****************************************
procedure VE7
****************************************
sele 1 &&prim
stor 70000 to s
use ve7
clea
1
list next 23 off
wait
set print off
sele 2 &&seco
use veg7
reca all
sele 1 &&prim
stor 70000 to s
stor 0 to v5,ww9
do whil v5<2
stor '1 уровень    ' to text01
stor '2 уровень    ' to text02
stor '3 уровень    ' to text03
stor '4 уровень    ' to text04
* do while v5<2
stor m1*8+3 to v3
stor v3-int(v3/7)*7 to m1
go m1+24
stor text to text1
stor 1 to ww2
clea
stor '  ' to f0,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,fff
@ 1,4 say 'Постройте упорядоченное бинарное дерево для следующего'
@ 2,1 say 'исходного массива ключевых признаков:'
@ 4,1 say text1
@ 6,1 say text01
@ 6,30 get f0
@ 7,26 say ' /         \'
@ 8,1 say text02
@ 8,22 get f1
@ 8,40 get f2
@ 9,18 say '   /     \           /      \'
@ 10,1 say text03
@ 10,18 get f3
@ 10,27 get f4
@ 10,37 get f5
@ 10,47 get f6
@ 11,15 say '  /   \    /   \     /   \     /   \'
@ 12,1 say text04
@ 12,15 get f7
@ 12,20 get f8
@ 12,25 get f9
@ 12,30 get f10
@ 12,35 get f11
@ 12,40 get f12
@ 12,45 get f13
@ 12,50 get f14
@ 17,1 say 'ВЫХОД (когда дерево построено) -'
@ 18,1 say 'поставьте курсор в данное окно'
@ 18,34 get fff
@ 19,1 say 'и нажмите клавишу ВВОД'
read
stor 1 to ww2
stor 'ОШИБКА >>>>>' to fff
stor '0'+f0 to r1
stor '1'+f1+f2 to r2
stor '2'+f3+f4+f5+f6 to r3
stor '3'+f7+f8+f9+f10+f11+f12+f13+f14 to r4
sele 2 &&seco
loca for var=m1.and.otv=r1
if EOF()
stor fff to text01
stor 2 to ww2
endi
loca for var=m1.and.otv=r2
if EOF()
stor fff to text02
stor 2 to ww2
endi
loca for var=m1.and.otv=r3
if EOF()
stor fff to text03
stor 2 to ww2
endi
loca for var=m1.and.otv=r4
if EOF()
stor fff to text04
stor 2 to ww2
endi
if ww2=2
stor s+100 to s
else
stor s+101 to s
endi
sele 1 &&prim
     clea
     ? 'Если есть ошибки, то неверные строки отмечаются словом ОШИБКА'
@ 4,1 say text1
@ 6,1 say text01
@ 6,30 say f0
@ 7,26 say ' /           \'
@ 8,1 say text02
@ 8,22 say f1
@ 8,40 say f2
@ 9,18 say '   /     \           /      \'
@ 10,1 say text03
@ 10,18 say f3
@ 10,27 say f4
@ 10,37 say f5
@ 10,47 say f6
@ 11,15 say '  /   \    /   \     /   \     /   \'
@ 12,1 say text04
@ 12,15 say f7
@ 12,20 say f8
@ 12,25 say f9
@ 12,30 say f10
@ 12,35 say f11
@ 12,40 say f12
@ 12,45 say f13
@ 12,50 say f14
@ 13,1 say '  '
acce 'Нажмите ВВОД для продолжения ' to fff
stor v5+1 to v5
     endd
rele f0,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,fff
rele text1,text01,text02,text03,text04
     retu

****************************************
procedure VEA
****************************************
use ve0
acce 'ТРЕБУЕТСЯ ЛИ ВЫВОД УЧЕБНОГО МАТЕРИАЛА ПО ТЕМЕ? y/n  ' to n1
if n1="y"
stor 0 to n2
do whil n2=0
clea
77
LIST NEXT 22 OFF
acce '&ss' to aa9
clea
skip
LIST NEXT 23 OFF
acce '&ss' to aa9
acce "БУДЕТЕ ЧИТАТЬ ЕЩЕ РАЗ? y/n  " to n3
if n3="n"
stor 1 to n2
endi
endd
endi
use ve3
SELE 2 &&SECO
USE VEC3
RECA ALL
SELE 1  &&PRIM
STORE 30000 TO S
STORE 0 TO V5
DO WHILE V5<2
STORE M1*5+2 TO V3
STORE V3-INT(V3/9)*9 TO M1
STORE 6*M1+1 TO V4
GO V4
clea
? "    АТРИБУТЫ:                     ФУНКЦИОНАЛЬНЫЕ ЗАВИСИМОСТИ:"
LIST NEXT 6 OFF
?
? "ВВЕДИТЕ В ЛЮБОМ ПОРЯДКЕ НОМЕРА ФУНКЦИОНАЛЬНЫХ ЗАВИСИМОСТЕЙ,"
ACCE "   ОБРАЗУЮЩИХ МИНИМАЛЬНОЕ ПОКРЫТИЕ (БАЗИС) " TO W
STOR LEN(W) TO L0
SELE 2 &&SECO
LOCA ALL FOR VAR=M1.AND."*"$OTV
STOR LEN(TRIM(OTV))-2 TO L1
STOR substr(OTV,2,L1)+"0" TO OT1
SELE 1  &&PRIM
USE VE
DELE ALL
PACK
STOR 0 TO L
DO WHILE L<L1
STOR substr(OT1,1,1) TO OT2
STOR substr(OT1,2,10) TO OT1
APPE BLAN
REPL T WITH OT2
STOR L+1 TO L
ENDD
COUN ALL FOR T$W TO L2
DO CASE
CASE L2=0.OR.L2>4
STOR "ЕЙ" TO OK
CASE L2=1
STOR "Ь " TO OK
OTHER
STOR "И " TO OK
ENDC
DO CASE
CASE L1=L2.AND.L0=L1
? "ПРАВИЛЬНЫЙ ОТВЕТ"
STOR S+101 TO S
CASE L2<L1
STOR ", ЧИСЛО ЗАВИСИМОСТЕЙ В БАЗИСЕ - " TO TR
? "ВЫ УКАЗАЛИ ВЕРНО "+STR(L2,1)+" ЗАВИСИМОСТ"+OK+TR+STR(L1,1)
STOR S+100 TO S
CASE L1=L2.AND.L0>L1
? "БАЗИС СОДЕРЖИТ "+STR(L2,1)+" ЗАВИСИМОСТ"+OK+" ИЗ НАЗВАННЫХ ВАМИ"
STOR S+100 TO S
OTHER
? "ОШИБКА"
STOR S+100 TO S
ENDC
?
ACCE "ВВЕДИТЕ В ЛЮБОМ ПОРЯДКЕ НОМЕРА АТРИБУТОВ КЛЮЧА " TO W
STOR LEN(W) TO L0
SELE 2 &&SECO
LOCA ALL FOR VAR=M1.AND."K"$OTV
STOR LEN(TRIM(OTV))-2 TO L1
STOR substr(OTV,2,L1)+"0" TO OT1
SELE 1  &&PRIM
USE VE
DELE ALL
PACK
STOR 0 TO L
DO WHILE L<L1
STOR substr(OT1,1,1) TO OT2
STOR substr(OT1,2,10) TO OT1
APPE BLAN
REPL T WITH OT2
STOR L+1 TO L
ENDD
COUN ALL FOR T$W TO L2
DO CASE
CASE L2=0.OR.L2>4
STOR "ОВ" TO OK
CASE L2=1
STOR "  " TO OK
OTHER
STOR "А " TO OK
ENDC
DO CASE
CASE L1=L2.AND.L0=L1
? "ПРАВИЛЬНЫЙ ОТВЕТ"
STOR S+101 TO S
CASE L2<L1
STOR ", ЧИСЛО АТРИБУТОВ В КЛЮЧЕ - " TO TR
? "ВЫ УКАЗАЛИ ВЕРНО "+STR(L2,1)+" АТРИБУТ"+OK+TR+STR(L1,1)
STOR S+100 TO S
CASE L1=L2.AND.L0>L1
? "КЛЮЧ СОДЕРЖИТ "+STR(L2,1)+" АТРИБУТ"+OK+" ИЗ НАЗВАННЫХ ВАМИ"
STOR S+100 TO S
OTHER
? "ОШИБКА"
STOR S+100 TO S
ENDC
?
acce "СКОЛЬКО ОТНОШЕНИЙ В 3НФ ПОЛУЧЕНО? " TO V61
stor val(v61) to v6
SELE 2 &&SECO
COUNT ALL FOR VAR=M1.AND."E"$OTV TO H
IF H=V6
STORE S+101 TO S
ELSE
STORE S+100 TO S
ENDIF
? "ЧИСЛО ОТНОШЕНИЙ",H
?
? "ВВЕДИТЕ В ЛЮБОМ ПОРЯДКЕ НОМЕРА АТРИБУТОВ ОТНОШЕНИЯ"
STORE 0 TO V9
DO WHILE V9<H
STOR STR(V9+1,1) TO W9
ACCE "&W9 ОТНОШЕНИЕ " TO WA
if val(wa)#0
STOR WA TO W
STOR "0" TO N1,N2,N3,N4,N5,N6,N7,N8,N9
STOR 1 TO E1
STOR LEN(W) TO N
STOR W+"  " TO W
DO WHIL E1<=N
STOR substr(W,1,1) TO G
STOR "1" TO N&G
STOR substr(W,2,8) TO W
STOR E1+1 TO E1
ENDD
STOR 1 TO E1
STOR "E" TO W
DO WHIL E1<10
STOR STR(E1,1) TO G
IF N&G="1"
STOR W+G TO W
ENDI
STOR E1+1 TO E1
ENDDO
STORE W+"E" TO W
LOCA ALL FOR VAR=M1.AND.OTV=W.AND..NOT.(OTV='*')
IF EOF()
STORE S+100 TO S
?? W9+" ОТНОШЕНИЕ:"+WA+"  - ОШИБКА"
ELSE
STOR S+101 TO S
?? W9+" ОТНОШЕНИЕ:"+WA+"  - ПРАВИЛЬНЫЙ ОТВЕТ"
DELE
ENDI
else
?? w9+" ОТHОШЕHИЕ:"+wa+"  - ОШИБКА"
stor s+100 to s
endi
STORE V9+1 TO V9
ENDDO
SELE 1  &&PRIM
use ve3
STOR V5+1 TO V5
acce '&ss' to aa9
ENDD
RECA ALL
RETU

****************************************
procedure VEL
****************************************
use ve0
acce "ТРЕБУЕТСЯ ЛИ ВЫВОД УЧЕБНОГО МАТЕРИАЛА ПО ТЕМЕ? y/n " to n1
if n1="y"
stor 0 to n2
do whil n2=0
clea
159
LIST NEXT 20 OFF
acce '&ss' to aa9
clea
skip
LIST NEXT 23 OFF
acce '&ss' to aa9
acce "БУДЕТЕ ЧИТАТЬ ЕЩЕ РАЗ? y/n  " to n3
if n3="n"
stor 1 to n2
endi
endd
endi
SELE 2 &&SECO
USE VE5Z
SELE 1  &&PRIM
STORE 50000 TO S
STORE 0 TO V5,W9
DO WHILE V5<2
STORE M1*8+3 TO V3
STORE V3-INT(V3/7)*7 TO M1
STOR 1 TO E1
DO WHIL E1<4
SELE 1  &&PRIM
USE VE5A
DELE ALL
clea
PACK
appe blan
repl text with "                           УКАЗАТЕЛЬ СПИСКА >"
appe blan
repl text with "                     УКАЗАТЕЛЬ СВОБ. ПАМЯТИ >"
appe blan
repl text with "                       : адрес  : значение  :"
repl adres with 888888
appe blan
repl text with "Замените адреса для    : записи : ключа     :"
repl adres with 888888
APPE FROM VE5X FOR VAR=M1
GO BOTT
STOR substr(TEXT,1,2) TO K2
STOR substr(TEXT,4,2) TO K3
REPL TEXT WITH "   ТАКИЕ ЗНАЧЕНИЯ НЕ КОРРЕКТИРОВАТЬ !   >>", ADRES WITH 888888
DO CASE
CASE E1=2
REPL RECO 5 TEXT WITH "вставки записи с    "+substr(TEXT,21,45)
REPL RECO 6 TEXT WITH "ключом "+K2+"           "+substr(TEXT,21,45)
STOR 1 TO E2
DO WHIL E2<12
SELE 2 &&SECO
GO E2
STOR AD1 TO A1
SELE 1  &&PRIM
GO E2
REPL ADRES WITH A1
SELE 1  &&PRIM
STOR E2+1 TO E2
ENDD
CASE E1=3
REPL RECO 5 TEXT WITH "удаления записи с   "+substr(TEXT,21,45)
REPL RECO 6 TEXT WITH "ключом "+K3+"           "+substr(TEXT,21,45)
STOR 1 TO E2
DO WHIL E2<12
SELE 2 &&SECO
GO E2
STOR AD1 TO A1
SELE 1  &&PRIM
GO E2
REPL ADRES WITH A1
SELE 1  &&PRIM
STOR E2+1 TO E2
ENDD
ENDC
repl all var with 0
1
BROW
? "*** ЖДИТЕ ***"
USE VE5A
SELE 2 &&SECO
DELE ALL
clea
PACK
APPE FROM VE5G FOR VAR=M1
STOR 1 TO WW2
STOR 0 TO WW
DO WHIL WW2<12
SELE 1  &&PRIM
GO WW2
STOR ADRES TO A1
SELE 2 &&SECO
GO WW2
STOR STR(E1,1) TO E
IF A1#AD&E
STOR WW+1 TO WW
SELE 1  &&PRIM
REPL TEXT WITH "   ОШИБКА  >>>>>    "+substr(TEXT,21,45)
ELSE
SELE 1  &&PRIM
REPL TEXT WITH "                    "+substr(TEXT,21,45)
ENDI
STOR WW2+1 TO WW2
ENDDO
IF WW=0
STOR S+101 TO S
ELSE
STOR S+100 TO S
ENDI
STOR W9+WW TO W9
SELE 1  &&PRIM
? "Если есть ошибки, то соответствующие строки отмечаются словом 'ОШИБКА >>'"
LIST OFF
acce '&ss' to aa9
STOR E1+1 TO E1
ENDD
STOR V5+1 TO V5
ENDD
RETU

****************************************
procedure VEM
****************************************
use ve0
acce "ТРЕБУЕТСЯ ЛИ ВЫВОД УЧЕБНОГО МАТЕРИАЛА ПО ТЕМЕ? y/n  " to n1
if n1="y"
stor 0 to n2
do whil n2=0
clea
122
LIST NEXT 19 OFF
acce '&ss' to aa9
clea
skip
LIST NEXT 18 OFF
acce '&ss' to aa9
acce "БУДЕТЕ ЧИТАТЬ ЕЩЕ РАЗ? y/n  " to n3
if n3="n"
stor 1 to n2
endi
endd
endi
SELE 1  &&PRIM
USE VE4
SELE 2 &&SECO
USE VEXX
DELE ALL
PACK
SELE 1  &&PRIM
STORE 40000 TO S
STORE 0 TO V5
DO WHILE V5<2
STORE M1*8+3 TO V3
STORE V3-INT(V3/7)*7 TO M1
STORE 10*M1+1 TO V4
GO V4
clea
? "    АТРИБУТЫ:                        ОТНОШЕНИЯ:"
LIST NEXT 9 OFF
SKIP
STOR substr(TEXT,1,1) TO WW1
STOR VAL(WW1) TO WW
STOR 1 TO WW2
SELE 2 &&SECO
DELE ALL
PACK
APPE FROM VEC4 FOR VAR=M1
DO WHIL WW2<=WW
STOR "ВВЕДИТЕ В ЛЮБОМ ПОРЯДКЕ НОМЕРА АТРИБУТОВ,ОБРАЗУЮЩИХ КЛЮЧ" to au
STOR AU+" ОТНОШЕНИЯ "+STR(WW2,1) TO AU
ACCE "&AU" TO W
stor 'Ключ отношения '+str(ww2,1)+':'+w+' -' to aw
STOR LEN(W) TO L0
SELE 2 &&SECO
LOCA ALL FOR VAR=M1.AND.substr(OTV,1,1)="*".and.substr(otv,2,1)=str(ww2,1).and..not.(substr(OTV,2,1)="*")
STOR LEN(TRIM(OTV))-4 TO L1
STOR substr(OTV,4,L1)+"0" TO OT1
SELE 1  &&PRIM
USE VE
DELE ALL
PACK
STOR 0 TO L
DO WHILE L<L1
STOR substr(OT1,1,1) TO OT2
STOR substr(OT1,2,10) TO OT1
APPE BLAN
REPL T WITH OT2
STOR L+1 TO L
ENDD
COUN ALL FOR T$W TO L2
DO CASE
CASE L2=0.OR.L2>4
STOR "ОВ" TO OK
CASE L2=1
STOR "  " TO OK
OTHER
STOR "А " TO OK
ENDC
DO CASE
CASE L1=L2.AND.L0=L1
?? '&aw'+"ПРАВИЛЬНЫЙ ОТВЕТ                                     "
STOR S+101 TO S
SELE 2 &&SECO
dele
CASE L2<L1
STOR ",ЧИСЛО АТРИБУТОВ В КЛЮЧЕ - " TO TR
?? '&aw'+"ВЫ УКАЗАЛИ ВЕРНО "+STR(L2,1)+" АТРИБУТ"+OK+TR+STR(L1,1)
STOR S+100 TO S
CASE L1=L2.AND.L0>L1
?? '&aw'+"КЛЮЧ СОДЕРЖИТ "+STR(L2,1)+" АТРИБУТ"+OK+" ИЗ НАЗВАННЫХ ВАМИ      "
STOR S+100 TO S
OTHER
?? '&aw'+"ОШИБКА"
STOR S+100 TO S
endc
STOR WW2+1 TO WW2
ENDDO
acce "    СКОЛЬКО ВЕЕРНЫХ ОТНОШЕНИЙ ИМЕЕТСЯ? " TO V6
SELE 2 &&SECO
COUNT ALL FOR VAR=M1.AND."E"$OTV TO H
IF H=val(V6)
STORE S+101 TO S
ELSE
STORE S+100 TO S
ENDIF
? "ЧИСЛО ВЕЕРНЫХ ОТНОШЕНИЙ",H
?
? "ВВЕДИТЕ В ЛЮБОМ ПОРЯДКЕ НОМЕРА ОТНОШЕНИЙ, ОБРАЗУЮЩИХ ВЕЕРНОЕ ОТНОШЕНИЕ"
STORE 0 TO V9
DO WHILE V9<H
Acce "ВЕЕРНОЕ ОТНОШЕНИЕ " TO W
STOR "E"+W+"E" TO W
LOCA ALL FOR W$OTV
IF EOF()
STOR S+100 TO S
ELSE
DELE
STOR S+101 TO S
ENDI
STORE V9+1 TO V9
ENDDO
SELE 1  &&PRIM
USE VE4
STOR V5+1 TO V5
ENDD
RETU

****************************************
procedure VER
****************************************
sele 1
use ve0
acce "ТРЕБУЕТСЯ ЛИ ВЫВОД УЧЕБНОГО МАТЕРИАЛА ПО ТЕМЕ? y/n " to n1
if n1="y".or.n1="Y".or.n1="н".or.n1="Н"
stor 0 to n2
do whil n2=0
clea
1
LIST NEXT 22 OFF
acce '&ss' to aa9
clea
23
LIST NEXT 15 OFF
acce '&ss' to aa9
acce "БУДЕТЕ ЧИТАТЬ ЕЩЕ РАЗ? y/n  " to n3
if n3="n".or.n3="N".or.n3="т".or.n3="Т"
stor 1 to n2
endi
endd
endi
SELE 2 &&SECO
USE VEXX
DELE ALL
PACK
SELE 1  &&PRIM
use ve1
STORE 10000 TO S
STORE 0 TO V5
DO WHILE V5<2
STORE M1*8+3 TO V3
STORE V3-INT(V3/11)*11 TO M1
STORE 4*M1+1 TO V4
SELE 1  &&PRIM
GO V4
clea
LIST NEXT 4 OFF
?
SELE 2 &&SECO
DELE ALL
PACK
APPE FROM VEG1 FOR VAR=M1
acce "СКОЛЬКО ПОКАЗАТЕЛЕЙ В ДОКУМЕНТЕ? " TO v6
COUNT ALL FOR VAR=M1.AND..NOT."E"$OTV TO H
IF H=val(V6)
STORE S+101 TO S
ELSE
STORE S+100 TO S
ENDIF
? "ЧИСЛО ПОКАЗАТЕЛЕЙ",H
? "ВВЕДИТЕ В ЛЮБОМ ПОРЯДКЕ НОМЕРА АТРИБУТОВ ПОКАЗАТЕЛЯ"
STORE 0 TO V9
DO WHILE V9<H
stor str(v9+1,1) to w9
acce "&w9 ПОКАЗАТЕЛЬ " TO w
RELE A1
*COUN ALL FOR substr(OTV,1,1)$W TO A1
COUN ALL FOR substr(OTV,1,1)$W TO A1
DO CASE
CASE A1=0
? "   НЕТ АТРИБУТА-ОСНОВАНИЯ"
STOR S+100 TO S
CASE A1>1
? "   ДВА АТРИБУТА-ОСНОВАНИЯ"
STOR S+100 TO S
CASE A1=1
LOCA ALL FOR substr(OTV,1,1)$W
STOR OTV TO OTV1
STOR "0" TO N1,N2,N3,N4,N5,N6,N7,N8,N9
STOR 1 TO E1
STOR LEN(W) TO N
STOR W+"  " TO W
DO WHIL E1<=N
STOR substr(W,1,1) TO G
STOR "1" TO N&G
STOR substr(W,2,8) TO W
STOR E1+1 TO E1
ENDD
STOR 1 TO E1
STOR "*" TO W
DO WHIL E1<10
STOR STR(E1,1) TO G
IF N&G="1"
STOR W+G TO W
ENDI
STOR E1+1 TO E1
ENDDO
STORE W+"*" TO W
IF W$OTV1
STORE S+101 TO S
DELE
? "   ПРАВИЛЬНЫЙ ОТВЕТ"
ELSE
STORE S+100 TO S
RELE B,C1,C2
STOR LEN(W)-2 TO B
STOR substr(OTV1,2,1) TO C1
STOR substr(OTV1,3,1) TO C2
DO CASE
CASE B<VAL(C1)
? "   МАЛО АТРИБУТОВ-ПРИЗНАКОВ"
CASE B>VAL(C2)
? "   МНОГО АТРИБУТОВ-ПРИЗНАКОВ"
OTHERWISE
? "   НЕТОЧНЫЙ СОСТАВ АТРИБУТОВ-ПРИЗНАКОВ"
ENDC
ENDI
ENDC
STORE V9+1 TO V9
ENDDO
acce "СКОЛЬКО ФАЙЛОВ ТРЕБУЕТСЯ ДЛЯ ХРАНЕНИЯ НАЗВАННЫХ ПОКАЗАТЕЛЕЙ? " to jj
STOR "E"+JJ+"E" TO JJ
LOCA ALL FOR JJ$OTV
IF EOF()
STOR S+100 TO S
ELSE
STOR S+101 TO S
ENDI
STORE V5+1 TO V5
ENDDO
RECALL ALL
SELE 2 &&SECO
use
SELE 1  &&PRIM
use
RETU

****************************************
procedure VET
****************************************
use ve0
acce "ТРЕБУЕТСЯ ЛИ ВЫВОД УЧЕБНОГО МАТЕРИАЛА ПО ТЕМЕ? y/n  " to n1
if n1="y"
stor 0 to n2
do whil n2=0
clea
38
LIST NEXT 20 OFF
acce '&ss' to aa9
clea
58
LIST NEXT 19 OFF
acce '&ss' to aa9
acce "БУДЕТЕ ЧИТАТЬ ЕЩЕ РАЗ? y/n  " to n3
if n3="n"
stor 1 to n2
endi
endd
endi
SELE 1  &&PRIM
USE VE21
SELE 2 &&SECO
USE VEC2
STORE 20000 TO S
STORE 0 TO W5
DO WHILE W5<2
STORE M1*8+3 TO V3
STORE V3-INT(V3/7)*7 TO M1
STORE 15*M1+1 TO V4
SELE 1  &&PRIM
GO V4
clea
LIST NEXT 10 OFF
? "       ВВЕДИТЕ КОД ОТВЕТА"
? "1 - ФУНКЦИОНАЛЬНАЯ ЗАВИСИМОСТЬ ПРАВИЛЬНАЯ"
? "9 - ФУНКЦИОНАЛЬНАЯ ЗАВИСИМОСТЬ НЕПРАВИЛЬНАЯ"
? "        ДЛЯ ФУНКЦИОНАЛЬНЫХ ЗАВИСИМОСТЕЙ"
STOR 1 TO V7
DO WHIL V7<=5
SKIP
STOR substr(TEXT,1,25)+"1 или 9?" TO EE
ACCE "&EE" TO V6
STOR "E"+STR(V7,1)+V6+"E" TO V10
SELE 2 &&SECO
LOCA ALL FOR VAR=M1.AND.otv=v10
IF .NOT.EOF()
STOR S+101 TO S
? "   ПРАВИЛЬНЫЙ ОТВЕТ"
ELSE
STOR S+100 TO S
STOR substr(V10,1,2) TO W8
LOCA ALL FOR VAR=M1.AND.W8$OTV
STOR substr(OTV,5,1) TO W6
DO CASE
CASE W6="A"
? "ОШИБКА -  "+substr(a.TEXT,3,11)+"  НЕ ЯВЛЯЕТСЯ ВЕРОЯТНЫМ КЛЮЧОМ"
CASE W6="B"
? "ОШИБКА -  "+substr(a.TEXT,3,11)+"  ЯВЛЯЕТСЯ ВЕРОЯТНЫМ КЛЮЧОМ"
CASE W6="C"
? "ОШИБКА -  ОПРЕДЕЛЕНИЕ  Ф З  НЕ НАРУШЕНО! СМ. СТРОКИ"+substr(OTV,6,10)
ENDCASE
ENDI
SELE 1  &&PRIM
stor v7+1 to v7
endd
stor w5+1 to w5
acce '&ss' to aa9
endd
retu
