# BASIC programs

The BASIC programs that are not games and not the collector's own - from the ОМЕГА and Rodionov disks, and the BASIC block of his disk3 (the road-signs test `PRAW.BAC`, the solar system, the pendulum, the clock face, comet and star fields, a matrix diagonal, a file recoder): physics and maths demonstrations, drawing and sound examples, small tools - authors unknown.  `R BASICO`, `LOAD NAME`, `RUN`.  `PRAW.BAC` is a program COMPILEd by БЕЙСИК-ОМЕГА into its internal form: `R BASICO`, then `RUN PRAW.BAC`, with `PRAW.SCR` (its title screen) beside it.  Lost, name only: `KW.BAS`, `MIST.BAS`, `WORDS.BAS` of Rodionov's disk 065 - their directory entries point at blocks that hold a byte-shifted stretch of the BASICO.SAV interpreter, the leftover of a botched copy.

| file | what | how to run |
|---|---|---|
| `COD.BAS` | Six lines: waits for a key and prints the code of every character of what INKEY$ returned | `R BASICO`, `LOAD COD`, `RUN` |
| `DIAG.BAS` | Draws a pie chart of «WIDGET Cost Factors» - Materials, Advertising, Manufacturing - with CIRCLE arcs; a textbook example (the labels are English) | `R BASICO`, `LOAD DIAG`, `RUN` |
| `DOMIK.BAS` | Asks six numbers and draws a house from lines and PAINT fills - a drawing exercise | `R BASICO`, `LOAD DOMIK`, `RUN` |
| `GRAF.BAS` | Moves a dot over the graphics screen with the keys 2/4/6/8, PSETting as it goes - the smallest sketchpad | `R BASICO`, `LOAD GRAF`, `RUN` |
| `GRAFIK.BAS` | «Построение графиков по заданным точкам»: enters an array of points and plots it four ways - points, linear interpolation, cubic with parabolic ends, splines (a REM says GROS) | `R BASICO`, `LOAD GRAFIK`, `RUN` |
| `GRAPH.BAS` | «Программа построения трехмерного графика»: draws a 3-D bar chart of yearly figures (1991, 1992, 1993) in perspective | `R BASICO`, `LOAD GRAPH`, `RUN` |
| `GRFUN.BAS` | «Программа позволяет рисовать графики по формулам»: a menu of two curves, Y=X^2 and X=Y^2, plotted with PSET | `R BASICO`, `LOAD GRFUN`, `RUN` |
| `GWFP.BAS` | «Тараканьи бега» - a cockroach race in KOI-7 text: place your bets, the runners (Янычар, Геркулес…) race on random numbers, the winner is announced | `R BASICO`, `LOAD GWFP`, `RUN` |
| `KLD.BAS` | «Колодец» - a REM says it was taken from IBM PC BASIC: draws a well (a nest of rectangles) with LINE | `R BASICO`, `LOAD KLD`, `RUN` |
| `KODIR.BAS` | «Программа обработки файлов»: mode 1 writes every character of a file as its numeric code to a second file, mode 2 reads such a file back into characters - a crude encoder | `R BASICO`, `LOAD KODIR`, `RUN` |
| `KOLO.BAS` | The same «Колодец» well drawing as KLD.BAS in another copy | `R BASICO`, `LOAD KOLO`, `RUN` |
| `KOMETS.BAS` | «Кометы»: five streaks fly left and ten fly right across the 640x200 hi-res screen forever, erased with REVERS behind them - a demo, no controls | `R BASICO`, `LOAD KOMETS`, `RUN` |
| `KWG.BAS` | Plots a parabola Y=X^2 in a character grid 80x25 drawn with text symbols (axes at column 40 / row 13), scaled by an entered factor | `R BASICO`, `LOAD KWG`, `RUN` |
| `LAM.BAS` | «Пример цепочки программ, построения изображения и вывода звука» - a BASIC demo: draws a figure with LINE chains, then sound; a chained-programs example | `R BASICO`, `LOAD LAM`, `RUN` |
| `LAMBAD.BAS` | «Ламбада» played through SOUND: 129 note-duration pairs in DATA statements | `R BASICO`, `LOAD LAMBAD`, `RUN` |
| `LINES.BAS` | Asks a number L and draws L fans of lines across the screen - a LINE exercise | `R BASICO`, `LOAD LINES`, `RUN` |
| `LTR.BAS` | «Пример управления печатающим устройством»: sends ESC sequences to the printer (LPRINT) - condensed print, character set select, a defined character - a printer-control example | `R BASICO`, `LOAD LTR`, `RUN` |
| `MASDIA.BAS` | Reads an M x N matrix from the keyboard, sums the elements along its main diagonal (scaled when M and N differ), replaces the ones with the sum and prints the matrix | `R BASICO`, `LOAD MASDIA`, `RUN` |
| `MATEMA.BAS` | Four little sums printed in a row («В первой=», «Во второй=»…): squares 1..20 and the like - a first exercise in loops | `R BASICO`, `LOAD MATEMA`, `RUN` |
| `MATR4.BAS` | Fills a 6x6 table with random numbers, prints it, bubble-sorts the 36 values and prints them again as a table | `R BASICO`, `LOAD MATR4`, `RUN` |
| `MAYATN.BAS` | A pendulum: a line swinging from a pivot at the top of the screen, a SOUND of rising pitch at every step - twelve lines | `R BASICO`, `LOAD MAYATN`, `RUN` |
| `NUMBER.BAS` | «Угадай число от 1 до 1000 за минимум попыток» - the guessing game: перелёт / недолёт, counts the tries, «ОГО!!!» for a lucky one | `R BASICO`, `LOAD NUMBER`, `RUN` |
| `OBJEM.BAS` | «Программа рисует объёмную фигуру по указанным координатам»: 3-D bars of given height, length and width, a bar chart with a title - a business-graphics exercise | `R BASICO`, `LOAD OBJEM`, `RUN` |
| `PIF.BAS` | Prints the multiplication table 1..9 as a ruled grid - «Пифагорова таблица» | `R BASICO`, `LOAD PIF`, `RUN` |
| `PRAW.BAC` | A road-signs test in БЕЙСИК-ОМЕГА, stored in the interpreter's COMPILEd internal form (.BAC, header «издание 1-01а»): shows its title screen PRAW.SCR, offers the instructions («проверить уровень знаний по правилам дорожного движения путем решения перфокарт»), then draws road signs - triangles, circles, rectangles - one after another with four answers each (въезд запрещен, уступи дорогу, крутой спуск, велосипедная дорожка, обгон запрещен...), fourteen questions, and prints the grade («Вы прошли тест и получили следующую оценку»).  Proved live: R BASICO, RUN PRAW.BAC starts it | `R BASICO`, then `RUN PRAW.BAC` (a COMPILEd program - LOAD does not take it); `PRAW.SCR` beside it; D to read the instructions, then answer 1-4 to each sign |
| `PRAW.SCR` | Screen dump (16384 bytes = the whole video RAM, 320x200 colour): the title screen «Правила Дорожного Движения (дорожные знаки)» in red/yellow/green/blue letters on a brick-and-signs background - loaded by the road-signs test PRAW.BAC beside it | data file of `PRAW.BAC`, keep beside it |
| `PRFIL.BAS` | Asks a file name and prints the file line by line to the screen, with ON ERROR handling for a missing file | `R BASICO`, `LOAD PRFIL`, `RUN` |
| `PRIM.BAS` | Counts the words in an entered sentence («В предложении … слов») and defines FNY(J)=J^2 - two small exercises in one file | `R BASICO`, `LOAD PRIM`, `RUN` |
| `PROST.BAS` | «Таблица простых чисел от 1 до» a given bound (<1000), by trial division, with input checking | `R BASICO`, `LOAD PROST`, `RUN` |
| `PROST2.BAS` | Prints the primes up to 100 by counting divisors - seven lines | `R BASICO`, `LOAD PROST2`, `RUN` |
| `RENDOC.BAS` | A recoder that sat on the collector's disk3 as REN.BAS - not his, and renamed here so that his own REN.BAS (in programs/vvv/) keeps the name: reads DZ2:EXPRES.DOC and writes DZ2:EXPR2.DOC, passing digits, punctuation and CR through and moving every other code up by 128 - KOI-7 Cyrillic to KOI-8 | `R BASICO`, `LOAD RENDOC`, `RUN` |
| `SIN.BAS` | Draws a framed 100x100 box and a sine curve inside it with PSET | `R BASICO`, `LOAD SIN`, `RUN` |
| `SMES.BAS` | «Смесь» (a REM says from IBM PC BASIC): asks a division factor and draws random circles and lines - a graphics mix | `R BASICO`, `LOAD SMES`, `RUN` |
| `STARS.BAS` | Starfield: ten stars drift left and ten right across the 320x200 screen forever (PSET, erased with REVERS) - a demo, no controls | `R BASICO`, `LOAD STARS`, `RUN` |
| `STREET.BAS` | Draws a street in perspective - rows of houses as rectangles receding with a step - LINE exercise | `R BASICO`, `LOAD STREET`, `RUN` |
| `SUNSY1.BAS` | «Солнечная система» with the keyboard: nine planets on their orbits (radii in DATA), the planets filled with PAINT, the animation driven while the keyboard flag at 177440 is polled | `R BASICO`, `LOAD SUNSY1`, `RUN` |
| `SUNSYS.BAS` | «Солнечная система»: nine planets circling on orbits whose radii are in a DATA line, drawn with CIRCLE and PSET in the wide graphics mode | `R BASICO`, `LOAD SUNSYS`, `RUN` |
| `UMN.BAS` | BASIC demo: prints the multiplication table three ways - a 9x9 grid, per-row listings 1..3 x 1..9, and columns 2..5 x 1..9 | `R BASICO`, `LOAD UMN`, `RUN` |
| `VID2.BAS` | Plots a curve from a parametric sweep (T from 40.96 to 61.36) and pokes the video registers 177740/177746 - a video-mode experiment | `R BASICO`, `LOAD VID2`, `RUN` |
| `VIDEO.BAS` | Plots a curve from a parametric sweep (T from 40 to 60), ten lines | `R BASICO`, `LOAD VIDEO`, `RUN` |
| `VIDEO2.BAS` | The same parametric curve as VIDEO.BAS with a finer step | `R BASICO`, `LOAD VIDEO2`, `RUN` |
| `WATCH.BAS` | An analog clock face: sixty ticks around an ellipse, hands drawn from TIME - redrawn every second | `R BASICO`, `LOAD WATCH`, `RUN` |
| `ZAPK.BAS` | «Записная книжка»: a phone book kept in NAMES.DAT / TELEPH.ONE - record, read by the first letter of the surname, exit | `R BASICO`, `LOAD ZAPK`, `RUN` |
