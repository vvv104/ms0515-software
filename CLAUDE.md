# MS-0515 software collection

**Read this first after compacting!**

The software of the Elektronika MS 0515 recovered from its diskettes,
sorted, identified and made to run (README.md): the files by kits and
folders, what a disk can be made of (`disks.toml`), the ready disks of the
releases, the Pages with the games' tiles and the browser wizard's files,
the diskettes' manuals as Markdown (`manuals/`), and how the images are
recovered (`recovery/`).  The README's "Rules of the collection" say what
the files are and what is ours - read them before adding a file.

## Key rules
- **This repository is the software collection and nothing else.**  It
  uses the emulator's artifacts - a released `ms0515-disk` composes the
  disks (`EMULATOR` names the release), the emulator's `package/` and
  `tools/` serve the recovery scripts (`recovery/tools/emulator.py`) - and
  ms0515-devel ships into it what is built there (the dec kit, the games',
  UBIX's images).  Neither of them may need anything from here at build
  or test time: the emulator keeps its own copy of what `ms0515-run` takes
  from here (`src/tools/run/assets/`, refreshed by its
  `tools/run_assets.py`).  What is the emulator's - emulating the machine -
  goes to the emulator; what is development - sources written or ported
  for the machine, the toolset - goes to ms0515-devel.
- **The collection's own text is in English**: the READMEs, the catalog's
  descriptions, the scripts and their comments.  Names, titles and quotes
  from the diskettes stay as the diskettes have them, Cyrillic included,
  and the files themselves are never translated or re-encoded.
- **Never commit or push** without explicit user permission.  Commits to a
  feature branch are allowed without asking; commits to `main` and any push
  still require permission.
- **Everything goes through a pull request, and `main` must stay clean.**
  No workflow checks a pull request here, so check it yourself before
  asking to merge: `python tools/build_disks_toml.py --check` after any
  change to `kits.toml`, `disks.head.toml` or a `bundles.toml` (never edit
  `disks.toml` by hand - it is assembled from them), and
  `ms0515-disk compose --repo . --all <dir>` with the release `EMULATOR`
  names, when a disk's contents change.  Fixes go through the feature
  branch, never directly onto `main`.
- **A disks release** is a `disks-YYYY.MM.DD-N` tag pushed on a green
  `main`: the Disks workflow composes every preset, puts the images beside
  them, creates the release with its notes and deploys Pages.  Wait for it
  and look at the release and the site; it is finished when both are up.
  Do not dispatch the workflow by hand while a tag's run is going - both
  share the `pages` concurrency group.
- **Revert failed attempts**: always roll back changes from unsuccessful
  approaches to avoid accumulating clutter.
- **No machine-specific paths in tracked files**: never a user's home
  directory, a drive letter or any absolute path of one machine - not in
  scripts, not in READMEs, not in the TOML.  The emulator is found by
  `MS0515_DIR` or beside this repository; examples use relative paths.
  Before every commit `git grep -i "users[.]voron"` (and the equivalent
  for the machine at hand) must return nothing.
- **No session links in the history**: commit messages and pull request
  bodies carry the `Co-Authored-By:` trailer and the "Generated with Claude
  Code" credit, and nothing else.  A `Claude-Session:` line points into the
  owner's private Claude account - it opens nothing for anyone else and puts
  a session identifier into a public history.  Whatever attribution an
  assistant session is configured with, this rule wins.

## Structure
```
kits/<kit>/                 — a kit: a monitor (if it has one) and its handlers, utilities, tools
software/<area>/, programs/ — the industrial half and the home-made half, a folder each
ubix/                       — UBIX's release image, as it is
kits.toml, disks.head.toml,
<folder>/bundles.toml       — what a disk can be made of; tools/build_disks_toml.py makes disks.toml
play/, index.html           — the games page: tiles and their run cards
manuals/                    — the diskettes' manuals as Markdown, each beside its original
refs/                       — the machine's factory documentation transcribed (Russian, as the
                              originals): the formulyar, the maintenance programs, the ОСА manual
history/                    — the plant and who made the machine
recovery/                   — the recovery method and its pipeline over the emulator's ms0515-disk
CATALOG.md, catalog.csv     — one card per file; HALLOFFAME.md — the people and houses named
tools/                      — build_disks_toml.py and the scripts for the collection's files
.github/                    — the Disks workflow and site.py (the Pages site, the release notes)
EMULATOR                    — the emulator release whose ms0515-disk composes the disks
```
