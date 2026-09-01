\version "2.24.3"

\version "2.24.3"
\include "Global.ily"
\include "book-titling.ily"

my_stump-title-markup = \header {
  title = "My Stump"
  subtitle = ""
  composer = "Black Eyed Peas"
}

my_stump-Melody = \relative c {
  \key cis \minor
  \time 6/8
  e4. \grace { dis16 } \pitchedTrill e4.~\startTrillSpan fis |
  e4 e8\stopTrillSpan \grace { dis8 } e8 dis4 |
  dis4. bis4 gis8~ |
  gis2. |
}

my_stump-Accompaniment = \relative c {
  R1
}

my_stump-Bass = \relative c {
  R1
}

\score { 
  \my_stump-title-markup
  <<
    \new Staff {
      \clef treble
      \transpose c c' \my_stump-Melody
    }
    \new Staff {
      \clef bass
      \transpose c c' \my_stump-Accompaniment
    }
    \new Staff {
      \clef bass
      \transpose c c, \my_stump-Bass
    }
  >>
}