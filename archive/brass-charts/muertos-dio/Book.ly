\version "2.24.1"

\include "oll-core/package.ily"

\include "Phone.ly"
\include "Style.ily"

\header {
	instrument = "F Mellophone"
}

\include "vis_hora.ly"
\include "santa_sangre.ly"
\include "gnossienne.ly"
\include "the_fool.ly"
\include "cairn_builder.ly"
\include "la_llorona.ly"
\include "ana_dammi_falastini.ly"
\include "love_in_outer_space.ly"

\book {
	\bookpart {
		\ana_dammi_falastini-header
		\transpose f c'
		\ana_dammi_falastini-accompaniment
	}
	\bookpart {
		\cairn_builder-header
		\removeWithTag #'phone 
		\transpose f c' 
		\cairn_builder-accompaniment
	}
	\bookpart {
		\the_fool-header
		\markup { \bold "A" "and" \bold "B" "harmony rhythms with chords" }
		\removeWithTag #'phone 
		\transpose f c' 
		\the_fool-accompaniment
	}
	\bookpart {
		\gnossienne-header
		\removeWithTag #'phone 
		\transpose f c' 
		\gnossienne-accompaniment
	}
	\bookpart {
		\la_llorona-header
		\removeWithTag #'phone 
		\transpose f c' 
		\la_llorona-accompaniment
	}
	\bookpart {
		\love_in_outer_space-header
		\transpose f c'
		\love_in_outer_space-accompaniment
	}
	\bookpart {
		\santa_sangre-header
		\removeWithTag #'phone 
		\transpose f c' 
		\santa_sangre-accompaniment
	}
	\bookpart {
		\vis_hora-header
		\removeWithTag #'phone 
		\transpose f c'
		\vis_hora-accompaniment
	}
}