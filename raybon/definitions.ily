\version "2.19.82"

dyn=#(define-event-function (arg) (markup?)
         (make-dynamic-script arg))

force-clef-treble = {
  \revert Staff.Clef #'stencil
  \set Staff.forceClef = ##t
  \clef "treble"
}
force-clef-tenor = {
  \revert Staff.Clef #'stencil
  \set Staff.forceClef = ##t
  \clef "treble_8"
}
force-clef-bass = {
  \revert Staff.Clef #'stencil
  \set Staff.forceClef = ##t
  \clef "bass"
}
