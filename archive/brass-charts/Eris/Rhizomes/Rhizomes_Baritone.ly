\version "2.24.1"

rhizomes-baritone = \relative c {
	\numericTimeSignature
	\key es \major
	\mark #1
	\repeat volta 4 {
		\bar "[|:"
		\time 6/4
		c4. es8~ es2 r4 r4 | 
		\tuplet 3/2 { f4[ es c] } \tuplet 3/2 { es[ c bes] } c4 r8 es~ |
		es8 c4 bes8 c2 r4 r4 |
		\time 4/4 R1 |
	}

	c1~ c1\fermata |
	\new CueVoice \relative c' {
		\tuplet 3/2 { c4[ bes g] } \tuplet 3/2 { bes[ g f] } |
	}
	<<
		g'1\fermata
		\new CueVoice {
			s4. g8 f g f c | 
		}
	>>
	c1\fermata | R1 |

	\mark #2 
		\repeat volta 2  {
		R1 | g'4. f4. es4 | 
		R1 | d4. f8 r8 es f g |
	}
}