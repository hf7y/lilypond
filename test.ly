\version "2.18.2"
\header {

  texidoc = "Tuplet numbers' outside staff priority can be
set."

}

\relative {
  \override TupletBracket.avoid-scripts = ##f
  \tuplet 3/2 { a'8\trill a\trill a\trill }
  \override TupletNumber.outside-staff-priority = #1
  \tuplet 3/2 { a8\trill a\trill a\trill }
  \override Script.outside-staff-priority = #2
  \tuplet 3/2 { a8\trill a\trill a\trill }
}
