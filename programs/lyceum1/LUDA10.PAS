    Program work;
label 1;
Var 
a,a1:array[1..20,1..10] 	of real;
m1,m2,t1,t2,t3	 		:real;
i,n,z				:integer;
{ ---------       razdel wne{nih procedur i funkcij      ----------}
 Procedure clr;							external;
	Procedure Line(x0,y0,x1,y1:integer);			external;
	Procedure Kbmode(mode:integer);				external;
	Procedure Fill(x,y:integer);				external;
	Function  Inkey:integer;				external;
	Procedure Gotoxy(x,y:integer);				external;	
Procedure Inverse(x,y,length:integer);				external; 
Procedure Ram;							external;
procedure licej;						external;
{ ---------     razdel wnutrennih procedur     --------------}
procedure delta(E,V:integer);
begin
e:=(e*8)+1;
v:=(v*8)-7;
line(0+e,6+v,3+e,1+v);
line(3+e,1+v,6+e,6+v);
line(0+e,6+v,6+e,6+v);
end;

Procedure       Locate(x,y:integer); { pozicionirowanie kursora }
Begin 
Gotoxy(y,x+1);
End;

Procedure kbm;		{ zadervka wremeni do navatiq klawi{i <wwod> }
Var i:integer;		 
Begin
Locate(20,23);

Write(' dlq wyhoda w men` navmite <wwod>');
	Inkey:=0;
		While Inkey<>10 do
	Kbmode (1); 
	goto 1;
End;
Procedure Ink;		{ zadervka wremeni do navatiq klawi{i <wwod> }
Var i:integer;		 
Begin
Locate(20,23);
Write(' dlq prodolveniq navmite <wwod>');
	Inkey:=0;
		While Inkey<>10 do
	Kbmode (1); 
End;

procedure wywod(wa:integer);
type text=file of char;

 var 	txt:text;
	a:char;
	i,j,l1:integer;
begin
if wa=1 then 
reset(txt,'teort','txt',l1);
if wa=2 then 
reset(txt,'teort','txt',l1);
i:=3;
clr;
ram;
while not eof(txt) do
     begin
	j:=5;
	locate(5,i);
	while not eoln(txt) do
	    begin
		read(txt,a);
		if a<>'{' then write(a)
			  else begin
				read(txt,a);
				if a='d' then delta(j,i);
			       end;
		j:=j+1;
	    end;
 	readln(txt);
	i:=i+2;
	if i>23 then begin
			ink;
			clr;
			ram;
			write(chr(14));
			i:=3
		     end;
     end;
kbm;
close(txt)
end;

function sar(k,u:integer):real;
var 	i:integer;
	l:real;
begin
l:=0;
for i:=1 to u do
l:=l+a1[i,k];
sar:=l/u;
end;

function srs(k,u:integer):real;
var 	i:integer;
	l,x:real;
begin
l:=0;
for i:=1 to u do begin
x:=sar(k,u);
x:=x-a1[i,k]; 
x:=abs(x); 
l:=l+x;
end;
srs:=l/u;
end;

function otp(k,u:integer):real;
begin
otp:=srs(k,u)/sar(k,u);
end;

procedure minmax;
var o,i,k1,k2,k3,k4 		:integer;
s1,s2,s3,s4,s5,s6,s,s7,s8	:real;
begin
s1:=a[1,6];
s2:=a[1,7];
s3:=a[1,8];
s4:=a[1,6];
s5:=a[1,7];
s6:=a[1,8];
s7:=a[1,9];
s8:=a[1,9];
for o:=1 to n-1 do begin
if s1>a[o+1,6] then s1:=a[o+1,6];
if s2>a[o+1,7] then s2:=a[o+1,7];
if s3>a[o+1,8] then s3:=a[o+1,8];
if s7>a[o+1,9] then s7:=a[o+1,9];

if s4<a[o+1,6] then s4:=a[o+1,6];
if s5<a[o+1,7] then s5:=a[o+1,7];
if s6<a[o+1,8] then s6:=a[o+1,8];
if s8>a[o+1,9] then s8:=a[o+1,9];
end;

k1:=0;
k2:=0;
k3:=0;
k4:=0;
for i:=1 to n do
begin
if (a[i,6]<>s1) and (a[i,6]<>s4) then begin k1:=k1+1; a1[k1,6]:=a[i,6]; end;
if (a[i,7]<>s2) and (a[i,7]<>s5) then begin k2:=k2+1; a1[k2,7]:=a[i,7]; end;
if (a[i,8]<>s3) and (a[i,8]<>s6) then begin k3:=k3+1; a1[k3,8]:=a[i,8]; end;
if (a[i,9]<>s7) and (a[i,9]<>s8) then begin k4:=k4+1; a1[k4,9]:=a[i,9]; end;
end;
	locate(5,17);
 	write('sREDNEE ARIFMETI^ESKOE                ');
	locate(43,17);
	write(sar(6,k1):3:4);
	locate(50,17);
	write(sar(7,k2):3:4);
	locate(58,17);
	write(sar(8,k3):3:4);
	locate(66,17);
	write(sar(9,k4):3:4);

	locate(5,18);
	write('sREDNEE ABSOL@TNOE');
	locate(43,18);
	write(srs(6,k1):3:4);
	locate(50,18);
	write(srs(7,k2):3:4);
	locate(58,18);
	write(srs(8,k3):3:4);
	locate(66,18);
	write(srs(9,k4):3:4);

	locate(5,19);
	write('oTNOSITELXNAQ POGRE[NOSTX');
	locate(43,19);
	write(otp(6,k1):3:4);
	locate(50,19);
 	write(otp(7,k2):3:4);
	locate(58,19);
	write(otp(8,k3):3:4);	
	locate(66,19);
	write(otp(9,k4):3:4);	
end;

procedure tabl;
var m,i,l	:integer;
begin
clr;
ram;
	locate(4,3);
	write('nOMER');
	locate(11,3);
	write('  m1');
	locate(19,3);
	write('  m2');
	locate(27,3);
	write('   t1');
delta(29,3);
	locate(35,3);
	write('   t2');
delta(37,3);
	locate(43,3);
	write('   t3');
delta(45,3);
	locate(51,3);
	write('   P');
	locate(59,3);
	write('    c1');
	locate(67,3);
	write('    L');
for i:=1 to n do
		begin
	locate(4,5+i);
	write(a[i,1]:1:0);
	locate(11,5+i);
	write(a[i,2]:3:1);
	locate(19,5+i);
	write(a[i,3]:3:1);
	locate(27,5+i);
	write(a[i,4]:3:2);
	locate(34,5+i);
	write(a[i,5]:3:4);
	locate(43,5+i);
	write(a[i,6]:3:4);
	locate(50,5+i);
	write(a[i,7]:3:4);
	locate(58,5+i);
	write(a[i,8]:3:4);
	locate(66,5+i);
	write(a[i,9]:3:4);
end;
	m:=16;
		Line(m,10,m,136);
		for l:=1 to 9 do
		   Begin
		Line(m,10,m,135);
		m:=m+64;
		End;
	Line(m+(54*2),10,m+(54*2),140);
Minmax;
	line(m-(64*2),10,m-(64*2),158);
	line(m-64,10,m-64,158);
	line(m,10,m,158);
	line(m+(54*2),10,m+(54*2),158);
	
kbm;	
	  End;

Procedure Praktika;
var w,ka,s	:integer;
	ms:real;
Begin
		Kbmode(0);
				Repeat
	Clr;
		Ram;
		Locate(12,7);
		Write('wEDITE ^ISLO OPYTOW (NE MENEE 5):   ');
	Read(n);
		Locate(10,9);
		Write('mASSA PARAFINA  m1:  ');
			Read(m1);
		Locate(10,11);
		Write('mASSA WODY m2:      ');
			Read(m2);
		Locate(10,13);
		Write('wREMQ OSTYWANIQ PARAFINA    t1:      ');
	DELTA(37,13);
			Read(t1);
		Locate(10,15);
		Write('wREMQ PLAWLENIQ PARAFINA    t2:      ');
	DELTA(37,15);
			Read(t2);

	Until (T1>0) and (T2>0) and (n>4) and (n<11) and (M1>0) and (M2>0);
					Repeat
		For i:=1 to n do
Begin
			Repeat
	Clr;
	   Ram;
		Locate(10,5);
			Write('wWEDITE REZULXTATY ',I,'-GO OPYTA:');
		Locate(10,12);
		Write('wWEDITE WREMQ OPYTA  :  t3  ');
		Delta(33,12);
			Read(t3);
until (t3>0);

{nOMER OPYTA}		a[i,1]:=i;
{dIAMETR KATU[KI}		a[i,2]:=m1;
{pLO]ADX KATU[KI}		a[i,3]:=m2;
{kOLI^ESTWO WITKOW}		a[i,4]:=t1;
{pOLNOE SOPROTIWLENIE}	a[i,5]:=t2;
{kOL-WO ZARQDA}		a[i,6]:=t3;
{mAGNITNYJ POTOK}	 	a[i,7]:=(m2*4200*10)/t3;
{mAGNITNAQ INDUKCIQ}	a[i,8]:=(a[i,7]*t1)/(m1*10);
{uDELXNAQ TEPLOTA PLAWLENIQ}a[i,9]:=(a[i,7]*t2)/m1;
end;

w:=1;
s:=1;
repeat
begin
w:=w+1;
if a[1,6]=a[w,6] then s:=s+1 else
		begin ms:=a[w,6]; 
			for ka:=w to n do
				if (ms=a[ka,6]) or (a[1,6]=a[ka,6])
				then s:=s+1; end;  
	end;
until (a[1,6]<>a[w,6]) or (w=n);
until s<>n;
Tabl;
Kbm;
End;

Procedure instr;
begin
clr;
locate(23,2);
write('    h O D   R A B O T Y ');
ram;
wywod(1);
end;
procedure graph;
begin
line( 69, 39, 69,183);
line( 69,183,501,183);
line(501,183,490,186);
line(502,183,491,180);
line( 69, 38, 74, 44);
line( 69, 37, 64, 43);

line( 69, 67,119,108);
line(119,108,340,108);
line(340,108,484,135);
line( 69, 67,225,138);

line(119,179,119,187);
line(340,179,340,187);
line(225,179,225,187);
line(66,108,73,108);
line(66,138,73,138);
End;

procedure teory;
begin
clr;
wywod(2);
end;

procedure oborud;
begin
wywod(3);
locate(5,5);
write('PARAFIN ,  SEKUNDOMER ,  PLASTMASSOWYJ SOSUD DIAMETROM 2-3 SM, ');
locate(5,7);
write('TERMOMETR I GORQ^AQ WODA . ');
locate(20,10);
Write('z A D A N I E ');
locate(5,12);
write(' ISSLEDUJTE ZAWISIMOSTX TEMPERATURY RASPLAWLENNOGO PARAFINA OT ');
locate(5,14);
write('WREMENI W USLOWIQH POSTOQNNOJ TEPLOOTDA^I I OPREDELITE UDELXNU@ ');
locate(5,16);
write('TEPLOEMKOSTX VIDKOGO PARAFINA I UDELXNU@ TEPLOTU PLAWLENIQ  ');
locate(5,18);
write(' 		PARAFINA .');
Kbm;
End;

procedure user;
var	serg	:integer;
begin
	clr;
ram;
locate(35,5);
     write('t  e  m  a');
inverse(30,3,18);
inverse(30,4,18);
inverse(30,5,18);
locate(9,8);
write('uDELXNAQ TEPLOEMKOSTX I UDELXNAQ TEPLOTA PLAWLENIQ PARAFINA');
locate(30,11);
write(' m  e  n  `');
locate(24,15);
write('1.  hOD RABOTY.');
locate(24,17);
write('2.  tEORITI^ESKAQ ^ASTX.');
locate(24,19);
write('3.  pRAKTI^ESKAQ ^ASTX.');
locate(24,21);
write('4.  wYHOD.');
{------------------------    MEN@ -----------------------------------}
repeat
inverse(22,z-1,27);
kbmode(1);
Serg:=Inkey;
If (serg=65) and (z>13) then 
		z:=z-2;
If (serg=66) and (z<21) then 
z:=z+2;
If (serg=10) and (z=15) then instr;
If (serg=10) and (z=17) then teory;
If (serg=10) and (z=19) then praktika;
If (serg=10) and (z=21) then clr;
				until (serg=10) and(z=21);
End;

procedure zast;
begin
clr;
ram;
licej;
locate(20,16);
write('    lABORATORNAQ RABOTA PO FIZIKE');
locate(20,17);
write('               tema:');
locate(6,18);
write('  UDELXNAQ TEPLOTA PLAWLENIQ I UDELXNAQ TEPLOEMKOSTX PARAFINA');
locate(20,19);
write('      wYPOLNILA :  bORODKINA l@DMILA ');
locate(20,20);
write('              lICEJ  N 1');
locate(20,21);
write('               1992 G.');
locate(19,23);
Write('  dLQ PRODOLVENIQ NAVMITE <WWOD>');
	Inkey:=0;
		While Inkey<>10 do
	Kbmode (1); 

End;
{***************}
Begin
Zast;
Oborud;
z:=13;
1:User;
Clr;
End.
{****************}
                                                                                                                                                                                                       