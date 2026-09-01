\version "2.24.3"
\include "Global.ily"
% \include "book-titling.ily"

give_up_the_stump-title-markup = \header {
  title = "Give Up the Stump"
  composer = "Parliament"

  tagline="zvp25"
  enteredby = "zvp"
  pdftitle = "Give Up the Stump"
}

give_up_the_stump-Melody = \relative c {
  \repeat segno 2 {
    % "Ow, we want the funk"
    \tag #'letter { \break }
    \mark #1
    % \override Score.VoltaBracketSpanner.extra-offset = #'(0 . -5)
    % \override Score.VoltaBracketSpanner.Y-offset = #-3
    \override Score.VoltaBracketSpanner.padding = #0
    \repeat volta 2 {
      e4 r r16 g a8 \grace { dis16 } e8 a,16 g~ |
      g4 r4 r4 f4 |
      e4 r r16 g a8 \grace { dis16 } e8 a,16 g~ |
      \alternative {
        { g4 r4 r4 f4 | }
        { 
          g4\repeatTie r4 r4\fine \grace { dis'16 } e8 d16 c~ |}
      }
    }
    \tag #'score { \break }

    % "La la la la la"
    \tag #'letter { \break }

    \once \override Score.RehearsalMark.extra-offset = #'(0 . -2.6)
    \override Score.RehearsalMark.layer = #10000

    \mark #2
    \repeat volta 2 {
      c4 r4 r2 |
      g4 a bes d |
      bes a g2~ |
      \alternative { 
        \volta 1 { 
          g2 r4 \grace { dis'16 } e8 d16 
          \repeatTieForward c\repeatTie | }
        \volta 2 { 
          r2 r8 g g a | }
      }
    }

    % "You've got a real type of thing"
    \tag #'letter { \break }
    \repeat volta 2 {
      \once \override Score.RehearsalMark.extra-offset = #'(0 . -1.6)
      \mark #3
      c4 a8 e g4 g8 e |
      g4 16 a8 es16~ 16 d c8 c c |
      e!8 g g a es8 d c16 d8 c16~ |
      \alternative {
        { c2 r8 g' g a | }
        { 
          c,2\repeatTie r4 f | }
      }
    }
  \bar "||"
  }
}

give_up_the_stump-Accompaniment = \relative c {
  \repeat segno 2 {
    % "We want the funk"
    \tag #'letter { \break }
    \mark #1
    \repeat volta 2 {
      c4 bes8 a16 bes r2 |
      r8 c bes a16 bes r4 g |
      c4 bes8 a16 bes r2 |
      \alternative {
        { r16 c c c bes8 a-. bes4-. r4 |}
        { r16 c c c bes8 a-. bes4-.\fine \grace { s16 } r4 |}
      }
    }
    \tag #'score { \break }

    % "La la la la la"
    \tag #'letter { \break }
    \mark #2
    \repeat volta 2 {
      r8 c, e g c8. bes16 r4 |
      bes4 a g f |
      e f es2~\startTrillSpan |
      \alternative { 
        { es2 r2\stopTrillSpan | }
        { r2 r8 g g a | }
      }
    }

    % "You've got a real type of thing"
    \tag #'letter { \break }
    \repeat volta 2 {
      \mark #3
      c4 a8 e g4 g8 e |
      g4 16 a8 es16~ 16 d c8 c c |
      e!8 g g a es8 d c16 d8 c16~ |
      \alternative {
        { c2 r8 g g a | }
        { c2\repeatTie r4 g' | }
      }
    }
  \bar "||"
  }
}

give_up_the_stump-Bass = \relative c {
  \repeat segno 2 {
    % "We want the funk"
    \tag #'letter { \break }
    \mark #1
    \repeat volta 2 {
      c4 r16 g' a8 bes4 r4 |
      c8 c bes a16 bes16 r4 \grace { dis,16 } e4 |
      c4 r16 g' a8 bes4 r4 |
      \alternative {
        { c8 c bes a bes4 \grace { dis,16 } e4 | |}
        { c'8 c bes a bes4\fine \grace { s16 } b!4 |}
      }
    }
    \tag #'score { \break }

    % "La la la la la"
    \tag #'letter { \break }
    \mark #2
    \repeat volta 2 {
      c4 r4 a8. g16 r4 | 
      e4 f g bes |
      c4 r16 g a8 bes4 r4 |
      \alternative { 
        { c8 c bes a bes4 r4 | }
        { c8 c bes a bes4 r4 | }
      }
    }

    % "You've got a real type of thing"
    \tag #'letter { \break }
    \repeat volta 2 {
      \mark #3
      c4 c16 a g c r4 r8 g16 a |
      c8 8 c16 a g c r4 r8 g16 a |
      bes4 r8 g16 a bes4 b! |
      \alternative {
        { c8 8 c16 a g c r4 r8 g16 a | }
        { c8 8 c16 a g c r4 \grace { dis,16 } e4 | }
      }
    }
  \bar "||"
  }
}



\book {
    \give_up_the_stump-title-markup
\score { 
  <<
    \new Staff {
      \clef treble
      \key c \major
      \removeWithTag #'(letter score)
      \transpose c c' \give_up_the_stump-Melody
    }
    \new Staff {
      \clef bass
      \key bes \major
      \removeWithTag #'(letter score)
      \transpose c bes \give_up_the_stump-Accompaniment
    }
    \new Staff {
      \clef bass
      \key bes \major
      \removeWithTag #'(letter score)
      \transpose c'' bes \give_up_the_stump-Bass
    }
  >>
}
}