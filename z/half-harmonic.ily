\version "2.19.82"

half-harmonic = #(define-music-function
  (parser location mus)
  (ly:music?)
  #{
    \temporary \override NoteHead.style = #'harmonic-black
    #mus
    \revert NoteHead.style
  #})
