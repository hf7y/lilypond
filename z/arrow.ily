\version "2.19.82"

arrowOn = {
  \override Glissando.bound-details.right.arrow = ##t
  \override Glissando.arrow-length = #0.7
  \override Glissando.arrow-width = #0.4
}
arrowOff = {
  \revert Glissando.bound-details.right.arrow 
  \revert Glissando.arrow-length 
  \revert Glissando.arrow-width
}

skip = #(define-music-function (music)(ly:music?) #{
  \override NoteColumn.glissando-skip = ##t
  $music
  \revert NoteColumn.glissando-skip
#})
