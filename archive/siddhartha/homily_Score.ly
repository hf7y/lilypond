\version "2.24.1"

\header {
  title = "Homily"
  % composer = "J. S. Bach."
  tagline = ""
}

\pointAndClickOff

\layout {
	\context {
		\Score
		\override SpacingSpanner.common-shortest-duration =	#(ly:make-moment 1/32)
  	% proportionalNotationDuration = #(ly:make-moment 1/20)
	}
}

\paper {
	system-system-spacing = #'((basic-distance . 20) (padding . 6))
	system-count = #14
}

\include "homilyA.ly"
\include "homilyB.ly"

homilyMusic = {
	\homilyMusicB
}
homilyBrass = {
	\homilyBrassB
}
homilyWords = {
	\homilyWordsB
}

\include "homilyLibrettoI.ly"
\score {
	<<
  	\new ChoirStaff <<
	    \new Staff \with {
	    	instrumentName = "Minister"
				\override StaffSymbol.line-count = #1
				% \remove Staff_symbol_engraver
				\remove Clef_engraver
				\remove Time_signature_engraver
				\remove Ledger_line_engraver
	    }{
	      \new Voice = "minister" {
	        \homilyMusic
	      }
	    }
	    \new Lyrics = "minister"
	    \context Lyrics = "minister" {
	      \lyricsto "minister" {
	        \homilyWords
	      }
	    }
	  >>
	  \new StaffGroup \with {
	  	instrumentName = "Brass Choir" 
	  } <<
			\new Staff = "up" {
				\homilyBrass
			}
			\new Staff = "down" {
				\clef "bass"
				s1 * #(ly:music-length homilyBrass)
			}
		>>
  >>
}