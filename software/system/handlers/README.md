# Device handlers

The `.SYS` handlers by monitor family — a handler loads only under the sysgen it was built for, so take them from the folder of your system.  `osa` = ОСА (MON8SJ), `omega` = ОМЕГА V05.04 (both RT11SJ builds), `mihin` = OS-16SJ, `rodionov` = RT15SJ, `ms0111` = the terminal-complex disk 056.  One folder holds no recovered file: `hd` is the emulator's paravirtual hard disk handler - see [`hd/`](hd/README.md) for whose it is.  `LOAD DV:` / `SET EM ON` / `SET SL ON` activate them; the compatibility table below is from the cross-run of every handler on every monitor.

Verdicts: *loaded* = `LOAD` accepted it on that monitor, *rejected* = «Недопустимое устройство», *no boot* = the system did not come up with it in the kit, *not listed* = the monitor ignores it.

| family | handler | build | from | what | osa | omega | omega2 | mihin |
|---|---|---|---|---|---|---|---|---|
| hd | `HD.SYS` | `3c8f3e5` | the emulator | Paravirtual hard disk HD: of the PDP-11 emulators, v2.0 of the driver kit, built for the MS-0515 - not a recovered file | loaded | loaded | loaded | rejected |
| mihin | `DZ.SYS` | `591620e` | amk_1 | Floppy-disk handler | no boot | not listed | not listed | loaded |
| mihin | `LD.SYS` | `1b38683` | disk3 | Logical-disk handler: mounts a container file as a volume | rejected | rejected | rejected | loaded |
| mihin | `SL.SYS` | `cd5af8b` | disk1 | the Mihin-family SL V8.00 with a Russian assignment table (^A..^T hotkey macros) | rejected | rejected | rejected | loaded |
| mihin | `TT.SYS` | `f69410a` | amk_1 | Terminal handler | rejected | rejected | rejected | loaded |
| mihin | `VM.SYS` | `67036c0` | amk_1 | RAM-disk handler (memory used as a drive) | rejected | rejected | rejected | loaded |
| ms0111 | `SL.SYS` | `85ad85f` | 056 | SL of the МС0111 complex disk 056 | rejected | rejected | rejected | loaded |
| omega | `DV.SYS` | `09d5bce` | disk3 | Whole double-sided diskette as one 1600-block volume, cylinder 0 last | loaded | loaded | loaded | rejected |
| omega | `DZ.SYS` | `7606fe5` | disk3 | Floppy-disk handler | loaded | loaded | loaded | no boot |
| omega | `EX.SYS` | `0354d18` | disk3 | Electronic-disk handler of the memory/interface expansion board (EX0:) | loaded | loaded | loaded | rejected |
| omega | `HP.SYS` | `5316435` | 059 | Printer-like character-device handler of the Omega kit (HP:) | rejected | loaded | loaded | rejected |
| omega | `LD.SYS` | `6b81c8b` | disk3 | Logical-disk handler: mounts a container file as a volume | loaded | loaded | loaded | rejected |
| omega | `LP.SYS` | `6d8e23c` | disk3 | Line-printer handler | loaded | loaded | loaded | rejected |
| omega | `MZ.SYS` | `1a2133a` | disk3 | Whole double-sided diskette as one 1600-block volume, cylinder 0 first | loaded | loaded | loaded | rejected |
| omega | `SL.SYS` | `9036093` | disk3 | the vvv Omega SL (disk3/h0), activates silently | loaded | loaded | loaded | rejected |
| omega | `TT.SYS` | `521c093` | disk3 | Terminal handler | loaded | loaded | loaded | rejected |
| omega | `VM.SYS` | `2e114ef` | disk3 | RAM-disk handler (memory used as a drive) | loaded | loaded | loaded | rejected |
| osa | `DZ.SYS` | `9b79707` | 058 | Floppy-disk handler | loaded | loaded | loaded | no boot |
| osa | `EM.SYS` | `3f0e1d6` | osa | The instruction-set emulator handler: SET EM ON makes the missing EIS/FIS instructions work by trapping vector 10 | loaded | loaded | loaded | rejected |
| osa | `SL.SYS` | `f988569` | superBAK7 | Storozhevykh's SL V08.00 [SW] 1988 - prints its assignment table on SET SL ON | loaded | loaded | loaded | rejected |
| osa | `TT.SYS` | `521c093` | 058 | Terminal handler | loaded | loaded | loaded | rejected |
| osa | `VM.SYS` | `2e114ef` | 058 | RAM-disk handler (memory used as a drive) | loaded | loaded | loaded | rejected |
| osa | `VS.SYS` | `fb282b1` | 058 | Sound-device handler — not video despite the name | loaded | loaded | loaded | rejected |
| rodionov | `DZ.SYS` | `3ce58ae` | 065 | Floppy-disk handler | loaded | loaded | loaded | no boot |
| rodionov | `NL.SYS` | `aa16988` | 065 | Null-device handler | loaded | loaded | loaded | rejected |
| rodionov | `TT.SYS` | `cb5ceb6` | 065 | Terminal handler | loaded | loaded | loaded | rejected |
| rodionov | `VM.SYS` | `2e114ef` | 065 | RAM-disk handler (memory used as a drive) | loaded | loaded | loaded | rejected |
| rodionov | `VS.SYS` | `fb282b1` | 065 | Sound-device handler — not video despite the name | loaded | loaded | loaded | rejected |

