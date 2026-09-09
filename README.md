# MS-0515 software collection

Software recovered from the diskettes of the Электроника МС 0515 — the
Soviet PDP-11-compatible home/school computer of 1988-1995 — sorted,
identified and made to run again.  Every program here was run in the
[MS-0515 emulator](https://github.com/vvv104/ms0515) and the notes tell
what it is, who wrote it and how to start it.

The diskettes come from the collection gathered on the zx-pk.ru forum
(«Ещё один эмулятор МС-0515»); the reads were consolidated, damaged
blocks recovered from donor copies, and every file identified by its
content.  The methodology, the raw reads and the tooling live in the
emulator repository under `disk_recovery/`; this repository holds only
the result — the files themselves, bootable systems and the knowledge
about them.

## Running

Get a release of the emulator, then boot any of the exemplar systems:

    ms0515 --disk0 systems/osa.dsk

or open the same image in the browser build.  Every system disk boots
to the monitor prompt; the program disks and folders are mounted as a
second drive or copied onto a system disk with `ms0515-disk put` — the
per-folder README says how each program is started.

## What is where

| path | what |
|---|---|
| [`systems/`](systems/README.md) | five bootable exemplar systems, one per monitor build: ОСА, two ОМЕГА sysgens, Mihin's OS-16SJ, Rodionov's RT15SJ — native kits, quiet startups, labelled volumes |
| `software/` | the industrial half: products that came without their sources |
| [`software/system/`](software/system/README.md) | device handlers (per family, with the load/reject matrix of every handler on every monitor), utilities, formatters, printing, shells, diagnostics |
| [`software/development/`](software/development/README.md) | Pascal, MACRO-11 and LINK, FORTRAN, BASIC, editors, debuggers, sprite tools |
| [`software/games/`](software/games/README.md) | the games, each with the data file it needs beside it; ПИТОН among them, and `fist/` - our own port, the one thing here that came from no diskette |
| [`software/apps/`](software/apps/README.md) | applications: FCON, FunctionCAD, UKCALC, ART, the РБД-МИКРО database system, the savings-bank programs |
| [`software/unsorted/`](software/unsorted/README.md) | the problem shelf: what the cross-run could not run and the reads that failed, each with what is known, until examined |
| [`programs/`](programs/README.md) | the non-industrial half - everything home-made, with its sources, a folder each: the collector's own programs (`vvv/` - everything on his disks that no one else signed, the minesweeper inside), Домнич's calendar, Newton solver and ПИТОН, the BASIC games, VLAD & ALEX's Covox-style sampler, the МС0111 terminal complex, the KOI-7 recoder in C, the music-editor advert, the screen dumps, the BASIC programs of the other disks, the Pascal programs of no known author, and the schoolroom: AutoTeacher, Лицей №1 |
| [`CATALOG.md`](CATALOG.md) | one card per file: what it is, how it was identified, on which monitors it ran, where it sits here; `catalog.csv` is the same, machine-readable |
| [`HALLOFFAME.md`](HALLOFFAME.md) | the people and software houses the diskettes preserved, every entry quoted from the bytes themselves |

## Rules of the collection

- Files are the recovered bytes, unchanged — original names, original
  directory dates.  Where one build of a program survived in several
  copies, the best-proved one is shipped and the card says so; where
  several builds survived, every live one ships, each in a folder named
  after the kit — the family of disks — it came from, with a README
  saying what those disks are.  One
  naming correction throughout: the `.EXE` files of the vvv104 `disk4`
  image were renamed so by the collector long after the fact (RT-11
  has no `.EXE`; ПИТОН even checks its own file under the `.SAV` name),
  and they ship here as `.SAV`.
- A few things are ours and are marked as such: the quiet `START.COM`
  of every system, the `@START` patch of the monitors' baked startup
  command, blanked hotkey tables in two SL handlers, and any helper
  file re-created for a program whose original was lost.
- Nothing here is claimed: the authors are named in the Hall of Fame
  wherever the software names them.  If you are one of them and want a
  program removed or credited differently, open an issue.

## Original image names

The systems and programs are cross-referenced to the disk images by the
names the collection knows them under on the forum — `058`, `059`,
`065`, `amk_1`, vvv104 `disk3`, `baspasfor`, `PAPER`, `System2`,
`superBAK7`, `Buhgal` and the rest — so a file here can always be traced
back to the diskette it came from.
