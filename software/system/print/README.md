# Printing

Printer utilities for the machine's parallel port: the МС6317 ink-jet (`OUT17`), the СМ6337 dot-matrix (`OUTC`, `6337`).

| file | what | how to run |
|---|---|---|
| `6337.SAV` | Print utility for the МС 6337 dot-matrix printer (hence the numeric name): 'file?' asks for a text file to load, then a menu - load / print / select type (fonts long, dubble, fat, small, step 2.117) / one-side / high quality. On every rebuilt volume it dies before loading: its file-open path uses old-format EMTs (.FETCH at 011144, .LOOKUP at 011264) and fails differently per directory format ('NOT A VALID DEVICE' on a 1-segment volume, '?MON-F-Invalid directory' on 4-segment) - it apparently expects its native System3/disk4 environment. The cross verdict 'ran' only means the prompt came up | `RUN 6337` |
| `OUT17.DOC` | «Утилита OUT17 предназначена для вывода текстовых файлов на струйный принтер МС6317, подключенный к параллельному порту МС0515» - its short manual, ending with Домнич's contact line | text: `TYPE OUT17.DOC`, or read on the host (koi8-r) |
| `OUT17.SAV` | Prints text files on an MS6317 ink-jet printer attached to the parallel port of the MS 0515 | prompt; answers ?CSI-F-Файлненайден* |
| `OUT2.SAV` | One of the OUT family with OUT17 and OUTC | `RUN OUT2` |
| `OUTC.DOC` | «Утилита OUTC предназначена для вывода текстовых файлов на принтер СМ6337, подключенный к параллельному порту МС0515» - its short manual | text: `TYPE OUTC.DOC`, or read on the host (koi8-r) |
| `OUTC.SAV` | Prints text files on an SM6337 printer attached to the parallel port of the MS 0515 | prompt; answers ?CSI-F-Файлненайден* |
