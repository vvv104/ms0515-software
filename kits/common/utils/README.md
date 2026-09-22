# Common utilities

One build each, and they run on any system.  The RT-11 ones (`EDIT`, `FORMAT`, `SLP`, `PAT`, `SIPP`, `STRIP`, `SPLIT`) were built from DEC's V5.4 sources for this collection — no diskette preserved a second build; the rest came off the Soviet diskettes.

| file | what | how to run |
|---|---|---|
| `EDIT.SAV` | DEC's text editor - no kit of the machine carried it. A command ends with two ALTMODEs, which on the МС 7004 keyboard is F11 |
| `FORMAT.SAV` | DEC's FORMAT with a module for the machine's drive in the place of DEC's stub for the Professional 350: formats `DZ`, `DV` and `MZ` diskettes, and verifies them (`FORMAT/VERIFY`). Needs an emulator whose controller has WRITE TRACK: later than v1.14.1 |
| `SLP.SAV` `PAT.SAV` `SIPP.SAV` | Patching sources, objects and programs - how DEC shipped its corrections | `R SLP`, `R PAT`, `R SIPP` |
| `STRIP.SAV` `SPLIT.SAV` | Takes the symbols off a program; cuts a file in parts | `R STRIP`, `R SPLIT` |
| `ASC.SAV` | Interactive character-code lookup: press any key and it prints the ASCII code (A -> 65, 7 -> 55; the console upcases letters first). A pocket reference vvv kept on every one of his disks - indispensable in a KOI-7/KOI-8/CP866 world | `RUN ASC` |
| `BADS.SAV` | Bad-block scanner (RT-11 BAD-style): at its '*' prompt give a device ('DZ0:'), it reads every block with a running counter and reports 'N bad blocks detected' / 'Block N is bad.'; switches C,S,E,A,O. Three blocks of assembler - the sibling craft of KBAD13 | bare prompt, no answer to a bogus file name |
| `BLACK.SAV` | Blanks the screen to black and returns to the monitor | `RUN BLACK` |
| `BLUE.SAV` | Sets the screen blue with yellow letters and returns to the monitor; the counterpart of BLACK.SAV and WHITE.SAV | `RUN BLUE` |
| `CALEND.SAV` | Perpetual calendar for the years 1583-5000, to a file or to `LP:` - A. V. Domnich, 16-06-94. The source it was built from is in [`../../../programs/domnich/`](../../../programs/domnich/README.md) | `RUN CALEND` |
| `DATSET.SAV` | Date-setting program of the OSA kit: asks for the date as `дд-мм-гг`, then for a startup file to run (an empty answer lists the directory instead). It reads its answers from a command file, which OSA's own `DATE` command never does - KMON there compares the Russian month in the form the console driver delivers, and refuses any spelling a file holds - so this is how an OSA disk gets its date at boot: `startup = ["R DATSET", "01-04-92", ""]` in a wizard selection, bundle `datset` added. Games such as LABRN refuse to run with no date | `RUN DATSET` |
| `DAY.SAV` | Asks for a date, offering 18-MAR-93 as the default | `RUN DAY` |
| `HELP.TXT` | «Описание команд операционной системы ФОДОС-3» - the command reference `HELP.SAV` prints, as plain text: ASSIGN, BOOT, COPY… with their syntax. The kits' `HELP.SAV` builds need `HELP.MLB`, the help library no disk preserved; this text is what it would have said, and it reads on any system | text: `TYPE HELP.TXT`, or read on the host (koi8-r) |
| `NEG.SAV` | Writes 000010 into System Register C (177604): selects the 640x200 hi-res mode with a black border.  The video-mode counterpart of BLACK, BLUE and WHITE | `RUN NEG` |
| `TFP.SAV` | Text formatter of the OSA kit; the manual recommends keeping it on the system device | bare prompt, no answer to a bogus file name |
| `WHITE.SAV` | Sets the screen to white and returns to the monitor; the counterpart of BLACK.SAV and BLUE.SAV | `RUN WHITE` |
