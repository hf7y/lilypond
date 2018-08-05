\version "2.19.80"
%Score for quartet
%Started Fri June 10 14:28 CDT 2018 at 527 N Dodge St IA, IA
%Revised Sun June 17 00:02 EDT 2018 at Walden School
%Revised Sun July 1  23:59 CDT 2018 at 315 Ronalds St IA, IA

\include "definitions.ily"

\header {
  title = "IA, IA"
  subtitle = "for string quartet"
  composer = "Z. V. Pine"
  tagline = ""
}%end header

%A Section 
violinOneA = \relative c'' { 
  r1. r2. |
  r1. r2. |
  r1. \pontl <fis b\hm>2.\< ~ \startTextSpan |
  << { <fis b\hm>1. ~   } 
     {  s2. \n s2.\p\> } >>
        \tastol\pontr \lift #'4 \n <fis b\hm>2. \stopTextSpan\startTextSpan ~ |

  <fis b\hm>2. r1.\! \stopTextSpan |
  r2. \tastol \n\hH b,4\<\glissando \startTextSpan \noHead {4 4 4 4 4 |
  \pontl\tastor \n b4\pp\> \stopTextSpan\startTextSpan 4 4 4 4 4 
    4 4 \hh 4\! \stopTextSpan } |
  r2 \feathr { \n<e, bes'\hm>16\sept[(\< s <e bes'\hm> <e bes'\hm>] } 
    << { \slurDashed \n<e bes'\hm>1.:32\p\>)( <e bes'\hm>1.:32) | }
       { s2. \pontr s4\startTextSpan s2 s2. s2 s4\stopTextSpan } >> \slurSolid

  r2.\! r2 \feathl { \n<f bes\hm>16\ord[(\< s <f bes\hm> <f bes\hm>] } |
  \pontr <f bes\hm>1.\mp \startTextSpan ~ <f bes\hm>2)\>\stopTextSpan r4\! |
  \topGliss \lift #'2.4 <f es>1.\< \startTextSpan\glissando 
    \topGliss \tastol\pontr \lift #'2.4 \hh <f es>4\! \stopTextSpan\startTextSpan \glissando 
      \noHead { <f es> <f es> } |
  \sq <f e>2.\stopTextSpan <<  { \acciaccatura {g,16} \sq \n<f' c'>1. ~ | }
                               { s8 \n s\> } >>
  
  \tastor \sq <f c'>1.\startTextSpan r2.\! \stopTextSpan |
  r1. s2. |
  r2. \ordl\pontr \shrink #'3.9 \n f''2.(\< \startTextSpan ~ 
    f2 \feathr { f16[ \stopTextSpan 
                 \shrink #-2.5 \lift #6.6 s\startTextSpan f f] \stopTextSpan } |
  << { \slurDashed f2.:32)(\mf <e f>1.:32) | }
     { \leften #-7 \shrink #2 s2.\startTextSpan \tastol\pontr s8\stopTextSpan\startTextSpan
                                                                 s8\< s2 s2.\f\< } >>

  <bes f'>1.:32(\ff\stopTextSpan \ordr <aes f'>1.:32\>) \startTextSpan |
  <ges f'> 2.:32\f(  <ges es'>2.:32  <des es'>2.:32)\>\stopTextSpan | 
  <des bes'>2.:32(\mf\> \tastor \leften #1.2 \lift #3 \shrink #4
    <des aes'>1.:32)\startTextSpan \slurSolid
    r2\!\stopTextSpan \shrink #2 \n \Hh #-2.7 <es ges>4\< \glissando \startTextSpan |
  \noHead { \noAcc 4 4 4\mp 4 4 \hh 4 } 
    \ordl\pontr \lift #3.3 \n <eses ges!>2.\stopTextSpan\startTextSpan\> ~
    \sq <eses ges>\stopTextSpan ~ | 

}%end violinOne

violinTwoA= \relative c'' {
  r1. r2. |
    \tastol\pontr \n <bes es\hm>1.\< \startTextSpan ~ 
    \once \tieDown \topGliss <bes es\hm>2. \stopTextSpan \glissando ~ |
  <bes f'\hm>2.\pp ~ \tastor <bes f'\hm>1. \startTextSpan ~ | 
  << { \n<bes f'\hm>1.\> r2.\! }
     { s2. s2. \stopTextSpan s2. } >> |

  \pontr \textin <c ges'\hm>1.\sept\pp\< \startTextSpan  \textin <c ges'\hm>2(
    \feathr { <c ges'\hm>16[ s <c ges'\hm> <c ges'\hm>] } |
  \feathl { <c ges'\hm>16[\p\>\stopTextSpan <c ges'\hm> s <c ges'\hm>] }
    <c ges'\hm>2 \topGliss \once \tieDown <c ges'\hm>1.)\! \glissando ~ |
  \tastor \n <c f\hm>1.\>)\startTextSpan r2.\!\stopTextSpan |
  r2.\! \pontr \n \slurDashed fis'1.:32(\< \startTextSpan << { fis1.:32)( }
                                                { s2. s2 s4\stopTextSpan } >> |

  fis2.:32)(\p fis2.:32)\< \glissando | \slurSolid
  \topGliss <fis\hm b,>1.:32\! \glissando \n<fis\hm cis>2.:32\> | 
  \tastol\pontr <b,\hm fis>1.:32 \stopTextSpan\startTextSpan <fis b\hm>2.:32 \glissando |
  \sq f1.\stopTextSpan r2.\! |
  
  r1. r2.|
  r2 \n \tastor bes,,4(\< \startTextSpan \feathr { bes16[ s16 bes16 16] }
    \feathl {bes16[\p\> 16 s bes16] } bes4~ bes2)\stopTextSpan r4\! |
  \pontr cis'1.\< ~ \startTextSpan cis2.\mf\> \stopTextSpan| 
  r2\! \feathl {\ordl \leften #-1 \lift #2.7 <fis, ais\hm>16[(\mf \startTextSpan
      <fis ais\hm>16 s <fis ais\hm>16] }
    << { \pontl\ordr \lift #2.6 <fis ais\hm>2. \stopTextSpan\startTextSpan ~ }
       { s4 s2\< } >>
    <fis ais\hm>2)\f\< \stopTextSpan
      \feathr {\textin <fis b\hm>16([\startTextSpan s <fis b\hm>16 <fis b\hm>16] } |

  \once \slurDashed \pontl\tastor \n <fis b\hm>2.:32)(\ff\> \stopTextSpan\startTextSpan 
    <e b'\hm>2.:32 <e ais\hm>2.:32 <dis ais'\hm>2.:32) |
  r2.\!\stopTextSpan \redHead { \ordl\pontr <e b'\hm>1.\< \startTextSpan ~ |
  \topGliss \once \tieDown  <e b'\hm>1.\f\>  \stopTextSpan \glissando ~ 
    \tastor <e a\hm>2.\mp \startTextSpan \Hh #-3.5 e4\> \glissando \noHead { 4 4 |
  4\stopTextSpan  4 \hh 4 } \pontr \hh <e ais>4\p \glissando \startTextSpan \noHead { 4 4 
    \n 4\> 4 4 } <e ais>2.:32 \stopTextSpan | }
}%end violinTwo

violaA = \relative c {
  \tastol\shrink #'0.8 \lift #'2.7 \n \Hh #-2.5 cis'4\< \glissando \startTextSpan 
    \noHead {4 4 cis4 4 4 
    \pontl\tastor cis4 \stopTextSpan\startTextSpan 4 4 |
  \noAcc 4 4 \hh 4} \hh <dis fis,>4\fpp\glissando\stopTextSpan \noHead { 4 4 4 4 4 |
  \noAcc \pontr 4\startTextSpan 4 4 4 4 4 } \sq \noAcc <dis fis,>2. ~ |
  \noAcc \square <dis fis,>2. \stopTextSpan ~ \noAcc \sq \n <dis fis,>2\> r4\! r2. |

  r1. \n \hH f4\<^\markup{ \raise #1.5 "S.T."} \glissando \noHead { 4 4  |
  4\p\> 4 } \topGliss \pontr \hh <f aes>4\! \glissando \startTextSpan 
    \noHead { 4 4 4 4 4 4 } |
  \square <f a>1.\>\stopTextSpan ~ \shrink #1.5 \lift #3 \sq <f a>2.\!\startTextSpan ~ | 
  \shrink #-5 \tastol\pontr \noAcc \sq \n <f a>2.\>\stopTextSpan\startTextSpan ~ 
    \sq <f a>1.\stopTextSpan r1.\! |

  r4 \ordl\tastor e,2\fpp\< \startTextSpan ~ e2 ~ e4 \glissando | 
  \feathr { \textin dis16[\stopTextSpan s dis 16 dis] } 
    \once \slurDashed \pontr dis2:32)(\mp \startTextSpan 
    << { dis2.:32)\> } {s2 s8\stopTextSpan}>> r2.\! |
  <c fis\hm>2.\sept\< ~ << { <c fis\hm>1.\mf ~ | }
                              { s2 s\startTextSpan } >>
  \ordl\pontr\shrink #2.5 \n <c fis\hm>1.\>\stopTextSpan\startTextSpan r2.\!\stopTextSpan |

  r2. 
    \tastol \shrink #2 \n \Hh #'-2.5 gis'4\< \startTextSpan \glissando \noHead { 4 \hh 4 } 
    \topGliss \hh <gis fis>4 \glissando \noHead { 4 4 } |
  \ordl\pontr <gis fis>2. \stopTextSpan\startTextSpan ~ <gis fis>4 \stopTextSpan
    \feathl { <e a\hm>16[(\p <e a\hm>16 s <e a\hm>]} <e a\hm>4 
    \pontr <e a\hm>2. \startTextSpan ~ |
  <e a\hm>1.)\< \stopTextSpan \glissando <f! bes\hm>2.\! |

  \clef "treble"
  \ordl \lift #2.8 b'!2.(\mp\< \startTextSpan 
    \feathr {\pontl \shrink #0.5 \lift #2.8  b16[ \stopTextSpan \startTextSpan s b b ]} 
      \slurDashed <b cis>2:32)(
    \ordl \leften #1.3 \lift #2.8 <b cis>2.:32)\f\< \stopTextSpan\startTextSpan \glissando |

  \pontl\tastor \n <aes d>2.:32\ff\>( \stopTextSpan\startTextSpan <ges es'>2.:32 
    <ges es'>1.:32) | \slurSolid
  r2.\! \stopTextSpan \ordl\pontr <aes f'>1.\< \startTextSpan ~ | 
  <aes f'>1.\f \stopTextSpan ~ \tastor <aes f'>1.\> \glissando 
    \startTextSpan|
  \hh <aes f'>4 \glissando \noHead {4\stopTextSpan 4 4 \pontr 4\p\startTextSpan 4 } 
    << {\n <aes f'>1.)\> | }
       { s2. s2\stopTextSpan } >>
}%end viola

celloA = \relative c {
  r1. r2. | 
  r2. \Hh #'-3 des'4\tasto\< \glissando \noHead { 4 4 4 4 4 |
  \noAcc \pontr 4\pp \startTextSpan 4 \hh 4 } 
    \hh <des f,!>4 \glissando \noHead { 4 4 4 4 4 }
  \square \n <d f,>2.\>\stopTextSpan ~ \sq <d f,>1.~ | 

  <d f,>2. r1.\! |
  r1. r2 \n \feathl \hh { \textin aes16\tasto[(\< aes16 s16 aes16] } |
  \pontr \shrink #-2 \hH aes4) \startTextSpan \glissando \noHead { 4 4 4 4 4 
    4 4 \hh 4\stopTextSpan } |
  <aes d!\hm>2.\sept \p ~ <aes d!\hm>1.) \glissando \n \square aes1.\> |

  r2.\! \ordl \n \hH ais4\< \startTextSpan \glissando \noHead { 4 4 |
  \noAcc 4 }
    \tastol \hh <ais cis,>4\mp \stopTextSpan\startTextSpan \glissando \noHead { 4 
    4 4 4 } \ordl\pontr <ais cis,>2.\stopTextSpan\startTextSpan \glissando |
  \once \tieUp \n \square <a c,>1.\> ~ \sq <c, f,>2.~\stopTextSpan | 
  << { \sq <c f,>2. ~ \sq 1. | }
     { \tastor \shrink #2.5 s1.\startTextSpan s8\stopTextSpan } >>

  r1.\! r2. |
  r2. \n \lift #2.8 \hh gis'4\< \glissando \startTextSpan \noHead { 4 4 4 4 4 } | 
  \ordl\pontr \shrink #3.9 gis2.(\! \stopTextSpan\startTextSpan ~ <gis ais,>2. ~ <gis ais,>2
    \feathr { <gis ais,>16[\< \stopTextSpan \shrink #-3 \lift #2.8 s\startTextSpan
      <gis ais,> <gis ais,>]\stopTextSpan  }
  <<{ <gis ais,>1.:32)\mf\glissando  }
    { \leften #-5 \shrink #2 \lift #3 s2.\startTextSpan 
        \lift #3 \tastol s8\stopTextSpan\startTextSpan s8\< } >>
    \ordl\pontr <e gis,>2:32\f\< \stopTextSpan\startTextSpan <c! fis,>4:32 |

  \slurDashed <b dis,>1.:32(\ff \stopTextSpan \ordr <b dis,>1.:32)\> \startTextSpan |
  \redHead { \topGliss <ais gis'>2.:32(\f\glissando
    \topGliss <ais g'>2.:32\glissando 
    \once \stemDown <ais fis'>:32)\> \stopTextSpan |
  << { \once \slurUp <d e,>1.:32(\mf\> }
     { s2. \shrink #3 s2. \startTextSpan  } >>
     \once \slurUp <d b>2.:32)( \topGliss <b d>2.:32)\glissando 
  \topGliss \n \Hh #-3 <cis b>4:32\mp \glissando \noHead { 4 4 \n 
    \tastol\pontr 4\>\stopTextSpan  \startTextSpan 4 4 
    4 4 \hh 4\stopTextSpan } r2.\! | } \slurSolid
}%end cello

%B Section
violinOneB = \relative c'' {
  \noAcc \sq <eses ges>2. r2\! r2. 
    \feathr { \pontl\tastor \shrink #-1 \n c16[(\< \startTextSpan s c c] } |
  \feathl { \n c16[\mp\> c s c] } c2)\stopTextSpan 
    r2.\! r2 \once \slurDashed \n <f, bes\hm>4\pont^(\< |
  \redHead <bes\hm f>1.:32)\p \glissando |
  \sq f1.:32\> |

  r2.\! r2 \feathr {\tastor \n d'16[(\< \startTextSpan s d d] } |
  \feathl \hh {\n d16[\mp\> d s d]} \Hh #-2 d4)\stopTextSpan\glissando \noHead { \hh d4 } 
    r2.\! r4 \n \shrink #1.3 \lift #1.8 <g, d'\hm>2\< \startTextSpan ~ | 
  \n \ordl <g d'\hm>1.\p\>\stopTextSpan\startTextSpan ~ 
    \pontl\tastor <g d'\hm>2. \stopTextSpan \startTextSpan ~ |
  <g d'\hm>2.\stopTextSpan r4\! \n \hh fis'2\< ~ |
  
  \pontr \noAcc \hh fis4\pp \glissando \startTextSpan \noHead { \noAcc 4 4 4 4 4 }
    \sq fis2.\> \stopTextSpan r2.\! |
  r2.
    \topGliss <cis fis\hm>1.^\ord\mp\< ~ \glissando | 
  \pontr \shrink #-4 <cis gis'\hm>2.\mf \startTextSpan ~ 
    \once \tieDown \topGliss <cis gis'\hm>1. \stopTextSpan \glissando ~ |
  \n <cis g'!\hm>2.\sept~ <cis g'\hm>1.\> ~ |
}%end violinOne

violinTwoB = \relative c' {
  r1.\! r2 \pontl\tastor \feathr { \n fis16([\<\startTextSpan s fis16 16] } |
  \feathl { fis16[\mp\> 16 s fis16]} fis4)\stopTextSpan  r4\! r1. |
  \pontl\tastor \n \sq g1.\< \startTextSpan ~ |
  \n \sq g1.\ppp\> ~ |

  \sq g2 \stopTextSpan r4\! 
    r2 \pontl\tastor \leften #-1.7 \feathr { \n aes16([\< \startTextSpan s aes16 16]} |
  \feathl \hh { \n aes16[\mp\> aes s aes16] } \n \Hh #-2.2 aes4) \stopTextSpan 
    \glissando \noHead { \hh 4 } 
    r2.\! \ordr \n <aes des\hm>2.\<  \startTextSpan~  |  
  \topGliss <aes des\hm>2.\p \stopTextSpan \glissando _~ 
    \pontr <aes es'\hm>2.\startTextSpan ~ 
    \once\tieDown \topGliss <aes es'\hm>2.\! \stopTextSpan \glissando ~ |
  << { <aes d!\hm>1.\sept | }
     { s2. \n s2.\>         } >>
  
  r1.\! r4 \n \sq gis4(\< \startTextSpan  \feathr {\sq 16[ s \sq gis16 \sq gis16] } 
     \sq gis2.:32) \glissando |
  \once \slurDashed \ordl gis1.:32( \stopTextSpan\startTextSpan
    gis2.:32)\mf\topGliss | 
  \pontl\tastor <gis\hm cis,>2.:32\stopTextSpan\startTextSpan \glissando 
    \pontl\tastor \n \Hh #-2 gis4:32\> \glissando \noHead { 4 4 4\stopTextSpan 4 \hh 4 } |
  r1.\!\stopTextSpan  \redHead r2. |
}%end violinTwo

violaB = \relative c' {
  \clef "alto" \acciaccatura {s8\!} r1. 
    r2 \pontl\tastor \feathr { \n f16[(\< \startTextSpan s16 f f]  } |
  \feathl { \n f16\mp[ f s16 f])\stopTextSpan } r2\! 
    r2. r2 \feathr { \n fis16\pont[(\< s fis fis] } |  
  \n fis1.:32)\p\> |
  r1.\! |

  r2. r2 \tastor \feathr { \n fis16[(\< \startTextSpan s16 fis fis] } |
  \feathl \hh { fis16[\mp fis s fis] } 
    \n \Hh #-2 fis4)\>\stopTextSpan \glissando \noHead { \hh 4 } r2.\! 
    r2 \pontr \n fis4\< \startTextSpan ~ |  
  \n fis1.\p\>\glissando \sq fis2.~ |
  \sq \noAcc <fis b,>2.\stopTextSpan r2.\! |
  
  r1. r4 \lift #3.8 \n \sq g(\<\startTextSpan \feathr { \sq g16[ s \sq g \sq g] } 
    \sq g2.:32) \glissando |
  \once \slurDashed \ordl\pontr g1.:32( \stopTextSpan\startTextSpan 
    \once\tieDown \topGliss <c, g'\hm>2.:32)\mf\stopTextSpan \glissando ~ |
  <c f\hm>2.:32 \tastor \lift #2 \n <c f\hm>1.:32\>\glissando\startTextSpan |
  \hH c4:32 \glissando \noHead {4 4 4 4 \hh 4\stopTextSpan } r2.\! |
}%end viola

celloB = \relative c { 
  \acciaccatura {c,16} \ordl\pontr fis1.\pp \startTextSpan ~ fis2.\< |
  \repeat tremolo 12 { gis'32\mp\stopTextSpan cis,}
    \repeat tremolo 12 { \shrink #2 \tastor gis'32\startTextSpan cis,}
    \repeat tremolo 12 { gis'32 cis,\> } |
  gis'4\p\stopTextSpan ~ \pontr <gis b,>2 \startTextSpan ~ \n <gis b,>2.\> \glissando |
  \sq <gis b,>2. ~ \sq <gis b,>2\stopTextSpan r4\!|

  \acciaccatura {c,,16} \ordl\pontr ais'1.\pp \startTextSpan\< |
  \repeat tremolo 12 { b'32\mp\stopTextSpan e, }
    \repeat tremolo 12 { \shrink #2 \tastor b'32\startTextSpan e, }
    \repeat tremolo 12 { b'32\> e, } |
  b'4\stopTextSpan ~ \pontr <b d,>2~\startTextSpan <b d,>1.\p\> \glissando |
  \sq <b d,>2.~ \sq <b d,>4:32\! \stopTextSpan r2 |

  \acciaccatura {c,,16} \ordl\pontr \lift #4.9 cis'1.\pp\< \startTextSpan ~ 
    \once \set glissandoMap = #'((1 . 0))
    <dis' cis,>1.\glissando ~ |
  \repeat tremolo 12 { 
                       \once \override NoteColumn.glissando-skip = ##t 
                       dis32 \stopTextSpan b32 }
    \repeat tremolo 12 {\tastor dis32\startTextSpan b32 }
    \repeat tremolo 12 {dis32\mf gis,32 }
  \once \slurDashed dis'4:32(\stopTextSpan ~ <dis fis,>2:32 
    \pontr <dis fis,>2:32 \startTextSpan <cis fis,>4:32 \n <cis e,>2.:32\> |
  << { \n <cis e,>1.:32) \glissando }
     { s2. s2.\stopTextSpan        } >> \sq <cis e,>2.:32 |
  \tieNeutral 

}%end celloB

violinOneAA = \relative c'' {
  <cis? g'?\hm>1. r2.\! |
  \topGliss \n \ordl\pontr <b e\harmonic>1.\< \startTextSpan ~ 
    \topGliss <b e\hm>2. \stopTextSpan \glissando ~ |
  \tastor <b fis'\harmonic>1.\fp\startTextSpan 
  \HH fis'4 \stopTextSpan \glissando \noHead {4 \hh 4} | 
  \n \ordr \hH eis\> \startTextSpan \glissando \noHead { 4 4 
    \hh 4\! \stopTextSpan  } r2 |

  \n <f, b!\harmonic>1.\sept\< ~ |
  <f b\harmonic>2. ~ <f b\harmonic>2.) \glissando ~ 
  \pontr \lift #4.5 \n<fis cis'\hm>1.\mp \startTextSpan ~ |
  <fis cis'\hm>2.\stopTextSpan \glissando 
    \ordr \lift #4.5 <fis b\hm>1.\startTextSpan ~ <fis b\hm>2\>\stopTextSpan r4\! | 
  
  \tastor c''1.\p\< ~ \startTextSpan|
  c2.\mp\> bes2.\stopTextSpan ~ |
  \ordr \shrink #5 \lift #4.5 aes1.\startTextSpan | 
  \n aes'1.\p\stopTextSpan ~ | 
  
}%end violinOne

violinTwoAA= \relative c' {
  \n \pontl dis1.\< \startTextSpan ~ dis2. \glissando |
  \tastol \Hh #-2.5 dis4\stopTextSpan\startTextSpan \glissando \noHead { 4 4 4 4 4 
    \ordl 4\p\stopTextSpan\startTextSpan 4 4 |
  \noAcc 4 4 \hh 4 } 
    \tastol\pontr \shrink #2.5 \hh <fis ais,>4\mf\stopTextSpan\startTextSpan \glissando 
    \noHead { 4 4 4 4 4  | 
  \n \noAcc 4\> 4 4 } << { \square <fis ais,>2. }
                    { s2 s4 \stopTextSpan }>> |

  r2.\! \n <bes, d\hm>2.\ord\<~ |
  \topGliss <bes d\hm>1.~ \glissando |
  \topGliss <bes f'\hm>2.\mp \stopTextSpan ~ <bes e!\hm>2.\sept ~ |
  \n \lift #2.2 <bes e\hm>1.\> \startTextSpan ~ 
    \pontl\ordr \lift #2.3 \shrink #2.5 <bes e\hm>1. \stopTextSpan\startTextSpan ~ |

  <bes e\hm>4 r2\!\stopTextSpan 
    \n \tastol \lift #2.4 \HH e'4\< \glissando \startTextSpan \noHead {4 \hh 4} | 
  \ordl\pontr \lift #2.5 e1.\mp \stopTextSpan\startTextSpan ~ |
  e2. \stopTextSpan \glissando \n \tastor f2.\> \startTextSpan ~ | 
  << { f1.                 } 
     { s2. s2.\stopTextSpan} >>
}

violaAA = \relative c {
  r1. r2. | 
  r1. \acciaccatura {f8} \ordl \lift #2.3 \hH cis'4\p \glissando\startTextSpan 
    \noHead { 4 4 |
  \noAcc 4 4 4 } 
    \tastol\pontr \shrink #-3 \hh <cis f,!>4 \glissando \stopTextSpan\startTextSpan 
    \noHead { 4 4 4 4 4 
  \noAcc 4 4 \n 4\> } \noAcc \square <c f,>2. ~  | 

  \sq <c f,>1.\stopTextSpan |
  r2.\! r4 \n aes2\ord\< ~ |
  aes2. <aes d\hm>2.\mp\sept~ |
  \shrink #1 \lift #2.8 \n <aes d\hm>1.\startTextSpan ~
    \pontl\ordr \shrink #-2 \n <aes d\hm>1.\> \stopTextSpan\startTextSpan ~ |

  <aes d\hm>2.\stopTextSpan 
    r2\! \feathl { \n \lift #2.5 gis16[(\< \startTextSpan gis s gis] } |
  gis2.) ~ \n \pontl\tastor <gis dis'\hm>2.\mf\> \stopTextSpan\startTextSpan ~ |
  <gis dis'\hm>2. r2.\!\stopTextSpan | 
  \acciaccatura {c,8} \clef "treble" fis''2.^\markup{\raise #2 "N"}\mp \once\tieDown f!2. ~

}%end viola

celloAA = \relative c, {
  r1.\! r2. |
  r1. r2. |
  r1. \n \tastol <fis b\harmonic>2.\< \startTextSpan ~ |
  << { <fis b\harmonic>1. ~ } |
     { s2. \pontl\ordr \shrink #-2 \n s2.\p\> \stopTextSpan\startTextSpan } >> |

  <fis b\hm>2. \stopTextSpan r2.\! |
  r2. \n b2.\< ~|
  \once \tieDown <b e\hm>1.\!~ |
  \pontr <b fis'\hm>1.\>\startTextSpan ~ <b fis'\hm>1.\glissando |

  << { \once \tieDown ais1.\p \stopTextSpan ~ }
     { s1 s4 s4\< } >>
  <ais eis'\hm>1.\mp \startTextSpan
  \acciaccatura {g16} \ordl\tastor fis'1. \stopTextSpan\startTextSpan ~ | 
  << { \n fis1.\> }
     { s2. s\stopTextSpan} >> |

}%end cello

violinOneBB = \relative c'''' {
  \n aes2. ~ \pontr \lift #8 <aes es>1.\< \startTextSpan ~ | 
  <aes es>2.\mp \stopTextSpan <aes ges>2. 
    <c ges>2(\< \feathr { \ordr <c ges>16[\startTextSpan s <c ges>16 16] } | 
  \feathl { <c aes>16[\mf 16 s <c aes>]} <c aes>2~ <c aes>2.)\stopTextSpan  
    <c bes>2.\< ~ |
  \topGliss <bes c>2.\glissando ~ 
    \tastor \shrink #-5 \n <bes des>2.\f\>\startTextSpan ~ <bes des>1.\stopTextSpan |
}
violinTwoBB = \relative c'' {
  r2.\! \n \ordl \lift #4 des1.\< \startTextSpan |
  \repeat tremolo 12 {\pontl\tastor des32\mp\stopTextSpan\startTextSpan c,32} 
    \repeat tremolo 12 {des'32\! c,32} 
    des'2.:32\< \glissando |
  \feathl { f16[\mf f16 s f16]} f2 \stopTextSpan ~ 
    << { <f g>1.              | }
       { s2. s2.\<\stopTextSpan } >>
  \repeat tremolo 12 { e32 dis32 } 
    \repeat tremolo 12 { \n \pontr \lift #4 e32\f\>\startTextSpan dis32 } 
    \once \slurDashed e4:32( dis2:32 \glissando 
    \sq dis2:32)\stopTextSpan r4\! |

}
violaBB = \relative c'' {
  \shrink #2 \lift #4 <f g>1.\startTextSpan ~ <f g>2.\< ~ | 
  \pontl \shrink #2 \lift #4 <f g>1.\mp\stopTextSpan\startTextSpan ~ 
    \ordl \lift #4 <f g>2.\<\stopTextSpan\startTextSpan | 
  \repeat tremolo 12 {\pontl \shrink #2 es32\mf\stopTextSpan\startTextSpan des,32}
    \repeat tremolo 12 {es'32 des,32} 
    es'2.:32\<\glissando  |
  << { <g aes>1. ~     }
     { \tastol\ordr \lift #4 s2.\stopTextSpan\startTextSpan \n s2.\f\> \stopTextSpan } >> 
      <g aes>2 r4\! r4 \n f2\< ~ |

}%end violaBB
celloBB = \relative c' {
  r1.\! \n \pontl\ordr bes2.\< \startTextSpan ~ |
  bes2. ~ bes1.\mf\> \stopTextSpan |
  \pontl\ordr f2.\mp\< \startTextSpan f1.\mf\<~ | 
  <f ges,>1.\f\stopTextSpan  ~ <f ges,>2.\> ~ ges,2.
}

violinOneCoda = \relative c''  {
  r2\! \feathl { <g c\hm>16[\mp <g c\hm> s <g c\hm>] } <g c\hm>1.\> ~ |
  <gis dis'\hm>1.\>~ \topGliss <gis dis'\hm>2.\p\< \glissando _~ |
  <gis cis\hm>1.\>~ \n <gis cis\hm>2.\pp\>~ |
  <gis cis\hm>2. r2.\! |
}%end violinOneCoda

violinTwoCoda = \relative c'' {
  r2 \feathl {cis16([\mp\ord s cis cis]} e1.\> ~ |
  e2.)\startTextSpan ~ r2\! 
    \feathr { \pontl\tastor ais,16[(\< \stopTextSpan\startTextSpan s ais ais]} 
    \feathl \hh{ ais16[\> s ais ais]} \Hh #-2 ais4) \glissando \noHead { 4 |
  \noAcc 4\p\stopTextSpan 4\> \hh 4 } 
    \hH b4 \glissando \noHead { 4 4 \lift #2.5 4\pp\startTextSpan 4 4 |
  \noAcc \ordl\tastor \lift #2.5 \n 4\>\stopTextSpan\startTextSpan 4 4 4 4
    \hh 4\stopTextSpan } 
    r2.\! |

}%end violinTwoCoda

violaCoda = \relative c'' {
  \n f2.\mf\> r2.\! \clef "alto" \once \tieUp \n \sq f,2.\< ~ |
  \pontl\tastor \sq <f aes,>2.\p\startTextSpan ~ \sq<f aes,>2 
    \feathr {\sq <f aes,>16[ s \sq <f aes,>16 \sq 16]}
    \feathl \hh {<f aes,>16[ 16 s <f aes,>16] } \hH <f aes,>4\! \glissando \noHead { 4 |
  \noAcc 4 4 \hh 4 \stopTextSpan } 
    \ordr <es\hm bes>2.~\startTextSpan <es\hm bes>2. \stopTextSpan \glissando |
  <d!\hm aes>1._\sept~ <d\hm aes>2.|
}%end violaCoda

celloCoda = \relative c, {
  es2.\p\< ~ es2.\mf\>\glissando d2.~ |
  d2.\mp ~ d2.\glissando cis2.\> ~ |
  cis1.\p\> \n c2.\pp\>~ |
  c1. r2.\!  |

}%end celloCoda
timecode = {
  \set Score.markFormatter = #format-mark-box-alphabet
  \tempo 4 = 60
  \mark \default
  \time 9/4 s1. s2. | s1. s2. | s1. s2. | s1. s2. |

  s1. s2. | s1. s2. | s1. s2. |
  \time 15/4 s2. s1. s1. |

  \time 6/4 s1. |
  \time 9/4 s1. s2. | s1. s2. | s1. s2. |

  \time 9/4 \acciaccatura {s8} s1. s2. | s1. s2. | s1. s2. |
  s1. s2. |

  \time 12/4 s1. s2. s2. | 
  \time 9/4 s1. s2. | 
  \time 12/4 s1. s2. s2. | 
  s1. s2. s2. |

  \pageBreak
  \mark \default %begin m. 21
  \time 9/4 \acciaccatura {s8} s1. s2. | s1. s2. |  
  \time 6/4 s1. | s1. | \acciaccatura {s8} s1.
  \time 9/4| s1. s2. | s1. s2. | 
  \time 6/4 s1. |
  \time 12/4 \acciaccatura {s8} s1. s1. | 
  \time 9/4 s1. s2. |s1. s2. | s1. s2. |

  \mark #27 %begin m. 33
  s1. s2. | s1. s2. | s1. s2. |
  \time 6/4 s1. | s1. | s1. | s1. |
  \time 12/4 s1. s1. |
  \time 6/4 s1. | s1. |
  \acciaccatura {s8} s1. | s1. |

  \mark #54 %begin m. 45
  \time 9/4 s1. s2. | s1. s2. | s1. s2. |
  \time 12/4 s1. s1. |
  \tempo 4 = 50
  \time 9/4 s1. s2. | s1. s2. | s1. s2. | s1. s2. |
  \bar "|."
}

\layout {
  \context {
    \Score
  	proportionalNotationDuration = #(ly:make-moment 1/1)
  	\override Score.SpacingSpanner.strict-note-spacing = ##t
  }
}%end layout

#(set-global-staff-size 20)
\book {
  \paper {
    #(set! paper-alist (cons '("ipad" . (cons (* 220 mm) (* 305 mm))) paper-alist))
    #(set-paper-size "ipad")
    top-margin = 0.7\in
    left-margin = 0.7\in
    right-margin = 0.6\in
    bottom-margin = 0.7\in
    indent = 0.3\in


   markup-system-spacing =
    #'((basic-distance . 25)
       (minimum-distance . 25)
       (padding . 10)
       (stretchability . 0))

   system-system-spacing =
    #'((basic-distance . 30)
       (minimum-distance . 16)
       (padding . 4)
       (stretchability . 0))
   

    %{print-page-number = ##t
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
      \override StaffGrouper.staff-staff-spacing  = #'((basic-distance . 6)
                                                       (padding        . 5))
    } <<
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

%{
\book {
  \paper {
    #(set-paper-size "letter")
    top-margin = 1\in
    left-margin = 1\in
    right-margin = 1\in
    bottom-margin = 1\in
  }
  \score {
    \new Staff \with { 
      instrumentName = #"Violin 1"
      shortInstrumentName = #"Vln 1"
    }{
      \spannerStyle

      \clef "treble"
      << {\violinOneA
      \violinOneB
      \violinOneAA
      \violinOneBB
      \violinOneCoda
      }{
        \timecode
      }{
        \time 6/4 s1. | s1. |
        \time 9/4 s1. s2. |
        \time 6/4 s1. | s1. | s1. | s1. |
        \time 9/4 s1. s2. |
        \time 6/4 s1. |
        \time 9/4 s1. s2. | s1. s2. |
        \time 6/4 s1. |
        \time 9/4 \acciaccatura {s8} s1. s2. |
        %measure 14
        \time 6/4 s1. |
        \time 9/4 s1. s2. |
        \time 6/4 s1. |
        \time 9/4 s1. s2. | s1. s2. | s1. s2. | s1. s2. |
        \time 6/4 \acciaccatura {s8} s1. | s1. | s1. | s1. |
        %measure 25
        \pageBreak
      }>>
    }
  }
}
\book {
  \paper {
    #(set-paper-size "letter")
    top-margin = 1\in
    left-margin = 1\in
    right-margin = 1\in
    bottom-margin = 1\in
  }
  \score {
    \new Staff \with { 
      instrumentName = #"Violin 2"
      shortInstrumentName = #"Vln 2"
    }{
      \spannerStyle

      \clef "treble"
      << {\violinTwoA
      \violinTwoB
      \violinTwoAA
      \violinTwoBB
      \violinTwoCoda
      }{
        \timecode
      }{
        \time 6/4 s1. | s1. |
        \time 9/4 s1. s2. |
        \time 6/4 s1. | s1. | s1. | s1. |
        \time 9/4 s1. s2. |
        \time 6/4 s1. |
        \time 9/4 s1. s2. | s1. s2. |
        \time 6/4 s1. |
        \time 9/4 \acciaccatura {s8} s1. s2. |
        %measure 14
        \time 6/4 s1. |
        \time 9/4 s1. s2. |
        \time 6/4 s1. |
        \time 9/4 s1. s2. | s1. s2. | s1. s2. | s1. s2. |
        \time 6/4 \acciaccatura {s8} s1. | s1. | s1. | s1. |
        %measure 25
        \pageBreak
      }>>
    }
  }
}
\book {
    \paper {
    #(set-paper-size "letter")
    top-margin = 1\in
    left-margin = 1\in
    right-margin = 1\in
    bottom-margin = 1\in
  }
  \score {
    \new Staff \with { 
      instrumentName = #"Viola"
      shortInstrumentName = #"Vla"
    }{
      \spannerStyle

      \clef "treble"
      << {\violaA
      \violaB
      \violaAA
      \violaBB
      \violaCoda
      }{
        \timecode
      }{
        \time 6/4 s1. | s1. |
        \time 9/4 s1. s2. |
        \time 6/4 s1. | s1. | s1. | s1. |
        \time 9/4 s1. s2. |
        \time 6/4 s1. |
        \time 9/4 s1. s2. | s1. s2. |
        \time 6/4 s1. |
        \time 9/4 \acciaccatura {s8} s1. s2. |
        %measure 14
        \time 6/4 s1. |
        \time 9/4 s1. s2. |
        \time 6/4 s1. |
        \time 9/4 s1. s2. | s1. s2. | s1. s2. | s1. s2. |
        \time 6/4 \acciaccatura {s8} s1. | s1. | s1. | s1. |
        %measure 25
        \pageBreak
        s1. | s1. | s1. | s1. |
        s1. s2. | s1. s2. | \break
      }>>
    }
  }
}

\book {
  \paper {
    #(set-paper-size "letter")
    top-margin = 1\in
    left-margin = 1\in
    right-margin = 1\in
    bottom-margin = 1\in
  }
  \score {
    \new Staff \with { 
      instrumentName = #"Cello"
      shortInstrumentName = #"Vc"
    }{
      \spannerStyle

      \clef "treble"
      << {\celloA
      \celloB
      \celloAA
      \celloBB
      \celloCoda
      }{
        \timecode
      }{
        \time 6/4 s1. | s1. |
        \time 9/4 s1. s2. |
        \time 6/4 s1. | s1. | s1. | s1. |
        \time 9/4 s1. s2. |
        \time 6/4 s1. |
        \time 9/4 s1. s2. | s1. s2. |
        \time 6/4 s1. |
        \time 9/4 \acciaccatura {s8} s1. s2. |
        %measure 14
        \time 6/4 s1. |
        \time 9/4 s1. s2. |
        \time 6/4 s1. |
        \time 9/4 s1. s2. | s1. s2. | s1. s2. | s1. s2. |
        \time 6/4 \acciaccatura {s8} s1. | s1. | s1. | s1. |
        %measure 25
        s1. | s1. | s1. | s1. |
        s1. s2. | s1. s2. | s1. | s1. s2. | s1. |
        \pageBreak
      }>>
    }
  }
}
%}

