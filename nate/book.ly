\version "2.18.2"
\include "electric.ly"
\include "justice.ly"

\paper {
	#(set-paper-size "letter")
	top-margin = 0.5\in
	left-margin = 0.5\in
	right-margin = 0.5\in
	bottom-margin = 0.5\in

}

\header {
	dedication = "for Nate"
	title = "Five Piano Pieces"
	composer = "Zachary Viet Pine"
	tagline = "Spring 2016"
}

\book {
	\score {
		\new PianoStaff <<

			\new Staff = "up" {
				\clef "treble"
				\tempo 4 = 120				
				s1*102
				\thirdOutline
			}

			\new Staff = "down" {
				\clef "bass"
				\firstOutline
				\secondOutline
				s1*34	
			}
		>>
		\header {
			piece = "Derivatives"
		}
	}
		
	\score {
		\new PianoStaff <<
			\new Staff = "up" {
				\clef "treble"
			}

			\new Staff = "down" {
				\clef "bass"
				\BOne	
				\COne
				\BTwo
			}	
		>>

		\header {
			piece = "Justice"
		}
	}
}
