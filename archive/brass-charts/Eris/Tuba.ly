\version "2.24.0"

% \include "oll-core/package.ily"
% \loadPackage lilypond-export

% opts.exporter = #exportMusicXML

\include "Global.ly"

\include "Anthem/Anthem_Tuba.ly"
\include "Artemisia/Artemisia.ly"
\include "Book of Five/Book of Five.ly"
\include "Chiasmus/Chiasmus_Tuba.ly"
\include "Din Din/Din Din_Tuba.ly"
\include "Fantasma/Fantasma_Tuba.ly"
\include "Kallisti/Kallisti_Clarinet.ly"
\include "Nigerian Special/Nigerian Special_Tuba.ly"
\include "Pishtaco/Pishtaco_Tuba.ly"
\include "Please Let Go/Please Let Go_Tuba.ly"
\include "Pterocarya/Pterocarya_Clarinet.ly"
\include "Rhizomes/Rhizomes_Tuba.ly"
\include "Sick-legged Elephant/Sick-legged Elephant_Clarinet.ly"
\include "Swarm/Swarm_Tuba.ly"
\include "Thunderstomp/Thunderstomp_Clarinet.ly"
\include "Waltz/Waltz_Clarinet.ly"

% \layout{
%     \FileExport #opts
% }

bookInstrument = "Tuba"

\book {
	\header {
		title = "Book of Eris"
		instrument = #bookInstrument
		composer = ""
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
			\clef "bass"
			\transpose c c \anthem-tuba
		}
	}

	\bookpart {
		\paper {
		  % page-count = #2
		  ragged-last = ##t
		  % indent = #20
		}


		\header {
			title = "Artemisia"
			subtitle = "the Small-Headed Gopher"
			composer = "erin bell"
		}
		\new Staff {
			\clef "bass"
			\transpose c c
			\keepWithTag #'book \artemisia-tuba
		}
	}

	\bookpart {
		\paper { 
		  % page-count = #1
		  ragged-last = ##f
		  indent = #20
		}
		\header {
			title = "Book of Five"
			subtitle = ""
			composer = "john gerken"
		}
		
		\new Staff {
			\clef "bass"
			\keepWithTag #'book  \bookOfFive-tuba
		}
	}

	\pageBreak
	\bookpart {
		\paper { ragged-last = ##f }
		\header {
		  title = "Čhiasmus"
		  subtitle = ""
		  composer = "L. Lou"
		}
		\new Staff {
			\clef "bass"
			\transpose c c \chiasmus-tuba
		}
	}

	\bookpart {
		\paper { 
		  % page-count = #1
		  % ragged-last = ##t
		}
		\header {
		  title = "Din Din"
		  subtitle = ""
		  composer = "J.R. Hankins"
		}
		
		\new Staff {
			\clef "bass"
			\transpose c c \dindin-tuba
		}
	}

	\bookpart {
		\paper { 
			% % indent = #20
			% ragged-last = ##f 
		}
		\header {
		  title = "fantasma"
		  subtitle = ""
		  composer = "bruno"
		}
		
		\new Staff {
			\clef "bass"
			\transpose c c \fantasma-tuba
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
			\clef "bass"
			\transpose c c \nigerianSpecial-tuba
		}
	}

	\bookpart {
		\header {
			title = "Pishtaco"
			subtitle = "(Monsters)"
			composer = "bruno"
		}
		
		\new Staff {
			\clef "bass"
			\transpose c c \pishtaco-tuba
		}
	}

	\bookpart {
		\header {
			title = "Please Let Go"
			subtitle = ""
			composer = "Eric W. Spinrad"
		}
		
		\new Staff {
			\clef "bass"
			\transpose c c \pleaseLetGo-tuba
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
			\transpose bes, c \pterocarya
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
			\transpose bes c' \sickLeggedElephant
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
			\transpose bes c' \thunderstomp
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
			\transpose bes c' \compressMMRests \waltz_clarinet
		}
	}
}



