# Tetris family

`PENT.SAV`, `RUBIS.SAV` and `TTR2.SAV` are one falling-blocks game in three cosmetic cuts: Cyrillic labels, KOI-7 transliterated labels with '.' pieces, and the same with empty cells drawn as spaces (a 2-byte difference).  Keys 7/9 move, 8 rotates, space drops.  A fourth, `TET.SAV`, is a different program - the C-runtime Tetris that credits Пажитнов on its title screen - and the surviving build stops with an error on every monitor.

| file | what | how to run |
|---|---|---|
| `PENT.SAV` | Falling-blocks game (Tetris with pentomino-style pieces): level, lines and score; keys 7/9 move, 8 rotates, space drops, level selectable; labels in Cyrillic (KOI-8). RUBIS.SAV and TTR2.SAV are the same 5-block program with cosmetic differences | `RUN PENT` |
| `RUBIS.SAV` | PENT.SAV with its labels in KOI-7 transliteration («urowenx», «stroki», «o~ki», «e}e raz») for a terminal in РУС mode, and pieces drawn with '.' instead of '*' - otherwise byte-identical | `RUN RUBIS` |
| `TTR2.SAV` | RUBIS.SAV with two bytes changed: empty cells drawn as spaces instead of '.' (which makes the well look narrower) and one header word - the same Tetris a third time | `RUN TTR2` |
