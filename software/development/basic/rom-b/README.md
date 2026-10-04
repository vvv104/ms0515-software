# БЕЙСИК-ОМЕГА for ROM-B

`BASICO.SAV` of the folder above with one thing changed: it speaks Russian
whatever the ROM.  The original stays where it is, untouched.

The interpreter carries its messages twice - «Готов» and «Готовий»,
«останов в строке» and «зупинка в стрычцы» - and chooses between them by
bit 5 of the ROM's flags word, `BIT #40, @#157760`, in eight places.  ROM-A
never sets that bit, so on the machine the interpreter was written for it
speaks Russian.  ROM-B uses the same bit for the cursor's blink - set while
the cursor cell stands inverted - so there the language of a message
depends on the instant it is printed: «Готов» after one command, «Готовий»
after the next.

Here the eight tests read no bit: the mask `000040` is `000000`, one byte
each, so the Russian branch is the one always taken.  Nothing moves.

| file offset (octal) | before | after |
|---|---|---|
| 002126, 017206, 053066, 053344, 054426, 055500, 062222, 062346 | `000040` | `000000` |

| file | what | how to run |
|---|---|---|
| `BASICO.SAV` | БЕЙСИК-ОМЕГА, edition 1-01a, with the language test taken out: Russian messages on ROM-B as on ROM-A | `R BASICO`; `LOAD NAME` / `RUN` / `BYE` |

The games page (`play/basic.json`) runs this one, since its machine is on
ROM-B.
