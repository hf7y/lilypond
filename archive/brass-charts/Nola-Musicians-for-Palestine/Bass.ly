\version "2.24.1"

\include "Ana Dammi Falastini.ly"
\include "Bil Afrah.ly"
\include "Enta Omry.ly"
\include "Leve Palestina.ly"
\include "Zeina.ly"

\include "Phone.ly"

\book {
	\bookpart {
		\Ana_Dammi_Falastini-header
		\score {
			<<
				% \new Staff <<
				% 	\clef "treble"
				% 	\Ana_Dammi_Falastini-Melody
				% 	\Ana_Dammi_Falastini-Form
				% >>
				% \new Staff <<
				% 	\clef "bass"
				% 	\Ana_Dammi_Falastini-Accompaniment
				% 	\Ana_Dammi_Falastini-Form
				% >>
				\new Staff <<
					\clef "bass"
					\Ana_Dammi_Falastini-Bass
					\Ana_Dammi_Falastini-Form
				>>
				% \new Staff <<
				% 	\clef "percussion"
				% 	\Ana_Dammi_Falastini-Percussion
				% 	\Ana_Dammi_Falastini-Form
				% >>
			>>
		}
	}
		\bookpart {
		\Bil_Afrah-header
		\score {
			<<
				% \new Staff <<
				% 	\clef "treble"
				% 	\Bil_Afrah-Melody
				% 	\Ana_Dammi_Falastini-Form
				% >>
				% \new Staff <<
				% 	\clef "bass"
				% 	\Bil_Afrah-Accompaniment
				% 	\Bil_Afrah-Form
				% >>
				\new Staff <<
					\clef "bass"
					\Bil_Afrah-Bass
					\Bil_Afrah-Form
				>>
				% \new Staff <<
				% 	\clef "percussion"
				% 	\Bil_Afrah-Percussion
				% 	\Bil_Afrah-Form
				% >>
			>>
		}
	}
	\bookpart {
		\Enta_Omry-header
		\score {
			<<
				% \new Staff <<
				% 	\clef "treble"
				% 	\Enta_Omry-Melody
				% 	\Enta_Omry-Form
				% >>
				% \new Staff <<
				% 	\clef "bass"
				% 	\Enta_Omry-Accompaniment
				% 	\Enta_Omry-Form
				% >>
				\new Staff <<
					\clef "bass"
					\Enta_Omry-Bass
					\Enta_Omry-Form
				>>
				% \new Staff <<
				% 	\clef "percussion"
				% 	\Enta_Omry-Percussion
				% 	\Enta_Omry-Form
				% >>
			>>
		}
	}
	\bookpart {
		\Leve_Palestina-header
		\score {
			<<
				% \new Staff <<
				% 	\clef "treble"
				% 	\Leve_Palestina-Melody
				% 	\Leve_Palestina-Form
				% >>
				% \new Staff <<
				% 	\clef "bass"
				% 	\Leve_Palestina-Accompaniment
				% 	\Leve_Palestina-Form
				% >>
				\new Staff <<
					\clef "bass"
					\Leve_Palestina-Bass
					\Leve_Palestina-Form
				>>
				% \new Staff <<
				% 	\clef "percussion"
				% 	\Leve_Palestina-Percussion
				% 	\Leve_Palestina-Form
				% >>
			>>
		}
	}

	\bookpart {
		\Zeina-header
		\score {
			<<
				% \new Staff <<
				% 	\clef "treble"
				% 	\Zeina-Melody
				% 	\Zeina-Form
				% >>
				% \new Staff <<
				% 	\clef "bass"
				% 	\Zeina-Accompaniment
				% 	\Zeina-Form
				% >>
				\new Staff <<
					\clef "bass"
					\Zeina-Bass
					\Zeina-Form
				>>
				% \new Staff <<
				% 	\clef "percussion"
				% 	\Zeina-Percussion
				% 	\Zeina-Form
				% >>
			>>
		}
	}
}