const
        Esc = 33B;
        xx=39;
        yy=23;
type
        presence = array [1..yy,1..xx] of boolean;
        Snake = array[1..64] of integer;
var
        Sam : presence;
        x,y,            {координаты головы змея}
        xc,yc,          {координаты буквы      }
        len: integer;   {текущая длина змея    }
        glas,ex,exx,stena,sovp:boolean;
        Seed : integer; {для ген.сл.чисел      }
        StepX,StepY: integer;
        Letter  :integer;
        key:integer;    {Код клавиши           }
        SnakeX,SnakeY: Snake; {координаты Змея  }
        Level : integer;{уровень сложности }
        i,d:integer;
        f:file of integer;
        sum:integer;
procedure SetColor(c:integer); external;
procedure SetFon(c:integer); external;
procedure SetBorder(c:integer); external;
procedure InitGraph(m:integer); external;
procedure clrscr; external;
procedure kbmode(m:integer); external;
procedure curOff; external;
procedure gotoxy(x,y:integer); external;
function inkey:integer; external;
procedure lineto(x,p,r:integer); external;
procedure moveto(x,p:integer); external;


procedure o;
begin
   writeln;
   writeln;
   Writeln(' Игра "ПИТОН" может быть плезна');
   WriteLN(' учащимся младших  классов  при');
   WriteLN(' изучении   темы : " Гласные  и');
   WriteLN(' согласные " .');
   WriteLN;
   WriteLN('   п р а в и л а    и г р ы ');
   WriteLN;
   Writeln(' Управляйте питоном при  помощи');
   WriteLn(' клавиш   управления   курсором');
   writeln(' Питону разрешается есть  буквы');
   writeln('  ГЛАСНЫЕ   - по вертикали ');
   writeln('  СОГЛАСНЫЕ - по горизонтали');
   WriteLn(' Нельзя кусать себя и  ударятся');
   WriteLn(' головой о стенку. Успехов вам!');
   WriteLN;
   WriteLn(' Игру сделал Домнич Александр ');
   WriteLn(' по заказу И.В.Ф. "МИКРОТЕХ". ');
   WriteLn('       Воронеж 1994.');
end;

function Rnd(Var Seed:integer): real;
 var a,b,c,d :integer;
begin
   rnd := seed/32767;
   a := seed div 256;
   b := seed mod 256;
   c := ((b * 93) mod 256) + 13;
   d := (b + 26) + ((b * 93) div 256) + (a * 93) + (c div 256) + 27;
   Seed := ((d mod 128) * 256) + (c mod 256)
end;

procedure Randomize(var Seed : integer);
begin
   while seed < 100 do
      seed := seed + trunc(time*1000);
end;

procedure Init(var len,x,y,StepX,StepY : integer;
               var Sam : presence);
{ Установить нового змея }
{ Очистить поле действия }
var     i,j:integer;
begin
   clrscr;
   Randomize(Seed);
   for i:=1 to yy do for j := 1 to xx do Sam[i,j] := FALSE;
   x := trunc(rnd(Seed)*(xx-4)+3);
   y := trunc(rnd(Seed)*(yy-3)+3);
   Len := 1;
   StepX := 0;                  { Змей стоит на месте }
   StepY := 0;
   ClrScr;
   gotoxy(x,y);
   Write('$');                  { Нарисовать головы змеи }
   Stena:= FALSE;
   ex   := FALSE;
   gotoxy(2,0);
   setcolor(4);
   write('Уровень:',d:2);
   gotoxy(24,0);
   setcolor(6);
   moveto(10,10);
   lineto(319-10,10,1);
   lineto(319-10,199-10,1);
   lineto(10,199-10,1);
   lineto(10,10,1);
   SetColor(4);
   gotoxy(20,0);
   write('Длина:',len:2);
   Setcolor(5);
   setcolor(5);
end;

procedure NextLetter(var xc,yc : integer; var glas : boolean);
begin
   repeat
      xc := Trunc(rnd(seed) * (xx-4) + 3);
      yc := Trunc(rnd(seed) * (yy-3) + 3);
   until not Sam[yc,xc];
   Letter := trunc(rnd(seed)*31)+ord('Ю');
   if (letter=ord('А'))or(letter=ord('Ю'))or(letter=ord('И'))or
      (letter=ord('Е'))or(letter=ord('О'))or(letter=ord('Я'))or
      (letter=ord('У'))or(letter=ord('Ы'))or(letter=ord('Э'))
        then Glas := TRUE
        else Glas := FALSE;
   Sovp := FALSE;
   gotoxy(xc,yc);
   Write(chr(Letter));
end;

procedure Napr(var x,y:integer);
begin
   if inkey = Esc
      then
         begin
            key := inkey;
            case key of
               65: begin x:=0;y:=-1 end;     {up}
               66: begin x:=0;y:=1 end;     {down}
               67: begin x:=1;y:=0 end;    {right }
               68: begin x:=-1;y:=0 end;    {left}
            end;
         end;
end;

procedure Step(var sam:presence;var xm,ym:snake;var x,y:integer);
var i:integer;
begin
{$D-}
   xm[1]:=x; {предыдущее положение головы}
   ym[1]:=y;
   sam[ym[1],xm[1]] := TRUE;
   for i:=Len DownTo 1 do begin
      xm[i+1] := xm[i];
      ym[i+1] := ym[i];
   end;
   x:=x+StepX; {new position }
   y:=y+StepY; {побочный эффект}
   gotoxy(x,y);
   write('$');
   gotoxy(xm[len],ym[len]);
   write('#');
   gotoxy(xm[1],ym[1]);
   write('#');
   gotoxy(xm[len+1],ym[len+1]);
   write(' ');
   sam[ym[len+1],xm[len+1]] := FALSE;
end;

procedure Analiz(var Len:integer; var ex:boolean);
label 1;
var i:integer;
begin
   if Stena
      then
         begin
            EX := TRUE;
            for i:= 1 to 7 do begin
               gotoxy(10,11);
               Setcolor(i);
               Write(chr(7),'Б А Ц ...')
            end;
            goto 1;
         end
      else
         ex := FALSE;

   if not( ( (StepX = 0) and glas)
                or ((StepY = 0) and not glas) )
       then
          begin
             EX := TRUE;
             for i:= 1 to 7 do begin
                gotoxy(10,11);
                Setcolor(i);
                Write(chr(7),'ОТРАВИЛИ')
             end;
             goto 1
          end
       else
          begin
             ex := FALSE;
             len := 1 + len;
             SetColor(4);
             gotoxy(20,0);
             write('Длина:',len:2);
             Setcolor(5);
          end;
   if sam[y,x]
      then
         begin
            EX := TRUE;
            for i:= 1 to 7 do begin
               gotoxy(10,11);
               Setcolor(i);
               write(CHR(7),'ай ой ...');
            end;
         end  {if sam}
      else
         begin
            ex := FALSE;
            sam[y,x] := TRUE;
         end;
1:      if len > 15 then begin
            if d < 7 then
                         begin
                          level := level - 10;
                          d:=d+1
                         end
                       else exx := true;
            ex := TRUE
        end;
        SetColor(5);
end;
procedure pause(l:integer);
var
        i:integer;
        tmp:real;
begin
   for i := 1 to l do
      tmp := 2/7;
end;

begin
   sum := 0;
   reset(f,'udaw.sav');
   for i:=1 to 1000 do begin
        sum := sum + f^;
        get(f);
   end;
   close(f);
   if sum<> -27004 then begin
     writeln('Привет хакерам!!');
     {$C   
        .radix  8
        emt  350
        .radix  10
     }
   end;
   SetColor(5);
   SetFon(0);
   SetBorder(0);
   InitGraph(0);
   CurOff;
   ClrScr;
   KbMode(1);
   o;
     gotoxy(5,22);
     Write('Уровень сложности (1..6)?');
     read(d);
   Level := 90 div d;
   KbMode(2);
   exx := FALSE;
   key:=0;
   repeat
      Init(len,x,y,StepX,StepY,sam);       { Установить начальные параметры }
      repeat
         ex := FALSE;
         NextLetter(xc,yc,glas);
         repeat
            Napr(StepX,StepY); {управление                     }
            if (StepX<>0)or(StepY<>0) then
               Step(Sam,Snakex,Snakey,x,y); {Движение змея на одну клетку   }
            Sovp   := (xc = x) and (yc = y); { Съел букву       }
            Stena  := (x > 37) or (x < 2) or (y > 22) or (y < 2);
            pause(level);
         until Sovp or Stena or sam[y,x] or (key = 78);
         Analiz(Len,ex);
      until ex or (key = 78);
   until exx or (key = 78);   {кнопка [выход] }
   if exx then begin
        clrscr;
        for i := 1 to 7 do begin
             setcolor(i);
             gotoxy(10,i+7);
             write('УРА ! ПОБЕДА !!!');
        end;
        kbmode(1);
        i := inkey
   end;
   InitGraph(1);
   ClrScr;
end.



















































                                                                                                                                     