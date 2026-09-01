\version "2.24.0"

\include "Anthem/Anthem_Clarinet.ly"
\include "Artemisia/Artemisia_Clarinet.ly"
\include "Book of Five/Book of Five_Clarinet.ly"
\include "Chiasmus/Chiasmus_Clarinet.ly"
\include "Din Din/Din Din_Clarinet.ly"
% \include "Double Bunny/Double Bunny_Clarinet.ly"
% \include "Fantasma/Fantasma_Clarinet.ly"
% \include "Fiercely, as in Night/Fiercely, as in Night_Clarinet.ly"
\include "Kallisti/Kallisti_Clarinet.ly"
% \include "Miss Precious Little/Miss Precious Little_Clarinet.ly"
\include "Nigerian Special/Nigerian Special_Clarinet.ly"
\include "Pishtaco/Pishtaco_Clarinet.ly"
% \include "Please Let Go/Please Let Go_Clarinet.ly"
% \include "Psi/Psi_Clarinet.ly"
\include "Pterocarya/Pterocarya_Clarinet.ly"
\include "Sick-legged Elephant/Sick-legged Elephant_Clarinet.ly"
% \include "The Swarm/The Swarm_Clarinet.ly"
\include "Thunderstomp/Thunderstomp_Clarinet.ly"
\include "Waltz/Waltz_Clarinet.ly"

\book {
	\header {
		title = "Book of Eris"
		instrument = "E♭ Alto Saxophone"
	}
	\markup "Now actually in E♭!"
	\markup "Not a real E♭ part, just transposed from the Clarinet."
	\markup "Most things were transposed to read higher on the staff but some I moved an octave lower."
	\pageBreak

	\bookpart {
		\paper { 
			indent = #20
			ragged-last = ##f 
		}
		\header {
			title = "Anthem"
			subtitle = "for Eris"
			composer = "J.R. Hankins"
		}
		\new Staff {
			\clef "treble"
			\transpose es, c \anthem-clarinet
		}
	}

	\bookpart {
		\paper {
		  page-count = #2
		  ragged-last = ##t
		  % indent = #20
		}


		\header {
			title = "Artemisia"
			subtitle = "the Small-Headed Gopher"
			composer = "erin bell"
		}
		\new Staff {
			\clef "treble"
			\transpose es c' 
			\artemisia-clarinet
		}
	}

	\bookpart {
		\paper { 
		  page-count = #1
		  ragged-last = ##f
		  indent = #20
		}
		\header {
			title = "Book of Five"
			subtitle = ""
			composer = "john gerken"
		}
		
		\new Staff {
			\clef "treble"
			\transpose es c' \compressMMRests \bookOfFive-clarinet
		}
	}

	\markup "Not to beat a dead horse too much but these parts really need to be taken lightly."
	\markup \vspace #0.5
	\markup "Errors, everywhere. The forms? I shouldn't have even tried."
	\markup \vspace #0.5
	\markup "Please keep track of the discrepencies between this chart and how these parts are actually played."
	\markup \vspace #0.5
	\markup "Kindly send corrections to dangerpine@gmail.com."
	\markup \vspace #0.5
	\markup "Maybe we can get these tightened up for 2025!"
	\markup \vspace #0.5
	\bookpart {
		\paper { ragged-last = ##f }
		\header {
		  title = "Chiasmus"
		  subtitle = ""
		  composer = "L. Lou"
		}
		\new Staff {
			\clef "treble"
			\transpose es c \chiasmus-clarinet
		}
	}

	\bookpart {
		\paper { 
		  page-count = #1
		  ragged-last = ##t
		}
		\header {
		  title = "Din Din"
		  subtitle = ""
		  composer = "J.R. Hankins"
		}
		
		\new Staff {
			\clef "treble"
			\transpose es c' \dindin-clarinet
		}
	}

	\bookpart {
		\paper { 
			% indent = #20
			ragged-last = ##f 
		}
		\header {
		  title = "Kallisti"
		  subtitle = ""
		  composer = "Missa and Kelly"
		}
		
		\new Staff {
			\clef "treble"
			\transpose es, c, \kallisti-clarinet
		}
	}

	\bookpart {
		\paper { ragged-last = ##f }
		\header {
		  supertitle = "“Nigerian Special”"
		  title = "Onwu Ama Dike"
		  composer = \markup \raise #3 \column {
		  	"St. Augustine"
		  	"& His Rovers"
	  	  }
	  	}
		
		\new Staff {
			\clef "treble"
			\transpose es c' \nigerianSpecial-Clarinet
		}
	}

	% \bookpart {
	% 	\header {
	% 		title = "Pishtaco"
	% 		subtitle = ""
	% 		composer = "Bruno"
	% 	}
		
	% 	\new ragged-last = ##t {
	% 		\clef "treble"
	% 		\transpose es, c \pishtaco-clarinet
	% 	}
	% }

	\bookpart {
		\paper { ragged-last = ##f }
		\header {
		  title = "Pterocarya"
		  composer = ""
		}
		\paper {
		  page-count = #1
		}
		\new Staff {
			\clef "treble"
			\transpose es, c \pterocarya
		}
	}

	\bookpart {
		\paper { ragged-last = ##f }
		\header {
		  title = "Sick-Legged Elephant"
		  composer = "Patrick Farrell"
		}
		
		\new Staff {
			\clef "treble"
			\transpose es c' \sickLeggedElephant
		}
	}

	\bookpart {
		\paper { ragged-last = ##f }
		\header {
		  title = "thunderstomp"
		  subtitle = "a raindance for Bulbancha"
		  composer = "ashlae blume"
		}
		
		\new Staff {
			\clef "treble"
			\transpose es c' \thunderstomp
		}
	}

	\bookpart {
		\paper { ragged-last = ##f }
		\paper {
		  page-count = #1
		}
		\header {
		  supertitle = "the Trickster's"
		  title = "Waltz"
		  composer = ""
		}
		
		\new Staff {
			\clef "treble"
			\transpose es c \compressMMRests \waltz_clarinet
		}
	}
}



