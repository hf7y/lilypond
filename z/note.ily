\version "2.19.82"

headless = #(define-music-function (music)(ly:music?) #{
  \hide NoteHead
  \temporary \override NoteHead.no-ledgers = ##t
  $music
  \revert NoteHead.no-ledgers
  \revert NoteHead.transparent
#})

stemless = #(define-music-function (music)(ly:music?) #{
  \temporary \override Stem.thickness = #-1.0
  \temporary \override Flag.transparent = ##t
  \temporary \override Beam.transparent = ##t
  $music
  \revert Stem.thickness
  \revert Beam.transparent 
  \revert Flag.transparent 
#})

no-acc = \once \override Accidental.stencil = ##f
