# Utilities: the collector's disks

Voronkov's own diskettes: disk3 (the ОМЕГА sysgen whose monitor is `systems/omega2/`; read also as h0/h1), disk1 (PAPER) and disk2 (baspasfor) - the Pascal and FORTRAN development disks - and disk4, a later compilation with files renamed `.EXE`.  Their kit utilities are the English-message ФОДОС builds shared with Mihin's disks.

The builds below are the ones these disks carried; each card says on which of them it was found, and where a near-identical copy (a few bytes off - bit rot, a patched banner) lies on another disk.

| file | what | how to run |
|---|---|---|
| `DATIME.SAV` | The DATIME of the collector's and Mihin's disks: asks the date and time at boot and sets them (English month names JAN…DEC)  (on PAPER, baspasfor, vvv104 disk1, vvv104 disk2, vvv104 disk4) | `RUN DATIME` |
| `DIR.SAV` | DIR V05.03 with English messages («Wrong version of RT-11») - the build of the collector's ФОДОС disks and of Mihin's kits  (on PAPER, amk disk3, amk_1, baspasfor, disk1, disk2, h0, vvv104 disk1, vvv104 disk2, vvv104 disk3, vvv104 disk4) | `RUN DIR` |
| `DUP.SAV` | DUP V05.28 with English messages («No V5 boot on volume») - the collector's and Mihin's disks  (on PAPER, amk disk3, amk_1, baspasfor, disk1, disk2, h0, vvv104 disk1, vvv104 disk2, vvv104 disk3, vvv104 disk4) | prompt; answers ?DUP-F-Invalidcommand* |
| `PIP.SAV` | PIP V05.14 with English messages («?PIP-F-File not found») - the collector's disks (two bytes off Mihin's copy)  (on PAPER, baspasfor, h0, vvv104 disk3; near-identical copies on amk disk3, amk_1, disk1, disk2, vvv104 disk4) | prompt; answers ?PIP-F-FilenotfoundDK:NOSUCH.XXX* |
