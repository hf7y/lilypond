%summer.ly
%Created on 09 12, 2019 at 06:05

\version "2.19.83"
\include "./z/staff.ily"
\include "./z/note.ily"
\include "./z/square-hollow.ily"
\include "./z/half-harmonic.ily"

\header {
  title = "Summer Sleep"
  subtitle = ""
  composer = "Z.V. Pine"
  poet = "Miguel V.V."
  tagline = ""
}
timecodeOne = {
  \time 5/4
  s1 s4 |  %m1
  s1 s4 |  %m2
  \time 4/4
  s1 | %m3
  \time 3/4
  s2. | %m4
  s2. | %m5
  s2. | %m6
  s2. | %m7
  \time 5/4 
  s1 s4 | %m8
  s1 s4 | %m9
  \time 4/4
  s1 | %m10
  \time 3/4 
  s2. | %m11
  s2. | %m12
  s2. | %m13
  s2. | %m14
  \time 5/4
  s1 s4 | %m15
  \time 4/4
  s1 | %m16
  s1 | %m17
}
timecodeTwo = {
  s1 | %m18
  s1 | %m19
  \time 3/4
  s2. | %m20
  \time 2/4
  s2 | %m21
  \time 4/4
  s1 | %m22
  s1 | %m23
  \time 5/4
  s1 s4 | %m24
  \time 4/4
  s1 | %m25
  \time 5/4
  s1 s4 | %m26
  \time 4/4
  s1 | %m27
  s1 | %m28
}
sopranoOne = \relative c'' {
  \autoBeamOff
  \half-harmonic {
    %\time 5/4
    b8 \square a a r8 r2. | %m1
    b8 \square a r4 \square a8 r r4. c8 | %m2
    %\time 4/4
    b16 \square b8.~ \square b2.~ | %m3
    %\time 3/4
    \square b2. | %m4
    \tuplet 3/2 \square { b8 a8 r} r4 r8 c8 | %m5
    r4 \square a8 a8 r8 \square a | %m6
    r8 \square a8 r8 \square c^"in." r8 c^"ord." | %m7
    %\time 5/4
    \tuplet 3/2 { b8 r8 \square e,8 } e4 r2. | %m8
    r4 \square a2 a8 r8 r4 | %m9
    %\time 4/4
    \square { \tuplet 3/2 { b8 a r} a } r r c^"in." r c^"ord." | %m10
    %\time 3/4 
    r8 c r4 r8 c | %m11
    b8 a fis \square fis r4 | %m12
    r8 \square c'^"in." r8 \square c^"in." r8 c^"ord." | %m13
    r8 b8 \square b2 | %m14
    %\time 5/4
    \square { b8 b } r2 r4. c8 | %m15
    %\time 4/4
    b16 \square a8. r8 \square { fis~ 8 } r8 r eis | %m16
    gis16 \square gis r8 r2. | %m17
  }
}
sopranoTwo = \relative c'' {
  \autoBeamOff
  \half-harmonic {
    r8 \square { a r a r a^"in." } r a^"ord." | %m18
    \square gis8 fis16 \square 16 \tuplet 3/2 { r4 8 } r8 16. \square 32 16 r8. | %m19
    %\time 3/4
    r8 a r8 \square { 8 r16 8.^"in." } | %m20
    %\time 2/4
    gis8 \square 16 r16 \tuplet 5/4 \square {16 16 r gis16 r } %21
    %\time 4/4
    r8 \square { cis,16 r r8 16 r } \tuplet 5/4 { r4 r4 a'8 } | %m22
    \tuplet 3/2 \square {r16 gis gis} gis8 fis16 \square 16 r8 
      r \square 8^"in." r \square gis8^"in." | %23
    %\time 5/4
    r8 \square {gis^"ord." 16 16 r gis16} 
      r16 gis8. \square fis8~ fis \square 16 r8. | %m24
    %\time 4/4
    \tuplet 5/4 \square {gis16 r gis16 16 r} \square gis8 r gis^"in." r8
      \tuplet 7/4 \square {gis16^"ord." 16 r gis16 16 16 r} | %m25
    %\time 5/4
    \square gis1 r4 | %m26
    %\time 4/4
    fis1 | %m27
    fis16 r8. r2. | %m28
  }
}
sopranoThree = {}
wordsOne = \lyricmode {
  Sum -- mer sleep
  sum -- mer sleep I 
  mi -- [s]
  __
  um -- mer I
  [s] -- leep [p]
  [p] I I
  missed the dawn
  [s] -- leep
  sum -- mer sleep I __ \skip 1
  my __ \skip 1 ti -- red eye -- [s]
  I __ \skip 1 \skip 1 mi [s] __ 
  \skip 1 [d] my
  ti -- red eyes too 
  hea -- vy
}
wordsTwo = \lyricmode {
  [m] I __ \skip 1 \skip 1 
  [s] -- um -- mer [ə] __ \skip 1 [s] [l] 
  I __ \skip 1 \skip 1 [m] [ɪ] [s] __ \skip 1 [d]
  [th] [d] my
  [t] __ \skip 1 ti [ə] __ \skip 1 \skip 1 [s]
  [s] __ \skip 1 \skip 1 [ə] __ \skip 1 [m] [ə] 
  [s] __ \skip 1 \skip 1 \skip 1 [ə] [s] __ \skip 1 \skip 1 \skip 1 \skip 1
  [s]
  [m]
  [ə] 
}
wordsThree = \lyricmode {}
tenorOne = \relative c' {
  %\time 5/4
  r4 \square a1~ | 
  \square a2 r2. |
  %\time 4/4
  \square gis1~ | %m3
  %\time 3/4
  \square gis2 r4 | %m4
  r8 \square {a-. r a-. } r \half-harmonic a-. |
  r \square a8^"in."~ \square a2~ |
  \square a2. |
  %\time 5/4
  \square gis2^"ord."~ \square gis2. |
  \half-harmonic { c8-. r c-. r c-. r } r8 \square a-. r8 \square a~ | %m9
  %\time 4/4
  \square a8 r8 r4 r4. \square a8^"in."~ |
  %\time 3/4
  \square a2. |
  \square a2.^"ord."~ |
  \square a8 r8 r8 a^"in." r4 |
  \square gis2.~ |
  %\time 5/4
  gis8 r8 r1 |
  r1 |
  r2 \square b2\<~
}
tenorTwo = {
  \square b16\! r8. r4 r4 r8 \square fis^"in." |
  \square fis8^"ord." r8 r2 r8 \square fis-.^"in." |
  r8 \square fis-.^"ord." r2 |
  %\time 2/4
  r2 |
  %\time 4/4
  r2 \tuplet 5/4 \square { gis8-. gis-. gis-. a-.^"in." a-.^"in." } |
  \square { r4 \tuplet 3/2 {f8 b bes} 
    \tuplet 5/4 { a16 gis g fis f } \tuplet 7/4 \headless { f16[^"clicks" a r g f a r] }} |
  %\time 5/4
    s1 s4 | s1 |
    s1 s4 | s1 | s1 |
}
tenorThree = {

}

pianoThree = << 
  \tempo "Sehr langsam"
  \new Voice {
    \change Staff = "up"
    \relative c' {
      \stemUp 
      fis2.^(_\markup { \null \lower #2 \dynamic "ppppp" }
        \change Staff = "down" 
        gis,4) |
      \change Staff = "up" 
      c2. \grace {des16[( c])} b8^>-.( c^>-.) |
      des1^^^( |
      \change Staff = "down"
      <g, des bes>8)
        \change Staff = "up"
        r8 r4 r2\fermata | 
    }
  }
  \new Voice {
    \voiceOne
    \change Staff = "down"
    \relative c' {
      <b fis>2. s4 |
      <d, f!>2 <d e!>4 d4\rest |
      <des aes'>1
      s1 |
    }
  }
  \new Voice {
    \voiceTwo
    \change Staff = "down"
    \relative c {
      < d gis, d>2.\sustainOn r4 |
      <aes f! aes,>2 <aes e! aes,>4 s4 |
      \repeat tremolo 16 { fes,64 fes'64 }
        \repeat tremolo 16 { fes,64 fes'64 } |
        \repeat tremolo 24 { fes,64^\markup {\halign #-1.5 \italic \bold perdendo}
          fes'64  }
      <fes, fes'>8
          \oneVoice r8\fermata
    }
  }
>>
pianoFour = <<
  \break
  \bar ".|:"
  \tempo "Sehr mäßig beginnend"
  \key c \minor
  \new Voice {
    \change Staff = "up"
    \stemUp
    \relative c''' {
      \time 5/8
      g8_\markup { \dynamic "pppp-ppppp-pppppp" }
        bes[ g,] bes[ g'] |
      \time 4/4
      c2. c,8 bes'8^~ |
      bes2 bes,8[ g'] bes g, |
      c2. d8 bes'8^~ |
      bes4. g8 bes,[ g] <des' bes'> <b! g'> |
      c2. c'8 bes,^~ | 
      bes8 g'4.^~ g8[ g,] fis' aes^~ |
      aes8 aes,4.^~ aes8[ g'] fis,[ aes]^~ |
      \time 3/8
      aes8 aes'4 |
      \bar ":|."
    }
  }
  \new Voice {
    \change Staff = "down"
    \relative c {
      r8 d[ bes']
        \change Staff = "up"
        \voiceTwo
        <b f'> <d bes'> |
      r8 g16 e aes[ g, e' g]
        \tuplet 3/2 {a,8[ a\rest g] } r4 |
      r16 des''[ g, d] \tuplet 3/2 { aes8 d g!}
        \tuplet 3/2 { f[ a,8\rest 
          \change Staff = "down" 
          \voiceOne 
          d,] }
        r8. c'16 |
      \tuplet 3/2 { f,8 des aes }
        \change Staff = "up"
        \voiceTwo
        bes''16[ f 
        \change Staff = "down" 
        \voiceOne  
        b,! g]
        r8. e16 r4 |
      r4 d16 
        \change Staff = "up" 
        \voiceTwo 
        fis'8.
        \change Staff = "down"
        \voiceOne
        \tuplet 3/2 {f,8[ r8 b~]}
        \tuplet 3/2 {b8[ <g f'>8 d] }

      r8 g16 e aes[ g, e' g]
        \tuplet 3/2 {
          \change Staff = "up" 
          \voiceTwo
          a'8[ a8\rest g] } r4 |
      \change Staff = "down"
      \voiceOne
      r16 des[ g, d] \tuplet 3/2 { aes8 d g!}
        \tuplet 3/2 { f'[ a,8\rest d,] }
        \change Staff = "up"
        \voiceTwo
        r8. c''16 |
      \tuplet 3/2 { f,8 des aes }
        bes16[ 
        \change Staff = "down" 
        \voiceOne  
        f b,! g]
        r8. e'16 r4 |
      d4\rest d16 
        \change Staff = "up" 
        \voiceTwo 
        fis'16
        \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
        \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
        \mark "Repeat until J: \"that song...\""
    }
  }
  \new Voice {
    \change Staff = "down"
    \key c \minor
    \voiceTwo
    \relative c, {
      s2 s8 |
      c1 | 
      g'1 |
      r4 f2. |
      g1 |
      c,1 |
      g'1 |
      r4 f2. |
      s4. |
    }
  }
>>

timecode = {
  \timecodeOne
  \timecodeTwo
  \break
}
soprano = {
  \sopranoOne
  \sopranoTwo
}
words = {
  \wordsOne
  \wordsTwo

}
tenor = {
  \tenorOne
  \tenorTwo
}
piano = {
  \pianoThree
  \pianoFour
}
global = {
  \tempo 4 = 54
  \key c \major
}

\score {
  \layout {
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 1/16)
      \override Score.ScoreSpacingSpanner.strict-note-spacing = ##t
    }
    \context {
      \Staff
      \numericTimeSignature
    }
  }
  \pointAndClickOff
  <<
    \new Staff {
      \set Staff.vocalName = \markup \smallCaps Juliet
      \set Staff.shortVocalName = \markup \smallCaps J.
      \clef "treble"
      \global
      \new Voice = "soprano" << \timecode \soprano >>
      \pageBreak
    }
    \new Lyrics \lyricsto "soprano" { \words }

    \new Staff {
      \set Staff.vocalName = \markup \smallCaps Romeo
      \set Staff.shortVocalName = \markup \smallCaps R.
      \clef "bass"
      \global
      \new Voice = "tenor" << \timecode \tenor >> 
    }
  >>
}

\score {
  \layout {
    indent = 0.2 \in
    \context {
      \Score
      %proportionalNotationDuration = #(ly:make-moment 1/16)
      %\override Score.ScoreSpacingSpanner.strict-note-spacing = ##t
    }
    \context {
      \Staff
      \numericTimeSignature
    }
  }
  \pointAndClickOff
  <<
    \new Staff {
      %\set Staff.vocalName = \markup \smallCaps Juliet
      %\set Staff.shortVocalName = \markup \smallCaps J.
      \clef "treble"
      \new Voice = "soprano" \no-line {
        \relative c' {
          \time 2/2
          \tempo "Liberamente" 2=52
          \stemUp
          \partial 4 e4
          b'4 e, g r4 |
        }
      }
    }
    \new Lyrics \lyricsto "soprano" { 
      A date in bed
    }
    \new Staff {
      \omit Staff.Clef
      \omit Staff.TimeSignature
      \stopStaff
      s_"40 s"
    }
  >>
}
\score {
  \layout {
    indent = 6.3\in
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 1/12)
      \override Score.ScoreSpacingSpanner.strict-note-spacing = ##t
    }
    \context {
      \Staff
      \numericTimeSignature
    }
  }
  \pointAndClickOff
  <<
    \new Staff {
      %\set Staff.vocalName = \markup \smallCaps Romeo
      %\set Staff.shortVocalName = \markup \smallCaps R.
      \clef "bass"
      \new Voice = "tenor" \no-line {
        \relative c' {
          \tempo "Un poco agitato" 4 = 76 
          \autoBeamOff
          \stemDown
          g8 g16 e g4-. r4
        }
      }
    }
    \new Lyrics \lyricsto "tenor" {
      Todo ter -- mi -- nó
    }
    \new Staff {
      \omit Staff.Clef
      \omit Staff.TimeSignature
      \stopStaff
      s_"33 s"
    }
  >>
}
\score {
  \layout {
    indent = 0.2 \in
    \context {
      \Score

      %proportionalNotationDuration = #(ly:make-moment 1/16)
      %\override Score.ScoreSpacingSpanner.strict-note-spacing = ##t
    }
    \context {
      \Staff
      \numericTimeSignature
    }
  }
  \pointAndClickOff
  <<
    \new Staff {
      %\set Staff.vocalName = \markup \smallCaps Juliet
      %\set Staff.shortVocalName = \markup \smallCaps J.
      \clef "treble"
      \new Voice = "soprano" \no-line {
        \relative c'' {
          \autoBeamOff
          \stemUp
          \time 4/4
          \tempo "Leggiero" 4 = 66
          a4 a8 g16 f a8 a r4
        }
      }
    }
    \new Lyrics \lyricsto "soprano" {
      Clothed only in a white sheet 
    }
    \new Staff {
      \omit Staff.Clef
      \omit Staff.TimeSignature
      \stopStaff
      s_"27 s"
    }
  >>
}
\score {
  \layout {
    indent = 5.6 \in
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 1/12)
      \override Score.ScoreSpacingSpanner.strict-note-spacing = ##t
    }
    \context {
      \Staff
      \numericTimeSignature
    }
  }
  \pointAndClickOff
  <<
    \new Staff {
      %\set Staff.vocalName = \markup \smallCaps Romeo
      %\set Staff.shortVocalName = \markup \smallCaps R.
      \clef "bass"
      \new Voice = "tenor" \no-line {
        \relative c' {
          \tempo "Nobilmente non doloroso" 4 = 60
          \time 2/4
          \autoBeamOff
          \stemDown
          g4 f8 e |
          g8 e r4 | 
        }
      }
    }
    \new Lyrics \lyricsto "tenor" {
      Nos en -- con -- tra -- ron
    }
    \new Staff {
      \omit Staff.Clef
      \omit Staff.TimeSignature
      \stopStaff
      s_"22 s"
    }
  >>
}
\score {
  \layout {
    indent = 0.2 \in
    \context {
      \Score
      %proportionalNotationDuration = #(ly:make-moment 1/16)
      %\override Score.ScoreSpacingSpanner.strict-note-spacing = ##t
    }
    \context {
      \Staff
      \numericTimeSignature
    }
  }
  \pointAndClickOff
  <<
    \new Staff {
      %\set Staff.vocalName = \markup \smallCaps Juliet
      %\set Staff.shortVocalName = \markup \smallCaps J.
      \clef "treble"
      \new Voice = "soprano" \no-line {
        \relative c' {
          \autoBeamOff
          \stemUp
          \time 4/4
          \tempo "Teneramente" 4 = 72
          \partial 16 e16 |
          g8 g g8 f16 e g4 r8
        }
      }
    }
    \new Lyrics \lyricsto "soprano" {
      Your fuzzy thighs hop to the spinnet 
    }
  >>
}
\score {
  \layout {
    indent = 0.2 \in
    \context {
      \Score
      %proportionalNotationDuration = #(ly:make-moment 1/16)
      %\override Score.ScoreSpacingSpanner.strict-note-spacing = ##t
    }
    \context {
      \Staff
      \numericTimeSignature
    }
  }
  \pointAndClickOff
  <<
    \new Staff {
      %\set Staff.vocalName = \markup \smallCaps Juliet
      %\set Staff.shortVocalName = \markup \smallCaps J.
      \clef "treble"
      \new Voice \no-line {
        \relative c'' {
          \autoBeamOff
          \stemUp
          \time 3/4
          \partial 8 g8 |
          f8 e16 d f4 r4 |
        }
        \addlyrics {
          Two drags on the cigarrette
        }
      }
    }
  >>
}
\score {
  \layout {
    indent = 0.2 \in
    \context {
      \Score
      %proportionalNotationDuration = #(ly:make-moment 1/16)
      %\override Score.ScoreSpacingSpanner.strict-note-spacing = ##t
    }
    \context {
      \Staff
      \numericTimeSignature
    }
  }
  \pointAndClickOff
  <<
    \new Staff {
      %\set Staff.vocalName = \markup \smallCaps Juliet
      %\set Staff.shortVocalName = \markup \smallCaps J.
      \clef "treble"
      \new Voice = "soprano" \no-line {
        \relative c'' {
          \autoBeamOff
          \stemUp
          \time 3/4
          r2 r8 g8 | f4 r2 |
          \pageBreak
        }
      }
    }
    \new Lyrics \lyricsto "soprano" {
      That song...
    }
    \new Staff {
      \omit Staff.Clef
      \omit Staff.TimeSignature
      \stopStaff
      s_"Now"
    }
  >>
}

\markup { \null \lower #5 \huge "Begin during J: \"A date in bed\"" }
\score {
  \layout {
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 1/14)
      \override Score.ScoreSpacingSpanner.strict-note-spacing = ##t
    }
    \context {
      \Staff
      \numericTimeSignature
    }
  }
  <<
    \new PianoStaff \with {
      instrumentName = #"Piano"
      shortInstrumentName = ""
      \RemoveEmptyStaves
    }<<
      \new Staff = "up" {
        \clef "treble"
        \piano
        \pageBreak
      }
      \new Staff = "down" {
        \clef "bass"
      }
    >>
  >>
}

\score {
  \layout {
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 1/14)
      \override Score.ScoreSpacingSpanner.strict-note-spacing = ##t
    }
    \context {
      \Staff
      \numericTimeSignature
    }
  }
  \pointAndClickOff

  <<
    \new Staff {
      \set Staff.vocalName = \markup \smallCaps Juliet
      \set Staff.shortVocalName = \markup \smallCaps J.
      \clef "treble"
      \new Voice = "juliet" {
        \relative c'' {
          \autoBeamOff
          \key g \major
          r4 b8 d b8[ a] a16 b8. |
          a4 g r2 |
          r4 a8 g g4 g8 e16 d~ |
          d4 r2. |

          r4 b'8 d b8 a a b16 a^(~ |
          a4 g) r2 |
          r4 a8 g g8 g16 g16 r16 e8 d16~ |
          d4 r2. |

          r4 b'8 d16 b16 r16 a8 a16 r8 a16 b |
          g4 r2. |
          r4 a8 g g g16 g16 r8 e16 e  |
          d4 r2. |

          r4 b'8 d b8 a a b16 a~ |
          a4 g r2 |
          r4 c8 c16 c16 r8 c8 d16 d8 d16^(~ |
          d16[ cis] d4.) r2 |
        }
      }
    }
    \new Lyrics \lyricsto "juliet" {
      Si je pars __ d'i -- ci de -- main,
      tu vas me sou -- ve -- nir?
      Tous ces beaux en -- droits à voir __
      c'est pour -- quoi je dois m'en -- fuir.

      Si je suis re -- sté a -- vec toi
      les cho -- ses se -- raient plus le même.
      Je me sens libre comme un oi -- seau
      cet oi -- seau peut pas chan -- ger __
    }
    \new Staff {
      \set Staff.vocalName = \markup \smallCaps Romeo
      \set Staff.shortVocalName = \markup \smallCaps R.
      \clef "treble_8"
      \new Voice = "tenor" \relative c' {
        \autoBeamOff
        g8 c c-> r8 r8 c c-> r |
        g4-. c8-> c r8 c c8-> b16 b |
        b16 g r8 c8-> c r c b b |
        a16 g r8 c8-> c r c c-> c |
        
        g4-. r4 g4-. c8-> c |
        g4-. c8-> c g c c-> c |
        g4-. c8-> c g4-. c8-> r8 |
        g8 c c8-> c \tuplet 3/2 {a16 a a } c16 c r8 c |
        \tuplet 3/2 { g8 g g } \tuplet 3/2 { c-> g r8 } a c c-> c |
        c-> r8 r8 c c-> c r8 c |
        \tuplet 3/2 { g16 g g } a16 g r8 c a c c-> c |
        c-> r8 r8 c c-> r8 r4 |
        b8 r8 b8 r \tuplet 3/2 { b8 b b } \tuplet 3/2 { b b b } | 
        g8 r8 c-> r8 r8 c r8 c |
        g8 r8 c-> r8 r4 c8-> r |
        g8 r8 r2. |
      }
    }
    \new Lyrics \lyricsto "tenor" {
      Es -- [s] -- to [s] -- to nun -- ca [s] __ \skip 1 ca
        hu -- bi -- er -- a ca [s] [s] fun -- cion -- a -- do
        ca [s] __ \skip 1 ca
      Es | lo peor que me los pa -- sa -- do [s] pa [s] |
      do pa [s] lo pa | do [s] pa [s] peor que pa -- sa -- do [s]
      Pe -- ro no pue -- do ex -- is -- tir sin ti [s] [ti] [s] __ \skip 1 |
      pe -- ro no pue -- do [s] ex -- is -- tir sin | ti sin ti |
      Vi [vi] __  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 |
      mos y ex [es] -- plo -- ta -- [ta] -- mos


    }

    \new PianoStaff \with {
      instrumentName = #"Piano"
      shortInstrumentName = ""
    }<<
      \new Staff = "up" {
        \clef "treble"
        <<
          \new Voice \relative c'' {
            \voiceOne
            s1 |
            d'4( e2) e16 d b c~ |
            <c f,>2 r8 g8 b16 c8 d16~ |
            <d fis,>2 d16 c a d~ d8 e |

            g2 r2 |
            d4( e2) e16 d b c~ |
            <c f,>2 r8 g8 b16 c8 d16~ |
            <d fis,>2 r2  |

            r1 |
            d4( e2) e16 d b c~ |
            <c f,>2 r8 g8 b16 c8 d16~ |
            <d fis,>2 r4.. g16~ |

            g2 fis4.. g16 |
            g16 fis e4. r4 e16 d b c~ |
            <c f,>2 r8 g b16 c8 d16~ |
            <d fis,>2 r2 |
          }
      >>
      }
      \new Staff = "down" {
        \clef "bass"
        s1 * 16
      }
    >>
  >>
}
\paper {
  #(set! paper-alist (cons '("ipad pro" . (cons ( * 220 mm) ( * 305 mm))) paper-alist))
  #(set! paper-alist (cons '("montalvo" . (cons ( * 11  in) ( * 14  in))) paper-alist))
  #(set-paper-size "montalvo")
  
  indent = 0.7\in

  top-margin = 1.0\in
  left-margin = 1.0\in
  right-margin = 1.0\in
  bottom-margin = 1.0\in

  markup-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 1 ))

  system-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 10))
}
