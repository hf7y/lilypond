\version "2.24.1"

fantasma-tuba = \relative c {
	\time 4/4
	\key aes \major
	\lineLabel "Intro"
	% \lineNote \markup { \hspace #2 "melodies start" }
	\new CueVoice {
		\partial 4 c4 |
		es2. c4 | aes2. c4 | 
		f4. es8 f8 es4 c8~ | c2 r4 c4 |

		es2. c4 | aes2. c4 | 
		bes4. aes8 bes8 aes4 f8~ | f2. \bar "" \break r8 f8 |

		f4. f8 aes4. 8 | f2 r4 c'4 | 
		bes4. aes8 bes8 aes4 f8~ | f2. r8 f8 |

		f4. 8 aes4. 8 | f2 
	}
	\lineNote \markup { \hspace #-2 "tubas join" }
	es4 f4~ | f1 | r2. \bar "|."

	\break
	\mark #1
	\cueBox "Drum Freak Out, then A"
	\lineNote "drums start, tubas join"
	r4 |
	\repeat volta 4 {
		\repeat unfold 2 { f8. 8. 8 r4. 8 | }
		\alternative {
			\volta 1,2,3,4,5,6,7 {
				aes8. 8. 8 r4. 8 |
				g8. 8. 8 r4. 8 |
			}
			\volta 8 {
				\repeat percent 2 { a8. 8. 8 } |
				g8.-> 8.-> 8-> 4-> r4 \bar "||"
			}
		}
	} \pageBreak

	\mark #2
	% \lineNote "midhorns start"
	\lineNote "midhorns solo"
	\repeat volta 4 {
		\new CueVoice { r8 f'16 16 8 8 r8 8 r4 }
	}
	\numRepeats "4"
	\lineNote \markup { \hspace #2 "tutti" }
	\repeat volta 2 {
		f,1 | 1 |
		e'4. 4. 4 | r8 4. 4 4 |
	}
	\repeat volta 2 {
		c1 | 1 |
		d4. 4. 4 | r8 4. 4 4 |
	}
	\repeat volta 2 {
		f,1 | 1 |
		e'4. 4. 4 | r8 4. 4 4 |
	}
	b4.-12 4. 4 | r8 4. 4 4 |
	a4.-2 4. 4 | r8 4. 4 c,4 \bar "||"
	
	\lineNote "2nd time All-Band Freak Out"
	f1 | R1 |
	e1 | R1 |
	f1 | R1 |
	aes1 | a2. \bar "||"

	\cueBox \markup \center-column {
		"B, then All-Band Freak Out,"
		\vspace #0.5
		"then A, then Intro" }
}