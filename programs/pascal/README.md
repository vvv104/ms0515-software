# Pascal programs of no known author

A batch of Pascal sources that came onto the collector's disk3 together with Домнич's signed CALEND and ПИТОН - in one copy session, interleaved with them in the directory - and are neither his nor the collector's: the biorhythm calculator `BIO` (`RUN BIO`, enter the date of birth as yyyy mm dd; `BIORIT.PAS` is a Russian-text biorhythm source), the graphics analog clock `CLOCK` (`RUN CLOCK`, enter hh mm ss - its second is a delay loop calibrated to the real 7.5 MHz CPU), the epicycloid drawer `EPIC` (`RUN EPIC`, the ratio of the radii; a BASIC version beside it), the colour demo `COLOR`, the PPI-port probe `KOD.PAS`, the disk password gate `INKOD.PAS`, and the exercises `FREE`, `GOROD`, `CELFAR`, `DNINED`, `MORZE`, `UZOR`, `CCC`.  Sources only where no .SAV is beside them - compile with PAS1, MACRO, LINK and PASLIB.

| file | what | how to run |
|---|---|---|
| `BIO.PAS` | Source of the biorhythm calculator: the three cycles plotted as a text chart 64 characters wide, English month names (MAR…FEB), date arithmetic in records - a textbook program | compile with PAS1, MACRO, LINK |
| `BIO.SAV` | Biorhythm calculator; asks for a date of birth (yyyy mm dd) | `RUN BIO` |
| `BIORIT.PAS` | A biorhythm program written entirely with Russian identifiers (PROGRAM биоритмы; TYPE год, месяц, дата; FUNCTION високос) - prints the month's chart with +/- halves; from a Russian Pascal textbook | compile with PAS1, MACRO, LINK |
| `CCC.PAS` | program calculator - an expression calculator: reads a line, scans digits, additive and multiplicative operators and separators (Wirth-style sets of char), evaluates with REAL results | compile with PAS1, MACRO, LINK |
| `CELFAR.PAS` | «Таблица значений градусов температуры по Цельсию и Фаренгейту»: asks the start, end and step and prints the conversion table | compile with PAS1, MACRO, LINK |
| `CLOCK.PAS` | Source of the graphics analog clock: «Введи время.. чч мм сс», the dial and three hands, the second as a calibrated delay loop | compile with PAS1, MACRO, LINK |
| `CLOCK.SAV` | Graphics ANALOG clock: asks hh mm ss (the machine has no battery clock to ask instead), then draws a dial at the centre of the 320x200 screen and moves hands of length 30/60/80. Its 'one second' is an empty delay loop of 57000 iterations calibrated to the real 7.5 MHz CPU (for q:=-29000 to 28000) - so its drift is a direct measure of an emulator's cycle accuracy | `RUN CLOCK` |
| `COLOR.PAS` | «Введите нужный Вам цвет экрана»: a menu 0 - чёрный, 1 - синий, 2 - красный, 3 - пурпурный, 4 - зелёный, 5 - голубой… and the screen switches to it | compile with PAS1, MACRO, LINK |
| `COLOR.SAV` | Colour demonstration compiled from COLOR.PAS beside it | `RUN COLOR` |
| `DNINED.PAS` | FUNCTION DNINED(DT:DATA):DNED - the day of the week for a date (Monday..Sunday), twenty lines | compile with PAS1, MACRO, LINK |
| `EPIC.BAS` | The epicycloid drawer in BASIC: «Введите коэффициент отношения радиусов R и r», «Введите шаг в градусах», the curve traced with PSET | `R BASICO`, `LOAD EPIC`, `RUN` |
| `EPIC.PAS` | PROGRAM EPICYKLOID: asks the ratio of the radii and draws the epicycloid with LINE, a key ends it | compile with PAS1, MACRO, LINK |
| `EPIC.SAV` | Draws epicycloids; asks for the ratio of the radii R and r | `RUN EPIC` |
| `FREE.PAS` | Textbook exercise: converts infix expressions from the input into postfix with an operator stack kept on a linked list and a free-list of released nodes (NEW/pointer '@' syntax of OMSI Pascal); as saved it still has a few missing semicolons - an unfinished student piece | compile with PAS1, MACRO, LINK |
| `GOROD.PAS` | MakeCityScape - «рисует произвольные строения»: a random city skyline of buildings with windows (a Pascal rendering of a well-known BASIC demo) | compile with PAS1, MACRO, LINK |
| `INKOD.PAS` | PASSWORD: a disk access gate - clears the screen, prints «Диск принадлежит Воронкову В В - введите код», accepts the code (5639) or, on a wrong one, prints «Посторонним лицам запрещён доступ к файлам», writes 0 into the keyboard status register 177442B and hangs in an endless loop | compile with PAS1, MACRO, LINK |
| `KOD.PAS` | KEY: hardware probe - prints the words at 177540B, 177542B and 177544B (the MS7007 PPI ports A, B, C: keyboard rows, the joystick port and port C) 500 times in a row, to watch what the ports return while keys are pressed | compile with PAS1, MACRO, LINK |
| `MORZE.PAS` | Morse code: a table of letters, digits and punctuation to dot-dash strings, converting entered text | compile with PAS1, MACRO, LINK |
| `UZOR.PAS` | «Узор»: random patterns from moving line segments (MoveTo/LineTo with random parameters), a key ends it | compile with PAS1, MACRO, LINK |
