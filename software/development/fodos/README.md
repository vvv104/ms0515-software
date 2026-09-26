# What the kits brought

**The libraries.**  The system macro library and the system object library the machine's
kits shipped, the same files on every kit's disks (ОСА, ОМЕГА, the FODOS
builds of the vvv104 diskettes): what their MACRO reads from `SY:` and
what LINK draws the system calls from, and what PAS1's and FORTRAN's
programs link against.  Not interchangeable with DEC's pair in the folder
above: a `PIP` linked against this `SYSLIB` builds without a complaint
and dies, and PAS1's output wants this one.

| file | what | how to run |
|---|---|---|
| `SYSMAC.SML` | MACRO-11 system macro library — what MACRO reads from `SY:`, the same file on every kit's disks | read by MACRO |
| `SYSLIB.OBJ` | The RT-11 system library SYSLIB (28 KB) LINK draws the system calls from | object module for LINK |

**The assemblers and linkers**, in a folder for each kit that had its own
build: the same names, different bytes, so no two share a folder.  The
builds below are the ones the disks carried; each card in the catalogue says
on which of them it was found.  The one the emulator's projects are built
with is not here but in the folder above.

## `mihin/` - Mihin's OS-16SJ

The disks disk1, disk2 and amk disk3 - Mihin-soft's OS-16SJ («Самые лучшие драйверы для УПБК!!!»): its own sysgen, utilities with the English DEC-style messages, the FDZ formatter, the Mihin SL.  Its monitor, in `kits/mihin/`, is amk_1's, of the same family.

The builds below are the ones these disks carried; each card says on which of them it was found, and where a near-identical copy (a few bytes off - bit rot, a patched banner) lies on another disk.

| file | what | how to run |
|---|---|---|
| `LINK.SAV` | LINK V08.04, a later RT-11 linker, with its banner patched to read «LINK B03.01» on Mihin's disks; the copy on ОМЕГА 064 keeps the V08.04 banner (21 bytes apart)  (on disk1, disk2; near-identical copies on 064) | `RUN LINK` |
| `MACRO.SAV` | MACRO V05.04 as Mihin's OS-16SJ disks carry it - 12 of its 61 blocks differ from the plain one: Mihin's own patching  (on disk1, disk2) | `RUN MACRO` |

## `omega/` - the ОМЕГА kits

Disks 059 (the omega-games disk of 1991, whose monitor is `kits/omega/`), 062, 063, 064 and 172 - ОМЕГА SJ(S) V05.04 kits of НИПП «Омега», Львов, with Russian utility messages; 064 carries a later LINK (V08.04) and an older MACRO (V05.01b).

The builds below are the ones these disks carried; each card says on which of them it was found, and where a near-identical copy (a few bytes off - bit rot, a patched banner) lies on another disk.

| file | what | how to run |
|---|---|---|
| `MACRO.SAV` | MACRO V05.01b - an older release of the assembler, from the ОМЕГА disk 064 alone  (on 064) | `RUN MACRO` |
