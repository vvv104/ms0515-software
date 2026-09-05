# RECODE

A filter that turns SO/SI-switched KOI-7 text into 8-bit KOI-8 - eighteen lines of C that are the Rosetta stone of this collection's encodings - with its compiled `RECODE.SAV` (reads standard input, writes standard output).  Of no known author; the source was on the collector's disk3, the binary on his disk4.  No C compiler survived on any disk of the collection: the C binaries here (RECODE, the lyceum's LINE, and TET.SAV, which carries the same Whitesmiths runtime of 1978) were compiled elsewhere - Whitesmiths C for RT-11 ran on the bigger PDP-11 relatives; the sources are kept for reading and for whoever finds the compiler in the PDP-11 archives.

| file | what | how to run |
|---|---|---|
| `RECODE.C` | Eighteen lines that are the Rosetta stone of this collection's encodings: a filter converting SO/SI-switched KOI-7 text to 8-bit KOI-8 - eats the 0x0E/0x0F mode bytes and adds 128 to every РУС-mode character. The exact conversion our modern disk5_text_to_utf8.py re-derived (UKCALC.LST with its 709 SO/SI pairs) - written by the keeper on the machine itself, in C | Whitesmiths C source (no compiler on the disks) |
| `RECODE.SAV` | Compiled build of RECODE.C, the SO/SI KOI-7 -> KOI-8 filter (reads standard input, writes standard output - hence the silent bare prompt when run without redirection) | bare prompt, no answer to a bogus file name |
