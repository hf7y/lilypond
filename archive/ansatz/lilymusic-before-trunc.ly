\version "2.24.3"

a-rh = {
  \tempo 4=76
  \partial 2 { r32 d'32 e'16 f'8 g'4 } |
  \tweak color #"red" a'2 r2 |
  r2 { r32 d'32 e'16 f'8 g'4 |
  \tweak color #"red" b'2 } r2 |

  r2. { r64 d'64 e'32 f'16 a'8 |
  \tweak color #"red" b'4 } r4 { r32 d'32 e'16 g'8 b'4 |
  \tweak color #"red" c''2 } { r32 d'32 g'16 a'8 c''4 |
  \tweak color #"red" d''2 } r2 |
  r2 \break \bar "||"

  r2 |
  R1 |
  { r32 d'32 e'16 g'8 a'4 \tweak color #"red" b'2 } |
  r2. { r32 e'32 g'16 a'8 |
  \tweak color #"red" c''2. } { r64 d'64 f'32 a'16 c''8 |
  \tweak color #"red" e''4 } r4 r4 \clef "bass" { r64 d64 c32 a,16 f,8 |
  \tweak color #"red" d,4 } r2. |
  r2 \bar "||"

  \clef "treble"
  { r32 d'32 g'16 a'8 b'4 |
  \tweak color #"red" c''2 } r2 |
  r2. { r64 d'64 g'32 a'16 b'8
  \tweak color #"red" d''4 } r2. |
  r2. { r32 f'32 g'16 a'8 |
  \tweak color #"red" c''2 } { r32 d'32 g'16 a'8 c''4 |
  \tweak color #"red" e''2 } { r16 d'16 g'8 b'4 |
  \time 3/2 c''2 \tweak color #"red" d''1 } \bar "||"
  \pageBreak 

  \time 4/4
  r2 { r32 e'32 f'16 g'8 a'4 |
  \tweak color #"red" b'2 } r4 { r64 e'64 f'32 g'16 a'8 |
  \tweak color #"red" c''4 } r4 { r64 e'64 f'32 g'16 b'8 \tweak color #"red" c''4 } |
  r2 \clef "bass" { r32 d32 b,16 g,8 f,4 |
  \time 2/4 \tweak color #"red" e,4 } \clef "treble" { r16 e'16 g'8 | \bar "||" 

  %phrase 4
  \time 3/2 b'4 d''2 \tweak color #"red" e''4 ~ 2 | }
  { r16 e'16 g'8 b'4 d''2 \tweak color #"red" f''2 } |
  { r16 e''16 a''8 b''4 c'''2 
    \tweak color #"red" d'''32 } { e''32 a''16 b''8 c'''4 |
  \tweak color #"red" e'''2 } \bar "||"
}
b-rh = {
  \mark #2 
  \partial 2 r8 { r64 f'64 g'32 a'16 b'8 \tweak color #"red" d''8_73 } |
  \set Score.currentBarNumber = #32
  { r64 f'64 g'32 a'16 b'8 } 
    { \tweak color #"red" c''32 d'32 g'16 a'8 
    b'4 \tweak color #"red" c''32 } { d'32 e'16 g'8 } |
  { a'4 \tweak color #"red" b'32 } { d'32 e'16 g'8 
    a'4 \tweak color #"red" c''32_29 } { f'32 g'16 b'8 } |
  { c''4 \tweak color #"red" e''32 } { g'32 a'16 c''8 
    d''4 \tweak color #"red" e''64 } { g'64 a'32 c''16 d''8 } |
  { \tweak color #"red" f''8 } 
    { r64 f'64 g'32 b'16 
    c''8 \tweak color #"red" d''64_76 } { f'64 g'32 b'16 
    d''8 \tweak color #"red" e''64 } { d'64 e'32 g'16 
    b'8 \tweak color #"red" c''8 } |
  \pageBreak 

  { r64 c'64 d'32 f'16 a'8 \tweak color #"red" b'16 } 
    { r128 e'128 f'64 a'32 c''16 \tweak color #"red" d''128 }
    { e'128 f'64 a'32 c''16 \tweak color #"red" e''128 }
    { c'128 d'64 f'32 a'16 \tweak color #"red" c''128_7 }
    { f'128 g'64 b'32 d''16 \tweak color #"red" e''128 }
    { f'128 g'64 b'32 d''16 \tweak color #"red" f''16 } |

  { r64 f'64 a'32 b'16 c''8 \tweak color #"red" d''128 }
    { g'128 b'64 c''32 e''16 \tweak color #"red" g''8 }
    { r64 g'64 b'32 c''16 d''8 \tweak color #"red" e''128 }
    { a'128 c''64 d''32 f''16 \tweak color #"red" a''8 } |

  { r64 b'64 d''32 e''16 g''8 \tweak color #"red" b''128 }
    { c''128 e''64 f''32 a''16 \tweak color #"red" c'''8 }
    { r64 g'64 a'32 c''16 d''8 \tweak color #"red" e''128 }
    { b'128 d''64 e''32 g''16 \tweak color #"red" a''8 } |
}
c-rh = {
  \set Score.currentBarNumber = #39
  \time 31/32
  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  { b'256 c''128 e''64 f''32 \tweak color #"red" a''16 } 
    { a'256 b'128 d''64 e''32 \tweak color #"red" g''16 } 
    { g'256 a'128 c''64 d''32 \tweak color #"red" f''16 }
    { f'256 g'128 b'64 d''32 \tweak color #"red" e''16 } 
    { f'128 \footnote #'(1 . -1) "alternating with left hand" g'64 b'32 c''16 \tweak color #"red" d''8 } 
    { f'128 g'64 a'32 b'16 \tweak color #"red" c''8 } |
  
  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31)
  { e'128 a'64 b'32 d''16 \tweak color #"red" f''8 } 
    { d'128 g'64 a'32 c''16 \tweak color #"red" e''8 } 
    { g'64 c''32 d''16 f''8 \tweak color #"red" g''4 } |

  \set Timing.baseMoment = #(ly:make-moment 1/32)
  \set Timing.beatStructure = #'(31 31)
  { g'32 c''16 d''8 f''4 \tweak color #"red" a''2 }  

  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  { e''256 f''128 a''64 bes''32 \tweak color #"red" d'''16 } 
    { d''256 e''128 g''64 a''32 \tweak color #"red" c'''16 } 
    { c''256 d''128 f''64 g''32 \tweak color #"red" bes''16 } 
    { bes'256 c''128 e''64 g''32 \tweak color #"red" a''16 } 
    { bes'128 c''64 e''32 f''16 \tweak color #"red" g''8 }
    { bes'128 c''64 d''32 e''16 \tweak color #"red" f''8 } |

  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31)
  { a'128 d''64 f''32 a''16 \tweak color #"red" bes''8 }
    { g'128 c''64 e''32 g''16 \tweak color #"red" a''8 }
    { a'64 c''32 d''16 e''8 \tweak color #"red" f''4 } 

  \set Timing.baseMoment = #(ly:make-moment 1/32)
  \set Timing.beatStructure = #'(31 31)
    { a'32 c''16 d''8 f''4 \tweak color #"red" g''2 }

  \time 31/16
  \set Timing.baseMoment = #(ly:make-moment 1/16)
  \set Timing.beatStructure = #'(15 16)
  { a'16 c''8 d''4 f''2 \tweak color #"red" a''1 }


  \time 31/32
  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  { fis''256 g''128 b''64 c'''32 \tweak color #"red" e'''16 }
    { e''256 fis''128 a''64 b''32 \tweak color #"red" d'''16 } 
    { d''256 e''128 g''64 a''32 \tweak color #"red" c'''16 }
    { c''256 d''128 fis''64 a''32 \tweak color #"red" b''16 } 
    { c''128 d''64 fis''32 g''16 \tweak color #"red" a''8 } 
    { c''128 d''64 e''32 fis''16 \tweak color #"red" g''8 } |
 

  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  { cis''256 d''128 fis''64 g''32 \tweak color #"red" b''16 } 
    { b'256 cis''128 e''64 fis''32 \tweak color #"red" a''16 }
    { a'256 b'128 d''64 e''32 \tweak color #"red" g''16 }
    { g'256 a'128 cis''64 e''32 \tweak color #"red" fis''16 }
    { g'128 a'64 cis''32 d''16 \tweak color #"red" e''8 }
    { g'128 a'64 b'32 cis''16 \tweak color #"red" d''8 } |
   

  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  { gis''256 a''128 cis'''64 d'''32 \tweak color #"red" fis'''16 }
    { fis''256 gis''128 b''64 cis'''32 \tweak color #"red" e'''16 } 
    { e''256 fis''128 a''64 b''32 \tweak color #"red" d'''16 }
    { d''256 e''128 gis''64 b''32 \tweak color #"red" cis'''16 }
    { d''128 e''64 gis''32 a''16 \tweak color #"red" b''8 }
    { d''128 e''64 fis''32 gis''16 \tweak color #"red" a''8 } |
 
  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  { dis''256 e''128 gis''64 a''32 \tweak color #"red" cis'''16 }
    { cis''256 dis''128 fis''64 gis''32 \tweak color #"red" b''16 }
    { b'256 cis''128 e''64 fis''32 \tweak color #"red" a''16 }
    { a'256 b'128 dis''64 fis''32 \tweak color #"red" gis''16 }
    { a'128 b'64 dis''32 e''16 \tweak color #"red" fis''8 }
    { a'128 b'64 cis''32 dis''16 \tweak color #"red" e''8 } |

  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31)
  { gis'128 cis''64 dis''32 fis''16 \tweak color #"red" a''8 } 
    { fis'128 b'64 cis''32 e''16 \tweak color #"red" gis''8 }
    { gis'64 b'32 cis''16 e''8 \tweak color #"red" fis''4 } |

  \set Timing.baseMoment = #(ly:make-moment 1/32)
  \set Timing.beatStructure = #'(31 31)
  { a'32 b'16 dis''8 e''4 \tweak color #"red" gis''2 }

  \time 31/16
  \set Timing.baseMoment = #(ly:make-moment 1/16)
  \set Timing.beatStructure = #'(15 16)
  { a'16 b'8 dis''4 e''2 \tweak color #"red" gis''1 }
  { a'8 b'4 dis''2 fis''1 \tweak color #"red" a''16 ~ 1.... }  |
}

a-lh = {
  \partial 2 r2 |
  R1*7 |
  r2 \bar "||"
  
  \clef "treble"
  { r32 d''32 c''16 b'8 g'4 | %m9
  \tweak color #"red" f'2 } r2 |
    r2 { r32 d''32 c''16 b'8 a'4 \tweak color #"red" g'2 } r2 |
    { r32 d''32 c''16 b'8 a'4 \tweak color #"red" f'2 } { r32 d''32 c''16 b'8 g'4 \tweak color #"red" e'2 } |
    R1 |
    r2 \bar "||"
   
  \clef "bass"
  r2 |
  { r32 d'32 c'16 b8 a4 \tweak color #"red" f2 } |
  r2 { r32 d'32 c'16 b8 g4 
    \tweak color #"red" e32 } { c'32 a16 g8 \tweak color #"red" e2. } |
  r2 { r32 d'32 a16 g8 f4 |
  \tweak color #"red" d2 } r4 
    \clef "treble" { r64 d''64 a'32 g'16 f'8 |
  \tweak color #"red" e'16 } \clef "bass"
    { d'16 a8 g4 e2 |
  \tweak color #"red" d1 } r2 \bar "||"

  \clef "treble"
  { r32 c''32 b'16 a'8 g'4 \tweak color #"red" f'2 } |
  { r32 c''32 b'16 a'8 g'4 \tweak color #"red" e'2 } |
  { r32 c'''32 b''16 a''8 f''4 \tweak color #"red" e''2 } |
  { r32 c''32 b'16 a'8 f'4 \tweak color #"red" d'2 } |
  \time 2/4   
  \clef "bass"
  { r32 c'32 a16 f8 d4   \bar "||"

  \time 3/2
  \tweak color #"red" b,2_63 } { r16 c'16 g8 f4 e2 |
  \tweak color #"red" d2 } { r32 c'32 aes16 f8 ees4 \tweak color #"red" c2 } |
  \clef "treble"
  { r32 c''32 g'16 f'8 d'4 
    \tweak color #"red" c'16 } { g'16 f'8 d'4
    \tweak color #"red" b8 } \clef "bass" { r64 e'64 c'32 b16 a8 \tweak color #"red" f8 } |
  \time 4/4
  { r64 e'64 c'32 b16 g8 \tweak color #"red" e4 } \bar "||"
}

b-lh = {
  \partial 2 
  { r64 b64 a32 g16 f8 \tweak color #"red" d8 } { r64 b64 a32 g16 |
  f8 \tweak color #"red" e8 } r4 
    { r64 ees'64 des'32 c'16 aes8 \tweak color #"red" f8 } { r64 b64 a32 g16 |
  e8 \tweak color #"red" d8 } r8 { r64 b64 f32 d16 
    b,8 \tweak color #"red" g,8_95 } r8 { r32 b32 a16 |
  f8 d4 \tweak color #"red" b,8 } 
    { r32 d'32 bes16 g8 \tweak color #"red" 
    f64 } { d'64 a32 g16 e8 |
  \tweak color #"red" d64 } { b64 a32 f16 e8 
    \tweak color #"red" c64 } { g64 d32 bes,16 g,8 
    \footnote #'(-1 . 1) "A small caesura is acceptable before leaps" 
    \tweak color #"red" f,64 } { b64 a32 g16 f8 
    \tweak color #"red" e64_40 } { a64 e32 d16 b,8 |

  \tweak color #"red" g,64 } { g64 d32 c16 a,8 
    \tweak color #"red" f,64 } { c'64 g32 f16 d8 
    \tweak color #"red" b,64 } { c'64 g32 e16 d8 
    \tweak color #"red" c64 } { a64 e32 c16 b,8 |

  \tweak color #"red" a,128_71 } { g128 f64 d32 c16 \tweak color #"red" b,8_124 }
    { r64 g64 f32 d16 c8 
    \tweak color #"red" a,128 } { g128 f64 d32 b,16 \tweak color #"red" g,8 } 
    { r64 f64 e32 c16 a,8 |
  \tweak color #"red" f,64 } { b64 a32 f16 \tweak color #"red" d8 }
    { r64 d'64 a32 g16 e8 
    \tweak color #"red" c128 } { c'128 g64 f32 d16 \tweak color #"red" b,8 }
    { r128 f128 d64 c32 a,16 \tweak color #"red" g,8 } |
}

c-lh = {
  % \time 31/32
  { e256 d128 b,64 a,32 \tweak color #"red" f,16 } 
    { f256 e128 c64 b,32 \tweak color #"red" g,16 }
    { g256 f128 d64 c32 \tweak color #"red" a,16 }
    { a256 g128 e64 d32 \tweak color #"red" b,16 }
    { b256 a128 f64 d32 \tweak color #"red" c16 }
    { c'256 b128 g64 e32 \tweak color #"red" d16 }
    { c'256 b128 g64 f32 \tweak color #"red" e16 }
    { d'256 c'128 a64 g32 \tweak color #"red" f16 } |

  { b128 f64 d32 b,16 \tweak color #"red" a,8 } 
    { c'128 g64 e32 c16 \tweak color #"red" b,8 }
    { d'128 a64 f32 d16 \tweak color #"red" c8 }
    { e'128 b64 g32 e16 \tweak color #"red" d8 } |

  { c'64 b32 g16 f8 \tweak color #"red" e4 }
    { d'64 c'32 a16 g8 \tweak color #"red" f4 } | \bar "||"

  { b,256 a,128 fis,64 e,32 \tweak color #"red" c,16 }
    { c256 b,128 g,64 fis,32 \tweak color #"red" d,16 }
    { d256 c128 a,64 g,32 \tweak color #"red" e,16 }
    { e256 d128 b,64 a,32 \tweak color #"red" fis,16 }
    { fis256 e128 c64 a,32 \tweak color #"red" g,16 }
    { g256 fis128 d64 b,32 \tweak color #"red" a,16 }
    { g256 fis128 d64 c32 \tweak color #"red" b,16 }
    { a256 fis128 d64 c32 \tweak color #"red" b,16 } |

  { fis128 c64 a,32 fis,16 \tweak color #"red" e,8 }
    { g128 d64 b,32 g,16 \tweak color #"red" fis,8 }
    { a128 e64 c32 a,16 \tweak color #"red" g,8 }
    { b128 fis64 d32 b,16 \tweak color #"red" a,8 } |

  { g64 fis32 d16 c8 \tweak color #"red" b,4 }
    { a64 g32 e16 d8 \tweak color #"red" c4 } |
  
  \time 31/16
  { fis32 e16 c8 b,4 \tweak color #"red" a,2 } 
    { fis32[ e16 c8] a,4 \tweak color #"red" fis,2 } |
   
  { a,256 g,128 e,64 d,32 \tweak color #"red" bes,,16 }
    { bes,256 a,128 f,64 e,32 \tweak color #"red" c,16 }
    { c256 bes,128 g,64 f,32 \tweak color #"red" d,16 }
    { d256 c128 a,64 g,32 \tweak color #"red" e,16 }
    { e256 d128 bes,64 g,32 \tweak color #"red" f,16 }
    { f256 e128 c64 a,32 \tweak color #"red" g,16 }
    { f256 e128 c64 bes,32 \tweak color #"red" a,16 }
    { g256 f128 d64 c32 \tweak color #"red" bes,16 } | %m47
   
  { d256 c128 a,64 g,32 \tweak color #"red" ees,16 }
    { ees256 d128 bes,64 a,32 \tweak color #"red" f,16 }
    { f256 ees128 c64 bes,32 \tweak color #"red" g,16 }
    { g256 f128 d64 c32 \tweak color #"red" a,16 }
    { a256 g128 ees64 c32 \tweak color #"red" bes,16 }
    { bes256 a128 f64 d32 \tweak color #"red" c16 }
    { bes256 a128 f64 ees32 \tweak color #"red" d16 }
    { c'256 bes128 g64 f32 \tweak color #"red" ees16 } |
   
  { g,256 f,128 d,64 c,32 \tweak color #"red" aes,,16 }
    { aes,256 g,128 ees,64 d,32 \tweak color #"red" bes,,16 }
    { bes,256 aes,128 f,64 ees,32 \tweak color #"red" c,16 }
    { c256 bes,128 g,64 f,32 \tweak color #"red" d,16 }
    { d256 c128 aes,64 f,32 \tweak color #"red" ees,16 }
    { ees256 d128 bes,64 g,32 \tweak color #"red" f,16 }
    { ees256 d128 bes,64 aes,32 \tweak color #"red" g,16 }
    { f256 ees128 c64 bes,32 \tweak color #"red" aes,16 } |
   
  { c256 bes,128 g,64 f,32 \tweak color #"red" des,16 }
    { des256 c128 aes,64 g,32 \tweak color #"red" ees,16 }
    { ees256 des128 bes,64 aes,32 \tweak color #"red" f,16 }
    { f256 ees128 c64 bes,32 \tweak color #"red" g,16 }
    { g256 f128 des64 bes,32 \tweak color #"red" aes,16 }
    { aes256 g128 ees64 c32 \tweak color #"red" bes,16 }
    { aes256 g128 ees64 des32 \tweak color #"red" c16 }
    { bes256 aes128 f64 ees32 \tweak color #"red" des16 } |

  { g128 des64 bes,32 g,16 \tweak color #"red" f,8 } 
    { aes128 ees64 c32 aes,16 \tweak color #"red" g,8 }
    { bes128 f64 des32 bes,16 \tweak color #"red" aes,8 }
    { c'128 g64 ees32 c16 \tweak color #"red" bes,8 } |

  { aes64 g32 ees16 des8 \tweak color #"red" c4 }
    { bes64 aes32 f16 ees8 \tweak color #"red" des4 } |
  
  \time 31/16
  { g32 f16 ees8 c4 \tweak color #"red" bes,2 }
    { g32[ f16 ees8] c4 \tweak color #"red" aes,2 } |
  
  { g16 f8 des4 c2 \tweak color #"red" bes,1 } |
  { g16 f8 des4 c2 \tweak color #"red" aes,1 } |
}