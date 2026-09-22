# Домнич А.В.

Домнич's programs that survived with their sources: the perpetual calendar `CALEND` (signed «Домнич А.В 16-06-94г.» in the source, built for the years 1583..5000; the built program runs under any monitor and is in [`../../kits/common/utils/`](../../kits/common/utils/README.md), this is the source it was built from), the Newton nonlinear-system solver `NEWTON.FOR` («программист Домнич Александр»), and the snake game ПИТОН, whose source `UDAW.PAS` is here while the program itself is with the games in [`../../software/games/`](../../software/games/README.md).  His FunctionCAD and OUT17/OUTC utilities, without sources, are in `software/`.

| file | what | how to run |
|---|---|---|
| `CALEND.PAS` | Source of the perpetual calendar, signed «Домнич А.В 16-06-94г.» in its header: prints any year 1583..5000 as a table three months wide (shmc=3) into an output file, Russian month names | compile with PAS1, MACRO, LINK |
| `NEWTON.FOR` | Newton's method for a system of nonlinear equations - «Решение системы» - in FORTRAN, header «13.05.94 Fortran/FODOS-2», «программист Домнич Александр» | compile with FORTRA |
| `UDAW.PAS` | Source of ПИТОН: the rules text («игра может быть полезна учащимся младших классов при изучении темы: гласные и согласные»), the snake driven by the cursor keys eating vowels vertically and consonants horizontally, and the self-check of the built program - it sums the first 1000 words of its own file and greets a renamed copy with «Привет хакерам!!», which is why the game ships as `UDAW.SAV` | compile with PAS1, MACRO, LINK |
