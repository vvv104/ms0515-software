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
the result — the files themselves, the systems' monitors and the
knowledge about them.

## Running

Get a release of the emulator and boot one of the ready disks below, or
make a disk of your own with the emulator's disk wizard - in the browser
build, or `ms0515-disk compose` over a copy of this repository.  Every
system boots to the monitor prompt; a program is copied onto a system disk
with the wizard or with `ms0515-disk put` — the per-folder README says how
each program is started.

## Ready disks, and disks of your own

The [releases](https://github.com/vvv104/ms0515-software/releases) carry
bootable diskettes put together from this collection - ОСА with its
games, the Омега development kit, Rodionov's RT15SJ with ROSA Commander,
Mihin's OS-16SJ with his utilities.  The browser build loads the same
disks from this repository's Pages.

What they are made of is written in [`disks.toml`](disks.toml): the
systems, bundles of software, and the presets.  The emulator's
disk tool builds any combination from a copy of this repository - `EMULATOR`
names the release whose tool the published disks were built with:

    ms0515-disk compose --repo . --list
    ms0515-disk compose --repo . --preset games games.dsk
    ms0515-disk compose --repo . --system omega --media dv --add pascal,basico my.dsk

`--plan` shows where everything would go without writing a disk; what
cannot work (a bundle for another system, Saboteur 2 on a DV disk, too
much for the media) is refused with the reason.

## What is where

| path | what |
|---|---|
| [`kits/`](kits/README.md) | a kit is what came together - a monitor and the handlers, utilities and tools of its make, a folder each: ОСА, ОМЕГА (both sysgens), Mihin's OS-16SJ, Rodionov's RT15SJ (with his copy protection's two sectors), `dec` - DEC's RT-11 V5.4 built for the machine from sources - and the kits with no monitor of their own; [`HANDLERS.md`](kits/HANDLERS.md) has the load/reject matrix of every handler on every monitor |
| `software/` | the industrial half: products that came without their sources |
| [`software/system/`](software/system/README.md) | what runs the machine and belongs to no kit: screen and date utilities, a formatter, printing, shells, diagnostics |
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
- A few things are ours and are marked as such: the monitors' baked
  startup command made DEC's `@STARTS` and the quiet `STARTS.COM` every
  composed disk carries, one bit of the vvv104 ОМЕГА monitor set right
  (flipped in the copy all its disks came from), blanked hotkey tables
  in two SL handlers, and any helper file re-created for a program whose
  original was lost.
- Nothing here is claimed: the authors are named in the Hall of Fame
  wherever the software names them.  If you are one of them and want a
  program removed or credited differently, open an issue.

## Original image names

The systems and programs are cross-referenced to the disk images by the
names the collection knows them under on the forum — `058`, `059`,
`065`, `amk_1`, vvv104 `disk3`, `baspasfor`, `PAPER`, `System2`,
`superBAK7`, `Buhgal` and the rest — so a file here can always be traced
back to the diskette it came from.
