# BASIC

БЕЙСИК-ОМЕГА (`BASICO.SAV`, the native BASIC of the machine; manual `BASICO.DOC`) and BASIC/RAFOS (`BASIC.SAV`, asks which optional functions to load).  Both run with `R BASICO` / `R BASIC`.  Under БЕЙСИК-ОМЕГА `LOAD NAME` loads a `.BAS`, `RUN` runs it, `BYE` returns to the monitor (BASIC/RAFOS says `OLD NAME` instead).

| file | what | how to run |
|---|---|---|
| `BASIC.SAV` | BASIC / RAFOS V02-030 interpreter; asks which optional functions to load (ALL, NONE, OR INDIVIDUAL) | `RUN BASIC` |
| `BASICO.DOC` | Manual of БЕЙСИК-ОМЕГА («РАЗРАБОТАН ЛЬВОВСКИМ НАУЧНО-ИССЛЕДОВАТЕЛЬСКИМ ПРЕДПРИЯТИЕМ "ОМЕГА"»), 363 blocks. On disk5, the only one of our diskettes with the file, blocks 29-45 (pages 8-14: the end of the contents and sections 1 to 3.2.2) hold no text but code of an earlier file, the menu strings of the ART graphics editor, read without a CRC error. Those 17 blocks, and a space for a stray NUL in block 6, come from the copy anasana restored by hand from another diskette and posted on the zx-pk.ru forum. Its text fills them byte for byte: the lines and the 73-line pages run on into the surviving blocks 28 and 46, and every entry of the restored contents names the heading and the page that the surviving body has | text: `TYPE BASICO.DOC`, or read on the host (koi8-r) |
| `BASICO.SAV` | Omega BASIC for the Elektronika MS 0515, edition 1-01a; the native BASIC of the machine, ready prompt in Russian | `R BASICO`; `LOAD NAME` / `RUN` / `BYE` |

[`rom-b/`](rom-b/README.md) holds БЕЙСИК-ОМЕГА for ROM-B: the interpreter picks Russian or Ukrainian messages by a bit of the ROM's flags word that ROM-A never sets and ROM-B blinks the cursor with, so on ROM-B the original changes language from one message to the next; the copy there always speaks Russian.
