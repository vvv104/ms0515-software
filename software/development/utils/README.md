# Utilities of the programmer

What one uses beside a compiler, the file-handling and the debugging
programs of the machine.  The first five are DEC's, built from its V5.4
sources for this collection; no diskette of the machine preserved a build
of them.  The two comparers are DEC's too - `BINCOM` of the vvv104 disks,
another build, is with the vvv kit's utilities.

| file | what | how to run |
|---|---|---|
| `SLP.SAV` `PAT.SAV` `SIPP.SAV` | Patching sources, objects and programs - how DEC shipped its corrections | `R SLP`, `R PAT`, `R SIPP` |
| `STRIP.SAV` `SPLIT.SAV` | Takes the symbols off a program; cuts a file in parts | `R STRIP`, `R SPLIT` |
| `SRCCOM.SAV` `BINCOM.SAV` | `DIFFERENCES` of texts and of binaries |

## Dump viewer

DEZI V05.01 by D. Climov (`DESS.SAV`; `REDUMP.SAV` is the same binary rebadged): `R DESS` then a file name — an octal dump with an ASCII gutter, search and a live MACRO-11 disassembly of the word under the cursor.

| file | what | how to run |
|---|---|---|
| `DESS.SAV` | DEZI V05.01, 'Originally written by D. Climov' (phone in the banner): an interactive octal dump viewer-cum-disassembler - full-screen word dump with ASCII gutter, BLCK/ADDR/TYPE header, a Stack line and a live 'Macro-11:' disassembly of the word at the cursor; modes words/bytes/radix/ascii/Inst, pattern search. The machine's resident disassembling tool; on all five of the keeper's disks | prompt; answers ?DEZI-F-FilenotfoundDK:NOSUCH.XXX* |
| `REDUMP.SAV` | DEZI V05.01 by D. Climov with the banner hex-patched to 'REDUMP B5.0e' - a local rebadge of DESS.SAV, the same program (string tables byte-identical); unrelated to the small REDUMP.PAS in PROGS.DSK | bare prompt, no answer to a bogus file name |
