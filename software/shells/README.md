# Shells

The programs that take the place of the bare monitor prompt: three file managers in the manner of Norton Commander.  Each came with one system or with several; what a system needs of the others is in its bundle.

## SCE

The one shell that belongs to no kit: it is on the ОМЕГА, Rodionov's and the collector's disks alike.

| file | what | how to run |
|---|---|---|
| `SCE.SAV` | Two-panel file manager in the Norton Commander style, Russian labels: directory panel with an info panel, command line Copy/Type/Prot/uNprot/Ren/Del/Quit/Vol/Go/Sque/Z-ini | `RUN SCE` |
| `SCE.HLP` | The help text of the SCE shell, «сделан Гостевым Дмитрием (Школа профессионального самоопределения, г. Воронеж), Copyright 12.24.1993»: the key list B-bad blocks, C-copy, D-delete, E-edit, G-run, H-help, K-create/undelete, L-dismount, M-logical disks, U-boot, W-bootstrap… | text: `TYPE SCE.HLP`, or read on the host (koi8-r) |

## The RS profShell of the ОСА disks

| file | what | how to run |
|---|---|---|
| `RS.SYS` | EmeSoft's 'RT11 profShell' v06.05 (1990, build 13-Sep-94): a Norton-Commander-style disk shell packed into a 26-block pseudo-device handler. File panel with marks, and the whole toolbox on hotkeys - COPY/DELETE/RENAME/SQUEEZE/PROTECT/TYPE/DUMP (words/bytes/radix)/CREATE/INIT/MOUNT/BOOT/COPY-BOOT - plus LD containers, bad-block scan, search, saved state, and the greeting 'Жми на клавишу, не бойся ...'. Start with R RS.SYS or SET RS ON; uses EIS, so needs GETEML/EM on this machine. The System2/bg0515/superBAK7 and Buhgal monitors print its banner at boot - profShell is built into those builds | `LOAD RS` then `SET RS ON`; «Жми на клавишу, не бойся ...» |

The `System2`/`bg0515`/`superBAK7` diskettes booted into it: `LOAD RS` then `SET RS ON`.

## Rodionov's ROSA Commander

The `065` diskette booted straight into it, and it checks its author's protection — the two sectors the system keeps (see [`kits/README.md`](../../kits/README.md)).

| file | what | how to run |
|---|---|---|
| `ROSA3.SAV` | ROSA Commander v1.3 (c) 1993 Rodionov Sergey Alekseevich, Voronezh - his two-panel file manager, launched by his boot: asks the date numerically, then panels DZ0: (left) and DZ2: (right) with a file-info box, 'protected from deletion' flags, PM help key. Needs LOAD VM: and is DZ-bound: it hardcodes DZ0:/DZ2:, so on a DV-booted Omega it dies ('?MON-F-No device', or ODT after LOAD DZ); runs fine on a DZ-pair disk of his system. Refuses a copy that fails its author check | `LOAD VM:` then `R ROSA3` on a DZ0:/DZ2: disk of his system; asks the date as dd-mm-yy, year up to 99 |
| `INSTR.DOC` | «Инструкция по работе с компьютером МС 0515» - Rodionov's one-page operating instruction for his ROSA disk: insert the ROSA diskette, power on, turn the drive latch when the music plays, enter the date at «Дата [дд-мм-гг]?», print files from the commander | text: `TYPE INSTR.DOC`, or read on the host (koi8-r) |
| `REKROS.DOC` | A framed advertisement sheet for Rodionov's system: «Сервисная программа … сделано на МС0515, используя RT15SJ.SYS, R15.SAV, ROSA.SAV» - copying, renaming, protection of files… | text: `TYPE REKROS.DOC`, or read on the host (koi8-r) |
| `REKSYS.DOC` | «Сравнительные характеристики существующего и предлагаемого программного обеспечения» - Rodionov's comparison table of his programs against the standard ones, drawn in pseudo-graphics | text: `TYPE REKSYS.DOC`, or read on the host (koi8-r) |
