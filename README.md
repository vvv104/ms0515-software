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
| `software/` | the programs by kind — `system/` (handlers, utilities, shells, with a compatibility table per monitor), `development/` (Pascal, MACRO, BASIC, editors, debuggers), `games/`, `apps/`, `custom/` (the home-made hardware projects with their sources: the sampler, the minesweeper workshop, the МС0111 terminal complex, the C experiments) — *in progress* |
| `student/` | the schoolroom programs of Лицей №1 and other pupils' work — *in progress* |
| `docs/` | manuals and documentation found on the disks — *in progress* |
| `CATALOG.md` | one card per program: what it is, its author, on which systems it runs, where the file is — *in progress* |
| [`HALLOFFAME.md`](HALLOFFAME.md) | the people and software houses the diskettes preserved, every entry quoted from the bytes themselves |

## Rules of the collection

- Files are the recovered bytes, unchanged — original names, original
  directory dates.  Where one build of a program survived in several
  copies, the best-proved one is shipped and the card says so.
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
