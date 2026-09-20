# MACRO-11 and LINK: Mihin's OS-16SJ kits

The disks disk1, disk2 and amk disk3 - Mihin-soft's OS-16SJ («Самые лучшие драйверы для УПБК!!!»): its own sysgen, utilities with the English DEC-style messages, the FDZ formatter, the Mihin SL.  Its monitor, in `kits/mihin/`, is amk_1's, of the same family.

The builds below are the ones these disks carried; each card says on which of them it was found, and where a near-identical copy (a few bytes off - bit rot, a patched banner) lies on another disk.

| file | what | how to run |
|---|---|---|
| `LINK.SAV` | LINK V08.04, a later RT-11 linker, with its banner patched to read «LINK B03.01» on Mihin's disks; the copy on ОМЕГА 064 keeps the V08.04 banner (21 bytes apart)  (on disk1, disk2; near-identical copies on 064) | `RUN LINK` |
| `MACRO.SAV` | MACRO V05.04 as Mihin's OS-16SJ disks carry it - 12 of its 61 blocks differ from the plain one: Mihin's own patching  (on disk1, disk2) | `RUN MACRO` |
