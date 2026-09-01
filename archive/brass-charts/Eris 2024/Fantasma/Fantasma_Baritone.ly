\version "2.24.1"

fantasma-baritone = \relative c' {
	\time 4/4
	\key aes \major
	\lineNote "melodies start"
	\new CueVoice {
		\partial 4 c4 |
		es2. c4 | aes2. c4 | 
		f4. es8 f8 es4 c8~ | c2 r4 c4 |

		es2. c4 | aes2. c4 | 
		bes4. aes8 bes8 aes4 f8~ | f2. %\bar "" \break
		 r8 f8 |

		f4. f8 aes4. 8 | f2 r4 c'4 | 
		bes4. aes8 bes8 aes4 f8~ | f2. 
	}
	r8 f8 |
	f4. 8 aes4. 8 | f2 
	es4 f4~ | f1 | R1 \bar "||"

	\mark #1
	\cueBox "Drum Break"
	\repeat volta 4 {
		\lineNote "drums start, tubas join"
		c8. 8. 8 8. 8. 8 |
		des8. 8. 8 8. 8. 8 |
		es8. 8. 8 8. 8. 8 |
		\alternative {
			{ des8. 8. 8 8. 8. 8 |  }
			{ des8. 8. 8 4 r4 | }
		}
	}
	\pageBreak

	\mark #2
	\lineNote "midhorns start"
	\repeat volta 4 {
		r8 f16 16 f8 8 r8 f8 r4
	}
	\numRepeats "4"
	% \lineNote \markup { \hspace #2 "tutti" }
	\repeat volta 2 {
		\repeat percent 2 { r8 f16 16 f8 8 r8 f8 r4 | }
		e4-. r8 8-. r4 4-. | r8 8-. r4 4-. 4-. |
	}
	\repeat volta 2 {
		\repeat percent 2 { r8 c16 16 8 8 r8 8 r4 | }
		d!4-. r8 8-. r4 4-. | r8 8-. r4 4-. 4-. |
	}
	\repeat volta 2 {
		\repeat percent 2 { r8 f16 16 f8 8 r8 f8 r4 | }
		e4-. r8 8-. r4 4-. | r8 8-. r4 4-. 4-. |
	}
	b'4-. r8 8-. r4 4-. | r8 8-. r4 4-. 4-. |
	a4-. r8 8-. r4 4-. | r8 8-. r4 b4-. c,4-. \bar "||"
	
	f1~ | f2. f4 |
	e1~ | e2. e4 |
	f1~ | f2. f4 |
	bes2. 4 | b1 | \bar "||"
}