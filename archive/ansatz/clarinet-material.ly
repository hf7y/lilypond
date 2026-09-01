\version "2.24.3"

\include "composition-functions.ly"
\include "woodwind-functions.ly"

a-cl = {
  \tag #'(clarinet tmi) { \override Score.GraceSpacing.spacing-increment = #3.0 }
  \partial 2 
  r2
  \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 1) } #(roche 1 1)~\pp  | 
  #(roche 1 #{2.#}) r4\! | 
  \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 2) } #(roche 2 1)~ |
  #(roche 2 #{2.#}) r4\! | %m5

  \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 2) }#(roche 2 2) r2 |
  \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 3) } #(roche 3 2) r2 | 
  % \tag #'(clarinet tmi) { \break }
  \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 1) } #(roche 1 1)\p~ | %m8
  d2 %\bar "||"

  %phrase 2
  r2 |
  R1 |
  r2 #(roche 2 2)\pp~  |
  #(roche 2 1) |
  \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 3) } #(roche 3 1) | 
  e1\p | d,1 | %m15
  R1 |

  r2 f2~\pp | 2 r4 g4\< | 
  e4 \tag #'(clarinet tmi) \grace { 
    s1 s1-\markup \with-dimensions-from \null { 
            \translate-scaled #'(0 . -0.5) #(diagram-markup 5) } } #(roche 5 #{2.#})_~\p |
  e2 r4 f4\pp_( |
  \tag #'(clarinet tmi) \grace { 
    s1 s1 -#(diagram 3) } #(roche 3 #{2.#})) r8 f'(\< |
  e'2 #(roche 5 2)\p)\< |
  \time 3/2 
  \tag #'(clarinet tmi) \grace { 
    s1 s1 -#(diagram 2) } #(roche 2 #{1.#})\f  | %\bar "||"
  \tag #'(clarinet tmi) { \allowPageTurn }

  %phrase 2 
  \time 4/4
  R1 | 
  \tag #'(clarinet tmi) { \allowPageTurn }
  \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 2) } 
    #(roche 2 4)(\p  #(roche 2 4) 
    #(roche 2 4)) r4 |
  \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 3) } 
    #(roche 3 4)(\<  #(roche 3 4)
    #(roche 3 4)) c''4( |
  4 4 4)\f r4 | %m27
  \time 2/4 e,4\p  e4 |

  %phrase 4
  b,4 c |
   r4 d'4\< | %m30
  e'4 fis'8 8 | 
  % \time 4/4 g8 g e e) \bar "||"
  \tag #'(clarinet tmi) { \revert Score.GraceSpacing.spacing-increment }
}

b-cl = {
  \partial 2
  g'4\f d4:32~ \tag #'clarinet ^\markup { \italic "flz." }\p |
  8:64 e4.:32~ 4:32 f4~\pp \tag #'clarinet ^\markup { \italic "ord." } |
  8 d4.~ 8 g,4.:32~\p\< \tag #'clarinet ^\markup { \italic "flz." } |
  4.:32 b,8~:64 4:32 f,4:32 |
  d4:32\f r4 f,8\p \tag #'clarinet ^\markup { \italic "ord." } f e4 |
  g,4 f,8\< d b,4 c8 b, |
  a,8 b,8 r4 a,8 g,8\f r4 |
  \tag #'(clarinet tmi) { \allowPageTurn }
  f,8:64\<\tag #'clarinet ^\markup { \italic "flz." } d8:64 r4 c8:64 b,8:64 a,8:64 g,8:64\ff |
}

c-cl = {
  % \time 31/32
  % \tag #'(clarinet tmi) { \newSpacingSection }
  % \tag #'(clarinet tmi) \break
  \mark #3
  % \crossStaff
  {
    \tag #'(clarinet tmi) { \break }
    \transpose c c' {
      \override TextScript.layer = #10
      \hideRest r32... \tag #'clarinet _\markup { \whiteout \lower #3 \pad-markup #0.3
                                        { "always unison with harpsicord l.h." } }
          f,16\pp
        \hideRest r32... g,16
        \hideRest r32... a,16
        \hideRest r32... b,16
        \hideRest r32... c16\<
        \hideRest r32... d16
        \hideRest r32... e16
        \hideRest r32... f16\p |
    }

    \hideRest r16... a,8 
      \hideRest r16... b,8
      \hideRest r16... c8
      \hideRest r16... d8 |

    \hideRest r8... e4\<
      \hideRest r8... f4\f | %\bar "||"

    \hideRest r32... c,16\p
    \hideRest r32... d,16
    \hideRest r32... e,16
    \hideRest r32... fis,16
    \hideRest r32... g,16\<
    \hideRest r32... a,16
    \hideRest r32... b,16
    \hideRest r32... b,16\f | %m43

    % \tag #'(clarinet tmi) { \break }

    \hideRest r16... e,8\p
      \hideRest r16... fis,8
      \hideRest r16... g,8
      \hideRest r16... a,8 |

    { \hideRest r16.. c8\<( b,4) }
      { \hideRest r16.. d8( c4)\f } |
    
    % \tag #'(clarinet tmi) \break
    \time 31/16
    { \hideRest r16. c8 b,4 a,2 } 
      { \hideRest r16. c8\> a,4 fis,2\p } | %m46
    
    \tag #'(clarinet tmi) { \allowPageTurn } 
    % \tag #'(clarinet tmi) \break
    % \tempo "Faster"
    
    { s32... bes,,16\f\>
        \hideRest r32...   c,16
        \hideRest r32... d,16
        \hideRest r32... e,16
        \hideRest r32... f,16
        \hideRest r32... g,16 } %end pushNCs
      \hideRest r32... a,16
      \hideRest r32... bes,16\p | %m47
     
    \transpose c c' {
      \hideRest r32...  ees,16\f\>
        \hideRest r32... f,16
        \hideRest r32... g,16
        \hideRest r32... a,16
        \hideRest r32... bes,16
        \hideRest r32... c16
        \hideRest r32... d16
        \hideRest r32... ees16\p | %m48
    }
     
    \transpose c c' {
      \hideRest r32... aes,,16\f\>
        \hideRest r32... bes,,16
        \hideRest r32... c,16
        \hideRest r32... d,16\p
    }
      \hideRest r32... ees,16\f\>
      \hideRest r32... f,16
      \hideRest r32... g,16
      \hideRest r32... aes,16\p |

    \hideRest r32... des,16\ff\>
      \hideRest r32... ees,16 
      \hideRest r32... f,16
      \hideRest r32... g,16 
      \hideRest r32... aes,16
      \hideRest r32... bes,16 
      \hideRest r32... c16 
      \hideRest r32... des16\f

    \tag #'(clarinet tmi) \break
    \hideRest r32.. g,16  f,8
      \hideRest r32.. aes,16  g,8
      \hideRest r32.. bes,16  aes,8
      \hideRest r32.. c16  bes,8 |

    \hideRest r32. ees16\> des8  c4
      \hideRest r32. f16 ees8  des4\! |

    % \dynamicNeutral
    % \tag #'(clarinet tmi) \break  
    \time 31/16
    s32 f16[\p ees8] c4  bes,2
      s32 \transpose c c' { f16[\> ees8] c4  aes,2 | }
    
    \tag #'(clarinet tmi) { \break }
    \transpose c c' { g16[\pp f8] des4 c2 
      \tag #'(clarinet harpsichord flute) { bes,1\> }
      \tag #'downStem { s1 }
    } |
    { g16[ f8] des4 c2 
     \tag #'(clarinet harpsichord flute) { aes,1\ppp } 
      \tag #'downStem { s1 } }
     |
  } %end cross staff
}