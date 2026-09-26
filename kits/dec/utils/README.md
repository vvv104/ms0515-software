# Utilities: RT-11 V5.4 from sources

DEC's RT-11 V5.4 utilities, built from DEC's own sources by DEC's own command files, with DEC's LINK and libraries, inside the emulator (`rt11_devel/projects/rt11` of the emulator's repository). English messages, as DEC wrote them. DEC's originals as they were *found* on the Soviet diskettes are with the kits of those diskettes: `HELP.SAV` of 062 in `../../omega/utils/`, `RESORC.SAV` of the vvv104 disk4 in `../../vvv/utils/` - which is all but four bytes of the `RESORC.SAV` built here.

Put here by `rt11_devel/projects/rt11/kit/ship_kit.py`.  The ones any system runs - `EDIT`, `K52`, `FORMAT`, `SLP`, `PAT`, `SIPP`, `STRIP`, `SPLIT` - it puts with the common utilities, `../../common/utils/`.

| file | what |
|---|---|
| `DIR.SAV` `DUP.SAV` `PIP.SAV` | The three a working disk needs: directories, volumes (`INIT`, `SQUEEZE`, `COPY/BOOT`), files |
| `DUMP.SAV` | Octal and ASCII dump of files and blocks |
| `HELP.SAV` `HELP.MLB` | `HELP` with its library - the library no diskette preserved |
| `RESORC.SAV` | `SHOW`: devices, memory, configuration |
| `DATIME.SAV` | Asks for the date and time at startup |
| `UCL.SAV` `LET.SAV` | Commands of one's own: the `dec` monitors hand what they do not know to `UCL` |
| `BATCH.SAV` | Batch jobs; its handler is `BA.SYS` |
| `QUEMAN.SAV` `QUEUE.REL` `SPOOL.REL` | The print queue and the spooler. **Untried** |

| `IND.SAV` | The indirect command file processor - variables, conditions, `.GOTO`, `@<EOF>` - built from DEC's sources in five command files on one machine.  It gets `@file` only after `SET KMON IND`, which its bundle puts in the startup file; without it KMON runs the file itself and reads an IND directive as an invalid command | `SET KMON IND`, then `@FILE` |
| `FILEX.SAV` | File exchange with DOS-11, RSTS/E and IBM interchange diskettes, as DEC wrote it; no such diskette has been tried on the machine |
| `MDUP.SAV` | DUP cut down to what bootstrapping a volume takes (`/O`, `/W`, `/Z`, `/S`), for a system that has no room for DUP |
| `TERMID.SAV` `MSCPCK.SAV` | The terminal identification and the MSCP check.  Both run and find nothing: the ROM's console answers no `ESC Z`, and the machine has no MSCP controller.  Built because the sources build them |

Left out on purpose: `SETUP` (VT100 and LA50 escape sequences and the Professional 350's tables), `SPEED` (sets the baud rates of a PDT-11/150), `GIDIS`; `ERROUT` and `EL.SYS`, which need a monitor built with error logging. Not ready: `IND`, `VTCOM`.

Not in the catalogue (`CATALOG.md`, `catalog.csv`) yet.
