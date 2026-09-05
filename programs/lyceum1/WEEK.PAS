Program work;
label 1;
{ --------------   razdel konstant  ----------}
Const pi=3.1415926;
Const rp=50;
Var 
a,a1:array[1..20,1..9] 	of real;
s,e,u,p,g,ma1,ma2,mi,mi1,mi2	:real;
i,n,z				:integer;
{ ---------       razdel wne{nih procedur i funkcij      ----------}
 Procedure clr;							external;
 	Procedure Line(x0,y0,x1,y1:integer);			external;
	Procedure Kbmode(mode:integer);				external;
	Procedure Fill(x,y:integer);				external;
	Function  Inkey:integer;				external;
	Procedure Point(x,y:integer);				external;
	Procedure Gotoxy(x,y:integer);				external;	
Procedure Inverse(x,y,length:integer);				external; 
Procedure Ram;							external;
Procedure Circle(paa,paw,pap,l,a,n,sasa:integer);		external;
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

Procedure minmax;
var o,i,k1,k2,k3 	:integer;
s1,s2,s3,s4,s5,s6,s	:real;
begin
s1:=a[1,2];
s2:=a[1,3];
s3:=a[1,6];
s4:=a[1,2];
s5:=a[1,3];
s6:=a[1,6];
for o:=1 to n-1 do begin
if s1>a[o+1,2] then s1:=a[o+1,2];
if s1>a[o+1,3] then s2:=a[o+1,3];
if s1>a[o+1,3] then s3:=a[o+1,6];

if s4<a[o+1,2] then s4:=a[o+1,2];
if s5<a[o+1,3] then s5:=a[o+1,3];
if s6<a[o+1,6] then s6:=a[o+1,6];
end;

k1:=0;
k2:=0;
k3:=0;
for i:=1 to n do
begin
if (a[i,2]<>s1) and (a[i,2]<>s4) then begin k1:=k1+1; a1[k1,2]:=a[i,2]; end;
if (a[i,3]<>s2) and (a[i,3]<>s5) then begin k2:=k2+1; a1[k2,3]:=a[i,3]; end;
if (a[i,6]<>s3) and (a[i,6]<>s6) then begin k3:=k3+1; a1[k3,6]:=a[i,6]; end;
end;
if (k1>2) and (k2>2) and (k3>2) then 
    begin
	locate(5,17);
	write('sREDNEE ARIFMETI^ESKOE');
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
  end;

procedure tabl;
var m,i,l	:integer;
begin
clr;
ram;
	locate(4,3); write('nOMER');
        locate(4,4); write('OPYTA');      
	locate(43,3); write('U(PR.),');
        locate(44,4); write(' w');
	locate(51,3); write('I(PR.),');
        locate(52,4); write(' a');
       	locate(11,3); write('e(PR.),');
        locate(12,4); write(' w');
	locate(35,3); write('  U,w'); Delta(36,3);
	locate(59,3); write('r(PR.),');
        locate(60,4); write(' oM');
	locate(19,3); write('  I,a'); Delta(20,3);
	locate(27,3); write('  r,oM'); Delta(28,3);
for i:=1 to n do 
		begin
	locate(4,5+i);
	write(a[i,1]:1:0);
	locate(11,5+i);
	write(a[i,4]:3:3);
	locate(19,5+i);
	write(a[i,7]:3:3);
	locate(27,5+i);
	write(a[i,8]:3:3);
	locate(34,5+i);
	write(a[i,5]:3:4);
	locate(43,5+i);
	write(a[i,2]:3:3);
	locate(50,5+i);
	write(a[i,3]:3:4);
	locate(58,5+i);
	write(a[i,6]:3:4);
end;
	m:=16;
		Line(m,10,m,140);
		for l:=1 to 8 do
		   Begin
		Line(m,10,m,135);
		m:=m+64;
		End;
	Line(m+(64*2),10,m+(64*2),140);
Minmax;
kbm;	
 	  End;
Procedure Praktika;
var w,ka,s   :integer;
    ms,ma    :real;
Begin
Kbmode(0);
Repeat
	Clr;
 		Ram;
	Locate(12,7);
	Write('wWEDITE ^ISLO OPYTOW (NE MENEE 5):');
	                Read(n);
        Locate(10,9);
        Write('iZMERXTE |ds ISTO^NIKA TOKA  e: ');
                        Read(e);

Until (n>4) and (e>0);
Repeat
		For i:=1 to n do
	Begin
Repeat
	Clr;
	   Ram;
		Locate(10,5);
		Write('wWEDITE REZULXTATY ',i,'-GO OPYTA:');
           	Locate(10,7);
		Write('nAPRQVENIE U: ');
			Read(u);
		Locate(10,9);
		Write('sILA TOKA I: ');
			Read(p);	
until (u>0) and (p>0);

{nOMER OPYTA}                    		a[i,1]:=i;
{nAPRQVENIE}                     		a[i,2]:=u;
{sILA TOKA }                        		a[i,3]:=p;
{|ds ISTO^NIKA TOKA}                        	a[i,4]:=e;
{wNUTRENNEE SOPROTIWLENIE}    	            a[i,6]:=(e-u)/p;
end;

ma:=a[1,2]; mi:=a[1,2];
ma1:=a[1,3]; mi1:=a[1,3];
ma2:=a[1,6]; mi2:=a[1,6];
FOR I:=1 TO n-1 DO BEGIN
IF a[i,2]<a[i+1,2] THEN ma:=a[i+1,2] ELSE mi:=a[i+1,2];
IF a[i,3]<a[i+1,3] THEN ma1:=a[i+1,3] ELSE mi1:=a[i+1,3];
IF a[i,6]<a[i+1,6] THEN ma2:=a[i+1,6] ELSE mi2:=a[i+1,6];
end;
{uWELI^ENIE NAPRQVENIQ}                         a[i,5]:=ma-mi;
{uWELI^ENIE SILY TOKA}                          a[i,7]:=ma1-mi1;
{uWELI^ENIE WNUTRENNEGO SOPROTIWLENIQ}          a[i,8]:=ma2-mi2;

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


procedure instr;
begin
clr;
locate(23,2);
write('     i N S T R U K C I Q :');
ram;
locate(7,4);
write('1. sOBERITE \LEKTRI^ESKU@ CEPX SOGLASNO RISUNKU. pROWERXTE NADEV-');
locate(7,6);
write('NOSTX \LEKTRI^ESKIH KONTAKTOW, PRAWILXNOSTX PODKL@^ENIQ AMPERMETRA');
locate(7,8);
write('I WOLXTMETRA.');
locate(7,10);
write('2. pROWERXTE RABOTU CEPI PRI RAZOMKNUTOM I ZAMKNUTOM KL@^E.');
locate(7,12);
write('3. iZMERXTE |ds ISTO^NIKA TOKA.');
locate(7,14);
write('4. sNIMITE POKAZANIQ AMPERMETRA I WOLXTMETRA PRI ZAMKNUTOM KL@^E.');
locate(7,16);
write('5. wWEDITE REZULXTATY IZMERENIJ.');
kbm;
end;


procedure tir;
begin
Locate(23,23);
Write('dlq prodolveniq navmite <wwod>');
	Inkey:=0;
		While Inkey<>10 do
	Kbmode (1); 
clr;
locate(25,2);
write('     t E O R I Q');
ram;
end;

procedure teory;
begin
clr;
locate(25,2);
write('     t E O R I Q');
ram;
locate(7,5);
write('pRI RAZOMKNUTOM KL@^E |ds ISTO^NIKA TOKA RAWNA NAPRQVENI@ NA WNE[-');
locate(7,7);
write('NEJ CEPI. w \KSPERIMENTE ISTO^NIK TOKA ZAMKNUT NA WOLXTMETR, SO-');
locate(7,9);
write('PROTIWLENIE KOTOROGO DOLVNO BYTX MNOGO BOLX[E WNUTRENNEGO SOPRO-');
locate(7,11);
write('TIWLENIQ ISTO^NIKA TOKA r. oBY^NO SOPROTIWLENIE ISTO^NIKA TOKA');
locate(7,13);
write('MALO, PO\TOMU DLQ IZMERENIQ NAPRQVENIQ MOVNO ISPOLXZOWATX [KOLX-');
locate(7,15);
write('NYJ WOLXTMETR SO [KALOJ 0-6 w I SOPROTIWLENIEM R=900 oM. tAK');
locate(7,17);
write('KAK SOPROTIWLENIE ISTO^NIKA OBY^NO MALO, TO DEJSTWITELXNO R>>r.');
locate(7,19);
write('pRI \TOM OTLI^IE e OT U NE PREWY[AET DESQTYH DOLEJ PROCENTA,');
locate(7,21);
write('PO\TOMU POGRE[NOSTX IZERENIQ |ds RAWNA POGRE[NOSTI IZMERENIQ ');

				tir;

locate(7,5);
write('NAPRQVENIQ. ');
locate(7,7);
write('  wNUTRENNEE SOPROTIWLENIE ISTO^NIKA TOKA MOVNO IZMERITX KOS-');
locate(7,9);
write('WENNO, SNQW POKAZANIQ AMPERMETRA I WOLXTMETRA PRI ZAMKNUTOM KL@-');
locate(7,11);
write('^E. dEJSTWITELXNO, IZ ZAKONA oMA DLQ ZAMKNUTOJ CEPI POLU^AEM:');
locate(7,13);
write('E=U+I*r, GDE U=I*R-NAPRQVENIE NA WNE[NEJ CEPI. pO\TOMU ');
locate(7,15);
write('r(PR.) = (e(PR.) - U(PR.))/I(PR.)');
locate(7,17);
write('dLQ IZMERENIQ SILY TOKA W CEPI MOVNO ISPOLXZOWATX [KOLXNYJ AMPER-');
locate(7,19);
write('METR SO [KALOJ 0-2 a. mAKSIMALXNYE POGRE[NOSTI IZMERENIJ WNUTREN-');
				tir;
locate(7,5);
write('NEGO SOPROTIWLENQ ISTO^NIKA TOKA OPREDELQ@TSQ PO FORMULAM:');
locate(7,7);
write('E(WNUTR.SOPR.) = ( e+ U)/(e(PR.) - U(PR.) + I/I(PR.),');
DELTA(25,7);
DELTA(28,7);
DELTA(50,7);
locate(7,9);
write(' r=r(PR.) * E(WNUTR.SOPR.).');
DELTA(7,9);
kbm;
end;

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
write('iZMERENIE |ds I WNUTRENNEGO SOPROTIWLENIQ ');
locate(30,11);
write(' m  e  n  `');
locate(24,15);
write('1.  iNSTRUKCIQ.');
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
locate(9,18);
write('  iZMERENIE |ds I WNUTRENNEGO SOPROTIWLENIQ ISTO^NIKA TOKA');
locate(20,19);
write('      wYPOLNIL :  pE^NIKOW rOMAN ');
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
Begin
Zast;
z:=13;
1:User;
Clr;
End.
                                                                                                                                                                                                                                                                                                                                                                                