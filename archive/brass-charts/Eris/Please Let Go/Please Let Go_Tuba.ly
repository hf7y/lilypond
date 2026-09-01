\version "2.24.1"

% \include "../Global.ly"

pleaseLetGo-tuba = {
  \autoLineBreaksOff
  \relative c {
    \mark #1
    \repeat volta 2 {
      \bar ".|:"
      \lineNote "tubas start"
      g4. 8 d4 f
    }
    \repeat volta 2 { 
      \lineNote "mids enter, reeds join"
      \repeat percent 4 { g4. 8 d4 f }
      \repeat percent 4 { d4. 8 a4 c }
    } \break 
    \mark #2
    \lineNote "trumpets enter"
    \repeat volta 2 {
      \repeat percent 4 { g'8. c,8. d8 bes4 a | }
      \repeat percent 2 { a'2 f2 | d1 |}
    } \break
    \cueBox "A, then Drum Break"
    \mark #3
    \lineNote "mids start, tubas join"
    \new CueVoice \relative c' {
      \repeat volta 2 {
        g4:16 r8 g16 16 g16 g8. g4 |
        \alternative {
          { f4:16 r8 f16 16 f16 f8. a4 | }
          { f4:16 r8 e16 16 e16 e8. d4 | }
        }
      }
    }
    \repeat volta 2 {
      r4. g16 16 8 d8 8 f8 |
      r4. f16 16 8 c8 8 e8 |
    }
  }
}