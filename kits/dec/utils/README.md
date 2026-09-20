# Utilities: RT-11 V5.4 from sources

DEC's RT-11 V5.4 utilities, built from DEC's own sources by DEC's own command files, with DEC's LINK and libraries, inside the emulator (`rt11_devel/projects/rt11` of the emulator's repository). English messages, as DEC wrote them. `../../dec-originals/` is a different thing: DEC's originals as they were *found* on the Soviet kits' diskettes.

Put here by `rt11_devel/projects/rt11/kit/ship_kit.py`.

| file | what |
|---|---|
| `DIR.SAV` `DUP.SAV` `PIP.SAV` | The three a working disk needs: directories, volumes (`INIT`, `SQUEEZE`, `COPY/BOOT`), files |
| `DUMP.SAV` | Octal and ASCII dump of files and blocks |
| `EDIT.SAV` | DEC's text editor - no kit of the machine carried it. A command ends with two ALTMODEs, which on the МС 7004 keyboard is F11 |
| `HELP.SAV` `HELP.MLB` | `HELP` with its library - the library no diskette preserved |
| `RESORC.SAV` | `SHOW`: devices, memory, configuration |
| `DATIME.SAV` | Asks for the date and time at startup |
| `SRCCOM.SAV` `BINCOM.SAV` | `DIFFERENCES` of texts and of binaries |
| `SLP.SAV` `PAT.SAV` `SIPP.SAV` | Patching sources, objects and programs - how DEC shipped its corrections |
| `STRIP.SAV` `SPLIT.SAV` | Takes the symbols off a program; cuts a file in parts |
| `UCL.SAV` `LET.SAV` | Commands of one's own: the `dec` monitors hand what they do not know to `UCL` |
| `FORMAT.SAV` | DEC's FORMAT with a module for the machine's drive in the place of DEC's stub for the Professional 350: formats `DZ`, `DV` and `MZ` diskettes, and verifies them (`FORMAT/VERIFY`). Needs an emulator whose controller has WRITE TRACK: later than v1.14.1 |
| `BATCH.SAV` | Batch jobs; its handler is `BA.SYS` |
| `QUEMAN.SAV` `QUEUE.REL` `SPOOL.REL` | The print queue and the spooler. **Untried** |

Left out on purpose: `SETUP` (VT100 and LA50 escape sequences and the Professional 350's tables), `SPEED` (sets the baud rates of a PDT-11/150), `MDUP`, `FILEX`, `TERMID`, `MSCPCK`, `GIDIS`; `ERROUT` and `EL.SYS`, which need a monitor built with error logging. Not ready: `IND`, `VTCOM`.

Not in the catalogue (`CATALOG.md`, `catalog.csv`) yet.
