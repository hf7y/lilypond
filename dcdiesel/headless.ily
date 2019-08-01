\version "2.19.82"

headless = #(define-music-function (music)(ly:music?) #{
  \hide NoteHead
  $music
  \revert NoteHead.transparent
#})

stemless = #(define-music-function (music)(ly:music?) #{
  \override Stem.thickness = #-1.0
  \override Flag.transparent = ##t
  \override Beam.transparent = ##t
  $music
  \revert Stem.thickness
  \revert Beam.transparent 
  \revert Flag.transparent 
#})

