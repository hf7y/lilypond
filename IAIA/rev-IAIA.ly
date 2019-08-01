\version "2.19.80"
%Score for quartet
%Started Fri June 10 14:28 CDT 2018 at 527 N Dodge St IA, IA
%Revised Sun June 17 00:02 EDT 2018 at Walden School
%Revised Sun July 1  23:59 CDT 2018 at 315 Ronalds St IA, IA
%Revised February 7407 St Charles Ave NO, LA

\include "definitions.ily"

\header {
  title = "IA, IA"
  %subtitle = "for string quartet"
  composer = "Z. V. Pine"
  tagline = ""
}%end header

%A Section 
violinOneA = \relative c'' { 
  %m1
  s1. s2. |
  s1. s2. |
  r1. \pontl <fis b\hm>2.\pp\< ~ \startTextSpan |
  << { <fis b\hm>1. ~   } 
     {  s2. \n s2.\p\> } >>
        \tastol\pontr \lift #'4 \n <fis b\hm>2. \stopTextSpan\startTextSpan ~ |

  %m5
  <<{<b\hm fis >1.\glissando \sq b2.}
    {s2. s2.\stopTextSpan}>> |
  r2.\! \tastol \n\hH b,4\<\glissando \startTextSpan \noHead {4 4 4 4 4 |
  \pontl\tastor \n b4\pp\> \stopTextSpan\startTextSpan 4 4 4 4 4 
    4 4 \hh 4\! \stopTextSpan } |
  r2 \feathr { \n<e, bes'\hm>16\sept[(\< s <e bes'\hm> <e bes'\hm>] } 
    << { \slurDashed \n<e bes'\hm>1.:32\p)( <e bes'\hm>1.:32)\> | }
       { s4 \pontr s2\startTextSpan s2. s2. s2 s4\stopTextSpan } >> \slurSolid

  %m9
  r2.\! r2 \feathl { \n<f bes\hm>16\ord[(\< s <f bes\hm> <f bes\hm>] } |
  \pontr <f bes\hm>1.\mp \startTextSpan ~ <f bes\hm>2)\>\stopTextSpan~ f4^~ |
  \topGliss \lift #'2.4 <f es>1.\! \startTextSpan\glissando 
    \topGliss \tastol\pontr \lift #'2.4 \hh <f es>4\! 
    \stopTextSpan\startTextSpan \glissando \noHead { <f es> <f es> } |
  \sq <f e>2.\stopTextSpan <<  { \acciaccatura {g,16} \sq \n<f' c'>1. ~ | }
                               { s8 \n s\> } >>
  %m13
  \tastor \sq <f c'>1.\startTextSpan \sq <g, d'>2.~\stopTextSpan |
  \sq <g d'> s1.\! |
  r2. \ordl\pontr \shrink #'3.9 \n f'''2.(\< \startTextSpan ~ 
    f2 \feathr { f16[ \stopTextSpan 
                 \shrink #-2.5 \lift #6.6 s\startTextSpan f f] \stopTextSpan } |
  << { \slurDashed f2.:32)( <e f>1.:32)\f | }
     { \leften #-7 \shrink #2 s2.\startTextSpan 
       \tastol\pontr s8\stopTextSpan\startTextSpan s8 s2 s2.\< } >>

  %m17
  <bes f'>1.:32(\stopTextSpan \ordr <aes f'>1.:32\ff\>) \startTextSpan |
  <ges f'> 2.:32\f(  <ges es'>2.:32  <des es'>2.:32)\>\stopTextSpan | 
  \n <des bes'>2.:32(\mf\> \tastor \leften #1.2 \lift #3 \shrink #4
    <des aes'>1.:32)\startTextSpan \slurSolid r2\!\stopTextSpan
    \shrink #2 \Hh #-2.7 <es ges>4\fpp\< \glissando \startTextSpan |
  \noHead { \noAcc 4 4 4 4 4 \hh 4 } 
    \ordl\pontr \lift #3.3 \n <eses ges!>2.\stopTextSpan\startTextSpan\mp\> ~
    \sq <eses ges>\stopTextSpan~ | 

}%end violinOne

violinTwoA= \relative c'' {
  %m1
  s1. s2. |
    \tastol\pontr \n <bes es\hm>1.\< \startTextSpan ~ 
    \topGliss <bes es\hm>2. \stopTextSpan \glissando _~ |
  <bes f'\hm>2. ~ \tastor <bes f'\hm>1.\p \startTextSpan ~ | 
  << { \n<bes f'\hm>1.\> r2.\! }
     { s2. s2. \stopTextSpan s2. } >> |

  %m5
  \pontr \textin <c ges'\hm>1.\sept\pp\< \startTextSpan  \textin <c ges'\hm>2(
    \feathr { <c ges'\hm>16[ s <c ges'\hm> <c ges'\hm>] } |
  \feathl { <c ges'\hm>16[\p\>\stopTextSpan <c ges'\hm> s <c ges'\hm>] }
    <c ges'\hm>2 \topGliss \once \tieDown <c ges'\hm>1.)\pp \glissando ~ |
  \tastor \n <c f\hm>1.\>\startTextSpan r2.\!\stopTextSpan |
  r2.\! \pontr \n \slurDashed fis'1.:32(\< \startTextSpan << { fis1.:32)( }
                                                { s2. s2 s4\stopTextSpan } >> |
  
  %m9
  <<{fis1.:32)\p\glissando}{s1 s2\<}>> | \once \tieDashed 
  \topGliss <fis\hm b,>1.:32~ \glissando <fis\hm cis>2.:32\mp | \slurSolid
  \tastor\ordl <b,\hm fis>1.:32\startTextSpan 
    \n <fis b\hm>2.:32\>\stopTextSpan \glissando |
  \pontr \hh f4\glissando\startTextSpan \noHead {f4 f4 4 4 4} 
    \sq f2.~\stopTextSpan |
  
  %m13
  \tastor \sq f2.\startTextSpan~ \sq <<{f2.}{s2 s4\stopTextSpan}>> r2.\!|
  r2 \tastor bes,,4(\pp\< \startTextSpan \feathr { bes16[ s16 bes16 16] }
    \feathl {\n bes16[\p\> 16 s bes16] } bes4~ bes2)\stopTextSpan r4\! |
  \pontr cis'1.\pp\< ~ \startTextSpan <<{cis2.\mp}{s2 s8. s16\stopTextSpan}>> | 
  r2\! \feathl {\ordl \leften #-1 \lift #2.7 
    <fis, ais\hm>16[(\sfz \startTextSpan <fis ais\hm>16 s <fis ais\hm>16] }
    \pontl\ordr \lift #2.6 <fis ais\hm>2.\mf\<\stopTextSpan\startTextSpan~
    <fis ais\hm>2) \stopTextSpan
      \feathr {\textin <fis b\hm>16([\startTextSpan s 
	<fis b\hm>16 <fis b\hm>16] } |

  %m17
  \once \slurDashed \pontl\tastor 
    <fis b\hm>2.:32)(\f\< \stopTextSpan\startTextSpan 
    <e b'\hm>2.:32 <e ais\hm>2.:32 \n <dis ais'\hm>2.:32\ff\> |
  <dis ais'\hm>2:32) r4\!\stopTextSpan r2. 
    \ordl\pontr <e b'\hm>2.\mp\< \startTextSpan ~ |
  \topGliss \once \tieDown  <e b'\hm>1.\f\>  \stopTextSpan \glissando ~ 
    \tastor <e a\hm>2.\mp\glissando \startTextSpan \Hh #-3.5 e4\> \glissando 
    \noHead { 4 4 |
  4\stopTextSpan  4 \hh 4 } \pontr \hh <e ais>4\p \glissando \startTextSpan 
    \noHead { 4 4 
    \n 4\> 4 4 } <e ais>2.:32 \stopTextSpan |
}%end violinTwo

violaA = \relative c {
  \tastol\shrink #'0.8 \lift #'2.7 \n \Hh #-2.5 cis'4\< \glissando 
    \startTextSpan \noHead {4 4 cis4 4 4 
    \pontl\tastor cis4 \stopTextSpan\startTextSpan 4 4 |
  \noAcc 4 4 \hh 4} \hh <dis fis,>4\fpp\glissando\stopTextSpan \noHead { 4 4 4 4 4 |
  \noAcc \shrink #2 4\startTextSpan 4 4 4 4 4 } \sq \noAcc <dis fis,>2. ~ |
  \n \shrink #-1.5 \pontl\tastor \noAcc \square <dis fis,>1.\> 
  \stopTextSpan\startTextSpan ~ 
  \sq <dis fis,>2.\stopTextSpan |

  %m5
  r1.\! \hH f4\pp\< \glissando \noHead { 4 4  |
  4 4 } \topGliss \pontr \hh <f aes>4\p\> \glissando \startTextSpan 
    \noHead { 4 4 4 4 4 4 } |
  \square <f a>1.\pp\stopTextSpan ~ 
    \shrink #1.5 \lift #3 \sq <f a>2.\startTextSpan ~ | 
  \shrink #-5 \tastol\pontr \noAcc \sq \n 
    <f a>2.\>\stopTextSpan\startTextSpan ~ 
    \sq <f a>1.\stopTextSpan r1.\! |

  %m9
  r4 \ordl\tastor e,2\fpp\< \startTextSpan ~ e2. \glissando | 
  \feathr { \textin dis16[\stopTextSpan s dis 16 dis] } 
    \n \pontr dis2:32(\mp\> \startTextSpan 
    dis4:16)\stopTextSpan r2\! <c f\hm>2.\p\<~ |
  \topGliss <c f\hm>2.\glissando ~ << { <c fis\hm>1.\sept\fp ~ | }
                                      { s2 s\startTextSpan } >>
  \ordl\pontr\shrink #2.5 \n <c fis\hm>1.\>\stopTextSpan\startTextSpan 
    r2.\!\stopTextSpan |

  %m13
  r2. \tastol \shrink #2 \Hh #'-2.5 gis'4\fpp\< \startTextSpan \glissando 
    \noHead { 4 \hh 4 } \topGliss \hh <gis fis>4 \glissando \noHead { 4 4 } |
  \ordl\pontr <gis fis>2. \stopTextSpan\startTextSpan ~ <gis fis>4 \stopTextSpan
    \feathl { <e a\hm>16[(\p\> <e a\hm>16 s <e a\hm>]} <e a\hm>4 
    \pontr <e a\hm>2. \startTextSpan ~ |
  <e a\hm>1.) \stopTextSpan \glissando <f! bes\hm>2.\pp |

  %m16
  \clef "treble"
  \ordl \lift #2.8 b'!2.(\fp \startTextSpan 
    \feathr {\pontl \shrink #0.5 \lift #2.8  b16[\<
      \stopTextSpan \startTextSpan s b b ]} 
    \slurDashed <b cis>2:32)(
    \ordl \leften #1.3 \lift #2.8 <b cis>2.:32)\< \stopTextSpan\startTextSpan \glissando |

  \pontl\tastor <aes d>2.:32( \stopTextSpan\startTextSpan 
    \n <ges es'>2.:32\ff\> <ges es'>1.:32) | \slurSolid
  r2.\! \stopTextSpan \ordl\pontr <aes f'>1.\p\< \startTextSpan ~ | 
  <aes f'>1.\f \stopTextSpan ~ \tastor <aes f'>1.\> \glissando 
    \startTextSpan|
  \hh <aes f'>4 \glissando \noHead {4\stopTextSpan 4 4 \pontr 4\p\startTextSpan 4 } 
    << {\n <aes f'>1.\> | }
       { s2. s2\stopTextSpan } >>
}%end viola

celloA = \relative c {
  %m1
  \clef "bass"
  s1. s2. | 
  r2. \Hh #'-3 des'4\tasto\pp\< \glissando \noHead { 4 4 4 4 4 |
  \noAcc \pontr 4\p \startTextSpan 4 \hh 4 } 
    \hh <des f,!>4 \glissando \noHead { 4 4 4 4 4
  \noAcc 4\stopTextSpan 4 4} \n \sq \noAcc <d f,>1.\>~ | 

  %m5
  \sq <d f,>1. r2.\! |
  r1. r2 \n \feathl \hh { \textin aes16\tasto[(\fpp aes16 s16 aes16] } |
  \pontr \shrink #-2 \hH aes4) \startTextSpan \glissando \noHead { 4 4 
    4\< 4 4 4 4 \hh 4\stopTextSpan } |
  <aes d!\hm>2.\sept \p ~ <aes d!\hm>1. \glissando \n \square aes1.\> |

  %m9
  r2.\! \ordl \n \hH ais4\< \startTextSpan \glissando \noHead { 4 4 |
  \noAcc 4 }\tastol \hh 
    <ais cis,>4\mp \stopTextSpan\startTextSpan \glissando \noHead { 4 
    4 4 4 } \ordl\pontr <ais cis,>2.\stopTextSpan\startTextSpan \glissando |
  \once \tieUp \n \square <a c,>1.\> ~ \sq <c, f,>2.~\stopTextSpan | 
  \tastor \sq <c f,>2.\startTextSpan ~ \sq 1.~ |
     
  %m13
  <<{\sq 1.}{s2. s\stopTextSpan}>> r2.\! |
  r2. \n \lift #2.8 \hh gis'4\< \glissando \startTextSpan
    \noHead { 4 4 4 4 4 } | 
  \ordl\pontr \shrink #3.9 gis2.(\pp \stopTextSpan\startTextSpan ~ 
    <gis ais,>2. ~ <gis ais,>2\<
    \feathr { <gis ais,>16[ \stopTextSpan \shrink #-3 \lift #2.8 
      s\startTextSpan <gis ais,> <gis ais,>]\stopTextSpan  } |
  <<{ <gis ais,>1.:32)\fp\glissando  }
    { \leften #-5 \shrink #2 \lift #3 s2.\startTextSpan 
        \lift #3 \tastol s8\stopTextSpan\startTextSpan s8\< } >>
    \ordl\pontr <e gis,>2:32 \stopTextSpan\startTextSpan <c! fis,>4:32 |

  %m17
  \slurDashed <b dis,>1.:32(\ff \stopTextSpan \ordr <b dis,>1.:32)\> \startTextSpan |
  \redHead { \topGliss <ais gis'>2.:32(\f\glissando
    \topGliss <ais g'>2.:32\glissando 
    \once \stemDown <ais fis'>:32)\> \stopTextSpan |
  << { \once \slurUp <d e,>1.:32(\mf\> }
     { s2. \shrink #3 s2. \startTextSpan  } >>
     <b d>1.:32)
  \topGliss \n \Hh #-3 <cis b>4:32\mp \glissando \noHead { 4 4 \n 
    \tastol\pontr 4\>\stopTextSpan  \startTextSpan 4 4 
    4 4 \hh 4\stopTextSpan } r2.\! | } \slurSolid
}%end cello

%B Section
violinOneB = \relative c'' {
  %m21
  \noAcc \sq \tastor <eses ges>1.\startTextSpan~ 
    \sq <eses ges>2. \stopTextSpan r2\!  
    \feathr { \pontl\tastor \shrink #-1 \n c16[(\< \startTextSpan s c c] } |
  \feathl { \n c16[\mp\> c s c] } c2~ c2)\stopTextSpan 
    r4\! r4 \once \n <f, bes\hm>2\pont^(\< |
  \redHead <f bes\hm>1.:32)\p \glissando |
  \n \hh f4:32\>\glissando \noHead {f f f f f} |

  %m25
  \sq f2.:32 r2\! \feathr {\tastor \n d'16[(\< \startTextSpan s d d] } |
  \feathl \hh {\n d16[\mp\> d s d]} \Hh #-2 d4)\stopTextSpan\glissando 
    \noHead { \hh d4 } r4\! 
    \shrink #1.3 \lift #1.8 <g, d'\hm>2\fpp\< \startTextSpan ~ <g d'\hm>1. ~ | 
  \n \pontl\tastor <g d'\hm>1.\p\>\stopTextSpan\startTextSpan ~ 
    <<{<g d'\hm>2.}{s2 s4\stopTextSpan}>> |
  r4\! \n \sq fis'2\< ~ \sq fis2.~ |
  
  %m29
  \pontr \noAcc \hh fis4\pp\< \glissando \startTextSpan \noHead 
    { \noAcc 4 4 4 4\stopTextSpan 4 \tastor 4\startTextSpan 4 4 }
    \n \sq fis2.\p\> ~ |
  \sq fis2 \stopTextSpan r4\! \topGliss <cis fis\hm>1.^\ord\fp\< ~ \glissando | 
  \pontr \shrink #-4 <cis gis'\hm>2.\mf \startTextSpan ~ 
    \once \tieDown \topGliss <cis gis'\hm>1. \stopTextSpan \glissando ~ |
  \n <cis g'!\hm>2.\sept~ \n \tastor <cis g'\hm>1.\>\startTextSpan ~ |
}%end violinOne

violinTwoB = \relative c' {
  %m21
  r1.\! r2. r2 \pontl\tastor 
    \feathr { \n fis16([\<\startTextSpan s fis16 16] } |
  \feathl { fis16[\mp\> 16 s fis16]} fis4)\stopTextSpan  r4\! r1. |
  \pontl\tastor \n \sq g1.\< \startTextSpan ~ |
  \n \sq g1.\pp\> ~ |

  %m25
  \sq g2 \stopTextSpan r4\! r2 \pontl\tastor \leften #-1.7 
    \feathr { \n aes16([\< \startTextSpan s aes16 16]} |
  \feathl \hh { \n aes16[\mp\> aes s aes16] } \Hh #-2.2 aes4) \stopTextSpan 
    \glissando \noHead { \hh 4 } 
    r2.\! \ordr <aes des\hm>1.\fpp\<  \startTextSpan ~ |  
  \topGliss <aes des\hm>2. \stopTextSpan \glissando _~ 
    \pontr <aes es'\hm>2.\p\startTextSpan ~ 
    \once\tieDown \topGliss <aes es'\hm>2.\! \stopTextSpan \glissando ~ |
  << { <aes d!\hm>1.\sept | }
     { s2. \n s2.\>         } >>
  
  %m29
  r2.\! \n \sq gis2.\<~ \sq gis2( \startTextSpan
    \feathr {\sq 16[ s \sq gis16 \sq gis16] } \sq gis2.:32) \glissando |
  \once \slurDashed \ordl gis1.:32( \stopTextSpan\startTextSpan
    gis2.:32)\mf\topGliss | 
  \pontl\tastor <gis\hm cis,>2.:32\stopTextSpan\startTextSpan \glissando 
    \pontl\tastor \n \Hh #-2 gis4:32\> \glissando \noHead { 4 4 4\stopTextSpan 4 \hh 4 } |
  r1.\! r2. |
}%end violinTwo

violaB = \relative c' {
  %m21
  \clef "alto" \grace {s8\!} r2. 
    \n \sq \pontl\tastor f1.^\markup{\null \raise #2 "S.P."}\<~
    \sq f2 \feathr { \tastor f16[( \startTextSpan s16 f f]  } |
  \feathl { \n f16\mp[ f s16 f])\stopTextSpan } r2\! 
    r2. r2 \feathr { \n fis16\pont[(\< s fis fis] } |  
  \n fis1.:32)\p\> |
  r2.\! r4 \n fis2\<~ |

  %m25
  \tastor fis2.\startTextSpan fis2\ppp \feathr { fis16[(\< s16 fis fis] } |
  \feathl \hh { fis16[\mp fis s fis] } 
    \n \Hh #-2 fis4)\>\stopTextSpan \glissando \noHead { \hh 4 }
    r2\! \pontr \n fis4\< \startTextSpan ~ 
      <<{fis1.~}{s2. s\mp\>}>> |  
  \n fis1.\p\>\glissando \sq fis2.~ |
  \sq \noAcc <fis b,>2.\stopTextSpan r2.\! |
  
  %m29
  r1. r4 \lift #3.8 \n \sq g(\<\startTextSpan 
    \feathr { \sq g16[ s \sq g \sq g] } 
    \sq g2.:32) \glissando |
  \once \slurDashed \ordl\pontr g1.:32( \stopTextSpan\startTextSpan 
    \once\tieDown \topGliss <c, g'\hm>2.:32)\mf\stopTextSpan \glissando ~ |
  <c f\hm>2.:32 \tastor \lift #2 \n <c f\hm>1.:32\>\glissando\startTextSpan |
  \hh c4:32 \glissando \noHead {4 4 4 4 4\stopTextSpan } \sq c2.~ |
}%end viola

celloB = \relative c {
  %m21 
  \acciaccatura {c,16} \tastol\pontr fis1.\pp \startTextSpan ~ fis1.\< |
  \repeat tremolo 12 { gis'32\mp\stopTextSpan cis,}
    \repeat tremolo 12 { \shrink #4 \lift #2 \tastor gis'32\startTextSpan cis,}
    \repeat tremolo 12 { gis'32 cis,\> } |
  \grace {gis'4\stopTextSpan ~} \pontr <gis b,>1.\p \startTextSpan \glissando |
  \n \sq <gis b,>2.\> ~ \sq <gis b,>2\stopTextSpan r4\!|

  %m25
  \acciaccatura {c,,16} \ordl\pontr ais'1.\pp \startTextSpan\< |
  \repeat tremolo 12 { b'32\mp\stopTextSpan e, }
    \repeat tremolo 12 { \shrink #3.5 \lift #3 \tastor b'32\startTextSpan e, }
    \repeat tremolo 12 { b'32\> e,\hm  }
    \repeat tremolo 12 { b'32 e,\hm } |
  \grace {b'4\stopTextSpan~ } \pontr <b d,>2.~\startTextSpan 
    \n <b d,>1.\p\> \glissando |
  \sq <b d,>2.~ \sq <b d,>4:32 \stopTextSpan r2\! |

  %m29
  \acciaccatura {c,,16} \ordl\pontr \lift #4 cis'1.\pp\< \startTextSpan ~ 
    \once \set glissandoMap = #'((1 . 0))
    <dis' cis,>1.\glissando ~ |
  \repeat tremolo 12 { 
                       \once \override NoteColumn.glissando-skip = ##t 
                       dis32 \stopTextSpan b32 }
    \repeat tremolo 12 {\tastor dis32\startTextSpan ais32 }
    \repeat tremolo 12 {dis32\mf gis,32 }
  \once \slurDashed \grace{dis'4\stopTextSpan ~} <dis fis,>2.:32 
    \pontr \lift #4 <cis fis,>2.:32 \startTextSpan \n <cis e,>2.:32\> |
  << { \n <cis e,>1.:32 \glissando }
     { s2. s2.\stopTextSpan        } >> \sq <cis e,>2.:32~ |
  \tieNeutral 

}%end celloB

violinOneAA = \relative c'' {
  %m33
  <<{<cis? g'?\hm>1.}{s1 s2\stopTextSpan}>> r2.\! |
  \topGliss \ordl\pontr <b e\harmonic>1.\pp\< \startTextSpan ~ 
    \topGliss <b e\hm>2. \stopTextSpan \glissando ~ |
  \tastor <b fis'\harmonic>1.\fp\startTextSpan 
  \HH fis'4 \stopTextSpan \glissando \noHead {4 \hh 4} | 
  \n \ordr \hH eis\> \startTextSpan \glissando \noHead { 4 4 
    \hh 4\! \stopTextSpan  } r2 |

  %m37
  \n <f, b!\harmonic>1.\sept\< ~ |
  <f b\harmonic>1.\pp \glissando |
  \pontr \n<fis cis'\hm>1. \startTextSpan ~ |
  <fis cis'\hm>1.\stopTextSpan \glissando 
    \n \ordr <fis b\hm>1.\>\startTextSpan ~ |

  %m41
  <fis b\hm>4\stopTextSpan\! r2 \tastor c''1.\pp\< ~ \startTextSpan|
  c2. <es, bes'\hm>1.\mp\>\stopTextSpan |
  \ordr \shrink #5 \lift #4.5 aes1.\pp\startTextSpan | 
  \n aes'1.\stopTextSpan ~ | 
  
}%end violinOne

violinTwoAA= \relative c' {
  %m33
  \pontl dis1.\pp\< \startTextSpan ~ dis2. \glissando |
  \tastol \Hh #-2.5 dis4\stopTextSpan\startTextSpan \glissando 
    \noHead { 4 4 4 4 4 \ordl 4\stopTextSpan\startTextSpan 4 4 |
  \noAcc 4 4 \hh 4 } \tastol\pontr \shrink #2.5 
    \hh <fis ais,>4\fp\stopTextSpan\startTextSpan \glissando 
    \noHead { 4 4 4 4 4  | 
  \n \noAcc 4\> 4 4 } << { \square <fis ais,>2. }
                    { s2 s4 \stopTextSpan }>> |

  %m37
  r2.\! <bes, d\hm>2.\ord\pp\<~ |
  \topGliss <bes d\hm>1.~ \glissando |
  \topGliss <bes f'\hm>2.\p ~ <bes e!\hm>2.\sept\spp ~ |
  \n \lift #2.2 <bes e\hm>1.\> \startTextSpan ~ 
    \pontl\ordr \lift #2.3 \shrink #2.5 <bes e\hm>1. 
    \stopTextSpan\startTextSpan |

  
  r2.\!\stopTextSpan 
    \tastol \lift #2.4 \HH e'4\pp\< \glissando \startTextSpan
    \noHead {4 4 4 4 \hh 4} | 
  \ordl\pontr \lift #2.5 e1.\mp \stopTextSpan\startTextSpan ~  e2.~ |
  e2. \stopTextSpan \glissando \n \tastor f2.\> \startTextSpan ~ | 
  << { f1.                 } 
     { s2. s2.\stopTextSpan} >>
}

violaAA = \relative c {
  %m33
  \sq \pontr c'1.\startTextSpan~ \sq c2.| 
  r1.\!\stopTextSpan \acciaccatura {f8} 
    \ordl \lift #2.3 \hH cis4\p \glissando\startTextSpan \noHead { 4 4 |
  \noAcc 4 4 4 } 
    \tastol\pontr \shrink #-3 \hh <cis f,!>4 \glissando \stopTextSpan\startTextSpan 
    \noHead { 4 4 4 4 4 |
  \noAcc 4 4 \n 4\> } \noAcc \square <c f,>2. ~  | 

  %m37
  \sq <c f,>1.\stopTextSpan |
  r4\! \n aes2\ord\< ~ aes2. ~ |
  aes2.\p <aes d\hm>2.\spp\sept~ |
  \shrink #1 \lift #2.8 \n <aes d\hm>1.\startTextSpan ~
    \pontl\ordr \shrink #-2 \n <aes d\hm>1.\> \stopTextSpan\startTextSpan ~ |

  %m41
  <aes d\hm>2.\stopTextSpan 
    r2\! \feathl { \lift #2.5 gis16[(\pp\< \startTextSpan gis s gis] } gis2.~ |
  gis2.) ~ \n \pontl\tastor <gis dis'\hm>1.\mf\> \stopTextSpan\startTextSpan ~ |
  <gis dis'\hm>2. r2.\!\stopTextSpan | 
  \acciaccatura {c,8} \clef "treble" fis''2.^\markup{\raise #2 "S.P."}\fpp \once\tieDown f!2. ~

}%end viola

celloAA = \relative c {
  %m33
  \sq <e cis'>1.:32~ \sq < e cis'>2.:16~ |
  \sq \tastor <e cis'>1.\startTextSpan~ \sq <e cis'>2. |
  r1.\!\stopTextSpan \n <fis, b\harmonic>2.\< \startTextSpan ~ |
  << { <fis b\harmonic>1. ~ } |
     { s2. \pontl\ordr \shrink #-2 \n s2.\mf\> \stopTextSpan\startTextSpan } >>

  %m37
  <fis b\hm>2. \stopTextSpan r2.\! |
  r2. \n b2.\< ~|
  \once \tieDown <b e\hm>1.\pp~ |
  \pontr <b fis'\hm>1.\startTextSpan ~ <b fis'\hm>1.\glissando |

  %m41
  ais1._~ ais2._~\stopTextSpan\< |
  <ais dis\hm>2.~ <ais eis'\hm>1.\mp \startTextSpan
  \acciaccatura {g16} \ordl\tastor fis'1. \stopTextSpan\startTextSpan ~ | 
  << { \n fis1.\> }
     { s2. s\stopTextSpan} >> |

}%end cello

violinOneBB = \relative c'''' {
  \n aes2. ~ \pontr <aes es>1.\pp\< \startTextSpan ~ | 
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
  \feathl { f16[\mf f16 s f16]} f2 ~ 
    << { <f g>1.              | }
       { s2. s2.\<\stopTextSpan } >>
  \repeat tremolo 12 { e32 dis32 } 
    \repeat tremolo 12 { \n \pontr \lift #4 e32\f\>\startTextSpan dis32 } 
    \once \slurDashed e4:32( dis2:32 \glissando 
    \sq dis2:32)\stopTextSpan r4\! |

}
violaBB = \relative c'' {
  \pontl \shrink #2 \lift #4 <f g>1.\startTextSpan ~ <f g>2.\< ~ | 
  \tastol\pontr \shrink #2 \lift #4 <f g>1.\mp\stopTextSpan\startTextSpan ~ 
    \lift #4 <f g>2.\< | 
  \repeat tremolo 12 {\shrink #2 es32\mf\stopTextSpan des,32}
    \repeat tremolo 12 {es'32 des,32} 
    \tastor es'2.:32\<\glissando\startTextSpan  |
  << { <g aes>1. ~     }
     { \lift #4 s2. \n s2.\f\> } >> 
      <g aes>2. \stopTextSpan r4\! \clef "alto" \n <f, bes\hm>2^"S.P."\fpp ~ |

}%end violaBB
celloBB = \relative c' {
  r1.\! \n \pontl\ordr bes2.\< \startTextSpan ~ |
  bes2. ~ bes1.\mf\> \stopTextSpan |
  \pontl\ordr f2.\mp\< \startTextSpan f1.\mf\<~ | 
  <f ges,>1.\f\stopTextSpan  ~ <f ges,>2.\> ~ ges,2.
}

violinOneCoda = \relative c''  {
  r2\! \feathl { <g c\hm>16[\mp <g c\hm> s <g c\hm>] } <g c\hm>2.~ 
    <g c\hm>1.\> |
  <gis dis'\hm>1.~ <gis dis'\hm>2.~ \topGliss 
    <gis dis'\hm>1.\p\< \glissando _~ |
  <gis cis\hm>1.\>~ \n <gis cis\hm>1.\pp\>~ |
  <gis cis\hm>1. r1.\! r2. |
}%end violinOneCoda

violinTwoCoda = \relative c'' {
  r2 \feathl {cis16([\mp\ord s cis cis]} e2.~ e1. \> ~ |
  e1.)\startTextSpan r2\! 
    \feathr { \pontl\tastor ais,16[(\< \stopTextSpan\startTextSpan s ais ais]} 
    ais2.:32
    \feathl \hh{ ais16[\> s ais ais]} \Hh #-2 ais4) \glissando \noHead { 4 |
  \noAcc 4\p\stopTextSpan 4 4 4 4\> \hh 4 } 
    \hH b4 \glissando \noHead { 4 4 \lift #2.5 4\pp\startTextSpan 4 4 |
  \noAcc \ordl\tastor \lift #2.5 \n 4\>\stopTextSpan\startTextSpan 4 4 4 4
    4 4 4 \hh 4\stopTextSpan } 
    r1.\! |

}%end violinTwoCoda

violaCoda = \relative c' {
  \n <f bes\hm>1. \glissando \once \tieUp \sq f1.\< ~ |
  \pontl\tastor \sq <f aes,>1.\p\startTextSpan ~ \sq<f aes,>2 
    \feathr {\sq <f aes,>16[ s \sq <f aes,>16 \sq 16]}
    \sq <f aes,>2.:32
    \feathl \hh {<f aes,>16[ 16 s <f aes,>16] } \hH <f aes,>4\! \glissando \noHead { 4 |
  \noAcc 4 4 \hh 4 \stopTextSpan } 
    \ordr <es\hm bes>2.~\startTextSpan <es\hm bes>1. \stopTextSpan \glissando |
  <d!\hm aes>1._\sept~ <d\hm aes>1.~ <d\hm aes>2. |
}%end violaCoda

celloCoda = \relative c, {
  es2.\p\< ~ es2.\mf\>\glissando d1.~ |
  d1.\mp ~ d1.\glissando cis2.\> ~ |
  cis1.\p\> \n c1.\pp\>~ |
  c1.~ c1. r2.\!  |

}%end celloCoda
timecode = {
  \set Score.markFormatter = #format-mark-box-alphabet
  \tempo "Patient like ice melting" 4 = 60
  %m1
  \time 9/4 s1. s2. | s1. s2. | s1. s2. | s1. s2. |

  %m5
  s1. s2. | s1. s2. | s1. s2. |
  \time 15/4 s2. s1. s1. |

  %m9
  \time 6/4 s1. |
  \time 9/4 s1. s2. | s1. s2. | s1. s2. |

  %m13
  \acciaccatura {s8} s1. s2. | s1. s2. | s1. s2. |
  s1. s2. |

  %m17
  \time 12/4 s1. s2. s2. | 
  \time 9/4 s1. s2. | 
  \time 12/4 s1. s2. s2. | 
  s1. s2. s2. |

  \pageBreak
  \tempo "Gentle awakening"
  \time 12/4 \acciaccatura {s8} s1. s1. | \time 9/4 s1. s2. |  
  \time 6/4 \acciaccatura {s4} s1. | s1. | 

  %m25
  \acciaccatura {s8} s1. |
  \time 12/4 s1. s1. |
  \time 9/4 \acciaccatura {s4} s1. s2. | 
  \time 6/4 s1. |

  %m29
  \time 12/4 \acciaccatura {s8} s1. s1. | 
  \time 9/4 s1. s2. |s1. s2. | s1. s2. |

  s1. s2. | s1. s2. | s1. s2. |
  \time 6/4 s1. | 
  
  %m37
  s1. | s1. | s1. |
  \time 12/4 s1. s1. |
  \time 9/4 s1. s2. | s1. s2. |
  \time 6/4 \acciaccatura {s8} s1. | s1. |

  \time 9/4 s1. s2. | s1. s2. | s1. s2. |
  \time 12/4 s1. s1. |
  \tempo "Morendo al fine" 4 = 50
  s1. s1. |
  \time 15/4 s1. s1. s2. |
  \time 12/4 s1. s1. |
  \time 15/4 s1. s1. s2. |
  \bar "|."
}
timecodeViolinI = {
  \set Score.markFormatter = #format-mark-box-alphabet
  \tempo "Patient like ice melting" 4 = 60
  %m1
  \time 9/4 s1. s2. | s1. s2. | s1. s2. | s1. s2. |

  %m5
  s1. s2. | s1. s2. | s1. s2. |
  \time 15/4 s2. s1. s1. |

  %m9
  \time 6/4 s1. |
  \time 9/4 s1. s2. | s1. s2. | s1. s2. |

  %m13
  \acciaccatura {s8} s1. s2. | s1. s2. | s1. s2. |
  s1. s2. |

  %m17
  \time 12/4 s1. s2. s2. | 
  \time 9/4 s1. s2. | 
  \time 12/4 s1. s2. s2. | 
  s1. s2. s2. |

  \break
  \tempo "Gentle awakening"
  \time 12/4 \acciaccatura {s8} s1. s1. | \time 9/4 s1. s2. |  
  \time 6/4 \acciaccatura {s4} s1. | s1. | 

  %m25
  \acciaccatura {s8} s1. |
  \time 12/4 s1. s1. |
  \time 9/4 \acciaccatura {s4} s1. s2. | 
  \time 6/4 s1. |

  %m29
  \time 12/4 \acciaccatura {s8} s1. s1. | 
  \time 9/4 s1. s2. |s1. s2. | s1. s2. |

  s1. s2. | s1. s2. | s1. s2. |
  \time 6/4 s1. | 
  
  %m37
  s1. | s1. | s1. |
  \time 12/4 s1. s1. |
  \time 9/4 s1. s2. | s1. s2. |
  \time 6/4 \acciaccatura {s8} s1. | s1. |

  \time 9/4 s1. s2. | s1. s2. | s1. s2. |
  \time 12/4 s1. s1. |
  \tempo "Morendo al fine" 4 = 50
  s1. s1. |
  \time 15/4 s1. s1. s2. |
  \time 12/4 s1. s1. |
  \time 15/4 s1. s1. s2. |
  \bar "|."
}
timecodeViolinII = {
  \set Score.markFormatter = #format-mark-box-alphabet
  \tempo "Patient like ice melting" 4 = 60
  %m1
  \time 9/4 s1. s2. | s1. s2. | s1. s2. | s1. s2. |

  %m5
  s1. s2. | s1. s2. | s1. s2. |
  \time 15/4 s2. s1. s1. |

  %m9
  \time 6/4 s1. |
  \time 9/4 s1. s2. | s1. s2. | s1. s2. |

  %m13
  \acciaccatura {s8} s1. s2. | s1. s2. | s1. s2. |
  s1. s2. |

  %m17
  \time 12/4 s1. s2. s2. | 
  \time 9/4 s1. s2. | 
  \time 12/4 s1. s2. s2. | 
  s1. s2. s2. |

  \break
  \tempo "Gentle awakening"
  \time 12/4 \acciaccatura {s8} s1. s1. | \time 9/4 s1. s2. |  
  \time 6/4 \acciaccatura {s4} s1. | s1. | 

  %m25
  \acciaccatura {s8} s1. |
  \time 12/4 s1. s1. |
  \time 9/4 \acciaccatura {s4} s1. s2. | 
  \time 6/4 s1. |

  %m29
  \time 12/4 \acciaccatura {s8} s1. s1. | 
  \time 9/4 s1. s2. |s1. s2. | s1. s2. |

  s1. s2. | s1. s2. | s1. s2. |
  \time 6/4 s1. | 
  
  \break
  %m37
  s1. | s1. | s1. |
  \time 12/4 s1. s1. |
  \time 9/4 s1. s2. | s1. s2. |
  \time 6/4 \acciaccatura {s8} s1. | s1. |

  \time 9/4 s1. s2. | s1. s2. | s1. s2. |
  \time 12/4 s1. s1. |
  \tempo "Morendo al fine" 4 = 50
  s1. s1. |
  \time 15/4 s1. s1. s2. |
  \time 12/4 s1. s1. |
  \time 15/4 s1. s1. s2. |
  \bar "|."
}
timecodeViola = {
  \set Score.markFormatter = #format-mark-box-alphabet
  \tempo "Patient like ice melting" 4 = 60
  %m1
  \time 9/4 s1. s2. | s1. s2. | s1. s2. | s1. s2. |

  %m5
  s1. s2. | s1. s2. | s1. s2. |
  \time 15/4 s2. s1. s1. |

  %m9
  \time 6/4 s1. |
  \time 9/4 s1. s2. | s1. s2. | s1. s2. |

  %m13
  \acciaccatura {s8} s1. s2. | s1. s2. | s1. s2. |
  s1. s2. |

  %m17
  \time 12/4 s1. s2. s2. | 
  \time 9/4 s1. s2. | 
  \time 12/4 s1. s2. s2. | 
  s1. s2. s2. |

  \tempo "Gentle awakening"
  \time 12/4 \acciaccatura {s8} s1. s1. | \time 9/4 s1. s2. |  
  \time 6/4 \acciaccatura {s4} s1. | s1. | 

  %m25
  \acciaccatura {s8} s1. |
  \time 12/4 s1. s1. |
  \time 9/4 \acciaccatura {s4} s1. s2. | 
  \time 6/4 s1. |

  %m29
  \time 12/4 \acciaccatura {s8} s1. s1. | 
  \time 9/4 s1. s2. |s1. s2. | s1. s2. |

  s1. s2. | s1. s2. | s1. s2. |
  \time 6/4 s1. | 
  
  %m37
  \break
  s1. | s1. | s1. |
  \time 12/4 s1. s1. |
  \time 9/4 s1. s2. | s1. s2. |
  \time 6/4 \acciaccatura {s8} s1. | s1. |

  \time 9/4 s1. s2. | s1. s2. | s1. s2. |
  \time 12/4 s1. s1. |
  \tempo "Morendo al fine" 4 = 50
  s1. s1. |
  \time 15/4 s1. s1. s2. |
  \time 12/4 s1. s1. |
  \time 15/4 s1. s1. s2. |
  \bar "|."
}
timecodeCello = {
  \set Score.markFormatter = #format-mark-box-alphabet
  \tempo "Patient like ice melting" 4 = 60
  %m1
  \time 9/4 s1. s2. | s1. s2. | s1. s2. | s1. s2. |

  %m5
  s1. s2. | s1. s2. | s1. s2. |
  \time 15/4 s2. s1. s1. |

  %m9
  \time 6/4 s1. |
  \time 9/4 s1. s2. | s1. s2. | s1. s2. |

  %m13
  \acciaccatura {s8} s1. s2. | s1. s2. | s1. s2. |
  s1. s2. |

  %m17
  \time 12/4 s1. s2. s2. | 
  \time 9/4 s1. s2. | 
  \time 12/4 s1. s2. s2. | 
  s1. s2. s2. |

  \tempo "Gentle awakening"
  \time 12/4 \acciaccatura {s8} s1. s1. | \time 9/4 s1. s2. |  
  \time 6/4 \acciaccatura {s4} s1. | s1. | 

  %m25
  \pageBreak
  \acciaccatura {s8} s1. |
  \time 12/4 s1. s1. |
  \time 9/4 \acciaccatura {s4} s1. s2. | 
  \time 6/4 s1. |

  %m29
  \time 12/4 \acciaccatura {s8} s1. s1. | 
  \time 9/4 s1. s2. |s1. s2. | s1. s2. |

  s1. s2. | s1. s2. | s1. s2. |
  \time 6/4 s1. | 
  
  %m37
  s1. | s1. | s1. |
  \time 12/4 s1. s1. |
  \time 9/4 s1. s2. | s1. s2. |
  \time 6/4 \acciaccatura {s8} s1. | s1. |

  \time 9/4 s1. s2. | s1. s2. | s1. s2. |
  \time 12/4 s1. s1. |
  \tempo "Morendo al fine" 4 = 50
  s1. s1. |
  \time 15/4 s1. s1. s2. |
  \time 12/4 s1. s1. |
  \time 15/4 s1. s1. s2. |
  \bar "|."
}

\layout {
  \context {
    \Score
  	proportionalNotationDuration = #(ly:make-moment 1/2)
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
	%instrumentName = #"Violin"
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
	%instrumentName = #"Violin"
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
	%instrumentName = #"Viola"
	shortInstrumentName = #""
      }<<{
	\spannerStyle
	\clef "alto"
	\violaA
	\violaB
	\violaAA
	\violaBB
	\violaCoda}
	{\timecode}
      >>
      \new Staff \with { 
	%instrumentName = #"Violocello"
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
}%end book
\book {
  \header {
    title = "IA, IA"
    composer = "Z. V. Pine"
    tagline = ""
  }
  \paper {
    #(set! paper-alist (cons '("ipad" . (cons (* 220 mm) (* 305 mm))) paper-alist))
    #(set-paper-size "ipad")
    top-margin = 0.7\in
    left-margin = 0.7\in
    right-margin = 0.6\in
    bottom-margin = 0.7\in
    indent = 0.3\in
    system-system-spacing.basic-distance = #20
    system-system-spacing.padding = #12
    indent = 0.6\in
    first-page-number = #1
  }
  \score {
    \new Staff \with { 
      instrumentName = #"Violin I"
      shortInstrumentName = #""
    }{
      <<{
      \spannerStyle

      \clef "treble"
      <<{\violinOneA}
	{r1. r2. r1. r2}>>
      \violinOneB
      \violinOneAA
      \violinOneBB
      \violinOneCoda
      }{
      \timecodeViolinI
      }>>
    }%end violinI Staff
  }%end score
}%end ViolinI

\book {
  \header {
    title = "IA, IA"
    composer = "Z. V. Pine"
    tagline = ""
  }
  \paper {
    #(set! paper-alist (cons '("ipad" . (cons (* 220 mm) (* 305 mm))) paper-alist))
    #(set-paper-size "ipad")
    top-margin = 0.7\in
    left-margin = 0.7\in
    right-margin = 0.6\in
    bottom-margin = 0.7\in
    indent = 0.3\in
    system-system-spacing.basic-distance = #24
    indent = 0.6\in
    first-page-number = #1
  }
  \score {
    \new Staff \with { 
      instrumentName = #"Violin II"
      shortInstrumentName = #""
    }{
      <<{
      \spannerStyle

      \clef "treble"
      << \violinTwoA {r1. r2}>>
      \violinTwoB
      \violinTwoAA
      \violinTwoBB
      \violinTwoCoda
      }{
      \timecodeViolinII
      }>>
    }%end violinII Staff
  }%end score
}%end ViolinII
  
\book {
  \header {
    title = "IA, IA"
    composer = "Z. V. Pine"
    tagline = ""
  }
  \paper {
    #(set! paper-alist (cons '("ipad" . (cons (* 220 mm) (* 305 mm))) paper-alist))
    #(set-paper-size "ipad")
    top-margin = 0.7\in
    left-margin = 0.7\in
    right-margin = 0.6\in
    bottom-margin = 0.7\in
    indent = 0.3\in
    system-system-spacing.basic-distance = #24
    indent = 0.6\in
  }
  \score {
    \new Staff \with { 
      instrumentName = #"Viola"
      shortInstrumentName = #""
    }{
      <<{
      \spannerStyle

      \clef "treble"
      \violaA
      \violaB
      \violaAA
      \violaBB
      \violaCoda
      }{
      \timecodeViola
      }>>
    }%end viola Staff
  }%end score
}%end Viola

\book {
  \header {
    title = "IA, IA"
    composer = "Z. V. Pine"
    tagline = ""
  }
  \paper {
    #(set! paper-alist (cons '("ipad" . (cons (* 220 mm) (* 305 mm))) paper-alist))
    #(set-paper-size "ipad")
    top-margin = 0.7\in
    left-margin = 0.7\in
    right-margin = 0.6\in
    bottom-margin = 0.7\in
    indent = 0.3\in
    system-system-spacing.basic-distance = #24
    indent = 0.8\in
  }
  \score {
    \new Staff \with { 
      instrumentName = #"Violoncello"
      shortInstrumentName = #""
    }{
      <<{
      \spannerStyle

      \clef "treble"
      << \celloA {r1. r2}>>
      \celloB
      \celloAA
      \celloBB
      \celloCoda
      }{
      \timecodeCello
      }>>
    }%end cello Staff
  }%end score
}%end Violoncello
