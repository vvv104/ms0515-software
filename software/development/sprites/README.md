# Sprite tools

The SPRITE editor of Львов 1991 (`SPR.SAV` from `SPRED.BAS`, manual `SPRED.DOC`) and Гостев's sprite generator; they write sprite tables for Pascal and BASIC programs.

| file | what | how to run |
|---|---|---|
| `GENSPR.BAS` | Sprite generator «COPYRIGHT 1994 BY GOSTEV DMITRY, Россия, Воронеж - идея подана Грудзинским А.С. с физического факультета Львовского университета»: draws 8x8 sprites on a magnified grid and writes them as SPRITE data | `R BASICO`, `LOAD GENSPR`, `RUN` |
| `SPR.SAV` | Sprite editor for the MS 0515 (the SPRED manual); writes a sprite file for PASCAL-RAFOS programs | `RUN SPR`; writes a sprite file for Pascal programs |
| `SPRED.BAS` | «Редактор SPRITE - программа составлена на физическом факультете Львовского университета, автор Грудзинский А.С.»: edits an 8x8 sprite, asks the file name, number (>3), colours and brightness, and BSAVEs the table | `R BASICO`, `LOAD SPRED`, `RUN` |
| `SPRED.DOC` | «Программное обеспечение ПЭВМ Электроника 0515 - Редактор SPRITE - Руководство пользователя», 7 sheets, Львов 1991 | text: `TYPE SPRED.DOC`, or read on the host (koi8-r) |
