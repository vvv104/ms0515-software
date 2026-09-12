# Exemplar systems

Five bootable disks — one per monitor that really differs in code.
Four brands, and the census behind the number: the ОСА monitor exists
in three factory configurations that differ **only in the three baked
bytes of the startup command** (`@ST` / `@START` / `PMK`), and the two
vvv-line Омега builds differ by a single stored setting word — those
are configurations, not monitors, so they share one exemplar each.

Every disk here boots to a quiet monitor dot: no questions asked, no
`-F-`/`-W-` printed.  The kits are the files each system originally
shipped with; a foreign build appears only where the family never had
one, and is named below.  `DV` disks are 800 KB whole-disk volumes
(one 1600-block file system); the others are pairs of per-side `DZ`
volumes.

Every disk is built the same way, with `ms0515-disk` alone: a fresh
800 KB blank (`create --ds` — every sector carrying the `B6 6D`
formatter pattern the real diskettes show), `init` as one DV whole-disk
volume or as two DZ volumes (`DZ0:` system, `DZ2:` empty), the kit
copied in a fixed order — `SWAP.SYS`, the monitor, `DV.SYS`, `DZ.SYS`,
the other handlers alphabetically, `DIR`, `DUP`, `PIP` — then
`START.COM`, then the bootstrap (`boot`, the byte-exact COPY/BOOT
recipe).  Rodionov's disk additionally gets his copy protection
transplanted from the original.

Conventions across every exemplar:

- every volume is labelled (`DIR/VOLUMEID`): volume ID `REF <system>`
  — the bench OS — and owner `MS0515 EMU`, the emulator project; the
  `DZ2:` workspaces are `WORK MIHIN` / `WORK RODION` (twelve characters
  is the limit, and `REF RODIONOV` uses all of them);
- the startup file is **`START.COM`** everywhere (the monitor's baked
  `@ST`/`@STARTS` command is patched to `@START`); Rodionov's was
  already so;
- every kit file carries its **original date** and the **`[P]` protect**
  flag; only the startup file is left dated-but-writable;
- the single-line editor **SL is active** on all five systems:
  `SET SL ON` in the startup is what activates it (`LOAD SL` alone does
  not).  The OSA and Mihin SL builds print their assignment table on
  activation — baked into those handlers, no switch turns it off.  Two
  tests for SL from the empty prompt: Backspace is swallowed (without
  SL the cursor drops to the next line), and an arrow key is swallowed
  (without SL it echoes the escape glyph plus `A`/`B`/`C`/`D`).

The *original image* names are the ones the source dumps carry in the
zx-pk.ru collection — the disks are known on the forum by these names.

| disk | banner | monitor build | media | original image |
|---|---|---|---|---|
| `osa.dsk` | ОСА Версия 1.0 | MON8SJ `17e8d86` | 800 KB, DV | `058.dsk` |
| `omega.dsk` | ОМЕГА SJ(S) V05.04 | RT11SJ `ad6d31b` | 800 KB, DV | `059.dsk` |
| `omega2.dsk` | ОМЕГА SJ(S) V05.04 | RT11SJ `2c1f616` | 800 KB, DV | vvv104 `disk3` (also `PAPER`, `h0`) |
| `mihin.dsk` | OS-16SJ (C) Mihinsoft | RT11SJ `bc9b0f4` | 800 KB, 2×DZ | `amk_1.dsk` (also amk `disk3`) |
| `rodionov.dsk` | ©1992 Родионов С.А. | RT15SJ `2b8bb64` | 800 KB, 2×DZ | `065` (both sides) |

## osa.dsk

The reference ОСА — the Lvov НИПП «Омега» build of RT-11 SJ V05.04
with Russian monitor messages.  Built as a DV whole-disk volume from
the native files of `058.dsk`.

Kit: `MON8SJ.SYS`, `SWAP.SYS`, `DZ.SYS`, `TT.SYS`, `DIR.SAV`,
`PIP.SAV` (all native 058), plus two named guests: `DUP.SAV` (058
never carried one; the same Lvov make, from `System2`) and `DV.SYS`
(no ОСА disk ever carried a DV; the matrix-proven Омега build from
`h0`), and `SL.SYS` — the OSA family's own single-line editor
(Сторожевых's SL V08.00, from the code-identical `superBAK7`/`bg0515`
build; 058 shipped without one).  Its two CCL assignments (`;`→
`dir/fu/vo/bl`, `?`→`run`) are blanked in the shipped copy.  Startup
`START.COM` runs `SET TT QUIET` and `SET SL ON`; this SL announces
itself with its (now empty) assignment table on activation — baked into
the handler — and reaches the dot cleanly.

The three factory configurations of this monitor: `058` bakes `@ST`,
the `System2`/`bg0515`/`superBAK7` line bakes `@START` (and those
disks shipped with the profShell commander and Сторожевых's SL, which
announce themselves at boot), and the `Buhgal` cut bakes `PMK` — that
machine booted straight into a savings-bank teller program.  This
exemplar is the `@ST` reference; the profShell and SL live in
`../software/system/shells/` for anyone who wants the deluxe boot.

## omega.dsk

ОМЕГА SJ(S) V05.04, the build the games disk `059.dsk` carried.
Built as a DV whole-disk volume from 059's native files: `RT11SJ.SYS`,
`SWAP.SYS`, `DZ.SYS`, `TT.SYS`, `DIR.SAV`, `DUP.SAV`, `PIP.SAV`, with
`DV.SYS` added from `h0` (same Омега make; 059 itself had none) and
`SL.SYS` from `062`, which carries the very same `ad6d31b` monitor (059
had no SL).  Startup `START.COM` = `SET TT QUIET` + `SET SL ON`; this
SL activates silently.

## omega2.dsk

The other real Омега — the build of Voronkov's own vvv104 disks (`disk3`, `PAPER`,
`h0`; the 2003 `baspasfor` read carries the same monitor one setting
word apart).  It is not a patch of `omega.dsk`: a resident component
around blocks 39–43 is genuinely different and 4 KB larger, and dozens
of pointers throughout the monitor are relocated by +0o10000 to match.

Built as a DV whole-disk volume entirely from native `disk3` files,
including the family's own `DV.SYS` and `SL.SYS`.  Startup
`START.COM` = `SET TT QUIET` + `SET SL ON`, exactly the SL line disk3
itself used (this family's SL turns on silently).  The original disk3
startup was a whole morning ritual —
BLACK screen, DOS-style drive letters, a DATIME date-and-time dialogue
— trimmed here to the quiet dot by the exemplar rules.

## mihin.dsk

OS-16SJ — the Воронеж sysgen by Mihinsoft & СПФ «Сенсор» (1990), with
its own driver line («Самые лучшие драйверы для УПБК!!!»).  Built
fresh from native files like the others, 800 KB as two DZ volumes: the
system boots from side 0 (`DZ0:`), side 1 is an empty freshly-initialised
workspace (`DZ2:`).  No Mihin disk ever carried a DV handler and the
monitor refuses the Omega one; a DV disk of this system is composed with
the `dv-mihin` bundle, the same handler made for its sysgen (see
`../software/system/handlers/README.md`).

Kit: `RT11SJ.SYS`, `SWAP.SYS`, `DZ.SYS`, `TT.SYS`, `DIR.SAV`,
`DUP.SAV`, `PIP.SAV` (all native `amk_1`), `LD.SYS` (amk_1 shipped
none; the same Mihin make from amk `disk3` — the monitor's baked
startup RUNs `SY:LD.SYS /C:-1` before `@START`, so it is kit) and
`SL.SYS` from the same family's `disk1`/`disk2`: amk_1's own copy of
SL drops the boot into ODT at 042700 — the raw `amk_1.dsk` original
crashes exactly so, and amk_1 is a disk with known bad blocks.
Startup `START.COM` = `SET TT QUIET` + `SET SL ON`; this SL announces
itself with its Russian assignment table («Назначения») on activation.
The ten hotkey macros it shipped with (`^A` BASIC ALL, `^P` DIR DZ4:,
`^R` COP/Q DZ: DZ4: …) are blanked in the shipped copy, as the OSA
SL's are, so the table comes up empty («Свободно..>300»).

## rodionov.dsk

Родионов's private operating system: the RT15SJ monitor («©1992
Родионов С.А.») from the `065` double-sided original — the disk that
booted straight into his ROSA Commander.  Built from his files like
every other exemplar (two DZ volumes, the standard COPY/BOOT
bootstrap), plus one transplant: his copy protection is **two sectors
on physical track 0 of side 1** (LBN 792 and 799), copied byte-exact
from the original.  The RT15SJ monitor reads them at boot — the very
same build with those two sectors blanked dies in ODT at 000017 before
the monitor comes up; with them it boots, and `ROSA3.SAV` (copied from
`../software/system/shells/`, with `LOAD VM:`) passes its author's
check («Программа, переписанная без разрешения АВТОРА, не работает»).

On the original, whose side-1 directory ended in a plain empty entry
`500..799`, those two sectors sat inside what the OS regarded as free
space — and his own DUP/PIP do write there once the volume fills up
(proved in the emulator: a full DZ2: overwrote LBN 792 and the boot
died).  The exemplar's `DZ2:` therefore declares ten blocks fewer: its
empty entry ends at LBN 790, `DIR DZ2:` reports 776 free blocks, and
physical track 0 is never handed out — the one deliberate departure
from the original, so the protection survives any use of the disk.

Kit: `RT15SJ.SYS`, `SWAP.SYS`, `DZ.SYS`, `TT.SYS`, `DIR.SAV`,
`DUP.SAV`, `PIP.SAV` — all his own — and `SL.SYS`: no disk of his
carries one (his startup's `!SET SL ON` was commented out), so it is
the Омега `062` build, which loads and activates under RT15SJ as the
disk3, baspasfor and OSA builds also do; the Mihin-family SLs the
monitor refuses («Недопустимое устройство SL:»).  `START.COM` =
`SET TT QUIET` + `SET SL ON` (the original ran `R BLUE` / `LOAD VM:` /
`R rosa3`).
