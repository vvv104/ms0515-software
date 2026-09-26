# Formatters

What formats a diskette, each the one build the collection has of it, and
all of them destructive: they format the diskette in the drive they are
given.  DEC's is one program for every kind of diskette; the others are the
kits' own, and where two kits' builds share their names - `FORML` and
`FORMH`, the lower and upper surface - they are in a folder each.

## DEC's

| file | what | how to run |
|---|---|---|
| `FORMAT.SAV` | DEC's FORMAT with a module for the machine's drive in the place of DEC's stub for the Professional 350: formats `DZ`, `DV` and `MZ` diskettes, and verifies them (`FORMAT/VERIFY`). Needs an emulator whose controller has WRITE TRACK: later than v1.14.1 |

## FDZ, Mihin's

| file | what | how to run |
|---|---|---|
| `FDZ.SAV` | Diskette formatter for the UVK-16; (C) Mihin-soft & SPF Sensor, Voronezh, 1990.  Destructive: it asks Y/N and then formats | `RUN FDZ` |

Destructive: it formats the diskette in the drive it is given.  The others are beside it.

## `omega/` - the ОМЕГА kits' FORML and FORMH

Disks 059 (the omega-games disk of 1991, whose monitor is `kits/omega/`), 062, 063, 064 and 172 - ОМЕГА SJ(S) V05.04 kits of НИПП «Омега», Львов, with Russian utility messages; 064 carries a later LINK (V08.04) and an older MACRO (V05.01b).

The builds below are the ones these disks carried; each card says on which of them it was found, and where a near-identical copy (a few bytes off - bit rot, a patched banner) lies on another disk.

| file | what | how to run |
|---|---|---|
| `FORMH.SAV` | Formats the upper surface of a diskette; asks for confirmation first.  Destructive; the lower surface is FORML  (on 059, 062, 063, 172) | `RUN FORMH` |
| `FORML.SAV` | Formats the lower surface of a diskette; asks for confirmation first.  Destructive; the upper surface is FORMH  (on 059, 062, 063, 172) | `RUN FORML` |

## `vvv/` - the collector's disks' FORML and FORMH

Voronkov's own diskettes: disk3 (the ОМЕГА sysgen whose monitor is `kits/omega/omega2/`; read also as h0/h1), disk1 (PAPER) and disk2 (baspasfor) - the Pascal and FORTRAN development disks - and disk4, a later compilation with files renamed `.EXE`.  Their kit utilities are the English-message ФОДОС builds shared with Mihin's disks.

The builds below are the ones these disks carried; each card says on which of them it was found, and where a near-identical copy (a few bytes off - bit rot, a patched banner) lies on another disk.

| file | what | how to run |
|---|---|---|
| `FORMH.SAV` | The upper-surface formatter in a later edition than the ОМЕГА disks' one: the same program reassembled with its messages touched up («Поверхность отформатирована» for «заформатирована», a plain [Y/N] prompt).  Destructive - it formats the diskette in the drive  (on vvv104 disk4) | `RUN FORMH` |
| `FORML.SAV` | The lower-surface formatter in a later edition than the ОМЕГА disks' one: the same program reassembled with its messages touched up («Поверхность отформатирована» for «заформатирована»).  Destructive - it formats the diskette in the drive  (on vvv104 disk4) | `RUN FORML` |
