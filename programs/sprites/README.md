# Sprite editors

Two BASIC programs that draw 8x8 sprites on a magnified grid and write them out as a table for the `SPRITE` statement of БЕЙСИК-ОМЕГА, and the manual of the first.  They are sources, not products: `R BASICO`, `LOAD NAME`, `RUN`.

`SPRED.DOC` is the manual of `SPRED.BAS` and of no other program — «Программа "Редактор SPRITE" позволяет графически задавать необходимое количество знакомест в операторе мультипликации "SPRITE" (см. описание языка Бейсик) и записывать их в файл с расширением ".SPT"».  The collection used to file it with `SPR.SAV`, which is a different program altogether: that one writes sprite files for Pascal, was compiled with PAS1, and is now in [`../../kits/common/development/`](../../kits/common/development/README.md) with the rest of the tools.  It has no manual here.

| file | what | how to run |
|---|---|---|
| `GENSPR.BAS` | Sprite generator «COPYRIGHT 1994 BY GOSTEV DMITRY, Россия, Воронеж - идея подана Грудзинским А.С. с физического факультета Львовского университета»: draws 8x8 sprites on a magnified grid and writes them as SPRITE data | `R BASICO`, `LOAD GENSPR`, `RUN` |
| `SPRED.BAS` | «Редактор SPRITE - программа составлена на физическом факультете Львовского университета, автор Грудзинский А.С.»: edits an 8x8 sprite, asks the file name, number (>3), colours and brightness, and BSAVEs the table | `R BASICO`, `LOAD SPRED`, `RUN` |
| `SPRED.DOC` | «Программное обеспечение ПЭВМ Электроника 0515 - Редактор SPRITE - Руководство пользователя», 7 sheets, Львов 1991 - the manual of `SPRED.BAS`, down to the `.SPT` file it writes | text: `TYPE SPRED.DOC`, or read on the host (koi8-r) |
