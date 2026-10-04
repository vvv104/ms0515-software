# The games page

The collection's Pages open on tiles (`index.html` at the root): a game's
picture, its name and a line about it, and a click starts it - the
emulator's page opened at the game's *run card* (`?run=`), which starts the
program at once, with no diskette and no boot, and says under the screen
what to press.  The words are in the visitor's language: Russian where the
browser asks for it, English otherwise.

| file | what |
|---|---|
| `index.json` | the emulator's page (relative to the site) and the games in the order of the tiles |
| `<game>.json` | a run card: `title`, `about` (the tile's line), `screen` (the tile's picture), `program` and `files` (relative to the card), `joystick` (the arrows and Space drive the MS7007 port), `text` (what to do; a blank line parts paragraphs) - the texts by language |
| `<game>.png` | the game's screen, 640x400, taken with the emulator's `ms0515-run-probe --png` |

The card's format is the emulator's (its `src/web/README.md`, "Run
cards"); `title`, `about` and `screen` are this page's.  What a card says
of the keys comes from the game's own README or rules where it has them,
and from the program itself where it has none - `BIRDS.SAV` compares the
key's code with `4`, `5`, `6`, `7`, `9`; `KAM1.SAV` was tried key by key.
A thing not found out is said to be so in the card.

`basic.json` is БЕЙСИК-ОМЕГА with every BASIC program of the collection:
its `files` bring the `.BAS`, `.BAC`, `.SPT` and `.SCR` of `programs/` into
the interpreter's folder, where `LOAD NAME` finds them, and its `menu`
lists them - a click starts BASIC afresh and types `LOAD NAME`, `RUN` (the
interpreter has no command that lists files, so the menu is the
directory).  `open` is the button for a `.BAS` of the visitor's own.  The
menu's lines are short forms of what the folders' READMEs say; a program
seen to stop with an error under this interpreter says so.

A new tile: the card, the picture, and the key added to `index.json`.
The games run on ROM-B under DEC's RT-11 V5.4 of this collection - the
machine `ms0515-run` carries - so a game goes on a tile once it has been
seen to start there (`ms0515-run-probe GAME.SAV` in a copy of its folder).
