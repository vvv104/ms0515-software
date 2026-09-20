# Kits

A kit is what came together: a monitor and the handlers, utilities and
tools of its make.  One folder each, so that what belongs to a system is
found in one place:

    kits/<kit>/             the monitor (a second system of the same kit in a
                            folder of its own: omega/omega2/, dec/dec-ru/)
    kits/<kit>/handlers/    its .SYS files
    kits/<kit>/utils/       DIR, DUP, PIP, RESORC, HELP ... of its build
    kits/<kit>/development/ its MACRO, LINK, libraries
    kits/<kit>/format/      its formatters

| kit | systems | what |
|---|---|---|
| `osa/` | `osa` | ОСА 1.0 of НИПП «Омега», Lvov; `utils/rs/` is what the same monitor's other factory configuration carried - the disks with the RS profShell |
| `omega/` | `omega` | ОМЕГА SJ(S) V05.04, as the disks 059, 062, 063 carried it |
| `mihin/` | `mihin` | Mihin's OS-16SJ |
| `rodionov/` | `rodionov` | Rodionov's RT15SJ, with the two sectors of his copy protection |
| `dec/` | `dec`, `dec-ru` | DEC's RT-11 V5.4 built for the machine from DEC's sources, with handlers written for it - nothing in it was recovered from a diskette |
| `vvv/` | `omega2` | Voronkov's own diskettes — `disk3` (read also as `h0`/`h1`), `PAPER`, `baspasfor`, `disk4`.  Their ОМЕГА V05.04 monitor is `omega2`, not a patch of `omega`'s: it blinks the cursor through ROM-B and its pointers are moved to match (see below).  Their utilities are the English-message ФОДОС builds, the ones Mihin's disks carry too |

[`HANDLERS.md`](HANDLERS.md) is the cross-run of every handler on every
monitor: which load where.  What belongs to no kit - games, applications,
languages, shells, diagnostics, printing - is in `../software/`.

# Systems

The five monitors every disk of this collection is made from — one per
monitor that really differs in code.  Four brands, and the census behind
the number: the ОСА monitor exists in three factory configurations that
differ **only in the three baked bytes of the startup command** (`@ST` /
`@START` / `PMK`), and the two vvv-line Омега builds differ by a single
stored setting word — those are configurations, not monitors, so they
share one monitor each.

A system here is its monitor file, and nothing more but Rodionov's copy
protection.  Everything else a disk needs is in [`../disks.toml`](../disks.toml):
the handlers and utilities each system cannot work without are bundles
of its kit, of the builds its original disks carried.  The disks
themselves are made by the emulator's disk wizard (the browser build, or
`ms0515-disk compose` over a copy of this repository) from scratch: a
formatted blank, `SWAP.SYS`, the monitor, the bundles, the startup file,
the bootstrap for the media.

- **`SWAP.SYS` is not kept.**  It is scratch: the bootstrap only checks
  that it is long enough (27 blocks for these sysgens), and the monitor
  writes the user's memory into it before it reads it back — so what the
  old disks held there was what their last session left.  The composer
  makes it of zeros, as long as the system's own was (`disks.toml`,
  `swap`).  All five systems were run so, swapping (DIR, PIP) on every
  media.
- **The startup file is DEC's `STARTS.COM`** on every system: the command
  each monitor bakes in (a NUL, `@`, six characters, a NUL, in its
  bootstrap block) reads `@STARTS` in the files here.  The composer names
  the startup file after it.

| system | banner | monitor | its sha | the original's | original image |
|---|---|---|---|---|---|
| `osa/` | ОСА Версия 1.0 | `MON8SJ.SYS` | `a96aa57` | `17e8d86` | `058.dsk` |
| `omega/` | ОМЕГА SJ(S) V05.04 | `RT11SJ.SYS` | `ad6d31b` | the same | `059.dsk` (also `062`, `063`) |
| `vvv/` | ОМЕГА SJ(S) V05.04 | `RT11SJ.SYS` | `b27e827` | `2c1f616` | vvv104 `disk3` (also `PAPER`, `h0`) |
| `mihin/` | OS-16SJ (C) Mihinsoft | `RT11SJ.SYS` | `bc9b0f4` | the same | `amk_1.dsk` (also amk `disk3`) |
| `rodionov/` | ©1992 Родионов С.А. | `RT15SJ.SYS` | `8f1e919` | `2b8bb64` | `065` (both sides) |

Where the sha differs from the original's, this is what differs:

- **ОСА**: the startup command, `@ST` and four spaces (a patch of the
  file, not of a source) made `@STARTS`.
- **Omega, the vvv104 build**: the startup command is the original's; one
  bit of the KMON overlays is set right — the first word of `SET TT
  HOLD`, `045303` in every copy of this monitor, where DEC's source has
  `DEC R3` (`005303`).  Bit 14 flipped in the copy all its disks were made
  from; the word makes no sense as a change (`BIC -(R3),R3`), and no other
  monitor has it.
- **Rodionov's**: his `@START` made `@STARTS`.

*Original image* names are the ones the source dumps carry in the zx-pk.ru
collection — the disks are known on the forum by these names.  How the
two Омега builds and ОСА came to be — DEC's RT-11 V5.4 sources, the SYSGEN
answers and what each kit added — is taken apart, byte for byte, in the
emulator repository's `rt11_devel/projects/rt11/`, where the `dec` kit is
built as well.

## osa

The reference ОСА — the Lvov НИПП «Омега» build of RT-11 SJ V05.04 with
Russian monitor messages, from `058.dsk`.  Its kit on a composed disk:
058's `DZ.SYS`, `TT.SYS`, `DIR.SAV`, `PIP.SAV`, plus two named guests:
`DUP.SAV` (058 never carried one; the same Lvov make, from `System2`) and,
on a DV disk, `DV.SYS` (no ОСА disk ever carried a DV; the matrix-proven
Омега build from `h0`).  Its SL is Сторожевых's SL V08.00, from the
code-identical `superBAK7`/`bg0515` build (058 shipped without one); it
announces itself with its (blanked) assignment table on activation.

The three factory configurations of this monitor: `058` bakes `@ST`, the
`System2`/`bg0515`/`superBAK7` line bakes `@START` (and those disks
shipped with the profShell commander and Сторожевых's SL, which announce
themselves at boot), and the `Buhgal` cut bakes `PMK` — that machine
booted straight into a savings-bank teller program.  The profShell and SL
live in `../software/system/shells/` for anyone who wants the deluxe boot.

## omega

ОМЕГА SJ(S) V05.04, the build the games disk `059.dsk` carried, 062 and
063 too.  Its kit: 059's `DZ.SYS`, `TT.SYS`, `DIR.SAV`, `DUP.SAV`,
`PIP.SAV`, with `DV.SYS` from `h0` (same Омега make; 059 itself had none)
and `SL.SYS` from `062` (059 had no SL; this one activates silently).

## omega2

The other real Омега — the build of Voronkov's own vvv104 disks (`disk3`,
`PAPER`, `h0`; the 2003 `baspasfor` read carries the same monitor one
setting word apart).  It is not a patch of `omega`: its clock interrupt
calls the ROM's cursor blink (slot 160014 of ROM-B — on ROM-A that slot
is the cassette loader, so this monitor wants ROM-B), and pointers
throughout the monitor are moved to match.  Its kit: `disk3`'s own
files, the family's `DV.SYS` and `SL.SYS` among them.  The original disk3
startup was a whole morning ritual — BLACK screen, DOS-style drive
letters, a DATIME date-and-time dialogue.

## mihin

OS-16SJ — the Воронеж sysgen by Mihinsoft & СПФ «Сенсор» (1990), with its
own driver line («Самые лучшие драйверы для УПБК!!!»).  Its kit: amk_1's
`DZ.SYS`, `TT.SYS`, `DIR.SAV`, `DUP.SAV`, `PIP.SAV`, and `LD.SYS` (amk_1
shipped none; the same Mihin make from amk `disk3` — the monitor's baked
startup RUNs `SY:LD.SYS /C:-1` before `@STARTS`, so it is kit; on a DV
disk that LD run says `?LD-F-Device not installed DZ0:` and the boot goes
on).  No Mihin disk ever carried a DV handler and the monitor refuses the
Omega one; a DV disk of this system takes the `dv-mihin` bundle, the same
handler made for its sysgen (see `../kits/HANDLERS.md`).
Its SL is the same family's from `disk1`/`disk2` — amk_1's own copy drops
the boot into ODT at 042700, the raw `amk_1.dsk` original crashes exactly
so, and amk_1 is a disk with known bad blocks; it announces itself with
its Russian assignment table («Назначения»), the ten hotkey macros it
shipped with blanked.

## rodionov

Родионов's private operating system: the RT15SJ monitor («©1992 Родионов
С.А.») from the `065` double-sided original — the disk that booted
straight into his ROSA Commander.  His copy protection is **two sectors
on physical track 0 of side 1** (block 792 and 799 of that side's DZ
volume), kept here as `SIDE1-792.BLK` and `SIDE1-799.BLK`, byte-exact
from the original; the composer puts them on the same sectors of a DZ
pair or a DV disk and ends the free space before them, so no file — the
composer's or the OS's — takes them.  The RT15SJ monitor reads them at
boot: the very same disk with those two sectors blanked dies in ODT at
000017 before the monitor comes up; with them it boots, and `ROSA3.SAV`
(`../software/system/shells/`, with `LOAD VM:`) passes its author's check
(«Программа, переписанная без разрешения АВТОРА, не работает»).  On the
original, whose side-1 directory ended in a plain empty entry `500..799`,
those sectors sat inside what the OS regarded as free space — and his own
DUP/PIP do write there once the volume fills up (proved in the emulator:
a full DZ2: overwrote block 792 and the boot died).

His kit: `DZ.SYS`, `TT.SYS`, `DIR.SAV` — his own — with DUP and PIP of
the Омега kit.  No disk of his carries an SL (his startup's `!SET SL ON`
was commented out); the Омега `062` build loads and activates under
RT15SJ, the Mihin-family SLs the monitor refuses («Недопустимое
устройство SL:»).  The original startup ran `R BLUE` / `LOAD VM:` /
`R rosa3`.
