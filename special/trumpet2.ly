%Wed, 27 Feb 2019 11:02:54 -0600
\version "2.18.2"

\include "../z/staff.ily"
\include "../z/note.ily"
\include "../z/glissando.ily"
\include "../z/dynamic.ily"
\include "../z/spanner.ily"
\include "../z/square.ily"

strt = \startTextSpan
stsp = \stopTextSpan
gl = \glissando

glArrowOn = \once \override Glissando.bound-details.right.arrow = ##t
forceClef = \set Staff.forceClef = ##t

overrides = {
  \override DynamicLineSpanner.staff-padding = #4.0

  \override Fingering.staff-padding = #3
  \override Fingering.self-alignment-X = #0.5

  \override Glissando.arrow-length = #1.0
  \override Glissando.arrow-width = #0.5
  \override Glissando.thickness = #3

  \override Score.BarLine.transparent = ##t
  \override Score.BarNumber.transparent = ##t
  %\override Score.GraceSpacing.spacing-increment = #4.0
  %\override Staff.Clef.full-size-change = ##t

  \override TextSpanner.bound-details.left.padding = #0
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \override TextSpanner.bound-details.right.arrow = ##t
  \override TextSpanner.bound-details.right.padding = #5
  \override TextSpanner.bound-details.right.stencil-align-dir-y = #CENTER
  \override TextSpanner.outside-staff-priority = ##f
  \override TextSpanner.style = ##f
  \override TextSpanner.staff-padding = #7.5

  \set Staff.explicitClefVisibility = #end-of-line-invisible
  \hide Staff.TimeSignature
  \set Score.currentBarNumber = #0
  \set Score.markFormatter = #format-mark-box-letters
}

tick = \markup {
  \override #'(thickness . 2)
  \draw-line #'(0 . 2)
}

\header {
  title = "Special Pleading"
  subtitle = "for Andrew Kozar"
  composer = "Z.V. Pine"
  tagline = ""
}%end header

impulse = {
  \overrides
  \override Score.SpacingSpanner.strict-note-spacing = ##f
  \time 1/4
  \tempo \markup \normal-text {"60 bpm"}
  \stemless {
    b'4->\finger "1/2" \gl 
    \no-line { 
      \override NoteHead.no-ledgers = ##t
      s2. s1 \headless g'''4 r4 
      b''4\gl\finger 2 s8 \headless b''8    
    }%end no-line
    e''4\gl\finger "0/2" c'''4-. \no-line {
      b''4->\gl\finger 1 s4. \headless b''8
    }%end no-line
  }%end stemless
  \tuplet 6/4 { e'16_( f' fis' g' gis' a' } 
  \stemless {
    bes'4)\gl\finger "0/1" \no-line { s2. \headless g'''4 }
    b'!4\gl\finger "0/2" \no-line { s2 \headless g'''4 }
    bes'4\gl\finger "1/2" \no-line { s4 \headless g'''4 }
    aes'4\gl\finger "1/2/3" \no-line { s2 \headless g'''4 }
    \bar "" \break
    \pitchedTrill
    aes''4\startTrillSpan g'' \no-line { s2. s4\stopTrillSpan }
    g'4\gl\finger "0/3" \no-line { s2 \headless g'''4 }
    \pitchedTrill
    g''4\startTrillSpan fis'' \no-line { s2. s4\stopTrillSpan }
    \pitchedTrill
    bes4\startTrillSpan a \no-line { s2 s4\stopTrillSpan }
  }%end stemless

  %Getting Feldmanesque
  \bar "" \break
  \tempo 4 = 80
  g''1\mp\( aes'1.\) e''4.\mf\( a''!1.\) r2 
  << {es''4.\( f'2.\)}
     {s4.\mp\> s2 s4\p}>>
  \bar "" \break bes'4--\p\<
  \tempo \markup \normal-text {"60 bpm"}
  \stemless { b'4\gl\finger 2 \no-line { s2 \headless g'''4\f }}
  \tempo 4 = 80
  \tuplet 6/4 { g''16->\>( f'' es'' des'')-. c''-. bes'-. } aes'1\mf  r4
  <<{\tuplet 6/4 { g''16( fis'' e'' dis'') cis'' b' } a'!2.}
    {s4\mp\> s2 s4\p}>>
  c''2\fp
  bes'1\pp~ \tuplet 5/4 {bes'16\< c'' d'' e'' f''(} g''2)\f fis'1.\p

  
  << {\n \pitchedTrill f''!1\startTrillSpan\mp\> e''}
     { s2.. s8\!\stopTrillSpan }>>
}%end impulse

dynamics = {
  %\override Hairpin.shorten-pair = #'(0 . -3)
  s4\fp\< s2. s1 s4\fff s4 s4\f s8 s8 s4\< s4\fff
  s4\f\< s4. s8\ff s4\p\<
    s4 s2. s4\fff
    s4\f\< s2 s4\ff
    s4\< s4 s4\fff
  s4\p\< s2 s4\fff
  s4\fp s2. s4
  s4\p\< s2 s4\ff
  s4\p s2. s4
  s4\pp s2 s4
}

%1) Feldman Mids
%2) Feldman Lows
%3) Longtone Mids
%4) Longtone Lows / Breath sounds
%5) Longtone Highs / Breath sounds
feldman = {
  \newSpacingSection
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
  \cadenzaOn
  \time 1/8
  %repeat
  \tempo \markup \normal-text \underline "Tech. Cue 1"
  \bar ""
    dih''4.\p( f'2..) r4
    deseh''4.( fih'!1) r4.
    d''4( fisih'1.) r8
    f'!2( deh''!1.) r2 
    \bar ""
    d''4\pp( f'2.) r4
    fih'8( deseh''1.) r2
    fisih''2\p( aih'2.) r4.
    fih'!2.( f''!1) r2. 
    \bar "" 
    fis'1\mp g'1.( e''4.) r4 
    fis'1. dih''2.( fih''4) r4 
    fis'1\pp g'1.( e''4.) r4 
    fis'1. dih''2.( fih''4) r4 

  \bar "" 
  gis'1\p\< g'2 fis''2\mp
  r8 aisih'2..\pp r4 e''2.(\p\<

  fisih''2\mp aih'2.) r4.
  fisih''2( aih'2..) r4

  \bar "" 
  g'2.\mf( eeh''1...) r4. 
  gih''2( fis''2 cih''1) r8 
  f''2(\mp aih'2.) r8
  cisih''4( d''1.) r2

  \bar "" 
  %\tempo "sinusoidal"
  c''!1.\ppp  cisih''2. r4.
  c''!1  cisih''1 r2.
  c''!1.~  cisih''1 r4.
  es'1.\pp\<~
  es'!2. aes'!2 c''2 d''4
  es''1.\mf
  \bar "" 
  \cadenzaOff
}

feldmanTwo = <<
  {
    \cadenzaOn
    \tempo \markup \normal-text \underline "Tech. Cue 2"
    \time 1/8
    %repeat
    \bar ""
    r4 d'2\p( aih2..) r8
    cis'2..( a2..) r4.
    cisih'1( aih1) r4
    aih1~ r2
    \bar "" 
    r2 cisih'4\pp( aih2.) r8
    cis'2.( d'1..) r4
    aih2.\p( cisih'2.) r8
    aih1. 
    \bar ""
    r4. cih'1.\mp gih1. r4 
    beh1. gih1.. r8 
    cih'1.\pp gih1. r4 
    beh1. 
    \bar ""
    r4. d'2..\mp( fih1)
    \n eeh'1..\p\>
    r4.\! aih2.(\p cisih'2.) r8
    aih4.\mp( cisih'2.) r4
    \bar ""

    gih2..\mf dih'1.. r8 
    cih'2( bih2.) fis1 
    r4 d''2.(\mp cisih'4.) r8
    f'4.( aih1.) r4

    \bar "" 
    %\tempo "sinusoidal"
    cis'1.\ppp~  cis'2. r4.
    cis'1~  cis'1 r2.
    b1.~  b1 r4.
    \bar "" 
    aes1...\pp\<
    aes!2.. aes1
    aes1.\mf
    \bar "" 
    \cadenzaOff
  }
>>

longtonesMid = {
  \cadenzaOn
  \time 1/8
  %repeat
  \bar ""
    r8 dih''2..\mp( f'2..) r4
    deseh''2.. r4

    fisih'1 r8
    f'!1..( deh''!1.) 
    \bar "" \break 
    d''1\pp
    fih'2..( deseh''1) r2

    fisih''1\mp( aih'1) r4.
    fih'!1..
    \bar ""
    e'1..(\mf g'2..) fis'1.. r4. 
    dih''1( fih''1.) r4.
    e'2..\pp r4. 
    dih''1( fih''1.) r8
  \bar ""
  fis''2.\p\<( g''2.)\mp r8
  aisih'2..\pp e''1..

  r4 fisih''2.\mp( aih'2..) r8
  fisih''1\p\<

  \bar ""
  g'1\mf( eeh''1.) r4 
  gih''2.( fis''2.. cih''1) 
  \square {
    r8 \n aes2\<~ \n aes2..\mp\> r4\!
    \n aeseh2..\<~ \n aeseh2.\mf\> r4\!
  \bar ""
    %\tempo "sinusoidal"
    cih'2.\p( b!1.)  r4.
    cih'1 b!1  r2.
    cih'1 b!1. r4.
    \bar "" 
  }
    \n aes'1...\<
    c''!2. es''!4. bes'2
    es'1.\mf 
    \bar "" \break
  \cadenzaOff
}
longtonesLow = <<
  {
    \cadenzaOn
    \time 1/8
    %repeat
    \bar "" \break
    r2 d'1.\mp r4
    a1.. r4
    aih1. r8
    cisih'1.~ r2
    \bar "" \break

    aih1..\pp r8
    cis'1.. r4
    aih1.\p cisih'1. r2 
    \bar "" \break

    gih1\mf~ cih'1.. r4 
    gih1 beh1. r4
    gih1\pp cih'1.. r4 
    gih1 beh1. r4.
    \bar "" \break
    <<{eeh'1...}
      {s1..\p\< s16 s16\mp}>> r4
    fih1...\pp

    cisih'1\mp r4.
    aih1..\p\<
    \bar "" \break

    dih'1.\mf r8 gih1 r8 
    cih'2.. r8 bih1.  
    \square {
      r4. cih'2.\mf r8
      a1...\mp r2

    \bar "" \break

      %\tempo "sinusoidal"
      c'1..\p c'2. r8
      c'1 c'1. r4
      bes1.  bes1 r4.
    }
    \bar "" \break
    r8 aes'1...\p\<
    c''8 es''4. ges''4. bes''!4 aes''!4. 
    bes''1.\mf\<
    \bar "" 
    \cadenzaOff
  }
>>

longtonesHigh = <<
  {
    \cadenzaOn
    \time 1/8
    %repeat
    \bar "" \break
    r2.\! bih''1\f r2.
    aih''1.. r2
    a''2. r4.
    g''1..
    \bar "" \break
    r2. bih'1\p r4
    cisih''1.. r2
    a''1\mp r2 aeh''1.. 
    \bar "" \break

    r8 g''1\f~ g''1.. r4 
    fih''1~ fih''1. r4
    g''1\p~ g''1.. r4 
    fih''1~ fih''1. r4.

    \bar "" \break
    <<{g''1...}
      {s1..\p\< s16 s16\mp}>> r4
    gisih'1...\pp\<

    aih''1\mp r4.
    eih''1. r4

    \bar "" \break
    g''1.\f r8 g''1 r8 
    eeh''2.. r8 eeh''1.  
    \bar "" \break
    \newSpacingSection
    <<{\square cis'1...\p\fermata}
    { s4
      \no-line { s2.
	\set Score.proportionalNotationDuration = #(ly:make-moment 1/1)
	\override Hairpin.minimum-length = #9
	\tempo \markup {\normal-text \italic "solo"}
	<<{\no-acc \square b'1\fermata}
	  {\n s4 \< \n 
	  \once \override Hairpin.shorten-pair = #'(-0.2 . -1) s4\p\> s4\!}>>
	<<{\no-acc \square g'1.\fermata}
	  {\n s4 \< \n 
	  \once \override Hairpin.shorten-pair = #'(-0.5 . -2.1) s4\pp\> s4\!}>>
	<<{\no-acc \square d''1\fermata}
	  {\n s4 \< \n 
	  \once \override Hairpin.shorten-pair = #'(-0.4 . -2.1) s4\pp\> s4\!}>>
	<<{\no-acc \square e'1..\fermata}
	  {\n s4 \< \n 
	  \once \override Hairpin.shorten-pair = #'(-0.2 . -1) s4\p\> s4\!}>>
      }
    }>>
  }
>>


timecode = {
  \repeat unfold 52 { s4^\tick }
  \repeat unfold 25 { s4^\markup {\with-color #white \tick}}  
  \repeat unfold 4 { s4^\tick }
  \repeat unfold 25 { s4^\markup {\with-color #white \tick}}  
}

\layout {
  \context {
    \Score
      proportionalNotationDuration = #(ly:make-moment 1/8)
  }
  \context {
    \Staff
      \accidentalStyle neo-modern
  }%end context
}%end layout

\paper {
  #(set! paper-alist (cons '("montalvo" . (cons (* 11 in) (* 14 in))) paper-alist)) 
  #(set-paper-size "montalvo")
  indent = 1\in
  top-margin = 1.0\in
  left-margin = 1.0\in
  right-margin = 1.0\in
  bottom-margin = 1.0\in

  %{ PRE-FORMATTING FOR IPAD PRO ****************************************************
  #(set! paper-alist (cons '("ipad pro" . (cons (* 220 mm) (* 305 mm))) paper-alist)) 
  #(set-paper-size "ipad pro")
  top-margin = 0.7\in
  left-margin = 0.7\in
  right-margin = 0.6\in
  bottom-margin = 0.7\in
  %}
  
  markup-system-spacing = 
    #'((basic-distance   . 20)
       (minimum-distance . 10)
       (padding          . 5 )
       (stretchability   . 1 ))

  system-system-spacing = 
    #'((basic-distance   . 20)
       (minimum-distance . 10)
       (padding          . 4 )
       (stretchability   . 1 ))
}%end paper

\score {
  \pointAndClickOff
  <<
    \new Staff \with {
      \omit Staff.Clef 
      \omit Staff.TimeSignature
      \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #4
      instrumentName = \markup { \center-column {\null
						 \lower #0.2 "Seconds"
						 \lower #0.2 "Fingering"}}
    }{
      \override Staff.StaffSymbol.line-count = #0
      \timecode
    }
    \new Staff \with {
      instrumentName = "Trumpet"
      shortInstrumentName = ""
    }{
      \override Score.BarLine.transparent = ##t
      \impulse
      \mark 1 
      \feldman
      \mark 2
      \feldmanTwo
      \mark 3
      \longtonesMid
      \mark 4
      \longtonesLow
      \mark 5      
      \longtonesHigh
      \override Score.BarLine.transparent = ##f
      \bar "|."
    }%end Staff
    \new Dynamics {
      \dynamics
    }
  >>
}%end score

