CONST
   PI=3.1415926;
   MNS=60;
TYPE
 STRING=ARRAY[1..MNS] OF CHAR;
 NOO=(NEW,OLD);
 TREE=^UTREE;
 UTREE=RECORD
         LEFT,RIGHT:TREE;
         C:CHAR;
         R:REAL
       END;
 STACK=^RSTACK;
 RSTACK=RECORD
          P:STACK;
          R:REAL
        END;
VAR
 ERRC:INTEGER;
 S:STACK;
 TR:TREE;
 X,Y,T:REAL;
 STR:STRING;
 ERR,I:INTEGER;

{--------------------------- EXTERNAL PROCEDURES ----------------------------}

 PROCEDURE GOTOXY(X,Y:INTEGER);EXTERNAL;
 PROCEDURE CLRSCR;EXTERNAL;
 PROCEDURE KBMODE(MODE:INTEGER);EXTERNAL;
 FUNCTION INKEY:INTEGER;EXTERNAL;
 PROCEDURE INVON;  EXTERNAL;
 PROCEDURE INVOFF; EXTERNAL;
 PROCEDURE CURON;  EXTERNAL;
 PROCEDURE CUROFF; EXTERNAL;

{-------------------------- STACK PROCEDURES --------------------------------}

	PROCEDURE INITSTACK(VAR S:STACK);
	BEGIN
	 S:=NIL
	END;
	
	FUNCTION EMPS(VAR S:STACK):BOOLEAN;
	BEGIN
	 EMPS:=(S=NIL)
	END;
	
	PROCEDURE INSTACK(VAR S:STACK;X:REAL);
	VAR
	 SP:STACK;
	BEGIN
         NEW(SP);
	 SP^.P:=S;
	 SP^.R:=X;
	 S:=SP
	END;
	
	PROCEDURE FROMSTACK(VAR S:STACK;VAR X:REAL);
	VAR SP:STACK;
	BEGIN
	 SP:=S;
	 X:=S^.R;
	 S:=S^.P;
	 DISPOSE(SP)
	END;

{---------------------------- STRING PROCEDURES -----------------------------}

PROCEDURE INITSTR(VAR S:STRING);
VAR I:INTEGER;
BEGIN
 FOR I:=1 TO MNS DO
  S[I]:=' '
END;

FUNCTION SIZESTR(S:STRING):INTEGER;
VAR I:INTEGER;
    B:BOOLEAN;
BEGIN
 I:=MNS;
 WHILE I>0 DO 
  IF S[I]=' ' THEN I:=I-1 ELSE EXIT;
 SIZESTR:=I
END;

FUNCTION EOSTR(S:STRING;POS:INTEGER):BOOLEAN;
BEGIN
 EOSTR:=(POS>SIZESTR(S))
END;

{-------------------------- ARITHMETICS FUNCTIONS ---------------------------}

FUNCTION ERRCOUNT:INTEGER;
BEGIN
 ERRCOUNT:=ERRC;
 ERRC:=0
END;

FUNCTION INT(X:REAL):BOOLEAN;
BEGIN
 INT:=(TRUNC(X)=X)
END;

FUNCTION DIV2(X:REAL):BOOLEAN;
BEGIN
 DIV2:=(TRUNC(X) MOD 2 = 0)
END;

FUNCTION SGN(X:REAL):INTEGER;
BEGIN
 IF X=0 THEN SGN:=0 ELSE IF X<0 THEN SGN:=-1 ELSE SGN:=1
END;

FUNCTION LNE(X:REAL):REAL;
BEGIN
 LNE:=0;
 IF X<0 THEN ERRC:=2 ELSE IF X=0 THEN ERRC:=3 ELSE LNE:=LN(X)
END;

FUNCTION LOGE(X:REAL):REAL;
BEGIN
 LOGE:=0;
 IF X<0 THEN ERRC:=2 ELSE IF X=0 THEN ERRC:=3 ELSE LOGE:=LN(X)
END;

FUNCTION SQRE(X:REAL):REAL;
BEGIN
 SQRE:=0;
 IF X<0 THEN ERRC:=4 ELSE SQRE:=SQRT(X)
END;

FUNCTION DIVE(X,Y:REAL):REAL;
BEGIN
 DIVE:=0;
 IF Y=0 THEN ERRC:=1 ELSE DIVE:=X/Y
END;

FUNCTION ST(X,Y:REAL):REAL;
BEGIN
 ST:=0;
 IF X=0 THEN IF Y<=0 THEN ERRC:=1 ELSE ST:=0
 ELSE
  IF NOT INT(Y) THEN ST:=EXP(Y*LNE(X))
  ELSE
   IF Y=0 THEN ST:=1
   ELSE
    IF DIV2(Y) THEN ST:=EXP(Y*LN(ABS(X)))
    ELSE
     ST:=SGN(X)*EXP(Y*LN(ABS(X)))
END;

{----------------------------------------------------------------------------}

FUNCTION STRVERIF(S:STRING;VAR POS:INTEGER):INTEGER;
VAR
   ERRMSG,CS:INTEGER;
BEGIN
 ERRMSG:=0;
 CS:=0;
 IF (S[POS]='+') OR (S[POS]='-') THEN POS:=POS+1;
 WHILE NOT EOSTR(S,POS) AND (ERRMSG=0) DO
  BEGIN
   CASE S[POS] OF
    'x','y','t','p':CS:=CS+1;
    '.':ERRMSG:=7;
    '0','1','2','3','4','5','6','7','8','9':
      IF CS=0 THEN
       BEGIN
        CS:=CS+1;
        WHILE S[POS] IN ['0'..'9'] DO POS:=POS+1;
        IF EOSTR(S,POS) THEN POS:=POS-1
         ELSE
          IF S[POS]='.' THEN
           BEGIN
            POS:=POS+1;
            IF NOT (S[POS] IN ['0'..'9']) THEN ERRMSG:=8
            ELSE
            WHILE S[POS] IN ['0'..'9'] DO POS:=POS+1;POS:=POS-1
           END
          ELSE POS:=POS-1;
       END
      ELSE ERRMSG:=2;

    '+','-','*','/','^':CS:=CS-1;
    's':BEGIN
         IF (S[POS+1]='i') AND (S[POS+2]='n') OR
            (S[POS+1]='q') AND (S[POS+2]='r') THEN
          IF S[POS+3]='(' THEN POS:=POS+2
          ELSE
           BEGIN
            POS:=POS+3;
            ERRMSG:=4
           END
            ELSE ERRMSG:=6
        END;
    'c':BEGIN
         IF (S[POS+1]='o') AND (S[POS+2]='s') THEN
          IF S[POS+3]='(' THEN POS:=POS+2
          ELSE
           BEGIN
            POS:=POS+3;
            ERRMSG:=4
           END
            ELSE ERRMSG:=6
        END;
    'a':BEGIN
         IF (S[POS+1]='b') AND (S[POS+2]='s') OR
            (S[POS+1]='t') AND (S[POS+2]='n') THEN
          IF S[POS+3]='(' THEN POS:=POS+2
          ELSE
           BEGIN
            POS:=POS+3;
            ERRMSG:=4
           END
            ELSE ERRMSG:=6
        END;
    'e':BEGIN
         IF S[POS+1]<>'x' THEN CS:=CS+1 
         ELSE 
          IF S[POS+2]='p' THEN
          IF S[POS+3]='(' THEN POS:=POS+2
          ELSE
           BEGIN
            POS:=POS+3;
            ERRMSG:=4
           END
            ELSE ERRMSG:=6
        END;
    'l':BEGIN
         IF S[POS+1]='n' THEN
          IF S[POS+2]='(' THEN POS:=POS+1
          ELSE
           BEGIN
            POS:=POS+2;
            ERRMSG:=4
           END
         ELSE
          IF (S[POS+1]='o') AND (S[POS+2]='g') THEN
           IF S[POS+3]='(' THEN POS:=POS+2
           ELSE
            BEGIN
             POS:=POS+3;
             ERRMSG:=4
            END
             ELSE ERRMSG:=6
        END;
    '(':BEGIN
          CS:=CS+1;
          IF CS=1 THEN
           BEGIN
            POS:=POS+1;
            ERRMSG:=STRVERIF(S,POS);
            IF ERRMSG=0 THEN ERRMSG:=3;
            IF ERRMSG=5 THEN ERRMSG:=0
           END;
        END;
    ')':ERRMSG:=5;
    ELSE ERRMSG:=6
   END;
   IF CS=2 THEN ERRMSG:=2;
   IF CS=-1 THEN ERRMSG:=1;
   IF NOT EOSTR(S,POS) AND (ERRMSG=0) THEN POS:=POS+1
  END;
  IF (CS=0) AND ((ERRMSG=0) OR (ERRMSG=5)) THEN ERRMSG:=1;
 STRVERIF:=ERRMSG
END;

PROCEDURE EDITSTR(VAR S:STRING;CONF:INTEGER;NEWOLD:NOO);
VAR
 MINK,MAXK,CURK:INTEGER;
 I:INTEGER;
 B,INS:BOOLEAN;

 FUNCTION ENTER:BOOLEAN;
  VAR ERR,POSP:INTEGER;
 BEGIN
  POSP:=1;
  ERR:=STRVERIF(S,POSP);
  IF ERR=0 THEN ENTER:=TRUE
  ELSE
   BEGIN
    GOTOXY(0,0);
    CUROFF;
    INVON;
    CASE ERR OF
     1:WRITELN('Error #1 : Missing operand                      ');
     2:WRITELN('Error #2 : Missing operation                    ');
     3:WRITELN('Error #3 : Missing '')''                          ');
     4:WRITELN('Error #4 : Missing ''(''                          ');
     5:WRITELN('Error #5 :  '')'' without ''(''                     ');
     6:WRITELN('Error #6 : Improper symbol                      ');
     7:WRITELN('Error #7 : Missing integer part of the quantity ');
     8:WRITELN('Error #8 : Missing fraction part of the quantity');
    END;
    INVOFF;
    CURON;
    CURK:=POSP-1+MINK;
    GOTOXY(CURK,2);
    ENTER:=FALSE
   END
 END;

 PROCEDURE INSERT(C:CHAR;VAR CURK:INTEGER);
  VAR I:INTEGER;
 BEGIN
  IF CURK=MAXK THEN
   BEGIN
    IF MAXK-MINK+1<=MNS THEN
     BEGIN
      WRITE(C);
      S[CURK-MINK+1]:=C;
      CURK:=CURK+1;
      MAXK:=MAXK+1
     END
    END
  ELSE
  IF INS THEN
   BEGIN
    IF MAXK-MINK+1<=MNS THEN
     BEGIN
      CUROFF;
      FOR I:=MAXK-1 DOWNTO CURK DO
       BEGIN
        S[I-MINK+2]:=S[I-MINK+1];
        GOTOXY(I+1,2);
        WRITE(S[I-MINK+1])
       END;
      S[CURK-MINK+1]:=C;
      GOTOXY(CURK,2);
      WRITE(C);
      CURK:=CURK+1;
      MAXK:=MAXK+1;
      CURON;
     END
   END
  ELSE
   BEGIN
    WRITE(C);
    S[CURK-MINK+1]:=C;
    CURK:=CURK+1
   END
 END;

 PROCEDURE BACKSPACE(VAR CURK:INTEGER);
 VAR I:INTEGER;
 BEGIN
  IF CURK>MINK THEN
  BEGIN
   CUROFF;
   FOR I:=CURK TO MAXK-1 DO
    BEGIN
     S[I-MINK]:=S[I-MINK+1];
     GOTOXY(I-1,2);
     WRITE(S[I-MINK])
    END;
   S[MAXK-MINK]:=' ';
   GOTOXY(MAXK-1,2);
   WRITE(' ');
   CURON;
   MAXK:=MAXK-1;
   CURK:=CURK-1;
   GOTOXY(CURK,2)
  END
END;

BEGIN
 CLRSCR;
 KBMODE(1);
 IF NEWOLD=NEW THEN INITSTR(S);
 GOTOXY(0,2);
 INS:=TRUE;
 MINK:=5;
 CASE CONF OF
  1:WRITE('f(x)=');
  2:BEGIN
     WRITE('f(x,y)=');
     MINK:=7
    END;
  3:WRITE('f(t)=');
 END;
 CURK:=MINK;
 WHILE NOT EOSTR(S,CURK-MINK+1) DO
  BEGIN
   WRITE(S[CURK-MINK+1]);
   CURK:=CURK+1
  END;
 MAXK:=CURK;
 GOTOXY(CURK,2);
 B:=FALSE;
 WHILE NOT B DO
  BEGIN
   I:=INKEY;
   CASE I OF
    127: BACKSPACE(CURK);
     13: B:=ENTER;
   -101: CASE INKEY OF
          50:CASE INKEY OF
              126:INS:=NOT INS
             END
         END;
    27:CASE INKEY OF
        67:IF CURK<MAXK THEN BEGIN CURK:=CURK+1; GOTOXY(CURK,2) END;
        68:IF CURK>MINK THEN BEGIN CURK:=CURK-1; GOTOXY(CURK,2) END
       END;
    ELSE
     IF (I>=40) AND (I<=43) OR
        (I>=45) AND (I<=57) OR
        (I=94)  OR
        (I>=97) AND (I<=122)
      THEN INSERT(CHR(I),CURK) ELSE
      IF (I>=65) AND (I<=90) THEN INSERT(CHR(I+32),CURK)     
   END
 END;
  KBMODE(0);
END;

{----------------------------------------------------------------------------}

PROCEDURE TREE2REAL(VAR TR:TREE;VAR S:STACK;VAR X,Y,T:REAL;VAR ERR:BOOLEAN);
VAR K,L:REAL; 
BEGIN
 ERR:=FALSE;
 IF TR^.LEFT<>NIL THEN TREE2REAL(TR^.LEFT,S,X,Y,T,ERR);
 IF (TR^.RIGHT<>NIL) AND (NOT ERR) THEN TREE2REAL(TR^.RIGHT,S,X,Y,T,ERR);
 IF NOT ERR THEN
  CASE TR^.C OF
   'X':INSTACK(S,X);
   'Y':INSTACK(S,Y);
   'T':INSTACK(S,T);
   'P':INSTACK(S,PI);
   'S','C','N','L','E','A','Q':
     BEGIN
      FROMSTACK(S,K);
      CASE TR^.C OF
       'S':K:=SIN(K);
       'C':K:=COS(K);
       'N':K:=LNE(K);
       'L':K:=LOGE(K);
       'E':K:=EXP(K);
       'A':K:=ABS(K);
       'Q':K:=SQRE(K)
      END;
      IF ERRCOUNT<>0 THEN ERR:=TRUE ELSE INSTACK(S,K)
     END;
   '+','-','*','/','^':
     BEGIN
      FROMSTACK(S,K);
      FROMSTACK(S,L);
      CASE TR^.C OF
       '+':K:=L+K;
       '-':K:=L-K;
       '*':K:=L*K;
       '/':K:=DIVE(L,K);
       '^':K:=ST(L,K)
      END;
      IF ERRCOUNT<>0 THEN ERR:=TRUE ELSE INSTACK(S,K)
     END;
   ELSE INSTACK(S,TR^.R)
  END
END;

{------------------------------ MAIN PROGRAM --------------------------------}

BEGIN
 EDITSTR(STR,1,NEW);
 WRITELN;
 WRITELN('f(x)=',STR)
END.
                                                                                                                           