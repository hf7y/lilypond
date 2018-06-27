\version "2.19.80"
%Score for tony
%Started Tue Apr 17 15:14:03 EDT 2018
\header {
  title = "tony"
  subtitle = ""
  composer = "Z. V. Pine"
  tagline = ""
}%end header

music = {
  \key c \major
  \time 4/4
  <<
  {%Voice One
    R1 * 8 
    \repeat unfold 6 {
      s1 | des''1~ | des''1 ~ | des''1\pp\>
    }
  } \\ {%Voice Two
    \repeat unfold 8 {
      c'1:32\pp\< | c'1:32\f\> | c':32\pp\> | s1 |
    }
  } \\ {%Voice Three
  } \\ {%Voice Four
    s1 * 12 |

    s2 ges':8 | s2 ges':8 | s2 ges':8 | s2 ges':8 | 
    s2 <ges' f'>:8 | s2 <ges' f'>:8 | s2 <ges' f'>:8 | s2 <ges' f'>:8 | 
    s2 fis':8 | s2 fis':8 | s2 fis':8 | s2 fis':8 | 
    s1 * 8 |
  }
  >>

}%end music

\score {<<
  \new Staff \with { 
    instrumentName = #""
	shortInstrumentName = #""
  }{
    \clef "treble"
	\new Voice = "voice" {
	  \music
	}
  }
>>}%end score

\paper {
  #(set-paper-size "quarto")
}%end paper
\layout {
  \context {
    \Score
	proportionalNotationDuration = #(ly:make-moment 1/10)
	\override Score.SpacingSpanner.strict-note-spacing = ##t
  }
}%end layout
