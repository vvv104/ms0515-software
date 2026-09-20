# Games

Run a game by its bare name or `R NAME`.  ПИТОН (`UDAW.SAV`) is here as a game and in `programs/domnich/piton/` with its source.  A game with a data file next to it needs that file on the same volume (`SABOT2.DAT`, `KING.DAT`, `KAMENS.DAT`); the notes say what each one asks first.  Many games print their Russian text in KOI-7 - the seven-bit code where the lowercase Latin positions ARE the Cyrillic letters - and read as transliteration («na~nem?», «e}e raz?») until the terminal is in РУС mode: in the emulator press Right Alt (РУС/ЛАТ) before running such a game, and again to return.  Real-time games need `--realtime` in the CLI.

| file | what | how to run |
|---|---|---|
| `BIRDS.SAV` | Colour arcade game with a score and wave banner across the top | `RUN BIRDS` |
| `DERBY.SAV` | Horse-racing game; asks the player for a rank (1-7) | `RUN DERBY` |
| `EXPRES.SAV` | Arcade game set on a moving train, 1990; score line reads TOP / SCORE / TIME / CAR / STG | `RUN EXPRES` |
| `EXPRES.TXT` | The rules of EXPRES in KOI-7 («игра начинается с демонстрации нескольких попыток…»): Enter to start, three tries to reach the middle of the train… | text: `TYPE EXPRES.TXT`, or read on the host (koi8-r/cp866) |
| `GO1.SAV` | Board game (go); first asks whether to print the game on the line printer | `RUN GO1` |
| `KALAHI.SAV` | Kalah (mancala) against the machine; asks whether side A is played by the machine or a person. The same program as KALAH.SAV of the System2/bg0515 disks, which differs by ONE bit (0o10244: MOV 2(SP),@4(SP) rotted into MOV 10252,@4(SP)) - this copy is the sound one and the only one shipped | `RUN KALAHI` |
| `KAM1.SAV` | Stops with ?I/O ERROR: RESET FAILURE on DK:KAMENS.DAT - it needs that data file next to it | `RUN KAM1` with `KAMENS.DAT` beside it |
| `KAMENS.DAT` | The level maps of KAM1: text pictures drawn with @ characters, a header of two numbers per level (16 x 10 cells) | data file of `KAM1.SAV`, keep beside it |
| `KING.DAT` | The saved kingdom of KING.SAV: one block of counters (grain, population, land…) the game reads at start | data file of `KING.SAV`, keep beside it |
| `KING.SAV` | Kingdom simulation "Korolevstvo Eyforiya": asks how many years you intend to reign | `RUN KING` with `KING.DAT` beside it; asks how many years you will reign |
| `KOSTI.SAV` | Dice game; offers instructions first (y/n) | `RUN KOSTI` |
| `LOTOS.SAV` | "Lotos game": menu of S-speed, R-rank, N-quit, D-start | `RUN LOTOS` |
| `LOVE.SAV` | Questionnaire "attitude to the opposite sex"; asks the player's name | `RUN LOVE` |
| `MARS.SAV` | Martian-invaders game, Russian KOI-7 edition: shoot Martians, intercept bombs (scoreboard: уничтожено марсиан / перехвачено бомб / пущено ракет / повреждение установки), with a persistent PLAYER REGISTRY and class-marathon progression ('вы приглашаетесь на марафонский забег в классе...', 'не суетись под клиентом!'). Wants DK:MARS.DAT (RAD50 filespec in the binary) - the registry is lost, a zeroed stand-in is rejected, and login loops forever; the game proper is unreachable until MARS.DAT's format is reverse-engineered. MARS2.SAV is the same binary in German - the game likely arrived from a German PDP-11 source | `RUN MARS` |
| `MARS2.SAV` | The German-language sibling of MARS.SAV - same binary layout, same game: 'MARSFLUGKOERPER', 'KENNWORT ?', 'GREENHORN ?', 'SPIELE DU WOANDERS', 'SIE MACHEN GROSSEN MIST, DESHALB WERDEN SIE ABGE`L O Z`T', scoreboard 'VERN. MARSIANER / ABGEF. BOMBEN'. Probably the original the Russian edition was translated from | `RUN MARS2` |
| `POKER.SAV` | Poker; asks the player's name first | `RUN POKER` |
| `TEN.SAV` | Tennis (vertical Pong) in character graphics, 1 or 2 players: rackets at the top and bottom move left/right, serve on 'B', ball speed 1-7, score drawn in giant asterisk digits - and fully REMAPPABLE controls ('ASSIGN FUNCTION TO KEY BY PRESS KEY & CARRIAGE CONTROL'). Not related to TENNIS.BAS/TENNIS.SPT, a different BASIC tennis | `RUN TEN` |
| `TIR.SAV` | Shooting-gallery game for up to eight players, drawn with text characters; columns for players, score and ammunition | `RUN TIR` |
| `TROPA.SAV` | Russian version of The Oregon Trail: year 1786, the trail from Idaho to Oregon; asks for the player's nickname | `RUN TROPA` |
| `UDAW.SAV` | Educational snake game 'ПИТОН' for junior schoolchildren (vowels eaten vertically, consonants horizontally), by Домнич Александр for IVF 'МИКРОТЕХ', Voronezh 1994, 6 difficulty levels. Its true name is UDAW.SAV: the program opens 'udaw.sav' (ASCII literal at 0x1306) and sums the first 1000 words - OF ITSELF; the sum of this very binary is exactly the expected -27004, so it is a self-integrity check against renaming/tampering, and a failed check prints 'Привет хакерам!!'. The surviving copies were renamed to .EXE, which is what broke them - put back as UDAW.SAV it runs whole, no key needed | `RUN UDAW` |

A folder of its own for what comes as a family or as more than one file:
[`pacman/`](pacman/README.md) - five Pac-Man games; [`sabot2/`](sabot2/README.md)
- Saboteur 2, loader plus body, in the two builds that survived and with the
repair of the room that killed the machine; [`tetris/`](tetris/README.md) -
the falling-blocks games.  And [`fist/`](fist/README.md), which is the one
thing here that never came off a diskette: our own 2026 MACRO-11 port of
Melbourne House's *The Way Of The Exploding Fist*, marked as ours the way
the collection's rules ask.

Programs that survived in several builds - `HANOJ.SAV`, `KOSMOS.SAV` - have a folder each for the disks they came from: `osa/` - the ОСА disks; `osa-rs/` - the ОСА disks that booted into the RS profShell (the same monitor, its other factory configuration).  The files in the table are common to every kit.
