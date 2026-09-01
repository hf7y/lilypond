\version "2.24.3"

\include "../Style.ly"

part-name = "Bass"
part-clef = "bass"
part-key = c
part-name-key = "Bass"
\include "part-book.ily"

\include "../Ana Dammi Falastini/Ana Dammi Falastini.ly"
\include "../Bil Afrah/Bil Afrah.ly"
\include "../Enta Omry/Enta Omry.ly"
\include "../Leve Palestina/Leve Palestina.ly"
\include "../Zeina/Zeina.ly"

% part-book.ily is a template for generating instrument parts with specified 
% clef and key. It is called by Parts.ly which passes it:
% * \part-name-key (e.g. "Accompaniment F (treble)")
% * \part-name (e.g. Accompaniment)
% * \part-key (e.g. f)
% * \part-clef (e.g. treble)

% \part-name-key is used to set the filename and is also printed on the parts.

\book {
	\bookOutputName \part-name-key
	\header { 
		% instrument = \markup { \part-name-key } 
		pdftitle = \markup \concat { "NM4P-" \part-name-key }
	}
	% \bookpart {
	% 	\Ana_Dammi_Falastini-header
	% 	\score {
	% 		<<
	% 			\new MarkLine \Ana_Dammi_Falastini-Form
	% 			\transpose c \part-key
	% 			\new Staff <<
	% 				\clef \part-clef
	% 				#(Ana_Dammi_Falastini part-name)
	% 				\Ana_Dammi_Falastini-Form
	% 			>>
	% 		>>
	% 	}
	% }

	% \bookpart {
	% 	\header {
	% 		title = "Bahlam Beek"
	% 	}
	% 	\score {
	% 		\new Staff \relative c {
	% 			\autoBeamOn
	% 			\key f \major
	% 			\clef "bass"
	% 			\repeat percent 4 { g8 bes a r8 bes8 r8 r4 | }
	% 			\mark #1
	% 			\repeat volta 2 { 
	% 				cis,4-23 r8 e8-2 e4 r4 | f4 r8 e8 d4-12 r4 |
	% 				bes4 r8 d8 d4 r4 | e4-2 r8 d8 cis4-23 r4 |
	% 			}
	% 			\mark #2
	% 			\repeat percent 2 {
	% 				e8-2 f g-12 r8 g f e r8 | 
	% 				d8-12 e-2 f r8 f e d8 r8 |
	% 			}
	% 			\mark #3
	% 			\repeat volta 2 {
	% 				\repeat percent 2 { 
	% 					cis4-23 r4 g'4 r4 | cis,4 r4 a4-2 r4 |
	% 				}\textMark "A, B, C, then Vocals"
	% 			}
	% 			\mark "VA"
	% 			\repeat volta 2 {
	% 				\repeat percent 2 { a4-2 r4 bes r4 | cis4-23 r4 a4 r4 | }
	% 			}
	% 			\mark "VB"
	% 			\repeat volta 2 {
	% 				d4-12 r4 e4-2 d | f4 r4 cis4-23 r4 |
	% 				cis4 r4 d cis | e-2 r4 bes r4 |
	% 			}
	% 			\mark "VC"
	% 			bes4-0 cis-23 d-12 e-2 | f-0 g-12 f d |
	% 			a'-2 g e-2 cis-23 | a-2 bes-0 d-12 bes |
	% 			a-2 r4 r2 | \bar "|."
	% 		}
	% 	}
	% }

	% \bookpart {
	% 	\Bil_Afrah-header
	% 	\score {
	% 		<<
	% 			\new MarkLine \Bil_Afrah-Form
	% 			\transpose c \part-key
	% 			\new Staff <<
	% 				\clef \part-clef
	% 				#(Bil_Afrah part-name)
	% 				\Bil_Afrah-Form
	% 			>>
	% 		>>
	% 	}
	% }


	% \bookpart {
	% 	\Enta_Omry-header
	% 	\score {
	% 		<<
	% 			\new MarkLine \Enta_Omry-Form
	% 			\transpose c \part-key
	% 			\new Staff <<
	% 				\clef \part-clef
	% 				#(Enta_Omry part-name)
	% 				\Enta_Omry-Form
	% 			>>
	% 		>>
	% 	}
	% }

	% \bookpart {
	% 	\Leve_Palestina-header
	% 	\score {
	% 		<<
	% 			\new MarkLine \Leve_Palestina-Form
	% 			\transpose c \part-key
	% 			\new Staff <<
	% 				\clef \part-clef
	% 				#(Leve_Palestina part-name)
	% 				\Leve_Palestina-Form
	% 			>>
	% 		>>
	% 	}
	% }
	
	\bookpart {
		\Zeina-header
		\score {
			<<
				\new MarkLine \Zeina-Form
				\transpose c \part-key
				\new Staff <<
					\clef \part-clef
					#(Zeina part-name)
					\Zeina-Form
				>>
			>>
		}
	}
}