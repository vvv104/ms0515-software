# UBIX, a UNIX for the MS 0515

**This one is ours, not a recovered file.**  UBIX is a small UNIX-like
system for the Электроника МС 0515, written in 2026 from nothing in C and
PDP-11 assembler - not RT-11, and none of the collection's monitors.  The
name is the machine's factory name, УБПК, crossed with UNIX.  The
sources, the build and the tests live in the emulator repository under
`rt11_devel/projects/unix/`; its `SPEC.md` says how the system is made and
why, its `README.md` what there is.

`ubix.dsk` is the release image, UBIX V0.1: 800 KB, both sides of the
diskette one volume of UBIX's own file system.  It is a disk of its own,
not one composed from the collection's files, so the disk tool and the
wizard do not make it; the browser build offers it beside the composed
disks.

## Running

Boot it in drive A with **ROM-B**: the kernel takes the console, the
keyboard and the disk block from it.  With the EX board's RAM disk - the
desktop emulator has it, the browser build does not - the system is
copied into memory at the boot and runs from there, the diskette at
`/mnt/floppy1` and its `/home` - the user's files - at `/home`; without
the board it runs from the diskette.
The boot tells what it does, then wipes the screen and leaves the name,
what is mounted where, and the shell's prompt, `/home#`.

`ls /bin` lists the programs, `cat /etc/motd` says hello; the shell has
pipes, `< > >>`, `&`, scripts, Tab completion and history on the arrows.
There is no login, and the machine has no clock: the date is 1970 until
`date` sets it.

The other emulators - MAME, EmuStudio, MS0515BTL - take neither 800 KB
images nor the RAM disk; for them the emulator repository builds
`ubix01.dsk`, 400 KB, without the RAM disk.
