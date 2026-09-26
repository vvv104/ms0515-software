# Development software

What one writes programs with on this machine, in the one build the
collection has of each - the compilers with their libraries and manuals,
the BASICs, the screen editor in its three cuts, the dump viewer - and, in
this folder itself, what every language's build goes through: the
assembler and the linker the emulator's own projects are built with
(`rt11_devel/` there composes its build system from these), the librarian
and the debugger.  The system macro library and the system object library
stay with the kits, being a kit's own (`kits/dec/development/`,
`kits/common/development/`).

| where | what |
|---|---|
| [`pascal/`](pascal/README.md) | OMSI Pascal-1: `PAS1` with its libraries, the graphics library, the units, the manuals, the sprite maker |
| [`fortran/`](fortran/README.md) | FORTRAN IV with its library |
| [`basic/`](basic/README.md) | БЕЙСИК-ОМЕГА and BASIC/RAFOS |
| [`editors/`](editors/README.md) | the screen editor in its three cuts: `K13U`, `KED`, `R15` |
| [`dezi/`](dezi/README.md) | DEZI, the octal dump viewer, and its rebadged twin |
| [`decusc/`](decusc/README.md) | DECUS C, rebuilt from the RT-11 SIG tape's sources: the files themselves for the machine as it is, `eis/` for the machine with `EM.SYS`, the headers, the tape's software tools |

| file | what | how to run |
|---|---|---|
| `MACRO.SAV` | MACRO V05.04 - the assembler of the collector's ФОДОС kit (disk3, PAPER; disk4 as well)  (on PAPER, h0, vvv104 disk3; near-identical copies on vvv104 disk4) | `RUN MACRO` |
| `LINK.SAV` | LINK V5.4 - byte for byte what DEC's sources give |
| `LIBR.SAV` | The librarian, built from DEC's V5.4 sources.  No kit of the machine had one, so no library could be rebuilt | `RUN LIBR` |
| `ODT.OBJ` | The octal debugger, to be linked into the program it debugs | object module for LINK |

`MACRO.SAV` is the FODOS kit's of the vvv104 disks and `LINK.SAV` DEC's,
byte for byte from its sources - the vvv104 disks' LINK was the same file.
Mihin's MACRO and LINK, other builds, are in `kits/mihin/development/`.
