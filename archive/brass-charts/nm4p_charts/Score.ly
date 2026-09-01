\version "2.24.1"

\include "Style.ly"

\include "Ana Dammi Falastini/Ana Dammi Falastini.ly"
\include "Bil Afrah/Bil Afrah.ly"
\include "Enta Omry/Enta Omry.ly"
\include "Leve Palestina/Leve Palestina.ly"
\include "Zeina/Zeina.ly"

#(define target-key (ly:make-pitch -1 2))
target-key-text = "B-flat"

% \book {
% 	\bookpart {
% 		\Ana_Dammi_Falastini-header
% 		\score {
% 			<<
% 				\new MarkLine \Ana_Dammi_Falastini-Form
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "treble"
% 					\Ana_Dammi_Falastini-Melody
% 					\Ana_Dammi_Falastini-Form
% 				>>
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "bass"
% 					\Ana_Dammi_Falastini-Accompaniment
% 					\Ana_Dammi_Falastini-Form
% 				>>
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "bass"
% 					\Ana_Dammi_Falastini-Bass
% 					\Ana_Dammi_Falastini-Form
% 				>>
% 				\new DrumStaff <<
% 					\clef "percussion"
% 					\Ana_Dammi_Falastini-Percussion
% 					\Ana_Dammi_Falastini-Form
% 				>>
% 			>>
% 		}
% 	}
% 	\bookpart {
% 		\Bil_Afrah-header
% 		\score {
% 			<<
% 				\new MarkLine \Bil_Afrah-Form
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "treble"
% 					\Bil_Afrah-Melody
% 					\Bil_Afrah-Form
% 				>>
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "bass^8"
% 					\Bil_Afrah-Accompaniment
% 					\Bil_Afrah-Form
% 				>>
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "bass"
% 					\Bil_Afrah-Bass
% 					\Bil_Afrah-Form
% 				>>
% 				\new DrumStaff <<
% 					\clef "percussion"
% 					\Bil_Afrah-Percussion
% 					\Bil_Afrah-Form
% 				>>
% 			>>
% 		}
% 	}
% 	\bookpart {
% 		\Enta_Omry-header
% 		\score {
% 			<<
% 				\new MarkLine \Enta_Omry-Form
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "treble"
% 					\Enta_Omry-Melody
% 					\Enta_Omry-Form
% 				>>
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "bass"
% 					\Enta_Omry-Accompaniment
% 					\Enta_Omry-Form
% 				>>
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "bass"
% 					\Enta_Omry-Bass
% 					\Enta_Omry-Form
% 				>>
% 				\new DrumStaff <<
% 					\clef "percussion"
% 					\Enta_Omry-Percussion
% 					\Enta_Omry-Form
% 				>>
% 			>>
% 		}
% 	}
% 	\bookpart {
% 		\Leve_Palestina-header
% 		\score {
% 			<<
% 				\new MarkLine \Leve_Palestina-Form
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "treble"
% 					\Leve_Palestina-Melody
% 					\Leve_Palestina-Form
% 				>>
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "bass"
% 					\Leve_Palestina-Accompaniment
% 					\Leve_Palestina-Form
% 				>>
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "bass"
% 					\Leve_Palestina-Bass
% 					\Leve_Palestina-Form
% 				>>
% 				\new DrumStaff <<
% 					\clef "percussion"
% 					\Leve_Palestina-Percussion
% 					\Leve_Palestina-Form
% 				>>
% 			>>
% 		}
% 	}
% 	\bookpart {
% 		\Zeina-header
% 		\score {
% 			<<
% 				\new MarkLine \Zeina-Form
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "treble"
% 					\Zeina-Melody
% 					\Zeina-Form
% 				>>
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "bass"
% 					\Zeina-Accompaniment
% 					\Zeina-Form
% 				>>
% 				\transpose c \target-key
% 				\new Staff <<
% 					\clef "bass"
% 					\Zeina-Bass
% 					\Zeina-Form
% 				>>
% 				\new DrumStaff <<
% 					\clef "percussion"
% 					\Zeina-Percussion
% 					\Zeina-Form
% 				>>
% 			>>
% 		}
% 	}
% }

\book {
	\bookOutputName "Melody"
	\header { instrument = \markup { "Melody" \target-key-text } } 
	\bookpart {
		\Ana_Dammi_Falastini-header
		\score {
			<<
				\new MarkLine \Ana_Dammi_Falastini-Form
				\transpose c \target-key
				\new Staff <<
					\clef "treble"
					\Ana_Dammi_Falastini-Melody
					\Ana_Dammi_Falastini-Form
				>>
			>>
		}
	}
	\bookpart {
		\Bil_Afrah-header
		\score {
			<<
				\new MarkLine \Bil_Afrah-Form
				\transpose c \target-key
				\new Staff <<
					\clef "treble"
					\Bil_Afrah-Melody
					\Bil_Afrah-Form
				>>
			>>
		}
	}
	\bookpart {
		\Enta_Omry-header
		\score {
			<<
				\new MarkLine \Enta_Omry-Form
				\transpose c \target-key
				\new Staff <<
					\clef "treble"
					\Enta_Omry-Melody
					\Enta_Omry-Form
				>>
			>>
		}
	}
	\bookpart {
		\Leve_Palestina-header
		\score {
			<<
				\new MarkLine \Leve_Palestina-Form
				\transpose c \target-key
				\new Staff <<
					\clef "treble"
					\Leve_Palestina-Melody
					\Leve_Palestina-Form
				>>
			>>
		}
	}
	\bookpart {
		\Zeina-header
		\score {
			<<
				\new MarkLine \Zeina-Form
				\transpose c \target-key
				\new Staff <<
					\clef "treble"
					\Zeina-Melody
					\Zeina-Form
				>>
			>>
		}
	}
}

\book {
	\bookOutputName "Accompaniment"
	\header { instrument = \markup { "Accompaniment" \target-key-text } }
	\bookpart {
		\Ana_Dammi_Falastini-header
		\score {
			<<
				\new MarkLine \Ana_Dammi_Falastini-Form
				\transpose c \target-key
				\new Staff <<
					\clef "bass"
					\Ana_Dammi_Falastini-Accompaniment
					\Ana_Dammi_Falastini-Form
				>>
			>>
		}
	}
	\bookpart {
		\Bil_Afrah-header
		\score {
			<<
				\new MarkLine \Bil_Afrah-Form
				\transpose c \target-key
				\new Staff <<
					\clef "bass"
					\Bil_Afrah-Accompaniment
					\Bil_Afrah-Form
				>>
			>>
		}
	}
	\bookpart {
		\Enta_Omry-header
		\score {
			<<
				\new MarkLine \Enta_Omry-Form
				\transpose c \target-key
				\new Staff <<
					\clef "bass"
					\Enta_Omry-Accompaniment
					\Enta_Omry-Form
				>>
			>>
		}
	}
	\bookpart {
		\Leve_Palestina-header
		\score {
			<<
				\new MarkLine \Leve_Palestina-Form
				\transpose c \target-key
				\new Staff <<
					\clef "bass"
					\Leve_Palestina-Accompaniment
					\Leve_Palestina-Form
				>>
			>>
		}
	}
	\bookpart {
		\Zeina-header
		\score {
			<<
				\new MarkLine \Zeina-Form
				\transpose c \target-key
				\new Staff <<
					\clef "bass"
					\Zeina-Accompaniment
					\Zeina-Form
				>>
			>>
		}
	}
}