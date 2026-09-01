\version "2.24.0"

\include "Anthem_Clarinet.ly"
\include "Artemisia_Clarinet.ly"
\include "Book of Five_Clarinet.ly"
\include "Chiasmus_Clarinet.ly"
\include "Din Din_Clarinet.ly"
\include "Kallisti_Clarinet.ly"
\include "Nigerian Special_Clarinet.ly"
\include "Pterocarya_Clarinet.ly"
\include "Sick-legged Elephant_Clarinet.ly"
\include "Thunderstomp_Clarinet.ly"
\include "Waltz_Clarinet.ly"

\book {
	\header {
		title = "Book of Eris"
		instrument = "B♭ Clarinet"
	}
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
			\transpose bes, c \anthem-clarinet
		}
	}

	\bookpart {
		\paper {
		  page-count = #2
		  ragged-last = ##t
		}


		\header {
			title = "Artemisia"
			subtitle = "the Small-Headed Gopher"
			composer = "erin bell"
		}
		\new Staff {
			\clef "treble"
			\transpose bes c' 
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
			\transpose bes c' \compressMMRests \bookOfFive-clarinet
		}
	}

	\pageBreak
	\bookpart {
		\paper { ragged-last = ##f }
		\header {
		  title = "Chiasmus"
		  subtitle = ""
		  composer = "L. Lou"
		}
		\new Staff {
			\clef "treble"
			\transpose bes c' \chiasmus-clarinet
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
			\transpose bes c' \dinDin-clarinet
		}
	}

	\bookpart {
		\paper { 
			ragged-last = ##f 
		}
		\header {
		  title = "Kallisti"
		  subtitle = ""
		  composer = "Missa and Kelly"
		}
		
		\new Staff {
			\clef "treble"
			\transpose bes, c \kallisti-clarinet
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
			\transpose bes c' \nigerianSpecial-clarinet
		}
	}

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
			\transpose bes, c \pterocarya-clarinet
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
			\transpose bes c' \sickLeggedElephant-clarinet
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
			\transpose bes c' \thunderstomp-clarinet
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
			\transpose bes c' \compressMMRests \waltz-clarinet
		}
	}
}