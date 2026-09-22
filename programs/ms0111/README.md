# The МС 0515 in the МС0111 complex

Everything here runs on the МС 0515.  «Электроника МС0111» is not a machine but the name of the whole installation, and `TERM.TXT` of the work diskette 056, kept here, says what it was made of:

> Программные средства, предназначенные для проверки комплекса КВИ «Электроника МС0111», состоят из двух программ - TERM.SAV на ПЭВМ «Электроника МС0515» и DEMO.SAV на центральной ЭВМ («Электроника МС0108»).  Программа DEMO работает в среде ОС ФОДОС-4 под управлением многопользовательского монитора TS.  Эмулятор терминала TERM, вызванный в среде операционной системы ОСА, предоставляет пользователю возможность работы в среде ОС ФОДОС-4, - в частности, с программой DEMO.

So: our machine runs ОСА and is the terminal; the central one is an МС 0108 running ФОДОС-4 under the multi-user monitor TS V6.1, and the document walks the check-out step by step — `DU` then `TSX` on the central machine, `R TERM` on the МС 0515, «Линия #N» on the screen.

What is here is the engineer's side of that: the link initializer `EPP`, the `KUBUS` patch and the memory-mapping tests `PIC`/`PIC1`, each with its sources.  The `PC` and `RK` handlers of the same diskette, which came without sources, are in [`../../kits/mihin/handlers/056/`](../../kits/mihin/handlers/056/README.md).  The terminal emulator itself, `TERM.SAV`, is a standard utility of the machine and is in `kits/omega/utils/` with its short manual — the long manual, the one quoted above, is this folder's `TERM.TXT`.  The link registers are not emulated, so these programs only start.

| file | what | how to run |
|---|---|---|
| `EPP.BAK` | Earlier revision of EPP.MAC, one line shorter (no TST @#177552 poll) - kept as the project's history | data file |
| `EPP.MAC` | Nine lines: writes the constant 47 to the register 173406 and exits - initialises the link adapter of the МС0111 complex | assemble with MACRO, then LINK |
| `EPP.OBJ` | Object module of EPP.MAC | object module for LINK |
| `EPP.SAV` | Link-channel initializer from the work diskette 056: an 8251-style UART setup sequence into 173206 (dummy/mode/command bytes) plus 173406, then a test of 177552; run before TERM. Source EPP.MAC survives beside it | `RUN EPP` |
| `KUBUS.BAK` | Earlier revision of KUBUS.MAC with different patch addresses (21 lines apart) - kept as the project's history | data file |
| `KUBUS.MAC` | Fourteen lines: stores 13727 at 125464 (a patch into memory) and exits - the KUBUS fix of the complex | assemble with MACRO, then LINK |
| `KUBUS.OBJ` | Object module of KUBUS.MAC | object module for LINK |
| `KUBUS.SAV` | Ten-word in-memory patch from the work diskette 056: pokes a polling sequence for I/O register 175200 (the link adapter) into code loaded at 125464 and exits. Source KUBUS.MAC survives beside it | `RUN KUBUS` |
| `PIC.SAV` | Extended-memory mapping TEST from the work diskette 056: takes a file at its CSI '*' prompt, asks 'poehali?' and walks the mapped-memory API - create region, create window, map window, read/write/remap, reporting 'remap OK / read OK / write OK' per step (also prints 'user mode'/'digit mode'). Under our SJ monitors the mapping step fails with 'ERROR in macro or I-O error 22' - it expects the multi-user/XM environment of the complex's central machine world | prompt; answers ?CSI-F-Файлненайден* |
| `PIC1.SAV` | PIC.SAV with eleven bytes changed - ten size constants 6->8 and one address 040->044: the same memory-mapping test rebuilt for a larger window/region. An engineer's parameter sweep preserved as two binaries | prompt; answers ?CSI-F-Файлненайден* |
| `TERM.TXT` | «Работа в режиме эмуляции терминала центральной ЭВМ» - the check-out procedure of the КВИ «Электроника МС0111» complex, 9 blocks, on the 056 diskette only: what the complex is made of (TERM on the МС 0515 under ОСА, DEMO on the central МС 0108 under ФОДОС-4/TS V6.1), how to start both machines, and what a correct run looks like.  Not the same file as the one-block TERM.TXT of the other disks, which only tells the operator how to call TERM | text: `TYPE TERM.TXT`, or read on the host (koi8-r) |
