# Handlers: RT-11 from sources

The handlers of the `dec` and `dec-ru` systems - DEC's RT-11 V5.4 built for the MS 0515. None of these files was recovered from a diskette: every one is built from a source, in the emulator's repository (`rt11_devel/projects/rt11`), with DEC's own LINK and libraries. They carry the sysgen word of the `dec` monitors (no error logging, no timer support), which is ОМЕГА's too.

Put here by `rt11_devel/projects/rt11/kit/ship_kit.py`.

| file | what | source |
|---|---|---|
| `DZ.SYS` | The floppy handler, one side a volume. Written for the machine from what the kits' binaries do; a primary driver of its own, so `COPY/BOOT` works | `handlers/dz/DZ.MAC` |
| `DV.SYS` | The whole diskette as one volume of 1600 blocks, turned one cylinder on; boots | the same source behind `DVPRE.MAC` |
| `MZ.SYS` | The whole diskette as one volume, cylinder 0 first; does not boot (the ROM starts from cylinder 1) | the same source behind `MZPRE.MAC` |
| `TT.SYS` | The terminal handler: DEC's `TT.MAC` with six lines for the console through the ROM - ОМЕГА's `TT.SYS` byte for byte | `handlers/tt/TT.diff` |
| `VM.SYS` | The memory disk, 112 blocks in the extra banks - the kits' `VM.SYS` byte for byte | `handlers/vm/VM.MAC` |
| `EX.SYS` | The electronic disk of the expansion board, all 1024 blocks. The kits' `EX.SYS` is the same code with a table of one board's four bad pages and 1022 blocks | `handlers/ex/EX.MAC` |
| `HD.SYS` | The emulator's paravirtual hard disk | `handlers/hd/` |
| `NL.SYS` `LD.SYS` | DEC's V5.4 null device and logical disks, as they are | DEC's sources |
| `LP.SYS` `LS.SYS` `SP.SYS` | DEC's printer handlers and spooler, as they are. **Untried**: DEC's `LP` expects an LP11 at `177514`, which the machine has not | DEC's sources |
| `BA.SYS` | The resident part of `BATCH` | DEC's sources |

DEC's `SL.SYS` is not here: it edits the line rightly but its screen control does not fit the machine's console. ОСА's and ОМЕГА's `SL.SYS` (`../../osa/handlers/`, `../../omega/handlers/`) load under these monitors.

`EM.SYS`, the EIS/FIS instruction emulator of the ОСА kit (`../../osa/handlers/`), works under these monitors as it is: `SET EM SYSGEN`, then `SET EM ON`.

Not in the catalogue (`CATALOG.md`, `catalog.csv`) or in the cross-run table of `../../HANDLERS.md` yet.
