# Formatters: the ОМЕГА kits

Disks 059 (the omega-games disk of 1991, the exemplar `systems/omega.dsk`), 062, 063, 064 and 172 - ОМЕГА SJ(S) V05.04 kits of НИПП «Омега», Львов, with Russian utility messages; 064 carries a later LINK (V08.04) and an older MACRO (V05.01b).

The builds below are the ones these disks carried; each card says on which of them it was found, and where a near-identical copy (a few bytes off - bit rot, a patched banner) lies on another disk.

| file | what | how to run |
|---|---|---|
| `FORMH.SAV` | Formats the upper surface of a diskette; asks for confirmation first.  Destructive; the lower surface is FORML  (on 059, 062, 063, 172) | `RUN FORMH` |
| `FORML.SAV` | Formats the lower surface of a diskette; asks for confirmation first.  Destructive; the upper surface is FORMH  (on 059, 062, 063, 172) | `RUN FORML` |
