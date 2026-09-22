# Common development tools

What one writes programs with on this machine, in the one build the collection has of each: the macro library, the compilers with their libraries, the screen editor in its three cuts, the dump viewer and the two BASICs.  A kit's own assembler and linker — `MACRO.SAV`, `LINK.SAV`, of which several builds survived — stay in that kit's `development/`, and the wizard offers them as alternatives.

| file | what | how to run |
|---|---|---|
| `LIBR.SAV` | The librarian, built from DEC's V5.4 sources.  No kit of the machine had one, so no library could be rebuilt | `RUN LIBR` |
| `ODT.OBJ` | The octal debugger, to be linked into the program it debugs | object module for LINK |
| `SYSMAC.SML` | MACRO-11 system macro library — what MACRO reads from `SY:`, the same file on every kit's disks | read by MACRO |

## Pascal

OMSI Pascal-1 (`PAS1.SAV`, © ESI 1975-77) as adapted for the machine, its libraries, the graphics library `PASGRF.OBJ` with its manual `PASGR.DOC` and its declarations file `GRAPH.P1U` (the EXTERNAL procedure headers to include in a program), and three unit sources to include in your own programs: `STRING.PAS` (a string type with editing input and VAL), `SETPIX.PAS` (SetPixel straight into the video RAM) and `GETDAT.PAS` (the RT-11 date via inline MACRO).  `PASUSE.LST` is the usage guide, `PASCAL.LST` the language listing.

| file | what | how to run |
|---|---|---|
| `GETDAT.PAS` | getdat(var d:data) - the system date (year 1972.., month, day) unpacked from the RT-11 .DATE word with inline MACRO-11 ({$C ... }), a unit for programs that stamp their output | compile with PAS1, MACRO, LINK |
| `GRAPH.P1U` | Declarations file of the PASGRF graphics library for OMSI Pascal-1: the EXTERNAL procedure headers (InitGraph, SetColor, SetFon, SetBorder, SetPixel...) to include in a program that links with PASGRF.OBJ | data file |
| `PAS1.OBJ` | The OMSI Pascal run-time support module («Trap to 4», «Not a valid device», «End of file on device»…) every compiled program is LINKed with | object module for LINK |
| `PAS1.SAV` | First pass of the Pascal compiler; prompts with * for a command line | `R PAS1`, then `*OUT,LST=IN.PAS` at the CSI prompt |
| `PAS1HD.OBJ` | A one-block object module whose only text is «Graphics library -- copyleft by Naumov A.I.» - the header of the graphics library | object module for LINK |
| `PASCAL.LST` | The Pascal language listing/reference that came with the compiler. Two reads of disk5 survived; this is the clean one (the other has junk in blocks 130, 150, 168-170) | text: `TYPE PASCAL.LST`, or read on the host (koi8-r) |
| `PASGR.DOC` | Manual of the Pascal graphics library PASGRF.OBJ: InitGraph, SetColor, SetFon, SetBorder, SetBright/ResBright, SetFlach, drawing and text routines, KbMode/inkey keyboard polling, with examples. Three reads of disk5 survived; this is the one clean one (the other two carry corrupt blocks 6-13 and 26) | text: `TYPE PASGR.DOC`, or read on the host (koi8-r) |
| `PASGRF.OBJ` | The graphics library for OMSI Pascal on the МС-0515: InitGraph, SetPixel, LINE, sprites - what the graphics programs LINK with | object module for LINK |
| `PASLIB.OBJ` | The Pascal library with the terminal routines (ClrScr, GotoXY, Inkey, KbMode, cursor on/off) the programs declare EXTERNAL | object module for LINK |
| `PASUSE.LST` | «ПАСКАЛЬ - руководство программиста», 45 sheets, 1982: the Pascal programmer's manual of the machine | text: `TYPE PASUSE.LST`, or read on the host (koi8-r) |
| `SETPIX.PAS` | SetPixel for the 640x200 hi-res screen written straight against the hardware: the pixel byte at VRAM 40000B + 80*y + x div 8, ORed with the bit mask, with the memory-dispatcher register 177400B / its shadow at 157700B switched to reach the video bank and restored; a one-call test main follows | compile with PAS1, MACRO, LINK |
| `STRING.PAS` | String library for OMSI Pascal (which has no string type): STRING = array[1..79] of char with STRINIT, STRLENG, STRREAD (raw keyboard input through the external KBMODE/INKEY of PASGRF, with backspace editing), STRWRITE, STRDELETE, STRINSERT and VAL (string to real with an error position); ends with a small self-test main | compile with PAS1, MACRO, LINK |
| `SYSLIB.OBJ` | The RT-11 system library SYSLIB (28 KB) LINK draws the system calls from | object module for LINK |

## FORTRAN

The FORTRAN IV compiler (178 blocks — it does not fit next to a full kit on a DZ volume).  A FORTRAN program is built `FORTRA имя` → `MACRO имя` → `LINK имя,FORLIB`, so the compiler is useless without the library; the library is not useless without the compiler, because the Pascal programs link it too — the minesweeper's own build line on the collector's diskettes reads `LINK K,PASLIB,RND,PAS1,FORLIB`, for `RAN` and the other FORTRAN-declared routines.

| file | what | how to run |
|---|---|---|
| `FORLIB.OBJ` | The FORTRAN IV run-time library (105 KB) that the FORTRAN and the OMSI Pascal programs are LINKed against | object module for LINK |
| `FORTRA.SAV` | FORTRAN compiler; prompts with * for a command line the way the RT-11 compilers do | `RUN FORTRA` |

## BASIC

БЕЙСИК-ОМЕГА (`BASICO.SAV`, the native BASIC of the machine; manual `BASICO.DOC`) and BASIC/RAFOS (`BASIC.SAV`, asks which optional functions to load).  Both run with `R BASICO` / `R BASIC`.  Under БЕЙСИК-ОМЕГА `LOAD NAME` loads a `.BAS`, `RUN` runs it, `BYE` returns to the monitor (BASIC/RAFOS says `OLD NAME` instead).

| file | what | how to run |
|---|---|---|
| `BASIC.SAV` | BASIC / RAFOS V02-030 interpreter; asks which optional functions to load (ALL, NONE, OR INDIVIDUAL) | `RUN BASIC` |
| `BASICO.DOC` | Manual of БЕЙСИК-ОМЕГА («РАЗРАБОТАН ЛЬВОВСКИМ НАУЧНО-ИССЛЕДОВАТЕЛЬСКИМ ПРЕДПРИЯТИЕМ "ОМЕГА"»), 363 blocks. Pages 8-14 are lost: under blocks 29-45 the diskette holds monitor swap code, not text, and the three reads of disk5 (the only disk with the file) disagree there | text: `TYPE BASICO.DOC`, or read on the host (koi8-r) |
| `BASICO.SAV` | Omega BASIC for the Elektronika MS 0515, edition 1-01a; the native BASIC of the machine, ready prompt in Russian | `R BASICO`; `LOAD NAME` / `RUN` / `BYE` |

## Editors

The screen editor of the kits in its two cuts: `K13U.SAV` (alias K52.SAV), the build every ОСА and ОМЕГА disk shipped - eight disks carry it byte-identical - and `KED.SAV`, the same binary with its two last English strings translated («WORKING...» → «Работаю...», «Model:» → «Образ:»), from the vvv disks - and `R15.SAV`, Rodionov's edition of the same editor («Редактор текста R15», V01.2): every prompt Russian and the help frame redrawn in pseudo-graphics, 952 bytes apart from K13U; `R15.DOC` is the K13U(K52) manual with the keypad map, `R15.HLP` the note on entering pseudo-graphics (the КМП key).  `KBAD13.SAV` of disk 063 was K13U with its second half destroyed and is not shipped.  DEC's own line editor `EDIT.SAV` is in [`../utils/`](../utils/README.md).

| file | what | how to run |
|---|---|---|
| `K13U.SAV` | Screen text editor of the ОСА/ОМЕГА kits (the K13/KED family; alias K52.SAV), the build eight disks carry byte-identical; two of its messages are still English («WORKING...», «Model:») - KED.SAV is the same binary with them translated. Its keyboard layout is described in R15.DOC | bare prompt, no answer to a bogus file name |
| `KED.SAV` | Keypad screen editor: the K13U.SAV binary with its last two English strings translated («Работаю...», «Образ:»), from the vvv disks (h0, disk3, disk4). A PAPER-family copy differs by one word in a key table; K13U and the eight-disk build agree with this one, so this is the sound build | bare prompt, no answer to a bogus file name |
| `R15.DOC` | «Описание работы с экранным редактором текста K13U(K52)» - the manual of the K13 family editor (R15/K13U/KED): the keypad map of the МС0515 (ПФ1-ПФ4, страница/абзац/добавить/стирзнак...), the editor's functions and commands | text: `TYPE R15.DOC`, or read on the host (koi8-r) |
| `R15.HLP` | «Ввод псевдографических символов в редакторе R15» - how to enter pseudo-graphics in the editor with the КМП (compose) key | text: `TYPE R15.HLP`, or read on the host (koi8-r) |
| `R15.SAV` | «Редактор текста R15» V01.2 - Rodionov's edition of the K13U/KED screen editor (same 27648-byte binary, 952 bytes apart): every prompt Russian («Ждите...», «Повтор:», «Поиск:», «Команда:»), the help frame redrawn in pseudo-graphics, keypad functions ДАЛЕЕ/СТИРСТРОК/СПРАВКА...; prompts with * for the file name like the others | bare prompt, no answer to a bogus file name |

## Debuggers and dump viewers

DEZI V05.01 by D. Climov (`DESS.SAV`; `REDUMP.SAV` is the same binary rebadged): `R DESS` then a file name — an octal dump with an ASCII gutter, search and a live MACRO-11 disassembly of the word under the cursor.

| file | what | how to run |
|---|---|---|
| `DESS.SAV` | DEZI V05.01, 'Originally written by D. Climov' (phone in the banner): an interactive octal dump viewer-cum-disassembler - full-screen word dump with ASCII gutter, BLCK/ADDR/TYPE header, a Stack line and a live 'Macro-11:' disassembly of the word at the cursor; modes words/bytes/radix/ascii/Inst, pattern search. The machine's resident disassembling tool; on all five of the keeper's disks | prompt; answers ?DEZI-F-FilenotfoundDK:NOSUCH.XXX* |
| `REDUMP.SAV` | DEZI V05.01 by D. Climov with the banner hex-patched to 'REDUMP B5.0e' - a local rebadge of DESS.SAV, the same program (string tables byte-identical); unrelated to the small REDUMP.PAS in PROGS.DSK | bare prompt, no answer to a bogus file name |
