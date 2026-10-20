# Tetris for RT-11 - its source, reconstructed

`TETRIS.PAS` is ours: the Pascal source of the RT-11 Tetris, written in
2026 from its binary, not found on any disk.  The program is the
`TETRIS.SAV` of the old games disk that Form's RT-11 games page
(pdp-11.org.ru/~form/rtgames, «игрушки ... которые удалось прочитать со
старых советских дискет») and archive.org's "RT-11 Games" carry, and the
DVK and UKNC disks of archive.pdp-11.org.ru as well - the one run as the
original Electronika 60 Tetris.  The binary names no author; the
collection does not either.

The source was rebuilt until the compiler gave the same program:
compiled with [Pascal SM-4](../../software/development/pascal-sm4/README.md),
assembled and linked with its library, it is `TETRIS.SAV`'s own code,
001000..017272, byte for byte - of its 3677 words the 184 that differ are
all addresses into the run-time library, which the original was linked
with in another version.  The names and the comments are ours; where two
ways of writing a statement give the same code, the one chosen is a guess.
The texts are KOI-7, as in the binary: the small Latin letters are Russian
capitals on a KOI-7 terminal.  Mihin's OS-16SJ shows them so (the game
prints SO before its words); the other monitors show the Latin letters.

What the bytes told of the source: no stack or index checks (`(*$T-,A-*)`);
the score an unsigned `0..65535`; MACRO-11 inserts for the key routine -
which counts while it waits, the count being the random generator's seed -
for the delay loop on the terminal's status register, for the addresses
the compiler cannot take, and for the JSW bits; `EXIT`, which in this
Pascal leaves the innermost loop; string literals broken over a line end
to carry CR LF.

| file | what | how to run |
|---|---|---|
| `TETRIS.PAS` | The source: the falling-figures game with its level question, the next-figure preview (5 points a look), the high-score table of 20 names and the help text - keys 7/9 move, 8 turns, space or 5 drops, 4 faster, 1 shows the next figure, 0 erases the help | `RUN PASCAL TETRIS=TETRIS`, `RUN MACRO TETRIS=TETRIS`, `RUN LINK TETRIS=TETRIS,SY:PASCAL`, `RUN TETRIS` |

The bundle `tetris-pas` carries it with the compiler.  Built and run so
under DEC's RT-11 for the machine, ОМЕГА, ОСА, Mihin's OS-16SJ and
Rodionov's RT15SJ (2026-10-20).  The build wants room: `TETRIS.MAC` is 65
blocks, `TETRIS.OBJ` 20, the program 27 (the original's 28 - its library
was another).
