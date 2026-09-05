  Program Laborator;
Label 1;
{ --------------   razdel konstant  ----------}
Const pi=3.1415926;  {==  ^islo pi   ==}
Const rp=50;
{-----------------   razdel tipow     -----------}
type
tx=file of char;
{----------  razdel opisaniq peremennyh  --------} 
Var 
a: array[1..11,1..9] 	of real;
a1:array[1..10,5..9]	of real;
d,s,p,r1,r2,g	 	:real;
i,n,z,k1			:integer;
TXT				:tx;
    name1,name2:packed array[1..28] of char; {-  imena  u~enikow -}    
    form:packed array[1..3] of char;         {-  	klas	   -}
    adress:packed array[1..6] of char;	   { imq sozlawaemogo fajla }
{ ---------       razdel wne{nih procedur i funkcij      ----------}
 Procedure clr;							external;
	Procedure Line(x0,y0,x1,y1:integer);			external;
	Procedure Kbmode(mode:integer);				external;
	Function  Inkey:integer;				external;
	Procedure Gotoxy(x,y:integer);				external;	
Procedure Inverse(x,y,length:integer);				external; 
Procedure Ram;							external;
Procedure licej;						external;
Procedure rectan(x,y,x1,y1:integer);				external;
procedure rect(x,y,x1,y1:integer);				external;
{----------------   razdel wne{nih procedur i funkcij   ------------} 
procedure circ(x,y,r,n	:integer);
var i,x1,y1,x2,y2	:integer;
	k,o		:real;
begin
k:=0.55555+(n/10);
o:=0;
for i:=1 to (45 div 2)+1 do
begin
x1:=round(x+(cos(o/51.3)*r));
y1:=round(y+(sin(o/51.3)*r*k));
o:=o+16;
x2:=round(x+(cos(o/51.3)*r));
y2:=round(y+(sin(o/51.3)*r*k));
line(x1,y1,x2,y2);
end;
end;

Procedure       Locate(x,y:integer); { pozicionirowanie kursora }
Begin 
Gotoxy(y,x+1);
End;

procedure delta(E,V:integer);{-- osu}estwlqet postroenie delxty --} 
begin
e:=(e*8)+1;
v:=(v*8)-7;
line(0+e,6+v,3+e,1+v);
line(3+e,1+v,6+e,6+v);
line(0+e,6+v,6+e,6+v);
end;

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
Procedure Graph;{-------      risunok     --------} 
Var ig:integer;
Begin
Clr;
Ram;
Circ(100,100,20,0);
	Rectan(300-20,100-5,300+26,100+5);
For ig:=1 to 5 do
Circ(300+(ig*4),100,20,10);
        Rect(340,95,400,105);
Line(100,80,300,80);
Line(100,120,300,120);
Line(100,88,100,80);
Line(100,112,100,120);
Line(70,70,130,130);
Line(70,70,70,75);
Line(70,70,76,72);
Locate(30,7);
Write('kATU[KA');
Locate(50,10);
Write('mAGNIT');
Locate(10,18);
Write('gALXWANOMETR');
Kbm;
End;

Function Sar(k,u:integer):real;  { wy~islqet srednee arifmeti~eskoe } 
Var 	i:integer;
	l:real;
Begin
l:=0;
For i:=1 to u do
l:=l+a1[i,k];
Sar:=l/u;
End;

function srs(k,u:integer):real;  { wyzislqet srednee absol`tnoe } 
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

function otp(k,u:integer):real;  { wy~islqet otnositelxnu` pogre{nostx } 
begin
otp:=srs(k,u)/sar(k,u);
end;

procedure minmax; {---  sortirowka massiwa, wy~islenie pogre{nostej  ---} 
var i,k2,k3	 	:integer;
s1,s2,s3,s4,s5,s6,s	:real;
begin
s1:=a[1,6];
s2:=a[1,7];
s3:=a[1,8];
s4:=a[1,6];
s5:=a[1,7];
s6:=a[1,8];
for i:=1 to n-1 do begin
if s1>a[i+1,6] then s1:=a[i+1,6];
if s2>a[i+1,7] then s2:=a[i+1,7];
if s3>a[i+1,8] then s3:=a[i+1,8];

if s4<a[i+1,6] then s4:=a[i+1,6];
if s5<a[i+1,7] then s5:=a[i+1,7];
if s6<a[i+1,8] then s6:=a[i+1,8];
end;

k1:=0;
k2:=0;
k3:=0;
for i:=1 to n do
begin
if (a[i,6]<>s1) and (a[i,6]<>s4) then begin k1:=k1+1; a1[k1,6]:=a[i,6]; end;
if (a[i,7]<>s2) and (a[i,7]<>s5) then begin k2:=k2+1; a1[k2,7]:=a[i,7]; end;
if (a[i,8]<>s3) and (a[i,8]<>s6) then begin k3:=k3+1; a1[k3,8]:=a[i,8]; end;
end;
	locate(5,17);
	write('sREDNEE ARIFMETI^ESKOE                ');
	locate(43,17);
	write(sar(6,k1):3:4);
	locate(50,17);
	write(sar(7,k2):3:4);
	locate(58,17);
	write(sar(8,k3):3:4);

	locate(5,18);
	write('sREDNEE ABSOL@TNOE');
	locate(43,18);
	write(srs(6,k1):3:4);
	locate(50,18);
	write(srs(7,k2):3:4);
	locate(58,18);
	write(srs(8,k3):3:4);

	locate(5,19);
	write('oTNOSITELXNAQ POGRE[NOSTX');
	locate(43,19);
	write(otp(6,k1):3:4);
	locate(50,19);
 	write(otp(7,k2):3:4);
	locate(58,19);
	write(otp(8,k3):3:4);	
end; 

procedure tabl;	{---- postroenie tablici i ee zapolnenie  ----} 
var m,i,l	:integer;
begin
clr;
ram;
	locate(4,3);
	write('nOMER');
	locate(11,3);
	write('  d ,M');
	locate(19,3);
	write('PLO]ADX');
	locate(27,3);
	write('     n');
	locate(35,3);
	write('R , oM');
	locate(43,3);
	write('q , kL');
	locate(51,3);
	write('f , wB');
	locate(59,3);
	write('w ,  tL');
for i:=1 to n do 
		begin
	locate(4,5+i);
	write(a[i,1]:1:0);
	locate(11,5+i);
	write(a[i,2]:3:4);
	locate(19,5+i);
	write(a[i,3]:3:4);
	locate(27,5+i);
	write(a[i,4]:3:4);
	locate(34,5+i);
	write(a[i,5]:3:4);
	locate(43,5+i);
	write(a[i,6]:3:4);
	locate(50,5+i);
	write(a[i,7]:3:4);
	locate(58,5+i);
	write(a[i,8]:3:4);
end;

	m:=16;
		Line(m,10,m,136);
		for l:=1 to 8 do
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
Procedure Praktika; {  wwod |lementow massiwa  } 
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
		Write('iZMERXTE DIAMETR  d:  ');
			Read(d);
		Locate(10,11);
	Write('~ISLO WITKOW  (U^EBNAQ KATU[KA 80 WITKOW)  n:      ');
			Read(p);
		Locate(10,13);
		Write('|LEKTRI^ESKOE SOPROTIWLENIE KATU[KI  R1:      ');
			Read(r1);
		Locate(10,15);
		Write('|LEKTRI^ESKOE SOPROTIWLENIE REZISTORA  R2:      ');
			Read(r2);

Until (d>0) and (p>1) and (n>4) and (n<11) and (r1>0) and (r2>0);
Repeat
		For i:=1 to n do
	Begin
Repeat
	Clr;
	   Ram;
		Locate(10,5);
			Write('wWEDITE REZULXTATY ',I,'-GO OPYTA:');
		Locate(10,12);
Write('rEZULXTAT IZMERENIQ GALXWANOMETRA  W  EDINICAH [KALY:  ');
			Read(g);
until (g>0);

{nOMER OPYTA}		a[i,1]:=i;
{dIAMETR KATU[KI}		a[i,2]:=d;
{pLO]ADX KATU[KI}		a[i,3]:=(pi*d*d)/4;
{kOLI^ESTWO WITKOW}		a[i,4]:=p;
{pOLNOE SOPROTIWLENIE}	a[i,5]:=r1+r2+rp;
{kOL-WO ZARQDA}		a[i,6]:=G;
{mAGNITNYJ POTOK}	 	a[i,7]:=(g*(r1+r2+rp))/p;
{mAGNITNAQ INDUKCIQ}	a[i,8]:=(g*(r1+r2+rp))/(p*a[i,3]);
end;
w:=1;
s:=1;
repeat
begin
w:=w+1;
if a[1,6]=a[w,6] then s:=s+1 else  
		begin ms:=a[w,6]; for ka:=w to n do 
				if (ms=a[ka,6]) or (a[1,6]=a[ka,6])
				then s:=s+1; end;  
end;
until (a[1,6]<>a[w,6]) or (w=n);
until s<>n;

Tabl;
Kbm;
End;

procedure wywod(p:integer);{wywodit na |kran sodervimoe tekstowogo fajla} 
type text=file of char;
 var 	txt:text;
	a:char;
	i,j,l1:integer;
begin
if p=1 then
reset(txt,'teor','txt',l1)
else 
reset(txt,'instr','txt',l1);
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
locate(23,25);
write('dLQ PRODOLVENIQ NAVMITE <WWOD>');
WHILE INKEY<>10 DO
KBMODE(1);
KBMODE(0);	
		clr;
			ram;
			i:=3;
			     end;
     end;
kbm;
close(txt);
end;
{----------------      m e n `     ------------------} 
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
locate(15,8);
write('iZMERENIE INDUKCII POLQ POSTOQNNOGO MAGNITA ');
locate(30,10);
write(' m  e  n  `');
locate(24,14);
write('1.  hOD RABOTY.');
locate(24,16);
write('2.  tEORITI^ESKAQ ^ASTX.');
locate(24,18);
write('3.  pRAKTI^ESKAQ ^ASTX.');
locate(24,20);
write('4.  rISUNOK');
locate(24,22);
write('5.  wYHOD.');
{------------------------    MEN@ -----------------------------------}
repeat
inverse(22,z-1,27);
kbmode(1);
Serg:=Inkey;
If (serg=65) and (z>12) then 
		z:=z-2;
If (serg=66) and (z<22) then 
z:=z+2;
If (serg=10) and (z=14) then wywod(2);
If (serg=10) and (z=16) then wywod(1);
If (serg=10) and (z=18) then praktika;
If (serg=10) and (z=20) then graph;
If (serg=10) and (z=22) then clr;
				until (serg=10) and(z=22);
End;

procedure zast; 	{--------------- zastawka -----------------} 
begin
clr;
ram;
licej;
locate(20,16);
write('    lABORATORNAQ RABOTA PO FIZIKE');
locate(20,17);
write('               tema:');
locate(10,18);
write('  oPREDELENIE MAGNITNOJ INDUKCII POLQ POSTOQNNOGO MAGNITA');
locate(20,19);
write('      wYPOLNIL :  dRUVININ iGORX ');
locate(20,20);
write('              lICEJ  N 1');
locate(20,21);
write('               1992 G.');
locate(19,23);
Write('  dLQ PRODOLVENIQ NAVMITE <WWOD>');
	Inkey:=0;
		While Inkey<>10 do
	Kbmode (1); 

end;
procedure asko; {--------  wwodqtsq familii i klas u~enikow  -----} 
var i:integer;
begin
kbmode(0);
clr;
ram;
locate(10,10);
write('wWEDITE WA[ KLASS (NAPRIMER 11b ILI 10a)   ');
read(form);
locate(10,12);
write('wWEDITE FAMI[I@ PERWOGO U^ENIKA ');
read(name1);
locate(10,14);
write('wWEDITE FAMI[I@ WTOROGO U^ENIKA ');
read(name2);
for i:=1 to 3 do adress[i]:=form[i];
for i:=1 to 3 do adress[i+3]:=name1[i];
locate(24,25);
write(' dLQ PRODOLVENIQ NAVMITE <WWOD>');
while inkey<>10 do
kbmode(1);
end;

procedure out;  {------------   zapisx na disk   -------------} 
var li:integer;
n:char;
begin
li:=2;
n:=chr(14);
rewrite(txt,adress,'dat',li);
writeln(txt,'rezulxtaty wy~islenij');
writeln(txt,'  ');
writeln(txt,'rabotu wypolnili u~a}iesq ',form,'klassa');
writeln(txt,'  ');
writeln(txt,n,name1);
writeln(txt,n,name2);
writeln(txt,'  ');
writeln(txt,'  ');
writeln(txt,'  ');
writeln(txt,'rezulxtat nahoditsq w interwale ot ',
sar(8,k1)-srs(8,k1),' do ',sar(8,k1)-srs(8,k1));
writeln(txt,'  ');
writeln(txt,'pogre{nostx ',(otp(8,k1)*100):5:4,'%');
close(txt);
end;
{----------------         uprawlq`}ij    blok        ------------------} 
Begin
Zast;
z:=12;
 asko;
1:User;
Clr;
out;
End.  {   konec programmy   }
                                                                                                                                                                                                                                                                                                                           