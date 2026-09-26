# Common to every system

What runs on any of the monitors here and of which the collection has one build — so it belongs to no kit and is listed with every one of them. A kit's folder holds what is its own; this one holds what is everyone's, in the same shape: `utils/`, `development/`, `print/`, `diag/`, `shells/`.

The wizard shows these under **System**, after the chosen system's own files, whichever system that is.

| where | what |
|---|---|
| [`utils/`](utils/README.md) | the RT-11 utilities no second build of which survived — `EDIT`, `FORMAT`, `SLP`/`PAT`/`SIPP`, `STRIP`/`SPLIT` — and the little programs of the machine: the screen colours, the date setter, the bad-block scanner, the text formatter |
| [`development/`](development/README.md) | what one writes programs with: the macro library, Pascal, FORTRAN, the two BASICs, the screen editor in its three cuts, the dump viewer, `LIBR` and `ODT` |
| [`decusc/`](decusc/README.md) | DECUS C, the C compiler of the machine's own C programs, rebuilt from its sources: `no-eis/` for the machine as it is, `with-eis/` for the machine with `EM.SYS`, the same names in each, and the tape's software tools (`GREP`, `DIFF`, `WC`, `MP`...) built both ways |
| [`print/`](print/README.md) | the printing programs |
| [`diag/`](diag/README.md) | the factory exerciser, the instruction-timing meters, the scan-code viewer, the instruction emulator `GETEML` |
| [`shells/`](shells/README.md) | `SCE`, the one shell that is nobody's kit |

A file here has no rival build in the collection.  Where two kits' disks carried different builds of a program — `DIR`, `DUP`, `PIP`, `MACRO`, `LINK`, `HELP`, `RESORC`, `DUMP`, `DATIME`, `SL` — each stays in the folder of its kit, and the wizard offers them as alternatives.

The screen editor is the one exception, and a deliberate one: `K13U`, `KED` and `R15` are three cuts of the same program, and they are kept side by side in `development/` rather than scattered over the ОСА, vvv and Rodionov kits, so that the whole of what one writes programs with is in one place.
