   CONST
	MAXNUMSPR=62;
   TYPE
	WORD=0..65535;
	ZNKP=-1..28;
	POLE=ARRAY[0..41,0..21] OF ZNKP;
	SPRT=ARRAY[0..7] OF WORD;
	TOFSPRT=ARRAY[0..MAXNUMSPR] OF SPRT;
	NAME=ARRAY[1..6] OF CHAR;
   VAR
	NEWP,MARK,QUIT:BOOLEAN;
        S:TOFSPRT;
	A:POLE;
        FILNAME:NAME;
        PGP,NGP,KM:INTEGER;
	KPPM,KNPM,KOK:INTEGER;
        XMIN,XMAX,YMIN,YMAX,X,Y:INTEGER;
	SEED1,SEED2,I,J,K,N,XP,YP:INTEGER;
	INK:INTEGER;

FUNCTION RND:REAL;
FUNCTION RAN(VAR SEED1,SEED2:INTEGER):REAL;FORTRAN;
 BEGIN
 RND:=RAN(SEED1,SEED2)
 END;

PROCEDURE PAUSE;
BEGIN
 KBMODE(1);
 REPEAT UNTIL INKEY<>0;
 KBMODE(0)
END;

PROCEDURE GETTABSPR(VAR S:TOFSPRT);
BEGIN
S[ 0, 0]:=   768; 
S[ 0, 1]:=   768; 
S[ 0, 2]:=   768; 
S[ 0, 3]:=   768; 
S[ 0, 4]:=   768; 
S[ 0, 5]:=   768; 
S[ 0, 6]:=   768; 
S[ 0, 7]:=    -1; 

S[ 1, 0]:=   768; 
S[ 1, 1]:=   771; 
S[ 1, 2]:=   783; 
S[ 1, 3]:=   771; 
S[ 1, 4]:=   771; 
S[ 1, 5]:=-15601; 
S[ 1, 6]:=   768; 
S[ 1, 7]:=    -1; 

S[ 2, 0]:=   768; 
S[ 2, 1]:=-31993; 
S[ 2, 2]:=-15616; 
S[ 2, 3]:=-31993; 
S[ 2, 4]:=   780; 
S[ 2, 5]:=-15601; 
S[ 2, 6]:=   768; 
S[ 2, 7]:=    -1; 

S[ 3, 0]:=   768; 
S[ 3, 1]:=-31993; 
S[ 3, 2]:=-15604; 
S[ 3, 3]:=-31999; 
S[ 3, 4]:=-15604; 
S[ 3, 5]:=-31993; 
S[ 3, 6]:=   768; 
S[ 3, 7]:=    -1; 

S[ 4, 0]:=   768; 
S[ 4, 1]:=-15613; 
S[ 4, 2]:=-15610; 
S[ 4, 3]:=-15604; 
S[ 4, 4]:=-15601; 
S[ 4, 5]:=-15616; 
S[ 4, 6]:=   768; 
S[ 4, 7]:=    -1; 

S[ 5, 0]:=   768; 
S[ 5, 1]:=-15601; 
S[ 5, 2]:=   780; 
S[ 5, 3]:=-15601; 
S[ 5, 4]:=-15616; 
S[ 5, 5]:=-15601; 
S[ 5, 6]:=   768; 
S[ 5, 7]:=    -1; 

S[ 6, 0]:=   768; 
S[ 6, 1]:=-31993; 
S[ 6, 2]:=   780; 
S[ 6, 3]:=-31985; 
S[ 6, 4]:=-15604; 
S[ 6, 5]:=-31993; 
S[ 6, 6]:=   768; 
S[ 6, 7]:=    -1; 

S[ 7, 0]:=   768; 
S[ 7, 1]:=-15601; 
S[ 7, 2]:=-15616; 
S[ 7, 3]:=-31999; 
S[ 7, 4]:=   771; 
S[ 7, 5]:=   774; 
S[ 7, 6]:=   768; 
S[ 7, 7]:=    -1; 

S[ 8, 0]:=   768; 
S[ 8, 1]:=-31993; 
S[ 8, 2]:=-15604; 
S[ 8, 3]:=-31993; 
S[ 8, 4]:=-15604; 
S[ 8, 5]:=-31993; 
S[ 8, 6]:=   768; 
S[ 8, 7]:=    -1; 

S[ 9, 0]:=   771; 
S[ 9, 1]:= 13107; 
S[ 9, 2]:=-15601; 
S[ 9, 3]:=    -1; 
S[ 9, 4]:=-15601; 
S[ 9, 5]:= 13107; 
S[ 9, 6]:=   771; 
S[ 9, 7]:=    -1; 

S[10, 0]:=  4035; 
S[10, 1]:= 13104; 
S[10, 2]:=-15601; 
S[10, 3]:=-12340; 
S[10, 4]:=-15601; 
S[10, 5]:= 13104; 
S[10, 6]:=  4035; 
S[10, 7]:=    -1; 

S[11, 0]:=     3; 
S[11, 1]:=     3; 
S[11, 2]:=     0; 
S[11, 3]:= 15600; 
S[11, 4]:=     0; 
S[11, 5]:=     3; 
S[11, 6]:=     3; 
S[11, 7]:=     0; 

S[12, 0]:=   768; 
S[12, 1]:= 22293; 
S[12, 2]:=-21718; 
S[12, 3]:= 22293; 
S[12, 4]:=-21718; 
S[12, 5]:= 22293; 
S[12, 6]:=-21718; 
S[12, 7]:=    -1; 

S[13, 0]:=   768; 
S[13, 1]:= -5345; 
S[13, 2]:= -6369; 
S[13, 3]:= -5345; 
S[13, 4]:= -6380; 
S[13, 5]:= -5334; 
S[13, 6]:= -6380; 
S[13, 7]:=    -1; 

S[14, 0]:=  3264; 
S[14, 1]:= 12336; 
S[14, 2]:=-16372; 
S[14, 3]:=     3; 
S[14, 4]:=-16372; 
S[14, 5]:= 12336; 
S[14, 6]:=  3264; 
S[14, 7]:=     0; 

S[15, 0]:=   768; 
S[15, 1]:=-26857; 
S[15, 2]:=-13536; 
S[15, 3]:=-26861; 
S[15, 4]:= 11040; 
S[15, 5]:= 22291; 
S[15, 6]:= 11048; 
S[15, 7]:=    -1; 

S[16, 0]:=-21846; 
S[16, 1]:= 21845; 
S[16, 2]:=-21846; 
S[16, 3]:= 21845; 
S[16, 4]:=-21846; 
S[16, 5]:= 21845; 
S[16, 6]:=-21846; 
S[16, 7]:= 21845; 

S[17, 0]:=-20726; 
S[17, 1]:= 24325; 
S[17, 2]:=-20726; 
S[17, 3]:= 24325; 
S[17, 4]:=-20726; 
S[17, 5]:= 24325; 
S[17, 6]:=-20726; 
S[17, 7]:= 24325; 

S[18, 0]:=     0; 
S[18, 1]:=     0; 
S[18, 2]:=-22006; 
S[18, 3]:= 21765; 
S[18, 4]:=-22006; 
S[18, 5]:= 21765; 
S[18, 6]:=-20726; 
S[18, 7]:= 24325; 

S[19, 0]:=     0; 
S[19, 1]:=     0; 
S[19, 2]:=-21846; 
S[19, 3]:= 21845; 
S[19, 4]:=-21846; 
S[19, 5]:= 21845; 
S[19, 6]:=    -1; 
S[19, 7]:=    -1; 

S[20, 0]:=   768; 
S[20, 1]:=  3840; 
S[20, 2]:=-20566; 
S[20, 3]:= 24405; 
S[20, 4]:=-20566; 
S[20, 5]:= 24405; 
S[20, 6]:=-20534; 
S[20, 7]:= 24325; 

S[21, 0]:=-20726; 
S[21, 1]:= 24325; 
S[21, 2]:=-20566; 
S[21, 3]:= 24405; 
S[21, 4]:=-20566; 
S[21, 5]:= 24405; 
S[21, 6]:=    -1; 
S[21, 7]:=    -1; 

S[22, 0]:=-21494; 
S[22, 1]:= 20485; 
S[22, 2]:=-22006; 
S[22, 3]:= 21765; 
S[22, 4]:=-22006; 
S[22, 5]:= 21765; 
S[22, 6]:=  -193; 
S[22, 7]:=    -1; 

S[23, 0]:=-21494; 
S[23, 1]:= 20485; 
S[23, 2]:=-22006; 
S[23, 3]:= 21765; 
S[23, 4]:=-22006; 
S[23, 5]:= 21765; 
S[23, 6]:=-20726; 
S[23, 7]:= 24325; 

S[24, 0]:=-20726; 
S[24, 1]:= 24325; 
S[24, 2]:=-20566; 
S[24, 3]:= 24405; 
S[24, 4]:=-20566; 
S[24, 5]:= 24405; 
S[24, 6]:=-20534; 
S[24, 7]:= 24325; 

S[25, 0]:=-21846; 
S[25, 1]:=    -1; 
S[25, 2]:=  4080; 
S[25, 3]:= -3121; 
S[25, 4]:= -3121; 
S[25, 5]:= -3121; 
S[25, 6]:= -3121; 
S[25, 7]:=  4080; 

S[26, 0]:=-21846; 
S[26, 1]:=    -1; 
S[26, 2]:=  4080; 
S[26, 3]:= -3121; 
S[26, 4]:= -3121; 
S[26, 5]:= -3121; 
S[26, 6]:= -3121; 
S[26, 7]:=    -1; 

S[27, 0]:=-21846; 
S[27, 1]:=    -1; 
S[27, 2]:=  4080; 
S[27, 3]:= -3073; 
S[27, 4]:= -3073; 
S[27, 5]:= -3073; 
S[27, 6]:= -3073; 
S[27, 7]:=  4080; 

S[28, 0]:=-21846; 
S[28, 1]:=    -1; 
S[28, 2]:=  4080; 
S[28, 3]:=   -49; 
S[28, 4]:=   -49; 
S[28, 5]:=   -49; 
S[28, 6]:=   -49; 
S[28, 7]:=  4080; 

S[29, 0]:=-21846; 
S[29, 1]:=    -1; 
S[29, 2]:=    -1; 
S[29, 3]:= -3121; 
S[29, 4]:= -3121; 
S[29, 5]:= -3121; 
S[29, 6]:= -3121; 
S[29, 7]:=  4080; 

S[30, 0]:=-21846; 
S[30, 1]:=    -1; 
S[30, 2]:=  4080; 
S[30, 3]:= -3073; 
S[30, 4]:= -3073; 
S[30, 5]:= -3073; 
S[30, 6]:= -3073; 
S[30, 7]:=    -1; 

S[31, 0]:=-21846; 
S[31, 1]:=    -1; 
S[31, 2]:= -3073; 
S[31, 3]:= -3073; 
S[31, 4]:= -3073; 
S[31, 5]:= -3073; 
S[31, 6]:= -3073; 
S[31, 7]:=    -1; 

S[32, 0]:= -3121; 
S[32, 1]:= -3121; 
S[32, 2]:= -3121; 
S[32, 3]:= -3121; 
S[32, 4]:=  4080; 
S[32, 5]:=    -1; 
S[32, 6]:=-21846; 
S[32, 7]:= 21845; 

S[33, 0]:= -3073; 
S[33, 1]:= -3073; 
S[33, 2]:= -3073; 
S[33, 3]:= -3073; 
S[33, 4]:=    -1; 
S[33, 5]:=    -1; 
S[33, 6]:=-21846; 
S[33, 7]:= 21845; 

S[34, 0]:=   -49; 
S[34, 1]:=   -49; 
S[34, 2]:=   -49; 
S[34, 3]:=   -49; 
S[34, 4]:=  4080; 
S[34, 5]:=    -1; 
S[34, 6]:=-21846; 
S[34, 7]:= 21845; 

S[35, 0]:= -3073; 
S[35, 1]:= -3073; 
S[35, 2]:= -3073; 
S[35, 3]:= -3073; 
S[35, 4]:=  4080; 
S[35, 5]:=    -1; 
S[35, 6]:=-21846; 
S[35, 7]:=    85; 

END;

PROCEDURE Setspr(x,y:integer;VAR S:SPRT;MODE:INTEGER);
  const
        viRam = 40000B;
  type
        pointer = ^ vektor;
        vektor = array[1..8000] of WORD;

  var
        d     origin viRam  : vektor;
        regdp origin 177400B,
        DpRam origin 157700B: integer;
        state,I,ADR:INTEGER;
        uk      : pointer;
BEGIN
   uk := @d;
   state := DPRAM;
   DPRAM:=200B OR DPRAM;
   RegDp :=DPRAM;
   FOR I:=0 TO 7 DO
    begin
     adr := 40*(y*8+I)+x+1;
     CASE MODE OF
      2:UK^[ADR]:=NOT UK^[ADR];
      1:uk^[adr]:=S[I] OR uk^[adr];
      0:uk^[adr]:=S[I]
     END
    END;
   DPRAM:=STATE;
   RegDp := DPRAM
end;

PROCEDURE PUTCUR(X,Y:INTEGER);
BEGIN
 SETSPR(XMIN+X-1,YMIN+Y-1,S[11],1)
END;

PROCEDURE RESCUR(X,Y:INTEGER);
VAR SC:INTEGER;
BEGIN
 IF (A[X,Y]>=0) AND (A[X,Y]<=9) THEN SC:=12
 ELSE
 IF (A[X,Y]>=10) AND (A[X,Y]<=18) THEN SC:=A[X,Y]-10
 ELSE
 IF (A[X,Y]>=19) AND (A[X,Y]<=28) THEN SC:=13;
 SETSPR(XMIN+X-1,YMIN+Y-1,S[SC],0)
END;

PROCEDURE SETPOLE(NEWP:BOOLEAN;PGP,NGP,KM:INTEGER);
PROCEDURE HORIZLINE(X1,X2,Y,MODE:INTEGER);		EXTERNAL;
PROCEDURE VERTICALLINE(X,Y1,Y2,MODE:INTEGER);		EXTERNAL;
PROCEDURE RANDOMIZE;
 VAR T:REAL;
BEGIN
 T:=TIME;
 SEED1:=TRUNC((T-TRUNC(T))*32767);
 SEED2:=32767 MOD SEED1
END;

BEGIN
 CLRSCR;
 RANDOMIZE;
 IF NEWP THEN
  BEGIN
   GOTOXY(36,12);
   WRITE('Wait...');
   FOR I:=1 TO PGP DO
    FOR J:=1 TO NGP DO
     A[I,J]:=0;
   FOR K:=1 TO KM DO
    BEGIN
     REPEAT
      XP:=TRUNC(RND*PGP)+1;
      YP:=TRUNC(RND*NGP)+1;
     UNTIL A[XP,YP]<>9;
     A[XP,YP]:=9;
     FOR I:=XP-1 TO XP+1 DO
      FOR J:=YP-1 TO YP+1 DO
       IF (A[I,J]<>9) THEN A[I,J]:=A[I,J]+1
    END;
   FOR I:=0 TO PGP+1 DO
    BEGIN
     A[I,0]:=-1;
     A[I,NGP+1]:=-1
    END;
   FOR J:=0 TO NGP+1 DO
    BEGIN
     A[0,J]:=-1;
     A[PGP+1,J]:=-1
    END;
{ Установка характеристик нового поля }
   KOK:=0;
   KPPM:=0;
   KNPM:=0;
   XMIN:=(40-PGP) DIV 2;
   YMIN:=4;
   XMAX:=XMIN+PGP-1;
   YMAX:=YMIN+NGP-1;
   X:=1;
   Y:=1;
{ Стирает запись "Wait..." }
   GOTOXY(36,12);
   WRITE('       ')
  END;
{ Рисует на экране поле }
  FOR J:=0 TO YMAX+1 DO
   FOR I:=XMIN-1 TO XMAX+1 DO
    BEGIN
     IF J=0 THEN
      BEGIN
       N:=19;
       IF I=XMIN-1 THEN N:=18;
       IF I=XMAX+1 THEN N:=20
      END
     ELSE
     IF J=YMIN-1 THEN
      BEGIN
       N:=19;
       IF I=XMIN-1 THEN N:=23;
       IF I=XMAX+1 THEN N:=24
      END
     ELSE
     IF J=YMAX+1 THEN
      BEGIN
       N:=19;
       IF I=XMIN-1 THEN N:=22;
       IF I=XMAX+1 THEN N:=21
      END
     ELSE
      BEGIN
       IF (J>=YMIN) AND (J<=YMAX) THEN 
        BEGIN
         K:=A[I-XMIN+1,J-YMIN+1];
         IF (K>=0) AND (K<=9) THEN N:=12
         ELSE
         IF (K>=10) AND (K<=18) THEN N:=K-10
         ELSE
         IF (K>=19) AND (K<=28) THEN N:=13
        END
       ELSE N:=16;
       IF I=XMIN-1 THEN N:=17;
       IF I=XMAX+1 THEN N:=17
      END;
      SETSPR(I,J,S[N],0)
    END;
  HORIZLINE((XMIN-1)*16-1,(XMAX+2)*16-1,0,1);
  VERTICALLINE((XMIN-1)*16-1,0,(YMAX+2)*8-1,1);
  VERTICALLINE((XMIN-1)*16,0,(YMAX+2)*8-1,1);
 PUTCUR(X,Y)
END;
PROCEDURE HELP(FILNAM:NAME);
 TYPE
  LINE=PACKED ARRAY[1..80] OF CHAR;
  TXT=PACKED ARRAY[1..46] OF LINE;
 VAR
  F:FILE OF CHAR;
  C:CHAR;
  K,N,I,J:INTEGER;
  T:TXT;
  B:BOOLEAN;
BEGIN
 CLRSCR;
 RESET(F,FILNAM,'HLP',N);
 IF N<=0 THEN
  BEGIN
   WRITELN('File not found ',FILNAM,'.HLP');
   PAUSE;
   KBMODE(1)
  END
 ELSE
  BEGIN
   GOTOXY(36,12);
   WRITE('Wait...');
   C:=F^;
   GET(F);
   SEED1:=ORD(C);  
   T[1,1]:=C;
   C:=F^;
   GET(F);
   SEED2:=ORD(C);
   T[1,2]:=C;
   I:=1;
   K:=3;
   FOR I:=1 TO 46 DO
    BEGIN
     FOR J:=K TO 80 DO
      BEGIN
       N:=TRUNC(RND*256);
       C:=CHR(ORD(F^)-N);
       T[I,J]:=C;
       GET(F)
      END;
     K:=1
    END;
   CLOSE(F);
   CLRSCR;
   FOR J:=1 TO 23 DO
    WRITE(T[J]);
   WRITELN;
   WRITE(' Нажмите ╦ и ╧ для просмотра помощи или любую другую клавишу для выхода в игру.');
   I:=1;
   REPEAT
    B:=TRUE;
    CASE INKEY OF
     27:CASE INKEY OF
        65:BEGIN
            B:=FALSE;
            IF I=2 THEN
             BEGIN
              I:=1;
              CLRSCR;
              FOR J:=1 TO 23 DO
               WRITE(T[J]);
              WRITELN;
              WRITE(' Нажмите ╦ и ╧ для просмотра помощи или любую другую клавишу для выхода в игру.')
             END
            END;
        66:BEGIN
            B:=FALSE;
            IF I=1 THEN
             BEGIN
              I:=2;
              CLRSCR;
              FOR J:=24 TO 46 DO
               WRITE(T[J]);
              WRITELN;
              WRITE(' Нажмите ╦ и ╧ для просмотра помощи или любую другую клавишу для выхода в игру.')
             END
            END
       END
    END
   UNTIL B
  END;
 SETPOLE(FALSE,PGP,NGP,KM)
END;

PROCEDURE NEWPOLE;
BEGIN
 SETPOLE(TRUE,PGP,NGP,KM)
END;

PROCEDURE BEGINNER;
BEGIN
 PGP:=8;
 NGP:=8;
 KM:=10;
 SETPOLE(TRUE,PGP,NGP,KM)
END;

PROCEDURE INTERMEDIATE;
BEGIN
 PGP:=16;
 NGP:=16;
 KM:=40;
 SETPOLE(TRUE,PGP,NGP,KM)
END;

PROCEDURE EXPERT;
BEGIN
 PGP:=30;
 NGP:=16;
 KM:=99;
 SETPOLE(TRUE,PGP,NGP,KM)
END;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            