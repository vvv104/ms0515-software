# FORTRAN

The FORTRAN IV compiler (178 blocks — it does not fit next to a full kit on a DZ volume).  A FORTRAN program is built `FORTRA имя` → `MACRO имя` → `LINK имя,FORLIB`, so the compiler is useless without the library; the library is not useless without the compiler, because the Pascal programs link it too — the minesweeper's own build line on the collector's diskettes reads `LINK K,PASLIB,RND,PAS1,FORLIB`, for `RAN` and the other FORTRAN-declared routines.

| file | what | how to run |
|---|---|---|
| `FORLIB.OBJ` | The FORTRAN IV run-time library (105 KB) that the FORTRAN and the OMSI Pascal programs are LINKed against | object module for LINK |
| `FORTRA.SAV` | FORTRAN compiler; prompts with * for a command line the way the RT-11 compilers do | `RUN FORTRA` |
