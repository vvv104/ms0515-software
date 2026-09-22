# Device handlers

The `.SYS` handlers by monitor family — a handler loads only under the sysgen it was built for, so take them from the folder of your system.  `osa` = ОСА (MON8SJ), `omega` = ОМЕГА V05.04 (both RT11SJ builds), `mihin` = OS-16SJ, `rodionov` = RT15SJ.  One handler in every folder is no recovered file: `HD.SYS`, the emulator's paravirtual hard disk - see [the section below](#hdsys---the-emulators-hard-disk) for whose it is.  `LOAD DV:` / `SET EM ON` / `SET SL ON` activate them; the compatibility table below is from the cross-run of every handler on every monitor.

The `056/` handlers of Mihin's kit were run on every system on 2026-09-22: ОСА, ОМЕГА and ОМЕГА2 answer «Conflicting SYSGEN options» and then «Invalid device», Mihin's `INSTALL` and `LOAD` take all three.  No bundle names `PC` or `RK`: the emulator has neither device.

Verdicts: *loaded* = `LOAD` accepted it on that monitor, *rejected* = «Недопустимое устройство», *no boot* = the system did not come up with it in the kit, *not listed* = the monitor ignores it.

| family | handler | build | from | what | osa | omega | omega2 | mihin |
|---|---|---|---|---|---|---|---|---|
| mihin | `DV.SYS` | `dv-mihin` | the emulator | The Omega DV handler made for a TIM$IT monitor: a `$TIMIT` word added at its end (see below) | rejected | rejected | rejected | loaded |
| mihin | `DZ.SYS` | `591620e` | amk_1 | Floppy-disk handler | no boot | not listed | not listed | loaded |
| mihin | `HD.SYS` | `4e04016` | the emulator | The same with the TIM$IT sysgen bit set, which Mihin's monitor wants (see below) | rejected | rejected | rejected | loaded |
| mihin | `LD.SYS` | `1b38683` | disk3 | Logical-disk handler: mounts a container file as a volume | rejected | rejected | rejected | loaded |
| mihin | `SL.SYS` | `58d34ae` | amk disk3 | the Mihin-family SL V8.00, «АДАПТАЦИЯ ДЛЯ УБПК НПФ "СЕНСОР"», with an empty assignment table | rejected | rejected | rejected | loaded |
| mihin | `TT.SYS` | `f69410a` | amk_1 | Terminal handler | rejected | rejected | rejected | loaded |
| mihin | `VM.SYS` | `67036c0` | amk_1 | RAM-disk handler (memory used as a drive) | rejected | rejected | rejected | loaded |
| mihin | `056/SL.SYS` | `85ad85f` | 056 | Сторожевых's SL V06.00b of 1987, off the work diskette 056 - the English build with the LET language | rejected | rejected | rejected | loaded |
| mihin | `056/PC.SYS` | - | 056 | DEC's PC11 paper-tape handler (code 7, CSR 177550, vectors 070/074), sysgen patched to TIM$IT | rejected | rejected | rejected | loaded |
| mihin | `056/RK.SYS` | - | 056 | DEC's RK05 handler, 4800 blocks, moved to CSR 173100 and vector 350 | rejected | rejected | rejected | loaded |
| omega | `DV.SYS` | `09d5bce` | disk3 | Whole double-sided diskette as one 1600-block volume, cylinder 0 last | loaded | loaded | loaded | rejected |
| omega | `DZ.SYS` | `7606fe5` | disk3 | Floppy-disk handler | loaded | loaded | loaded | no boot |
| omega | `EX.SYS` | `0354d18` | disk3 | Electronic-disk handler of the memory/interface expansion board (EX0:) | loaded | loaded | loaded | rejected |
| omega | `HD.SYS` | `3c8f3e5` | the emulator | Paravirtual hard disk HD: of the PDP-11 emulators, v2.0 of Patron's HD driver kit built for the MS-0515 - not a recovered file (see below) | loaded | loaded | loaded | rejected |
| omega | `HP.SYS` | `5316435` | 059 | Printer-like character-device handler of the Omega kit (HP:) | rejected | loaded | loaded | rejected |
| omega | `LD.SYS` | `6b81c8b` | disk3 | Logical-disk handler: mounts a container file as a volume | loaded | loaded | loaded | rejected |
| omega | `LP.SYS` | `6d8e23c` | disk3 | Line-printer handler | loaded | loaded | loaded | rejected |
| omega | `MZ.SYS` | `1a2133a` | disk3 | Whole double-sided diskette as one 1600-block volume, cylinder 0 first | loaded | loaded | loaded | rejected |
| omega | `SL.SYS` | `cb7b42a` | 062 | the 6656-byte SL V08.00 of the ОМЕГА and collector's disks, activates silently | loaded | loaded | loaded | rejected |
| omega | `TT.SYS` | `521c093` | disk3 | Terminal handler | loaded | loaded | loaded | rejected |
| omega | `VM.SYS` | `2e114ef` | disk3 | RAM-disk handler (memory used as a drive) | loaded | loaded | loaded | rejected |
| osa | `DZ.SYS` | `9b79707` | 058 | Floppy-disk handler | loaded | loaded | loaded | no boot |
| osa | `EM.SYS` | `3f0e1d6` | osa | The instruction-set emulator handler: SET EM ON makes the missing EIS/FIS instructions work by trapping vector 10 | loaded | loaded | loaded | rejected |
| osa | `HD.SYS` | `3c8f3e5` | the emulator | Paravirtual hard disk HD: of the PDP-11 emulators, v2.0 of Patron's HD driver kit built for the MS-0515 - not a recovered file (see below) | loaded | loaded | loaded | rejected |
| osa | `SL.SYS` | `7283ef9` | superBAK7 | Storozhevykh's SL V08.00 [SW] 1988, the ОСА build, its assignment table blanked here | loaded | loaded | loaded | rejected |
| osa | `TT.SYS` | `521c093` | 058 | Terminal handler | loaded | loaded | loaded | rejected |
| osa | `VM.SYS` | `2e114ef` | 058 | RAM-disk handler (memory used as a drive) | loaded | loaded | loaded | rejected |
| osa | `VS.SYS` | `fb282b1` | 058 | Sound-device handler — not video despite the name | loaded | loaded | loaded | rejected |
| rodionov | `DZ.SYS` | `3ce58ae` | 065 | Floppy-disk handler | loaded | loaded | loaded | no boot |
| rodionov | `HD.SYS` | `3c8f3e5` | the emulator | Paravirtual hard disk HD: of the PDP-11 emulators, v2.0 of Patron's HD driver kit built for the MS-0515 - not a recovered file (see below) | loaded | loaded | loaded | rejected |
| rodionov | `NL.SYS` | `aa16988` | 065 | Null-device handler | loaded | loaded | loaded | rejected |
| rodionov | `TT.SYS` | `cb5ceb6` | 065 | Terminal handler | loaded | loaded | loaded | rejected |
| rodionov | `VM.SYS` | `2e114ef` | 065 | RAM-disk handler (memory used as a drive) | loaded | loaded | loaded | rejected |
| rodionov | `VS.SYS` | `fb282b1` | 065 | Sound-device handler — not video despite the name | loaded | loaded | loaded | rejected |

## SL: one clean copy of each build

`SL.SYS` keeps its state inside itself.  Booting a disk once is enough to
change it: `SET SL ON` writes a word into the file - twice, 0o3006 bytes
apart, at 0o310 and 0o11562 - which was measured here by composing a disk,
reading `SL.SYS` out of the image, booting the machine once and reading it
out again: two bytes, those two.  The hotkey assignments live in the file
too, so every diskette's copy differs from every other's in what its owner
had set and in where it was last loaded.

Masking those areas leaves the code, and the code says there were five
builds among the thirteen copies the reads gave:

| build | size | on the diskettes | here |
|---|---|---|---|
| Сторожевых SL V06.00b, 1987, English | 5120 | 056 | `mihin/handlers/056/SL.SYS` |
| SL V08.00 of the ОСА disks | 5120 | bg0515, superBAK7 | `osa/handlers/SL.SYS` |
| SL V08.00 «АДАПТАЦИЯ ДЛЯ УБПК НПФ "СЕНСОР"» | 5120 | disk1, disk2, amk disk3 | `mihin/handlers/SL.SYS` |
| a fourth 5120 build | 5120 | amk_1 | not shipped |
| SL V08.00, the 6656-byte build | 6656 | 062, 063, h0, PAPER, baspasfor, vvv104 disk1..3 | `omega/handlers/SL.SYS` |

One clean copy of each is shipped, in the kit whose diskettes carried it -
clean meaning an empty assignment table, so that `SET SL ON` does not bring
up a stranger's thirty-year-old macros.  For the ОМЕГА build and for
Mihin's the diskettes themselves had a clean copy (062/063 and amk disk3);
the ОСА one was blanked here, and that is the only SL in the collection
whose bytes are not a diskette's.

There is no separate SL for the `vvv` and `rodionov` kits: their copies
were the ОМЕГА build over again, so those systems take `sl-omega`.

## HD.SYS - the emulator's hard disk

**Not a recovered file.**  The МС 0515 never had a hard disk; `HD:` is a
paravirtual block device of the PDP-11 emulators, and this is the RT-11
handler that drives it, built for the MS-0515 emulator
(https://github.com/vvv104/ms0515).  Like FIST, it is here without its
sources - they live in the emulator repository under
`rt11_devel/projects/hd/`, with the recipe that builds this file inside
the emulator.

**Whose it is.**  The driver is v2.0 of the HD driver kit Patron
published with his DVK emulator: the variants of the HD controller and a
driver for each, https://zx-pk.ru/threads/18351-emulyator-dvk.html?p=929457
(2017), the kit at `http://emulator.pdp-11.org.ru/misc/HD_v1_v2_v3_v4_v5.zip`.
The idea of bringing it to the МС 0515 came from shattered on the
machine's thread, and Patron pointed to the kit there
(https://zx-pk.ru/threads/15146-ms-0515/page34.html, posts 337-340, June
2026).  The МС 0515 build changes two things: its install and boot
messages are switched off (`$$SILENT`) - they go to a DL11 console this
machine does not have, and the write would wait forever - and the
install check gets back the success exit that switching them off had
cut away.

### Using it

Start the emulator with an image of any size in 512-byte blocks:

    ms0515 --disk0 yoursystem.dsk --hd work.img

put the `HD.SYS` from your system's folder on the system disk
(`ms0515-disk put`), boot, and

    INIT HD:
    DIR HD:
    COPY *.SAV HD:

RT-11 registers the handlers on its boot volume by itself, so no `LOAD` is
needed.  The device answers at `0177720` / `0177722` only while an image
is mounted; without one the handler is refused as an invalid device.

`osa/`, `omega/` and `rodionov/` hold the same build; `mihin/` holds the
one its monitor accepts.

**Why Mihin's needs its own.**  An RT-11 handler carries the SYSGEN options
it was built for in word 060 of its first block, and the monitor refuses a
handler whose options differ from its own - "Invalid device" at `LOAD`,
"?KMON-F-Conflicting SYSGEN options" at `INSTALL`.  Mihin's OS-16SJ is
generated with device time-out support (`TIM$IT`): every one of its own
handlers has `000004` there, every handler of the other systems `000000`.

The word is not a formality.  A handler ends (`.DREND` in `SYSMAC.SML`)
with pointer words the monitor fills when it loads the handler, `$INPTR`
and `$FKPTR`, and a monitor with `TIM$IT` expects a third before them,
`$TIMIT` - it finds them from the handler's end, by its own layout.  With
the bit alone flipped, Mihin's monitor writes `$TIMIT` over the last word
of the handler's code: in `DV.SYS` that is the `270` of `.DRFIN`'s
`JMP @270(R5)`, the return into the monitor after every request, and the
machine drops into ODT the first time the volume is read.  So
`mihin/DV.SYS` is the Omega handler with a zero word inserted before
`$INPTR`, its size and the offsets past the insertion grown by two, and the
bit set - made by the emulator repository's `tools/timit_handler.py`,
which refuses a handler that addresses the pointer words itself (`.DRAST`,
`.FORK`; the MS-0515 floppy handlers poll and use neither).  `mihin/HD.SYS`
is the same handler with only the bit set, from before this was understood:
it works because the word before its `$INPTR` happens to be a spare zero.
Both are refused by the other systems in turn.

Each checked on a system disk of this collection: HD with a 2000-block
image - `INIT HD:`, then `DIR HD:` shows the empty volume; on Mihin's a
file copied there lists back too.  DV on Mihin's: a DV diskette in the
second drive lists and a file copied off it is byte-exact, and a Mihin
system composed as one DV volume boots, copies and lists.
