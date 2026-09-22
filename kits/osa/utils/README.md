# Utilities: the ОСА kits

Disks 058, System, System3 and osa - the plain ОСА: the Lvov НИПП «Омега» build of RT-11 SJ V05.04 with Russian monitor messages, banner «ОСА Версия 1.0».  Its monitor, in `kits/osa/`, is 058's.

The builds below are the ones these disks carried; each card says on which of them it was found, and where a near-identical copy (a few bytes off - bit rot, a patched banner) lies on another disk.

| file | what | how to run |
|---|---|---|
| `DIR.SAV` | DIR V05.03 with Russian messages («Неправильная версия монитора») - the cut of the ОСА disks, ОМЕГА 062/063 and Rodionov's  (on 058, System, System2, System3, bg0515, osa, superBAK7; near-identical copies on 062, 063, 065, 066) | `RUN DIR` |
| `RESORC.SAV` | RESORC V05.69 with Russian messages («Версия(и) =») - the plain ОСА disks and Rodionov's 065  (on 058, 065, System, System3, osa) | bare prompt, no answer to a bogus file name |

The disks of the other factory configuration - the ones that shipped with the RS profShell (System2, bg0515, superBAK7) - carried the same `DIR`, and a `RESORC` that is this very build with one block of it destroyed.  It is not kept here, and this is what was found out about it:

* Both files are 26 blocks and carry the same `.SAV` header (start `012046`, top of the image `031130`), and of the whole image only block 22 (`0o26000..0o26777`) and the last 88 bytes of block 25 differ.
* In their copy block 22 is not code at all: 464 of its 512 bytes are zero, and it begins with a fragment of some other file - `02 00 5b 00 0b 00 0d 00`, then the text `7503/0141 00010025`.  The slack beyond the top of the image, all zeros in the sound copy, holds leftovers in theirs.
* On the machine the loss shows: `SHOW CONFIGURATION` prints the same in both, but `SHOW ALL` in their copy stops after the configuration - no device list, no memory map, no job table, where the sound copy prints all three.
* The three disks that carry it are copies of one another, which is why the damage looks like a build of its own.
