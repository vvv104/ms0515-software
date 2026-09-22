# Rodionov's ROSA Commander

The `065` diskette booted straight into it, and it checks its author's protection — the two sectors the system keeps (see [`../../README.md`](../../README.md)).

| file | what | how to run |
|---|---|---|
| `ROSA3.SAV` | ROSA Commander v1.3 (c) 1993 Rodionov Sergey Alekseevich, Voronezh - his two-panel file manager, launched by his boot: asks the date numerically, then panels DZ0: (left) and DZ2: (right) with a file-info box, 'protected from deletion' flags, PM help key. Needs LOAD VM: and is DZ-bound: it hardcodes DZ0:/DZ2:, so on a DV-booted Omega it dies ('?MON-F-No device', or ODT after LOAD DZ); runs fine on a DZ-pair disk of his system. Refuses a copy that fails its author check | `LOAD VM:` then `R ROSA3` on a DZ0:/DZ2: disk of his system; asks the date as dd-mm-yy, year up to 99 |
| `INSTR.DOC` | «Инструкция по работе с компьютером МС 0515» - Rodionov's one-page operating instruction for his ROSA disk: insert the ROSA diskette, power on, turn the drive latch when the music plays, enter the date at «Дата [дд-мм-гг]?», print files from the commander | text: `TYPE INSTR.DOC`, or read on the host (koi8-r) |
| `REKROS.DOC` | A framed advertisement sheet for Rodionov's system: «Сервисная программа … сделано на МС0515, используя RT15SJ.SYS, R15.SAV, ROSA.SAV» - copying, renaming, protection of files… | text: `TYPE REKROS.DOC`, or read on the host (koi8-r) |
| `REKSYS.DOC` | «Сравнительные характеристики существующего и предлагаемого программного обеспечения» - Rodionov's comparison table of his programs against the standard ones, drawn in pseudo-graphics | text: `TYPE REKSYS.DOC`, or read on the host (koi8-r) |
