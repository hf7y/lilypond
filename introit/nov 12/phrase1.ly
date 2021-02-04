\version "2.20.0"

\header {
	title = "Phrase 1"
}

\include "./arpeggio.ly"
\include "../z/note.ily"

pentatonic = #`(
  (0 . ,DOUBLE-SHARP)
  (1 . 0)
  (2 . 0)
  (3 . ,DOUBLE-SHARP)
  (4 . 0)
  (5 . 0)
  (6 . 0)
)

whole-tone = #`(
  (0 . 0)
  (1 . 0)
  (2 . 0)
  (3 . ,SHARP)
  (4 . ,SHARP)
  (5 . ,SHARP)
  (6 . ,SHARP)
)
melodyA = {
	\ottava #1
	\relative c'''' { c4( des) aes g d es ges f e }
	
	\ottava #0
	\relative c''' { c( des) aes g ges d es bes' a f,}

	\relative c'' { c( des) aes g ges' f d, es e' es d }

	\clef "bass"
	\relative c' { c( des) aes g ges f e d' es, }

	\relative c' { c( des,) aes g d' es e ges, f }

	\ottava #-1
	\relative c, { c( des) aes' g, d' es ges, e' f, }

	\ottava #-2
	\relative c, { c( des,) aes' g ges d f e d es b}
}

accompanimentA = {
	\arpeggioArrowUp
	s4
	\ottava #1
	s16 \squignat d''4 \squignat a'' \squiges g'' \squiges d''8.
	s16 \squignat e''4 \squignat g'' \squiges f'' \squiges e''8.

	s4 s16 \squignat d''4 \squignat a'' \squiges g''8.
	\ottava #0
	s16 \squignat g'4 \squiges d'4 \squignat e' \squignat b'8.
	s16 \squiges a'4 s8.
	s16 \squiges c4 \squignat d8.
	s16 \squignat a'4 \squiges g' \squignat g' \squiges f8.
	s16 \squiges d4 \squignat e \squiges e \squignat e8.
	s16 \squiges d8.

	s16 \squiges c4 \squignat d \squignat a8.
	s16 \squiges g4 \squignat g \clef "bass" \squiges f, \squiges e,8.
	s16 \squiges d,4 s8.

	s16 \squiges c,4 \squignat d,8. 
	s16 \squignat a,4 \squiges g, \squiges d,, \squignat e,,8. 
	s16 \squiges e,,4 \squignat g, \squiges f,,8.

	\ottava #-1
	s16 \squiges c,,8. 
	s16 \squignat d,,4 \squignat a,, \squiges g,, \squiges d,,8. 
	s16 \squignat e,,4 \squignat g,, \squiges e,,, \squiges f,,,8.

	
	\ottava #-2
	s16 \squiges c,,,4 \squignat d,,, \squignat a,,, \squiges g,,,8. 
	s16 \squignat g,,,4 \squiges d,,,, \squiges f,,,, \squiges e,,,,8. 
	s16 \squiges d,,,,4 \squiges e,,,, \squiges b,,,,8.
}

\score {
	\new GrandStaff <<
		\new Staff = "melody" \with {
			\accidentalStyle dodecaphonic
		}{
			\clef "treble"
			\partial 4
			\stemless

			\melodyA
		}
		\new Staff = "accompanimentUp" {
			<<
			\new Voice {
				\override OttavaBracket.outside-staff-priority = #1000
				\override TextScript.outside-staff-priority = #100
				\clef "treble"
				\partial 4
				\accompanimentA				
			}
			\new FiguredBass \figuremode {
				r4 
				16 <7 3>4 <7 3>4 <7 3>4 <7 3>8.
				r16 <7 3>4 <7 3>8. r16 <7 3>4 <7 3>8. 
				s4 s16 <7 3>4 <\markup \halign #-1 \bold "simile">4..
			}
			>>
		}
	>>
	\layout {
   		\context {
     		\Score
      		\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
    		proportionalNotationDuration = #(ly:make-moment 1/16)
    		\omit BarLine
    	}
    }
}