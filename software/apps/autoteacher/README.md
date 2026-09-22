# AutoTeacher

SB Soft Ware's school testing system V3.10 (1992): `AT.SAV` plays a `.QUS` question file (`RUN AT`, then the file name), `CR.SAV` constructs question banks, `STUD.PUP` holds the pupils' results; the physics tests that came with it are here.

| file | what | how to run |
|---|---|---|
| `1003.DOC` | The question bank of an AutoTeacher physics test in readable form: twenty questions on the ideal gas (state equation, pressure, temperature…), each with its answer - the text the .QUS of the same name was built from | text: `TYPE 1003.DOC`, or read on the host (koi8-r/cp866) |
| `1003.QUS` | AutoTeacher question file: 20 questions on the ideal gas («уравнение состояния идеального газа характеризует…»), each with its answer cut into words for the word-grid answering; the readable form is 1003.DOC | data file of `AT.SAV`, keep beside it |
| `1018.QUS` | AutoTeacher question file: physics test on the magnetic field ('МАГНИТНЫМ ПОЛЕМ НАЗЫВАЕТСЯ...') with word-grids the pupil assembles definitions from; authored with CR.SAV, played by AT.SAV | data file of `AT.SAV`, keep beside it |
| `10L01.DOC` | The question bank of an AutoTeacher test in readable form: twelve questions on thermodynamics («термодинамика - это…»), with answers | text: `TYPE 10L01.DOC`, or read on the host (koi8-r/cp866) |
| `10L01.QUS` | AutoTeacher question file: 12 questions on thermodynamics with their answers cut into words; the readable form is 10L01.DOC | data file of `AT.SAV`, keep beside it |
| `10L04.DOC` | The question bank of an AutoTeacher test in readable form: fourteen questions on resistivity and conductors («удельным сопротивлением проводника называется…»), with answers | text: `TYPE 10L04.DOC`, or read on the host (koi8-r/cp866) |
| `10L04.QUS` | AutoTeacher question file: 14 questions on resistivity and conductors with their answers cut into words; the readable form is 10L04.DOC | data file of `AT.SAV`, keep beside it |
| `AT.SAV` | AutoTeacher V3.10 (SB Soft Ware Ltd., 1992) - the school testing system's player: runs .QUS question files (word-grid answers), keeps pupil records in STUD.PUP; questions are authored with CR.SAV | `RUN AT`, then a `.QUS` file name (`1018.QUS`) |
| `CR.SAV` | The question-bank constructor of AutoTeacher (SB Soft Ware Ltd.), the build its own diskettes carry (disk1, disk2, amk disk3): writes the .QUS files AT.SAV plays | `RUN CR` |
| `STUD.PUP` | AutoTeacher results file: 'файл данных о проверке знаний учащихся' - the pupils' test records for AT.SAV | data file of `AT.SAV`, keep beside it |

`amk_1/` holds the constructor as the Лицей №1 diskette carries it - a rebuilt copy, all 41 blocks apart from the one above, with a KOI-7 «ВЫ УВЕРЕНЫ? (Д/Н)» prompt.  That lyceum's machine ran Mihin's OS-16SJ, which is why AutoTeacher was on its disks at all; the pupils' own work is in [`../lyceum1/`](../lyceum1/README.md).
