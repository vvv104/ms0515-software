# Catalogue

One card per file of the collection: what it is, how it was identified, on which monitors it ran in the cross-run (`runs`), and where it sits in this repository.  The folders fold and unfold as the repository's own do; every card names its path.  Machine-readable twin: `catalog.csv`.

<details open><summary><b>kits/</b> — 132 files</summary>

<details><summary><b>kits/common/</b> — 70 files</summary>

<details><summary><b>kits/common/development/</b> — 26 files</summary>

### `kits/common/development/BASIC.SAV`

BASIC / RAFOS V02-030 interpreter; asks which optional functions to load (ALL, NONE, OR INDIVIDUAL)

*written in assembler (no runtime library); text; en / ascii; cross-run: ran; disks: 1; identified from: program screen; sha256 dbdca9ec1f44*

### `kits/common/development/BASICO.DOC`

Manual of БЕЙСИК-ОМЕГА («РАЗРАБОТАН ЛЬВОВСКИМ НАУЧНО-ИССЛЕДОВАТЕЛЬСКИМ ПРЕДПРИЯТИЕМ "ОМЕГА"»), 363 blocks. Pages 8-14 are lost: under blocks 29-45 the diskette holds monitor swap code, not text, and the three reads of disk5 (the only disk with the file) disagree there

*ru+en / koi8-r; disks: 1; identified from: gap analysis 2026-09-06; sha256 0b2216607079*

### `kits/common/development/BASICO.SAV`

Omega BASIC for the Elektronika MS 0515, edition 1-01a; the native BASIC of the machine, ready prompt in Russian

*written in assembler (no runtime library); text; ru+en / koi8-r; cross-run: ran; disks: 16; identified from: program screen; sha256 9ac32ba9c014*

### `kits/common/development/DESS.SAV`

DEZI V05.01, 'Originally written by D. Climov' (phone in the banner): an interactive octal dump viewer-cum-disassembler - full-screen word dump with ASCII gutter, BLCK/ADDR/TYPE header, a Stack line and a live 'Macro-11:' disassembly of the word at the cursor; modes words/bytes/radix/ascii/Inst, pattern search. The machine's резидентный инструмент дизассемблирования; on all five of the keeper's disks

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — prompt; answers ?DEZI-F-FilenotfoundDK:NOSUCH.XXX*; disks: 5; identified from: banner + live run on DIR.SAV 2026-09-05 (screenshot with Macro-11: HALT); sha256 bd0665c3c864*

### `kits/common/development/FORLIB.OBJ`

The FORTRAN IV run-time library (105 KB) that the OMSI Pascal programs are LINKed against for RAN and the FORTRAN-declared routines

*en / ascii; disks: 6; identified from: strings 2026-09-06; sha256 b0e071fa478a*

### `kits/common/development/FORTRA.SAV`

FORTRAN compiler; prompts with * for a command line the way the RT-11 compilers do

*written in assembler (no runtime library); text; en / ascii; cross-run: ran; disks: 8; identified from: program screen; sha256 02fa7a6e143a*

### `kits/common/development/GETDAT.PAS`

getdat(var d:data) - the system date (year 1972.., month, day) unpacked from the RT-11 .DATE word with inline MACRO-11 ({$C ... }), a unit for programs that stamp their output

*disks: 2; identified from: read from the source 2026-09-06; sha256 b63341ce9c24*

### `kits/common/development/GRAPH.P1U`

Declarations file of the PASGRF graphics library for OMSI Pascal-1: the EXTERNAL procedure headers (InitGraph, SetColor, SetFon, SetBorder, SetPixel...) to include in a program that links with PASGRF.OBJ

*disks: 4; identified from: read 2026-09-06; sha256 6fc757560c75*

### `kits/common/development/K13U.SAV`

Screen text editor of the ОСА/ОМЕГА kits (the K13/KED family; alias K52.SAV), the build eight disks carry byte-identical; two of its messages are still English («WORKING...», «Model:») - KED.SAV is the same binary with them translated. Its keyboard layout is described in R15.DOC

*written in assembler (no runtime library); text; ru+en / koi8-r; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 8; identified from: byte diff of the family 2026-09-06; sha256 c80b5bca6911*

### `kits/common/development/KED.SAV`

Keypad screen editor: the K13U.SAV binary with its last two English strings translated («Работаю...», «Образ:»), from the vvv disks (h0, disk3, disk4). A PAPER-family copy differs by one word in a key table; K13U and the eight-disk build agree with this one, so this is the sound build

*written in assembler (no runtime library); text; ru+en / koi8-r; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 3; identified from: byte diff of the family 2026-09-06; sha256 788620421a59*

### `kits/common/development/PAS1.OBJ`

The OMSI Pascal run-time support module («Trap to 4», «Not a valid device», «End of file on device»…) every compiled program is LINKed with

*en / ascii; disks: 6; identified from: strings 2026-09-06; sha256 9cdeed1f03b1*

### `kits/common/development/PAS1.SAV`

First pass of the Pascal compiler; prompts with * for a command line

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — prompt; answers ?CSI-F-Файлненайден*; disks: 13; identified from: program screen; sha256 0e79f7b1a319*

### `kits/common/development/PAS1HD.OBJ`

A one-block object module whose only text is «Graphics library -- copyleft by Naumov A.I.» - the header of the graphics library

*disks: 1; identified from: strings 2026-09-06; sha256 8539d3195820*

### `kits/common/development/PASCAL.LST`

The Pascal language listing/reference that came with the compiler. Two reads of disk5 survived; this is the clean one (the other has junk in blocks 130, 150, 168-170)

*ru+en / koi8-r; disks: 1; identified from: two disk5 reads compared 2026-09-06; canonical version picked in decisions.tsv; sha256 4164731eb6c0*

### `kits/common/development/PASGR.DOC`

Manual of the Pascal graphics library PASGRF.OBJ: InitGraph, SetColor, SetFon, SetBorder, SetBright/ResBright, SetFlach, drawing and text routines, KbMode/inkey keyboard polling, with examples. Three reads of disk5 survived; this is the one clean one (the other two carry corrupt blocks 6-13 and 26)

*ru / koi8-r; disks: 1; identified from: three disk5 reads compared 2026-09-06; canonical version picked in decisions.tsv; sha256 115fea56ecb3*

### `kits/common/development/PASGRF.OBJ`

The graphics library for OMSI Pascal on the МС-0515: InitGraph, SetPixel, LINE, sprites - what the graphics programs LINK with

*disks: 2; identified from: strings 2026-09-06; sha256 c9cadedc0f90*

### `kits/common/development/PASLIB.OBJ`

The Pascal library with the terminal routines (ClrScr, GotoXY, Inkey, KbMode, cursor on/off) the programs declare EXTERNAL

*disks: 5; identified from: strings 2026-09-06; sha256 5d70cb23ee66*

### `kits/common/development/PASUSE.LST`

«ПАСКАЛЬ - руководство программиста», 45 sheets, 1982: the Pascal programmer's manual of the machine

*ru+en / koi8-r; disks: 1; identified from: title page 2026-09-06; sha256 4ec5d643b0f5*

### `kits/common/development/R15.DOC`

«Описание работы с экранным редактором текста K13U(K52)» - the manual of the K13 family editor (R15/K13U/KED): the keypad map of the МС0515 (ПФ1-ПФ4, страница/абзац/добавить/стирзнак...), the editor's functions and commands

*ru+en / koi8-r; disks: 2; identified from: read 2026-09-06; sha256 d1558cc2f063*

### `kits/common/development/R15.HLP`

«Ввод псевдографических символов в редакторе R15» - how to enter pseudo-graphics in the editor with the КМП (compose) key

*ru / koi8-r; disks: 2; identified from: read 2026-09-06; sha256 e81b3cc40142*

### `kits/common/development/R15.SAV`

«Редактор текста R15» V01.2 - Rodionov's edition of the K13U/KED screen editor (same 27648-byte binary, 952 bytes apart): every prompt Russian («Ждите...», «Повтор:», «Поиск:», «Команда:»), the help frame redrawn in pseudo-graphics, keypad functions ДАЛЕЕ/СТИРСТРОК/СПРАВКА...; prompts with * for the file name like the others

*written in assembler (no runtime library); text; ru+en / koi8-r; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 2; identified from: byte diff vs K13U 2026-09-06; sha256 7ffee26166ac*

### `kits/common/development/REDUMP.SAV`

DEZI V05.01 by D. Climov with the banner hex-patched to 'REDUMP B5.0e' - a local rebadge of DESS.SAV, the same program (string tables byte-identical); unrelated to the small REDUMP.PAS in PROGS.DSK

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 1; identified from: banner comparison: 'REDUMP B5.0e ...ginally written by D. Climov'; sha256 f29f7dc3113d*

### `kits/common/development/SETPIX.PAS`

SetPixel for the 640x200 hi-res screen written straight against the hardware: the pixel byte at VRAM 40000B + 80*y + x div 8, ORed with the bit mask, with the memory-dispatcher register 177400B / its shadow at 157700B switched to reach the video bank and restored; a one-call test main follows

*disks: 2; identified from: read from the source 2026-09-06; sha256 f1dbfeead45c*

### `kits/common/development/STRING.PAS`

String library for OMSI Pascal (which has no string type): STRING = array[1..79] of char with STRINIT, STRLENG, STRREAD (raw keyboard input through the external KBMODE/INKEY of PASGRF, with backspace editing), STRWRITE, STRDELETE, STRINSERT and VAL (string to real with an error position); ends with a small self-test main

*disks: 2; identified from: read from the source 2026-09-06; sha256 7810b7a6abab*

### `kits/common/development/SYSLIB.OBJ`

The RT-11 system library SYSLIB (28 KB) LINK draws the system calls from

*disks: 5; identified from: strings 2026-09-06; sha256 5f12d6ff00e0*

### `kits/common/development/SYSMAC.SML`

MACRO-11 system macro library

*en / ascii; disks: 4; identified from: DEC RT-11; sha256 a9d716957163*

</details>

<details><summary><b>kits/common/diag/</b> — 26 files</summary>

### `kits/common/diag/183107.SAV`

The factory exerciser (Uprazhnitel MS0515 V1.0) from the manual: prints its banner, tells the operator to set the work mode in cell 001076 and drops into ODT BY DESIGN - the mode is deposited with D and the run resumed with P.  The C* timing meters are its companions

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: failed — dropped into ODT at 001414; disks: 4; identified from: program screen + factory manual; sha256 1840f4660b70*

### `kits/common/diag/184106.SAV`

Companion of the 183107 exerciser in .EXE form; enters ODT at 000020 on start - likely the same deposit-and-proceed interface

*written in assembler (no runtime library); ru / koi8-r; cross-run: failed — dropped into ODT at 000020; disks: 1; identified from: program screen; shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 320bcafba75e*

### `kits/common/diag/CADD.SAV`

One of the C* instruction-timing suite: measures ADD in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 7c95a5ee11a9*

### `kits/common/diag/CBIC.SAV`

One of the C* instruction-timing suite: measures BIC in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 3b24de048137*

### `kits/common/diag/CBICB.SAV`

One of the C* instruction-timing suite: measures BICB in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 d1e6a85d3abf*

### `kits/common/diag/CBIS.SAV`

One of the C* instruction-timing suite: measures BIS in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 7fb87978bbf8*

### `kits/common/diag/CBISB.SAV`

One of the C* instruction-timing suite: measures BISB in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 40b541de5d13*

### `kits/common/diag/CBIT.SAV`

One of the C* instruction-timing suite: measures BIT in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 fb39cba0174f*

### `kits/common/diag/CBITB.SAV`

One of the C* instruction-timing suite: measures BITB in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 28f683f4b628*

### `kits/common/diag/CBR.SAV`

One of the C* instruction-timing suite: measures branches in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 cf9621b33508*

### `kits/common/diag/CCMP.SAV`

One of the C* instruction-timing suite: measures CMP in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 77aa3d972f8a*

### `kits/common/diag/CCMPB.SAV`

One of the C* instruction-timing suite: measures CMPB in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 b18b1b3ff9eb*

### `kits/common/diag/CJMP.SAV`

One of the C* instruction-timing suite: measures JMP in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 2b5d91324f54*

### `kits/common/diag/CMOV.SAV`

Instruction timing meter: measures MOV in CPU cycles for every addressing-mode pair and prints the matrix, using the 50 Hz vector-100 interrupt as the timebase (word 1002 holds the calibration).  One of the C* suite; needs the instruction emulator resident (SET EM ON or R GETEML).  Alex_K ran it on real hardware: 7.5 MHz

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 7e5894e423c7*

### `kits/common/diag/CMOVB.SAV`

One of the C* instruction-timing suite: measures MOVB in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 7ac375c0a819*

### `kits/common/diag/COP1.SAV`

One of the C* instruction-timing suite: measures single-operand ops in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 248320dd3094*

### `kits/common/diag/COP2P0.SAV`

One of the C* instruction-timing suite: measures two-operand ops (part 0) in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 fb844ce2e101*

### `kits/common/diag/COP2P1.SAV`

One of the C* instruction-timing suite: measures two-operand ops (part 1) in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 abc7103ff536*

### `kits/common/diag/COP2P2.SAV`

One of the C* instruction-timing suite: measures two-operand ops (part 2) in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 41f4b2b03f33*

### `kits/common/diag/COP2PC.SAV`

One of the C* instruction-timing suite: measures PC-addressing ops in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 1de8fffa9acc*

### `kits/common/diag/CPRF.SAV`

One of the C* instruction-timing suite: measures performance summary in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 0a5c750bc8ec*

### `kits/common/diag/CRDWR.SAV`

One of the C* instruction-timing suite: measures memory read/write in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 6c47b746d8ef*

### `kits/common/diag/CRDWR1.SAV`

One of the C* instruction-timing suite: measures memory read/write (part 1) in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 5a347c3b618f*

### `kits/common/diag/CSOB.SAV`

One of the C* instruction-timing suite: measures SOB in CPU cycles per addressing mode against the 50 Hz timer; needs the instruction emulator resident (SET EM ON or R GETEML)

*written in assembler (no runtime library); text; cross-run: ran — needs the instruction emulator (SET EM ON); disks: 1; identified from: program screen + forum; sha256 525973b6600a*

### `kits/common/diag/GETEML.SAV`

Loadable instruction-set emulator: hooks the reserved-instruction vector (10), relocates to 154000 and emulates the EIS/FIS instructions the KR1807VM1 lacks (FADD/FSUB/FMUL/FDIV confirmed by disassembly; CMOV.SAV's MUL/DIV work under it too).  Resident: prints nothing.  The driver form is EM.SYS (SET EM ON)

*written in assembler (no runtime library); text; cross-run: exited 7/8; disks: 5; identified from: disassembly + experiment; sha256 1491920f3588*

### `kits/common/diag/SCN15I.SAV`

Prints its title "Scan-code of keys (interrupt), Alphaprog" and waits for keys - a keyboard scan-code viewer

*written in assembler (no runtime library); text; cross-run: ran; disks: 1; identified from: program screen; sha256 712a6fcb4506*

</details>

<details><summary><b>kits/common/print/</b> — 6 files</summary>

### `kits/common/print/6337.SAV`

Print utility for the МС 6337 dot-matrix printer (hence the numeric name): 'file?' asks for a text file to load, then a menu - load / print / select type (fonts long, dubble, fat, small, step 2.117) / one-side / high quality. On every rebuilt volume it dies before loading: its file-open path uses old-format EMTs (.FETCH at 011144, .LOOKUP at 011264) and fails differently per directory format ('NOT A VALID DEVICE' on a 1-segment volume, '?MON-F-Invalid directory' on 4-segment) - it apparently expects its native System3/disk4 environment. The cross verdict 'ran' only means the prompt came up

*written in high-level (runtime library linked); en / ascii; cross-run: ran; disks: 1; identified from: menu strings + disassembly of the failing requests + feed experiments 2026-09-05; shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 95292998bc4e*

### `kits/common/print/OUT17.DOC`

«Утилита OUT17 предназначена для вывода текстовых файлов на струйный принтер МС6317, подключенный к параллельному порту МС0515» - its short manual, ending with Домнич's contact line

*ru / koi8-r; disks: 1; identified from: read 2026-09-05; sha256 205f41f630d9*

### `kits/common/print/OUT17.SAV`

Prints text files on an MS6317 ink-jet printer attached to the parallel port of the MS 0515

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran — prompt; answers ?CSI-F-Файлненайден*; disks: 1; identified from: RTK MIKRO manuals (disk5); sha256 2c85151dce6b*

### `kits/common/print/OUT2.SAV`

One of the OUT family with OUT17 and OUTC

*written in assembler (no runtime library); cross-run: ran; disks: 4; identified from: program screen; sha256 ab17fa0a5f17*

### `kits/common/print/OUTC.DOC`

«Утилита OUTC предназначена для вывода текстовых файлов на принтер СМ6337, подключенный к параллельному порту МС0515» - its short manual

*ru / koi8-r; disks: 1; identified from: read 2026-09-05; sha256 fdc0846e8e62*

### `kits/common/print/OUTC.SAV`

Prints text files on an SM6337 printer attached to the parallel port of the MS 0515

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran — prompt; answers ?CSI-F-Файлненайден*; disks: 1; identified from: RTK MIKRO manuals (disk5); sha256 21305756bd96*

</details>

<details><summary><b>kits/common/shells/</b> — 2 files</summary>

### `kits/common/shells/SCE.HLP`

The help text of the SCE shell, «сделан Гостевым Дмитрием (Школа профессионального самоопределения, г. Воронеж), Copyright 12.24.1993»: the key list B-bad blocks, C-copy, D-delete, E-edit, G-run, H-help, K-create/undelete, L-dismount, M-logical disks, U-boot, W-bootstrap…

*ru / koi8-r; disks: 4; identified from: read 2026-09-06; sha256 dcc37aa51ad9*

### `kits/common/shells/SCE.SAV`

Two-panel file manager in the Norton Commander style, Russian labels: directory panel with an info panel, command line Copy/Type/Prot/uNprot/Ren/Del/Quit/Vol/Go/Sque/Z-ini

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran; disks: 7; identified from: program screen; sha256 e0dada00133a*

</details>

<details><summary><b>kits/common/utils/</b> — 10 files</summary>

### `kits/common/utils/ASC.SAV`

Interactive character-code lookup: press any key and it prints the ASCII code (A -> 65, 7 -> 55; the console upcases letters first). A pocket reference vvv kept on every one of his disks - indispensable in a KOI-7/KOI-8/CP866 world

*written in high-level (runtime library linked); en / ascii; cross-run: ran; disks: 5; identified from: live run 2026-09-05: keys answered with their codes; sha256 0579bc9f81f4*

### `kits/common/utils/BADS.SAV`

Bad-block scanner (RT-11 BAD-style): at its '*' prompt give a device ('DZ0:'), it reads every block with a running counter and reports 'N bad blocks detected' / 'Block N is bad.'; switches C,S,E,A,O. Three blocks of assembler - the sibling craft of KBAD13

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 3; identified from: its own strings + live scan 2026-09-05 ('No bad blocks detected.'); sha256 4c64cf4995a7*

### `kits/common/utils/BLACK.SAV`

Blanks the screen to black and returns to the monitor

*written in high-level (runtime library linked); en / ascii; cross-run: ran; disks: 8; identified from: program screen; sha256 17c2870dc2ae*

### `kits/common/utils/BLUE.SAV`

Sets the screen blue with yellow letters and returns to the monitor; the counterpart of BLACK.SAV and WHITE.SAV.  On eight of the nine disks that carry it (osa, System, System3, 059, 062, 063, 066, 172) it is this copy; 065 holds a one-byte variant

*written in assembler (no runtime library); text; cross-run: ran (blue screen, yellow text, prompt back); disks: 9; identified from: program screen 2026-09-13; sha256 f3261ec2e9dd*

### `kits/common/utils/CALEND.SAV`

Calendar generator for the years 1583-5000, to a file or to LP:; A. V. Domnich, 16-06-94

*written in Pascal (source on the disks); text; ru+en / koi8-r; cross-run: ran; disks: 1; identified from: program screen; the source it was built from is in programs/domnich/; sha256 0997a687c0a7*

### `kits/common/utils/DATSET.SAV`

Date-setting program of the OSA kit

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran; disks: 5; identified from: OSA manual; sha256 3d748a2cdc42*

### `kits/common/utils/DAY.SAV`

Asks for a date, offering 18-MAR-93 as the default

*written in assembler (no runtime library); text; en / ascii; cross-run: ran; disks: 1; identified from: program screen; sha256 0a58aa5e5ce0*

### `kits/common/utils/NEG.SAV`

Writes 000010 into System Register C (177604): selects the 640x200 hi-res mode with a black border.  The video-mode counterpart of BLACK, BLUE and WHITE

*written in assembler (no runtime library); text; cross-run: ran 6/8; disks: 4; identified from: disassembly; sha256 77e302e20a24*

### `kits/common/utils/TFP.SAV`

Text formatter of the OSA kit; the manual recommends keeping it on the system device

*written in high-level (runtime library linked); text; ru / koi8-r; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 3; identified from: OSA manual; sha256 b85e3e59cbc6*

### `kits/common/utils/WHITE.SAV`

Sets the screen to white and returns to the monitor; the counterpart of BLACK.SAV and BLUE.SAV

*written in assembler (no runtime library); text; cross-run: exited 6/8; disks: 5; identified from: program screen; sha256 e28d9cf189ac*

</details>

</details>

<details><summary><b>kits/mihin/</b> — 14 files</summary>

<details><summary><b>kits/mihin/development/</b> — 2 files</summary>

### `kits/mihin/development/LINK.SAV`

LINK V08.04, a later RT-11 linker, with its banner patched to read «LINK B03.01» on Mihin's disks; the copy on ОМЕГА 064 keeps the V08.04 banner (21 bytes apart)

*written in assembler (no runtime library); text; en / ascii; cross-run: ran; disks: 2; identified from: DEC RT-11; the Mihin's OS-16SJ kits build; sha256 84967964c932*

### `kits/mihin/development/MACRO.SAV`

MACRO V05.04 as Mihin's OS-16SJ disks carry it - 12 of its 61 blocks differ from the plain one: Mihin's own patching

*written in assembler (no runtime library); text; ru+en / koi8-r; cross-run: ran; disks: 2; identified from: DEC RT-11; the Mihin's OS-16SJ kits build; sha256 19eaf74ec37c*

</details>

<details><summary><b>kits/mihin/format/</b> — 1 file</summary>

### `kits/mihin/format/FDZ.SAV`

Diskette formatter for the UVK-16; (C) Mihin-soft & SPF Sensor, Voronezh, 1990.  Destructive: it asks Y/N and then formats

*written in assembler (no runtime library); text; cross-run: ran; disks: 4; identified from: program screen; sha256 8fc049e88d08*

</details>

<details><summary><b>kits/mihin/handlers/</b> — 10 files</summary>

<details><summary><b>kits/mihin/handlers/056/</b> — 5 files</summary>

### `kits/mihin/handlers/056/PC.COM`

SIPP patch script for PC.SYS (R SIPP, DK:PC.SYS/C, then the patched offsets)

*disks: 1; identified from: read 2026-09-06; sha256 95adaabd0f4b*

### `kits/mihin/handlers/056/PC.SYS`

DEC's PC handler - the PC11 paper-tape reader and punch: device code 7, CSR 177550, vectors 070 (reader) and 074 (punch), as PC.MAC of DEC's V5.4 sources declares; version 01, so from an older RT-11, with the sysgen word patched to TIM$IT.  Of the collection's monitors only Mihin's loads it

*disks: 1; identified from: identified 2026-09-05; sha256 2ea0d76682ca*

### `kits/mihin/handlers/056/RK.COM`

SIPP patch script for RK.SYS (R SIPP, DK:RK.SYS/C, then the patched offsets)

*disks: 1; identified from: read 2026-09-06; sha256 1a3887444fb6*

### `kits/mihin/handlers/056/RK.SYS`

DEC's RK handler - the RK05 cartridge disk of 4800 blocks, as RK.MAC of DEC's V5.4 sources declares, moved to CSR 173100 and vector 350 and given the TIM$IT sysgen word by RK.COM; it has a primary driver, so such a disk could be booted from.  Of the collection's monitors only Mihin's loads it

*disks: 1; identified from: identified 2026-09-05; sha256 6cb6ec99f915*

### `kits/mihin/handlers/056/SL.SYS`

Сторожевых's single-line editor SL V06.00b of 1987, off the work diskette 056: the older of the two SL of this kit and the one in English - the LET language with its own prompt and help, the keypad functions it binds, and a terminal it recognises («Your console is a VT» / «100 in VT52 mode»); the V8.00 beside it is the 1990 adaptation for the УБПК by НПФ «Сенсор», Russian, with that installation's ten hotkey assignments.  Of the collection's monitors only Mihin's loads it

*en / ascii; disks: 1; identified from: DEC RT-11 + the driver's own banner string; sha256 85ad85f1cdf2*

</details>

<details><summary><b>kits/mihin/handlers/npf-sensor/</b> — 1 file</summary>

### `kits/mihin/handlers/npf-sensor/SL.SYS`

Single-line editor - command recall and editing at the monitor prompt; the V08.00 build is signed 'SL V08.00 [SW] Сторожевых С.В. 1988' inside the driver; its banner «АДАПТАЦИЯ ДЛЯ УБПК НПФ "СЕНСОР"» names the Voronezh firm that adapted it for the УБПК, the machine's own development name

*en / ascii; disks: 2; identified from: DEC RT-11 + the driver's own banner string; sha256 cd5af8b82d6a*

</details>

### `kits/mihin/handlers/DZ.SYS`

Floppy-disk handler

*disks: 4; identified from: factory manual; sha256 591620eb0ec4*

### `kits/mihin/handlers/LD.SYS`

Logical-disk handler: mounts a container file as a volume

*en / ascii; disks: 1; identified from: DEC RT-11; sha256 1b3868364854*

### `kits/mihin/handlers/TT.SYS`

Terminal handler

*disks: 4; identified from: factory manual; sha256 f69410a15a2b*

### `kits/mihin/handlers/VM.SYS`

RAM-disk handler (memory used as a drive)

*disks: 4; identified from: factory manual; sha256 67036c0322c1*

</details>

<details><summary><b>kits/mihin/utils/</b> — 1 file</summary>

### `kits/mihin/utils/TERM.SAV`

The terminal emulator as Mihin's, Rodionov's and ОМЕГА 064 disks carry it: «РЕЖИМ ЭМУЛЯЦИИ ТЕРМИНАЛА», exit with СУ/E

*written in assembler (no runtime library); text; cross-run: ran; disks: 8; identified from: program strings of both builds; TERM.TXT manual on disk 056; the Mihin's OS-16SJ kits build; sha256 31c254f8780b*

</details>

</details>

<details><summary><b>kits/omega/</b> — 18 files</summary>

<details><summary><b>kits/omega/development/</b> — 1 file</summary>

### `kits/omega/development/MACRO.SAV`

MACRO V05.01b - an older release of the assembler, from the ОМЕГА disk 064 alone

*written in assembler (no runtime library); text; en / ascii; cross-run: ran; disks: 1; identified from: DEC RT-11; the the ОМЕГА kits build; sha256 762ca9886138*

</details>

<details><summary><b>kits/omega/format/</b> — 2 files</summary>

### `kits/omega/format/FORMH.SAV`

Formats the upper surface of a diskette; asks for confirmation first.  Destructive; the lower surface is FORML

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran; disks: 4; identified from: program screen; the the ОМЕГА kits build; sha256 f9e5bb4be0f7*

### `kits/omega/format/FORML.SAV`

Formats the lower surface of a diskette; asks for confirmation first.  Destructive; the upper surface is FORMH

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran; disks: 4; identified from: program screen; the the ОМЕГА kits build; sha256 2c7d73a2c8f3*

</details>

<details><summary><b>kits/omega/handlers/</b> — 10 files</summary>

### `kits/omega/handlers/DV.SYS`

Whole double-sided diskette as one 1600-block volume, cylinder 0 last

*disks: 6; identified from: handler disassembly; sha256 09d5bce02ca3*

### `kits/omega/handlers/DZ.SYS`

Floppy-disk handler

*disks: 10; identified from: factory manual; sha256 7606fe575fc4*

### `kits/omega/handlers/EX.SYS`

Electronic-disk handler of the memory/interface expansion board (EX0:)

*disks: 6; identified from: board manual; sha256 0354d18e2689*

### `kits/omega/handlers/HP.SYS`

Printer-like character-device handler of the Omega kit (HP:)

*disks: 3; identified from: identified 2026-09-05; sha256 531643556798*

### `kits/omega/handlers/LD.SYS`

Logical-disk handler: mounts a container file as a volume

*en / ascii; disks: 2; identified from: DEC RT-11; sha256 6b81c8b61846*

### `kits/omega/handlers/LP.SYS`

Line-printer handler

*disks: 6; identified from: DEC RT-11; sha256 6d8e23cd50b1*

### `kits/omega/handlers/MZ.SYS`

Whole double-sided diskette as one 1600-block volume, cylinder 0 first

*disks: 2; identified from: handler disassembly; sha256 1a2133a72b6a*

### `kits/omega/handlers/SL.SYS`

Single-line editor - command recall and editing at the monitor prompt; the V08.00 build is signed 'SL V08.00 [SW] Сторожевых С.В. 1988' inside the driver

*ru+en / koi8-r; disks: 2; identified from: DEC RT-11 + the driver's own banner string; sha256 90360936c411*

### `kits/omega/handlers/TT.SYS`

Terminal handler

*disks: 20; identified from: factory manual; sha256 521c0931aff9*

### `kits/omega/handlers/VM.SYS`

RAM-disk handler (memory used as a drive)

*disks: 17; identified from: factory manual; sha256 2e114ef2c2c0*

</details>

<details><summary><b>kits/omega/utils/</b> — 5 files</summary>

### `kits/omega/utils/DIR.SAV`

DIR V05.03 with Russian messages - the cut of the ОМЕГА disks 059, 064 and 172, 165 bytes apart from the other Russian build

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran; disks: 4; identified from: factory manual; the the ОМЕГА kits build; sha256 b2083ab1c5af*

### `kits/omega/utils/DUMP.SAV`

DUMP V05.07 - the build of the ОМЕГА kits (059, 062, 064, 172)

*written in assembler (no runtime library); text; en / ascii; cross-run: ran; disks: 5; identified from: DEC RT-11; the the ОМЕГА kits build; sha256 5ed26b1e1fa7*

### `kits/omega/utils/DUP.SAV`

DUP V05.28 with Russian messages («Несоответствие версий») - the ОСА, ОМЕГА and Rodionov disks alike

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran — prompt; answers ?DUP-F-Недопустимаякоманда*; disks: 11; identified from: factory manual; the the ОМЕГА kits build; sha256 f6591f37ae56*

### `kits/omega/utils/HELP.SAV`

RT-11 HELP in two builds: the Russian-localized one (50176 B, «?HELP-F-Не найден файл HELP.MLB»), carried by the ОСА System2, Rodionov's 065 and vvv disk4, and DEC's untranslated V05.04 (69632 B, «What topic do you want help with?») from the Омега disk 062 - each in the folder of its kit. Both need HELP.MLB, the help library, which no disk preserved; HELP.TXT is its text

*written in assembler (no runtime library); text; en / ascii; cross-run: ran; disks: 1; identified from: strings of both builds 2026-09-06; the DEC's originals build; sha256 67d7793f5cfb*

### `kits/omega/utils/PIP.SAV`

PIP V05.14 with Russian messages («?PIP-F-Нет файла») - the build of every ОСА, ОМЕГА and Rodionov disk

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran — prompt; answers ?PIP-F-НетфайлаDK:NOSUCH.XXX*; disks: 15; identified from: factory manual; the the ОМЕГА kits build; sha256 eebe08107f1c*

</details>

</details>

<details><summary><b>kits/osa/</b> — 10 files</summary>

<details><summary><b>kits/osa/handlers/</b> — 6 files</summary>

### `kits/osa/handlers/DZ.SYS`

Floppy-disk handler

*disks: 8; identified from: factory manual; sha256 9b79707be0f0*

### `kits/osa/handlers/EM.SYS`

The instruction-set emulator handler: SET EM ON makes the missing EIS/FIS instructions work by trapping vector 10.  The canonical use, from Alex_K's forum post (zx-pk 15146 p.31): SET EM ON, GET CMOV, D 1002=44760, ST

*disks: 1; identified from: forum usage + our experiment; sha256 3f0e1d671b5a*

### `kits/osa/handlers/SL.SYS`

Single-line editor - command recall and editing at the monitor prompt; the V08.00 build is signed 'SL V08.00 [SW] Сторожевых С.В. 1988' inside the driver

*en / ascii; disks: 2; identified from: DEC RT-11 + the driver's own banner string; sha256 f9885698de8c*

### `kits/osa/handlers/TT.SYS`

Terminal handler

*disks: 20; identified from: factory manual; sha256 521c0931aff9*

### `kits/osa/handlers/VM.SYS`

RAM-disk handler (memory used as a drive)

*disks: 17; identified from: factory manual; sha256 2e114ef2c2c0*

### `kits/osa/handlers/VS.SYS`

Sound-device handler — not video despite the name

*disks: 9; identified from: factory manual; sha256 fb282b1054f6*

</details>

<details><summary><b>kits/osa/shells/</b> — 1 file</summary>

### `kits/osa/shells/RS.SYS`

EmeSoft's 'RT11 profShell' v06.05 (1990, build 13-Sep-94): a Norton-Commander-style disk shell packed into a 26-block pseudo-device handler. File panel with marks, and the whole toolbox on hotkeys - COPY/DELETE/RENAME/SQUEEZE/PROTECT/TYPE/DUMP (words/bytes/radix)/CREATE/INIT/MOUNT/BOOT/COPY-BOOT - plus LD containers, bad-block scan, search, saved state, and the greeting 'Жми на клавишу, не бойся ...'. Start with R RS.SYS or SET RS ON; uses EIS, so needs GETEML/EM on this machine. The System2/bg0515/superBAK7 and Buhgal monitors print its banner at boot - profShell is built into those builds

*ru / koi8-r; disks: 1; identified from: strings + live run 2026-09-05 (panel and help screen captured; traps to vector 10 without the instruction emulator); sha256 484be60cb8a9*

</details>

<details><summary><b>kits/osa/utils/</b> — 3 files</summary>

<details><summary><b>kits/osa/utils/rs/</b> — 1 file</summary>

### `kits/osa/utils/rs/RESORC.SAV`

RESORC V05.69, Russian - the cut of the RS-shell ОСА disks (System2, bg0515, superBAK7), two blocks (800 bytes) apart from the plain one

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 3; identified from: DEC RT-11; the ОСА with the RS profShell build; sha256 732e0b358c14*

</details>

### `kits/osa/utils/DIR.SAV`

DIR V05.03 with Russian messages («Неправильная версия монитора») - the cut of the ОСА disks, ОМЕГА 062/063 and Rodionov's

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran; disks: 7; identified from: factory manual; the the ОСА kits build; sha256 374dfc435c46*

### `kits/osa/utils/RESORC.SAV`

RESORC V05.69 with Russian messages («Версия(и) =») - the plain ОСА disks and Rodionov's 065

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 5; identified from: DEC RT-11; the the ОСА kits build; sha256 39fd8396335b*

</details>

</details>

<details><summary><b>kits/rodionov/</b> — 11 files</summary>

<details><summary><b>kits/rodionov/handlers/</b> — 5 files</summary>

### `kits/rodionov/handlers/DZ.SYS`

Floppy-disk handler

*disks: 2; identified from: factory manual; sha256 3ce58aecd03e*

### `kits/rodionov/handlers/NL.SYS`

Null-device handler

*disks: 2; identified from: DEC RT-11; sha256 aa16988e29b7*

### `kits/rodionov/handlers/TT.SYS`

Terminal handler

*disks: 2; identified from: factory manual; sha256 cb5ceb6df72c*

### `kits/rodionov/handlers/VM.SYS`

RAM-disk handler (memory used as a drive)

*disks: 17; identified from: factory manual; sha256 2e114ef2c2c0*

### `kits/rodionov/handlers/VS.SYS`

Sound-device handler — not video despite the name

*disks: 9; identified from: factory manual; sha256 fb282b1054f6*

</details>

<details><summary><b>kits/rodionov/shells/</b> — 4 files</summary>

### `kits/rodionov/shells/INSTR.DOC`

«Инструкция по работе с компьютером МС 0515» - Rodionov's one-page operating instruction for his ROSA disk: insert the ROSA diskette, power on, turn the drive latch when the music plays, enter the date at «Дата [дд-мм-гг]?», print files from the commander

*ru / koi8-r; disks: 1; identified from: read 2026-09-06; sha256 8f1519cec69e*

### `kits/rodionov/shells/REKROS.DOC`

A framed advertisement sheet for Rodionov's system: «Сервисная программа … сделано на МС0515, используя RT15SJ.SYS, R15.SAV, ROSA.SAV» - copying, renaming, protection of files…

*ru / koi8-r; disks: 1; identified from: read 2026-09-06; sha256 106e148fbc55*

### `kits/rodionov/shells/REKSYS.DOC`

«Сравнительные характеристики существующего и предлагаемого программного обеспечения» - Rodionov's comparison table of his programs against the standard ones, drawn in pseudo-graphics

*ru / koi8-r; disks: 1; identified from: read 2026-09-06; sha256 7d976906483d*

### `kits/rodionov/shells/ROSA3.SAV`

ROSA Commander v1.3 (c) 1993 Rodionov Sergey Alekseevich, Voronezh - his two-panel file manager, launched by his boot: asks the date numerically, then panels DZ0: (left) and DZ2: (right) with a file-info box, 'protected from deletion' flags, PM help key. Needs LOAD VM: and is DZ-bound: it hardcodes DZ0:/DZ2:, so on a DV-booted Omega it dies ('?MON-F-No device', or ODT after LOAD DZ); runs fine on the DZ-pair exemplar. Refuses a copy that fails its author check

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: error 7/8 — ?MON-F-Нетустройства002146ROSACommanderv1.31993РодионовСерге; disks: 2; identified from: live on rodionov.dsk (panel screenshot) and omega.dsk 2026-09-05; sha256 b89e41c1dd2b*

</details>

<details><summary><b>kits/rodionov/utils/</b> — 2 files</summary>

### `kits/rodionov/utils/DUMP.SAV`

DUMP V05.07 as Rodionov's 065/066 carry it - one block (292 bytes) differs from the ОМЕГА build: his own touch

*written in assembler (no runtime library); text; en / ascii; cross-run: ran; disks: 3; identified from: DEC RT-11; the Rodionov's RT15SJ disks build; sha256 0ddaad7278e0*

### `kits/rodionov/utils/HELP.SAV`

RT-11 HELP in two builds: the Russian-localized one (50176 B, «?HELP-F-Не найден файл HELP.MLB»), carried by the ОСА System2, Rodionov's 065 and vvv disk4, and DEC's untranslated V05.04 (69632 B, «What topic do you want help with?») from the Омега disk 062 - each in the folder of its kit. Both need HELP.MLB, the help library, which no disk preserved; HELP.TXT is its text

*written in assembler (no runtime library); text; ru+en / koi8-r; cross-run: ran; disks: 3; identified from: strings of both builds 2026-09-06; the Rodionov's RT15SJ disks build; sha256 04d6039dcaaf*

</details>

</details>

<details><summary><b>kits/vvv/</b> — 9 files</summary>

<details><summary><b>kits/vvv/development/</b> — 2 files</summary>

### `kits/vvv/development/LINK.SAV`

LINK V05.14 (its cross-reference title reads V05.15) - the linker of the collector's ФОДОС kit

*written in assembler (no runtime library); text; en / ascii; cross-run: ran; disks: 3; identified from: DEC RT-11; the the collector's disks build; sha256 7c3ac9ded6e2*

### `kits/vvv/development/MACRO.SAV`

MACRO V05.04 - the assembler of the collector's ФОДОС kit (disk3, PAPER; disk4 as well)

*written in assembler (no runtime library); text; en / ascii; cross-run: ran; disks: 3; identified from: DEC RT-11; the the collector's disks build; sha256 69c9775f6882*

</details>

<details><summary><b>kits/vvv/format/</b> — 2 files</summary>

### `kits/vvv/format/FORMH.SAV`

The upper-surface formatter in a later edition than the ОМЕГА disks' one: the same program reassembled with its messages touched up («Поверхность отформатирована» for «заформатирована», a plain [Y/N] prompt).  Destructive - it formats the diskette in the drive

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran; disks: 1; identified from: identified 2026-09-05; the the collector's disks build; sha256 26ee03f842f5*

### `kits/vvv/format/FORML.SAV`

The lower-surface formatter in a later edition than the ОМЕГА disks' one: the same program reassembled with its messages touched up («Поверхность отформатирована» for «заформатирована»).  Destructive - it formats the diskette in the drive

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran; disks: 1; identified from: identified 2026-09-05; the the collector's disks build; sha256 63b5b54ea831*

</details>

<details><summary><b>kits/vvv/utils/</b> — 5 files</summary>

### `kits/vvv/utils/DATIME.SAV`

The DATIME of the collector's and Mihin's disks: asks the date and time at boot and sets them (English month names JAN…DEC)

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran; disks: 6; identified from: program screen; the the collector's disks build; sha256 6d728ed10477*

### `kits/vvv/utils/DIR.SAV`

DIR V05.03 with English messages («Wrong version of RT-11») - the build of the collector's ФОДОС disks and of Mihin's kits

*written in assembler (no runtime library); text; en / ascii; cross-run: ran; disks: 12; identified from: factory manual; the the collector's disks build; sha256 ca5ad185ad6d*

### `kits/vvv/utils/DUP.SAV`

DUP V05.28 with English messages («No V5 boot on volume») - the collector's and Mihin's disks

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — prompt; answers ?DUP-F-Invalidcommand*; disks: 12; identified from: factory manual; the the collector's disks build; sha256 a80f04f8da65*

### `kits/vvv/utils/PIP.SAV`

PIP V05.14 with English messages («?PIP-F-File not found») - the collector's disks (two bytes off Mihin's copy)

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — prompt; answers ?PIP-F-FilenotfoundDK:NOSUCH.XXX*; disks: 4; identified from: factory manual; the the collector's disks build; sha256 0012a08d84d0*

### `kits/vvv/utils/RESORC.SAV`

DEC's own RESORC V05.69 in English («Booted from», «KMON nesting depth», «Emulated RT-11 environment») - the untranslated original, found on the collector's disk4

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 1; identified from: identified 2026-09-05; the DEC's originals build; sha256 887b418ca5de*

</details>

</details>

</details>

<details open><summary><b>programs/</b> — 218 files</summary>

<details><summary><b>programs/autoteacher/</b> — 11 files</summary>

<details><summary><b>programs/autoteacher/lyceum-1/</b> — 1 file</summary>

### `programs/autoteacher/lyceum-1/CR.SAV`

The constructor as the lyceum's amk_1 carries it - a rebuilt copy with a KOI-7 «ВЫ УВЕРЕНЫ? (Д/Н)» prompt; all 41 blocks differ

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 1; identified from: its KOI-7 strings (ВВЕДИТЕ ВОПРОС/РАМКИ/ПРАВИЛЬНЫЙ ОТВЕТ) + 1018.QUS structure; the Лицей №1, disk amk_1 build; sha256 2fd2b99af8f7*

</details>

<details><summary><b>programs/autoteacher/mihin/</b> — 1 file</summary>

### `programs/autoteacher/mihin/CR.SAV`

The question-bank constructor as Mihin's disks carry it

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 3; identified from: its KOI-7 strings (ВВЕДИТЕ ВОПРОС/РАМКИ/ПРАВИЛЬНЫЙ ОТВЕТ) + 1018.QUS structure; the Mihin's OS-16SJ kits build; sha256 76ace27a8706*

</details>

### `programs/autoteacher/1003.DOC`

The question bank of an AutoTeacher physics test in readable form: twenty questions on the ideal gas (state equation, pressure, temperature…), each with its answer - the text the .QUS of the same name was built from

*disks: 1; identified from: content read 2026-09-06; sha256 76c6c5f305a2*

### `programs/autoteacher/1003.QUS`

AutoTeacher question file: 20 questions on the ideal gas («уравнение состояния идеального газа характеризует…»), each with its answer cut into words for the word-grid answering; the readable form is 1003.DOC

*disks: 1; identified from: content read 2026-09-06; sha256 d71a1304f540*

### `programs/autoteacher/1018.QUS`

AutoTeacher question file: physics test on the magnetic field ('МАГНИТНЫМ ПОЛЕМ НАЗЫВАЕТСЯ...') with word-grids the pupil assembles definitions from; authored with CR.SAV, played by AT.SAV

*disks: 1; identified from: content read 2026-09-05; sha256 e4773a660ef6*

### `programs/autoteacher/10L01.DOC`

The question bank of an AutoTeacher test in readable form: twelve questions on thermodynamics («термодинамика - это…»), with answers

*disks: 1; identified from: content read 2026-09-06; sha256 f99b380805d3*

### `programs/autoteacher/10L01.QUS`

AutoTeacher question file: 12 questions on thermodynamics with their answers cut into words; the readable form is 10L01.DOC

*disks: 1; identified from: content read 2026-09-06; sha256 21120d833c01*

### `programs/autoteacher/10L04.DOC`

The question bank of an AutoTeacher test in readable form: fourteen questions on resistivity and conductors («удельным сопротивлением проводника называется…»), with answers

*disks: 1; identified from: content read 2026-09-06; sha256 9ffaf3ff27e8*

### `programs/autoteacher/10L04.QUS`

AutoTeacher question file: 14 questions on resistivity and conductors with their answers cut into words; the readable form is 10L04.DOC

*disks: 1; identified from: content read 2026-09-06; sha256 7c9d28fb3964*

### `programs/autoteacher/AT.SAV`

AutoTeacher V3.10 (SB Soft Ware Ltd., 1992) - the school testing system's player: runs .QUS question files (word-grid answers), keeps pupil records in STUD.PUP; questions are authored with CR.SAV

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 4; identified from: its banner + the amk_1 disk kit; sha256 d9081e80492a*

### `programs/autoteacher/STUD.PUP`

AutoTeacher results file: 'файл данных о проверке знаний учащихся' - the pupils' test records for AT.SAV

*disks: 1; identified from: AT.SAV's own banner text; sha256 ce5714a4f2e8*

</details>

<details><summary><b>programs/basic/</b> — 43 files</summary>

### `programs/basic/COD.BAS`

Six lines: waits for a key and prints the code of every character of what INKEY$ returned

*disks: 1; identified from: read 2026-09-06; sha256 6d2c81e4d523*

### `programs/basic/DIAG.BAS`

Draws a pie chart of «WIDGET Cost Factors» - Materials, Advertising, Manufacturing - with CIRCLE arcs; a textbook example (the labels are English)

*disks: 4; identified from: read 2026-09-06; sha256 bfb0f2ce766b*

### `programs/basic/DOMIK.BAS`

Asks six numbers and draws a house from lines and PAINT fills - a drawing exercise

*disks: 2; identified from: read 2026-09-06; sha256 a7ea8500249f*

### `programs/basic/GRAF.BAS`

Moves a dot over the graphics screen with the keys 2/4/6/8, PSETting as it goes - the smallest sketchpad

*disks: 2; identified from: read 2026-09-06; sha256 de10b7c32a7f*

### `programs/basic/GRAFIK.BAS`

«Построение графиков по заданным точкам»: enters an array of points and plots it four ways - points, linear interpolation, cubic with parabolic ends, splines (a REM says GROS)

*ru / koi8-r; disks: 2; identified from: read 2026-09-06; sha256 0a8ea41e5ef0*

### `programs/basic/GRAPH.BAS`

«Программа построения трехмерного графика»: draws a 3-D bar chart of yearly figures (1991, 1992, 1993) in perspective

*ru / koi8-r; disks: 6; identified from: read 2026-09-06; sha256 c4c815affe4b*

### `programs/basic/GRFUN.BAS`

«Программа позволяет рисовать графики по формулам»: a menu of two curves, Y=X^2 and X=Y^2, plotted with PSET

*ru / koi8-r; disks: 2; identified from: read 2026-09-06; sha256 91183f3924c3*

### `programs/basic/GWFP.BAS`

«Тараканьи бега» - a cockroach race in KOI-7 text: place your bets, the runners (Янычар, Геркулес…) race on random numbers, the winner is announced

*disks: 2; identified from: read 2026-09-06; sha256 21e03fa35423*

### `programs/basic/KLD.BAS`

«Колодец» - a REM says it was taken from IBM PC BASIC: draws a well (a nest of rectangles) with LINE

*disks: 2; identified from: read 2026-09-06; sha256 239b03e7e557*

### `programs/basic/KODIR.BAS`

«Программа обработки файлов»: mode 1 writes every character of a file as its numeric code to a second file, mode 2 reads such a file back into characters - a crude encoder

*en / ascii; disks: 2; identified from: read 2026-09-06; sha256 dc0b08a25441*

### `programs/basic/KOLO.BAS`

The same «Колодец» well drawing as KLD.BAS in another copy

*disks: 2; identified from: read 2026-09-06; sha256 3b840bef538c*

### `programs/basic/KOMETS.BAS`

«Кометы»: five streaks fly left and ten fly right across the 640x200 hi-res screen forever, erased with REVERS behind them - a demo, no controls

*disks: 2; identified from: read from the source 2026-09-05; sha256 ab106482ddb9*

### `programs/basic/KWG.BAS`

Plots a parabola Y=X^2 in a character grid 80x25 drawn with text symbols (axes at column 40 / row 13), scaled by an entered factor

*en / ascii; disks: 3; identified from: read 2026-09-06; sha256 2e81f7357a31*

### `programs/basic/LAM.BAS`

«Пример цепочки программ, построения изображения и вывода звука» - a BASIC demo: draws a figure with LINE chains, then sound; a chained-programs example

*ru / koi8-r; disks: 2; identified from: read 2026-09-06; sha256 db7427607266*

### `programs/basic/LAMBAD.BAS`

«Ламбада» played through SOUND: 129 note-duration pairs in DATA statements

*disks: 6; identified from: read 2026-09-06; sha256 3d0dc29449d0*

### `programs/basic/LINES.BAS`

Asks a number L and draws L fans of lines across the screen - a LINE exercise

*disks: 3; identified from: read 2026-09-06; sha256 42745204c913*

### `programs/basic/LTR.BAS`

«Пример управления печатающим устройством»: sends ESC sequences to the printer (LPRINT) - condensed print, character set select, a defined character - a printer-control example

*ru / koi8-r; disks: 4; identified from: read 2026-09-06; sha256 490b63f74db1*

### `programs/basic/MASDIA.BAS`

Reads an M x N matrix from the keyboard, sums the elements along its main diagonal (scaled when M and N differ), replaces the ones with the sum and prints the matrix

*en / ascii; disks: 2; identified from: read 2026-09-06; sha256 b81e0c6c66fa*

### `programs/basic/MATEMA.BAS`

Four little sums printed in a row («В первой=», «Во второй=»…): squares 1..20 and the like - a first exercise in loops

*disks: 1; identified from: read 2026-09-06; sha256 39ff782cdd94*

### `programs/basic/MATR4.BAS`

Fills a 6x6 table with random numbers, prints it, bubble-sorts the 36 values and prints them again as a table

*disks: 3; identified from: read 2026-09-06; sha256 b68cf740273c*

### `programs/basic/MAYATN.BAS`

A pendulum: a line swinging from a pivot at the top of the screen, a SOUND of rising pitch at every step - twelve lines

*disks: 2; identified from: read 2026-09-06; sha256 a882815d0c9c*

### `programs/basic/NUMBER.BAS`

«Угадай число от 1 до 1000 за минимум попыток» - the guessing game: перелёт / недолёт, counts the tries, «ОГО!!!» for a lucky one

*disks: 1; identified from: read 2026-09-06; sha256 1e7f086ac152*

### `programs/basic/OBJEM.BAS`

«Программа рисует объёмную фигуру по указанным координатам»: 3-D bars of given height, length and width, a bar chart with a title - a business-graphics exercise

*ru+en / koi8-r; disks: 1; identified from: read 2026-09-06; sha256 ac46ffa5c802*

### `programs/basic/PIF.BAS`

Prints the multiplication table 1..9 as a ruled grid - «Пифагорова таблица»

*disks: 2; identified from: read 2026-09-06; sha256 8760843ce94a*

### `programs/basic/PRAW.BAC`

A road-signs test in БЕЙСИК-ОМЕГА, stored in the interpreter's COMPILEd internal form (.BAC, header «издание 1-01а»): shows its title screen PRAW.SCR, offers the instructions («проверить уровень знаний по правилам дорожного движения путем решения перфокарт»), then draws road signs - triangles, circles, rectangles - one after another with four answers each (въезд запрещен, уступи дорогу, крутой спуск, велосипедная дорожка, обгон запрещен...), fourteen questions, and prints the grade («Вы прошли тест и получили следующую оценку»).  Proved live: R BASICO, RUN PRAW.BAC starts it

*ru / koi8-r; disks: 2; identified from: strings of the file + a live run under BASICO 2026-09-06; sha256 169e0a8ae227*

### `programs/basic/PRAW.SCR`

Screen dump (16384 bytes = the whole video RAM, 320x200 colour): the title screen «Правила Дорожного Движения (дорожные знаки)» in red/yellow/green/blue letters on a brick-and-signs background - loaded by the road-signs test PRAW.BAC beside it

*disks: 2; identified from: rendered on the host 2026-09-06; PRAW.BAC strings and a live run; sha256 8ac5c277d31d*

### `programs/basic/PRFIL.BAS`

Asks a file name and prints the file line by line to the screen, with ON ERROR handling for a missing file

*en / ascii; disks: 1; identified from: read 2026-09-06; sha256 05583b95707c*

### `programs/basic/PRIM.BAS`

Counts the words in an entered sentence («В предложении … слов») and defines FNY(J)=J^2 - two small exercises in one file

*en / ascii; disks: 1; identified from: read 2026-09-06; sha256 b029fdfad4b1*

### `programs/basic/PROST.BAS`

«Таблица простых чисел от 1 до» a given bound (<1000), by trial division, with input checking

*ru / koi8-r; disks: 2; identified from: read 2026-09-06; sha256 2fcae2dd8d76*

### `programs/basic/PROST2.BAS`

Prints the primes up to 100 by counting divisors - seven lines

*disks: 2; identified from: read 2026-09-06; sha256 3135a83632f7*

### `programs/basic/RENDOC.BAS`

A recoder that sat on the collector's disk3 as REN.BAS - not his, and renamed here so that his own REN.BAS (in programs/vvv/) keeps the name: reads DZ2:EXPRES.DOC and writes DZ2:EXPR2.DOC, passing digits, punctuation and CR through and moving every other code up by 128 - KOI-7 Cyrillic to KOI-8

*disks: 2; sha256 9003a7658ba8*

### `programs/basic/SIN.BAS`

Draws a framed 100x100 box and a sine curve inside it with PSET

*disks: 1; identified from: read 2026-09-06; sha256 0585047dafe0*

### `programs/basic/SMES.BAS`

«Смесь» (a REM says from IBM PC BASIC): asks a division factor and draws random circles and lines - a graphics mix

*ru / koi8-r; disks: 1; identified from: read 2026-09-06; sha256 75156d579405*

### `programs/basic/STARS.BAS`

Starfield: ten stars drift left and ten right across the 320x200 screen forever (PSET, erased with REVERS) - a demo, no controls

*disks: 2; identified from: read from the source 2026-09-05; sha256 1d4c7f96af23*

### `programs/basic/STREET.BAS`

Draws a street in perspective - rows of houses as rectangles receding with a step - LINE exercise

*disks: 2; identified from: read 2026-09-06; sha256 d77bca2c76a7*

### `programs/basic/SUNSY1.BAS`

«Солнечная система» with the keyboard: nine planets on their orbits (radii in DATA), the planets filled with PAINT, the animation driven while the keyboard flag at 177440 is polled

*disks: 2; identified from: read 2026-09-06; sha256 43c6dcbf06bd*

### `programs/basic/SUNSYS.BAS`

«Солнечная система»: nine planets circling on orbits whose radii are in a DATA line, drawn with CIRCLE and PSET in the wide graphics mode

*disks: 2; identified from: read 2026-09-06; sha256 f4026ba68620*

### `programs/basic/UMN.BAS`

BASIC demo: prints the multiplication table three ways - a 9x9 grid, per-row listings 1..3 x 1..9, and columns 2..5 x 1..9

*disks: 1; identified from: read from the source 2026-09-06; sha256 27aacdbd1c88*

### `programs/basic/VID2.BAS`

Plots a curve from a parametric sweep (T from 40.96 to 61.36) and pokes the video registers 177740/177746 - a video-mode experiment

*disks: 2; identified from: read 2026-09-06; sha256 88d36036b308*

### `programs/basic/VIDEO.BAS`

Plots a curve from a parametric sweep (T from 40 to 60), ten lines

*disks: 2; identified from: read 2026-09-06; sha256 8841176d8fa2*

### `programs/basic/VIDEO2.BAS`

The same parametric curve as VIDEO.BAS with a finer step

*disks: 2; identified from: read 2026-09-06; sha256 5d774f31ab24*

### `programs/basic/WATCH.BAS`

An analog clock face: sixty ticks around an ellipse, hands drawn from TIME - redrawn every second

*disks: 2; identified from: read 2026-09-06; sha256 79f1c40f2db2*

### `programs/basic/ZAPK.BAS`

«Записная книжка»: a phone book kept in NAMES.DAT / TELEPH.ONE - record, read by the first letter of the surname, exit

*en / ascii; disks: 1; identified from: read 2026-09-06; sha256 9621ea012d59*

</details>

<details><summary><b>programs/covox/</b> — 22 files</summary>

### `programs/covox/100.PR`

100.PR - an 8-bit recording in the format of VLAD & ALEX's players LD1/LOAD: 8192 words, one sample in the low byte of each (the high byte zero), about two seconds at 4 kHz (at 8 kHz it plays twice too fast) - from disk 066 beside 9.PRG; decodes to sound on the host

*disks: 1; identified from: byte layout compared with 9.PRG/TLF.PRG 2026-09-06; decoded to WAV; sha256 754df60bc9f7*

### `programs/covox/101.PR`

101.PR - an 8-bit recording in the format of VLAD & ALEX's players LD1/LOAD: 8192 words, one sample in the low byte of each (the high byte zero), about two seconds at 4 kHz (at 8 kHz it plays twice too fast) - from disk 066 beside 9.PRG; decodes to sound on the host

*disks: 1; identified from: byte layout compared with 9.PRG/TLF.PRG 2026-09-06; decoded to WAV; sha256 a302685ba76d*

### `programs/covox/102.PR`

102.PR - an 8-bit recording in the format of VLAD & ALEX's players LD1/LOAD: 8192 words, one sample in the low byte of each (the high byte zero), about two seconds at 4 kHz (at 8 kHz it plays twice too fast) - from disk 066 beside 9.PRG; decodes to sound on the host

*disks: 1; identified from: byte layout compared with 9.PRG/TLF.PRG 2026-09-06; decoded to WAV; sha256 f0e70783178d*

### `programs/covox/103.PR`

103.PR - an 8-bit recording in the format of VLAD & ALEX's players LD1/LOAD: 8192 words, one sample in the low byte of each (the high byte zero), about two seconds at 4 kHz (at 8 kHz it plays twice too fast) - from disk 066 beside 9.PRG; decodes to sound on the host

*disks: 1; identified from: byte layout compared with 9.PRG/TLF.PRG 2026-09-06; decoded to WAV; sha256 6da64e375169*

### `programs/covox/105.PR`

105.PR - an 8-bit recording in the format of VLAD & ALEX's players LD1/LOAD: 8192 words, one sample in the low byte of each (the high byte zero), about two seconds at 4 kHz (at 8 kHz it plays twice too fast) - from disk 066 beside 9.PRG; decodes to sound on the host

*disks: 1; identified from: byte layout compared with 9.PRG/TLF.PRG 2026-09-06; decoded to WAV; sha256 f51d3c7ce517*

### `programs/covox/106.PR`

106.PR - an 8-bit recording in the format of VLAD & ALEX's players LD1/LOAD: 8192 words, one sample in the low byte of each (the high byte zero), about two seconds at 4 kHz (at 8 kHz it plays twice too fast) - from disk 066 beside 9.PRG; decodes to sound on the host

*disks: 1; identified from: byte layout compared with 9.PRG/TLF.PRG 2026-09-06; decoded to WAV; sha256 dc13e5c6f5a2*

### `programs/covox/107.PR`

107.PR - an 8-bit recording in the format of VLAD & ALEX's players LD1/LOAD: 8192 words, one sample in the low byte of each (the high byte zero), about two seconds at 4 kHz (at 8 kHz it plays twice too fast) - from disk 066 beside 9.PRG; decodes to sound on the host

*disks: 1; identified from: byte layout compared with 9.PRG/TLF.PRG 2026-09-06; decoded to WAV; sha256 9ee2c3db4827*

### `programs/covox/140.PR`

140.PR - an 8-bit recording in the format of VLAD & ALEX's players LD1/LOAD: 8192 words, one sample in the low byte of each (the high byte zero), about two seconds at 4 kHz (at 8 kHz it plays twice too fast) - from disk 066 beside 9.PRG; decodes to sound on the host

*disks: 1; identified from: byte layout compared with 9.PRG/TLF.PRG 2026-09-06; decoded to WAV; sha256 bf3a1affa7d4*

### `programs/covox/9.PRG`

An LD1/LOAD recording in the players' 8K-word format: 8192 words of one 8-bit sample each (high byte 0), about one second at 8 kHz, loud and clipped (23% of samples at 0/255); decoded on the host it is a recognizable sound. From Rodionov's 064/066, where the players live

*disks: 1; identified from: decoded to WAV and listened to 2026-09-06; sha256 7c3ecd4fbab7*

### `programs/covox/A`

A digital-audio recording in the VLAD & ALEX sampler format (SER4/LD1/LOAD): 32768 bytes = the 16K-word sample buffer, two 4-bit samples per byte (low nibble first), 65536 samples - about eight seconds at 8 kHz; decoded on the host it is a recognizable recording, not noise. On disk 056

*disks: 1; identified from: decoded to WAV and listened to 2026-09-06; sha256 658cdb84f5d7*

### `programs/covox/LD1.SAV`

Player/manager of the VLAD & ALEX digital-audio family (same hardware layer as SER4: home-made ADC on the Centronics port, Covox-style 4-bit output on PPI 177542): menu Exit/Load/Save/Play/Delay, loads a recording by name, plays it at a chosen delay (=sample rate); 'Thanks for use our program!' on exit

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 2; identified from: strings + shared 157700/177540/177542 hardware code with SERV4.MAC; sha256 60a2142bf442*

### `programs/covox/LOAD.SAV`

Themed build of the VLAD & ALEX audio player: banners 'This is MUPPET SHOW !' and 'This is European Top Twenty !', 'Greatest hit played.' - someone sampled the Muppet Show intro and chart hits through the home-made ADC and played them back; Load-or-Play menu, writes loader.bin. The recordings themselves survive on no disk - only the player remembers them

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 1; identified from: strings + shared hardware layer with SER4/LD1; sha256 e87f61bb511a*

### `programs/covox/SER4.BAK`

Earlier revision of SER4.PAS (program LOADER, the sampler's Pascal loader): the sample-conversion loop written differently (26 lines apart) - kept as the project's history

*en / ascii; disks: 2; identified from: diff against the source 2026-09-06; sha256 b4279724f71a*

### `programs/covox/SER4.MAC`

The MACRO-11 text PAS1 produced from SER4.PAS - the compiled recorder before assembly (1232 lines, calls INP/OUT/SETUP/DISBL of the SERV4 hardware layer)

*en / ascii; disks: 1; identified from: read 2026-09-06: PAS1 output form; sha256 f82b6f76ac91*

### `programs/covox/SER4.OBJ`

Object module of the SER4 recorder (its menu strings Loading… / Playing… / Save to file inside), LINKed with SERV4.OBJ into SER4.SAV

*en / ascii; disks: 2; identified from: strings 2026-09-06; sha256 163eb2d6f750*

### `programs/covox/SER4.PAS`

Source of the «Sound Effect's Recorder»: program LOADER - load, save, play (a delay loop per sample, interrupts off while playing) and record through the external INP/OUT/SETUP of the MACRO layer; the 16K-word buffer and the 4-bit packing Convert/Reconvert

*en / ascii; disks: 1; identified from: read 2026-09-05; sha256 681a31feda8b*

### `programs/covox/SER4.SAV`

'VLAD & ALEX present: Sound Effect's Recorder version 2.0' - homebrew digital audio: samples 4-bit sound from a home-made ADC on the CENTRONICS printer port (hand-driven STROBE via 157700, data from 177540), plays back through the MS7007 PPI port B at 177542 as a Covox-style DAC, packs two samples per byte into a 16K-word buffer, with switchable table-based digital filtering (FLTON/FLTOFF). The whole development set survives: SER4.PAS loader, SER4.MAC + SERV4.MAC hardware layer, .OBJ

*written in Pascal (source on the disks); text; en / ascii; cross-run: ran; disks: 2; identified from: SER4.PAS/SERV4.MAC sources + the program's own title screen; sha256 511a20f620fb*

### `programs/covox/SERV.MAC`

An earlier, shorter cut of the hardware layer (INP only, 61 lines): the byte input through the Centronics port, strobe bit-banged via 157700

*en / ascii; disks: 2; identified from: read 2026-09-06; sha256 4b7bf71948ac*

### `programs/covox/SERV4.MAC`

The hardware layer of the recorder: DISBL/ENABL (processor priority via MFPS/MTPS), INP - a byte from the home-made ADC on the Centronics port (strobe through 157700, data from 177400), OUT - a sample to the MS7007 PPI port B 177542, SETUP

*en / ascii; disks: 3; identified from: read 2026-09-05; sha256 486c84c53db5*

### `programs/covox/SERV4.OBJ`

Object module of SERV4.MAC

*disks: 3; sha256 596b85bf897b*

### `programs/covox/SOUND4.BAS`

A little BASIC melody recorder: keys 1-7 play the seven notes of an octave (frequencies in DATA) and are remembered, 0 plays the tune back and saves it to ZWUK.MUZ, then reads it again

*en / ascii; disks: 1; identified from: read 2026-09-06; sha256 4bfb9249f8ce*

### `programs/covox/TLF.PRG`

An LD1/LOAD recording in the players' 8K-word format (8192 words of one 8-bit sample each), about one second; decoded on the host it is a recognizable sound (TLF - a telephone?). From Rodionov's 064/066

*disks: 2; identified from: decoded to WAV and listened to 2026-09-06; sha256 10621a51f403*

</details>

<details><summary><b>programs/domnich/</b> — 4 files</summary>

<details><summary><b>programs/domnich/piton/</b> — 2 files</summary>

### `programs/domnich/piton/UDAW.PAS`

Source of ПИТОН: the rules text («игра может быть полезна учащимся младших классов при изучении темы: гласные и согласные»), the snake driven by the cursor keys eating vowels vertically and consonants horizontally, and the self-check of the .SAV

*ru / koi8-r; disks: 2; identified from: read 2026-09-05; sha256 9fc29dee1033*

### `programs/domnich/piton/UDAW.SAV`

Educational snake game 'ПИТОН' for junior schoolchildren (vowels eaten vertically, consonants horizontally), by Домнич Александр for IVF 'МИКРОТЕХ', Voronezh 1994, 6 difficulty levels. Its true name is UDAW.SAV: the program opens 'udaw.sav' (ASCII literal at 0x1306) and sums the first 1000 words - OF ITSELF; the sum of this very binary is exactly the expected -27004, so it is a self-integrity check against renaming/tampering, and a failed check prints 'Привет хакерам!!'. The surviving copies were renamed to .EXE, which is what broke them - put back as UDAW.SAV it runs whole, no key needed

*written in Pascal (source on the disks); text; ru+en / koi8-r; cross-run: ran; disks: 2; identified from: user's insight 2026-09-05, proved: sum(first 1000 words of UDAW.EXE) = -27004; renamed copy runs clean with no taunt; UDAW.PAS + EXE strings; shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 1c5bad7a40b5*

</details>

### `programs/domnich/CALEND.PAS`

Source of the perpetual calendar, signed «Домнич А.В 16-06-94г.» in its header: prints any year 1583..5000 as a table three months wide (shmc=3) into an output file, Russian month names

*ru / koi8-r; disks: 2; identified from: read 2026-09-05; sha256 d891fc636350*

### `programs/domnich/NEWTON.FOR`

Newton's method for a system of nonlinear equations - «Решение системы» - in FORTRAN, header «13.05.94 Fortran/FODOS-2», «программист Домнич Александр»

*ru / koi8-r; disks: 2; identified from: read 2026-09-05; sha256 a58207d8f995*

</details>

<details><summary><b>programs/games-basic/</b> — 14 files</summary>

### `programs/games-basic/A.BAS`

Picture in IBM-PC-style BASIC (SCREEN 0, CIRCLE/LINE/PAINT): a cartoon head with two big round ears, eyes and a nose over a body, two rows of slanted strokes at the sides and a pedestal at the bottom - a still drawing, no interaction

*disks: 2; identified from: read from the source 2026-09-05; sha256 f76dc1330530*

### `programs/games-basic/ATAKA.BAS`

FRAGMENT of an arcade game «ATAKA» (1 KB of a much longer listing - line numbers jump from 11 to 230 to 5500): a rules screen («КЛАВИШИ УПРАВЛЕНИЯ», «НАЖМИТЕ ПРОБЕЛ ДЛЯ ПРОДОЛЖЕНИЯ»), INKEY$ control, PUT-sprite graphics in SCREEN 3, DATA tables; too little survived to run

*ru / koi8-r; disks: 1; identified from: read from the source 2026-09-05; sha256 37e5019890fb*

### `programs/games-basic/BIZNES.BAS`

«БИЗНЕС - экономическая игра» (Воронеж, 11.92): a Monopoly-style board game for 1-4 players (alone against the computer): 112 cells of firms - BBC, BOING, IBM, FORD, AUDI, SONY, MERSEDES-BENZ, CHRISTIAN DIOR... - bought for «cheques», rent to the owner, БАНК / ШАНС / КЛАД / вор! cells with 17 chance cards («вы разбили зеркало в ресторане», «ваш дядя умер и оставил кучу долгов»); ends with the «пьедестал почёта» and a high score kept on disk in BIZNES.DAT; E at the dice prompt ends the game

*ru+en / koi8-r; disks: 2; identified from: read from the source 2026-09-05; sha256 6f7ae2b05bf2*

### `programs/games-basic/EYES.BAS`

«Мигалка»: a hundred times flips the screen colours between two palettes (COLOR 0,2,7 / 0,1,7 with CLS) with two alternating SOUND tones - a strobe/siren effect

*disks: 1; identified from: read from the source 2026-09-05; sha256 f1e2266ab392*

### `programs/games-basic/FOOTB2.BAS`

Text football, Динамо vs Спартак: the ball is in one of zones 0-6, you enter the zone to move it to, the computer answers by chance - interception, a shot at goal from zone 6 («удар по воротам»), the keeper, «мазила», fouls with penalties («игра рукой / грубая игра - одиннадцатиметровый»), offside («судью на мыло»); first to 10 goals or 200 moves. This copy is a terminal capture (it begins with «.TY DX0:FOOT.BOL» - the program came from a machine with RX floppies) in KOI-7 transliteration

*en / ascii; disks: 2; identified from: read from the source 2026-09-05; sha256 034a63e9fc68*

### `programs/games-basic/FOOTBO.BAS`

The same Динамо-Спартак text football as FOOTB2.BAS, partly re-typed with Cyrillic messages («мяч у 4», «удар по воротам», «мазила!! свободный удар», «судью на мыло!!!»)

*ru+en / koi8-r; disks: 1; identified from: read from the source 2026-09-05; sha256 a1a8ce7a4f28*

### `programs/games-basic/HANGMA.BAS`

Hangman («виселица») for two: one player types the secret word blind, the other guesses whole words; each miss draws a piece of the gallows and the man with LINE/CIRCLE, seven misses end with «Самоубийца!!!», a hit with «Поздравляю! Вы УГАДАЛИ слово!»

*en / ascii; disks: 2; identified from: read from the source 2026-09-05; sha256 5badcdee1a5d*

### `programs/games-basic/KORABL.BAS`

«Кораблик»: draws a little ship - hull, mast, flag - with LINE and fills it with PAINT (IBM-PC-BASIC style, SCREEN 0); a still picture

*disks: 3; identified from: read from the source 2026-09-05; sha256 d042fe84bc8b*

### `programs/games-basic/NONAME.BAS`

Graphics-and-POKE experiment: draws a fan of points with PSET along rotating rays (J*SIN(A), J*COS(A)) while POKEing computed values into 65504/65507 (0o177740/177743) - an untitled test

*disks: 2; identified from: read from the source 2026-09-05; sha256 6ab998870586*

### `programs/games-basic/OLIMP.BAS`

Three olympiad-style exercises in one file: reverse a typed phrase (runs to STOP); then, after the STOP, find the equal pair among ten numbers, and print a 3x3 matrix with row and column sums (PRINT USING)

*en / ascii; disks: 2; identified from: read from the source 2026-09-05; sha256 fd48c0944ce2*

### `programs/games-basic/OTGADA.BAS`

«Отгадай»: the first player types five characters blind (INKEY$, no echo), the second guesses the word until it matches - «Вы угадали слово за n попыток»

*disks: 2; identified from: read from the source 2026-09-05; sha256 f54332728592*

### `programs/games-basic/T6.BAS`

Unfinished skeleton of a driving game: a menu (1-CHANGE SPEED, 2-START GAME, 3-CHANGE MILES), an 80x25 character field with two lane markers > <, a random wobble and a key handler - never reaches play

*disks: 1; identified from: read from the source 2026-09-05; sha256 9b435cea6ef4*

### `programs/games-basic/TENNIS.BAS`

BASIC Pong with sprites (TENNIS.SPT): your racket on the left is moved through the joystick port (PEEK(-158) = 177542, eight directions), the computer's racket on the right follows the ball, scores at the top corners, SOUND on every bounce and goal; unrelated to the assembler TEN.SAV

*ru / koi8-r; disks: 2; identified from: read from the source 2026-09-05; sha256 9a5af6fa9936*

### `programs/games-basic/TENNIS.SPT`

Sprite table of TENNIS.BAS (SPRITE BLOAD): the ball, the rackets and the net as 8x8 patterns - 2560 bytes in the БЕЙСИК-ОМЕГА sprite-file layout (it carries the interpreter's own error strings)

*disks: 2; identified from: bytes 2026-09-06; sha256 4f406425d80e*

</details>

<details><summary><b>programs/lyceum1/</b> — 39 files</summary>

<details><summary><b>programs/lyceum1/lyceum-1/</b> — 1 file</summary>

### `programs/lyceum1/lyceum-1/ROBA.SAV`

ROBA as amk_1 carries it

*written in Pascal (source on the disks); graphics; en / ascii; cross-run: ran; disks: 1; identified from: read 2026-09-06; the Лицей №1, disk amk_1 build; sha256 d13857061873*

</details>

<details><summary><b>programs/lyceum1/lyceum-2/</b> — 1 file</summary>

### `programs/lyceum1/lyceum-2/ROBA.SAV`

ROBA as amk_2 carries it - another build, all 21 blocks differ

*written in Pascal (source on the disks); text; en / ascii; cross-run: ran; disks: 1; identified from: read 2026-09-06; the Лицей №1, disk amk_2 build; sha256 6d4df27d4a2e*

</details>

### `programs/lyceum1/1003`

A lab results sheet in the lyceum's format («работу выполняли ученики 10А класса», two pupils' names, then the table of t1, t2, P2, P1 and the error) - the same layout as the 10A….DAT files, written by the gas-law program ZAM

*disks: 1; identified from: content read 2026-09-06; sha256 bef983996a8b*

### `programs/lyceum1/1003L.COM`

Startup command file of a lyceum lab station: SET TT QUIET, RUN ZASTL (the title screen), RUN ZAM (the gas-law lab program)

*disks: 1; identified from: content read 2026-09-06; sha256 2d46e9bc454a*

### `programs/lyceum1/10ALEN.DAT`

A results sheet the lyceum's gas-law lab program writes: «работу выполняли ученики 10А класса», the two pupils' names, then per experiment t1, t2, P2, P1 and the error («равенство выполняется с погрешностью…») - pair LEN

*disks: 1; identified from: content read 2026-09-06; sha256 be2e4fabb730*

### `programs/lyceum1/10APOR.DAT`

A results sheet the lyceum's gas-law lab program writes: «работу выполняли ученики 10А класса», the two pupils' names, then per experiment t1, t2, P2, P1 and the error («равенство выполняется с погрешностью…») - pair POR

*disks: 1; identified from: content read 2026-09-06; sha256 7606c488597d*

### `programs/lyceum1/10APRG.DAT`

A results sheet the lyceum's gas-law lab program writes: «работу выполняли ученики 10А класса», the two pupils' names, then per experiment t1, t2, P2, P1 and the error («равенство выполняется с погрешностью…») - pair PRG

*disks: 1; identified from: content read 2026-09-06; sha256 2bb8683d47b5*

### `programs/lyceum1/10ASRP.DAT`

A results sheet the lyceum's gas-law lab program writes: «работу выполняли ученики 10А класса», the two pupils' names, then per experiment t1, t2, P2, P1 and the error («равенство выполняется с погрешностью…») - pair SRP

*disks: 1; identified from: content read 2026-09-06; sha256 42c8d8c7120e*

### `programs/lyceum1/10AWAR.DAT`

A results sheet the lyceum's gas-law lab program writes: «работу выполняли ученики 10А класса», the two pupils' names, then per experiment t1, t2, P2, P1 and the error («равенство выполняется с погрешностью…») - pair WAR

*disks: 1; identified from: content read 2026-09-06; sha256 308f1bc1cba6*

### `programs/lyceum1/10AWAT.DAT`

A results sheet the lyceum's gas-law lab program writes: «работу выполняли ученики 10А класса», the two pupils' names, then per experiment t1, t2, P2, P1 and the error («равенство выполняется с погрешностью…») - pair WAT

*disks: 1; identified from: content read 2026-09-06; sha256 729b1ec976eb*

### `programs/lyceum1/11BMMM.DAT`

A results sheet of class 11Б («результаты вычислений … работу выполнили учащиеся 11Б класса»): a computed value, its interval and the error 7.8%

*disks: 1; identified from: content read 2026-09-06; sha256 93ba9e944941*

### `programs/lyceum1/HIM.PAS`

Program kislorod - the chemistry coursework «Кислород и его характеристика», title screen «Россия, г. Воронеж, Лицей №1» - menus of the properties of oxygen; the object PROBA.OBJ of the same program names its author, Чепков Александр, 1992

*disks: 1; identified from: read 2026-09-06; sha256 c8a89e165e9a*

### `programs/lyceum1/HIM.SAV`

Chemistry courseware, lesson "Oxygen and its properties"; Voronezh Lyceum No. 1, A. Shchepkov, 1992

*written in Pascal (source on the disks); text; en / ascii; cross-run: ran; disks: 2; identified from: program screen; sha256 469238424505*

### `programs/lyceum1/IGOR.PAS`

Program Laborator - the physics lab on the induction of a magnet's field: coil (катушка), magnet, galvanometer; asks the class and two pupils' names, averages the measurements and prints the relative error; 1992

*en / ascii; disks: 1; identified from: read 2026-09-05; sha256 519b5ec609e4*

### `programs/lyceum1/IGOR.SAV`

Physics coursework: measuring the induction of a permanent magnet's field, with a drawing of the school building; I. Druzhinin, Lyceum No. 1, 1992

*written in Pascal (source on the disks); text; en / ascii; cross-run: ran; disks: 1; identified from: program screen; sha256 f24fe2ca67bc*

### `programs/lyceum1/INSTR.TXT`

«Ход работы» of the magnetic-induction lab (IGOR): measure the coil's diameter, compute its cross-section, count the turns…

*disks: 1; identified from: read 2026-09-06; sha256 9e084f3296e8*

### `programs/lyceum1/INSTR1.TXT`

The procedure of the gas-law lab (ZAM): measure the temperature in the vessel of hot water, lower a glass tube closed end down…

*disks: 1; identified from: read 2026-09-06; sha256 8040b3fa1d0b*

### `programs/lyceum1/LIN.C`

Source of LINE.SAV: point() XORs pixels into VRAM at 16384 (0o40000), line() by recursive midpoint subdivision, main asks two endpoints in a loop - with the scanf-without-& and self-recursion bugs intact

*disks: 1; identified from: read in full 2026-09-05; sha256 a3a5660841e4*

### `programs/lyceum1/LINE.SAV`

Line-drawing experiment in Whitesmiths C (source LIN.C beside it): asks x0/y0/x1/y1 at a '#' prompt and draws on the 640x200 hi-res screen by direct VRAM access (short* at 16384, XOR-points, 80 bytes a row), lines by recursive midpoint subdivision. Textbook beginner bugs preserved: scanf without &, so any input crashes to ODT - the 'debugger' the old probe description saw was the C runtime's register dump; the x0>x1 case recurses on itself; horizontal lines paint the full screen width

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 1; identified from: LIN.C read in full + live run 2026-09-05; sha256 1dfeccbe24a7*

### `programs/lyceum1/LP.SAV`

Working line-drawer from the amk_2 lab disk (Pascal): asks x1/y1/x2/y2 in a loop and draws the segment on the graphics screen. The same exercise as the C LINE.SAV beside it - but this one works (no scanf-without-& to crash it). Not to be confused with the LP.SYS printer handler

*written in high-level (runtime library linked); en / ascii; cross-run: ran; disks: 1; identified from: live run 2026-09-05: (10,10)-(300,150) drawn, loops for the next pair; sha256 df7035955783*

### `programs/lyceum1/LUD.PAS`

Not a program despite the extension: the theory text of the latent-heat lab (heat given to a solid, melting, «при достижении температуры плавления…»), the text LUDA10 shows

*disks: 1; identified from: read 2026-09-06; sha256 eca4732878a5*

### `programs/lyceum1/LUDA10.PAS`

Program work - the latent-heat lab: shows the theory from a text file, takes the measurements, computes averages and errors; 1992

*disks: 1; identified from: read 2026-09-05; sha256 b4178198792c*

### `programs/lyceum1/LUDA10.SAV`

Physics coursework: latent heat of fusion and specific heat of paraffin; L. Borodkina, Lyceum No. 1, 1992.  Uses the shared ZASTL title screen

*written in Pascal (source on the disks); text; en / ascii; cross-run: ran; disks: 1; identified from: program screen; sha256 ba2af509cdbc*

### `programs/lyceum1/OLGA.SAV`

Coursework in the Lyceum No. 1 series; asks for the number of experiments (at least two)

*written in high-level (runtime library linked); graphics; en / ascii; cross-run: ran; disks: 1; identified from: program screen; sha256 ce63f291d8f7*

### `programs/lyceum1/PROBA.COM`

Build recipe of PROBA: PAS1 → MACRO → LINK with LD4:PASGRF, LD4:PAS1 and DZ:PASLIB, then COPY of the .SAV and .PAS to DZ: - the lyceum's Pascal toolchain laid out on logical disks

*disks: 1; identified from: read 2026-09-06; sha256 eba078f4a02a*

### `programs/lyceum1/PROBA.OBJ`

Object module of a build of the kislorod (HIM) program - its title strings inside name the author: «Разработал: Чепков Александр, 1992 г.»

*disks: 1; identified from: strings 2026-09-06; sha256 827505a1e9ac*

### `programs/lyceum1/PROBA.SAV`

Carries the standard FORTRAN/Pascal runtime error table ("TRAP TO 4", "NOT A VALID DEVICE", "I/O CHANNEL NOT OPEN"); a compiled test program that prints nothing on its own

*written in high-level (runtime library linked); text; en / ascii; cross-run: exited; disks: 1; identified from: strings in the file; sha256 6d379afe8b34*

### `programs/lyceum1/ROBA.PAS`

Source of ROBA.SAV, program grred: a line-drawing editor with line/point/vpeekb/vpokeb externals that keeps 50 lines in an array and writes them out as «line(...);» Pascal statements

*disks: 1; identified from: read 2026-09-06; sha256 1ca1e050df63*

### `programs/lyceum1/ROK.TXT`

An essay «Введение» on computers in Russian school education - the report that accompanied the lyceum coursework (cites Мякишев-Буховцев's physics textbook)

*disks: 1; identified from: read 2026-09-05; sha256 e5e59a55887d*

### `programs/lyceum1/ROO.DAT`

Drawing file of the grred line editor (ROBA.SAV): «line(x0,y0,x1,y1);» statements, 50 of them, all zeros - an empty drawing

*disks: 1; identified from: read 2026-09-06; sha256 f68b9a31319c*

### `programs/lyceum1/SOWLIT.REA`

Not a program: a literature essay «Тема исторической памяти в современной литературе» (Гроссман, Рыбаков, Ахматова, Твардовский, Домбровский) - a pupil's composition kept on the lyceum disk

*disks: 1; identified from: read 2026-09-06; sha256 5763c5d75f1a*

### `programs/lyceum1/TEOR.TXT`

«Теория» of the magnetic-induction lab: the approximate value of the field at a magnet's pole, the field taken as uniform…

*disks: 1; identified from: read 2026-09-06; sha256 a422eb05506f*

### `programs/lyceum1/TEORT1.TXT`

Theory text of the gas lab: the properties of the gaseous state, pressure on the vessel walls, dependence on temperature and volume

*disks: 1; identified from: read 2026-09-06; sha256 1c6ddc877114*

### `programs/lyceum1/WEEK.PAS`

Program work - an electrical lab: voltage and current readings U(пр.), I(пр.) per experiment, averages and the relative error, the shared menu («для выхода в меню нажмите ВВОД»); 1992

*disks: 1; identified from: read 2026-09-06; sha256 b34e76f3de6e*

### `programs/lyceum1/WP.DAT`

Drawing file of the grred line editor (ROBA.SAV), one «line(...)» per line, all zeros - an empty drawing

*disks: 1; identified from: read 2026-09-06; sha256 b293bbe3536f*

### `programs/lyceum1/ZAM.PAS`

Program p3 - the gas-law lab: enters the temperatures of hot and cold water, the length of the water column and its height in the cold vessel, computes P1/P2 and the error, and writes the results sheet with the class and two pupils' names (the 10A….DAT files)

*en / ascii; disks: 1; identified from: read 2026-09-06; sha256 dfe9171b27d4*

### `programs/lyceum1/ZAM.SAV`

School program: asks which class you are in (for example 10B or 10A)

*written in Pascal (source on the disks); graphics; en / ascii; cross-run: ran; disks: 1; identified from: program screen; sha256 92ecadab9f85*

### `programs/lyceum1/ZASTL.PAS`

Source of the shared title screen: «Россия, 1992, г. Воронеж, Лицей 1 - разработал лицеист Торохов Александр»

*disks: 1; identified from: read 2026-09-05; sha256 b7ec494c782c*

### `programs/lyceum1/ZASTL.SAV`

The title screen the Lyceum No. 1 coursework programs share: a drawing of the school, "Russia, 1992, Voronezh", by the pupil A. Torokhov

*written in Pascal (source on the disks); text; en / ascii; cross-run: ran; disks: 1; identified from: program screen; sha256 26cb8633555d*

</details>

<details><summary><b>programs/ms0111/</b> — 11 files</summary>

### `programs/ms0111/EPP.BAK`

Earlier revision of EPP.MAC, one line shorter (no TST @#177552 poll) - kept as the project's history

*disks: 1; identified from: diff against the source 2026-09-06; sha256 8a5168b58f34*

### `programs/ms0111/EPP.MAC`

Nine lines: writes the constant 47 to the register 173406 and exits - initialises the link adapter of the МС0111 complex

*disks: 1; identified from: read 2026-09-06; sha256 7beec5676461*

### `programs/ms0111/EPP.OBJ`

Object module of EPP.MAC

*disks: 1; sha256 c7ff2749fa1e*

### `programs/ms0111/EPP.SAV`

Link-channel initializer from the work diskette 056 of the КВИ «Электроника МС0111» complex: an 8251-style UART setup sequence into 173206 (dummy/mode/command bytes) plus 173406, then a test of 177552; run before TERM. Source EPP.MAC survives beside it

*written in assembler (source on the disks); text; cross-run: exited; disks: 1; identified from: EPP.MAC read in full; 056 disk context via TERM.TXT; sha256 8e1e2cba7f5b*

### `programs/ms0111/KUBUS.BAK`

Earlier revision of KUBUS.MAC with different patch addresses (21 lines apart) - kept as the project's history

*disks: 1; identified from: diff against the source 2026-09-06; sha256 8e1ef0a4f41d*

### `programs/ms0111/KUBUS.MAC`

Fourteen lines: stores 13727 at 125464 (a patch into memory) and exits - the KUBUS fix of the complex

*disks: 1; identified from: read 2026-09-06; sha256 06fe7ebe8c88*

### `programs/ms0111/KUBUS.OBJ`

Object module of KUBUS.MAC

*disks: 1; sha256 04053a794d11*

### `programs/ms0111/KUBUS.SAV`

Ten-word in-memory patch from the work diskette 056 of the КВИ «Электроника МС0111» complex: pokes a polling sequence for I/O register 175200 (the link adapter) into code loaded at 125464 and exits. Source KUBUS.MAC survives beside it

*written in assembler (source on the disks); text; cross-run: exited; disks: 1; identified from: KUBUS.MAC read in full; 056 disk context via TERM.TXT; sha256 14ef320efc86*

### `programs/ms0111/PIC.SAV`

Extended-memory mapping TEST from the work diskette 056 of the КВИ «Электроника МС0111» complex: takes a file at its CSI '*' prompt, asks 'poehali?' and walks the mapped-memory API - create region, create window, map window, read/write/remap, reporting 'remap OK / read OK / write OK' per step (also prints 'user mode'/'digit mode'). Under our SJ monitors the mapping step fails with 'ERROR in macro or I-O error 22' - it expects the multi-user/XM environment of the complex's central machine world

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — prompt; answers ?CSI-F-Файлненайден*; disks: 1; identified from: strings + live run 2026-09-05; sha256 7982d95a8635*

### `programs/ms0111/PIC1.SAV`

PIC.SAV with eleven bytes changed - ten size constants 6->8 and one address 040->044: the same memory-mapping test rebuilt for a larger window/region. An engineer's parameter sweep preserved as two binaries

*written in assembler (no runtime library); text; en / ascii; cross-run: ran — prompt; answers ?CSI-F-Файлненайден*; disks: 1; identified from: byte diff against PIC.SAV; sha256 b7bda7f8e81a*

### `programs/ms0111/TERM.TXT`

«Работа в режиме эмуляции терминала центральной ЭВМ» - the check-out procedure of the КВИ «Электроника МС0111» complex, on the work diskette 056 only: the complex is TERM.SAV on the ПЭВМ «Электроника МС0515» under ОСА and DEMO.SAV on the central ЭВМ «Электроника МС0108» under ФОДОС-4 with the multi-user monitor TS V6.1, and the text walks the check-out - DU then TSX on the central machine, R TERM on ours, «Линия #N» on the screen.  Nine blocks; the one-block TERM.TXT of the other disks is a different document

*text; ru / koi8-r; disks: 1; identified from: content read 2026-09-22; sha256 15e2f32e5d85*

</details>

<details><summary><b>programs/muzred/</b> — 2 files</summary>

### `programs/muzred/REKL.HLP`

Re-created melody file for ZASTM (the original is lost): integers ending in 0, the note list the advert plays - OURS, not a recovered file

*identified from: written for the emulator's demo disk; sha256 *

### `programs/muzred/ZASTM.SAV`

Advertising splash of the Muzykalnyj Redaktor (FMG, Voronezh 1994): animated logo plus a melody looping until ENTER, which exits to the monitor; it chains to nothing. Reads REKL.HLP (lost) as a list of integers terminated by 0 - unterminated data draws a 'Bad integer' each cycle. The editor itself survives nowhere - only MUZRED.SCR remains

*written in high-level (runtime library linked); graphics; en / ascii; cross-run: ran; disks: 2; identified from: probe experiments 2026-09-05: synthetic integers paint the full logo, a trailing 0 (or -1) ends the read cleanly; ENTER exits, SPACE does nothing; shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 641e292f57ef*

</details>

<details><summary><b>programs/pascal/</b> — 19 files</summary>

### `programs/pascal/BIO.PAS`

Source of the biorhythm calculator: the three cycles plotted as a text chart 64 characters wide, English month names (MAR…FEB), date arithmetic in records - a textbook program

*en / ascii; disks: 2; identified from: read 2026-09-06; sha256 fbafdfec17a0*

### `programs/pascal/BIO.SAV`

Biorhythm calculator; asks for a date of birth (yyyy mm dd)

*written in Pascal (source on the disks); text; ru+en / koi8-r; cross-run: ran; disks: 1; identified from: program screen; sha256 d0042cfa6d83*

### `programs/pascal/BIORIT.PAS`

A biorhythm program written entirely with Russian identifiers (PROGRAM биоритмы; TYPE год, месяц, дата; FUNCTION високос) - prints the month's chart with +/- halves; from a Russian Pascal textbook

*ru / koi8-r; disks: 2; identified from: read 2026-09-06; sha256 2a6bcd80b907*

### `programs/pascal/CCC.PAS`

program calculator - an expression calculator: reads a line, scans digits, additive and multiplicative operators and separators (Wirth-style sets of char), evaluates with REAL results

*en / ascii; disks: 2; identified from: read 2026-09-06; sha256 136d515451c4*

### `programs/pascal/CELFAR.PAS`

«Таблица значений градусов температуры по Цельсию и Фаренгейту»: asks the start, end and step and prints the conversion table

*ru / koi8-r; disks: 2; identified from: read 2026-09-06; sha256 089a3027baad*

### `programs/pascal/CLOCK.PAS`

Source of the graphics analog clock: «Введи время.. чч мм сс», the dial and three hands, the second as a calibrated delay loop

*ru / koi8-r; disks: 2; identified from: read 2026-09-05; sha256 ced3e99c7f86*

### `programs/pascal/CLOCK.SAV`

Graphics ANALOG clock: asks hh mm ss (the machine has no battery clock to ask instead), then draws a dial at the centre of the 320x200 screen and moves hands of length 30/60/80. Its 'one second' is an empty delay loop of 57000 iterations calibrated to the real 7.5 MHz CPU (for q:=-29000 to 28000) - so its drift is a direct measure of an emulator's cycle accuracy

*written in Pascal (source on the disks); text; en / ascii; cross-run: ran; disks: 1; identified from: CLOCK.PAS source (vvv104/disk3) + probe screen; sha256 d8976bc80f13*

### `programs/pascal/COLOR.PAS`

«Введите нужный Вам цвет экрана»: a menu 0 - чёрный, 1 - синий, 2 - красный, 3 - пурпурный, 4 - зелёный, 5 - голубой… and the screen switches to it

*en / ascii; disks: 2; identified from: read 2026-09-06; sha256 c088ace0f71d*

### `programs/pascal/COLOR.SAV`

Colour demonstration compiled from COLOR.PAS beside it

*written in Pascal (source on the disks); text; en / ascii; cross-run: ran; disks: 1; identified from: identified 2026-09-05; shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 f76bf6d9ba2b*

### `programs/pascal/DNINED.PAS`

FUNCTION DNINED(DT:DATA):DNED - the day of the week for a date (Monday..Sunday), twenty lines

*disks: 2; identified from: read 2026-09-06; sha256 27da6290137b*

### `programs/pascal/EPIC.BAS`

The epicycloid drawer in BASIC: «Введите коэффициент отношения радиусов R и r», «Введите шаг в градусах», the curve traced with PSET

*en / ascii; disks: 2; identified from: read 2026-09-06; sha256 a9404ab022d9*

### `programs/pascal/EPIC.PAS`

PROGRAM EPICYKLOID: asks the ratio of the radii and draws the epicycloid with LINE, a key ends it

*disks: 2; identified from: read 2026-09-06; sha256 efc133b32713*

### `programs/pascal/EPIC.SAV`

Draws epicycloids; asks for the ratio of the radii R and r

*written in Pascal (source on the disks); en / ascii; cross-run: ran; disks: 1; identified from: program screen; sha256 774e0859a252*

### `programs/pascal/FREE.PAS`

Textbook exercise: converts infix expressions from the input into postfix with an operator stack kept on a linked list and a free-list of released nodes (NEW/pointer '@' syntax of OMSI Pascal); as saved it still has a few missing semicolons - an unfinished student piece

*en / ascii; disks: 2; identified from: read from the source 2026-09-06; sha256 07e5c5c6fd8b*

### `programs/pascal/GOROD.PAS`

MakeCityScape - «рисует произвольные строения»: a random city skyline of buildings with windows (a Pascal rendering of a well-known BASIC demo)

*ru / koi8-r; disks: 2; identified from: read 2026-09-06; sha256 23208fe30651*

### `programs/pascal/INKOD.PAS`

PASSWORD: a disk access gate - clears the screen, prints «Диск принадлежит Воронкову В В - введите код», accepts the code (5639) or, on a wrong one, prints «Посторонним лицам запрещён доступ к файлам», writes 0 into the keyboard status register 177442B and hangs in an endless loop

*ru / koi8-r; disks: 2; identified from: read from the source 2026-09-06; sha256 134197f91e8e*

### `programs/pascal/KOD.PAS`

KEY: hardware probe - prints the words at 177540B, 177542B and 177544B (the MS7007 PPI ports A, B, C: keyboard rows, the joystick port and port C) 500 times in a row, to watch what the ports return while keys are pressed

*en / ascii; disks: 2; identified from: read from the source 2026-09-06; sha256 cf5e40839172*

### `programs/pascal/MORZE.PAS`

Morse code: a table of letters, digits and punctuation to dot-dash strings, converting entered text

*en / ascii; disks: 2; identified from: read 2026-09-06; sha256 3494b81f1541*

### `programs/pascal/UZOR.PAS`

«Узор»: random patterns from moving line segments (MoveTo/LineTo with random parameters), a key ends it

*disks: 2; identified from: read 2026-09-06; sha256 d92a7310d4df*

</details>

<details><summary><b>programs/pictures/</b> — 1 file</summary>

### `programs/pictures/MORDA.SCR`

Screen dump (16384 bytes = the whole video RAM, 320x200 colour mode with attributes): three grinning faces with lolling red tongues on a grey field - a picture, not a program; from the 059 games disk next to ART.SAV

*disks: 5; identified from: rendered from the VRAM layout 2026-09-05; sha256 1e74bd833dde*

</details>

<details><summary><b>programs/recode/</b> — 2 files</summary>

### `programs/recode/RECODE.C`

Eighteen lines that are the Rosetta stone of this collection's encodings: a filter converting SO/SI-switched KOI-7 text to 8-bit KOI-8 - eats the 0x0E/0x0F mode bytes and adds 128 to every РУС-mode character. The exact conversion our modern disk5_text_to_utf8.py re-derived (UKCALC.LST with its 709 SO/SI pairs) - written by the keeper on the machine itself, in C

*disks: 2; identified from: read in full 2026-09-05; sha256 19ce86812abe*

### `programs/recode/RECODE.SAV`

Compiled build of RECODE.C, the SO/SI KOI-7 -> KOI-8 filter (reads standard input, writes standard output - hence the silent bare prompt when run without redirection)

*written in assembler (no runtime library); text; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 1; identified from: RECODE.C source beside it on the vvv disks; shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 39a49abb7828*

</details>

<details><summary><b>programs/vvv/</b> — 50 files</summary>

<details><summary><b>programs/vvv/minesweeper/</b> — 18 files</summary>

<details><summary><b>programs/vvv/minesweeper/v1.01/</b> — 9 files</summary>

### `programs/vvv/minesweeper/v1.01/CHECK.PAS`

CHECK: an integrity check of the game's own .SAV - sums its words, compares with the stored checksum, halts with a rude message on a mismatch, then reads the sprite table appended to the file

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/minesweeper/v1.01/DATSPR.PAS`

source of DATSPR.SAV: reads K.DAT and writes SPR.PAS

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/minesweeper/v1.01/K.DAT`

the sprite data DATSPR reads: 63 sprites of 8 words (an earlier revision of K.SPT)

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/minesweeper/v1.01/K.HLP`

the game's help, two screens of text encoded with CODTXT's stream cipher (the first two bytes seed FORTRAN's RAN, every next byte is shifted by TRUNC(RAN*256)); decoded below

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/minesweeper/v1.01/K.PAS`

the modular main program of the later minesweeper: the F9 menu (Help F1, New F2, Beginner/Intermediate/Expert F3-F5, Custom F6, Marker on/off, Best times, Exit, Version), the cursor moves, VZRYV (a mine goes off) and POBEDA (the field is cleared); the field, sprite and help code is in the modules below

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/minesweeper/v1.01/MS.PAS`

the game-logic module: SETPOLE lays the mines and draws the board, HELP reads and decodes K.HLP, BEGINNER 8x8/10, INTERMEDIATE 16x16/40, EXPERT 30x16/99; carries its own copy of the sprite table and blitter

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/minesweeper/v1.01/RND.PAS`

another revision of the same game-logic module (`{$E+}` separate compilation) that also holds CUSTOM, BESTTIMES, VERSION, MENU and the cursor/open/mark procedures - not the random-number unit of the same name in the parent folder

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/minesweeper/v1.01/SPR.PAS`

the sprite module: GETTABSPR with the 63-sprite table as assignments (the output of DATSPR), SETSPR drawing a 16x8 sprite straight into video RAM in put/or/xor modes, PUTCUR/RESCUR for the board cursor

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/minesweeper/v1.01/TYGRF.PAS`

a sprite-file viewer: asks for a file of 8-word sprites and draws them with SETSPR in either graphics mode - the blitter's test bench

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

</details>

### `programs/vvv/minesweeper/DATSPR.SAV`

Code generator from the K minesweeper's toolchain: reads the binary sprite data K.DAT (compiled-in name) and WRITES SPR.PAS - a Pascal module with procedure GETTABSPR holding the whole 64-sprite table as assignments. Proved working: with K.DAT alongside it runs clean and produces the 21-block SPR.PAS; without it, it dies at END OF FILE. Source DATSPR.PAS and its K.DAT both survive inside PROGS.DSK (LBN 59 and 66)

*written in high-level (runtime library linked); text; en / ascii; cross-run: exited; disks: 2; identified from: DATSPR.PAS read out of PROGS.DSK + a live run 2026-09-05 that generated SPR.PAS; sha256 bb3420d24b88*

### `programs/vvv/minesweeper/K.COM`

Build recipe of the minesweeper: PAS1 K=K, MACRO K, LINK K,PASLIB,RND,PAS1,FORLIB, then run - the vvv104 disk1 / PAPER form (links the RND unit)

*disks: 3; identified from: read 2026-09-06; sha256 7c360a72f491*

### `programs/vvv/minesweeper/K.MAC`

MACRO-11 listing of the minesweeper (a disassembly-style listing, 000000 HALT ...); written in 256-byte records - every 512-byte block is half text, half zeros, identically in all three reads, so that is the file's own shape, not damage

*disks: 1; identified from: three reads compared 2026-09-06; sha256 927a7e4fb111*

### `programs/vvv/minesweeper/K.PAS`

PROGRAM MINESWEEPER, the EARLIER version - the single-file source of K.SAV as the PAPER/disk1 kit carried it: a fixed 16x16 field with 40 mines, no menu and no win check yet, the 16x8 sprite blitter SETSPR writing straight into video RAM, LOADSPRT reading DK:K.SPT, cursor keys / space / Enter play, ESC N quits; RND and RANDOMIZE are EXTERNAL - the RND.PAS unit beside it, exactly as K.COM links them.  The later, modular version 1.01 is in v1.01/ (the directory dates do not tell them apart - both K.PAS carry 1995-04-01, and a PIP copy re-dates a file - the code does)

*disks: 2; sha256 8693d4852568*

### `programs/vvv/minesweeper/K.SAV`

Minesweeper by V. V. Voronkov in Pascal, 1995 (K.PAS is on the same disks); this build stops at once with "DEVIDE BY ZERO - FROM PC 024534"

*written in Pascal (source on the disks); graphics; en / ascii; cross-run: failed 4/8 — runtime error: DEVIDEBYZERO-FROMPC024534.; disks: 2; identified from: program screen; sha256 d13d3474d652*

### `programs/vvv/minesweeper/K.SPT`

The minesweeper's SPRITE TABLE: 64 sprites of 8 words (16x8 dots) each, 1024 bytes; K.PAS loads it with LOADSPRT('DK:K.SPT') - with it K paints its full board, without it dies at the door

*disks: 2; identified from: K.PAS source (RESET(F,FILNAM,'SPT'), LOADSPRT) + probe 2026-09-05; sha256 c85b883c6194*

### `programs/vvv/minesweeper/PROGS.DSK`

Voronkov's logical-disk container (volume PROGRAMS, owner VVV, 208 blocks) with the whole workshop of the later, modular minesweeper: K.PAS (the menu-driven main program), MS.PAS and RND.PAS (two revisions of the game-logic module), SPR.PAS (sprite table + blitter), CHECK.PAS, DATSPR.PAS with K.DAT, the encoded help K.HLP - and some twenty small Pascal programs written around it (a starfield, the knight's tour, note frequencies, a DUMP inverter, a Norton Commander mock-up...).  The minesweeper files are unpacked in v1.01/ with the help decoded, the rest in the vvv folder above

*ru+en / koi8-r; disks: 1; identified from: directory and every file read 2026-09-06; K.HLP decoded with CODTXT in the emulator; sha256 f6da77542d21*

### `programs/vvv/minesweeper/RND.OBJ`

Object module of the RND.PAS random-number unit, as LINKed into K.SAV

*disks: 2; sha256 660a3c23c741*

### `programs/vvv/minesweeper/RND.PAS`

Random-number unit: Rnd(Seed) - a 16-bit multiplicative generator returning seed/32767 - and Randomize(Seed) seeded from the clock (time*1000); the unit the single-file K.PAS declares EXTERNAL and K.COM links (LINK K,PASLIB,RND,PAS1,FORLIB).  Not the RND.PAS inside PROGS.DSK, which is a revision of the game-logic module (the PAS1 'ZSK OVERFLOW' incident of the emulator work was that one)

*disks: 2; identified from: read from the source 2026-09-06; K.COM of the same kit; sha256 b5169280eb8a*

</details>

### `programs/vvv/BIG2SM.PAS`

copies a .PAS file turning capitals into small letters

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/BIG2SM.SAV`

Converts the upper-case letters of a text file to lower case; asks for the file name

*written in high-level (runtime library linked); text; ru+en / koi8-r; cross-run: ran; disks: 2; identified from: program screen; sha256 80d8bf998afa*

### `programs/vvv/CHAIN.PAS`

a .CHAIN test: fills the RT-11 chain block at 500 with a RAD50 file name and issues EMT 374 with R0=4000 - and prints a jibe if control ever comes back

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/CODTXT.PAS`

source of `CODTXT.SAV` beside it: the text coder/decoder whose cipher the minesweeper's K.HLP is in - it prints every byte as it goes

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/CODTXT.SAV`

Encodes and decodes text files; asks 1 to encode, 0 to decode

*written in high-level (runtime library linked); text; ru+en / koi8-r; cross-run: ran; disks: 2; identified from: program screen; sha256 fe652de182b7*

### `programs/vvv/DMPMOD.PAS`

trims a DUMP listing: drops its three header lines and everything before the `/` of each line

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/FORMUL.PAS`

Voronkov's formula-string editor and evaluator (baspasfor/disk2): edits the line f(x)= with insert/backspace (KBMODE, INKEY), verifies it (STRVERIF, also in STRVER.PAS inside PROGS.DSK), parses it into a tree and evaluates it on a stack with X, Y, T, P and the functions S C N L E A Q - a building block for a plotter.  On the disk it is K.PAS: K was the working name of whatever he was writing at the time, so that the ready K.COM built it; renamed here at his word

*en / ascii; disks: 2; sha256 f4f7c173be26*

### `programs/vvv/FORT.PAS`

a test of calling FORTRAN's ASSIGN from Pascal

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/GR.PAS`

GRAPH3D: plots a second-order surface as a wire grid in oblique projection (NAKLON = 0.3) on the 320x200 screen through INITGRAPH/SETPIXEL of PASGRF - the source carries the whole family to choose from by uncommenting (ellipsoid, one- and two-sheet hyperboloids, cone, elliptic and hyperbolic paraboloids, cylinders; the hyperbolic paraboloid is active), with a safe-arithmetic layer (LNE, SQRE, DIVE, ST) that counts domain errors instead of trapping

*ru / koi8-r; disks: 2; identified from: read from the source 2026-09-06; sha256 1018ff632364*

### `programs/vvv/HORSE.PAS`

the knight's tour: enter the board size and the start square, watch the backtracking search place the moves one by one (ESC Y runs it without pauses, ESC N quits); «Решения нет» when there is none

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/LSTROM.PAS`

dumps the ROM 140000..177377 into PZU.DAT

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/LUNA.BAS`

Joystick space shooter «LUNA» (sprites in LUNA.SPT): rules screen («в Вашем космолёте поломался двигатель... уничтожить как можно больше инопланетных кораблей за отведённое время»), your ship at the bottom read through the joystick port (PEEK(-158) = 177542): left/right, fire, diagonal moves with fire; an alien appears at a random spot at the top every 30 ticks, a 1000-tick timer, «убито» counter, final «ВЫ УБИЛИ n ИНОПЛАНЕТЯН». Banner: «PROGRAM BY VORONKOV SOFT 1993»

*ru / koi8-r; disks: 2; identified from: read from the source 2026-09-05; sha256 6d387de75091*

### `programs/vvv/LUNA.SPT`

Sprite table of LUNA.BAS (SPRITE BLOAD "LUNA"): the ship and the alien craft as 8x8 patterns, 2560 bytes

*disks: 2; identified from: bytes 2026-09-06; sha256 0584de97cebe*

### `programs/vvv/MORBOJ.BAS`

Sea battle («МОРСКОЙ БОЙ») against the computer, Voronkov Soft Ware, Voronezh: title card, then BLOAD of the MORBOJ.SCR screen (so .SCR files are BASICO BLOAD screen images); two 10x10 grids lettered а-к, you place 20 ship cells with the arrow keys and ВК, the computer places its own at random; alternate shots with sound, «БРАВО, КАПИТАН!» / «МАЗИЛА!» / «СТРЕЛЯЮ Я», victory with «призовая музыка» (a 35-note tune in DATA) or defeat with a dirge. Sprites in MORBOJ.SPT

*disks: 2; identified from: read from the source 2026-09-05; sha256 3c009758d04c*

### `programs/vvv/MORBOJ.SCR`

Screen dump (16384 bytes = the whole video RAM, 320x200): the «МОРСКОЙ БОЙ» title screen of MORBOJ.BAS - a plane over the sea, ships, explosions, the footer «VORONKOV COMPUTER'S SECURITY Ltd.» (V. V. Voronkov's sea-battle game)

*disks: 2; identified from: rendered from the VRAM layout 2026-09-05; sha256 343a89a56417*

### `programs/vvv/MORBOJ.SPT`

Sprite table of MORBOJ.BAS (SPRITE BLOAD "MORBOJ"): the ships and shots of the sea battle, 2560 bytes

*disks: 2; identified from: bytes 2026-09-06; sha256 0caa96a52ebc*

### `programs/vvv/MUZ.PAS`

computes the frequencies of every note of nine octaves (equal temperament from A=440 Hz, sharps and flats) and writes them to MUZ.DAT - the table behind the music-editor screen `MUZRED.SCR` beside it

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/MUZRED.SCR`

Screen dump (16384 bytes = the whole video RAM, 320x200): the «МУЗЫКАЛЬНЫЙ РЕДАКТОР» screen - a piano keyboard with the note frequencies in hertz per octave, signed «COMPOSED BY VORONKOV V.V. - VORONEZH 21-6-1993». V. V. Voronkov's own music editor of 1993 (the program itself did not survive) - not the FMG editor that ZASTM.EXE advertises

*disks: 2; identified from: rendered from the VRAM layout 2026-09-05; sha256 20a37f2bc825*

### `programs/vvv/NC.PAS`

a Norton-Commander look-alike in the making: two panels, the F-key bar, Tab and the cursor keys - over a hard-coded mock directory of DOS names, no disk reading yet

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/PR.PAS`

scans the I/O page 160000..177777, writing each byte back changed and recording in ADR.DAT the addresses that responded

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/QUEUES.PAS`

Unit Queues - a pointer queue in Turbo Pascal syntax (Interface/Implementation), signed «Составитель Воронков В. ПММ 2 к. гр. эк. киб.»: a university exercise that OMSI Pascal cannot compile

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/RAMKA.PAS`

RAM(x1,y1,x2,y2,type,c): draws a text frame in one of five pseudo-graphic styles

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/RAZLMN.PAS`

factors an entered number into primes

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/REDUMP.PAS`

the inverse of DUMP: reads an octal listing back into a binary file (unrelated to REDUMP.SAV of `../../software/development/debug/`)

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/REN.BAS`

BASIC: re-encodes UKCALC.LST into UKCAL2.LST, moving the KOI-7 Cyrillic codes 64..126 up by 128 (KOI-8)

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/SAVTXT.PAS`

turns any file into a text-shaped one: keeps the printable bytes, breaks lines at 78

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/SOUND.PAS`

SOUND(K,T): a tone through the sound port (177524/177526, gated by 177604) - plays sixty rising notes

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/STARS.PAS`

a starfield: thirty dots fly out of the centre of the graphics screen and respawn, until the keyboard flag at 177440 changes

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/STONH.PAS`

Not graphics: a calculation of machining conditions - DZ=120, L=1000, feed S, tool life, piece time TSHT and the output rate Q=TS/TSHT for three variants - a technology-course exercise

*disks: 2; identified from: read 2026-09-06; sha256 76774a3b1956*

### `programs/vvv/STRVER.PAS`

STRVERIF: checks a formula string over X, Y, T, P with the function letters S C N L E A Q - the verifier of the formula editor FORMUL.PAS beside it

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/TR.PAS`

writeident: reads a Pascal source, collects its identifiers into a binary tree with counts and prints them sorted (a stack-driven walk)

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

### `programs/vvv/ZAKRAS.PAS`

fills the graphics screen with random pixels, forever

*identified from: read out of PROGS.DSK 2026-09-06; sha256 *

</details>

</details>

<details open><summary><b>software/</b> — 86 files</summary>

<details><summary><b>software/apps/</b> — 29 files</summary>

<details><summary><b>software/apps/buhgal/</b> — 3 files</summary>

### `software/apps/buhgal/AAUSER.MSH`

Registration block of the savings-bank workstation: branch identity '7503/0141 00010001' (отделение/филиал 7503/0141, window 0001) plus a few config words; the deposit records themselves live past the file area of the Buhgal disk

*disks: 1; identified from: hex dump 2026-09-05; sha256 7acb930cd112*

### `software/apps/buhgal/KZARM.SAV`

Printer self-test of the savings-bank workstation ('КЗ АРМ' - контрольная задача): 'ПУ не готово! Когда будет готово, нажмите Y', repeat/exit prompts

*written in assembler (no runtime library); text; cross-run: needs 7/8 — needs a printer; disks: 1; identified from: its own strings; sha256 c463389c9134*

### `software/apps/buhgal/PMK.SAV`

Savings-bank teller workstation, 'PMK Версия 1.2': deposits and payments (ВКЛАДЫ/ПЛАТЕЖИ), operational-day cycle (ОТКРЫТИЕ/ПЕРЕРЫВ/ПРОДОЛЖЕНИЕ/ИТОГИ/ЗАКЛЮЧЕНИЕ), deposit kinds incl. ДЕТСКИЙ and МОЛОДЕЖНО-ПРЕМИАЛЬНЫЙ. The Buhgal monitor autostarts it; it accesses its data past the file system, so it lives only on the byte-copy - where it boots into an operational day interrupted 03.04.02 (in use until 2002!). To enter: type the interrupted day's date, digits only (030402)

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: needs 6/8 — needs companion files on its own floppy; disks: 1; identified from: strings + live session 2026-09-05: booted the byte-copy, resumed the 2002 day to the ВКЛАДЫ/ПЛАТЕЖИ menu; sha256 ba7088e7f001*

</details>

<details><summary><b>software/apps/rbd-mikro/</b> — 15 files</summary>

### `software/apps/rbd-mikro/CHART.DOC`

Manual of the CHART graphics package of RBD-MIKRO (1988): bar/stacked/line/sector diagrams from a database, the command file format (OB, OC, TD, ZG...), keyboard table, and a sample bar chart drawn in pseudo-graphics. One stretch was lost in all three reads of disk5 - 153 bytes at the end of block 7, the description of the 'open database' command. It is restored here from INTRDB.DOC, the sister manual of the same package, which documents the same OB command in the same words (the text on both sides of the gap matches INTRDB's paragraph word for word); INTRDB's wording is a few bytes shorter, so the line is padded with spaces to keep every other byte in place

*disks: 1; identified from: three disk5 reads + the matching paragraph of INTRDB.DOC 2026-09-06; canonical version picked in decisions.tsv; sha256 464b1c189aff*

### `software/apps/rbd-mikro/COLRDB.SAV`

Column-maintenance program of RBD-MIKRO

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 1; identified from: RBD-MIKRO manuals (disk5); sha256 a0423de1b48f*

### `software/apps/rbd-mikro/CRERDB.SAV`

Creates a database; part of RBD-MIKRO

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 1; identified from: RBD-MIKRO manuals (disk5); sha256 e5eca59004d9*

### `software/apps/rbd-mikro/EDDOC.DOC`

RUNOFF manual: «Технологический комплекс РТК МИКРО - средства генерации документов» - the document-generator of the РБД-МИКРО system

*disks: 1; identified from: title lines 2026-09-06; sha256 f891a9dc1075*

### `software/apps/rbd-mikro/EDRDB.SAV`

Database editor; part of RBD-MIKRO

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 1; identified from: RBD-MIKRO manuals (disk5); sha256 3989e225f212*

### `software/apps/rbd-mikro/GENRDB.DOC`

RUNOFF manual: «РТК МИКРО - реляционная СУБД для микро-ЭВМ» - the database generator

*disks: 1; identified from: title lines 2026-09-06; sha256 6821ef31460b*

### `software/apps/rbd-mikro/GENRDB.SAV`

Task generator of RBD-MIKRO

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 1; identified from: RBD-MIKRO manuals (disk5); shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 f1382725169d*

### `software/apps/rbd-mikro/INTRDB.DOC`

RUNOFF manual: «РТК МИКРО - реляционная СУБД для микро-ЭВМ», the introduction to РБД-МИКРО

*disks: 1; identified from: title lines 2026-09-06; sha256 1309670b6206*

### `software/apps/rbd-mikro/MENU.DOC`

RUNOFF manual: «РТК МИКРО - система меню» - the programmer's menu shell of the complex (the largest of the set)

*en / ascii; disks: 1; identified from: title lines 2026-09-06; sha256 7d83b6dd300b*

### `software/apps/rbd-mikro/MERRDB.SAV`

Merges two databases; part of RBD-MIKRO

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 1; identified from: RBD-MIKRO manuals (disk5); sha256 dffdc87ad674*

### `software/apps/rbd-mikro/RDBEK.DOC`

RUNOFF manual: «РТК МИКРО - реляционная СУБД для микро-ЭВМ» - the operator's (эксплуатационная) part

*disks: 1; identified from: title lines 2026-09-06; sha256 ea476fe1d20f*

### `software/apps/rbd-mikro/RDBPR.DOC`

RUNOFF manual: «РТК МИКРО - реляционная СУБД для микро-ЭВМ» - the programmer's part

*en / ascii; disks: 1; identified from: title lines 2026-09-06; sha256 62c6adf33ddd*

### `software/apps/rbd-mikro/RETRDB.SAV`

Query program of the RBD-MIKRO relational DBMS; the document generator (EDDOC) plugs into it

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 1; identified from: RBD-MIKRO manuals (disk5); shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 4aba763a8b73*

### `software/apps/rbd-mikro/SORRDB.SAV`

Sorts a database; part of RBD-MIKRO

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 1; identified from: RBD-MIKRO manuals (disk5); sha256 87cb74fc49b7*

### `software/apps/rbd-mikro/UNIRDB.SAV`

Joins databases of the same shape; part of RBD-MIKRO

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 1; identified from: RBD-MIKRO manuals (disk5); shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 10c2aaace89f*

</details>

### `software/apps/ART.SAV`

Colour paint program: menu bar (print / file / attributes / brushes / mix / buffer, window / fill / zoom / text / shapes) and a mouse pointer

*written in assembler (no runtime library); graphics; ru / koi8-r; cross-run: ran; disks: 6; identified from: program screen; sha256 4addab020df1*

### `software/apps/DEF.SAV`

Fault-finding HANDBOOK (DEF = дефекты): a loader menu 'ЗАГРУЗКА ПРОГРАММЫ - СПРАВОЧНИК' (Cyrillic drawn with Latin glyphs) offering a search mode (Х) and monitor exit (Е); the baked-in texts are diagnostic verdicts - 'СИСТЕМА НЕИСПРАВНА НЕ УСТ. В 0', 'АВАРИЯ', 'НОРМА', 'задайте задержку T(мкс)=N*4'. Linked as a DEBUG build (OMSI Pascal Debugger V2.2 inside). In the CLI probe it paints the menu and ignores every key (Latin, KOI-7 and real Cyrillic alike) - likely raw РУС-keyboard input; worth trying in the GUI. Possibly the player half of the EDSP frame system on the same 062 disk

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 1; identified from: strings + live key experiments 2026-09-05; sha256 8de9d30f44dd*

### `software/apps/EDSP.SAV`

Frame ('кадр') EDITOR - an authoring tool with the menu Видео / Редактирование / Сжать / Сборка / Печать / Картотека and commands 'Записать кадр', 'Загрузить файл', 'Окно': courseware/reference frames assembled from a card-file, in the АОС tradition; plausibly the authoring half of DEF's handbook. The sole surviving build is 70% zeroed blocks - the confirmed-unreadable one among the eight truly broken

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran; disks: 1; identified from: surviving menu strings 2026-09-05; sha256 e171c561fda7*

### `software/apps/FCAD.SAV`

FunctionCAD v1.1 for the MS-0515 (1994, A. V. Domnich): plots functions and draws them on an EM7052 pen plotter; F-key menu

*written in high-level (runtime library linked); graphics; ru+en / koi8-r; cross-run: ran; disks: 1; identified from: program screen; sha256 f1efd762b7a0*

### `software/apps/FCON.SAV`

File-system converter (Омега, Львов, experimental, July 1993) bridging THREE worlds: RT-11 (any device, catalogue/delete/rename), DOS FAT floppies (root dir, volume label, capacity/free in KB, write-back), and ZX Spectrum TR-DOS (catalogue with start/length/sectors, both directions). Auto-detects 40/80-track SS/DS. Porting-pipeline features: marks files copied from TR-DOS as 'программа в кодах Spectrum для дизассемблера', converts Spectrum screen images, transcodes text between code pages. Needs SL.SYS fetched - absent on Rodionov's system, hence its one error cell in the cross. The very conveyor the Omega Spectrum ports came through

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran 7/8; disks: 1; identified from: full string vocabulary + menu screenshot; SL dependency proved by load bisection; shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 e8179a455487*

### `software/apps/GAUSS.CLC`

UKCALC worksheet («POWERR SPREADSHEET» header - UKCALC's own file format): solves a system of linear equations by Gauss elimination, cells with formulas like C3-C6*A3, B2/A2

*disks: 2; identified from: read 2026-09-06; sha256 d39bba3a71df*

### `software/apps/KRAMER.CLC`

UKCALC worksheet: solves a 2x2 linear system by Cramer's rule - cells for the determinant («Det A =», A1*B2-B1*A2), Dx, and «x=», «y=»

*disks: 2; identified from: read 2026-09-06; sha256 9f76d84b36f5*

### `software/apps/TR7004.SAV`

Keyboard trainer/test for the MS7004 keyboard (name after the keyboard model); prints what it receives

*written in high-level (runtime library linked); graphics; en / ascii; cross-run: ran; disks: 1; identified from: identified 2026-09-05; shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 786724f31b3f*

### `software/apps/UKCALC.LST`

Operator's manual of the UKCALC spreadsheet (listing form). Three reads of disk5 survived; this is the one clean one, the other two carry corrupt blocks

*disks: 1; identified from: three disk5 reads compared 2026-09-06; canonical version picked in decisions.tsv; sha256 d22d7d5ef6dc*

### `software/apps/UKCALC.SAV`

UKCALC, a large-format spreadsheet; has its own operator manual (UKCALC.LST)

*written in assembler (no runtime library); text; en / ascii; cross-run: ran; disks: 1; identified from: RTK MIKRO manuals (disk5); shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 344089474944*

### `software/apps/UMN.SAV`

Multiplication-table trainer in machine code («проверяем таблицу умножения»): move the cursor to the right digit and press ВК; «много ошибок» when you fail, «ещё раз д/н» at the end. Shipped as UMN.SAV; nothing to do with UMN.BAS beyond the topic

*written in BASIC (source on the disks); graphics; ru / koi8-r; cross-run: ran; disks: 1; identified from: strings 2026-09-06; shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 0f2c6505944b*

</details>

<details><summary><b>software/development/</b> — 4 files</summary>

<details><summary><b>software/development/sprites/</b> — 4 files</summary>

### `software/development/sprites/GENSPR.BAS`

Sprite generator «COPYRIGHT 1994 BY GOSTEV DMITRY, Россия, Воронеж - идея подана Грудзинским А.С. с физического факультета Львовского университета»: draws 8x8 sprites on a magnified grid and writes them as SPRITE data

*ru+en / koi8-r; disks: 1; identified from: read 2026-09-06; sha256 71a8292a0ea6*

### `software/development/sprites/SPR.SAV`

Sprite editor for the MS 0515 (the SPRED manual); writes a sprite file for PASCAL-RAFOS programs

*written in BASIC (source on the disks); text; ru+en / koi8-r; cross-run: ran; disks: 4; identified from: RTK MIKRO manuals (disk5); sha256 578e60fc70a1*

### `software/development/sprites/SPRED.BAS`

«Редактор SPRITE - программа составлена на физическом факультете Львовского университета, автор Грудзинский А.С.»: edits an 8x8 sprite, asks the file name, number (>3), colours and brightness, and BSAVEs the table

*ru+en / koi8-r; disks: 3; identified from: read 2026-09-06; sha256 2952e18b5baa*

### `software/development/sprites/SPRED.DOC`

«Программное обеспечение ПЭВМ Электроника 0515 - Редактор SPRITE - Руководство пользователя», 7 sheets, Львов 1991

*ru / koi8-r; disks: 1; identified from: title page 2026-09-06; sha256 445e440a6eeb*

</details>

</details>

<details><summary><b>software/games/</b> — 37 files</summary>

<details><summary><b>software/games/osa/</b> — 2 files</summary>

### `software/games/osa/HANOJ.SAV`

The Towers of Hanoi as the ОСА disk 058 carries it - the text in KOI-7 upper case (Cyrillic on a РУС terminal)

*written in high-level (runtime library linked); ru+en / koi8-r; cross-run: ran; disks: 1; identified from: program screen; the the ОСА kits build; sha256 8a26615bd36d*

### `software/games/osa/KOSMOS.SAV`

A text-mode space game.  KOSMOS as 058 and 066 carry it - the same program with its text in the other letter case (case-bit flips)

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 2; identified from: program screen; the the ОСА kits build; sha256 4bef3e9dbf43*

</details>

<details><summary><b>software/games/osa-rs/</b> — 2 files</summary>

### `software/games/osa-rs/HANOJ.SAV`

The Towers of Hanoi as bg0515 carries it - the same program with its text in the other letter case (1467 single-bit flips: the case bit)

*written in high-level (runtime library linked); en / ascii; cross-run: ran; disks: 1; identified from: program screen; the ОСА with the RS profShell build; sha256 8539451a954f*

### `software/games/osa-rs/KOSMOS.SAV`

A text-mode space game.  KOSMOS of the System, System2, System3, bg0515 and osa disks - the text in one letter case

*written in assembler (no runtime library); text; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 5; identified from: program screen; the ОСА with the RS profShell build; sha256 bf9f023cfc02*

</details>

<details><summary><b>software/games/pacman/</b> — 6 files</summary>

### `software/games/pacman/LABRN.DAT`

Best-results file of the LABRN Pac-Man: place, name, date, points, class, total (one entry survives: TOM, 12-FEB-93, class 5); the game refuses to start without it

*disks: 2; identified from: seen in the game 2026-09-05; sha256 ef6a74aec485*

### `software/games/pacman/LABRN.SAV`

Pac-Man in a big ASCII labyrinth (LABRN = лабиринт): you are «>O<», eating the dots of the maze, «@» are the ghosts, a start/finish line marks the lap; runs are «забеги», sets of runs «матчи» (П continue the run, Н new run, М new match), difficulty is the «класс» 1-127 asked at start; keeps a best-results table (place, name, date, points, class, total) in LABRN.DAT and saves yours on «ЗАПОМНИТЬ [Д/Н]». Refuses to start without a system date («НЕТ ДАТЫ») and without its results file

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran; disks: 2; identified from: played in the GUI by the owner 2026-09-05; sha256 fdfbe94655a1*

### `software/games/pacman/PAC6.SAV`

PACMAN V5.2 with six mazes («Pac-hall» table, «начнём?», «ещё раз?», «Don't move program volume») - shipped as PAC6.SAV: the program opens DK:PAC6.SAV, its own file, where the six 2 KB text mazes sit from byte 0x1400 («I read maze»), so SP16 was a later renaming. Answer Y at «начнём?»; keys 4/6 left-right, 8/5 up-down. Plays in the GUI; the headless CLI runs the machine unthrottled unless started with --realtime, so the probe saw the game over before it started

*written in assembler (no runtime library); text; cross-run: ran; disks: 2; identified from: code + played in the GUI 2026-09-05; sha256 5357fe9ac835*

### `software/games/pacman/PACM.SAV`

Pac-Man («PAC-HALL» score table of twenty lines, BEGIN? / ONCE MORE?) - shipped as PACM.SAV: the program opens DK:PACM.SAV, its own file, so SP15 was a later renaming. Answer Y at BEGIN?; keys 4/6 left-right, 8/5 up-down. Plays in the GUI; the headless CLI runs the machine unthrottled unless started with --realtime, so the probe saw the game over before it started

*written in assembler (no runtime library); text; cross-run: ran; disks: 2; identified from: code + played in the GUI 2026-09-05; sha256 4e8fbea068c6*

### `software/games/pacman/SP13.SAV`

Game with a hall-of-fame table of past players and scores; asks whether to start. Keys 4/6/8/5; plays in the GUI (the CLI needs --realtime, unthrottled it ends at once)

*written in assembler (no runtime library); text; cross-run: ran; disks: 5; identified from: code + played in the GUI 2026-09-05; sha256 9355ca276038*

### `software/games/pacman/SP49.SAV`

Game "Labyrinths of power" with a hall-of-fame table of past players and scores. Keys 4/6/8/5; plays in the GUI (the CLI needs --realtime, unthrottled it ends at once)

*written in assembler (no runtime library); text; cross-run: ran; disks: 1; identified from: code + played in the GUI 2026-09-05; sha256 bc63d8dfc115*

</details>

<details><summary><b>software/games/sabot2/</b> — 4 files</summary>

<details><summary><b>software/games/sabot2/omega/</b> — 2 files</summary>

### `software/games/sabot2/omega/SABOT2.DAT`

The game body of the omega-games disk 059 (1991): a different build of the same 85 blocks - the one that reads the joystick on the MS7007 PPI port B (177542)

*en / ascii; disks: 2; sha256 f8f18a6b29fa*

### `software/games/sabot2/omega/SABOT2.SAV`

Game (Saboteur 2, omega-games 1991); on a disk of its own it prints "file not found" and its title screen comes out mangled - it needs its companion data files

*written in assembler (no runtime library); graphics; cross-run: ran; disks: 6; identified from: program screen; sha256 e3c2ec43b7c1*

</details>

<details><summary><b>software/games/sabot2/osa/</b> — 2 files</summary>

### `software/games/sabot2/osa/SABOT2.DAT`

The game body as the ОСА disks (058, System, System3, osa) carried it - 85 blocks the loader SABOT2.SAV reads into high memory; keyboard control

*en / ascii; disks: 4; sha256 b99dc2b4ba0f*

### `software/games/sabot2/osa/SABOT2.SAV`

Game (Saboteur 2, omega-games 1991); on a disk of its own it prints "file not found" and its title screen comes out mangled - it needs its companion data files

*written in assembler (no runtime library); graphics; cross-run: ran; disks: 6; identified from: program screen; sha256 e3c2ec43b7c1*

</details>

</details>

<details><summary><b>software/games/tetris/</b> — 3 files</summary>

### `software/games/tetris/PENT.SAV`

Falling-blocks game (Tetris with pentomino-style pieces): level, lines and score; keys 7/9 move, 8 rotates, space drops, level selectable; labels in Cyrillic (KOI-8). RUBIS.SAV and TTR2.SAV are the same 5-block program with cosmetic differences

*written in assembler (no runtime library); text; cross-run: ran; disks: 1; identified from: byte diff 2026-09-05; sha256 a9a8a1dc4d7e*

### `software/games/tetris/RUBIS.SAV`

PENT.SAV with its labels in KOI-7 transliteration («urowenx», «stroki», «o~ki», «e}e raz») for a terminal in РУС mode, and pieces drawn with '.' instead of '*' - otherwise byte-identical

*written in assembler (no runtime library); text; cross-run: ran; disks: 1; identified from: byte diff 2026-09-05; sha256 f1b8959ffebb*

### `software/games/tetris/TTR2.SAV`

RUBIS.SAV with two bytes changed: empty cells drawn as spaces instead of '.' (which makes the well look narrower) and one header word - the same Tetris a third time

*written in assembler (no runtime library); text; cross-run: ran; disks: 2; identified from: byte diff 2026-09-05; sha256 4f6ecf81ef35*

</details>

### `software/games/BIRDS.SAV`

Colour arcade game - a spaceship fires on firebirds - with a score and wave banner across the top

*written in assembler (no runtime library); graphics; cross-run: ran; disks: 7; identified from: program screen; sha256 c6dde7f70e98*

### `software/games/DERBY.SAV`

Horse-racing game; asks the player for a rank (1-7)

*written in assembler (no runtime library); text; ru+en / koi8-r; cross-run: ran; disks: 2; identified from: program screen; sha256 aad31bccf552*

### `software/games/EXPRES.SAV`

Arcade game set on a moving train, 1990; score line reads TOP / SCORE / TIME / CAR / STG

*written in assembler (no runtime library); graphics; en / ascii; cross-run: ran; disks: 6; identified from: program screen; sha256 c099088f83bc*

### `software/games/EXPRES.TXT`

The rules of EXPRES in KOI-7 («игра начинается с демонстрации нескольких попыток…»): Enter to start, three tries to reach the middle of the train…

*disks: 5; identified from: read 2026-09-06; sha256 248e2144eeaf*

### `software/games/GO1.SAV`

Board game (go); first asks whether to print the game on the line printer

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 2; identified from: program screen; sha256 39e5f6c84047*

### `software/games/KALAHI.SAV`

Kalah (mancala) against the machine; asks whether side A is played by the machine or a person. The same program as KALAH.SAV of the System2/bg0515 disks, which differs by ONE bit (0o10244: MOV 2(SP),@4(SP) rotted into MOV 10252,@4(SP)) - this copy is the sound one and the only one shipped

*written in high-level (runtime library linked); en / ascii; cross-run: ran; disks: 2; identified from: byte diff + disassembly 2026-09-05; sha256 0a8f7c895cd7*

### `software/games/KAM1.SAV`

A classic Sokoban game (KAMENS = stones).  Stops with ?I/O ERROR: RESET FAILURE on DK:KAMENS.DAT - it needs that data file next to it

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 2; identified from: program screen; sha256 f10783e4156e*

### `software/games/KAMENS.DAT`

The level maps of KAM1: text pictures drawn with @ characters, a header of two numbers per level (16 x 10 cells)

*disks: 2; identified from: read 2026-09-06; sha256 4f69261194cb*

### `software/games/KING.DAT`

The saved kingdom of KING.SAV: one block of counters (grain, population, land…) the game reads at start

*disks: 3; identified from: bytes 2026-09-06; sha256 31938e66077e*

### `software/games/KING.SAV`

Kingdom simulation "Korolevstvo Eyforiya": asks how many years you intend to reign

*written in high-level (runtime library linked); text; ru+en / koi8-r; cross-run: ran; disks: 2; identified from: program screen; sha256 f7cae66627e5*

### `software/games/KOSTI.SAV`

Dice game; offers instructions first (y/n)

*written in high-level (runtime library linked); cross-run: ran; disks: 1; identified from: program screen; sha256 94d1a20b0b8c*

### `software/games/LOTOS.SAV`

"Lotos game": menu of S-speed, R-rank, N-quit, D-start

*written in high-level (runtime library linked); text; ru+en / koi8-r; cross-run: ran; disks: 2; identified from: program screen; sha256 ac6bfe7d6521*

### `software/games/LOVE.SAV`

Questionnaire "attitude to the opposite sex"; asks the player's name

*written in high-level (runtime library linked); text; ru+en / koi8-r; cross-run: ran; disks: 1; identified from: program screen; sha256 4c876c650357*

### `software/games/MARS.SAV`

Martian-invaders game, Russian KOI-7 edition: shoot Martians, intercept bombs (scoreboard: уничтожено марсиан / перехвачено бомб / пущено ракет / повреждение установки), with a persistent PLAYER REGISTRY and class-marathon progression ('вы приглашаетесь на марафонский забег в классе...', 'не суетись под клиентом!'). Wants DK:MARS.DAT (RAD50 filespec in the binary) - the registry is lost, a zeroed stand-in is rejected, and login loops forever; the game proper is unreachable until MARS.DAT's format is reverse-engineered. MARS2.SAV is the same binary in German - the game likely arrived from a German PDP-11 source

*written in assembler (no runtime library); text; cross-run: ran; disks: 2; identified from: strings + RAD50 scan + live registration attempts 2026-09-05; sha256 d84a2812f517*

### `software/games/MARS2.SAV`

The German-language sibling of MARS.SAV - same binary layout, same game: 'MARSFLUGKOERPER', 'KENNWORT ?', 'GREENHORN ?', 'SPIELE DU WOANDERS', 'SIE MACHEN GROSSEN MIST, DESHALB WERDEN SIE ABGE`L O Z`T', scoreboard 'VERN. MARSIANER / ABGEF. BOMBEN'. Probably the original the Russian edition was translated from

*written in assembler (no runtime library); text; cross-run: ran; disks: 1; identified from: strings; offsets match MARS.SAV field for field; sha256 5a8dbe32cf52*

### `software/games/POKER.SAV`

Poker; asks the player's name first

*written in high-level (runtime library linked); text; ru+en / koi8-r; cross-run: ran; disks: 1; identified from: program screen; sha256 25861f6904b4*

### `software/games/TEN.SAV`

Tennis (vertical Pong) in character graphics, 1 or 2 players: rackets at the top and bottom move left/right, serve on 'B', ball speed 1-7, score drawn in giant asterisk digits - and fully REMAPPABLE controls ('ASSIGN FUNCTION TO KEY BY PRESS KEY & CARRIAGE CONTROL'). Not related to TENNIS.BAS/TENNIS.SPT, a different BASIC tennis

*written in assembler (no runtime library); text; cross-run: ran; disks: 2; identified from: strings + live match 2026-09-05 (court screenshot); sha256 0d70466980b9*

### `software/games/TIR.SAV`

Shooting-gallery game for up to eight players, drawn with text characters; columns for players, score and ammunition

*written in assembler (no runtime library); text; cross-run: ran; disks: 1; identified from: program screen; sha256 ad9bdfd0e0bc*

### `software/games/TROPA.SAV`

Russian version of The Oregon Trail: year 1786, the trail from Idaho to Oregon; asks for the player's nickname

*written in high-level (runtime library linked); text; en / ascii; cross-run: ran; disks: 1; identified from: program screen; sha256 4b45f0335a13*

### `software/games/UDAW.SAV`

Educational snake game 'ПИТОН' for junior schoolchildren (vowels eaten vertically, consonants horizontally), by Домнич Александр for IVF 'МИКРОТЕХ', Voronezh 1994, 6 difficulty levels. Its true name is UDAW.SAV: the program opens 'udaw.sav' (ASCII literal at 0x1306) and sums the first 1000 words - OF ITSELF; the sum of this very binary is exactly the expected -27004, so it is a self-integrity check against renaming/tampering, and a failed check prints 'Привет хакерам!!'. The surviving copies were renamed to .EXE, which is what broke them - put back as UDAW.SAV it runs whole, no key needed

*written in Pascal (source on the disks); text; ru+en / koi8-r; cross-run: ran; disks: 2; identified from: user's insight 2026-09-05, proved: sum(first 1000 words of UDAW.EXE) = -27004; renamed copy runs clean with no taunt; UDAW.PAS + EXE strings; shipped as .SAV: the .EXE name is the collector's later renaming on disk4; the same file as in programs/domnich/piton/, where its source is; sha256 1c5bad7a40b5*

</details>

<details><summary><b>software/system/</b> — 5 files</summary>

<details><summary><b>software/system/utils/</b> — 5 files</summary>

### `software/system/utils/BINCOM.SAV`

DEC RT-11 BINCOM V05.08, Russian-localized binary compare (files or devices, PATCH output for SIPP)

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: ran — bare prompt, no answer to a bogus file name; disks: 1; identified from: its own Russian switch help and version banner; shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 b76b1abdfd92*

### `software/system/utils/DATIME.SAV`

DATIME «(C) 1987» of the ВЦ АН СССР, from the work diskette 056 - the greeter with escape-sequence highlighting

*written in assembler (no runtime library); text; cross-run: ran; disks: 1; identified from: program screen; the work diskette 056 build; sha256 55d955b8fcee*

### `software/system/utils/HELP.TXT`

«Описание команд операционной системы ФОДОС-3» - the command reference HELP.SAV prints, as plain text: ASSIGN, BOOT, COPY… with their syntax

*ru+en / koi8-r; disks: 1; identified from: read 2026-09-06; sha256 bd7f86f0db83*

### `software/system/utils/TERM.SAV`

The terminal emulator as the work diskettes 056 and 172 of the КВИ «Электроника МС0111» complex carried it: asks the line speed (9600=1, 4800=0) and whether scrolling is smooth before entering terminal mode; this cut prints its prompts in KOI-7

*written in assembler (no runtime library); text; cross-run: ran; disks: 2; identified from: program strings of both builds; TERM.TXT manual on disk 056; the work diskette 056 build; sha256 149b71963551*

### `software/system/utils/TERM.TXT`

The operator's page of TERM: how to call it, what «РЕЖИМ ЭМУЛЯЦИИ ТЕРМИНАЛА» means and that СУ/Е returns to ОСА - one block, on the 064, 066 and 172 disks.  Not the nine-block manual of the same name on the work diskette 056, which describes the whole КВИ «Электроника МС0111» complex and is kept in programs/ms0111/

*ru / koi8-r; disks: 3; identified from: content read 2026-09-05; sha256 66691848ec61*

</details>

</details>

<details><summary><b>software/unsorted/</b> — 11 files</summary>

<details><summary><b>software/unsorted/ked/</b> — 3 files</summary>

<details><summary><b>software/unsorted/ked/baspasfor/</b> — 1 file</summary>

### `software/unsorted/ked/baspasfor/KED.SAV`

KED.SAV as one read of the baspasfor diskette gave it - fails on every monitor; 25 of its 54 blocks differ from the running build.  The restored image of the same diskette holds the running one

*written in assembler (no runtime library); text; cross-run: failed — dropped into ODT at 027110; disks: 1; identified from: byte diff of the family 2026-09-06; sha256 0cf91d1a2e17*

</details>

<details><summary><b>software/unsorted/ked/disk1/</b> — 1 file</summary>

### `software/unsorted/ked/disk1/KED.SAV`

KED.SAV as the vvv104 disk1 read gave it - errors on 7 of 8 monitors; the same physical diskette read as PAPER gave the running build

*written in assembler (no runtime library); text; ru+en / koi8-r; cross-run: error 7/8 — ?MON-F-trap through vector 10 at PC 014502; disks: 1; identified from: byte diff of the family 2026-09-06; sha256 a6cbcdb60ad0*

</details>

<details><summary><b>software/unsorted/ked/disk2/</b> — 1 file</summary>

### `software/unsorted/ked/disk2/KED.SAV`

KED.SAV as the vvv104 disk2 read gave it - fails on every monitor; 34 of 54 blocks differ from the running build; the same diskette read as baspasfor also failed, differently

*written in assembler (no runtime library); text; cross-run: failed — dropped into ODT at 014360; disks: 1; identified from: byte diff of the family 2026-09-06; sha256 5a76e4ae96aa*

</details>

</details>

<details><summary><b>software/unsorted/primer/</b> — 2 files</summary>

### `software/unsorted/primer/PRIMER.DOC`

«Заполнение платёжного поручения» - a step-by-step instruction for a bank clerk: insert the diskette labelled ROSA, switch on, enter the date, pick R15.SAV in the commander, edit DOKUM.DOC=PLPARU.DOC, fill in the payment order… - the workplace of Rodionov's system

*ru / koi8-r; disks: 1; identified from: read 2026-09-06; sha256 1cc5a9a91595*

### `software/unsorted/primer/PRIMER.SAV`

Fails on start, repeating "?Err 63 Illegal instruction trap ... (PC=005342)" - a runtime error, not a screen

*written in high-level (runtime library linked); text; en / ascii; cross-run: failed — runtime error: ?Err63Illegalinstructiontrapinroutine""l; disks: 1; identified from: program screen; sha256 5f0c5f8b076b*

</details>

### `software/unsorted/2.SAV`

Floppy formatter 'V2.1X (C) 1990 By Borisov V.V.': Format/Check/Test menu, sector sizes 128..1024, 48/96 tpi, 1-2 sides - and it carries its own 'Wrong Hardware or Software !' check. Its first instructions are FP11 floating-point (SETD/SETI at 001000), which the KR1807VM1 lacks and which GETEML/EM do not emulate (they cover EIS/FIS opcodes only) - so it traps through vector 10 at its very entry on every build: software from an FPU-equipped PDP-11, not for this machine

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: error — ?MON-F-trap through vector 10 at PC 001002; disks: 1; identified from: disassembly at 001000 (170011=SETD, 170002=SETI) + banner strings; single copy on volume 063; sha256 56227623300a*

### `software/unsorted/EDSP.SAV`

The frame editor EDSP as disk 063 carried it: the same 31 blocks as the running 062 build, but this copy errors out on every monitor of the cross-run - all 31 blocks differ from 062's, which is more than a bad sector explains.  Bad read, or a different build that needs something the probe disk lacked - not settled

*written in assembler (no runtime library); text; cross-run: error — ?KMON-F-ОшибкачтенияSY:EDSP.SAV.Screenshot saved: disk_recov; disks: 1; identified from: surviving menu strings 2026-09-05; sha256 f380cf1840ba*

### `software/unsorted/EXPRES.SAV`

EXPRES as disk 066 carried it: 9 of its 38 blocks differ from the build the ОСА and ОМЕГА disks share, and it exits at once on every monitor.  Bad read, or a cut that wants something else - not settled

*written in assembler (no runtime library); text; ru+en / koi8-r; cross-run: exited; disks: 1; identified from: program screen; sha256 fc45ba1f7584*

### `software/unsorted/MSDOS.SAV`

Exits at once - a stub that only carries the name; nothing MS-DOS about it on this machine

*written in assembler (no runtime library); text; ru / koi8-r; cross-run: exited; disks: 1; identified from: identified 2026-09-05; shipped as .SAV: the .EXE name is the collector's later renaming on disk4; sha256 cf57c4e74437*

### `software/unsorted/PIP.SAV`

PIP.SAV as the vvv104 disk1 read gave it - errors on 7 of 8 monitors; the same physical diskette read as PAPER gave the ordinary running PIP

*written in assembler (no runtime library); text; en / ascii; cross-run: error 7/8 — ?MON-F-trap through vector 10 at PC 005570; disks: 1; identified from: factory manual; sha256 f39c0fc8d98e*

### `software/unsorted/TET.SAV`

Tetris - «ИГРА ПАЖИТНОВА А.Л.» on its title screen (KOI-7), built on the Whitesmiths C runtime of 1978; the surviving build stops with an error on every monitor

*written in assembler (no runtime library); text; en / ascii; cross-run: error 7/8 — ?MON-F-trap through vector 10 at PC 022216; disks: 1; identified from: identified 2026-09-05; sha256 e6cfd4d257d0*

</details>

</details>

