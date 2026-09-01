\version "2.24.1"

niente = \once \override Staff.Hairpin.circled-tip = ##t
nienteOn = \override Staff.Hairpin.circled-tip = ##t
nienteOff = \revert Staff.Hairpin.circled-tip

glissandoFormatting = {
	\override Staff.Glissando.thickness = #3
}

\include "./square.ily"

half-harmonic = #(define-music-function
  (parser location mus)
  (ly:music?)
  #{
    \temporary \override NoteHead.style = #'harmonic-black
    #mus
    \revert NoteHead.style
  #})

\paper {
  #(set-paper-size "letter")
  
  indent = 1.0\in

  top-margin = 0.5\in
  left-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in

  markup-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 1 ))

  system-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 10))
}

global = { 
	\glissandoFormatting
	\override Score.TimeSignature.break-visibility = ##(#f #t #t)
	\numericTimeSignature
	\override Score.SpacingSpanner.common-shortest-duration =
	    #(ly:make-moment 1/80)
	\override TextSpanner.bound-details.left.text = "rallentando"
	\override TextSpanner.bound-details.right.text = ""

	\tempo 4 = 48
	s1 | s1. |
	s1 | s1 |
	s2. | s1 |
	s2. | s2. |
	s1 | s1 | 
	s1 | s1 | 
	s1 | s2. | \bar "||" %m14 

	s1 | s1 |
	s2 | %m17
	s2. |
	s2. | %m19
	s1 | s1 | s1 |
	s1 | s1 | s1 |
	s1 | s1 |
	s1 | s1 |
	s1 | \break \bar "||" %m30

	\tempo 4 = 66 
	\grace { s8 } s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1\startTextSpan | s2.. s8\stopTextSpan | \bar "||" %m37

	\tempo 4=88
	s1 s4 |
	s1 s4 |
	s1 |
	s2...\startTextSpan s16\stopTextSpan |
	s1 | s1 \bar "||" %m43

	\tempo 4 = 48 
	s1 |
	s2. |
	s1 |
	s1 |
	s1 | s1 |
	s1 |
	s2....\startTextSpan s32\stopTextSpan | \bar "||" %m51

	\tempo "Adagio"
	s1 | s1 | s1 |
	s1 | s1 | \bar "|." %m56
}