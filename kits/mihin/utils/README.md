# Utilities: Mihin's OS-16SJ kits

The disks disk1, disk2 and amk disk3 - Mihin-soft's OS-16SJ («Самые лучшие драйверы для УПБК!!!»): its own sysgen, utilities with the English DEC-style messages, the FDZ formatter, the Mihin SL.  Its monitor, in `kits/mihin/`, is amk_1's, of the same family.

The builds below are the ones these disks carried; each card says on which of them it was found, and where a near-identical copy (a few bytes off - bit rot, a patched banner) lies on another disk.

| file | what | how to run |
|---|---|---|
| `DATIME.SAV` | DATIME «(C) 1987» of the ВЦ АН СССР, off the work diskette 056 - the greeter with escape-sequence highlighting.  A different program from the `DATIME` of the `dec` and `vvv` kits: another author, another year | `RUN DATIME` |
| `PIP.SAV` | PIP V05.14 with English messages, this kit's build | prompt; answers `?PIP-F-File not found` |
| `TERM.SAV` | The terminal emulator as Mihin's, Rodionov's and ОМЕГА 064 disks carry it: «РЕЖИМ ЭМУЛЯЦИИ ТЕРМИНАЛА», exit with СУ/E  (on 064, 065, 066, amk disk3, amk_2, disk1, disk2) | `RUN TERM` |

`DATIME.SAV` is the only file of this kit placed by association rather than by proof: nothing in it says which monitor it was meant for.  It comes from the work diskette 056, whose handlers are filed with this kit because they carry its sysgen word `TIM$IT` (see [`../handlers/ms0111/`](../handlers/ms0111/README.md)), and it follows them.  The other cut of `TERM.SAV`, the 2048-byte one that diskette also carried, is in `kits/omega/utils/`.
