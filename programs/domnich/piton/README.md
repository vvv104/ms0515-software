# ПИТОН

Домнич's educational snake game (Воронеж 1994, made for И.В.Ф. «МИКРОТЕХ»).  It ships here as `UDAW.SAV`, not `.EXE`: the program checks its own file on disk under that name (a checksum of its first 1000 words) and greets a renamed copy with «Привет хакерам!!».  `RUN UDAW`.

| file | what | how to run |
|---|---|---|
| `UDAW.PAS` | Source of ПИТОН: the rules text («игра может быть полезна учащимся младших классов при изучении темы: гласные и согласные»), the snake driven by the cursor keys eating vowels vertically and consonants horizontally, and the self-check of the .SAV | compile with PAS1, MACRO, LINK |
| `UDAW.SAV` | Educational snake game 'ПИТОН' for junior schoolchildren (vowels eaten vertically, consonants horizontally), by Домнич Александр for IVF 'МИКРОТЕХ', Voronezh 1994, 6 difficulty levels. Its true name is UDAW.SAV: the program opens 'udaw.sav' (ASCII literal at 0x1306) and sums the first 1000 words - OF ITSELF; the sum of this very binary is exactly the expected -27004, so it is a self-integrity check against renaming/tampering, and a failed check prints 'Привет хакерам!!'. The surviving copies were renamed to .EXE, which is what broke them - put back as UDAW.SAV it runs whole, no key needed | `RUN UDAW` — the file must be named `UDAW.SAV` |
