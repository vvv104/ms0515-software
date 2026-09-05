VAR 
DIR:PACKED ARRAY[1..1000,1..2] OF ARRAY[1..12] OF CHAR;
DEV:ARRAY[1..2] OF ARRAY[1..6] OF CHAR;
  P,T:INTEGER;
  N,I,J,K:ARRAY[1..2] OF INTEGER;
  BOOL:BOOLEAN;
{---------------------------------------------------------------}
Procedure InitGraph    (mode:integer);			EXTERNAL;
Procedure SetColor     (C:integer);			EXTERNAL;
Procedure SetFon       (C:integer);			EXTERNAL;
Procedure SetBorder    (C:integer);			EXTERNAL;
Procedure GotoXY       (x, y: integer);			EXTERNAL;
Procedure KbMode       (mode:integer);			EXTERNAL;
Procedure ClrScr;					EXTERNAL;
Procedure CurOff;					EXTERNAL;
Procedure CurOn;					EXTERNAL;
Procedure InvOn;					EXTERNAL;
Procedure InvOff;					EXTERNAL;
Function  Inkey:integer;				EXTERNAL;
{---------------------------------------------------------------}
PROCEDURE RESBUFKB;
BEGIN
WHILE INKEY<>0 DO
END;
PROCEDURE PAUSE;
BEGIN
 RESBUFKB;
 KBMODE(1);
 REPEAT UNTIL INKEY<>0;
 KBMODE(0)
END;
PROCEDURE PANELS;
VAR A:ARRAY [1..6] OF ARRAY[1..40] OF CHAR;
    I,J:INTEGER; 
BEGIN
CUROFF;
A[1]:='êîîîîîîîîîîîîÇîîîîîîîîîîîîÇîîîîîîîîîîîîë';
A[2]:='ï    Name    •    Name    •    Name    ï';
A[3]:='ï            •            •            ï';
A[4]:='é§§§§§§§§§§§§®§§§§§§§§§§§§®§§§§§§§§§§§§Ñ'; 
A[5]:='ï                                      ï';
A[6]:='ìîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîí';
FOR J:=0 TO 1 DO
 BEGIN
  GOTOXY(J*40,0);
   WRITELN(A[1]);
  GOTOXY(J*40,1);
   WRITELN(A[2]);
  FOR I:=2 TO 19 DO
   BEGIN
    GOTOXY(J*40,I);
     WRITELN(A[3])
   END;
  GOTOXY(J*40,20);
   WRITELN(A[4]);
  GOTOXY(J*40,21);
   WRITELN(A[5]);
  GOTOXY(J*40,22);
   WRITELN(A[6])
 END;
CURON
END;
PROCEDURE KEYBAR;
 BEGIN
  CUROFF;
  GOTOXY(0,24);
   WRITE('1');
  INVON;
   WRITE('Help  ');
  INVOFF;
   WRITE(' 2');
  INVON;
   WRITE('Menu  ');
  INVOFF;
   WRITE(' 3');
  INVON;
   WRITE('View  ');
  INVOFF;
   WRITE(' 4');
  INVON;
   WRITE('Edit  ');
  INVOFF;
   WRITE(' 5');
  INVON;
   WRITE('Copy  ');
  INVOFF;
   WRITE(' 6');
  INVON;
   WRITE('RenMov');
  INVOFF;
   WRITE(' 7');
  INVON;
   WRITE('Mkdir ');
  INVOFF;
   WRITE(' 8');
  INVON;
   WRITE('Delete');
  INVOFF;
   WRITE(' 9');
  INVON;
   WRITE('PullDn');
  INVOFF;
   WRITE(' 10');
  INVON;
   WRITE('Quit ');
  INVOFF;
  CURON;
GOTOXY(0,23);
END;
PROCEDURE GETDIR(B:INTEGER);
BEGIN
 DIR[1,1] :='ANTIVIR     ';
 DIR[2,1] :='ARCH        ';
 DIR[3,1] :='DOS         ';
 DIR[4,1] :='EDITORS     ';
 DIR[5,1] :='GAMES       ';
 DIR[6,1] :='MUSIC       ';
 DIR[7,1] :='NC          ';
 DIR[8,1] :='NUTILS      ';
 DIR[9,1] :='SENTRY      ';
 DIR[10,1]:='TOOLS       ';
 DIR[11,1]:='TRANS       ';
 DIR[12,1]:='WINDOWS     ';
 DIR[13,1]:='WINWORD     ';
 DIR[14,1]:='Dblspaceúbin';
 DIR[15,1]:='Image   úidx';
 DIR[16,1]:='Io      úsys';
 DIR[17,1]:='Msdos   úsys';
 DIR[18,1]:='autoexec bat';
 DIR[19,1]:='command  com';
 DIR[20,1]:='config   sys';
 DIR[21,1]:='emm386   sys';
 DIR[22,1]:='format   com';
 DIR[23,1]:='himem    sys';
 DIR[24,1]:='image    dat';
 DIR[25,1]:='treeinfo ncd';
 DEV[1]:=' DZ0: ';
 K[1]:=25;
 N[1]:=1;
 I[1]:=1;
 J[1]:=1;
 DIR[1,2] :='..          ';
 DIR[2,2] :='install  exe';
 DIR[3,2] :='4372ansi set';
 DIR[4,2] :='8502ansi set';
 DIR[5,2] :='ansi2437 set';
 DIR[6,2] :='ansi2850 set';
 DIR[7,2] :='nc       cfg';
 DIR[8,2] :='nc       exe';
 DIR[9,2] :='nc       hlp';
 DIR[10,2]:='nc       ico';
 DIR[11,2]:='ncedit   exe';
 DIR[12,2]:='ncmain   exe';
 DIR[13,2]:='nczip    exe';
 DIR[14,2]:='packer   exe';
 DIR[15,2]:='packer   set';
 DIR[16,2]:='readme   txt';
 DIR[17,2]:='term90   exe';
 DIR[18,2]:='term90   hlp';
 DIR[19,2]:='term90   res';
 DIR[20,2]:='testmdm  scx';
 DIR[21,2]:='cmpsrv   scx';
 DIR[22,2]:='genie    scx';
 DIR[23,2]:='datex    p  ';
 DIR[24,2]:='123view  exe';
 DIR[25,2]:='arcview  exe';
 DIR[26,2]:='bitmap   exe';
 DIR[27,2]:='clp2dib  exe';
 DIR[28,2]:='dbview   exe';
 DIR[29,2]:='draw2wmf exe';
 DIR[30,2]:='drw2wmf  exe';
 DIR[31,2]:='ico2dib  exe';
 DIR[32,2]:='msp2dib  exe';
 DIR[33,2]:='paraview exe';
 DIR[34,2]:='pct2dib  exe';
 DIR[35,2]:='q&aview  exe';
 DIR[36,2]:='rbview   exe';
 DIR[37,2]:='refview  exe';
 DIR[38,2]:='tif2dib  exe';
 DIR[39,2]:='vector   exe';
 DIR[40,2]:='wpb2dib  exe';
 DIR[41,2]:='wpv2wmf  exe';
 DIR[42,2]:='wpview   exe';
 K[2]:=42;
 N[2]:=1;
 I[2]:=1;
 J[2]:=1;
 DEV[2]:=' DZ2: ';
END;
PROCEDURE PUTDIR(B:INTEGER);
VAR X,Y,PN:INTEGER;
BEGIN
  GOTOXY(17+40*(B-1),0);
  WRITE(DEV[B]);
  X:=1;
  Y:=1;
  PN:=1;
  WHILE (X<=3) AND (X>=1) AND (PN<=K[B]) DO
   BEGIN
    GOTOXY((X-1)*13+40*(B-1)+1,Y+1);
     WRITE(DIR[PN,B]);
    PN:=PN+1;
    Y:=Y+1;
    IF Y=19 THEN
     BEGIN
      Y:=1;
      X:=X+1
     END
   END
END;
PROCEDURE ACTP(B:INTEGER);
 BEGIN
  CUROFF;
  INVON;
   GOTOXY(17+40*(B-1),0);
   WRITE(DEV[B]);
   GOTOXY((J[B]-1)*13+40*(B-1)+1,I[B]+1);
   WRITE(DIR[N[B],B]);
  INVOFF;
  GOTOXY(1,23);
  CURON;
 P:=B
END;
PROCEDURE DEACTP(B:INTEGER);
 BEGIN
  CUROFF;
  INVOFF;
   GOTOXY(17+40*(B-1),0);
   WRITE(DEV[B]);
   GOTOXY((J[B]-1)*13+40*(B-1)+1,I[B]+1);
   WRITE(DIR[N[B],B]);
  GOTOXY(1,23);
  CURON
END;
PROCEDURE CHANPANEL;
BEGIN
DEACTP(P);
IF P=2 THEN P:=1 ELSE P:=2;
ACTP(P)
END;
PROCEDURE UP;
BEGIN
 IF N[P]>1 THEN
  BEGIN
   CUROFF;
   INVOFF;
   GOTOXY((P-1)*40+(J[P]-1)*13+1,I[P]+1);
   WRITE(DIR[N[P],P]);
   N[P]:=N[P]-1;
   I[P]:=I[P]-1;
   IF I[P]<1 THEN
    BEGIN
     I[P]:=18;
     J[P]:=J[P]-1
    END;
   INVON;
   GOTOXY((P-1)*40+(J[P]-1)*13+1,I[P]+1);
   WRITE(DIR[N[P],P]);
   INVOFF;
   GOTOXY(1,23);
   CURON
  END
END;
PROCEDURE DOWN;
BEGIN
 IF N[P]<K[P] THEN
  BEGIN
   CUROFF;
   INVOFF;
   GOTOXY((P-1)*40+(J[P]-1)*13+1,I[P]+1);
   WRITE(DIR[N[P],P]);
   N[P]:=N[P]+1;
   I[P]:=I[P]+1;
   IF I[P]>18 THEN
    BEGIN
     I[P]:=1;
     J[P]:=J[P]+1
    END;
   INVON;
   GOTOXY((P-1)*40+(J[P]-1)*13+1,I[P]+1);
   WRITE(DIR[N[P],P]);
   INVOFF;
   GOTOXY(1,23);
   CURON
  END
END;
PROCEDURE LEFT;
BEGIN
 IF NOT ((I[P]=1) AND (J[P]=1)) THEN
  BEGIN
   CUROFF;
   INVOFF;
   GOTOXY((P-1)*40+(J[P]-1)*13+1,I[P]+1);
   WRITE(DIR[N[P],P]);
   IF J[P]=1 THEN 
    BEGIN
     N[P]:=N[P]-I[P]+1;
     I[P]:=1
    END
   ELSE
    BEGIN
     J[P]:=J[P]-1;
     N[P]:=N[P]-18
    END;
   INVON;
   GOTOXY((P-1)*40+(J[P]-1)*13+1,I[P]+1);
   WRITE(DIR[N[P],P]);
   INVOFF;
   GOTOXY(1,23);
   CURON
  END
END;
PROCEDURE RIGHT;
BEGIN
 IF NOT((J[P]=3) AND (I[P]=18)) THEN
  BEGIN
   CUROFF;
   INVOFF;
   GOTOXY((P-1)*40+(J[P]-1)*13+1,I[P]+1);
   WRITE(DIR[N[P],P]); 
   IF K[P]<(N[P]+18) THEN
    BEGIN
     I[P]:=I[P]+K[P]-N[P];
     IF I[P]>18 THEN
      BEGIN
       I[P]:=I[P]-18;
       J[P]:=J[P]+1
      END;
     N[P]:=K[P]
    END
   ELSE
    BEGIN
     J[P]:=J[P]+1;
     N[P]:=N[P]+18
    END;
   INVON;
   GOTOXY((P-1)*40+(J[P]-1)*13+1,I[P]+1);
   WRITE(DIR[N[P],P]);
   INVOFF;
   GOTOXY(1,23);
   CURON
  END
END;
FUNCTION QUIT:BOOLEAN;
VAR
R:ARRAY[1..7] OF PACKED ARRAY[1..48] OF CHAR;
I:INTEGER;
B1,B2:BOOLEAN;
BEGIN
CUROFF;
INVON;
R[1]:='                                               ´';
R[2]:=' êîîîîîîîîîî The Norton Commander îîîîîîîîîîîë ú';
R[3]:=' ï Do you want to quit the Norton Commander? ï ú';
R[4]:=' ï                 Yes   No                  ï ú';
R[5]:=' ìîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîîí ú';
R[6]:='                                               ú';
R[7]:='´úúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúúú';
FOR I:=1 TO 7 DO
 BEGIN
  GOTOXY(16,6+I);
  WRITE(R[I])
 END;
B1:=TRUE;
B2:=TRUE;
IF B1 THEN
 BEGIN
  GOTOXY(34,10);
  INVOFF;
  WRITE(' Yes ')
 END
ELSE
 BEGIN
  GOTOXY(40,10);
  INVOFF;
  WRITE(' No ')
 END;
REPEAT
I:=INKEY;
IF I=27 THEN 
BEGIN
 I:=INKEY;
 IF (I=68) OR (I=67) THEN B1:=NOT B1
END;
IF B2<>B1 THEN
BEGIN
IF B1 THEN
 BEGIN
  GOTOXY(40,10);
  INVON;
  WRITE(' No ');
  GOTOXY(34,10);
  INVOFF;
  WRITE(' Yes ')
 END
ELSE
 BEGIN
  GOTOXY(34,10);
  INVON;
  WRITE(' Yes ');
  GOTOXY(40,10);
  INVOFF;
  WRITE(' No ')
 END;
 B2:=B1;
END
UNTIL I=13;
QUIT:=B1;
IF NOT B1 THEN
 BEGIN
  PANELS;
  PUTDIR(1);
  PUTDIR(2);
  ACTP(P)
 END
END;
PROCEDURE PULLDN;
TYPE
 MEN=PACKED ARRAY[1..8] OF CHAR;
 M=ARRAY [1..5] OF MEN;
VAR
   MS:M;
   I:INTEGER;
FUNCTION SEL:INTEGER;
BEGIN
MS[1]:='  Left  ';
MS[2]:=' Files  ';
MS[3]:='Commands';
MS[4]:='Options ';
MS[5]:=' Right  ';
(****************************************************************************)
BEGIN
 INITGRAPH(1);
 SETCOLOR(0);
 SETFON(7);
 SETBORDER(0);
 CLRSCR;
 KBMODE(1);
 PANELS;
 KEYBAR;
 CUROFF;
 GETDIR(0);
 FOR P:=1 TO 2 DO
  PUTDIR(P);
 CURON;
 GOTOXY(0,23);
  WRITE('>');
 ACTP(1);
 BOOL:=FALSE;
 REPEAT
 T:=INKEY;
 CASE T OF
  9 :CHANPANEL;
  27:
   BEGIN
    T:=INKEY;
    CASE T OF
     65:UP;
     66:DOWN;
     67:RIGHT;
     68:LEFT;
     77:PULLDN;
     78:BOOL:=QUIT  
    END
   END
 END
 UNTIL BOOL;
 CLRSCR;
 INVOFF;
 CURON;
KBMODE(0)
END.
                                    