# DECUS C

The C compiler the machine's own C programs were made with: `RECODE.SAV`
(`programs/recode`) and the lyceum's `LINE.SAV` carry its run-time of
1980-82.  Not DEC's - the compiler David Conroy wrote in 1978 and Martin
Minow and the DECUS Structured Languages SIG kept, DECUS program 11-SP-18 -
rebuilt from the sources of the RT-11 SIG tape of Fall 1983 (`11SP59`, the
extract Thomas J. Shinal made for RT-11, on the "RT-11 Freeware" CD of
1999 as bitsavers has it) on the `dec` system with the machine's MACRO-11,
LINK and LIBR, by the command files that came with it:
`rt11_devel/projects/decusc/` of the emulator.  The tape's RT-11 kit was
built for a PDP-11 with EIS and FPU; on this machine its library traps on
the first `i*i`.

Two builds, the same names in each, so a diskette takes one folder whole:

| folder | for | how |
|---|---|---|
| [`noeis/`](noeis/) | the machine as it is | `RT11.MAC`: `C$$EIS = 0`, multiply, divide and shift by the library; `CC` calls the library unless told `/E` |
| [`eis/`](eis/) | the machine with `EM.SYS` (`SET EM SYSGEN`, `SET EM ON`), the EIS instructions emulated | `RT11.EIS`: the instructions inline in the library, and `CC` makes them inline unless told `/N` |
| [`include/`](include/) | both | the headers, as the tape's kit had them |

`CC.SAV` of the two differs in one byte, the default of its `-E` toggle;
`AS.SAV` is the same file.  The `eis` programs are slower here: an
emulated instruction is a trap and a hundred instructions of `EM`, where
the library's routine is a loop of twenty.

In `disks.toml` the compiler is `decusc` or `decusc-eis` (one of the two),
the headers `decusc-headers`, and the tools three parts of a diskette
each - `decusc-tools` (the text tools), `decusc-devtools` (those of C
development) and `decusc-misc` (the rest of the tape's kit), with `-eis`
for the other build.  With the `dec` system on a diskette the compiler and
the headers leave 244 blocks, and any one part of the tools fits beside
the system alone; a `dv` volume takes everything.

## The compiler

| file | what | how to run |
|---|---|---|
| `CC.SAV` | The compiler: `PROG.C` to `PROG.S`, assembler text in the Unix syntax only `AS` reads.  K&R C of 1978: no `#define` with arguments (`MP` does those), no `unsigned`, floating point by the library; `register` (R4, R3, R2 for the first three) is its one optimisation | `RUN C:CC`, then `CC> PROG` (`/E` or `/N` after the name) |
| `AS.SAV` | The assembler for what `CC` writes: `PROG.S` to `PROG.OBJ`; `/D` deletes the `.S` | `RUN C:AS`, then `AS> PROG/D` |
| `CLIB.OBJ` | The run-time library, 184 modules of one function each: stdio, strings, ctype, malloc, the RT-11 file layer | `LINK PROG,C:SUPORT,C:CLIB/B:2000` |
| `SUPORT.OBJ` | The start of a C program: `$$main`, which opens stdin, stdout and stderr and asks `Argv:` when there is no command line (`int $$narg = 1;` in the program stops the asking) | first in the LINK line |
| `DTOA.OBJ`, `ATOF.OBJ` | Floating-point conversion for printf and scanf, apart from `CLIB` so a program without floating point does without them | on the LINK line when needed |
| `include/STDIO.H`, `CTYPE.H`, `TIME.H`, ... | The headers; `#include <stdio.h>` reads `C:STDIO.H` | `ASSIGN dev C` for the volume they are on |

An empty `main()` links to 12 blocks: `$$main` brings the stdio of three
open streams, printf and the command line.  A program that links a start
of its own in place of `C:SUPORT` and prints through `.TTYOUT` comes out
at 3.

## The tools

The programs of the tape's 601 ("software tools"), built by `TTOOL.COM`,
the command file `BUILD` wrote for them, and the one-file programs of 602
the tape's kit shipped.  Every one takes its arguments at the `Argv:`
prompt and most say what they take at `?`.  Descriptions are the tape's
own (`README.601`, the sources' headers).

| file | what |
|---|---|
| `ARCH.SAV` | Archiver, roughly from Software Tools: files into one archive and back |
| `BANNER.SAV` | Generate medium size letters |
| `BUILD.SAV` | Build compilation command files - the make of DECUS C, which wrote `TTOOL.COM` |
| `CALEND.SAV` | Calendar: `calend MM` a month, `calend YYYY MM` a year's month |
| `COMM.SAV` | Compare the contents of two files, indicating what is common to both and what is different |
| `CRYPT.SAV` | The Unix `crypt` in a readable language: a file encrypted with a key |
| `DETAB.SAV` | Replace tabs by blanks |
| `DIFF.SAV` | Differential file comparison, as described in Bell Labs C.S. technical report 41 |
| `DUAL.SAV` | Convert a MACRO-11 programme from tasteless upper case to tasteful dual case |
| `E.SAV` | Computes e to some extraordinary number of places |
| `ECHO.SAV` | Echo arguments - used mostly to debug the compiler and run-time system |
| `ENTAB.SAV` | Replace blanks by tabs and blanks |
| `FIXDOC.SAV` | Fix runoff output files |
| `GETCMD.SAV` | Build command files for DECUS C |
| `GETKWK.SAV` | Build keyword index |
| `GETRNO.SAV` | Convert comments to runoff source format |
| `GRAB.SAV` | Reads the named files (`-r` recursively); no description on the tape |
| `GREP.SAV` | "Global Regular Expression Pattern" - search files for lines which satisfy an argument pattern |
| `HACK.SAV` | Display hack, for a VT100 |
| `KALEID.SAV` | Kaleidoscope (Martin Minow, 1981) |
| `KWIK.SAV` | Kwik index program (`kwik.doc` of the tape) |
| `LINEPR.SAV` | Listing utility that writes a line-numbered output file |
| `MC.SAV` | A multi-column print utility: files into one multi-column file |
| `MP.SAV` | A full macro processor for C source files (R.W. Harper, RPI): the `#define` with arguments the compiler has not, as in K&R |
| `NC.SAV` | Multi-column output: `nc <n_col> [-<linesize>]` |
| `NM.SAV` | Print "namelist" - the global symbols of an object module |
| `OD.SAV` | Octal dump of a file - blocks on RT-11 |
| `PHBOOK.SAV` | Phone book search |
| `PR.SAV` | Print with line numbers |
| `PTR.SAV` | Copies files to the printer (`PR:`) |
| `RNOIDX.SAV` | Fix table file for runoff |
| `SCAT.SAV` | Copy files to standard output, in ascending alphabetic order of their names |
| `SCOPY.SAV` | Replace the named files with identical copies of "vanilla" file attributes; `-a` cleans up random ASCII |
| `SH.SAV` | A shell: a command line of its own over RT-11, with `chdir` and `set` |
| `SORTC.SAV` | Sort a file (`sort.doc` of the tape) |
| `T.SAV` | File type on a video screen; run `T` and see |
| `UNIQ.SAV` | Print unique lines from a file |
| `WC.SAV` | Word, line and byte counter |
| `XRF.SAV` | Cross reference listing for C programs |

Not here: `TR` needs the `VSTRING` library of the tape's 606, which its
command file does not build (the tape's kit had no `TR` either); `UNIQ`
is the build without `CTYPE.H` in reach - with it the compiler loses the
`register char **dp` of its usage() - its `is...()` from the library.
`SORTS`, a program in the tape's kit, is a library on the tape.
