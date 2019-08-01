\version "2.19.80"
%Score for quartet
%Started Fri June 10 14:28 CDT 2018
%Revised Sun June 17 00:02 EDT 2018 at Walden School

\include "definitions.ily"

\header {
  title = "IA, IA"
  subtitle = ""
  composer = "Z.V. Pine"
  tagline = ""
}%end header

%A Section 
violinOneA = \relative c'' {
  r1. r2. |
  r1. r2. |
  r1. \pontl <fis b\harmonic>2.\pp\< ~ \startTextSpan |
  <fis b\hm>2.\! ~ 
    \tastol\pontr\shrink #-1 \n<fis b\harmonic>1.\> \stopTextSpan\startTextSpan |

  <fis b\hm>2. r1.\! \stopTextSpan |
  r2. \tastol \lift #3 \n\HH b,4\<\glissando \startTextSpan \noHead {4 4 4 4 4 |
  \pontl\tastor \lift #3 \n4\pp\>\stopTextSpan\startTextSpan 4 4 
    4 4 4 4 \hh 4\stopTextSpan 4\! } |
  r2 \feathr { \n<ais\hm e>16\sept[(\< s <ais\hm e> <ais\hm e>] } 
    \pontr \lift #3.5 \shrink #-1 \n<ais\hm e>1.:32\p\>)\startTextSpan 
      <ais\hm e>2.:32\stopTextSpan | 

  r2.\! r2 \feathl { \n<f bes\hm>16\ord[(\< s <f bes\hm> <f bes\hm>] } |
  \pontr <f bes\hm>1.\mp \startTextSpan ~ \n<f bes\hm>2)\>\stopTextSpan r4\! |
    r4 \tastor \lift #2.5 \n <f es>2\startTextSpan\< ~ <f es>2.\! 
    \topGliss \hh <f es>4\stopTextSpan \glissando \noHead { <f es> <f es> } |
  \sq <f e>2. \acciaccatura {g,8} \sq \n<f' c'>1.\> |
  
  \sq <f c'>1. r2.\! |
  r1. s2. |
  r2. \n f''2.\ord(\< ~ f2 \feathr { f16[ s f f] } |
  f2.:32) << { <e f>1.:32\f\! | }
             { s2.\startTextSpan \tastol\pontr s2.\< \stopTextSpan\startTextSpan } >>

  <b f'>1.:32\ff\stopTextSpan <f b>1.:32\> |
  ges2.:32\f\> des2.:32 <des es,>2.:32 | 
  <des es,>2.:32 \n <des f,>1.:32\p\>
    r2\! \tastol\n \hh <b! f>4\< \glissando \startTextSpan |
  \noHead { 4 4 4\! 4 4 4 } \ordl\pontr \n <b f>2.\stopTextSpan\startTextSpan\> ~
    \sq <b f>\stopTextSpan ~ |
}%end violinOne

violinTwoA= \relative c'' {
  r1. r2. |
    \tastol\pontr \lift #2.5 \n <bes es\hm>1.\< \startTextSpan ~ 
    \once \tieDown \topGliss <bes es\hm>2. \stopTextSpan \glissando ~ |
  <bes f'\hm>2.\pp ~ \tastor <bes f'\hm>1. \startTextSpan ~ | 
  << { \n<bes f'\hm>1.\> r2.\! }
     { s2. s2. \stopTextSpan s2. } >> |

  \pontr \textin <c fis\hm>1.(_\sept\pp\< \startTextSpan  \textin <c fis\hm>2
    \feathr { <c fis\hm>16[ s <c fis\hm> <c fis\hm>] } |
  \feathl { <c fis\hm>16[\p\>\stopTextSpan <c fis\hm> s <c fis\hm>] }
    <c fis\hm>2 \topGliss <c fis\hm>1.\! \glissando ~ |
  \tastor \lift #4 \n <c f!\hm>1.\>)\startTextSpan r2.\!\stopTextSpan |
  r2.\! \pontr \shrink #-4.3 fis'1.:32\< \startTextSpan fis2.:32 \stopTextSpan |

  fis1.:32\p\< |
  \topGliss <fis\hm b,>1.:32\! \glissando \n<fis\hm cis>2.:32\> \startTextSpan | 
  \tastol\pontr \lift #5 \shrink #-3 <b,\hm fis>1.:32 \stopTextSpan\startTextSpan 
    <fis b\hm>2.:32 \glissando |
  \sq f1.\stopTextSpan r2.\! |
  
  r1. r2.|
  r2 \n bes,,4^\tasto(\< \feathr \hh { bes16[ s16 bes16 16] }
    \feathl \hh {\n bes16[\pp\> 16 s bes16] } \hH 4 \glissando \noHead { 4 \hh 4) } r4\! |
  \pontr \n cis'1.\< ~ \startTextSpan \n cis2.\f\> \stopTextSpan| 
  r2\! \feathl {\tastol\pontr \textin <fis, ais\hm>16[(\pp\< \startTextSpan
      <fis ais\hm>16 s <fis ais\hm>16] }
    <fis ais\hm>2.\f\< ~ <fis ais\hm>2)
    \feathr {\textin <fis b\hm>16([ s <fis b\hm>16 <fis b\hm>16] } |

  \n <fis b\hm>2.:32)\ff\> \stopTextSpan <e b'\hm>2.:32 
    <e ais\hm>2.:32 <dis ais'\hm>2.:32 |
  r2.\! \n <ais'\hm dis,>1.\< |
  <ais\hm dis,>2.\f\> \tastor \lift #2 <gis\hm dis>1.\p \glissando \startTextSpan
    \hH gis4\> \stopTextSpan \glissando \noHead { 4 4 } |
  \hH <gis dis'>4 \glissando \noHead { 4 \hh 4 } 
    \pontr \hh <fis dis'>4\! \glissando \startTextSpan \noHead { 4 4 4 4 4 } 
    \sq \n <fis dis'>2.\> \stopTextSpan |
}%end violinTwo

violaA = \relative c {
  \tastol \lift #2.7 \n \HH cis'4\< \glissando \startTextSpan \noHead {4 4 4 4 4 
    \pontl\tastor 4 \stopTextSpan\startTextSpan  4 4 |
  \noAcc 4 4 \hh 4} \hh <dis fis,>4\fp\glissando\stopTextSpan \noHead { 4 4 4 4 4 |
  \noAcc \pontr 4\startTextSpan 4 4 4 4 4 } \sq \noAcc <dis fis,>2.\stopTextSpan ~|
  \noAcc \square <dis fis,>2.~ \noAcc \sq \n <dis fis,>2\> r4\! r2. |

  r1. \n \hH f4\<^\markup{\raise #1.5 S.T.} \glissando \noHead { 4 4  |
  4\p\> 4 } \topGliss \pontr \hh <f aes>4\pp \glissando \startTextSpan 
    \noHead { 4 4 4 4 4 4 } |
  \square <f aes>1.\>\stopTextSpan ~ \tastor \sq <f aes>2.\!\startTextSpan ~ | 
  \noAcc \sq \n <f aes>1.\>\stopTextSpan r1.\! |

  r4 \ordl\tastor e,2\fp\< \startTextSpan ~ e2. \glissando | 
  \feathr { \textin dis16[(\!\stopTextSpan s dis 16 dis] } 
    \pontr dis2:32)\startTextSpan 
    << { \n dis2.:32\>} {s2 s8\stopTextSpan}>> r2.\! |
  \n <c fis\hm>2.\sept\< ~ <c fis\hm>1.\f ~ |
  \n <c fis\hm>1.\> r2.\! |

  r2. \tastol\ordr \lift #1.2 \n \Hh #-3 gis'4\< \startTextSpan \glissando 
    \noHead { 4 \hh 4 } 
    \topGliss \HH <gis fis>4 \glissando \noHead { 4 \hh 4 } |
  <gis fis>2. \stopTextSpan ~ \topGliss <fis gis>4\glissando
    \feathl { <e a\hm>16[(\pp\> <e a\hm>16 s <e a\hm>]} <e a\hm>4 
    \pontr <e a\hm>2.\! \startTextSpan ~ |
  <e a\hm>2.)\stopTextSpan\< \glissando \topGliss <f! c'\hm>2.\glissando ~
    <f bes\hm>2. |
  \ordl\pontr b'!2.(\f \startTextSpan \feathr {b16[\stopTextSpan s b16 b ]}
  <b cis>1:32)\<\glissando <aes d>4:32 |

  \clef "treble"
  \n <aes d>2.:32\ff\> <ges es'>2.:32 <ges es'>1.:32 | 
  r2.\! \n <ges e'>1.\< | 
  <ges e'>2.\f\> \glissando 
    <aes des>1.(\p \startTextSpan ~ <aes des>2.\> \glissando |
  \tastol\pontr \hh <aes des>4\stopTextSpan\startTextSpan \glissando
    \noHead {4 4 4 4 4 } \n \sq <aes des>1.)\> \stopTextSpan |
}%end viola

celloA = \relative c {
  r1. r2. | 
  r2. \acciaccatura {f8} \hH cis'4^\markup{\raise #2.5 S.T.}\ppp\< \glissando 
    \noHead { 4 4 4 4 4 |
  \pontr \noAcc 4\pp \startTextSpan 4 4 } \hh <cis f,!>4 \glissando \noHead { 4 4 4 4 4 }
  \square \n <c f,>2.\>\stopTextSpan ~ \sq <c f,>1.~ | 

  <c f,>2. r1.\! |
  r1. r2 \n \feathl \hh { \tastol\ordr aes16\startTextSpan[(\< aes s aes] } |
  \HH aes4\pp \glissando \noHead { 4 4 4 4 4 4 4 \hh 4\stopTextSpan } |
  <aes d!\hm>1.)\sept \glissando \n \square aes1.\> |

  r2.\! \n \hH ais4\< \startTextSpan \glissando \noHead { 4 4 |
  \noAcc 4 }
    \tastol\pontr \hh <ais cis,>4\mp \stopTextSpan\startTextSpan \glissando \noHead { 4 
    4 4 4 } 2.\stopTextSpan \glissando |
  \once \tieUp \n \square <a c,>1.\> ~ \sq <c, f,>2.~ | 
  \sq <c f,>2. ~ \sq 1. |

  r1.\! r2. |
  r2. \tastol\ordr \n \hh gis'4\< \glissando \startTextSpan \noHead { 4 4 4 4 4 } | 
  gis2.( \stopTextSpan\! <gis ais,>2. ~ <gis ais,>2
    \feathr { <gis ais,>16[\< s <gis ais,> <gis ais,>] }
  <gis ais,>1.:32)\glissando \pontr <e gis,>2:32\f\< \startTextSpan <c! fis,>4:32 |

  <b dis,>1.:32\ff \stopTextSpan << { <b dis,>1.:32\> | }
                              { \ordr \shrink #-2 s2.\startTextSpan s2 s4\stopTextSpan } >>
  dis1.:32\f\> dis2.:32\glissando |
  d!1.:32 \tastor cis1.:32\p \glissando \startTextSpan 
  \n \Hh #-3 cis4:32\> \glissando \noHead { 4 4 4 4 4 4\stopTextSpan 4 \hh 4 } r2.\! |
}%end cello

%B Section
violinOneB = \relative c'' {
  \sq <b f>2. r2\! r2. \feathr { \pontl\tastor \n c16[(\< \startTextSpan s c c] } |
    \feathl { \n c16[\> c s c] } c2)\stopTextSpan 
    r2.\! r2 \n <f, bes\hm>4^\markup{\raise #1 "N"}\< |
  <f bes\hm>1.:32\!\glissando \n \sq d2.:32)\> |
  \sq d2.:32 r2.\! |

  r1. r2 \feathr {\pontl\tastor \n d'16[(\< \startTextSpan s d d] } |
  \feathl \hh { d16[ d s d]~ } \n d2)\>\stopTextSpan r2.\! r4 \n <g, d'\hm>2\< ~ | 
  \n <g d'\hm>1.^\markup{\raise #2 N}\mf\> ~ <g d'\hm>2. ~ |
  <g d'\hm>2. r4\! \n \Hh #-3 fis'4\tasto\< \glissando \noHead { \hh 4 }|
  
  \pontr \n \hh fis4\> \glissando \startTextSpan \noHead { 4 4 4 4 4 }
    \sq fis2. \stopTextSpan r2.\! |
  r2.
    \topGliss <cis fis\hm>1.\p\< ~ \glissando | 
  \topGliss <cis gis'\hm>2. ~ \topGliss \once\tieDown <cis gis'\hm>1.\f\glissando ~ |
  \n <cis g'\hm>1.\sept\> ~ <cis g'\hm>2.~ |
}%end violinOne

violinTwoB = \relative c' {
  r1.\! r2 \pontl\tastor \feathr { \n fis16([\<\startTextSpan s fis16 16] } |
  \feathl { \n fis16[\> 16 s fis16])\stopTextSpan } r2\! r1. |
  r1. r2. 
  r1. |

  r1. r2 \pontl\tastor \feathr { \n aes16([\< \startTextSpan s aes16 16]} |
  \feathl { aes16[ aes s aes16] } \n \HH aes4)\> \stopTextSpan 
    \glissando \noHead { \hh 4 } 
    r2.\! r2 
      \topGliss \once\tieDown \n <aes des\hm>4^\markup {\raise #2 N}\pp\< \glissando ~  |  
  \pontr \lift #2.5 <aes es'\hm>1.\startTextSpan ~ 
    \once\tieDown \topGliss <aes es'\hm>2.)\! \stopTextSpan \glissando ~ |
  \n <aes d!>1.\>\sept |
  
  r1.\! r4 \ordr \n \sq gis4(\< \startTextSpan  \feathr {\sq 16[ s \sq gis16 gis16] } 
     \sq gis2.:32) \glissando |
  gis1.:32\stopTextSpan 
    gis2.:32\mf\startTextSpan \topGliss | 
  <gis\hm cis,>2.:32 \glissando 
    \pontl\tastor \n \HH gis4:32\> \glissando \stopTextSpan\startTextSpan \noHead { 4 4 4 4 \hh 4 } |
  r1.\!\stopTextSpan \n dis2.^\markup{\raise #1.2 N}\< ~ |
}%end violinTwo

violaB = \relative c' {
  \clef "alto" \acciaccatura {s8\!} r1. 
    r2 \pontl\tastor \feathr { \n f16[(\< \startTextSpan s16 f f]  } |
  \feathl { \n f16\mp\>[ f s16 f])\stopTextSpan } r2\! 
    r2. r2 \feathr { \n fis16^\markup{\raise #2 N}[(\< s fis fis] } |  
  \n fis1.:32)\> r2.\! |
  r1. |

  r1. r2 \pontl\tastor \feathr { \n fis16[(\< \startTextSpan s16 fis fis] } |
  \feathl { fis16[\mf fis s fis] } 
    \n \hH fis4)\>\stopTextSpan \glissando \noHead { \hh 4 } r2.\! 
    r2 \n fis4^\markup{\raise #2 S.P.}\< ~ |  
  \n fis1.\p\>\glissando \sq fis2.~ |
  \sq \noAcc <fis b,>2. r2.\! |
  
  r1. r4 \n \sq g(\<\startTextSpan \feathr { \sq g16[ s \sq g g] } 
    \sq g2.:32) \glissando |
  \ordl\pontr \lift #3.1 g1.:32 \stopTextSpan\startTextSpan 
    \once\tieDown \topGliss <c, g'\hm>2.:32\mf\stopTextSpan \glissando ~ |
  <c f\hm>2.:32 \tastor \lift #2.5 \n <c f\hm>1.:32\>\glissando\startTextSpan |
  \hH c4:32 \glissando \noHead {4 4 4 4 \hh 4\stopTextSpan } r2.\! |
}%end viola

celloB = \relative c { 
  \acciaccatura {c,8} \ordl\pontr fis1.\pp \startTextSpan ~ fis2.\< |
  \repeat tremolo 12 { gis'32\mp\stopTextSpan cis,\harmonic }
    \repeat tremolo 12 { \tastor gis'32\startTextSpan cis,\harmonic }
    \repeat tremolo 12 { gis'32 cis,\harmonic } |
  gis'4\stopTextSpan ~ \pontr <gis b,>2~\startTextSpan <gis b,>2. \glissando \n \sq <gis b,>2.\> ~| 
  \sq <gis b,>2. r2.\!\stopTextSpan |

  \acciaccatura {c,,8} \ordl\pontr ais'1.\pp \startTextSpan ~ ais2.\< |
  \repeat tremolo 12 { b'32\mp\stopTextSpan e, }
    \repeat tremolo 12 { \tastor b'32\startTextSpan e, }
    \repeat tremolo 12 { b'32 e, } |
  b'4\stopTextSpan ~ \pontr <b d,>2~\startTextSpan <b d,>2. \glissando \n \sq <b d,>2.\> ~| 
  \sq <gis b,>4:32 r2\!\stopTextSpan r2. |

  \acciaccatura {c,,8} \ordl\pontr cis'1.\pp\< \startTextSpan ~ <fis\hm cis>1.\<\glissando |
  \repeat tremolo 12 {<ais\hm dis,>32\stopTextSpan dis,32 }
    \repeat tremolo 12 {\tastor <ais'\hm dis,>32\startTextSpan dis,32 }
    \repeat tremolo 12 {<ais'\hm dis,>32\! dis,32 }
  ais'4:32\stopTextSpan ~ <ais cis,>2:32\> <ais cis,>1.:32 \glissando |
  \tieUp \n \sq <a c,>1.:32~ \sq <c, f,>2.:32 | 
  \tieNeutral

}%end celloB

violinOneAA = \relative c'' {
  <cis g'\hm>2. r2.\! |
  \topGliss <b e\harmonic>1.^\markup{\raise #1.5 N}\pp\< \glissando ~ |
  \tastor <b fis'\harmonic>1.\fp\startTextSpan 
  \n \HH fis'4\>\stopTextSpan \glissando \noHead {4 \hh 4} | 
  \hh eis4 r2\! r2. |

  \n \ordl\pontr \lift #2 \leften #10 <f, b!\harmonic>1.\sept\< \startTextSpan ~ |
  <f b\harmonic>2. ~ <f b\harmonic>2.)\stopTextSpan \glissando ~ 
  \ordr \lift #2.5 <f cis'\hm>1.\> \glissando\startTextSpan |
  fis2. r1.\! \stopTextSpan | 
  
  << { \n c''1.\< ~ | }
     { \tastor s2. \startTextSpan s2 s8. s16\stopTextSpan }>>
  c2.\! bes,2.(\> ~ |
  aes1.\!\glissando \n \sq aes2.\> | 
  r1.\! |
  
}%end violinOne

violinTwoAA= \relative c' {
  \tastor dis1.\pp\startTextSpan \glissando |
  \HH dis4\stopTextSpan \glissando \noHead { 4 4 4\< 4 4 |
  \noAcc 4 4 \hh 4 } \pontr \hh <fis ais,>4\mf\startTextSpan \glissando 
    \stemDown \noHead { 4 4 4 4 4  } \stemNeutral
  << {\n \square <fis ais,>1.\> }
     { s2. s4\stopTextSpan }>> |

  r2.\! r4 \n <bes, d\hm>2^\markup{\raise #1.5 N}\<~ |
  \pontr \lift #2.5 <bes d\hm>1.\startTextSpan
  \topGliss <bes f'\hm>2.\mp \stopTextSpan \glissando ~ <bes e!\hm>2.\sept ~ |
  \n <bes e\hm>1.\> r2.\! |

  r2. \n \tastol\ordr \shrink #-9 \Hh #-11.6 e''4\< \glissando \startTextSpan 
    \noHead {4 \hh 4 \stopTextSpan} | 
  \pontr \leften #-2 e1.\!\startTextSpan ~ |
  e2.\<\glissando \n f2.\mf\> \glissando \sq f2.\stopTextSpan 
  r1.\! |
}

violaAA = \relative c {
  r1. | 
  r2. \acciaccatura {f8} \hH cis'4\p \glissando \noHead { 4 4 |
  \noAcc 4 4 4 } \pontr \shrink #-13.5 \hh <cis f,>4 \glissando \startTextSpan 
    \noHead { 4 4 4 4 4 }
  \n \square <c f,>1.\> \stopTextSpan  ~ | 

  \sq <c f,>1.|
  r2.\! r2 \n aes4\ord\< ~ |
  aes2.) <aes d!\hm>2.\mp\sept~ |
  <aes d\hm>1.\> r2.\! |

  r2.\! r2 \feathl { \n gis16[(\< gis s gis] } |
  gis2.)\! ~ \n <gis dis'\hm>2.\> |
  r1.\! \acciaccatura {c,8} \clef "treble" fis''2.\mf |
  f!2. ~ <f g>2.~ |

}%end viola

celloAA = \relative c, {
  r1.\!
  r1. |
  r1. \n <fis b\harmonic>2.\ord\<~ |
  <fis b\harmonic>2\pp\> r4\! r2. |

  r1. |
  r2. \n b2.\< ~|
  <b e\hm>1.\! |
  \n <b\hm fis>2.)\> r1.\! |

  \once \tieDown \n bes1.\<~
  <bes f'\hm>1.\mp 
  \acciaccatura {cis,8} \lift #1.5 fis'1.\startTextSpan 
    \tastol\pontr fis2.\stopTextSpan\startTextSpan\glissando
  << { \sq fis1. }
     { s2. s\stopTextSpan} >> |

}%end cello

violinOneBB = \relative c'' {
  \n f2.\< ~ <f es>1.\pp | 
  e1.:32  \once \tieDown <bes es\hm>2.~\< | 
  bes2.)\!\glissando \n \HH bes4\tasto\> \glissando \noHead{ 4 4 |
  \noAcc 4 4 \hh 4 } r1.\! |

  r1. |
  r1. |
  \once \tieDown \n fis1.~\ord\< |
  <fis b\hm>1.\!~ |

  \n <fis b\hm>2.\> r1.\! |
  r1. r2. | 
  %\time 6/4
  r2 <a e'\hm>4\pp\<~ <a e'\hm>2. |
  <a e'\hm>2.:32\f <a d\hm>:32 |  
}
violinTwoBB = \relative c'' {
  r1. r2. |
  r1. r2. |
  r1. |
  r1. r4 \n g'8\ord\II(\pp\< g \tuplet 3/2 {g[ g g] }|

  \tuplet 3/2 { g\! g g~ } <g aes,>2) <ges aes,>2.~ |
  <ges aes,>2.\startTextSpan\>~ 
    \HH <ges aes,>4\!\tasto\stopTextSpan \glissando \noHead { \noAcc 4 \hh 4 }
  \hh aes,4~ \hh <aes f'>4\! \glissando \stemDown \noHead { 4 4 4 4 }|
  \n \sq <a f'>1.\> | \stemNeutral


  r1.\! r2. |
  r1. r2. |
  r2. \acciaccatura {<g, d'>8} f''2.:32\tasto\mp |
  \repeat tremolo 12 {f32 b,} \repeat tremolo 12 {f'32 b,} | 

}
violaBB = \relative c'' {
  <f g>1. \n fis2.\p\> |  
  r2.\! \clef "alto" 
    \repeat tremolo 12 { \n e32\< gis,} \repeat tremolo 12 {e' gis,} |
  \repeat tremolo 12 {\n <e'\hm b>\p\> <gis,\hm dis>} |
    \repeat tremolo 12 {<e'\hm b> <gis,\hm dis>} 
  r2.\! r1. |

  r1. |
  \feathl {\n <bes\hm es,>16[(\< <bes\hm es,>16 s <bes\hm es,>]} <bes\hm es,>2
    <bes\hm es,>2.~ |
  \n <bes\hm es,>2.)\> r2.\! |
  r2. r4 \n a2:32\pont\<|

  a1.:32\! gis2.:32 | 
  gis2.:32 <gis cis\hm>1.:32) 
  \tastor gis1.:32\startTextSpan 
  \n <gis fis>2.\>\stopTextSpan r2.\! |

}%end violaBB
celloBB = \relative c{
  r1. r2. |
  r1. r2. |
  r1. |
  r1. \ordr \leften #10 \n <c fih\hm>4(\sept\< \startTextSpan  
    <c fih\hm>8[ <c fih\hm>] 
    \tuplet 3/2 { <c fih\hm> <c fih\hm> <c fih\hm> } | 

  \tuplet 3/2 { <c fih\hm>8(\! <c fih\hm> <c fih\hm>8 } 
    \topGliss <c fih\hm>2)\stopTextSpan \glissando 
    <c f\hm>2) 
    \feathr {ges16[\< s ges ges]} |
  \pontr \feathl { f''16([\!\startTextSpan f s f] } f2~ f4 e2~ |
  \n e2. \n \sq e\stopTextSpan\>) |
  r1.\! |

  \acciaccatura {g,,8} \repeat tremolo 12 {\n <aes'\hm des,>32\ord\f\> <des,\hm ges,>} 
    \repeat tremolo 12 {\lift #1 \tastor f\startTextSpan b,} 
    \repeat tremolo 4 {\hh f' \hh b,} |
    \repeat tremolo 4 {\hh f' \hh b,} |
    \repeat tremolo 4 {\hh f'\stopTextSpan \hh b,} |
  \hh f'4( \HH bes,4 \glissando \noHead {\hh 4) } r2.\! 
    r2 \n bes4(\< ~ |
  \n bes2.\p\> \glissando \sq bes2. |
  r2.\! \n es,2.\< |
}

violinOneCoda = \relative c''  {
  \feathl { <g c\hm>16[ <g c\hm> s <g c\hm>] } <g c\hm>2\sp~ <g c\hm>1.\< |
  <g d'\hm>1.\>~ <g d'\hm>2.\p\< |
  <gis cis\hm>1.\>~ \n <gis cis\hm>2.\pp\>~ |
  <gis cis\hm>2. r1.\! |
}%end violinOneCoda

violinTwoCoda = \relative c'' {
  \feathl {cis16([ s cis cis]} b2~\> b2.)\! c2.( |
  c2.\startTextSpan ~ c2\>\tuplet 3/2 \hh { c8\tasto(\p\<\stopTextSpan c c)} 
    \tuplet 3/2 \hh{ c(\! c c)} \Hh #-2 c4 \glissando \noHead { 4 |
  4\> 4 4 4 4 \hh 4 } \n \Hh #-3 des4\pp\> \glissando \noHead { 4 4 |
  \noAcc 4 4 4 4 4 \hh 4 } r2.\! |

}%end violinTwoCoda

violaCoda = \relative c' {
  \time 9/4
  r2. \once \tieUp \sq d1.\p\< ~ |
  \sq <d g,>2.\! ~ \sq<d g,>2 
    \tuplet 3/2 {\sq <d g,>8\< \sq 8 \sq 8}
    \tuplet 3/2 \hh {<f aes,>8 8 8 } \Hh #-3 <f aes,>4\! \glissando \noHead { \hh 4} |
    <es\hm bes>1.\ord~ <es\hm bes>2.\glissando |
    \pontr <d!\hm aes>1._\sept\startTextSpan ~ <d\hm aes>2.\stopTextSpan |
}%end violaCoda

celloCoda = \relative c, {
  es2.\! ~ es2.\glissando d2.~ |
  d2.~ d2.\glissando cis2. ~ |
  cis1.\> \n c2.\pp\>~ |
  c1. r2.\!  |

}%end celloCoda
timecode = {
  \set Score.markFormatter = #format-mark-box-alphabet
  \tempo 4 = 60
  \time 9/4 s1. s2. | s1. s2. | s1. s2. | s1. s2. |

  s1. s2. | s1. s2. | s1. s2. |
  \time 12/4 s1. s2. s2. |

  \time 6/4 s1. |
  \time 9/4 s1. s2. | s1. s2. | s1. s2. |

  \acciaccatura {s8} s1. s2. | s1. s2. | s1. s2. |
  s1. s2. |

  \time 12/4 s1. s2. s2. | 
  \time 9/4 s1. s2. | 
  \time 12/4 s1. s2. s2. | 
  s1. s2. s2. |

  \time 9/4 \acciaccatura {s8} s1. s2. | s1. s2. | s1. s2. |
  \time 6/4 s1. | 
  \time 9/4 \acciaccatura {s8} s1. s2. | s1. s2. | s1. s2. | 
  \time 6/4 s1. |
  \time 12/4 \acciaccatura {s8} s1. s1. | 
  \time 9/4 s1. s2. |s1. s2. | s1. s2. |

  \time 6/4 s1. | s1. |
  \time 9/4 s1. s2. |
  \time 6/4 s1. | s1. | s1. | s1. |
  \time 9/4 s1. s2. |
  \time 6/4 s1. | s1. |
  \time 9/4 \acciaccatura {s8} s1. s2. |
  \time 6/4 s1. |
  \time 9/4 s1. s2. | s1. s2. |
  \time 6/4 s1. |
  \time 9/4 s1. s2. |
  \time 6/4 s1. | s1. | s1. | s1. |
  \time 9/4 \acciaccatura {s8} s1. s2. | s1. s2. |
  \time 6/4 s1. | s1. |
  \tempo 4 = 50
  \time 9/4 s1. s2. | s1. s2. | s1. s2. | s1. s2. |
  \bar "|."
}

#(set-global-staff-size 18)
\book {
  \paper {
    #(set! paper-alist (cons '("ipad" . (cons (* 8.64 in) (* 4.86 in))) paper-alist))
    #(set-paper-size "letter")
    top-margin = 0.7\in
    left-margin = 0.7\in
    right-margin = 0.7\in
    bottom-margin = 0.7\in
    indent = 0.3\in

    system-system-spacing = 
      #'((basic-distance . 10)
         (minimum-distance . 0)
         (padding . 3 )
         (stretchability . 10))
 
    markup-system-spacing = 
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . 3 )
         (stretchability . 1))
       

    %{
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'page:page-number-string
      }
    }
    evenFooterMarkup = \oddFooterMarkup
    %}
  }
  \score {
    \pointAndClickOff 
    \new StaffGroup \with {
      \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 10)
                                                      (padding . 4)
                                                      (stretchability . 20))
    }<<
      \new Staff \with { 
        instrumentName = #"Vln1"
        shortInstrumentName = #""
      }{
        <<{
        \spannerStyle

        \clef "treble"
        \violinOneA
        \violinOneB
        \violinOneAA
        \violinOneBB
        \violinOneCoda
        }{
        \timecode
        }>>
      }
      \new Staff = "violinTwo" \with { 
        instrumentName = #"Vln2"
        shortInstrumentName = #""
      }{
        \spannerStyle
        \clef "treble"
        \violinTwoA
        \violinTwoB
        \violinTwoAA
        \violinTwoBB
        \violinTwoCoda
      }
      \new Staff = "viola" \with { 
        instrumentName = #"Vla"
        shortInstrumentName = #""
      }{
        \spannerStyle
        \clef "alto"
        \violaA
        \violaB
        \violaAA
        \violaBB
        \violaCoda
      }
      \new Staff \with { 
        instrumentName = #"Vc"
        shortInstrumentName = #""
      }{
        \spannerStyle
        \clef "bass"
        \celloA
        \celloB
        \celloAA
        \celloBB
        \celloCoda
      }
    >>
  }%end score
}%end bookpart

\layout {
  \context {
    \Score
%	proportionalNotationDuration = #(ly:make-moment 1/1)
%	\override Score.SpacingSpanner.strict-note-spacing = ##t
  }
}%end layout
