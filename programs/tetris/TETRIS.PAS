PROGRAM TETRIS;
(* Tetris for RT-11 - the program of TETRIS.SAV of the FOBOS games disk
   (pdp-11.org.ru/~form/rtgames), its source reconstructed 2026-10-19.
   Compiled by Pascal SM-4 (PASCAL.SAV + PASCAL.OBJ V1.2G, RAFOS), it
   gives the program's own code 001000..017272 byte for byte; only the
   run-time library's addresses differ, the original having been linked
   with another version of it.  The names are the reconstruction's; the
   words are KOI-7 as in the original (the small Latin letters are
   Russian capitals on a KOI-7 terminal).  Keys: 7 left, 9 right,
   8 turn, space or 5 drop, 4 faster, 1 show the next figure, 0 erase
   the help. *)
LABEL 1;
(*$T-,A-*)

TYPE
  NAME = PACKED ARRAY [1..16] OF CHAR;
  REC = RECORD N: NAME; LV: INTEGER; SC: 0..65535 END;
  FIG = RECORD X, Y: ARRAY [1..4] OF INTEGER END;
  CREC = RECORD EY, POS, CELL: INTEGER END;
  LINE = PACKED ARRAY [1..30] OF CHAR;
VAR
  CYCLE: ARRAY [1..19] OF INTEGER;
  FIGS: ARRAY [1..19] OF FIG;
  CUR: ^FIG;
  GL: ARRAY [0..11, 0..21] OF BOOLEAN;
  OLDP, NEWP: ^LINE;
  OLDC, NEWC: ARRAY [1..5] OF CREC;
  PAUSE, FN, NXT: INTEGER;
  SHOWN: BOOLEAN;
  FX, FY: INTEGER;
  STOP: BOOLEAN;
  TICK: INTEGER;
  ROWS: ARRAY [0..20] OF INTEGER;
  LV: INTEGER;
  SC: 0..65535;
  ESC, TB: CHAR;
  SPARE1: INTEGER;
  ANS: CHAR;
  SPARE2, LINES: INTEGER;
  SPEED: ARRAY [0..9] OF INTEGER;
  CI: INTEGER;
  T: ARRAY [1..20] OF REC;

PROCEDURE INKEY(VAR C: CHAR);
BEGIN
(*$C
	MOV	R1,SAVR1
	CLR	R1
1$:	INC	R1
	EMT	^O340
	BCS	1$
	MOVB	R0,@C(SP)
	MOV	R1,CNT
2$:	EMT	^O340
	BCC	2$
	MOV	SAVR1,R1
	BR	.+6
CNT:	.WORD	0
SAVR1:	.WORD	0
*)
END;

FUNCTION RND(N: INTEGER): INTEGER;
VAR X: REAL; K: 0..65535;
BEGIN
(*$C
	MOV	CNT,K(SP)
*)
  K := (K * 13077 + 6925) MOD 32768;
  X := K / 32768.0;
  RND := TRUNC(X * N);
(*$C
	MOV	K(SP),CNT
*)
END;

PROCEDURE GOTOXY(X, Y: INTEGER);
BEGIN
  WRITE(CHR(27)); WRITE('Y'); WRITE(CHR(Y + 32)); WRITE(CHR(X + 32))
END;

PROCEDURE CLS;
BEGIN
  WRITE(CHR(27)); WRITE('H'); WRITE(CHR(27)); WRITE('J')
END;

PROCEDURE HISCORE(LV, SC: INTEGER);
VAR I, J: INTEGER; R: REC; F: BOOLEAN;
BEGIN
  GOTOXY(0, 15);
  WRITE(CHR(14));
  WRITE('wa{e imq?');
(*$C
1$:	EMT	^O340
	BCC	1$
*)
  READLN(R.N);
  R.SC := SC; R.LV := LV;
  CLS;
  I := 1; F := TRUE;
  WRITE('
');
  WRITE(TB, TB);
  WRITE('imq        urowenx  s~et');
  WRITELN;
  WHILE (T[I].SC > R.SC) AND (I < 20) AND (T[I].N[1] <> ' ') DO
  BEGIN
    WITH T[I] DO
    BEGIN
      WRITE(TB, TB); WRITE(N); WRITE(' '); WRITE(LV:1); WRITE(' '); WRITE(SC:5);
      WRITELN
    END;
    I := I + 1
  END;
  IF R.N[1] <> ' ' THEN
  BEGIN
    WITH R DO
    BEGIN
      WRITE(TB, TB); WRITE(N); WRITE(' '); WRITE(LV:1); WRITE(' '); WRITE(SC:5);
      WRITE(' **'); WRITELN
    END;
    FOR J := 19 DOWNTO I DO T[J + 1] := T[J];
    T[I] := R;
    I := I + 1
  END;
  WHILE I < 20 DO
  BEGIN
    WITH T[I] DO
      IF N[1] <> ' ' THEN
      BEGIN
        WRITE(TB, TB); WRITE(N); WRITE(' '); WRITE(LV:1); WRITE(' '); WRITE(SC:5);
        WRITELN
      END;
    I := I + 1
  END;
  WRITE(CHR(15))
END;

PROCEDURE DELAY(VAR A, B: INTEGER);
VAR I, J: INTEGER;
BEGIN
(*$C
	MOV	#^O177564,R1
1$:	BIT	#^O100,(R1)
	BNE	1$
	MOV	@B(SP),R3
2$:	MOV	@A(SP),R0
3$:	TST	(R1)
	BPL	4$
4$:	SOB	R0,3$
	SOB	R3,2$
*)
END;

PROCEDURE INIT;
VAR I, J: INTEGER; G: FIG; P1, P2: ^LINE;

PROCEDURE ROT(F: FIG);
VAR I: INTEGER;
BEGIN
  WITH F DO
  BEGIN
    G.X := Y;
    FOR I := 1 TO 4 DO G.Y[I] := -X[I]
  END
END;

BEGIN
  WITH FIGS[1] DO
    FOR I := 1 TO 4 DO
    BEGIN
      Y[I] := I DIV 3;
      X[I] := -(I MOD 2)
    END;
  FOR J := 1 TO 4 DO
    WITH FIGS[J + 3] DO
    BEGIN
      FOR I := 1 TO 3 DO
      BEGIN
        Y[I] := 0;
        X[I] := I - 2
      END;
      Y[4] := 1;
      X[4] := J - 3
    END;
  FIGS[4].Y[4] := 0;
  FIGS[2] := FIGS[6];
  FIGS[2].Y[1] := 1;
  FIGS[3] := FIGS[6];
  FIGS[3].Y[3] := 1;
  CYCLE[1] := 1;
  FOR I := 2 TO 4 DO
  BEGIN
    ROT(FIGS[I]);
    FIGS[I + 6] := G;
    CYCLE[I] := I + 6;
    CYCLE[I + 6] := I
  END;
  FOR I := 1 TO 3 DO
  BEGIN
    G := FIGS[I + 4];
    CYCLE[I + 4] := I * 3 + 8;
    FOR J := 1 TO 3 DO
    BEGIN
      ROT(G);
      FIGS[I * 3 + 7 + J] := G;
      CYCLE[I * 3 + 7 + J] := I * 3 + 8 + J
    END;
    CYCLE[I * 3 + 10] := I + 4
  END;
  FOR I := 0 TO 9 DO SPEED[I] := I * 10 + 5;
  FOR I := 1 TO 4 DO
  BEGIN
    OLDC[I].EY := ORD(ESC) + 22784;
    NEWC[I].EY := ORD(ESC) + 22784;
    OLDC[I].CELL := 11808;
    NEWC[I].CELL := 23899
  END;
  OLDC[5].EY := ORD(ESC) + 22784;
  NEWC[5].EY := ORD(ESC) + 22784;
  OLDC[5].POS := 8224;
  NEWC[5].POS := 8224;
  OLDC[5].CELL := 3341;
  NEWC[5].CELL := 3341;
(*$C
	MOV	R5,R0
	ADD	#OLDC,R0
	MOV	R0,P1(SP)
	MOV	R5,R0
	ADD	#NEWC,R0
	MOV	R0,P2(SP)
*)
  OLDP := P1;
  NEWP := P2;
  FOR I := 1 TO 20 DO T[I].N[1] := ' '
END;

PROCEDURE CLRNEXT;
VAR I: INTEGER;
BEGIN
  WRITE(ESC, 'Y', '+', '0', '        ');
  WRITE(ESC, 'Y', ',', '0', '        ')
END;

PROCEDURE SHOWNEXT;
VAR I: INTEGER;
BEGIN
  CLRNEXT;
  WITH FIGS[NXT] DO
    FOR I := 1 TO 4 DO
      WRITE(ESC, 'Y', CHR(Y[I] + 43), CHR(X[I] * 2 + 52), '[]');
  SC := SC - 5
END;

PROCEDURE NEWGAME;
VAR I, J: INTEGER;
BEGIN
  FOR I := 1 TO 10 DO
    FOR J := 1 TO 20 DO GL[I, J] := FALSE;
  FOR I := 1 TO 10 DO
  BEGIN
    GL[I, 0] := TRUE;
    GL[I, 21] := TRUE
  END;
  FOR J := 0 TO 21 DO
  BEGIN
    GL[0, J] := TRUE;
    GL[11, J] := TRUE
  END;
  FOR J := 0 TO 20 DO ROWS[J] := 0;
  SC := 0;
  NXT := RND(7) + 1;
  SHOWN := FALSE;
  LINES := 0
END;

PROCEDURE DRAWROWS(A, B: INTEGER);
VAR X, Y: INTEGER;
BEGIN
  FOR Y := A TO B DO
  BEGIN
    GOTOXY(27, Y);
    FOR X := 1 TO 10 DO
      IF GL[X, Y] THEN WRITE('[]') ELSE WRITE(' .')
  END
END;

FUNCTION FITS(X0, Y0: INTEGER): BOOLEAN;
VAR I: INTEGER;
BEGIN
  FITS := TRUE;
  WITH CUR^ DO
    FOR I := 1 TO 4 DO
      IF GL[X0 + X[I], Y0 + Y[I]] THEN
      BEGIN
        FITS := FALSE;
        EXIT
      END
END;

FUNCTION NEWFIG: BOOLEAN;
VAR I: INTEGER;
BEGIN
  FN := NXT;
  NXT := RND(7) + 1;
(*$C
	MOV	FN(R5),R0
	ASL	R0
	ASL	R0
	ASL	R0
	ASL	R0
	ADD	R5,R0
	ADD	#FIGS-16,R0
	MOV	R0,CUR(R5)
*)
  FX := 6;
  FY := 1;
  NEWFIG := FITS(FX, FY);
  WITH CUR^ DO
    FOR CI := 1 TO 4 DO
    BEGIN
      NEWC[CI].POS := FY + 32 + Y[CI] + ((FX + X[CI]) * 2 + 57) * 256;
      OLDC[CI].POS := NEWC[CI].POS
    END;
  WRITE(NEWP^);
  IF SHOWN THEN SHOWNEXT
END;

PROCEDURE DOWN;
BEGIN
  WRITE(OLDP^);
  IF FITS(FX, FY + 1) THEN
  BEGIN
    FOR CI := 1 TO 4 DO
    BEGIN
      NEWC[CI].POS := NEWC[CI].POS + 1;
      OLDC[CI].POS := NEWC[CI].POS
    END;
    FY := FY + 1
  END
  ELSE STOP := TRUE;
  WRITE(NEWP^);
  SC := SC - 1
END;

PROCEDURE LEFT;
BEGIN
  WRITE(OLDP^);
  IF FITS(FX - 1, FY) THEN
  BEGIN
    FOR CI := 1 TO 4 DO
    BEGIN
      NEWC[CI].POS := NEWC[CI].POS - 512;
      OLDC[CI].POS := NEWC[CI].POS
    END;
    FX := FX - 1;
    STOP := FALSE
  END;
  WRITE(NEWP^)
END;

PROCEDURE RIGHT;
BEGIN
  WRITE(OLDP^);
  IF FITS(FX + 1, FY) THEN
  BEGIN
    FOR CI := 1 TO 4 DO
    BEGIN
      NEWC[CI].POS := NEWC[CI].POS + 512;
      OLDC[CI].POS := NEWC[CI].POS
    END;
    FX := FX + 1;
    STOP := FALSE
  END;
  WRITE(NEWP^)
END;

PROCEDURE TURN;
VAR P: ^FIG;
BEGIN
  P := CUR;
(*$C
	MOV	FN(R5),R0
	ASL	R0
	ADD	R5,R0
	MOV	CYCLE-2(R0),R0
	ASL	R0
	ASL	R0
	ASL	R0
	ASL	R0
	ADD	R5,R0
	ADD	#FIGS-16,R0
	MOV	R0,CUR(R5)
*)
  WRITE(OLDP^);
  IF FITS(FX, FY) THEN
  BEGIN
    WITH CUR^ DO
      FOR CI := 1 TO 4 DO
        NEWC[CI].POS := FY + 32 + Y[CI] + ((FX + X[CI]) * 2 + 57) * 256;
    FN := CYCLE[FN];
    FOR CI := 1 TO 4 DO OLDC[CI].POS := NEWC[CI].POS;
    STOP := FALSE
  END
  ELSE CUR := P;
  WRITE(NEWP^)
END;

PROCEDURE DROP;
VAR K: INTEGER;
BEGIN
  K := FY;
  WHILE FITS(FX, FY + 1) DO FY := FY + 1;
  FOR CI := 1 TO 4 DO
  BEGIN
    OLDC[CI].POS := NEWC[CI].POS;
    NEWC[CI].POS := NEWC[CI].POS + (FY - K)
  END;
  WRITE(OLDP^);
  WRITE(NEWP^);
  STOP := TRUE
END;

PROCEDURE NOHELP;
VAR I: INTEGER;
BEGIN
  FOR I := 0 TO 6 DO
  BEGIN
    GOTOXY(52, I + 2);
    WRITE(ESC, 'K')
  END
END;

PROCEDURE FASTER;
BEGIN
  LV := LV + 1;
  PAUSE := PAUSE - 30
END;

PROCEDURE KEYS;
VAR C: CHAR;
BEGIN
  C := CHR(0);
(*$C
	EMT	^O340
	BCS	1$
	MOVB	R0,C(SP)
1$:	EMT	^O340
	BCC	1$
*)
  CASE C OF
    ' ', '5': DROP;
    '7': LEFT;
    '8': TURN;
    '9': RIGHT;
    '1': BEGIN
           SHOWN := NOT SHOWN;
           IF SHOWN THEN SHOWNEXT ELSE CLRNEXT
         END;
    '4': IF LV < 9 THEN FASTER;
    '2', '3': ;
    '0': NOHELP
  END
END;

PROCEDURE TITLE;
BEGIN
  CLS;
  GOTOXY(35, 6);
  WRITE('[ ]');
  GOTOXY(35, 7);
  WRITE(CHR(14));
  WRITE('t e t r i s');
  WRITE(CHR(15));
  GOTOXY(43, 8);
  WRITE('[ ]');
  GOTOXY(20, 20);
  WRITE(CHR(14));
  WRITE('wa{ urowenx? (0-9) - ');
  WRITE(CHR(15));
  INKEY(ANS);
  LV := ORD(ANS) - ORD('0');
  IF LV < 0 THEN LV := 0;
  IF LV > 9 THEN LV := 9;
  PAUSE := LV * (-30) + 275
END;

PROCEDURE LAND;
VAR I: INTEGER;
BEGIN
  WITH CUR^ DO
    FOR I := 1 TO 4 DO
    BEGIN
      GL[FX + X[I], FY + Y[I]] := TRUE;
      ROWS[FY + Y[I]] := ROWS[FY + Y[I]] + 1
    END;
  SC := SC + 25 + LV * 3
END;

PROCEDURE CHECKROWS;
LABEL 2;
VAR I, J, K, M, N, X: INTEGER;
BEGIN
  N := 0;
  FOR I := 20 DOWNTO 1 DO
    IF ROWS[I] = 10 THEN
    BEGIN
      N := I;
      EXIT
    END;
  IF N = 0 THEN GOTO 2;
  K := N;
  J := N;
  WHILE (ROWS[J] <> 0) AND (J > 0) DO
  BEGIN
    IF ROWS[J] <> 10 THEN
    BEGIN
      FOR X := 1 TO 10 DO GL[X, N] := GL[X, J];
      ROWS[N] := ROWS[J];
      N := N - 1
    END
    ELSE
    BEGIN
      GOTOXY(27, J);
      FOR I := 1 TO 10 DO WRITE(' .');
      LINES := LINES + 1;
      IF (LINES > SPEED[LV]) AND (LV < 9) THEN
      BEGIN
        WRITE(CHR(7));
        FASTER
      END
    END;
    J := J - 1
  END;
  FOR M := J + 1 TO N DO
  BEGIN
    FOR X := 1 TO 10 DO GL[X, M] := FALSE;
    ROWS[M] := 0
  END;
  DRAWROWS(J, K);
2:
END;

PROCEDURE STATUS;
VAR I: INTEGER;
BEGIN
  GOTOXY(0, 0);
  WRITE(CHR(14));
  WRITE('
polnyh strok:');
  WRITE(LINES:3);
  WRITE('
urowenx:     ');
  WRITE(LV:3);
  WRITE('
  s~et:  ');
  WRITE(SC MOD 1000:3);
  WRITE(CHR(15));
  WRITELN;
  FOR I := 1 TO SC DIV 1000 DO
  BEGIN
    WRITE(' $');
    IF I MOD 5 = 0 THEN WRITELN
  END
END;

PROCEDURE GLASS;
VAR I: INTEGER;
BEGIN
  FOR I := 1 TO 20 DO
  BEGIN
    GOTOXY(25, I);
    WRITE('<! . . . . . . . . . .!>')
  END;
  GOTOXY(25, 21);
  WRITE('<!====================!>');
  GOTOXY(25, 22);
  WRITE('  \/\/\/\/\/\/\/\/\/\/');
  GOTOXY(52, 2);
  WRITE(CHR(14));
  WRITE('7: nalewo   9: naprawo');
  GOTOXY(52, 3);
  WRITE('     8:poworot ');
  GOTOXY(52, 4);
  WRITE('4:uskoritx  5:sbrositx');
  GOTOXY(52, 5);
  WRITE('1: pokazatx  sledu`}u`');
  GOTOXY(52, 6);
  WRITE('0:  steretx |tot tekst');
  GOTOXY(52, 7);
  WRITE('  probel - sbrositx');
  WRITE(CHR(15))
END;

BEGIN
  ESC := CHR(27);
  TB := CHR(9);
  WRITE(CHR(23));
  WRITE(CHR(15));
  INIT;
  TICK := 48;
1:
  TITLE;
  NEWGAME;
  CLS;
  GLASS;
  STATUS;
(*$C
	BIS	#^O10100,@#^O44
*)
  WHILE NEWFIG DO
  BEGIN
    STOP := FALSE;
    REPEAT
      DELAY(TICK, PAUSE);
      KEYS;
      DOWN;
      KEYS
    UNTIL STOP;
    LAND;
    CHECKROWS;
    STATUS
  END;
  WRITE(CHR(7));
(*$C
1$:	EMT	^O340
	BCC	1$
*)
  HISCORE(LV, SC);
  GOTOXY(12, 23);
  WRITE(CHR(14));
  WRITE('e}e parti`? (da/net) - ');
  READ(ANS);
  READLN;
  WRITE(CHR(15));
  IF (ANS = 'd') OR (ANS = 'D') THEN GOTO 1
END.
