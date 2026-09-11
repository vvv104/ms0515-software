# The Way Of The Exploding Fist

**This one is ours, not a recovered file.**  Everything else in this
collection came off the diskettes; FIST is a new port, written in MS-0515
MACRO-11 in 2026, of the 1985 ZX Spectrum game *The Way Of The Exploding
Fist* — Melbourne House / Beam Software, designed by Gregg Barnett.  It
follows pobtastic's SkoolKit disassembly of the original routine for
routine: the same mechanics, the same artwork, re-expressed for this
machine.  The sources and the whole build (which reads the original tape
image and emits the MACRO-11 from it — the art is never vendored) live in
the emulator repository under `rt11_devel/projects/fist/`.

## Running

    ms0515-disk put yoursystem.dsk FIST.SAV
    ms0515-disk put yoursystem.dsk FIST.DAT

then, at the monitor prompt, `R FIST`.  Both files must sit on the same
volume: `FIST.SAV` is the loader - it carries the picture it shows while
it works - and the whole program travels in `FIST.DAT` beside the artwork,
LZSS-packed, the way `SABOT2.SAV` carries `SABOT2.DAT`.  The game needs the
full 128 KB machine and takes it over — it does not return to the monitor.

The loader touches no memory the monitor owns: what it needs is either
inside its own image or in the extended banks, which RT-11 cannot see.  So
it runs on every one of the collection's systems, including Rodionov's,
whose monitor sits low enough that the earlier loader wrote over it.

The title screen holds about three seconds (or until fire), then the
attract demo runs.  Fire starts a 1-player game, `2` a 2-player one, `0`
opens the original's settings screen (key redefinition, sound on / off).

## Controls

Player 1 is on the keypad — the original's nine definable keys as a 3x3
block with fire in the middle — and the arrows and Space work too; player
2 is on `Q W E` / `A S D` / `Z X C`.  A direction alone moves, the same
direction with fire strikes.  "Forward" means towards the opponent.

| direction | player 1 | player 2 | alone | with fire |
|---|---|---|---|---|
| up | KP8, Up | W | jump | high punch |
| up + forward | KP9 | E | forward somersault | flying kick |
| forward | KP6, Right | D | walk forward | front kick |
| down + forward | KP3 | C | foot sweep | low kick |
| down | KP2, Down | X | crouch | low punch |
| down + back | KP1 | Z | reverse sweep | spinning back kick |
| back | KP4, Left | A | walk back | roundhouse kick |
| up + back | KP7 | Q | backward somersault | reverse high kick |
| fire | KP5, Space, VR, SU | S | — | — |

The settings screen's "5: KEMPSTON JOYSTICK" is the joystick this machine
has, five lines on the MS7007 port 0177542; the Sinclair choices fall back
to the keys.  Facing left, the keypad diagonals mirror — exactly the two
halves of the original's control table.

## What it is

The whole per-frame engine, the procedural fighter renderer in all four
pose modes, all three dojos, the 1UP match structure with the ranks from
NOVICE to 10TH DAN, the status strip in the Spectrum ROM font, the intro
tune and the sound effects bit-banged on register C bit 6 as the original
bit-banged its beeper — and the original's pace, a frame every 1/13 s,
timed on timer channel 1.

What differs by nature: the MS7004 keyboard sends no key-release codes, so
a held key is a timer refreshed by auto-repeat (a key released less than
about 0.2 s before the next press still counts as held); the opponent's
randomness is an LFSR where the original read the Z80's R register; and a
scene heavier than the machine can draw in 1/13 s — the demo's two AI
fighters changing pose every frame — runs below the pace.

Nothing here is claimed: the game is Melbourne House's, and this is only
its port.
