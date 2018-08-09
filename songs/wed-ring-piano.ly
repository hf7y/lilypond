\version "2.19.80"
%Score for wed-ring-piano
%Started Thu Feb 22 18:36:53 CST 2018

droit = \relative c' {
  \partial 8 r8 |
  s1 | s | s | s |

  r2 cis8 d cis4 |
  r8 cis cis cis cis b a fis |
  e2 s2 |
  s2. e8 e |
  cis'8 b a b cis a b4 |
  r8 a b cis b4 a |
  a2. s4 |
  s1 |

  %watch 
  fis'4 e8 cis cis d cis4 |
  r8 cis cis cis cis b a fis |
  e8. cis'16 cis2 s4 |
  s2. e,8 e |
  cis'8 b a b a4 s |
  r8 a b cis b a a4|
  s1 |
  s2. r8 
  
  e8 | b' b b cis b4 a8 a( | 
  fis2) r8 e e e |
  b' b b cis b4 a |
  d4.( cis16 b a8 b4.) |
  s1 |


}%end droit

riff = \relative c' {
  \partial 8 r8 |
  r4 cis8 e fis4 fis | r cis8 e fis gis fis e | r4 cis8 e fis4 fis8 e | c2. r4 |
  s1 | s | s4 cis8 e fis4 fis8 e | cis2 r4 s | 
  s1 | s | s4 cis8 e fis4 fis8 e | cis2 r2 | 
  s1 | s | s4 s8 e fis4 fis8 e | cis2 r2 | 
  s1 | s | r4 cis8 e fis4 fis8 e | cis2 r4 s | 
}

gauche = \relative c, {
  \partial 8 e8 | 

  %intro
  a cis gis' e a e cis e |
  a, cis gis' e a e cis e |
  a, cis gis' e a e cis e |
  a, cis gis' e fis cis e < cis e,> |

  %Desert night ..
  a cis gis' e a e gis e |
  a, cis gis' e a gis e cis |
  \stemDown a cis gis cis \stemNeutral fis, cis' e, cis' | 
  a cis gis e' \stemDown a, fis' a, cis |

  d fis e gis d fis d a   |
  d f e f d e f d |
  cis a gis' e a e cis e |
  a, cis gis' e fis cis e < cis e,> |

  %Watch in a ..
  a cis e gis a e a e |
  a, cis e gis a gis e cis |
  a cis gis cis \stemNeutral fis, cis' e, cis' | 
  a cis gis e' \stemDown a, cis a cis |

  d fis cis gis' d fis d a' |
  d, f e f d e f d |
  cis a gis' e a e cis e |
  a, cis gis' e fis cis e < cis e,> |



  %verse 2
  a cis gis' e a e gis e |
  \stemDown a, cis gis' e a gis e cis  |
  a cis gis' e a e cis e |
  a, cis gis' e fis cis a cis |

  a cis gis e' a, fis' cis e |
  
}%end gauche
 
words = \lyricmode {
  De -- sert night, a wa -- ning cre -- scent, and our time, in the
  air just fin -- ally cool e -- nough to sail our souls out -- side,
  watch in a star -- less sky as we con -- spire to tell the world the lie
  that we ne -- ver called this love though not for lack of trying. 
  You grant your -- self a kiss of mine 'cause I'm the
  on -- ly one who gives it right.

  To -- mor -- row the de -- pu -- ty, read -- ing you your vows will say
  has -- sta que la muer -- te no se -- pa -- ra -- ting now and the
  man who takes your hand and offers you a wed -- ding band will have a 
  clean -- er shirt than me and far fi -- ner pants.
  O well Le -- o he may kiss the bride but the
  way he'll do it won't look right to me.
}
\score {<<

  \new Staff \with {
    instrumentName = #"Tenor"
	shortInstrumentName = #"T."
  }{
    \clef "treble_8"
	\key a \major
	\time 4/4
    \new Voice = "tenor" { \droit }
  }
  \new Lyrics \lyricsto "tenor" {
    \words
  }

  \new PianoStaff \with {
    instrumentName = #"Piano"
	shortInstrumentName = #"Pno."
  }<<
    \new Staff = "up" {
      \clef "treble"
      \key a \major
	  \time 4/4
	  <<{
	    \droit
      }{
	    \partial 8 s8 | s1 | s1 | s1 | s1 |
	    s1 | s2 \change Staff = "down" \voiceOne s2 | 
		s4 \change Staff = "up" \oneVoice s2. | s2. \change Staff = "down" \voiceOne s4 |
		s1 | s1 | s4 \change Staff = "up" \oneVoice s2. | s1 |
		s1 | \change Staff = "down" \voiceOne s1 | s4. \change Staff = "up" \oneVoice s8 s2 | 
		  s2. \change Staff = "down" \voiceOne s4 |
		s1 | s1 | \change Staff = "up" \oneVoice s1 | s2 \change Staff = "down" \voiceOne
	  }{
	    \riff
	  }>>
	}
	\new Staff = "down" {
	  \clef "bass"
      \key a \major
	  \time 4/4
      \gauche
	}
  >>
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
\header {
  title = "Weddingringo"
  subtitle = ""
  composer = "Z. V. Pine"
  tagline = ""
}%end header
