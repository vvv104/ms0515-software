# Utilities: the collector's disks

Voronkov's own diskettes: disk3 (the ОМЕГА sysgen whose monitor is `kits/omega/omega2/`; read also as h0/h1), disk1 (PAPER) and disk2 (baspasfor) - the Pascal and FORTRAN development disks - and disk4, a later compilation with files renamed `.EXE`.  Their kit utilities are the English-message ФОДОС builds shared with Mihin's disks.

The builds below are the ones these disks carried; each card says on which of them it was found, and where a near-identical copy (a few bytes off - bit rot, a patched banner) lies on another disk.

| file | what | how to run |
|---|---|---|
| `BINCOM.SAV` | DEC RT-11 BINCOM V05.08, Russian-localized binary compare (files or devices, PATCH output for SIPP) - off disk4, where the collector had renamed it `.EXE`. DEC's own build, made here from the V5.4 sources, is in `kits/dec/utils/`  (on vvv104 disk4) | bare prompt, no answer to a bogus file name |
| `DATIME.SAV` | The DATIME of the collector's and Mihin's disks: asks the date and time at boot and sets them (English month names JAN…DEC)  (on PAPER, baspasfor, vvv104 disk1, vvv104 disk2, vvv104 disk4) | `RUN DATIME` |
| `DIR.SAV` | DIR V05.03 with English messages («Wrong version of RT-11») - the build of the collector's ФОДОС disks and of Mihin's kits  (on PAPER, amk disk3, amk_1, baspasfor, disk1, disk2, h0, vvv104 disk1, vvv104 disk2, vvv104 disk3, vvv104 disk4) | `RUN DIR` |
| `DUP.SAV` | DUP V05.28 with English messages («No V5 boot on volume») - the collector's and Mihin's disks  (on PAPER, amk disk3, amk_1, baspasfor, disk1, disk2, h0, vvv104 disk1, vvv104 disk2, vvv104 disk3, vvv104 disk4) | prompt; answers ?DUP-F-Invalidcommand* |
| `PIP.SAV` | PIP V05.14 with English messages («?PIP-F-File not found») - the collector's disks (two bytes off Mihin's copy)  (on PAPER, baspasfor, h0, vvv104 disk3; near-identical copies on amk disk3, amk_1, disk1, disk2, vvv104 disk4) | prompt; answers ?PIP-F-FilenotfoundDK:NOSUCH.XXX* |
| `RESORC.SAV` | DEC's own RESORC V05.69 in English («Booted from», «KMON nesting depth», «Emulated RT-11 environment») - the untranslated original, found on the collector's disk4; all but four bytes of what DEC's V5.4 sources build (`../../dec/utils/RESORC.SAV`): this lists the editor `KEY` where the source has `K52`, and one word of its header differs  (on vvv104 disk4) | bare prompt, no answer to a bogus file name |
