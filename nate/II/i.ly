\version "2.18.2"
theGoods = <<
	\new Voice {
		\change Staff = "up"
		\tuplet 5/4 { c'4 s d' r r } | r1 |
		\tuplet 5/4 { c'8 s4. d'4 r r } | r1 |
		\tuplet 5/4 { c'4 s4. d'8 s4 s }|  r4 e''2. |
		\tuplet 5/4 { c'4. s4 d'8 r4 e''~ } | \time 3/4 e''2.
		\time 2/4 r4 f''~ | \time 4/4 f''1 | r1 |
		r4. f''4 \tuplet 4/3 { r8 g''4. } |
			\tuplet 5/4 { c'4 s d' r r } | r1 | r1 | 
		\bar "||"

		\tuplet 5/4 { c'4 s d' r r } | r1 |
		\tuplet 5/4 { c'8 s4. e'4 r r } | r1 |
		\tuplet 5/4 { c'4 s4. e'8 s4 s }|  r1 |
		\tuplet 5/4 { r4. r4 e'8 r4 e''~ } | \time 3/4 e''2.
		\time 2/4 r4 f''~ | \time 4/4 f''1 | r1 |
		r4. f''4 \tuplet 4/3 { r8 g''4. } |
			a''1\laissezVibrer | r1 |

	\repeat volta 2 {
		\ottava #1 
		\repeat tremolo 16 { < g'' b'' c''' d''' >16\pp\< }|
		\repeat tremolo 16 { < g'' b'' c''' d''' >16\> }|
		\repeat tremolo 16 { < e'' f'' a'' b' c''' d''' >16\pp\< } |
		\repeat tremolo 16 { < e'' f'' a'' b' c''' d''' >16\> } |
		\repeat tremolo 16 { < e'' a'' c''' d''' g''' >16\pp\< } |
		\repeat tremolo 16 { < e'' a'' c''' d''' g''' >16 } |
		\repeat tremolo 8 { < e'' a'' c''' d''' g''' >16 } |
		\ottava #0
		r2\!
		r1 |
	}
	}

	\new Voice {
		\change Staff = "down"
		\tuplet 5/4 { s4 b s s s } | r1 |
		\tuplet 5/4 { s8 b4. s4 s s } | r1 |
		\tuplet 5/4 { s4 b4. s8 g,4 \ottava #-1 a,,~ } | a,,1
		\tuplet 5/4 { \ottava #0 s4. b4 s8 \tuplet 3/2 { g,8 a, \ottava #-1 f,, }
			c,,4~ } | \time 3/4 c,,2.
		\time 2/4 \ottava #0 f8 g, \ottava #-1 a,,4~ | \time 4/4 a,,1 | \ottava #0 r1 |

		\tuplet 3/2 { r8 f g, } \ottava #-1 a,,4. r8 g,,4 
			\tuplet 5/4 { \ottava #0 s4 b s s s } | r1 | r1 |
		\bar "||"

		\tuplet 5/4 { s4 b s s s } | r1 |
		\tuplet 5/4 { s8 b4. s4 s s } | r1 |
		\tuplet 5/4 { s4 b4. s8 f,2~ } | f,1
		\tuplet 5/4 { s4. s4 s8 \tuplet 6/4 { g,16 f, es, des, \ottava #-1 bes,, aes,,} 
			f,,4~ } | \time 3/4 f,,2.
		\time 2/4 \ottava #0 f8 g, \ottava #-1 a,,4~ | \time 4/4 a,,1 | \ottava #0 r1 |
			< f, e, >1\laissezVibrer | r1 |

	\repeat volta 2 {
		r1 | r1 | r1 | r1 |
		r1 | r1 | r1 | r1 |
	}
	}
>>
\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
			s1 * 24
		}

		\new Staff = "down" {
			\clef "bass"
			\theGoods
		}
	>>
	\midi {}
}
