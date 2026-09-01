\version "2.24.3"

\include "composition-functions.ly"

headless = #(define-music-function
  (music)(ly:music?)
  #{
    #music
  #})

magicEighth = {
  \tag #'(harpsichord flute clarinet) { \scaleDurations 31/32 r8 }
  \tag #'downStem {r16....}
}

magicQuarter = {
  \tag #'(harpsichord flute clarinet) { \scaleDurations 31/32 r4 }
  \tag #'downStem {r8....}
}

a-rh = {
  % \override Beam.grow-direction = #LEFT
  % \featherDurations 1 
  \tempo "Discovering" 4=76 
  \partial 2 r32 d'32_\markup \italic \magnify #1 \whiteout "poco rubato" { e'16 f'8 g'4 } |
  a'2 r2 |
  r2 r32 d'32 { e'16 f'8 g'4 } |
  b'2 r2 |

  r2. r64 d'64 { e'32 f'16 a'8 } |
  b'4 r4 r32 d'32 { e'16 g'8 b'4 } |
  c''2 r32 d'32 { g'16 a'8 c''4 } |
  d''2 r2 |
  
  R1
  R1 |
  r32 d'32 { e'16 g'8 a'4 } b'2 |
  r2. r32 e'32 { g'16 a'8 } |
  c''2. r64 d'64 { f'32 a'16 c''8 } |
  e''4 r4 r4 \clef "bass" r64 d64 { c32 a,16 f,8 } |
  d,4 r2. |  \tag #'(harpsichord tmi) { \allowPageTurn }
  r2 % \bar "||"

  \clef "treble"
  { r32 d'32 g'16 a'8 b'4 |
  c''2 } r2 |
  r2. { r64 d'64 g'32 a'16 b'8
  d''4 } r2. | \tag #'(harpsichord tmi) { \allowPageTurn }
  r2. { r32 f'32 g'16 a'8 |
  c''2 } { r32 d'32 g'16 a'8 c''4 |
  e''2 } { r16 d'16 g'8 b'4 |
  \time 3/2 \tag #'(clarinet tmi) \grace { s1 s1 } c''2 d''1 } %\bar "||"
  \tag #'(harpsichord tmi) { \allowPageTurn }

  \tempo "Intensifying" 4=90
  \time 4/4
  r2 r32 \headlessInside { e'32 
    \footnote #'(1 . -1) "nearby pitches acceptable" f'16 g'8 a'4 |
  b'2 } r4 r64 \headlessInside { e'64 f'32 g'16 a'8 |
  c''4 } r4 r64 \headlessInside { e'64 f'32 g'16 b'8 c''4 } |
  r2 \clef "bass" r32 \headlessInside { e32 b,16 gis,8 fis,4 } |
  \time 2/4 e,4 \clef "treble" { r16 e'16 g'8 | }

  %phrase 4
  b'4 r16 e'16 g'8 |
  b'4 r16 e''16 a''8 |
  bes''4 r32 e''32 \headlessize { a''16 b''8 } |
  % \time 4/4 c'''4 r4 \bar "||"
}
b-rh = {
  \mark #2 
  \partial 2 c'''8 r64 \headlessInside { f'64 g'32 a'16 b'8 d''8 } |
  % \set Score.currentBarNumber = #32
  \time 4/4
  r64 \headlessInside { f'64 g'32 a'16 b'8 } 
    { c''32 } \headlessInside { d'32 g'16 a'8 
    b'4 c''32 } \headlessInside { d'32 e'16 g'8 } |
  { a'4 b'32 } \headlessInside { d'32 e'16 g'8 
    a'4 c''32 } \headlessInside { f'32 g'16 b'8 } |
  { c''4 e''32 } \headlessInside { g'32 a'16 c''8 
    d''4 e''64 } \headlessInside { g'64 a'32 c''16 d''8 |
  f''8 } 
    \headlessInside { r64 f'64 g'32 b'16 
    c''8 d''64 } \headlessInside { f'64 g'32 b'16 
    d''8 e''64 } \headlessInside { d'64 e'32 g'16 
    b'8 c''8 } |

  r64 \headlessInside { c'64 d'32 f'16 a'8 
    b'16 } r128 \headlessInside { e'128 f'64 \set stemRightBeamCount = #1 a'32 
    \set stemLeftBeamCount = #1 c''16 d''128 } \headlessInside { e'128 f'64 a'32
    c''16 e''128 } \headlessInside { c'128 d'64 \set stemRightBeamCount = #1 f'32 
    \set stemLeftBeamCount = #1 a'16 c''128 } \headlessInside { f'128 g'64 b'32 
    d''16 e''128 } \headlessInside { f'128 g'64 \set stemRightBeamCount = #1 b'32 
    \set stemLeftBeamCount = #1 d''16 f''16 } |

  r64 \headlessInside  { f'64 a'32 b'16 c''8 d''128 }
    \headlessInside  { g'128 b'64 c''32 e''16 g''8 }
    r64 \headlessInside  {g'64 b'32 c''16 d''8 e''128 }
    \headlessInside  { a'128 c''64 d''32 f''16 a''8 } |

  r64 \headlessInside { b'64 d''32 e''16 g''8 b''128 }
    \headlessInside { c''128 e''64 f''32 a''16 c'''8 }
    r64 \headlessInside { g'64 a'32 c''16 d''8 e''128 }
    \headlessInside { b'128 d''64 e''32 g''16 a''8 } |
  \tag #'harpsichord { \break }
}
c-rh = {
  \set Score.currentBarNumber = #39
  \time 31/32
  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  \override Beam.grow-direction = #LEFT
  \override TextScript.layer = #100
  
  \featherDurations 1 
  \headlessInside { b'256[
    _\markup \italic \magnify #1 \whiteout \pad-markup #0.2 "molto rubato"
    \tag #'(harpsichord tmi) ^\markup { \whiteout \lower #0
                                        { "flute unison with r.h." } } c''128 e''64 f''32 a''16] }
    \magicEighth % \headlessInside { \set stemLeftBeamCount = 1 a'256 b'128 d''64 e''32 g''16 } 
    \headlessInside { g'256 a'128 c''64 d''32 f''16 }
    \magicEighth % \headlessInside { \set stemLeftBeamCount = 1 f'256 g'128 b'64 d''32 e''16 } 
  \headlessInside { f'128 g'64
      b'32 c''16 d''8 } 
    \headlessInside { f'128 g'64 a'32 b'16 c''8 } |

  % \tag #'(harpsichord tmi) { \break }
  
  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31)
  \headlessInside { e'128 a'64 b'32 d''16 f''8 } 
    \magicQuarter % \headlessInside { d'128 g'64 a'32 c''16 e''8 } 
    \headlessInside { g'64 c''32 d''16 f''8 g''4 } |

  \set Timing.baseMoment = #(ly:make-moment 1/32)
  \set Timing.beatStructure = #'(31 31)
  \headlessInside { g'32 c''16 d''8 f''4 a''2 }  \tag #'(harpsichord tmi) { \allowPageTurn }

  \tempo "Faster"
  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  \headlessInside { e''256 f''128 a''64 bes''32 d'''16 } 
    \magicEighth % \headlessInside { \set stemLeftBeamCount = 1 d''256 e''128 g''64 a''32 c'''16 } 
    \headlessInside { c''256 d''128 f''64 g''32 bes''16 } 
    \magicEighth % \headlessInside { \set stemLeftBeamCount = 1 bes'256 c''128 e''64 g''32 a''16 } 
    \headlessInside { bes'128 c''64 e''32 f''16 g''8 }
    \headlessInside { bes'128 c''64 d''32 e''16 f''8 } |

  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31)
  \headlessInside { a'128 d''64 f''32 a''16 bes''8 }
    \magicQuarter %\headlessInside { g'128 c''64 e''32 g''16 a''8 }
    \headlessInside { a'64 c''32 d''16 e''8 f''4 } 

  \set Timing.baseMoment = #(ly:make-moment 1/32)
  \set Timing.beatStructure = #'(31 31)
    \headlessInside { a'32 c''16 d''8 f''4 g''2 }

  \time 31/16
  \set Timing.baseMoment = #(ly:make-moment 1/16)
  \set Timing.beatStructure = #'(15 16)
  \headlessInside { a'16[ c''8] d''4 f''2 a''1 }

  \tag #'(tmi harpsichord) { \break }
  \time 31/32
  \clef "bass"
  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  \transpose c c,, {
    \headlessInside { fis''256 g''128 b''64 c'''32 e'''16 }
      \magicEighth % \headlessInside { \set stemLeftBeamCount = 1 e''256 fis''128 a''64 b''32 d'''16 } 
      \headlessInside { d''256 e''128 g''64 a''32  c'''16} 
      \magicEighth % \headlessInside { \set stemLeftBeamCount = 1 c''256 d''128 fis''64 a''32 b''16 }
      \headlessInside { c''128 d''64 fis''32 g''16 a''8 } 
      \headlessInside { c''128 d''64 e''32 fis''16 g''8 |} 
 }

 \tag #'(tmi harpsichord) { \pageBreak }
  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  \clef "treble"
  \transpose c c, {
    \tag #'(clarinet tmi) { \override NoteColumn.X-offset = #1 }
    \headlessInside { cis''256 d''128 fis''64 g''32 b''16  }
      \magicEighth % \headlessInside { \set stemLeftBeamCount = 1 b'256 cis''128 e''64 fis''32 a''16 }
      \headlessInside { a'256 b'128 d''64 e''32 g''16 }
    \tag #'(clarinet tmi) { \revert NoteColumn.X-offset }
      \magicEighth % \headlessInside { \set stemLeftBeamCount = 1 g'256 a'128 cis''64 e''32 fis''16 }
      \headlessInside { g'128 a'64 cis''32 d''16 e''8 }
      \headlessInside { g'128 a'64 b'32 cis''16 d''8 | }
  }
   

  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  \transpose c c, {
    \headlessInside { gis''256 a''128 cis'''64 d'''32 fis'''16 }
      \magicEighth % \headlessInside { \set stemLeftBeamCount = 1 fis''256 gis''128 b''64 cis'''32 e'''16  }
      \headlessInside { e''256 fis''128 a''64 b''32 d'''16 }
      \magicEighth % \headlessInside { \set stemLeftBeamCount = 1 d''256 e''128 gis''64 b''32 cis'''16 }
      \headlessInside { d''128 e''64 gis''32 a''16 b''8 }
      \headlessInside { d''128 e''64 fis''32 gis''16 a''8 | }
  }
   
  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  \headlessInside { dis''256 e''128 gis''64 a''32 cis'''16 }
    \magicEighth % \headlessInside { \set stemLeftBeamCount = 1 cis''256 dis''128 fis''64 gis''32 b''16 }
    \headlessInside { b'256 cis''128 e''64 fis''32 a''16 }
    \magicEighth % \headlessInside { \set stemLeftBeamCount = 1 a'256 b'128 dis''64 fis''32 gis''16 }
    \headlessInside { a'128 b'64 dis''32 e''16 fis''8 }
    \headlessInside { a'128 b'64 cis''32 dis''16 e''8 } |

  \tag #'(tmi harpsichord) { \break }

  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31)
  \headlessInside { gis'128 cis''64 dis''32 fis''16 a''8 } 
    \magicQuarter %\headlessInside { fis'128 b'64 cis''32 e''16 gis''8 }
    \headlessInside { gis'64 b'32 cis''16 e''8 fis''4 } |

  \set Timing.baseMoment = #(ly:make-moment 1/32)
  \set Timing.beatStructure = #'(31 31)
  { a'32[ b'16 dis''8] e''4 gis''2 }

  \time 31/16
  \set Timing.baseMoment = #(ly:make-moment 1/16)
  \set Timing.beatStructure = #'(15 16)
  { a'16[ b'8] dis''4 e''2 gis''1 }
  { a'8 b'4 dis''2 fis''1 a''16 ~ 1.... }  |
}

a-lh = {
  \partial 2 r2 |
  R1*7 |
  r2 %\bar "||"
  
  \clef "treble"
  { r32 d''32 c''16 b'8 g'4 | %m9
  f'2 } r2 |
    r2 { r32 d''32 c''16 b'8 a'4 g'2 } r2 |
    { r32 d''32 c''16 b'8 a'4 f'2 } { r32 d''32 c''16 b'8 g'4 e'2 } |
    R1 |
    R1
   
  \clef "bass"
  { r32 d'32 c'16 b8 a4 f2 } |
  r2 { r32 d'32 c'16 b8 g4 
    e32 } { c'32 a16 g8 e2. } |
  r2 { r32 d'32 a16 g8 f4 |
  d2 } r4 
    \clef "treble" { r64 d''64 a'32 g'16 f'8 |
  e'16 } \clef "bass"
    { d'16 a8 g4 e2 |
  d1 } r2 %\bar "||" %m23

  \clef "treble"
  r32 { c''32 b'16 a'8 g'4 f'2 } |
  r32 \headlessInside { c''32 b'16 a'8 g'4 e'2 } |
  r32 \headlessInside { c'''32 b''16 a''8 f''4 e''2 } |
  r32 \headlessInside { c''32 b'16 a'8 f'4 d'2 } |
  \time 2/4   
  \clef "bass"
  r32 { c'32 a16 fis8 e4 | }

  %phrase 4
  r32 \headlessInside { c'32 aes16 f8 ees4 | }
  \clef "treble"
  r32 \headlessInside { c''32 g'16 e'8 d'4 | }
  \transpose c c' {
    % \clef "bass" 
    r64 \headlessInside { e'64 c'32 b16 a8 fis4 } |
    % \time 4/4
    % { r64 e'64 c'32 b16 g8 e4 } \bar "||"
  }
}

b-lh = {
  \partial 2 
  \transpose c c' {
    r64 \headlessInside { b64 a32 g16 f8 d8 } r64 \headlessInside { b64 a32 g16 | 
      f8 e8 } r4 
      r64 \headlessInside { ees'64 des'32 c'16 aes8 f8 }
      r64 \headlessInside { b64 a32 g16 |
          e8 d8 } r8 r64 \headlessInside { b64 f32 d16
  b,8 g,8 } r8
} 
  
  \clef "bass"
  r32 \headlessInside { b32 a16 |
  f8 d4 b,8 } 
    r32 \headlessInside { d'32 bes16 g8 
    f64 } \headlessInside { d'64 a32 g16 e8 |
  d64 } \headlessInside { b64 a32 f16 e8 
    c64 } \headlessInside { g64 d32 bes,16 g,8 
    f,64 } % \breathe
    % \footnote #'(-1 . 1) "A small caesura is acceptable before leaps"
             \headlessInside { b64 a32 g16 f8 
    e64 } \headlessInside { a64 e32 d16 b,8 |

  g,64 } \headlessInside { g64 d32 c16 a,8 
    f,64 } \headlessInside { c'64 g32 f16 d8 
    b,64 } \headlessInside { c'64 g32 e16 d8 
    c64 } \headlessInside { a64 e32 c16 b,8 |

  \tag #'harpsichord { \pageBreak }

  a,128 } \headlessInside { g128 f64 d32 c16 b,8 }
    r64 \headlessInside { g64 f32 d16 c8 
    a,128 } \headlessInside { g128 f64 d32 b,16 g,8 } 
    r64 \headlessInside { f64 e32 c16 a,8 |
  f,64 } \headlessInside { b64 a32 f16 d8 }
    r64 \headlessInside { d'64 a32 g16 e8 
    c128 } \headlessInside { c'128 g64 f32 d16 b,8 }
    r128 \transpose c c' \headlessInside { f128 d64 c32 a,16 g,8 } |
}

c-lh = {
  % \time 31/32
  \override Beam.grow-direction = #LEFT
  
  \transpose c c' {
    \featherDurations 1 
    \magicEighth % \headlessInside  { e256 d128 b,64 a,32 \set stemRightBeamCount = 1 f,16 }
      \headlessInside { f256 \tag #'(harpsichord tmi) ^\markup { \whiteout \lower #0
                                        { "cl. unis. l.h." } } e128 c64 b,32 g,16 }
      \clef "treble"
      \magicEighth % \headlessInside { g256 f128 d64 c32 \set stemRightBeamCount = 1 a,16 }
      \headlessInside { a256 g128 e64 d32 b,16 }
      \magicEighth % \headlessInside { b256 \startDivide a128 f64 d32 \set stemRightBeamCount = 1 c16 }
      \headlessInside { \startDiv c'256 b128 g64 e32 d16 }
      \magicEighth % \headlessInside { c'256 b128 g64 f32 \set stemRightBeamCount = 1 e16 }
      \headlessInside { d'256 c'128 a64 g32 \stopDiv f16 | }
  }

  \clef "bass"
  \magicQuarter % \headlessInside { b128 f64 d32 b,16 a,8 } 
    \headlessInside { c'128 g64 e32 c16 b,8 }
    \magicQuarter % \headlessInside { d'128 \startDiv a64 f32 d16 \stopDivide c8 }
    \headlessInside { e'128 b64 g32 e16 d8 } |

  \headlessInside { c'64 \startDiv b32 g16 f8 e4 }
    \headlessInside { d'64 c'32 a16 g8 \stopDivide f4 } | %\bar "||"

  % FASTER
  % \tag #'flute { \stemDown }
  \magicEighth % { b,256 a,128 fis,64 e,32 c,16 }
    { c256 b,128 g,64 fis,32 d,16 }
  % \tag #'flute { \stemUp }
    \magicEighth % { d256 c128 a,64 g,32 e,16 }
    { e256 d128 b,64 a,32 fis,16 }
    \magicEighth % { fis256 \startDiv e128 c64 a,32 g,16 }
    { g256 fis128 d64 b,32 a,16 }
    \magicEighth % { g256 \startDiv fis128 d64 c32 b,16 }
    { a256 fis128 d64 c32 b,16 } | %m45

  \magicQuarter % { fis128 c64 a,32 fis,16 e,8 }
    { g128 d64 b,32 g,16 fis,8 }
    \magicQuarter % { a128 \startDiv e64 c32 a,16 g,8 }
    { b128 fis64 d32 b,16 \stopDiv a,8 } |

  { g64 \startDiv fis32 d16 c8 b,4 }
    { a64 g32 e16 d8 \stopDiv c4 } |
  
  \time 31/16
  { fis32 \startDiv e16 c8 b,4 a,2 } 
    { fis32[ e16 c8] a,4 \stopDiv fis,2 } |

  \magicEighth % { a,256 g,128 e,64 d,32 bes,,16 }
    {  bes,256 a,128 f,64 e,32 c,16 }
    \magicEighth % { c256 bes,128 g,64 f,32 d,16 }
    {  d256 c128 a,64 g,32 e,16 }
    \magicEighth % { e256 \startDiv d128 bes,64 g,32 f,16 }
    {  f256 e128 c64 a,32 g,16 }
    \magicEighth % { f256 \startDiv e128 c64 bes,32 a,16 }
    { g256 f128 d64 c32 bes,16 } | %m47
   
    \transpose c c' {
  % \pushNCs
  \magicEighth % \headlessInside { d256 c128 a,64 g,32 \set stemRightBeamCount = 1 ees,16 }
    \headlessInside { ees256 d128 bes,64 a,32 f,16 }
    \magicEighth % \headlessInside { f256 ees128 c64 bes,32 \set stemRightBeamCount = 1 g,16 }
    \clef "treble"
    \headlessInside { g256 f128 d64 c32 a,16 }
    \magicEighth % \headlessInside { a256 \startDiv g128 ees64 c32 \set stemRightBeamCount = 1 bes,16 }
    \headlessInside { bes256 a128 f64 d32 c16 }
    \magicEighth % \headlessInside { bes256 \startDiv a128 f64 ees32 \set stemRightBeamCount = 1 d16 }
    \headlessInside { c'256 bes128 g64 f32 ees16 } | %m48
  }
   
  \clef "bass"
  \transpose c c' {
  \magicEighth % \headlessInside { g,256 f,128 d,64 c,32 \set stemRightBeamCount = 1 aes,,16 }
    \headlessInside { aes,256 g,128 ees,64 d,32 bes,,16 }
    \magicEighth % \headlessInside { bes,256 aes,128 f,64 ees,32 \set stemRightBeamCount = 1 c,16 }
    \headlessInside { c256 bes,128 g,64 f,32 d,16 }
    \magicEighth % \headlessInside { d256 \startDiv c128 aes,64 f,32 \set stemRightBeamCount = 1 ees,16 }
    \headlessInside { ees256 d128 bes,64 g,32 f,16 }
    \magicEighth % \headlessInside { ees256 \startDiv d128 bes,64 aes,32 \set stemRightBeamCount = 1 g,16 }
    \headlessInside { f256 ees128 c64 bes,32 aes,16 } |
  }
  \magicEighth % \headlessInside { c256 bes,128 g,64 f,32 \set stemRightBeamCount = 1 des,16 }
    \headlessInside { des256 c128 aes,64 g,32 ees,16 }
    \magicEighth % \headlessInside { ees256 des128 bes,64 aes,32 \set stemRightBeamCount = 1 f,16 }
    \headlessInside { f256 ees128 c64 bes,32 g,16 }
    \magicEighth % \headlessInside { g256 \startDiv f128 des64 bes,32 \set stemRightBeamCount = 1 aes,16 }
    \headlessInside { aes256 g128 ees64 c32 bes,16 }
    \magicEighth % \headlessInside { aes256 \startDiv g128 ees64 des32 \set stemRightBeamCount = 1 c16 }
    \headlessInside { bes256 aes128 f64 ees32 des16 } |

  % \tag #'(tmi harpsichord) { \break }
  \transpose c c, {
    \ottava #-1
    \magicQuarter % \headlessInside { g128 des64 bes,32 g,16 f,8 } 
      \headlessInside { aes128 ees64 c32 aes,16 g,8 }
      \magicQuarter % \headlessInside { bes128 \startDiv f64 des32 bes,16 aes,8 }
      \headlessInside { c'128 g64 ees32 c16 bes,8 } |

    \headlessInside { aes64 \startDiv g32 ees16 des8 c4 }
      \headlessInside { bes64 aes32 f16 ees8 \stopDiv des4 } |
    \ottava #0
  }

  \tag #'(harpsichord tmi) { \break }
  \time 31/16
  { g32 \startDiv f16 ees8 c4 bes,2 }
    \transpose c c' { \clef "treble" g32[ f16 ees8] c4 \stopDiv aes,2 } |
  
  \clef "bass" { g16[ f8] des4 c2 bes,1 } |
  \transpose c c,  { g16[ f8] des4 c2 aes,1 } |
}

% c-fl = {
%   \mark #3
%   \tag #'(harpsichord flute) { \break }
%   \set Score.currentBarNumber = #39
%   \time 31/32
%   \set Timing.baseMoment = #(ly:make-moment 1/256)
%   \override Beam.grow-direction = #LEFT
%   \tag #'harpsichord \stemUp
%   \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
%   \omit Accidental
%   \stopStaff \override NoteHead.style = #'cross
%   \transpose d c
%   {
%       { a'256\f\> g'128 fis'64 e'32 \set stemRightBeamCount = 1 d'16 }
%       { \set stemLeftBeamCount = 1  a'256 g'128 fis'64 e'32 d'16 } 
%       { a'256 g'128 fis'64 e'32 \set stemRightBeamCount = 1 d'16 }
%       { \set stemLeftBeamCount = 1  a'256 g'128 fis'64 e'32 d'16 } 
%       a'128 g'64 fis'32 e'16 d'8
%       { a'128 g'64 fis'32 e'16 d'8\p } |
   
%   }

%   \set Timing.baseMoment = #(ly:make-moment 1/128)

%   \tag #'harpsichord \stemNeutral
%   \set Timing.beatStructure = #'(31 31 31 31)
%   { e'128\f\> d'64 c'32 b16 a8 }
%   { e'128 d'64 c'32 b16 a8 }
%   { e'64 d'32 c'16 b8 a4\p } 
  
%   \set Timing.baseMoment = #(ly:make-moment 1/32)
%   \set Timing.beatStructure = #'(31 31)
%   e'32 d'16 c'8 b4 a4 r4 |  \bar "||" %m42

%   \tag #'(flute tmi) { \allowPageTurn }
%   \startStaff
%   \override TextSpanner.bound-details.left.text =
%               \markup { "with pitched air" }
%   \tag #'(flute tmi) { \stemUp }
%   \transpose d c {
%   a'256\f\> \tag #'flute \startTextSpan g'128 fis'64 e'32 \set stemRightBeamCount = 1 d'16
%     \set stemLeftBeamCount = 1 g'256 f'128 e'64 d'32 c'16
%     f'256 e'128 d'64 c'32 \set stemRightBeamCount = 1 b16
%     \set stemLeftBeamCount = 1 e'256 d'128 c'64 bes32 a16 }
%     d'128 c'64 bes32 a16 g8\p \tag #'flute \stopTextSpan r16... 
%     \revert NoteHead.style f'8 | %m43
%   \tag #'(flute tmi) { \break } 

%   \override TextSpanner.bound-details.left.text =
%               \markup { "simile" }
%   \override NoteHead.style = #'cross
%   \set Timing.baseMoment = #(ly:make-moment 1/128)
%   \set Timing.beatStructure = #'(31 31 31 31)
%   { b'128\f\> \tag #'flute \startTextSpan a'64 g'32 fis'16 e'8
%       a'128 g'64 fis'32 e'16 d'8
%       g'64 f'32 e'16 d'8 c'4\p \tag #'flute \stopTextSpan } 
%   \tag #'flute { \stemNeutral }

%   \revert Accidental.stencil
%   \set Timing.baseMoment = #(ly:make-moment 1/32)
%   \set Timing.beatStructure = #'(31 31)
%   \revert NoteHead.style
%     r4... g''2(\< \tag #'flute _~ \tag #'harpsichord ~ |
    
%     \time 31/16 
%     g''4.. fis''2\f\> << a''1) { s2 s2\p } >> | %m46

%   \tag #'(flute tmi) { \break }
%   \time 31/32
%   \set Timing.baseMoment = #(ly:make-moment 1/256)
%   \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
%   { r32... e'''16\f\> } { r32... d'''16 } { r32... c'''16 } { r32... b''16 } { r16... a''8 } { r16... g''8\p } |
%   \set Timing.baseMoment = #(ly:make-moment 1/256)


%   \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
%   { r32... b''16\f\> } { r32... a''16 } { r32... g''16 } { r32... fis''16 } { r16... e''8 } { r16... d''8\p } |
%   \set Timing.baseMoment = #(ly:make-moment 1/256)


%   \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
%   r32... fis'''16\f\> r32... e'''16 r32... d'''16 r32... cis'''16\p r16... b''8\f r16... a''8\p |

%   \set Timing.baseMoment = #(ly:make-moment 1/256)
%   \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
%   r32... cis'''16\ff\> r32... b''16 r32... a''16 r32... gis''16 r16... fis''8 r16... e''8\f |
 
%   \tag #'(flute tmi) { \break }
%   \set Timing.baseMoment = #(ly:make-moment 1/128)
%   \set Timing.beatStructure = #'(31 31 31 31)
%   r16... a''8 r16... gis''8 r8... fis''4 |
 
%   \set Timing.baseMoment = #(ly:make-moment 1/32)
%   \set Timing.beatStructure = #'(31 31)
%   r8.. e''4\> << gis''2 { s4 s4\! } >> |
  
%   \time 31/16
%   \set Timing.baseMoment = #(ly:make-moment 1/16)
%   \set Timing.beatStructure = #'(15 16)
%   \transpose c c, {
%     r8. dis''4\p e''2 gis''1 r8 b'4\pp dis''2 
%       \tag #'(clarinet flute harpsichord) fis''1 a''16 ~ |
%      << 1....\> { s2... s16\ppp } >>
%   }
% }