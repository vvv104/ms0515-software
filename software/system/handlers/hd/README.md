# HD.SYS - the emulator's hard disk

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

## Using it

Start the emulator with an image of any size in 512-byte blocks:

    ms0515 --disk0 yoursystem.dsk --hd work.img

put `HD.SYS` on the system disk (`ms0515-disk put`), boot, and

    INIT HD:
    DIR HD:
    COPY *.SAV HD:

RT-11 registers the handlers on its boot volume by itself, so no `LOAD` is
needed.  The device answers at `0177720` / `0177722` only while an image
is mounted; without one the handler is refused as an invalid device.

| system | handler |
|---|---|
| ОСА (MON8SJ) | `HD.SYS` |
| ОМЕГА (both RT11SJ builds) | `HD.SYS` |
| Rodionov's RT15SJ | `HD.SYS` |
| Mihin's OS-16SJ | `mihin/HD.SYS` |

**Why Mihin's needs its own.**  An RT-11 handler carries the SYSGEN options
it was built for in word 060 of its first block, and the monitor refuses a
handler whose options differ from its own - "Invalid device".  Mihin's
OS-16SJ is generated with device time-out support (`TIM$IT`): every one of
its own handlers has `000004` there, every handler of the other systems
`000000`.  `mihin/HD.SYS` is the same handler with that bit set - one byte,
exactly what the driver's own `SET HD TIMIT=1` writes - and it is refused by
the other systems in turn.  With the plain build on Mihin's disk,
`SET HD TIMIT=1` and a reboot come to the same thing.

Each checked on the exemplar in `../../../systems/` with a 2000-block image:
`INIT HD:`, then `DIR HD:` shows the empty volume; on Mihin's a file copied
there lists back too.
