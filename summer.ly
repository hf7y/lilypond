%summer.ly
%Created on 09 12, 2019 at 06:05

\version "2.19.83"
\include "./z/note.ily"
\include "./z/square-hollow.ily"
\include "./z/half-harmonic.ily"


square-trumpet = #(define-music-function (music)(ly:music?) #{
  \override NoteHead.stencil = #square-head
  \transpose c ces { $music }
  \revert NoteHead.stencil
#})

sopranoOne = \relative c'' {
  \autoBeamOff
  \half-harmonic {
    \time 5/4
    b8^\markup \italic { il più \dynamic p possibile } \square a a r8 r2. | %m1
    b8 \square a r4 \square a8 r r4. c8 | %m2
    \time 4/4
    b16 \square b8.~ \square b2. | %m3
    \time 3/4
    \square b2. | %m4
    \tuplet 3/2 \square { b8 a8 r} r4 r8 c8 | %m5
    r4 \square a8 a8 r8 \square a | %m6
    r8 \square a8 r8 \square c^"in." r8 c^"ord." | %m7
    \time 5/4 
    \tuplet 3/2 { b8 r8 \square e,8 } e4 r2. | %m8
    r4 \square a2 a8 r8 r4 | %m9
    \time 4/4
    \square { \tuplet 3/2 { b8 a r} a } r r c^"in." r c^"ord." | %m10
    \time 3/4 r8 c r4 r8 c | %m11
    b8 a fis \square fis r4 | %m12
    r8 \square c'^"in." r8 \square c^"in." r8 c^"ord." | %m13
    r8 b8 \square b2 | %m14
    \time 5/4
    \square { b8 b } r2 r4. c8 | %m15
    \time 4/4
    b16 \square a8. r8 \square { fis~ 8 } r8 r eis | %m16
    gis16 \square gis r8 r2. | %m17
  }
}

sopranoTwo = \relative c'' {
  \autoBeamOff
  \half-harmonic {
    r8 \square { a r a r a^"in." } r a^"ord." | %m18
    \square gis8 fis16 \square 16 \tuplet 3/2 { r4 8 } r8 16. \square 32 16 r8. | %m19
    \time 3/4
    r8 a r8 \square { 8 r16 8.^"in." } | %m20
    \time 2/4
    gis8 \square 16 r16 \tuplet 5/4 \square {16 16 r gis16 r } %21
    \time 4/4
    r8 \square { cis,16 r r8 16 r } r4 \tuplet 5/4 { r8. a'8 } | %m22
    \tuplet 3/2 \square {r16 gis gis} gis8 fis16 \square 16 r8 
      r \square 8^"in." r \square gis8^"in." | %23
    \time 5/4
    r8 \square {gis^"ord." 16 16 r gis16} 
      r16 gis8. \square fis8~ fis \square 16 r8. | %m24
    \time 4/4
    \tuplet 5/4 \square {gis16 r gis16 16 r} \square gis8 r gis^"in." r8
      \tuplet 7/4 \square {gis16^"ord." 16 r gis16 16 16 r} | %m25
    \time 5/4
    \square gis1 r4 | %m26
    \time 4/4
    fis1 | %m27
    fis16 r8. r2. | %m28
  }
}

wordsOne = \lyricmode {
  Sum -- mer sleep
  sum -- mer sleep I 
  mi -- [s] __ \skip 1
  um -- mer I
  [s] -- leep [p] __ \skip 1
   I I
  missed the dawn
  [s] -- leep
  sum -- mer sleep I I
  my my ti -- red eye -- [s]
  I I I mi [s] __ \skip 1
  [d] my
  ti -- red eyes too 
  hea -- vy
}
wordsTwo = \lyricmode {
  [m] I I I 
  [s] -- um -- mer [ə] __ \skip 1 [s] [l] 
  I I I [m] [ɪ] [s] __ \skip 1 [d]
  [th] [d] my
  [t] __ \skip 1 ti [ə] __ \skip 1 \skip 1 [s]
  [s] __ \skip 1 \skip 1 [ə] __ \skip 1 [m] [ə] 
  [s] __ \skip 1 \skip 1 \skip 1 [ə] [s] __ \skip 1 \skip 1 \skip 1 \skip 1
  [s]
  [m]
  [ə] 
}

trumpetOne = \relative c' {
  \time 5/4
  r4 \square-trumpet a1_\markup \italic {il più \dynamic p possibile}~ | 
  \square-trumpet a2 r2. |
  \time 4/4
  \square-trumpet gis1~ | %m3
  \time 3/4
  \square-trumpet gis2 r4 | %m4
  r8 \square-trumpet {a-. r a-. } r \half-harmonic a-. | %5
  r \square-trumpet a8^"in."~ \square-trumpet a2~ | %m6
  \square-trumpet a2. | %m7
  \time 5/4
  \square-trumpet gis2^"ord."~ \square-trumpet gis2. | %m8
  \half-harmonic { c8-. r c-. r c-. r } r8 \square-trumpet a-. r8 \square-trumpet a~ | %m9
  \time 4/4
  \square-trumpet a8 r8 r4 r4. \square-trumpet a8^"in."~ | %m10
  \time 3/4
  \square-trumpet a2. | %m11
  \square-trumpet a2.^"ord."~ | %12
  \square-trumpet a8 r8 r8 \square-trumpet a^"in." r4 | %m13
  \square-trumpet gis2.~ | %m14
  \time 5/4
  \square-trumpet gis8 r8 \tuplet 3/2 \clicks { r8[ b a]}
    r8 \square-trumpet gis8^"in." r8 \half-harmonic gis4.^"ord."\<( | %m15
  \square-trumpet gis2)\> r2\! | %m16
  r4 \square-trumpet b2.\<~ | %m17
}
trumpetTwo = {
  \square-trumpet b16\! r8. r4 r4 r8 \square-trumpet fis^"in." | %m18
  \square-trumpet fis8^"ord." r8 \half-harmonic fis'8 r8 r4 r8 \square-trumpet fis-.^"in." | %m19
  r8 \square-trumpet fis-.^"ord." r4 r16 \square-trumpet fis8.^"in." | %m20
  \time 2/4
  \square-trumpet gis8^"ord." r8 \tuplet 3/2 \clicks { r[ a b]} | %m21
  \time 4/4
  \clicks c'4 r4 \tuplet 5/4 \square-trumpet { gis8-.[\< gis-. r8 a-.^"in." a-.^"in."] } |
  \square-trumpet gis2\>
  \tuplet 5/4 \square-trumpet { r16[ g fis r f] } \tuplet 7/4 \clicks { f16[\! a r g f a r] } |
  \time 5/4
  \tuplet 3/2 \clicks { r8[ a g ] } \clicks d'8 r8 \square-trumpet gis2 r8. \clicks gis16
  \square-trumpet gis2.\> r4\! |
  \tuplet 5/4 { r8.[ \clicks d'8] } \tuplet 3/2 \clicks { e'16 c'8 } r8 
  r16 \half-harmonic f'8. \tuplet 5/4 \clicks { r8[ d' a r c'] } |
  \clicks a4 \square-trumpet { fis8^"in." r8 fis2^"ord."~ | 
  << fis1 {s2..\> s8\!}>> | }
}

trumpet = {
  \transpose bes c' {
    \trumpetOne
    \trumpetTwo
  }  
}
words = {
  \wordsOne
  \wordsTwo

}
soprano = {
  \sopranoOne
  \sopranoTwo
}

global = {
  \tempo 4 = 54
  \key c \major
  \override Hairpin.circled-tip = ##t
}

\bookpart {
  \header { 
    title = "Summer Sleep"
    subtitle = \markup { \null \lower #5 "Performance Notes" }}
  \score {
    \header {
      piece = \markup { \null \lower #5 \huge "Soprano"  }
    }
    \layout {
      indent = 0.5\in
      ragged-right = ##t
    }
    <<
      \new Staff {
        \omit Staff.Clef
        \omit Staff.TimeSignature
        \stopStaff
        \autoBeamOff
        \square { f'1 f'2 s4 f'8 f'16 }
        s1 s1_"toneless, little to no larnyx vibration"
      }
      \new Staff {
        \omit Staff.Clef
        \omit Staff.TimeSignature
        \stopStaff
        \autoBeamOff
        \half-harmonic { f'1 s2 f'4 f'8 f'16 } 
        s1 s1_"messa voce"
      }
      \new Staff {
        \omit Staff.Clef
        \omit Staff.TimeSignature
        \stopStaff
        \half-harmonic { s1_\markup { \italic { il più \dynamic p possibile } }
          s2 s4 s8 s16 }
        s1 s1_\markup { \left-column {
          { "always keep volume as quiet as possible" }
          \line {"some room for expression" } } }
      }
      \new Staff {
        \omit Staff.Clef
        \omit Staff.TimeSignature
        \stopStaff
        \half-harmonic { s1_\markup { [s], [ə], [ɪ], etc. }
          s2 s4 s8 s16 }
        s1 s1_\markup { "pronounce phoneme within brackets until change indicated" }
      }
    >>
  } 
  %\markup {
  %  \fill-line {
  %    \hspace #1
  %    \column {
  %      \line { \italic { il più \dynamic p possibile } }
  %    }
  %    \hspace #2
  %    \column {
  %      \line { O sacred feast }
  %    }
  %    \hspace #1
  %  }
  %}
  \score {
    \header {
      piece = \markup \huge { "Trumpet in " \concat { B \flat } }
    }
    \layout {
      indent = 0.5\in
      ragged-right = ##t
    }
    <<
      \new Staff {
        \omit Staff.Clef
        \omit Staff.TimeSignature
        \stopStaff
        \autoBeamOff
        \square { f'1 f'2 s4 f'8 f'16 }
        s1 s1_\markup { \left-column {
          { "air, no vibration of the lips" }
          \line { "pitch sounds semitone lower than written" } } }
      }
      \new Staff {
        \omit Staff.Clef
        \omit Staff.TimeSignature
        \stopStaff
        \autoBeamOff
        \half-harmonic { d'1 s2 d'4 d'8 d'16 } 
        s1 s1_\markup { \left-column {
          { "slight vibration of the lips" }
          \line { "pitch sounds wholetone lower than written" } } } 
      }
      \new Staff {
        \omit Staff.Clef
        \omit Staff.TimeSignature
        \stopStaff
        \autoBeamOff
        \clicks { s1 s2 d'4 d'8 d'16 }
        s1 s1_\markup { \left-column {
          { "valve noise" }
          \line { "not much louder than normal" } } } 
      }
      \new Staff {
        \omit Staff.Clef
        \omit Staff.TimeSignature
        \stopStaff
        \half-harmonic { s1_\markup { \italic { il più \dynamic p possibile } }
          s2 s4 s8 s16 }
        s1 s1_\markup { \left-column {
          { "always keep volume as quiet as possible" }
          \line {"some room for expression" }
          \line {"later dynamics always return to" \italic più \dynamic p } } }
      }
    >>
  }
}
\bookpart {
  \header {
    title = "Summer Sleep"
    subtitle = ""
    composer = "Z.V. Pine"
    tagline = ""
  }
  \score {
    \pointAndClickOff
    <<
      \new Staff \with {

        instrumentName = "Soprano"
        shortInstrumentName = ""
      }{
        \clef "treble"

        \global
        \new Voice = "soprano" {
          \soprano
        }
      }

      \new Lyrics \lyricsto "soprano" {
        \words
      }

      \new Staff \with {
        instrumentName = \markup { Trumpet in \concat { B \flat} }
        shortInstrumentName = ""
      }{
        \clef "treble"

        \global
        \trumpet
        \bar "|."
      }
    >>
  }
}
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

\paper {
  #(set! paper-alist (cons '("ipad pro" . (cons ( * 220 mm) ( * 305 mm))) paper-alist))
  #(set! paper-alist (cons '("montalvo" . (cons ( * 11  in) ( * 14  in))) paper-alist))
  #(set-paper-size "montalvo")
  
  indent = 1.0\in

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
    #'((basic-distance    . 25)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 10))
}
