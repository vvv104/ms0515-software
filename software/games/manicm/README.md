# Manic Miner

**This one is ours, not a recovered file.**  A port of the 1983 ZX
Spectrum game *Manic Miner* (Matthew Smith, Bug-Byte) to the MS-0515,
written in MACRO-11 in 2026 after Richard Dymond's SkoolKit disassembly,
routine for routine: the twenty caverns, the guardians, the two-voice
theme and the in-game tune on the one-bit speaker, the demo, the 6031769
cheat.  One thing is not quite as the Spectrum had it: the original XORed
the theme's two voices into the one speaker bit and sounded their sum and
difference (the first attempt at two voices on the beeper, in 1983), so
the port plays the theme both ways, turn and turn about each time the
title comes up: as the Spectrum did it first, then as written, the two
pitches themselves.  The sources live in the emulator repository under
`rt11_devel/projects/manicm/`, written to be read - the game in one file,
the machine in another - so that whoever ports it on to a DVK or another
PDP-11 rewrites the second file and leaves the first alone.

| file | what | how to run |
|---|---|---|
| `MANICM.SAV` | the program, 20 blocks | `R MANICM`, with `MANICM.DAT` on the same volume |
| `MANICM.DAT` | the original's data - the caverns, the sprites, the tunes, the title screen, the character set - as plain 512-byte blocks the game reads a cavern at a time | data file of `MANICM.SAV`, keep beside it |

ENTER (or the joystick's fire) at the title starts the game; O/P or Q/W
or the arrows walk, SPACE (or SHIFT, or the up arrow, or fire) jumps,
H-L toggle the music, A-G pause, SHIFT with SPACE goes back to the title,
and SHIFT with SPACE at the title leaves for RT-11.  The game runs on
every system of the collection, Rodionov's included: it ends at 70000,
under his monitor.
