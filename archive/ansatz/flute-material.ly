\version "2.24.3"

\include "composition-functions.ly"
\include "woodwind-functions.ly"

a-fl = {
  \clef "treble"
  \partial 2
  r2 | R1*5 | 
  r2. % \tag #'flute ^\markup { "blend into clarinet" }
  \partCombine 
    { \stemDown f''4_\<~ |  f''1\p~ | 
      \once \omit Accidental <f'' f'>2 \tag #'flute ^\markup { \halign #0.5 \italic "overtone multiphonic" } }
    { s4 | r2. f'4_~ | f'2 }
  % \bar "||" 

  %phrase 2
  r4 % \footnote #'(-1 . -1) "All single pitches should have an aeolian sound matching the breathiness of split overtones"
    f'!4\<~ | 
  1~ | 
  2\pp r4 g'4\<~ |
  g'1\pp |
  r4 f'\<_~ <f' f''>2\pp \tag #'flute ^\markup { \italic "sim." } |
  r4 e'4\<~ <e' e''>2\p~ | <e' e''>1 | %m15
  r2

  %prhase 3
  r4 c'4~\< | 
  <c' c''>2\pp( \grace { \stemDown g''8 } <c' c''>2_~ | 
  c'2) r4 d'4_~\< |
  <d' d''>2( <d'\harmonic d'' a''>2\p |
  <d' d''>2.) r4 |
  \tag #'(flute tmi) { \allowPageTurn }
  <c' c''>1\< | <c'\harmonic c'' g''>1~\p\< |
  \time 3/2 
  g''2\f <g\harmonic d'' g''>1 | %m23
  \tag #'(flute tmi) { \allowPageTurn }

  %phrase 2
  % \tempo 4=90
  r2 f'4(\p 4 | 4) r4 e'4( 4 |
  4\< <e' e''>4) 4( <eih' eih''>4 |
  4)\f r4 d'4(\p 4 | %m27
  \time 2/4 <d' d''>4 4)

  %phrase 4
  <dis' dis''>4_( 4 |
  <e'\harmonic e'' b''>4\< \grace { \stemDown b''8-> } e'4) |
  <dis'\harmonic dis'' ais''>4 <e'\harmonic e'' b''>4 |
  % \time 4/4 <f'' c'''>4\f r4 \bar "||"
}

b-fl = \transpose c c'' {
  \partial 2
  <f,\harmonic f c'>4\f r8 \tag #'flute ^\markup { \halign #0.1 \italic "flutter tongue" } d8:64\p~ |
    4:32 c2:32 \transpose c c, { c4\pp~ \tag #'flute ^\markup { \italic "ord." } |
    4 b,2 } c4:32\p~ \tag #'flute ^\markup { \italic "f.t." } |
    4:16 e2:32\< eih4:32 |
  f4.:32\f d8~\p \tag #'flute ^\markup { \italic "ord." } d8 e4 c8~ |
  4 b,8.\< d16~ 
    16 e8 c16~ 16 e8 f16~ 
  4 d8 g8~ 4\f e8 a8:64\<~ \tag #'flute ^\markup { \italic "f.t." } 4:32 b8:64 c'8:64~ 
  4:32 \transpose c c' { e8:64 a8:64\ff }
}

c-fl = {
  \mark #3
  % \tag #'flute { \break }
  \set Score.currentBarNumber = #39
  \time 31/32
  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \override Beam.grow-direction = #LEFT
  \tag #'harpsichord \stemUp
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  \omit Accidental
  \stopStaff \override NoteHead.style = #'cross
  \transpose d c
  {
      { a'256\f\>
        \tag #'flute ^\markup { { \pad-around #1 \italic "key clicks descending, pitches ad lib." } } 
        \tag #'flute _\markup { \whiteout { \pad-markup #0.5 "flute always unison harpsichord r.h." } }
        g'128 fis'64 e'32 \set stemRightBeamCount = 1 d'16 }
      { \set stemLeftBeamCount = 1  a'256 g'128 fis'64 e'32 d'16 } 
      { a'256 g'128 fis'64 e'32 \set stemRightBeamCount = 1 d'16 }
      { \set stemLeftBeamCount = 1  a'256 g'128 fis'64 e'32 d'16 } 
      a'128 g'64 fis'32 e'16 d'8
      { a'128 g'64 fis'32 e'16 d'8\p } |
   
  }

  \set Timing.baseMoment = #(ly:make-moment 1/128)

  \tag #'harpsichord \stemNeutral
  \set Timing.beatStructure = #'(31 31 31 31)
  { e'128\f\> d'64 c'32 b16 a8 }
  { e'128 d'64 c'32 b16 a8 }
  { e'64 d'32 c'16 b8 a4\p } 
  
  \set Timing.baseMoment = #(ly:make-moment 1/32)
  \set Timing.beatStructure = #'(31 31)
  e'32 d'16 c'8 b4 a4 s4 |  % \bar "||" %m42

  \tag #'(flute tmi) { \allowPageTurn }
  \startStaff
  \override TextSpanner.bound-details.left.text =
              \markup { "add pitched air" }
  % \tag #'(flute tmi) { \stemUp }
  \transpose d c {
  g'256\f\> \tag #'flute \startTextSpan f'128 e'64 d'32 \set stemRightBeamCount = 1 c'16
    \set stemLeftBeamCount = 1 g'256 f'128 e'64 d'32 b16
    f'256 e'128 d'64 c'32 \set stemRightBeamCount = 1 b16
    \set stemLeftBeamCount = 1 e'256 d'128 c'64 bes32 a16 }
    d'128 c'64 bes32 a16 g8\p \tag #'flute \stopTextSpan 
    s16...
    \tag #'(flute tmi) { \once \stemUp }
    \revert NoteHead.style f'8 %_\markup { \halign #0.25 \whiteout { \pad-markup #0.5 "unison harpsichord r.h." } } | %m43
  \tag #'(flute tmi) { \break } 

  \override TextSpanner.bound-details.left.text =
              \markup { "simile" }
  \override NoteHead.style = #'cross
  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31)
  \transpose e b, { b'128\f\> \tag #'flute \startTextSpan a'64 g'32 fis'16 e'8
      a'128 g'64 fis'32 e'16 d'8
      g'64 f'32 e'16 d'8 c'4\p \tag #'flute \stopTextSpan } 
  % \tag #'flute { \stemNeutral }

  \revert Accidental.stencil
  \set Timing.baseMoment = #(ly:make-moment 1/32)
  \set Timing.beatStructure = #'(31 31)
  \revert NoteHead.style

  \hideRest r4... g''2(\< _~ %_\markup { \halign #0.25 \whiteout { \pad-markup #0.5 "unison harpsichord r.h." } } | %m43
    
    % \time 31/16 
    g''4.. fis''2\f\> << a''1) { s2 s2\p } >> | %m46


  %crossStaffStemSection
  % \tag #'(flute tmi) { \break }
  % \tempo "Faster"
  \time 31/32
  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  { \hideRest r32... e'''16\f\> %_\markup { \whiteout { \pad-markup #0.5 "always unison harpsichord r.h." } } 
    }
    { \hideRest r32... d'''16 }
    { \hideRest r32... c'''16 }
    { \hideRest r32... b''16 }
    { \hideRest r16... a''8 }
    { \hideRest r16... g''8\p } |
  \set Timing.baseMoment = #(ly:make-moment 1/256)


  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  { \hideRest r32... b''16\f\> } 
  { \hideRest r32... a''16 } 
  { \hideRest r32... g''16 } 
  { \hideRest r32... fis''16 } 
  { \hideRest r16... e''8 } 
  { \hideRest r16... d''8\p } |
  \set Timing.baseMoment = #(ly:make-moment 1/256)


  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  \hideRest r32... fis'''16\f\> 
  \hideRest r32... e'''16 
  \hideRest r32... d'''16 
  \hideRest r32... cis'''16\p 
  \hideRest r16... b''8\f 
  \hideRest r16... a''8\p |

  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  \hideRest r32... cis'''16\ff\> 
  \hideRest r32... b''16 
  \hideRest r32... a''16 
  \hideRest r32... gis''16 
  \hideRest r16... fis''8 
  \hideRest r16... e''8\f |
 
  \tag #'(flute tmi) { \break }
  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31)
  \hideRest r16... a''8 
  \hideRest r16... gis''8 
  \hideRest r8... fis''4 |
 
  \set Timing.baseMoment = #(ly:make-moment 1/32)
  \set Timing.beatStructure = #'(31 31)
  \hideRest r8.. e''4\> << gis''2 { s4 s4\! } >> |
  
  \time 31/16
  \set Timing.baseMoment = #(ly:make-moment 1/16)
  \set Timing.beatStructure = #'(15 16)
  \transpose c c, {
    \hideRest r8. dis''4\p e''2 
      \tag #'(clarinet flute harpsichord) { gis''1 }
      \tag #'downStem { s1 } 
     \hideRest r8 b'4\pp dis''2 
      \tag #'(clarinet flute harpsichord) { fis''1 }
      \tag #'downStem { s1 } 
      \tag #'(clarinet flute harpsichord) { a''16~ | }
      \tag #'downStem { a''16 | }
      \tag #'(clarinet flute harpsichord)
        << 1....\> { s2... s16\ppp } >>
      \tag #'downStem { s1.... }
  }
  \bar "|."
}