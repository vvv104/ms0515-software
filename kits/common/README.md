# Common to every system

What runs on any of the monitors here and of which the collection has one build — so it belongs to no kit and is listed with every one of them. A kit's folder holds what is its own; this one holds what is everyone's, in the same shape: `utils/`.  The printing programs, the diagnostics and the shells are under [`software/print/`](../../software/print/README.md), [`software/diag/`](../../software/diag/README.md) and [`software/shells/`](../../software/shells/README.md).  What one writes programs with is not here any more but under [`software/development/`](../../software/development/README.md), the kits' own system libraries included.

The wizard shows these under **System**, after the chosen system's own files, whichever system that is.

| where | what |
|---|---|
| [`utils/`](utils/README.md) | the RT-11 utilities no second build of which survived — `SLP`/`PAT`/`SIPP`, `STRIP`/`SPLIT` — and the little programs of the machine: the screen colours, the date setter, the bad-block scanner, the text formatter |

A file here has no rival build in the collection.  Where two kits' disks carried different builds of a program — `DIR`, `DUP`, `PIP`, `MACRO`, `LINK`, `HELP`, `RESORC`, `DUMP`, `DATIME`, `SL` — each stays in the folder of its kit, and the wizard offers them as alternatives.

The screen editor is the one exception, and a deliberate one: `K13U`, `KED` and `R15` are three cuts of the same program, and they are kept side by side in `software/editors/` rather than scattered over the ОСА, vvv and Rodionov kits.
