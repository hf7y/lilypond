\version "2.24.1"

\include "Anna Dammi Falastini.ly"
\include "Bil Afrah.ly"
\include "Enta Omry.ly"
\include "Leve Palestina.ly"

\include "Phone.ly"
% \include "Zeina.ly"

\book {
	\bookpart {
		\Anna_Dammi_Falastini-header
		\new Staff <<
			\clef "treble"
			\transpose f c'' \Anna_Dammi_Falastini-Accompaniment
			\transpose f c'' \Anna_Dammi_Falastini-Form
		>>
	}
	\bookpart {
		\Bil_Afrah-header
		\new Staff <<
			\clef "treble"
			\transpose f c' \Bil_Afrah-Accompaniment
			\transpose f c'' \Bil_Afrah-Form
		>>
	}
	\bookpart {
		\Enta_Omry-header
		\new Staff <<
			\clef "treble"
			\transpose f c'' \Enta_Omry-Accompaniment
			\transpose f c'' \Enta_Omry-Form
		>>
	}
	\bookpart {
		\Leve_Palestina-header
		\new Staff <<
			\clef "treble"
			\transpose f c'' \Leve_Palestina-Accompaniment
			\transpose f c'' \Leve_Palestina-Form
		>>
	}
}