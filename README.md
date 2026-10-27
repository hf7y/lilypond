# lilypond

LilyPond sources for scores and sketches by Z.V. Pine. PDFs, SVGs, MIDI, PNGs and WAVs are not tracked (see `.gitignore`); build them from the `.ly` files.

## What is here

- Top-level `.ly` files: individual scores and sketches (`bac.ly`, `summer.ly`, `poem.ly`, `post-truth.ly`, ...).
- `template.ly`: a starting score (letter paper, empty `music` block, optional iPad Pro paper size).
- `definitions.ily`: shared helpers, e.g. forced clefs. Several scores `\include` it.
- Project directories, one per piece or set (`IAIA`, `introit`, `linea`, `linea2`, `mass`, `piano-march`, `saola1`, `saola3`, `songs`, `stations`, `total-abstraction`, `uke`, `yw`, ...).
- `z/`: small reusable `.ily` includes (noteheads, glissando, parentheses, spanners, frame engraver, ...).
- `archive/`: engraving sources copied out of older project folders. See `archive/README.md`.
- `abjad/`: a Python hello-world for Abjad.

`\version` lines in the sources range from 2.18.2 to 2.20.0. Older files may need `convert-ly` on a current LilyPond.

## Build

Install [LilyPond](https://lilypond.org), then run it on a file:

    lilypond summer.ly

This writes `summer.pdf` next to where you run it; `-o name` sets the output name. Checked with GNU LilyPond 2.24.3 on `summer.ly`.

## Helper scripts

- `lily.sh path/to/score.ly`: an editing setup, not a build. It resizes the terminal window, opens `score.pdf` in `mupdf` if it exists, and starts `tmux` with `vim` on the `.ly`. Needs `xdotool`, `mupdf`, `tmux`, `vim`.
- `trimtagline.sh file.ly [dpi]`: renders a PNG with the tagline off and trims it with ImageMagick `convert` (default 150 dpi).
