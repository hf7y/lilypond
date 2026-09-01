\version "2.24.0"

dindin-tuba = \relative c {
	\key d \minor
	\bar "[|:"
	\set Score.rehearsalMarkFormatter = #format-mark-padded-circle-letters
	\override Score.RehearsalMark.font-size = #2
	\mark #1
	
	\relative c, {
		\repeat volta 2 {
			d4.\finger12 e4.\finger2 f4~ | f4 r8 d8 e4 f |
			c4.\finger13 e4. f4~ | f4 r8 c8 e4 f |
			bes,4.\finger0 e4. f4~ | f4 r8 bes,8 e4 f |
			a,4.\finger2 e'4. f4~ | f4 r4 \tuplet 3/2 { f8 e8 es } d4 |
		}
	} % \numRepeats "18"

	\break
	\mark #2
	\repeat volta 4 {
		d8 8 r8 8 r4 d8 f,8~ | f2 r2 |
	} % \numRepeats "6" 
	% \break
	a8-2 8 r8 8 r2 |	
	aes8-1 8 r8 8 r2 |
	g8-23 8 r8 8 r2 |
	f4 r4 \tuplet 3/2 { f8 e es } d4 |
	\bar "|.-.|:"
	\cueBox "A, then Chorus"
	\lineLabel "Chorus"
	\new CueVoice {
		\cueClef "treble"
		\repeat volta 4 \relative c'' {
			a8 a4 a8 r4 r8 g8~ | g2 r2 |
			a8 a4 a8 r4 bes8^( g8~ | g2) r2 |
			bes8 4 8 r4 r8 g8~ | g2 r2 |
			\repeat percent 2 { a8 a4 a8 r2 | }
			% \numRepeats "×4"
		}
	}
	\cueBox "Melodies solo, A, then B"
}
