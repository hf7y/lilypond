\version "2.18.2"

polySynth = {
	\key g \major
	\clef "treble"

	\relative c' {
		\time 7/4
		%GM7
		e2.. d2.. | fis2.. g2.. |
		d2.. b2.. | b2.. r2.. |

		%GM7
		\time 8/4
		e2.. d2.. a'4 | \time 7/4 fis2.. g2 r8 a4 |
		%CM7
		b2.. a2.. | g2.. d2.. |
		%GM7
		\time 8/4
		b1 ~ b~ | b~ b  | 
	}
}

arpySynth = {
	\key g \major
	\clef "treble"
	
	\relative c' {
		r1.. | r1.. |
		r1.. | r1 r4. fis8 fis fis |

		g1~ g1 | a2.. b2 r8 fis'4 |
		e2.. fis2.. | c2.. d2.. |

		%{GM7%} \time 8/4
		e2.. d2.. a'4 | fis2.. gis2.. d4|
		%{CM7%} \time 7/4
		e2.. fis2.. | g4.. a b c |

		%{GM7%} \time 8/4
		d1 ~ d | d1.. d4 |
		c2.. b2..~ b4 | a2.. g2..~ g4 |


		
	}
}

\score {
	<<
		\arpySynth
		\polySynth
	>>
}


