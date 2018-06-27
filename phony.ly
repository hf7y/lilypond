\version "2.19.80"
%Score for phony
%Started Sun Apr  1 15:34:16 EDT 2018
\header {
  title = "phony"
  subtitle = ""
  composer = "Z. V. Pine"
  tagline = ""
}%end header

sopranoMusic = \relative c'' {
  \time 4/4
  c1~ | c~  | \bar "||"

  \repeat unfold 2 {
    c~  | c~  |
    c~  | c~  |
    c | des~  |
    des~  | des |
  }

  \repeat unfold 2 {
    c~  | c~  |
    c~  | c~  |
    c | des  |
    des | c |
  } \bar "||"
}

altoMusic = \relative c'' {
  s1  | s |

  s | s |
  s | s |
  s | s |
  s | s2 ges~ |

  ges f~ | f ges~ |
  ges aes~  | aes1~ |
  aes~  | aes~  |
  aes~  | aes2 ges~ |

  \repeat unfold 2 {
    ges f~ | f ges~ |
    ges aes~  | aes1~ |
    aes~  | aes~  |
    aes~  | aes |
  }
}

tenorMusic = \relative c' {
  des1~  | des~ |
  
  \repeat unfold 2 {
    des~  | des~ |
    des~  | des~ |
    des | c~  |
    c~  | c |
  }

  \repeat unfold 2 {
    des~  | des~ |
    des~  | des~ |
    des | c |
    des | c |
  }
}

bassMusic = \relative c {
  d1\rest  | d1\rest |
  
  \repeat unfold 2 { 
    ges | f |
    ges | f |
    ges | aes~  |
    aes~  | aes |
  }

  \repeat unfold 2 {
    ges | f |
    ges | f |
    ges | aes |
    bes~  | bes |
  }

}
subBassMusic = \relative c, {
  R1 | R1 |
  
  \repeat unfold 2 {
    \repeat unfold 8 {
      R1 
    }
  }

  \repeat unfold 8 {
    es~ 
  }

  \repeat unfold 8 {
    bes~ 
  }
}

trebleMusicII = \relative c' {
  \override Stem.length = #0
  \autoBeamOff \omit Flag
  \tiny
  des8 es f ges as bes c des | 
  s1  |
  c,8 d e ges as bes c d |
  s1  |
  des,8 es f ges as bes c des | 
  s1  |
  c,8 d e ges as bes c d |
  s1  |
  des,8 es f g as bes c des | 
  s1  |
  des,8 es fes fis g a bes c | 
  s1  |
  des,8 es f g a b des es |
  s1 | s1 | s1 \bar "||"
  \normalsize
  \revert Stem.length
  \autoBeamOn
}

bassMusicII = \relative c' {
  ges1~ | ges  |
  e~  | e |
  es?~ | es  |
  d~  | d |
  des?~  | des |
  c~  | c |
  b~  | b |
  g~  | g2
}

sopranoMusicIII = \relative c'''' {
  \ottava #1
  c
}
altoMusicIII = \relative c''' {
  \ottava #1
  des
}
bassMusicIII = \relative c {
  ges2~ |
  ges f~ | f ges |
}

subBassMusicIII = \relative c, {
  R1  | ges~ |
  ges  | f |
}

%{ \score {<<
  \new Staff = "s" \with { 
    instrumentName = #"Soprano"
	  shortInstrumentName = #"S"
  }{
    \clef "treble"
    \sopranoMusic
  }
  \new Staff = "a" \with { 
    instrumentName = #"Alto"
	  shortInstrumentName = #"A"
  }{
    \clef "alto"
    \altoMusic
  }
  \new Staff = "t" \with { 
    instrumentName = #"Tenor"
	  shortInstrumentName = #"T"
  }{
    \clef "treble_8"
    \tenorMusic
  }
  \new Staff = "b" \with { 
    instrumentName = #"Bass"
	  shortInstrumentName = #"T"
  }{
    \clef "bass"
    \bassMusic
  }
>>}%end score
%}

\score {
  \new PianoStaff <<
    \new Staff = "up" {
      \key des \major
      \clef "treble"
      <<
        \new Voice = "s" {
          \voiceOne
          \sopranoMusic
          \trebleMusicII
          \sopranoMusicIII
        }
        \new Voice = "a" {
          \voiceTwo
          \altoMusic
          s1 * 16
          \altoMusicIII
        }
      >>
    }
    \new Staff = "down" {
      \clef "bass"
      \key des \major
      <<
        \new Voice = "t" {
          \voiceOne
          \tenorMusic
        }
        \new Voice = "b" {
          \voiceTwo
          \bassMusic
        }
      >>
      \bassMusicII
      \bassMusicIII
    }
    \new Staff = "pedal" <<
      \clef "bass_8" {
        \new Voice = "sb" {
          \subBassMusic
          R1 * 14
          \subBassMusicIII
        }
      }
    >>
  >>
}

\paper {
  #(set-paper-size "quarto")
}%end paper
\layout {
  \context {
    \Score
	proportionalNotationDuration = #(ly:make-moment 1/5)
	\override Score.SpacingSpanner.strict-note-spacing = ##t
  }
}%end layout
