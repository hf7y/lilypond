\version "2.24.0"

% \include "../Global.ly"

pishtaco-tuba = \relative c {
	\override Glissando.style = #'trill
	\numericTimeSignature
	\time 3/4
	% \key aes \major
	\repeat volta 2 {
			\repeat percent 4 { g4-12 bes-0 des-2 } |
			\repeat percent 3 { e,4-2 g-12 aes-1 }
			des4-2 bes-0 aes-1 |
	}

	\break

	\lineLabel "Transition"
	\repeat volta 4 { des4 bes aes | } \numRepeats "8"

	\lineLabel "Fanfare"
	\repeat volta 2 { 
		R2. | bes2. | R | c!2. | R | cis4.-2 d-0 des-2 c-1\glissando | 
				<<
					 \transpose c c
					 { a'2->\glissando 
							\once \omit Stem 
							\once \omit Accidental
							\omit bes,,4 | } 
					 { s2 r4 } >>
	}
}
