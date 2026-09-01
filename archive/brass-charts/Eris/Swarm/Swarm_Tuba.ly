\version "2.24.1"

swarm-tuba = \compressMMRests \relative c, {
	\numericTimeSignature
	\key f \minor
	\mark #1
	\lineNote "melodies start, tuba after 2x"
	\time 6/8
	\repeat volta 2 {
		f8 r r c[ r f] | e8 r r g4. |
		aes8-1 r r es-1[ r aes] | es8 r r r[ es d-12] |
		des4.-23 c4 e8-2 |
	}
	\break
	\cueBox \markup \center-column {
		% \line { "cue: drumroll" }
		% \null
		\line { "Swarm!, then drums, then B" }
	}
	
	\mark #2
	\lineNote "tubas start"
	\time 5/4
	\repeat volta 2 {
		g4-12 g8 bes4-0 a8-2~ a8 a8 c4-1 |
		bes4 bes8 des4.-2 r4 c |
		bes8 bes4 g4 c8-1 c4 f,8-0 fis-23 |
	}
	\break
	\cueBox "cue: melodies 4x 2nd time"
	\repeat volta 8 {
		g4.-12 bes4. a4-2 c-1 | bes4. des4.-2 es4-1 c |
	}
	\cueBox "melodies solo, Drum Break, then to C"
	% \lineNote "melodies solo"
	% R1 * 5
	% \bar "||" \break

	% \lineLabel "Drum Break"
	% \time 4/4
	% R1 * 6

	\lineNote "drums start, tubas join"
	\time 4/4
	f,2 f2 | f4 4 4 4 |

	\mark #3
	% \time 4/4
	\repeat volta 2 {
		\repeat percent 2 { f4 b!8\finger12 8 f4 b | }
	}
	\break
	\lineNote "melodies join"
	\repeat volta 4 {
		f4 b!8 8 f4 b |
		\makePercent s1
		\makePercent s1
		\alternative {
			\volta 1,2,3 {
				\makePercent s1
			}
			\volta 4 {
				f4 b!8 8 f4 fis |
			}
		}
	} \break
	\repeat volta 4 {
		\repeat percent 4 { g4 des'?8\finger2 8 g,4 des' | }
			% \volta 4 {
			% 	g4 cis!8 8 g4 ges |
			% }
	}

	\lineLabel "Transition"
	\repeat volta 5 { g,2 g2 }
	\numRepeats "×5"
	\bar "|."
	\cueBox \markup \column {
		\line { "B, then C, then Transition" \italic "ad nauseum"}
	}
}