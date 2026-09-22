# Utilities: the ОМЕГА kits

Disks 059 (the omega-games disk of 1991, whose monitor is `kits/omega/`), 062, 063, 064 and 172 - ОМЕГА SJ(S) V05.04 kits of НИПП «Омега», Львов, with Russian utility messages; 064 carries a later LINK (V08.04) and an older MACRO (V05.01b).

The builds below are the ones these disks carried; each card says on which of them it was found, and where a near-identical copy (a few bytes off - bit rot, a patched banner) lies on another disk.

| file | what | how to run |
|---|---|---|
| `DIR.SAV` | DIR V05.03 with Russian messages - the cut of the ОМЕГА disks 059, 064 and 172, 165 bytes apart from the other Russian build  (on 059, 064, 172, vvv104 disk4) | `RUN DIR` |
| `DUMP.SAV` | DUMP V05.07 - the build of the ОМЕГА kits (059, 062, 064, 172)  (on 059, 062, 064, 172, vvv104 disk4) | `RUN DUMP` |
| `DUP.SAV` | DUP V05.28 with Russian messages («Несоответствие версий») - the ОСА, ОМЕГА and Rodionov disks alike  (on 059, 062, 063, 064, 065, 066, 172, System2, bg0515, superBAK7; near-identical copies on vvv104 disk4) | prompt; answers ?DUP-F-Недопустимаякоманда* |
| `HELP.SAV` | RT-11 HELP in two builds: the Russian-localized one (50176 B, «?HELP-F-Не найден файл HELP.MLB»), carried by the ОСА System2, Rodionov's 065 and vvv disk4, and DEC's untranslated V05.04 (69632 B, «What topic do you want help with?») from the Омега disk 062 - each in the folder of its kit. Both need HELP.MLB, the help library, which no disk preserved; HELP.TXT is its text  (on 062) | `RUN HELP` |
| `PIP.SAV` | PIP V05.14 with Russian messages («?PIP-F-Нет файла») - the build of every ОСА, ОМЕГА and Rodionov disk  (on 058, 059, 062, 063, 064, 065, 066, 172, System, System2, System3, bg0515, osa, superBAK7; near-identical copies on vvv104 disk4) | prompt; answers ?PIP-F-НетфайлаDK:NOSUCH.XXX* |
| `TERM.SAV` | The terminal emulator in its other cut, 2048 bytes against the 1536 of Mihin's: asks the line speed (9600=1, 4800=0) and whether scrolling is smooth before entering terminal mode, and prints its prompts in KOI-7. Of the disks that carried it only 172 has a monitor, and that monitor is this kit's, byte for byte; the other is the work diskette 056 of the КВИ «Электроника МС0111» complex, which has none  (on 056, 172) | `RUN TERM` |
| `TERM.TXT` | The operator's page of `TERM`: how to call it, what «РЕЖИМ ЭМУЛЯЦИИ ТЕРМИНАЛА» means and that СУ/Е returns to the monitor. One block, and all three disks that carried it are this kit's  (on 064, 066, 172). The nine-block manual of the same name, which describes the whole complex, is in `programs/ms0111/` | text: `TYPE TERM.TXT`, or read on the host (koi8-r) |
