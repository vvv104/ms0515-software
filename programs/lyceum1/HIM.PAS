program      kislorod;
{ --------------   razdel konstant  ----------}
const pi=3.1415926;

{ --------------   razdel metok     ----------}
 label 1;

{ ---------       razdel wne{nih procedur i funkcij      ----------}
 procedure clr;							external;
	procedure line(x0,y0,x1,y1:integer);			external;
	procedure kbmode(mode:integer);				external;
	procedure ttlc(mode:integer);				external;
	procedure fill(x,y:integer);				external;
	function inkey:integer;					external;
	procedure point(x,y:integer);				external;
	procedure gotoxy(x,y:integer);				external;	
procedure vpokeb(vaddr,data:integer);				external;
function vpeekb(vaddr:integer):integer;				external;
procedure inverse(x,y,length:integer);				external; 
procedure ram;							external;
procedure circle(paa,paw,pap,l,a,n,sasa:integer);		external;
procedure cif(r,p,pro:integer);					external;

{ ---------     razdel wnutrennih procedur     --------------}
procedure       locate(x,y:integer); { pozicionirowanie kursora }
begin 
gotoxy(y,x+1);
end;

procedure zast; 		{ risuet zastawku } 

begin
clr;				{ o~istka |krana }
ram;				{ postroenie ramki }

    { -------- risuetsq molekula kisloroda --------- }
	circle(270,50,45,0,360,16,0);
	circle(340,50,45,0,360,16,0);			
	circle(275,50,44,-70,70,20,0);
	fill(260,40);
	fill(340,40);
	fill(300,50);
	{ ------ ATRIBUTY IZGOTOWITELQ   -----------}
locate(36,6);write('o2');
inverse(36,5,2);
locate(57,6);write('r o s s i q');
locate(57,8);write('G . w O R O N E V ');
locate(57,10);write('L I C E J ');
locate(67,10);write(' N 1');
locate(4,6);write('T E M A   :');
locate(4,8);write('k i s l o r o d  ');
locate(4,10);write('   i   e g o   ');
locate(4,12);write('h a r a k t e r i s t i k a');
locate(28,16);write('R A Z R A B O T A L   :');
locate(23,18);write('~ E P K O W   a L E K S A N D R');
locate(23,20);write('        1 9 9 2   G. ');
		end;

procedure kbm;		{ zadervka wremeni do navatiq klawi{i <wwod> }
var i:integer;		 
begin
locate(20,23);

write('dlq wyhoda w men`1 navmite <wwod>');
            inkey:=0;
     while inkey<>10 do begin
    kbmode (2); 
	for i:=1 to 9000 do begin    end;
	inverse(20,22,34);
	end;
end;
procedure ink;          { zadervka wremeni do navatiq klawi{i <wwod> }
var i:integer;
begin
locate(20,23);
write('dlq prodolveniq navmite <wwod>');
     while inkey<>10 do begin
    kbmode (2); 
	for i:=1 to 9000 do begin    end;
	inverse(20,22,34);
	end;
end;
procedure kb;      	{ zadervka wremeni do navatiq klawi{i <wwod> }
var i:integer;
begin
locate(16,23);
write('dlq wyhoda w osnownoe men` navmite <wwod>  ');
            inkey:=0;
     while inkey<>10 do begin
     kbmode (2);
	for i:=1 to 9000 do begin    end;
	inverse(16,22,43);
	end;
 goto 1;
end;
procedure zast1;
	{ wywoditsq na |kran informaciq o sodervanii kisloroda w prirode }
const pi=3.1455926;
	k=0.55555555;
{-----------------------------------------------------------}
var j,x0,y0,x1,y1,s:integer;
{------------------------------------------------------------}
 begin
clr;
ram;
circle(100,100,65,0,360,10,0);
circle(100,100,6,0,360,16,0);
for j:=0 to 10 do begin
case j of
1:  s:=0;
2:  s:=60;
3:  s:=78; 
4:  s:=90;
5:  s:=188;
6:  s:=40;
7:  s:=70;
8:  s:=86;
9:  s:=98;
10: s:=190;
end;
x0:=100+round(cos(s*pi/180)*6);
x1:=100+round(cos(s*pi/180)*65);
y0:=100+round(sin(s*pi/180)*6*k);
y1:=100+round(sin(s*pi/180)*65*k);
		line(x0,y0,x1,y1);
{-----------------------------------------------------------}
		end;
fill(100,100);
fill(90,100);
fill(111,108);
fill(131,130);
fill(100,90);
locate(17,4); write(' sodervanie   kisloroda   w   prirode : ');
locate(23,8); 
write(' kISLOROD - SAMYJ RASPROSTRANENNYJ HIMI^ESKIJ'); 
locate(23,9); 
write(' |LEMENT W ZEMNOJ KORE .  wOZDUH SODERVIT 0.209');
locate(23,10); 
write(' OB_EMNYH DOLEJ , ILI 20.9 PROCENTA KISLORODA,');
locate(23,11); 
write(' ^TO SOSTAWLQET PRIBLIZITELXNO 1/5 PO OB_EMMU .');
locate(23,12); 
write(' kISLOROD WHODIT W SOSTAW PO^TI WSEH OKRUVA@]IH');
locate(23,13);
write(' NAS WE]ESTW . kISLOROD QWLQETSQ TAKVE WAVNOJ ');
locate(23,14);
write(' ^ASTX@ MNOGIH ORGANI^ESKIH SOEDINENIJ ,NAPRIMER');
locate(23,15);
write(' BELKOW,VIROW I UGLEWODOW ,IME@]IH BOLX]OE ZNA]ENIE');
locate(23,16);
write('  W  VIZNI  RASTENIJ , VIWOTNYH , ^ELOWEKA .');
	end;
procedure banka(l,m:integer);    { postroenie banki }
var i,d:integer;
begin
line(100+l,100-m,100+l,170-m);
line(180+l,100-m,180+l,170-m);
line(100+l,170-m,180+l,170-m);
line(100+l,100-m,120+l,80-m);
line(180+l,100-m,160+l,80-m);
line(115+l,80-m,165+l,80-m);
line(115+l,80-m,115+l,75-m);
line(165+l,80-m,165+l,75-m);
line(115+l,75-m,165+l,75-m);
line (150+l,40-m,150+l,132-m);
circle(134+l,132-m,14,1,175,16,0);
line(149+l,132-m,122+l,132-m);
d:=0;
for i:=1 to 5 do begin d:=d+4;
line(145+l-d,131-m,148+l-d,120-m);
line(148+l-d,120-m,147+l-d,124-m);
line(147+l-d,124-m,149+l-d,131-m);
end;
line(134+l,120-m,134+l,114-m);
end;
{==============================================================}

procedure ugler; 
begin
clr;
ram;
banka (370,10);
locate(15,6);
write('gorenie uglq w kislorode ');
locate(3,8);
write(' esli opustitx w sosud s kislorodom tle`}ij  ');
locate(3,10);
write(' ugolek to on raskalqetsq do bela i sgoraet.  ');
locate(3,12);
write(' ~toby opredelitx,kakoe obrazowalosx we}estwo,   ');
locate(3,14);
write(' w sosud naliwa`t izwestkowu` wodu,ona mutneet,  ');
locate(3,16);
write(' tak kak pri gorenii uglq obrazuetsq   ');
locate(3,18);
write('              oksid ugleroda.');
locate(20,20);
write('s    +    o    ===>  so ');
cif ((20*8)+(11*8)+2,160-5,2);
cif ((20*8)+(23*8)+2,160-5,2);
end;

procedure sera;
begin
clr;
ram;
banka (350,10);
locate(15,6);
write(' gorenie sery w kislorode');
locate(3,8);
write(' sera gorit w kislorode qrkim sinim ');
locate(3,10);
write(' plamenem s obrazobaniem gaza s rezkim');
locate(3,12);
write(' zapahom - oksida sery  walintnostx  (4)         ');
locate(8,16);
        write('S     +    O    ===>  SO');
cif(13*8+59,16*8+3-8,2);
cif(25*8+59,16*8+3-8,2);
end;

procedure fosfor;
begin
clr;
ram;
banka(350,10);
locate(15,6);
write(' gorenie fosfora w kislorode ');
locate(8,8);
write(' fosfor sgoraet w kislorode qrkim');
locate(8,10);
write(' plamenem s obrazowaniem belogo dyma,');
locate(8,12);
write(' sostoq}ego iz iz twerdyh ~astic ');
locate(8,14);
write(' oksida fosfora walentnostx (5)' );
locate(7,17);
WRITE('4r    +  5o    ===>  2r o ');
cif(12*8+50,17*8+3-8,2);
cif(24*8+50,17*8+3-8,2);
cif(26*8+51,17*8+3-8,5);
end;
procedure woda;
	begin
clr;
ram;
locate(19,6);
write('2H O   --------->   2H ^  +  O ^   ');
cif((19*8)+(3*8)-6,6*8-6,2);
cif((19*8)+(23*8)-6,6*8-6,2);
cif((19*8)+(31*8)-6,6*8-6,2);
locate(21,9);  write('pri propuskanii toka ~erez slabyj |lektrolit ');
locate(21,11); write(        '		 wydelqetsq w swobodnom');
locate(21,13); write(  ' wide wodorod i kislorod  to estx prohodit');    
locate(21,15); write(     '   reakciq razloveniq .  ');
	end;

procedure kalij;
var i,j:integer;
	begin
clr;
ram;

	{	risuetsq opora   	}
	for i:=1 to 5 do line(i+265,25-2,i+265,130-10);
	for i:=1 to 4 do line(170,i+130-10,290,i+130-10);
		for i:=1 to 2 do begin
	line(170,i+134-10,200,i+134-10); line(260,i+134-10,290,i+134-10);
				end;
	{	risuetsq kolba			}
	line(200,100-10,300,50-10);
	line(213,106-10,313,56-10);
	line(300,50-10,313,56-10);
	line(200,100-10,200,104-10);
	
	line(213,106-10,210,106-10);
	line(200,104-10,210,106-10);
	line(200,100-10,227,100-10);
	fill(210,102-10);
	line(300,55-10,325,41-10);
	line(304,57-10,325,43-10);
	line(325,41-10,326,41-10);

	line(300,55-10,304,57-10);
	
	line(326,41-10,326,120-10);
	line(322,41-10,322,120-10);
		
	line(322,100-10,326,100-10);
	fill(324,90-10);
	fill(324,43-10);
	line(300,79-10,300,130-10);	
	line(348,79-10,348,130-10);
	line(300,130-10,348,130-10);
	line(300,79-10,348,79-10);
	
	line(200-6,129-10,212+6,129-10);

	line(200-6,129-10,195-6,124-10);
	line(212+6,129-10,217+6,124-10);

	line(195-6,124-10,204-6,120-10);
	line(217+6,124-10,208+6,120-10);

	line(206,117-10,206,127-10);
locate(4+15,18);
write('2KMnO  -----> K MnO   +  MnO   +  2O ^');
cif((4*8)+(6*8)-6+(15*8),18*8-6,4);
cif((4*8)+(16*8)-6+(15*8),18*8-6,2);
cif((4*8)+(20*8)-6+(15*8),18*8-6,2);
cif((4*8)+(29*8)-6+(15*8),18*8-6,2);
cif((4*8)+(37*8)-6+(15*8),18*8-6,2);
locate(40,14); write('o2');
locate(15,20);
write('kISLOROD WYDELIW[IJSQ W HODE \TOJ REAKCII');
locate(15,21);
write('SOBIRA@T METODOM WYTESNENIQ WOZDUHA ');
locate(20,23); write('dlq wyhoda w men` navmite <wwod>');
	locate(25,14); write('/\');
	locate(100,300);
		while inkey<>10 do begin 
		inverse(25,13,2);
		kbmode(2);
		inverse(25,12,1); 
		end;
end;		

procedure  prost;
begin
clr;
ram;
locate(8,5);
write ('       h a r a k t e r i s t i k a     k i s l o r o d a');
locate(8,7);
write ('                 k a k   p r o s t o g o   w e } e s t w a ');
locate(8,10);
write ('  1.             himi~eskaq  formula :     o      ');
locate(8,12);
write ('  2.             otnositelxnaq  molekulqrnaq  massa :  Mr( O  )=32');
locate(8,14);
write ('  3.             wid  himi~eskoj  swqzi :    o:o  ');
locate(8,16);
write ('  4.             stroenie  we}estwa :   molekulqrnoe     ');
cif((47+5)*8+3,(9*8)+2,2);
cif((60+8)*8+3,(11*8)+2,2);
kb;
end;
procedure fiz;
begin 
clr;
ram;
locate(8,7);
write ('             f i z i z e s k i e   s w o j s t w a :   ');
locate(8,10);
write ('              gaz  bez  cweta , wkusa   zapaha   ');
locate(8,12);
write ('              malorastworim  w  wode     ');
locate(8,14);
write ('              tqvelee   wozduha     ');
locate(8,15);
write ('                                           .');
locate(8,16);
write ('              temperatura  sviveniq    -183 s  ');
locate(8,17);
write ('                                                   .');
locate(8,18);
write ('              temperatura   zatwerdewaniq    -218.8 s  ');
kb;
end;
		procedure him;
var	z,serg	:integer;
begin
clr;
ram;
locate(8,4);
write ('                h i m i ~ e s k i e    s w o j s t w a   ');
locate(8,7);
write('          kislorod reagiruet so mnogimi himi~eskimi we}estwami,');
locate(8,9);
write('          pri |tom wydelqetsq teplo i swet. takie reakcii nazywa`t');
locate(8,11);
write('            reakciqmi goreniq (|kzotermi~eskaq).');
locate(30,14);
write(' m  e  n  `  1');
locate(24,16);
write('1.  reakciq s uglerodom.  ');
locate(24,17);
write('2.  reakciq s seroj.      ');
locate(24,18);
write('3.  reakciq s fosforom.   ');
locate(24,19);
write('4.  wyhod w osnownoe men`.');
{------------------------   men`   -----------------------------------}
z:=16;
repeat
inverse(24,z-1,28);
kbmode(1);
ttlc(1);
serg:=inkey;
if (serg=65) and (z>16) then 
		z:=z-1;
if (serg=66) and (z<19) then 
z:=z+1;
if (serg=10) and (z=16) then begin ugler; kbm; him; end;
if (serg=10) and (z=17) then begin sera;  kbm; him; end;
if (serg=10) and (z=18) then begin fosfor; kbm; him; end;
if (serg=10) and (z=19) then goto 1;
				until serg=1000;
end;
procedure prim;
begin
clr;
ram;
locate(3,3);
 write('                     p r i m e n e n i e   :');
locate(4,7);
write('  1.          w   medicine ( kislorodnye  podu{ki). ');
locate(4,9);
write('  2.          na   wzrywnyh   rabotah.  ');
locate(4,11);
write('  3.          dlq   swarki   metallow. ');
locate(4,13);
write('  4.          dlq   rezki   metallow. ');
locate(4,15);
write('  5.           w   awiacii   dlq   dwigatelej. ');
locate(4,17);
write('  6.           w   awiacii   dlq   dyhaniq.     ');
locate(4,19);
write('  7.                       w   metalurgii.        ');
kb;
end;
procedure pol;
var serg,z:integer;
begin
clr;
ram;{----------------- wyzow procedury  ram---------------}
locate(4,6);
write('                         p o l u ~ e n i e           ');
locate(4,9);
write(' w  laboratorii  kislorod  polu~a`t  pri  razlovenii  nekotoryh');
locate(4,11);
write('             slovnyh  kislorodsoderva}ih  we}estw ');
locate(30,14);
write(' m  e  n  `  1');
locate(12,16);
write('1.  reakciq s razloveniem wody.               ');
locate(12,17);
write('2.  wydelenie kisloroda iz permanganata kaliq.');
locate(12,18);
write('4.  wyhod w osnownoe men`.');

{------------------------   MEN@  -----------------------------------}
z:=16;
repeat
inverse(12,z-1,46);
kbmode(1);
ttlc(1);
serg:=inkey;
if (serg=65) and (z>16) then 
		z:=z-1;
if (serg=66) and (z<18) then 
z:=z+1;
if (serg=10) and (z=16) then begin woda; kbm; pol; end;
if (serg=10) and (z=17) then begin kalij; pol; end;
if (serg=10) and (z=18) then goto 1;
				until serg=1000;

kb;
end;
procedure user;
var	z,serg	:integer;
begin
	clr;
ram;
locate(35,5);
     write('t  e  m  a');
inverse(30,3,18);
inverse(30,4,18);
inverse(30,5,18);
locate(30,8);
write('k  i  s  l  o  r  o  d');
locate(30,11);
write(' m  e  n  `');
locate(14,13);
write('1.  harakteristika kisloroda kak prostogo we}estwa.');
locate(14,15);
write('2.  fizi~eskie swojstwa.');
locate(14,17);
write('3.  himi~eskie swojstwa.');
locate(14,19);
write('4.  primenenie.');
locate(14,21);
write('5.  polu~enie.');
locate(14,23);
write('6.   wyhod.');
{------------------------    MEN@ -----------------------------------}
z:=13;
repeat
inverse(12,z-1,52);
kbmode(1);
ttlc(1);
serg:=inkey;
if (serg=65) and (z>13) then 
		z:=z-2;
if (serg=66) and (z<23) then 
z:=z+2;
if (serg=10) and (z=13) then prost;
if (serg=10) and (z=15) then fiz;
if (serg=10) and (z=17) then him;
if (serg=10) and (z=19) then prim;
if (serg=10) and (z=21) then pol;
if (serg=10) and (z=23) then clr;
				until serg=10;
end;
{------------------------    end  -------------------------------}	
{########################  main program  #####################}
begin
zast;
ink;
zast1;
ink;
1:user;
end. 

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 