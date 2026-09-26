# Development software

What one writes programs with on this machine, in the one build the
collection has of each - the compilers with their libraries and manuals,
the BASICs, the dump viewer - and, in this folder itself, what every
language's build goes through: the assembler, the linker, the system macro library and the system object
library the emulator's own projects are built with (`rt11_devel/` there
composes its build system from these - DEC's, built from its V5.4 sources
by `rt11_devel/projects/rt11`), the librarian, the debugger, the
library comparer, the patchers and the file comparers.  The kits' own system libraries, another pair, are in
`fodos/`.

| where | what |
|---|---|
| [`pascal/`](pascal/README.md) | OMSI Pascal-1: `PAS1` with its libraries, the graphics library, the units, the manuals, the sprite maker |
| [`fortran/`](fortran/README.md) | FORTRAN IV with its library |
| [`basic/`](basic/README.md) | БЕЙСИК-ОМЕГА and BASIC/RAFOS |
| [`dezi/`](dezi/README.md) | DEZI, the octal dump viewer, and its rebadged twin |
| [`fodos/`](fodos/README.md) | what the machine's kits brought: the system macro library and the system object library, the same files on every kit's disks - what PAS1's and FORTRAN's programs link against - and Mihin's and the ОМЕГА kits' own MACRO and LINK |
| [`decusc/`](decusc/README.md) | DECUS C, rebuilt from the RT-11 SIG tape's sources: the files themselves for the machine as it is, `eis/` for the machine with `EM.SYS`, the headers, the tape's software tools |

| file | what | how to run |
|---|---|---|
| `MACRO.SAV` | MACRO V05.04 - the assembler of the collector's ФОДОС kit (disk3, PAPER; disk4 as well)  (on PAPER, h0, vvv104 disk3; near-identical copies on vvv104 disk4) | `RUN MACRO` |
| `LINK.SAV` | LINK V5.4 - byte for byte what DEC's sources give |
| `SYSMAC.SML` | DEC's system macro library |
| `SYSLIB.OBJ` | DEC's system object library. Not interchangeable with the Pascal kit's `SYSLIB.OBJ` (`fodos/`): a `PIP` linked against that one builds without a complaint and dies of an overlay error |
| `LIBCOM.SAV` | Compares two object libraries module by module |
| `LIBR.SAV` | The librarian, built from DEC's V5.4 sources.  No kit of the machine had one, so no library could be rebuilt | `RUN LIBR` |
| `SLP.SAV` `PAT.SAV` `SIPP.SAV` | Patching sources, objects and programs - how DEC shipped its corrections | `R SLP`, `R PAT`, `R SIPP` |
| `STRIP.SAV` `SPLIT.SAV` | Takes the symbols off a program; cuts a file in parts | `R STRIP`, `R SPLIT` |
| `SRCCOM.SAV` `BINCOM.SAV` | `DIFFERENCES` of texts and of binaries |
| `ODT.OBJ` | The octal debugger, to be linked into the program it debugs | object module for LINK |

`MACRO.SAV` is the FODOS kit's of the vvv104 disks and `LINK.SAV` DEC's,
byte for byte from its sources - the vvv104 disks' LINK was the same file.
Mihin's MACRO and LINK and the ОМЕГА kits' older MACRO, other builds, are in `fodos/mihin/` and `fodos/omega/`.
