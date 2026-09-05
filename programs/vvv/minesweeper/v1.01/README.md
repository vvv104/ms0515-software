# Minesweeper 1.01

The sources of the game's version 1.01 - «The Minesweeper Game, Copyright (C) 1995 Ver. 1.01, Production by Voronkov Software» - read out of `../PROGS.DSK`, the logical-disk container (volume PROGRAMS, owner VVV, 208 blocks) that lived as a file on the vvv104 disk2 / baspasfor Pascal disk.  This is the later, modular rewrite of the single-file `../K.PAS` (the version `../K.SAV` was built from): a menu, three levels and a custom field, best times, a help screen - split into a main program and separately compiled modules.  No binary of it survived; the container is the original, these are its files unpacked with `ms0515-disk get --hd`.  One directory entry of the container is not a file: `??????.???`, one block holding a space and zeros, a slot left by a program that opened a file under a bad name.

| file | what |
|---|---|
| `K.PAS` | the modular main program of the later minesweeper: the F9 menu (Help F1, New F2, Beginner/Intermediate/Expert F3-F5, Custom F6, Marker on/off, Best times, Exit, Version), the cursor moves, VZRYV (a mine goes off) and POBEDA (the field is cleared); the field, sprite and help code is in the modules below |
| `MS.PAS` | the game-logic module: SETPOLE lays the mines and draws the board, HELP reads and decodes K.HLP, BEGINNER 8x8/10, INTERMEDIATE 16x16/40, EXPERT 30x16/99; carries its own copy of the sprite table and blitter |
| `RND.PAS` | another revision of the same game-logic module (`{$E+}` separate compilation) that also holds CUSTOM, BESTTIMES, VERSION, MENU and the cursor/open/mark procedures - not the random-number unit of the same name in the parent folder |
| `SPR.PAS` | the sprite module: GETTABSPR with the 63-sprite table as assignments (the output of DATSPR), SETSPR drawing a 16x8 sprite straight into video RAM in put/or/xor modes, PUTCUR/RESCUR for the board cursor |
| `CHECK.PAS` | CHECK: an integrity check of the game's own .SAV - sums its words, compares with the stored checksum, halts with a rude message on a mismatch, then reads the sprite table appended to the file |
| `DATSPR.PAS` | source of DATSPR.SAV: reads K.DAT and writes SPR.PAS |
| `K.DAT` | the sprite data DATSPR reads: 63 sprites of 8 words (an earlier revision of K.SPT) |
| `K.HLP` | the game's help, two screens of text encoded with CODTXT's stream cipher (the first two bytes seed FORTRAN's RAN, every next byte is shifted by TRUNC(RAN*256)); decoded below |
| `TYGRF.PAS` | a sprite-file viewer: asks for a file of 8-word sprites and draws them with SETSPR in either graphics mode - the blitter's test bench |

## The help text of the game

`K.HLP` decoded by the owner's own tool - `RUN CODTXT`, 0 (decode), `K.HLP`, an output name - on the ОМЕГА system disk; the text as the game shows it on F1, two screens:

>   Voronkov Soft рады представить вашему вниманию новую графическую игру Минный
>   тральщик, специально разработанную под ПК УБПК МС 0515. Идея этой игры поза-
>   имствована из игры Minesweeper,входящей в состав оболочки Windows для IBM PC
>   Минный тральщик - это стратегическая  игра для  одного игрока. После запуска
>   высвечивается поле размером 8x8 клеток. Под клетками  игрового поля спрятаны
>   мины, которые вы в ходе игры  должны обнаружить и  обезвредить. Для этого вы
>   должны одно за другим проверять отдельные клетки. Если при этом вы попадаете
>   в клетку, где спрятана мина,то игра для вас заканчивается. В этом случае об-
>   наруживается расположение всех мин, а неправильно помеченные вами мины пере-
>   черкиваются. Если же там мин нет, то в этом  месте высвечивается число, ука-
>   зывающее  количество мин, заложенных на окружающих эту клетку соседних вось-
>   ми полях. Имея  такую  информацию, вы сможете  сделать выводы о расположении
>   спрятанных мин и пометить их.Интересна ситуация, когда вы открываете клетку,
>   рядом с которой нет мин. В этом случае все соседние поля открываются автома-
>   тически. Таким  образом  раскрытие может  охватывать и большие пространства.
>   Игра будет выиграна, если вы найдете  все поля, под которыми  спрятаны мины.
>   Вверху игрового поля вы увидите два  цифровых поля. Левое - количество спря-
>   танных мин, правое - часы, в начале выставлены на ноль. Часы начинают ходить
>   при открытии первого поля. Каждое поле с пометкой ~мина~ уменьшает на едини-
>   цу высвечиваемое число в левом поле.
>     Передвигаться по игровому полю вы сможете с помощью клавиш управления кур-
>   сором, открывать клетки - пробелом, а помечать мины - клавишей ENTER. Также,
>   у клавиши ENTER есть замечательная функция:если вы сомневаетесь, заминирова-
>   но поле или нет, вы можете  двойным нажатием  этой клавиши пометить это поле
>   знаком вопроса. Эта функция может выполняться  только  при  включенной опции
>   меню Marker, о чем ниже.
>     В игре  реализовано  меню  управления. Оно вызывается  клавишей F9. Первый
>   пункт меню - пустой, он служит для выхода в игру,не производя никаких дейст-
>   вий. Пункт New позволяет  начать новую игру, не меняя  размеров поля и коли-
>   чества  расположенных на нем мин. Справа названия  пунктов указана " быстрая
>   клавиша,нажав которую можно выполнить нужные действия непосредственно из иг-
>   ры минуя меню. Следующие три пункта меню служат для выбора уровня  игры, что
>   проявляется в размерах поля и количестве спрятанных мин. Beginner имеет поле
>   8x8 клеток с 10 минами,Intermediate - 16x16 с 40 минами,и,наконец, Expert -
>   30x16 с 99 минами.В пункте Custom вы можете задать свои характеристики игро-
>   вого поля. Размер поля может быть от 8x8 до 36x20, а количество мин не долж-
>   но превышать 667. При включенной опции Marker вы можете помечать поля знаком
>   вопроса. Клавишей ENTER вы сможете выбирать три индикации "пусто", "помечена
>   мина", "маркировка". Пункт меню Best times позволяет заглянуть в файл рекор-
>   дов, где описаны лучшие показатели в каждом классе.Пункт Exit - выход из иг-
>   ры. Version позволяет посмотреть версию данного программного продукта.
>
>
>          Автор желает вам приятного времяпровождения с игрой Minesweeper !
