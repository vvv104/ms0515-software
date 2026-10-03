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
| `SL.SYS` | The single-line editor: DEC's V5.4 `SL`, its own logic and keys (PF1 is GOLD, PF2 help), built for the VT52 the ROM's console is, with a patch of eight lines where DEC left that build unfinished. `SET SL ON` | `handlers/sl/SL.diff` |

`tab/SL.SYS` is the same `SL` with things of ours (the emulator's `rt11_devel/projects/sl`): **Tab completes the word** in the monitor's command line - commands, their switches, SET's and SHOW's words, file names, all read from the running monitor; **the history is a ring** of as many lines as fit in the 160 bytes where DEC kept two (Up older, Down newer; GOLD Up is Up); **Home, End and Delete** (НТ, ВЫБР, УДАЛ) go to the ends of the line and delete under the cursor; **PF2 lists the keys**. The rest is DEC's. 21 blocks; in memory 3572 bytes, seven blocks against the eight of DEC's own - the completion and the help are an overlay read from the file when Tab or PF2 is pressed, and DEC's picture of a VT52's keypad is not built in. Bundle `sl-tab`; the `dec` preset keeps DEC's own.

ОСА's and ОМЕГА's `SL.SYS` (`../../osa/handlers/`, `../../omega/handlers/`) load under these monitors too.

`EM.SYS`, the EIS/FIS instruction emulator of the ОСА kit (`../../osa/handlers/`), works under these monitors as it is: `SET EM SYSGEN`, then `SET EM ON`.

Not in the catalogue (`CATALOG.md`, `catalog.csv`) or in the cross-run table of `../../HANDLERS.md` yet.
