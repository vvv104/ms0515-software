# Minesweeper

**The collector's own game, the original.**  «The Minesweeper Game,
Copyright (C) 1995 Ver. 1.01, Production by Voronkov Software, Russia,
Voronezh» - V. V. Voronkov's Pascal minesweeper for the MS 0515, the
version with the menu, three levels and the enciphered help.  No binary of
it survived; this one was built in 2026 from the sources he wrote in 1995
(`programs/vvv/minesweeper/v1.01/`), with OMSI Pascal on the machine
itself, in the emulator's repository under
`rt11_devel/projects/minesweeper/` - where every change the sources needed
to build and run is listed.  The author's file was `K.SAV`; he named this
one `MINE`.

| file | what | how to run |
|---|---|---|
| `MINE.SAV` | the program, 41 blocks: what LINK made and two blocks after it - the sum the program checks its own file by, and its sprite table | `RUN MINE`, with `MINE.HLP` on the same volume for F1 |
| `MINE.HLP` | the help, two screens, enciphered with the author's `CODTXT` (`programs/vvv/`); the game deciphers it as it shows it | data file of `MINE.SAV`, keep beside it |

The arrows move, Space opens a cell, Return marks a mine.  F1 is the help,
F2 a new field, F3 / F4 / F5 Beginner (8x8, 10 mines) / Intermediate
(16x16, 40) / Expert (30x16, 99), F6 a field of one's own, F9 the menu,
F10 leaves.  **The F-keys want ROM-B**, the author's machine: ROM-A hands
no F1-F10 to a program, and on it only the arrows, Space and Return work.

Three things its help describes are in none of the surviving sources and
so not in the game: the count of mines and the clock over the field, the
«?» mark, the best times.  A game lost or won ends the program.

The earlier, single-file game - one field of 16x16 - is `K.SAV` in
`programs/vvv/minesweeper/`, the binary that did survive.
