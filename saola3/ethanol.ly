\version "2.19.80"
\paper {
  #(set-paper-size "quarto")
}
\layout {
  \context {
    \Score
  proportionalNotationDuration = #(ly:make-moment 1/10)
    \override Score.SpacingSpanner.strict-note-spacing = ##t
  }
}
vox = \relative  c {
  \autoBeamOff
  %Intro Riff
  \time 7/8 r2.. | 
            r2.. |
            r2.. |
            r2.. |

  %Wearing denim...
            r2 r8 d d |
  \time 9/8 b'4 b8 b b a4  d( |
  \time 7/8 b2) r4. |
            e4 d8 b a b a |
            b2..( | 
        a2..) |
        r2.. |
        r2.. |
  %So I came
            r2 r8 d, d |
  \time 9/8 b'4 b8 b b a8[( g)] a4 |
  \time 7/8 r2 r8 g g |
  \time 9/8 g4 g8 g e g a a8[( g8]~ |
  \time 7/8 g2) r4. |
            r2.. | 
            r2.. |
            r2.. |

  %Clandestine
  \time 7/8 r2 r8 d4 | 
  \time 9/8 b'4 b8 b b a4 g4 |
  \time 7/8 d4. e8 fis4. |
  \time 9/8 g8 d4. e8 fis4. g8 |
  \time 7/8 \tuplet 3/2 { g4( e d} e4.) |
            r2.. |
        r2.. |
  \time 9/8 r4 r4. r8 d d d~ |

  % --ums are fake
  \time 7/8 d b'4 b a8 g |
  \time 9/8 d'4 d b a8 g d~ |
  \time 7/8 d b'4 b r4 |
  \time 9/8 e4 d b a8 g a~ |
  \time 7/8 a b4 b a8 r |
  \time 9/8 a4 b b r8 g a~|
  \time 7/8 a b4 b a8 g |
  \time 9/8 a4 b b b( e,8~ |
  
  %--o ... We're burning
  \time 7/8 e4) r4 r8 e4 |
            e' d8 b a b4 |
            a4 r4 r8 g4 |
        e' d8 b a b4 |
            b4.( e,4) r4 |
        e8 e' d b a b b |
        a[( g]) r4 r8 g g e'4 d8 b a b4 |

  %--ody ... I never black out on
            b4. g8 r4. |
  \time 9/8 e'8 e d b[( a]) b4 a4 |
  \time 7/8 b2.. | 
            a2.. |
            g8[( e]) r4 r4. |
  \time 9/8 e'8 e d b[( a]) b4 a4 |
  \time 7/8 b2.. |
            a2.. | 
            b4 r4 r8 g g |
        e'4 d8 b a b4 |
        a8( g4.) r4. | 
        r2.. |

        r2.. |
        r2.. |
        r2.. |
        r2.. |
  %electrician
            r2 r8 d d 
  \time 9/8 b'4 b8 b b a4 g |
  \time 7/8 r2 r8 g g | 
            e'4 d8 b a b a |
            b2 r4. | 
        a2.. |
        b2.. |
        a2.. |

            b4 r4 r8 d,8 d |
  \time 9/8 b'4 b8 b b a8( g)  a4~  |
  \time 7/8 a4 r4 r8 g4 | 
  \time 9/8 g4 g8 g g g a b4~ |
  \time 7/8 b2 r4. | 
            a2 r4. |
            b2.. |
            a8( g4.) r4. |

  \time 7/8 r4 r4 r8 d8 d | 
    \time 9/8 b'4 b8 b b a8[( g]) g4 |
  \time 7/8 d4. e8 fis4  g8 |
  \time 9/8 g4 g8 g e g[( a]) a[( g]~ |
  \time 7/8 g2) r4. |
            r4 r4 r4. |
            b2.. |
  \time 9/8 a2 r4. d,8 d~ |

  \time 7/8 d8 b'4 b a8 g |
    \time 9/8 d'4 d4 b4 r4 d,8~ |
  \time 7/8 d8 b'4 b4 a8 g |
  \time 9/8 e'4 d4 b4 a8 g a~ |
  \time 7/8 a8 b4 b4 a4 |
  \time 9/8 r2 b4 a8 r e'~ |
  \time 7/8 e8 d4 b a8 g |
  \time 9/8 a4 b4 b4 b4( a8~
  
  \time 4/4 a4) r4 r4. e'8 |
  %I never
            e d b[( a]) b4 a4 |
  \time 7/8 b2.. | 
            a2.. |
  \time 4/4 g8[( e]) r4 r4. e'8
            e d b[( a]) b4 a4 |
  \time 7/8 b2.. | 
            a2.. |
        b4 r4 r8 

  %I could never
                       g4 |
        e'4 d8 b a b4 |
        a8( g4.) r4. |
        e'4 d8 b a b4 |
        b4 r4 r8 g g |
        e'4 d8 b a b[( a)] |
        a4 r4 r8 g g |
        e'4 d8 b a b4 |
              b4 r4 r8

  % have never seen
                       g4 |
        e'4 d8 b a b4 |
        a8([ g8)] r4 r8 g g |
        e'4 d8 b a b4 |
        b4 r4 r8 g g |
        e'4 d8 b a b4 |
        a4 r4 r4. |
        e'4 d8 b a b4 |
              b4 r4 r4. |
  % and I have never heard
        g8 e'8 d8 b a b4 |
        a8([ g8)] r4. g8 g |
        e'4 d8 b a b4 |
        b4 r4 r8 g g |
        e'4 d8 b a b4 |
        a4 r4 r8 g g |
        e'4 d8 b a b4 |
              b4 r4 r4. | 
  % I have never seend fight
        g8 e'8 d8 b a b4 |
        a8([ g8)] r4. g8 g |
        g4. g8 g g a |
        a([ g]) r4 r4. |
        g4 g4 g8 g a |
        a4 r4 r8 g4 |
        g4 g8 g g b b |
              
  \time 4/4 b2 r4. e8 
            e d b4 b4 a4 |
  \time 7/8 b2.. | 
            a2.. |
  \time 4/4 g8[( e]) r4 r4. e'8 |
            e d b[( a]) b4 a4 |
  \time 7/8 b2.. | 
            a2.. |
        b4 r4 r8 g g |
              e'4 d8 b a b4 |
        a8( g2.) |
        r2.. |


}

guitar = \relative c {
  g8[ g] g[ g] g[ g g] | 
  g8[ g] g[ g] g[ g g] |
  g8[ g] g[ g] g[ g g] | 
  g8[ g] g[ g] g[ g g] |

  %Wearing
  g8[ g] g[ g] g[ g g] | 
  g8[ g] g[ g] g[ g] g[ g g] | 
  g8[ g] g[ g] g[ g g] |
  g8[ g] g[ g] g[ g g] | 

  %veins
  c8[ c] c[ c] c[ c c] | 
  c8[ c] c[ c] c[ c c] | 
  c8[ c] c[ c] c[ c c] | 
  c8[ c] c[ c] c[ c c] | 

  %So I
  g8[ g] g[ g] g[ g g] |
  g8[ g] g[ g] g[ g] g[ g g] |
  g8[ g] g[ g] g[ g g] |
  g8[ g] g[ g] g[ g] g[ g g] |

  %aace
  c8[ c] c[ c] c[ c c] | 
  c8[ c] c[ c] c[ c c] | 
  c8[ c] c[ c] c[ c c] | 
  c8[ c] c[ c] c[ g c] | 
  
  %Clan
  c2 r4. |
  r4 r4. r4 r  |
  R1 |
  R1 |

  < d' fis b>2.. | 
  < c e a > | 
  < d g b> | 
  < d fis a >~ < d fis a>4 | 
  
  %Drumns
  < d fis b >2..
}
droit = \relative c'' {
  r2.. | r2..        | r2.. | r2.. |

  %Wearing
  r4 r r4. | r4 r r r4. | r4 r r4. | r4 r r4. |
  d2.. | c2.. | b2.. | a2.. | 
  b2.. | r4 r r r4. | r4 r r4. | r4 r r r4. |
  <d b>2.. | <c a> | <b g> | < a fis > |
  %Clan
  g16[ b d fis] g[ fis d b] g[ b d fis] g[ fis |
  d b] g[ b d fis] g[ fis d b] g[ b d fis] g[ fis d b] |
  g[ b d fis] g[ fis d b] g[ b d fis] g[ fis | 
  d b] g[ b d fis] g[ fis d b] g[ b d fis] g[ fis d b] |
  %Stage
  g[ b c e] g[ e c b] g[ b c e] g[ e |
  c b] g[ b c e  ] g[ e   c b] g[ b c e  ] |
  g[ e   c b] g[ c d e  ] g[ e   c b] g[ b | 
  c e  ] g[ e   c b] g[ b c e  ] g[ e   c b] g[ b c e  ] | 
  %drums
  g[ fis d b] g[ b d fis] g[ fis d b] g[ b |
  d fis] g[ fis d b] g[ b d fis] g[ fis d b] g[ b d fis] |
  g[ fis d b] g[ b d fis] g[ fis d b] g[ b |
  d fis] g[ fis d b] g[ b d fis] g[ fis d b] g[ b d fis] |
  %ing he's
  g[ e   c b] g[ b c e  ] g[ e   c b] g[ b |
  c e  ] g[ e   c b] g[ b c e  ] g[ e   c b] g[ b c e  ] |
  g[ e   c b] g'[ e   c b] g'[ e   c b] g'[ e |
  c b] g'[ e   c b] g'[ e   c b] g'[ e   c b] g'[ e   c b] | 
  <g b e>2..\arpeggio |
  r2 <g b e>4. | 
  <a cis e>2..  |
  r2 <a cis e>4. |
  <g b e>2..
}

gauche = \relative c {
 r4 r r4. | r4 r r4. | r4 r r4. | r4 r r4. |
 r4 r r4. | r4 r r r4. | r4 r r4. | r4 r r4. |
 r4 r r4. | r4 r r4. | r4 r r4. | r4 r r4. |
 r4 r r4. | r4 r r r4. | r4 r r4. | r4 r r r4. |
 r4 r r4. | r4 r r4. | r4 r r4. | r4 r g8[ g d] | 
 %Clan
 <g g,>4 g8[ g] g[ g g] |
 g[ g] g[ g ] g[ g] g[ g g] |
 g[ g] g[ g] g[ g g] |
 g[ g] g[ g ] g[ g] g[ g g] |
 %Stage
 <c c,>4 c8[ c] c[ c c] |
 c[ c] c[  c] <c c,>[ c c] |
 <c c,>[ c] c[ c] c[ c c] |
 <c c,>[ c] <c c,>[ c] <c c,>[ c] <c c,>[ <c d,> < c d,>] |
 %Drums
 \ottava #-1 <g g,>[ g] <g g,>[ g] <g g,>[ g g] |
 <g g,>[ g] <g g,>[ g] <g g,>[ g] <g g,>[ <g g,> <g g,>] | 
 <g g,>[ g] <g g,>[ g] <g g,>[ g g] |
 <g g,>[ g] <g g,>[ g] <g g,>[ g] <g g,>[ <g g,> <g g,>] | 
 %Thing he's saying
 \ottava #0 <c c,>[ c] <c c,>[ c] <c c,>[ c c] |
 <c c,>[ c] <c c,>[ c] <c c,>[ c] <c c,>[ <c c,> <c c,>] | 
 <c c,>[ c] <c c,>[ c] <c c,>[ c c] |
 <c c,>[ c] <c c,>[ c] <c c,>[ c] <c c,>[ <b b,> <g g,>] | 
 %oo. We're burn
 \ottava -1
 <e e,>2 b4. | 
 e2 g4.
 <a a,>2 cis,4. |
 <e a,>2 fis4. |
 <e e,>4 <e g,> <e b> e8 |
 <e e,>4 <fis fis,> <g g,> b8 |
 <a a,>4 <a cis,> <a e> a8 |
 <a a,>4 <g a,> <fis a,>8[ fis fis] |
 %body
 <g g,>8[ g] g[ g] g[ g g] |
 <g g,>[ g] <g a,>[ g] <g b,>[ g ] <g d>[ <a d,> <b d,>] |
 \ottava #0
 <c c,>[ c] c[ c] c[ c c] |
 <c c,>[ c] <c d,>[ c] <c e,>[ c c] |
 <d d,>[ d] d[ d] d[ d d] |
 <d d,>[ d] <d e,>[ d] <d fis,>[ d] <d d,>[ <c d,> <b d,>] |
 <c c,>[ c] c[ c] c[ c c] |
 <c c,>[ c] <c d,>[ c] <c e,>[ c] <d fis,> |
 <<{
   <e g,>[ <e g,>] <e g,>[ <e g,>] <e g,>[ <e g,> < e g,>] |
   <e g,>[ <e g,>] <e g,>[ <e g,>] <e g,>[ <e g,> <e g,>] |
   <e a,>[ <e a,>] <e a,>[ <e a,>] <e a,>[ <e a,> <e a,>] |
   <e a,>[ <e a,>] <e a,>[ <e a,>] <fis a,>[ <fis a,> <fis a,>] |
 } \\ { e,,2..~ | e | e~ | e | }>>
}

vocalText = \lyricmode {
  Wear -- ing de -- nim in the East Bay,
  fore -- arms bear -- ing black ink veins:
  
  so I came a -- cross a young blood
  play -- ing hard to get while play -- ing bass.

  Clan -- des -- tine in a red cup
  pla -- stic whi -- skey kissed me by the stage

  where the drums are fake and the Mac runs straight
  to the cheap P -- A. Mike- man don't mean a
  thing he's say -- ing. Kids don't dance. The
  kids don't dance, no. The kids don't dance, no.
  
  We're bur -- ning like the Reich -- stag
  but we're too cool to shout fire.
  My head is trying to re -- mi -- nisce
  but to -- night I'm go -- ing all bo -- dy.

  I ne -- ver black out on e -- tha -- nol.
  I ne -- ver black out on al -- cho -- hol
  but this night I'm going to for -- get. 

  E -- lec -- tri -- cian of the young bloods,
  su -- per -- sti -- tious a -- bout ma -- king 
  love through sa -- tel -- lites,
  
  ra -- ther ac -- tion at a di -- stance
  than ris -- king pride on loc -- king 
  eyes, hands, lip -- stick.

  Still we ga -- ther in the cool club,
  au -- to -- pho -- to -- ge -- nic with a red cup.
  (Mir -- ror.)

  We watch our feet and we watch our feeds,
  wash our teeth with the whi -- skey neat
  un -- til we feel some -- thing. (Some -- thing,
  whi -- skey neat un -- til we feel some -- thing.)

  I ne -- ver black out on e -- tha -- nol.
  I ne -- ver black out on al -- cho -- hol

  'cause I could ne -- ver for -- get
  tac -- king in the Bay wind
  from the clea -- nest dose of poi -- son
  to a mouth of brac -- kish ac -- id;

  and I have ne -- ver seen iron
  like the bel -- ly of the Bay Bridge
  full of co -- ca con di -- ge -- stive,
  saf -- fron in the Mi -- ssion;

  and I have ne -- ver heard loss
  like a ba -- ri -- tone of Whip -- its
  from the or -- fice of a thin grin
  on the face of Con -- nor Wil -- son;

  and I have ne -- ver seen fight
  like that town full of ra -- di -- cals, 
  star -- ving hy -- ste -- ri -- cal
  star- shin -- ning in the dy -- na -- mo.

  I ne -- ver black out on e -- tha -- nol.
  I ne -- ver black out on al -- cho -- hol
  but to -- night I'm going to for -- get.
}

\score {
<<
  \new Staff \with {
    instrumentName = #"Baritone"
  shortInstrumentName = #"B."
  }{
    \clef "treble_8"
  \key g \major
    \new Voice = "baritone" {
      \vox
    }
  }

  \new Lyrics \lyricsto "baritone" {
    \vocalText
  }

  \new Staff \with {
    instrumentName = #"Guitar"
  shortInstrumentName = #"Gtr."
  }{
    \clef "treble_8"
  \key g \major
  \new Voice = "guitar" {
      \guitar
  }
  }

  \new PianoStaff \with {
    instrumentName = #"Piano"
  shortInstrumentName = #"Pno."
  }<<
    \new Voice = "up" {
      \clef "treble"
    \key g \major
    \droit
  }
  \new Voice = "down" {
      \clef "bass"
    \key g \major
    \gauche
    s8 * 256 
  }
  >>
>>
}
