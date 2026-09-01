\version "2.24.0"

dindin-baritone = \relative c'' {
	%\key d \minor
	\bar "[|:"
	\set Score.rehearsalMarkFormatter = #format-mark-padded-circle-letters
	\override Score.RehearsalMark.font-size = #6
	\mark #1
	
	\relative c' {
		\repeat volta 2 {
			a8 4 8 r4. g8~ | g2. r4 |
			a8 4 8 r4 b8 g~ | g2. r4 | %\break
			b8 4 8 r4. g8~ | g2. r4 |
			a8 4 8 r2 | a8 4 8 r2 | 
		} 
	}

	\mark #2
	\repeat volta 4 {
		gis,8 4 8 r4 bes8 a8~ | a2. r4 |
		% \numRepeats "8"
	} \break
	a8 4 8 r2 |
	aes8 4 8 r2 |
	g8 4 8 r2 |
	f4 r4 \tuplet 3/2 { f8 fes8 e } d4 |
	\bar "|."

	% \sectionLabel "Chorus"
	% \clef "treble"
	% \relative c'' {
	% 	a8 a4 a8 r4 r8 g8~ | g2 r2 |
	% 	a8 a4 a8 r4 bes8( g8~ | g2) r2 |
	% 	bes8 4 8 r4 r8 g8~ | g2 r2 |
	% 	a8 a4 a8 r2 | a8 a4 a8 r2 |
	% 	\numRepeats "4"
	% } \bar "||"

	% \lineLabel "Trumpets solo"
	% \new CueVoice {
	% 	\transpose e d
	% 	\relative c'' {
	% 		b8 g4 a8~ 8 b g4~ | g2 r8 e e d |
	% 		b'8 g4 a8~ 8 b g8 a | b8 g a4 r2 |
	% 		r8 c a b g8 a fis a | g8 fis4. r8 b, c b |
	% 		c8 d e fis r8 b, c d | e8 fis g b a4 r |
	% 	}
	% } \bar "||"
}
