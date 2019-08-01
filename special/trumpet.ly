%Sun, 10 Feb 2019 17:23:49 -0600
\version "2.18.2"

\include "./z/staff.ily"
\include "./z/note.ily"
\include "./z/glissando.ily"
\include "./z/glissando-with-text-02.ily"
\include "./z/dynamic.ily"
\include "./z/spanner.ily"
\include "./z/square.ily"

strt = \startTextSpan
stsp = \stopTextSpan
gl = \glissando

glArrowOn = {
  \once \override Glissando.bound-details.right.arrow = ##t
  \override Glissando.arrow-length = #1.0
  \override Glissando.arrow-width = #0.5
}
forceClef = \set Staff.forceClef = ##t
noClef = \once \override Staff.Clef.transparent = ##t

\header {
  title = "trumpet"
  tagline = ""
}%end header

timecode = {
  \time 2/4
  \set Score.currentBarNumber = #0

  \repeat unfold 48 {

    s2^\markup {
      \override #'(thickness . 2)
      \draw-line #'(0 . 2)} |
  }
  s1 * 11 
  \repeat unfold 8 {

    s2^\markup {
      \override #'(thickness . 2)
      \draw-line #'(0 . 2)} |
  }

  s1 * 6 s4

  \repeat unfold 8 {

    s2^\markup {
      \override #'(thickness . 2)
      \draw-line #'(0 . 2)} |
  }
}

music = {
  \override Score.BarLine.transparent = ##t
  \override Score.GraceSpacing.spacing-increment = #4.0

  \override Glissando.thickness = #3

  \override DynamicLineSpanner.staff-padding = #4
  \override Fingering.staff-padding = #5
  \override Fingering.self-alignment-X = #-0.5

  \override TextSpanner.outside-staff-priority = ##f
  \override TextSpanner.bound-details.left.padding = #0
  \override TextSpanner.bound-details.right.padding = #5
  \override TextSpanner.style = ##f
  \override TextSpanner.staff-padding = #7.5
  \override TextSpanner.bound-details.right.arrow = ##t
  \override TextSpanner.bound-details.right.stencil-align-dir-y = #CENTER
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \override Staff.Clef.full-size-change = ##t
  \set Staff.explicitClefVisibility = #end-of-line-invisible   

  \spannerText "rapido"
  \stemless {
    b'4\ff\<\gl\strt\finger "0/1" \no-line { s2. | s1 | 
      \headless b'''2\stsp\fff | } 

    \fancy-gliss
      #'(
       (2 -4)
       (6 3.5)
       (7 -1)
       (9 0 8 5 12 0)
       )
    \forceClef cis'''4\gl\finger "0/2"\f \no-line { s2. | s1 | 
      \no-acc \headless cis'''2\fermata } |

    \break

    \fancy-gliss
      #'(
       (1 -4)
       (3 2)
       (5 -5)
       (7 3)
       (9 -5.5)
       (11 -11 11 4 15 -9)
       )
    \forceClef cis'''4\gl\finger "1/2"\f \no-line { s2. | s2 | s2 | 
      \no-acc \headless cis'''2 } |

    \glArrowOn 
    \forceClef \n b'4\startTrillSpan\gl\finger "0/2"\mf\> 
      \no-line { s2. | s1\gl\finger "0/1"
      \square b'1\finger "0/3"\gl | s2 | \headless b'1\!\stopTrillSpan |}

    \break 
    \noClef \spannerText "rapido lento"
    \no-line { \headless f'''4\fff\>\gl\strt\finger "0/1" s2. | s1 }
    
    \forceClef b'4\stsp\f\gl s2. | s4 \headless b'4 |
    c'4\gl s2. | s1 | s4 \headless c'4 |

    \fancy-gliss
      #'(
       (1 -1)
       (3 4)
       (5 -1)
       (7 6)
       (9 0)
       )
    \forceClef cis''4\gl\finger "2/3"\f \no-line { s2. | s2 | 
      \no-acc \headless cis'''2 } |
    \fancy-gliss
      #'(
       (1 -2)
       (3 4)
       (5 -1)
       (7 6)
       (9 -5.5)
       (11 -11 11 4 15 -9)
       )
    \forceClef g''4\gl\finger "0/2/3"\f \no-line { s2. | s2 | s2 | 
      \no-acc \headless cis'''2 } |
    }%end stemless
    \forceClef \grace {a'16} \stemless { 
      \glissandoTrill \n bes'4\>\trill\gl
      s2. | s4 \no-acc \headless bes'4\!
    }%end stemless

    \break

    \relative c''' {
      \tempo 4=60
      g4\p( b,1 ) r2. cis1 r2 c!2( es,1 e!2.) r1.
    
      \break
      e'1:32\f( f4-.) r4 es2\mp d1( fis,4) r2 
	\stemless cis''4\fp\<\glissando \no-line {s1 s2 s1 s1 
	\no-acc \stemless \headless cis4\ff }
      
      \break
      \square { fis,,,1\pp( a2 bes4 c1) } r2
      b'2.( cis4 g'2) fis4( b1) 
      
      \break beseh4(
      \fancy-gliss
	#'(
	 (1 -4)
	 (3 2)
	 (5 -5)
	 (7 3)
	 (9 -5.5)
	 (11 -11 11 4 15 -9)
	 )
      \stemless g'8\finger "0/1/2/3")\gl 
      \no-line \stemless {
	s8 s2. s1 s1 s2 
      }

      \forceClef c,,,2. r4 b1
  }  
}%end music

\layout {
  \context {
    \Score
      proportionalNotationDuration = #(ly:make-moment 1/4)
      \override Score.SpacingSpanner.strict-note-spacing = ##f
  }
  \context {
    \Staff
      \override TimeSignature.stencil = ##f
  }%end context
}%end layout

\paper {
  #(set-paper-size "letter")
  indent = 0.9\in

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
    #'((basic-distance   . 30)
       (minimum-distance . 20)
       (padding          . 4 )
       (stretchability   . 1 ))
}%end paper

\score {
  \pointAndClickOff
  <<
    \new Staff \with {
      \override Clef.stencil = ##f
      \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #14
      instrumentName = 
	\markup {\small \center-column {\null \lower #3 "Seconds" \lower #5 "Fingering"}}
    }{
      \override Staff.StaffSymbol.line-count = #0
      \timecode
    }
    \new Staff = "trumpet" \with {
      instrumentName = 
	\markup {\center-column {"Trumpet" \concat {"in B" \raise #0.5 \flat}}}
      shortInstrumentName = ""
    }{
      \music
    }%end yStaff
  >>
}%end score

