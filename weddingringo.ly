%Resumed 7/02/19 Rockville
\version "2.18.2"

\header {
  title = "Weddingringo"
  composer = "Z.V. Pine"
  poet = "N. Reyes"
}

lick = {
  <<
    \new Voice = "ima" {
      \stemUp
      \relative c' {
        r4 cis8 e\1 fis4\2 fis |
        r4 cis8 e fis8 gis fis e\1 |
        r4 cis8 e fis4 fis8 e |
        r4 cis4 r4 cis4 |

        r4 cis8 e fis4 fis |
        r4 cis8 e fis8 gis fis e |
        r4 cis8 e fis4 fis8 e |
        r4 cis4 r cis4 |
      }
    }
    \new Voice = "mids" {
      \voiceFour
      \relative c' {
        s2 < a cis >4 < a cis > |
        s2 < a cis >4 < a cis > |
        s2 < a cis >4 < a cis > |
        s1

        s2 < a cis >4 < a cis > |
        s2 < a cis >4 < a cis > |
        s2 < a cis >4 < a cis > |
        s1
      }
    }
    \new Voice = "p" {
      \stemDown
      \relative c {
        a8 e' gis4 e,4. e8 |
        a8 e' gis4 e,4. e8 |
        a8 e' gis4 e,4. e8 |
        a8 e' gis e a, e' gis e,8 |
        
        a8 e' gis4 e,4. e8 |
        a8 e' gis4 e,4. e8 |
        a8 e' gis4 e,4. e8 |
        a8 e' gis e a, e' gis e |
      }
    }
  >>
}

verse = {
  <<
    \new Voice = "ima" {
      \stemUp
      \relative c' {
        s4 cis s cis | s cis s s
        s4 cis8 e fis4 fis8 e |
        s4 cis4 s s |

        s s s s | s s s s |
        s4 cis8 e fis4 fis8 e |
        s4 cis4 s cis4 |

        s4 cis s cis | s cis s s 
        s4 cis8 e fis4 fis8 e |
        s4 cis4 s s |

        s s s s | s s s s |
        s4 cis8 e fis4 fis8 e |
        s4 cis4 s cis4 |

        s4 gis s gis | s fis s s |
        s gis s gis | r \tieUp d'2.~ | d2. b4\rest
      }
    }

    \new Voice = "mid" {
      \voiceFour 
      \relative c' {
        s1 | s1 |
        s2 < a cis >4 < a cis > |
        s1

        s1 | s1 |
        s2 < a cis >4 < a cis > |
        s1
        
        s1 | s1 |
        s2 < a cis >4 <  a cis > |
        s1

        s1 | s1 |
        s2 < a cis >4 < a cis > |
        s1
      }
    }

    \new Voice = "p" {
      \stemDown
      \relative c {
        a8 e' gis e a, e' gis e | a, e' gis e a, e' gis e |
        a,8 e' gis4 e,4. e8 |
        a8 e' gis e a, e' gis e |

        d8 fis a fis d fis a fis | d f a f d f a f |
        a,8 e' gis4 e,4. e8 |
        a8 e' gis e a, e' gis e |
        
        a,8 e' gis e a, e' gis e | a, e' gis e a, e' gis e |
        a,8 e' gis4 e,4. e8 |
        a8 e' gis e a, e' gis e |

        d8 fis a fis d fis a fis | d f a f d f a f |
        a,8 e' gis4 e,4. e8 |
        a8 e' gis e a, e' gis a, |

        e b' e b e, b' e eis, |
        fis a cis a fis a c a |
        e b' e b e, b' e b  |
        \set tieWaitForNote = ##t
        \tieDown
        f8 ~ f' ~ a2. ~ |  < f, f' a >2. a8\rest e8
      }
    }
  >>
}
verseThree = {
  <<
    \new Voice = "ima" {
      \stemUp
      \relative c' {
        s4 s s s | s s s s 
        s4 cis8 e fis4 fis8 e |
        s4 cis4 s cis4 |

        s4 s s s | s s s s|
        s4 cis8 e fis4 fis8 e |
        s4 cis4 s s |

        s4 s s s | s s s s |
        s4 cis8 e fis4 fis8 e |
        s4 cis4 s s |

        s4 s s s | s s s s |
        s4 cis8 e fis4 fis8 e |
        s4 cis4 r cis4 |

        s4 gis s gis | s fis s fis |
        s gis s gis | s \tieUp d'2.~ | d2.. r8
      }
    }

    \new Voice = "mid" {
      \voiceFour 
      \relative c' {
        s1 | s1 |
        s2 < a cis >4 < a cis > |
        s1

        s1 | s1 |
        s2 < a cis >4 < a cis > |
        s1
        
        s1 | s1 |
        s2 < a cis >4 <  a cis > |
        s1

        s1 | s1 |
        s2 < a cis >4 < a cis > |
        s1
      }
    }

    \new Voice = "p" {
      \stemDown
      \relative c {
        a8 cis a cis a cis e cis | a, e' gis e a, e' gis e |
        a8 e' gis4 e,4. e8 |
        a8 e' gis e a, cis e cis |

        d fis a fis d fis a fis | d f a f d f a f |
        a,8 e' gis4 e,4. e8 |
        a8 e' gis e a, cis e cis 
        
        a8 cis a cis b d b d | e a e a b, d b d |
        a8 e' gis4 e,4. e8 |
        a8 e' gis e a, e' d cis |

        d cis d cis d fis a fis | d f a f d f a f |
        a,8 e' gis4 e,4. e8 |
        a8 e' gis e a, e' gis a, |

        e b' e b e, b' e eis, | 
        fis a cis a fis a cis a |
        e b' e b e, b' e b
        \set tieWaitForNote = ##t
        \tieDown
        f8 ~ f' ~ a2. ~ |  < f, f' a >2.. e8
      }
    }
  >>
}

middle = <<
  \new Voice = "bottom stuff" {
    \stemDown
    \relative c { 
      \repeat unfold 7 { \tuplet 3/2 { a8 [ e' gis] } }
      \tuplet 3/2 { ais,8 [ e' g ] } |

      \repeat unfold 4 {
        \repeat unfold 3 { \tuplet 3/2 { b,8 [ fis' a ] } }
        \tuplet 3/2 { e,8 [ fis' a ] } |
        \repeat unfold 3 { \tuplet 3/2 { fis, [ e' a ] } }
        \tuplet 3/2 { e, [ e' a ] }
        \tuplet 3/2 { b, [ d a' ] }
        \repeat unfold 5 { \tuplet 3/2 { c, [ e a ] } }
        \repeat unfold 2 { \tuplet 3/2 { c, [ fis a ] } } |
      }

      \repeat unfold 7 {
        \repeat unfold 2 { \tuplet 3/2 { g, [ f' bes ] } }
        \repeat unfold 2 { \tuplet 3/2 { a, [ g' c ] } } |
        \tuplet 3/2 { bes, [ a' d ] }
        \tuplet 3/2 { c, [ g' c ] }
        \tuplet 3/2 { c, [ f bes ] }
        \tuplet 3/2 { c, [ e bes' ] }
      }
      {
        \repeat unfold 2 { \tuplet 3/2 { g, [ f' bes ] } } |
        \repeat unfold 2 { \tuplet 3/2 { a, [ g' c ] } } |
        \tuplet 3/2 { bes, [ a' d ] }
        \tuplet 3/2 { c, [ g' c ] }
        \tuplet 3/2 { c, [ f bes ] }
        \tuplet 3/2 { cis, [ e ais ] }

        \repeat unfold 3 { \tuplet 3/2 { b,8 [ fis' a ] } }
        \tuplet 3/2 { e,8 [ fis' a ] } |
        \repeat unfold 3 { \tuplet 3/2 { fis, [ e' a ] } }
        \tuplet 3/2 { e, [ e' a ] }
        \tuplet 3/2 { b, [ d a' ] }
        \repeat unfold 5 { \tuplet 3/2 { c, [ e a ] } }
        \repeat unfold 2 { \tuplet 3/2 { c, [ fis a ] } } |

        \repeat unfold 3 { \tuplet 3/2 { b,8 [ fis' a ] } }
        \tuplet 3/2 { e,8 [ fis' a ] } |
        \repeat unfold 3 { \tuplet 3/2 { fis, [ e' a ] } }
        \tuplet 3/2 { e, [ e' a ] }
        \tuplet 3/2 { b,8 [ fis' a ] }
        \tuplet 3/2 { cis,8 [ gis' b ] }
        \set tieWaitForNote = ##t
        \override NoteColumn.ignore-collision = ##t
        \tieDown
        \tuplet 3/2 { d,8~ [ a'~ cis~ ] }
        < d, a' cis >4
        \tuplet 3/2 { d8~ [ a'~ c~ ] }
        < d, a' c>2 b8\rest e, |
      }
    }
  }
  \new Voice = "top stuff" {
    \stemUp
    \hide TupletNumber
    \relative c' { 
      \repeat unfold 7 { \tuplet 3/2 { s8 s cis } }
      \tuplet 3/2 { s8 s cis } |

      \repeat unfold 4 {
        \repeat unfold 3 { \tuplet 3/2 { s s d } }
        \tuplet 3/2 { s s d } |
        \repeat unfold 3 { \tuplet 3/2 { s s cis } }
        \tuplet 3/2 { s s cis }
        \tuplet 3/2 { s s d }
        \repeat unfold 5 { \tuplet 3/2 { s s d } }
        \repeat unfold 2 { \tuplet 3/2 { s s d } } |
      }

      \repeat unfold 7 {
        \repeat unfold 2 { \tuplet 3/2 { s s d } } 
        \repeat unfold 2 { \tuplet 3/2 { s s e } } |
        \tuplet 3/2 { s s f }
        \tuplet 3/2 { s s e }
        \tuplet 3/2 { s s d }
        \tuplet 3/2 { s s des }
      }
      {
        \repeat unfold 2 { \tuplet 3/2 { s s d } } |
        \repeat unfold 2 { \tuplet 3/2 { s s e } } |
        \tuplet 3/2 { s s f }
        \tuplet 3/2 { s s e }
        \tuplet 3/2 { s s d }
        \tuplet 3/2 { s s cis }

        \repeat unfold 3 { \tuplet 3/2 { s s d } }
        \tuplet 3/2 { s s d } |
        \repeat unfold 3 { \tuplet 3/2 { s s cis } }
        \tuplet 3/2 { s s cis }
        \tuplet 3/2 { s s d }
        \repeat unfold 5 { \tuplet 3/2 { s s d } }
        \repeat unfold 2 { \tuplet 3/2 { s s d } } |

        \repeat unfold 3 { \tuplet 3/2 { s s d } }
        \tuplet 3/2 { s s d } |
        \repeat unfold 3 { \tuplet 3/2 { s s cis } }
        \tuplet 3/2 { s s cis }
        \tuplet 3/2 { s s d  }
        \tuplet 3/2 { s s e  }
        \set tieWaitForNote = ##t
        \override NoteColumn.ignore-collision = ##t
        \tieUp
        \tuplet 3/2 { s s fis~ }
        fis4
        \tuplet 3/2 { s8 s f~ }
        f2 r4 |
      }
    }
  }
>>

codao = <<
  \mergeDifferentlyHeadedOn
  \new Voice = "ima" {
  \relative c' {
    \stemUp

    \set tieWaitForNote = ##t
    r4 cis r d |
    r4 cis r d |
    r4 cis r d |
    r4 cis r d |
    

    a8 cis e fis aes es c aes |
    g b e fis dis bis gis'4 | 
  } }

  \new Voice = "p" {
  \relative c {
    \stemDown
    
    a8 e' gis e  a, f' a4 |
    a,8 e' gis e  a, f' a4 |
    a,8 e' gis e  a, f' a4 |
    a,8 e' gis e  a, f' a4_\3 |

    a2_\4 aes |
    g2 fis |

    < a, e' cis' e a >1
  } }
>>

vocals = {
  \relative c' {
    \autoBeamOff
    \partial 8 r8 | 
    \repeat unfold 8 { r1 | }
    r2 cis8 d cis4 | r8 cis cis cis cis b a fis | e1  | r2. e8 e |
    cis'8 b a b cis a b4 | r8 a b cis b4\prall a | a1 | r1 |
    fis'4 e8 cis cis d cis4 | r8 cis cis cis cis b a fis | e4 cis'8 cis4. r4 | r2. e,8 e | 
    cis'8 b a b a2 | r8 a b cis b a a4 | r1 | r2.. e8 |

    b'8 b b cis b4 a | a8( fis4. ) r8 e e e | b' b b cis b4 a | 
    d4.( cis16[ b]  \once \stemDown a8 b4. ) | r1 |

    r1 r r r r r r | r2.. a8 |
    
    fis'4 e8 cis cis d cis4 | r4 cis8 cis cis([ b)] a4  | e1  | r2. e8 e |
    cis'8 b a b cis([ a]) b4 | r8 a b cis b4\prall a | a1 | r2. a8 a |
    fis'4 e4  cis8 d cis4 | r4. cis8 cis b a fis | e cis' cis2. | r2 r8 e,8 e e | 
    cis'8 b a b a2 | r4 b8 cis b a a4 | r1 | r2. e8 e |

    b'8 b b cis b4 a | a8( fis4. ) r4 e8 e | b' b b cis b4 a | 
    d4.( cis16[ b]  \once \stemDown a8 b4. ) | r2. \tuplet 3/2 { r8 a a~} |
    a2 r | r1 |

    b2. \tuplet 3/2 { r8 b a } | \tuplet 3/2 { a4 fis8~} fis2  \tuplet 3/2 { r4 e8 }
    \tuplet 3/2 { b'4 a8 } c4 a \appoggiatura { a8 } g4~ | g2 r |
    cis2. \tuplet 3/2 { r8 cis b } | \tuplet 3/2 { a4 fis8~} fis2  \tuplet 3/2 { r4 e8 }
    \tuplet 3/2 { b'4 a8 } c4 a \appoggiatura { e'8 } d4~ | d2 r |
    r1 | r | r | r |
    r | r | r | r |
    r | r | r | r |
    r | r | r | r |
    r | r | r | r |
    r | r | r | r |
    r | r | r | r |
    b2. \tuplet 3/2 { r8 b cis} | 
      \tuplet 3/2 { e([ cis b)]} fis4 \tuplet 3/2 { r4 e8} \tuplet 3/2 { e4 e8 }
      \tuplet 3/2 { b'4 a8 } cis4 a2 | r2 r8 a a bis | 
    cis8 a2.. | r1 | r | r |
    r | r | r | r |

    cis,4 cis8 e fis gis fis4 | r8 e8 cis' cis cis b a fis  | e4 e8 e16([ d] cis2) | r2. e8 e |
    cis'8 b a b a2 | r4 b8 cis b a a4 | r1 | r2. e8 d |
    cis4 e4  fis8 gis fis4 | r8 e8 cis' cis cis b a fis | e cis' cis2 r4 | r2 r8 e,8 e e 
    cis'8 e, e e cis'2 | r4 b8 cis b a a4 | r1 | r2. e8 e |
    b' b b cis b4 a | a8( fis4.) r4 e8 e | b' b b cis b4\prall a | 
      d4.( cis16[ b]  \once \stemDown a8 b4. ) | r2. cis,8 e |
    fis8 e cis4 r4 a8 b | cis b b4 r4 a8 b | cis b b4 r4 a8 b | cis b b4.( cis8 b4 | a1) 

    s1 s1
  }
}
\layout {
  \context {
    \Score
    %proportionalNotationDuration = #(ly:make-moment 1/8)
    %\override Score.SpacingSpanner.strict-note-spacing = ##t
  }
  \context {
    \Staff
    \override VerticalAxisGroup.staff-staff-spacing.padding = #5
    \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #15
  }
}%end layout
\paper {
  #(set-paper-size "letter")
  indent = 0.6\in

  #(set! paper-alist (cons '("ipad pro" . (cons (* 215 mm) (* 280 mm))) paper-alist)) 
  #(set! paper-alist (cons '("montalvo" . (cons (* 11 in) (* 14 in))) paper-alist)) 
  #(set-paper-size "montalvo")
  top-margin = 0.7\in
  left-margin = 0.7\in
  right-margin = 0.6\in
  bottom-margin = 0.7\in
  %
  markup-system-spacing = 
    #'((basic-distance   . 10)
       (minimum-distance . 10)
       (padding          . 5 )
       (stretchability   . 1 ))

  system-system-spacing = 
    #'((basic-distance   . 25)
       (minimum-distance . 5)
       (padding          . 4 )
       (stretchability   . 1 ))

}%end paper

\score {<<
  \new Staff \with {
    %\override Staff.VerticalAxisGroup.remove-first = ##t
    instrumentName = #"Tenor"
  }{
    \new Voice = "vocals" {
      \clef "treble_8"
      \key a \major
      \time 2/2
      \vocals
    }
  }
  \new Lyrics \lyricsto "vocals" {
    De -- sert night, a wan -- ning cre -- scent and our time,
    in the air just final -- ly cool e -- nough to sail our souls out -- side,
    watch in a star -- less sky as we con -- spire to tell the world a lie:
    that we ne -- ver called this love though not for lack of trying.

    You grant your -- self a kiss of mine 'cause I'm the on -- ly one who gives it right.

    To -- mor -- row the de -- pu -- ty rea -- ding you your vows
    will say “ha -- sta que la muer -- te, no se -- pa -- ra -- ting now”
    and the man who takes your hand and of -- fers you a wed -- ding band
    will have a clea -- ner shirt than me and far fi -- ner pants.

    O well, Le -- o, he may kiss the bride but the way he'll do it won't look right to me.

    O, Le -- o -- bar -- do, he got the green card O.
    O, Le -- o -- bar -- do, he got the green card O.
    O, Le -- o -- bar -- do, now that he's got the green card: fe -- li -- ci -- da -- de.

    Dawn to the de -- sert dust with sal -- u -- ta -- tions of a sil -- ver sun
    and the moun -- tains to the East final -- ly ov -- er come,
    and that light should land at last on the de -- ser -- ved Mi -- choa -- ca -- no man
    to shine a star u -- pon his home and to grow his grass
    ain't much con -- so -- la -- tion for the dust
    that the sil -- ver sun is bur -- ning up.

    O, our de -- sert night
    when the li -- zards lived
    was our time to sin.
    Our time had to end.
  }
  
  \new Staff \with {
    instrumentName = #"Guitar"
  }{
    \new Voice = "guitar" {
	\clef "treble_8"
	\key a \major
	\time 2/2
	\partial 8 << { b8\rest } \\ { e,8 } >> | 
	\lick \verse 
	\lick \verse \middle 
	\lick \verseThree \codao
      }
  }
>>
}

