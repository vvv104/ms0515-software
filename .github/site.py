"""The collection's Pages site, and the notes of a disks release.

    site.py OUT SITE        the composed disks from OUT under SITE/disks/, every
                            tracked file of the collection under SITE/ at its
                            own path, and SITE/index.json - what the browser
                            build's wizard reads first
    site.py --notes TAG     release notes listing the presets, built with the
                            emulator release TAG
"""
import json
import shutil
import subprocess
import sys
import tomllib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def manifest():
    return tomllib.loads((ROOT / 'disks.toml').read_text(encoding='utf-8'))


def tracked():
    out = subprocess.run(['git', 'ls-files', '-z'], cwd=ROOT, capture_output=True, check=True).stdout
    return [p for p in out.decode('utf-8').split('\0') if p and not p.startswith('.github/')]


def site(out_dir: Path, site_dir: Path):
    m = manifest()
    paths = tracked()
    for p in paths:
        dst = site_dir / p
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(ROOT / p, dst)
    disks = site_dir / 'disks'
    disks.mkdir(parents=True, exist_ok=True)
    presets = []
    for key, p in m.get('preset', {}).items():
        shutil.copyfile(out_dir / f'{key}.dsk', disks / f'{key}.dsk')
        entry = {'key': key, 'title': p['title'], 'system': p['system'],
                 'media': p['media'], 'image': f'disks/{key}.dsk', 'hint': p.get('hint', '')}
        rom = p.get('rom') or m['system'][p['system']].get('rom')
        if rom:                        # the ROM the system runs on alone
            entry['rom'] = rom
        presets.append(entry)
    sizes = {p: (ROOT / p).stat().st_size for p in paths}
    index = {'format': 1, 'manifest': 'disks.toml', 'presets': presets, 'paths': paths, 'sizes': sizes}
    (site_dir / 'index.json').write_text(json.dumps(index, ensure_ascii=False, indent=1), encoding='utf-8')
    (site_dir / '.nojekyll').write_text('', encoding='utf-8')
    print(f'{len(paths)} files, {len(presets)} disks')


def notes(emulator_tag: str):
    m = manifest()
    lines = ['Bootable diskettes composed from this collection by `ms0515-disk compose` '
             f'of the emulator {emulator_tag}.', '']
    for key, p in m.get('preset', {}).items():
        system = m['system'][p['system']]['title']
        titles = ', '.join(m['bundle'][b]['title'] for b in p.get('bundles', []))
        lines.append(f'- `{key}.dsk` - {p["title"]} ({system}, {p["media"]}): {titles}')
    lines += ['', 'Any other disk is one command away: '
              '`ms0515-disk compose --repo <this repository> --system KEY --media ss|dz|dv --add ...`.']
    print('\n'.join(lines))


if __name__ == '__main__':
    if len(sys.argv) == 3 and sys.argv[1] == '--notes':
        notes(sys.argv[2])
    elif len(sys.argv) == 3:
        site(Path(sys.argv[1]), Path(sys.argv[2]))
    else:
        sys.exit(__doc__)
