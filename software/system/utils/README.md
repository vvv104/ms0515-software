# Utilities

DEC's RT-11 utilities in their Soviet builds plus the small helpers of the kits, the terminal emulator `TERM` that makes the machine a terminal of another computer over its serial line, and Домнич's perpetual calendar `CALEND.SAV`, whose source is in `programs/domnich/`.  Run a utility by its bare name at the monitor prompt (`DIR`, `PIP`, `DUP`) or with `R NAME`; the CSI ones prompt with `*` for an output=input command line and exit on `^C`.

| file | what | how to run |
|---|---|---|
| `ASC.SAV` | Interactive character-code lookup: press any key and it prints the ASCII code (A -> 65, 7 -> 55; the console upcases letters first). A pocket reference vvv kept on every one of his disks - indispensable in a KOI-7/KOI-8/CP866 world | `RUN ASC` |
| `BADS.SAV` | Bad-block scanner (RT-11 BAD-style): at its '*' prompt give a device ('DZ0:'), it reads every block with a running counter and reports 'N bad blocks detected' / 'Block N is bad.'; switches C,S,E,A,O. Three blocks of assembler - the sibling craft of KBAD13 | bare prompt, no answer to a bogus file name |
| `BINCOM.SAV` | DEC RT-11 BINCOM V05.08, Russian-localized binary compare (files or devices, PATCH output for SIPP) | bare prompt, no answer to a bogus file name |
| `BLACK.SAV` | Blanks the screen to black and returns to the monitor | `RUN BLACK` |
| `BLUE.SAV` | Sets the screen blue with yellow letters and returns to the monitor; the counterpart of BLACK.SAV and WHITE.SAV | `RUN BLUE` |
| `CALEND.SAV` | Calendar generator for the years 1583-5000, to a file or to LP:; A. V. Domnich, 16-06-94 | `RUN CALEND` |
| `DATSET.SAV` | Date-setting program of the OSA kit: asks for the date as `дд-мм-гг`, then for a startup file to run (an empty answer lists the directory instead). It reads its answers from a command file, which OSA's own `DATE` command never does - KMON there compares the Russian month in the form the console driver delivers, and refuses any spelling a file holds - so this is how an OSA disk gets its date at boot: `startup = ["R DATSET", "01-04-92", ""]` in a wizard selection, bundle `datset` added. Games such as LABRN refuse to run with no date | `RUN DATSET` |
| `DAY.SAV` | Asks for a date, offering 18-MAR-93 as the default | `RUN DAY` |
| `HELP.TXT` | «Описание команд операционной системы ФОДОС-3» - the command reference HELP.SAV prints, as plain text: ASSIGN, BOOT, COPY… with their syntax | text: `TYPE HELP.TXT`, or read on the host (koi8-r) |
| `NEG.SAV` | Writes 000010 into System Register C (177604): selects the 640x200 hi-res mode with a black border.  The video-mode counterpart of BLACK, BLUE and WHITE | `RUN NEG` |
| `TERM.TXT` | Manual of TERM.SAV as used in the МС0111 complex check-out: the МС-0515 as a terminal of the central МС0108 (ФОДОС-4, TS/TSX monitor, DEMO.SAV on the central machine) | text: `TYPE TERM.TXT`, or read on the host (koi8-r) |
| `TFP.SAV` | Text formatter of the OSA kit; the manual recommends keeping it on the system device | bare prompt, no answer to a bogus file name |
| `WHITE.SAV` | Sets the screen to white and returns to the monitor; the counterpart of BLACK.SAV and BLUE.SAV | `RUN WHITE` |

Programs that survived in several builds - `DATIME.SAV`, `DIR.SAV`, `DUMP.SAV`, `DUP.SAV`, `HELP.SAV`, `PIP.SAV`, `RESORC.SAV`, `TERM.SAV` - have one folder per kit here, each build in the folder of the disks it came from: `dec/` - DEC's originals; `mihin/` - Mihin's OS-16SJ kits; `ms0111/` - the МС0111 complex disk; `omega/` - the ОМЕГА kits; `osa/` - the ОСА kits; `osa-rs/` - ОСА with the RS profShell; `rodionov/` - Rodionov's RT15SJ disks; `vvv/` - the collector's disks.  The files in the table are common to every kit.
