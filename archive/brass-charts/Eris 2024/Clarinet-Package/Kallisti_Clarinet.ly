\version "2.24.0"
\include "Global.ly"

kallisti-clarinet = \relative c' {
	\key a \minor
	\numericTimeSignature
	\time 4/4
	\mark #1
	\repeat volta 2 {
		\time 4/4 
		a4. c8 e4. g8 |
		e4 d c e |
		a,4. c8 e4. g8 |
		\time 5/4 
		e4 d c e \breathe c'8 b |

		\time 4/4 
		a4. c8 a4. e8 |
		\time 6/4
		g4 a4 d,4~ d8 c8 e2 |
		\time 4/4
		g4. c,8 e4. d8 |
		\alternative { 
			\volta 1 { d4 c a2 | }
			\volta 2 { \time 6/4 d4 c a2 b2 |}
		}

	}
	% \bar "||"
	\time 4/4
	c8. d e8 c4 b |

	\break
	\mark #2
	\repeat volta 1 {
		\new CueVoice { a'8. gis a8 d4 e | }
		a8. e f8 d4 e |

		\new CueVoice { a,8. gis a8 }
		e'8. f d8 |
		\stemNeutral e8. c b8 a2 | 
		\break

		\new CueVoice { a8. a e8 a4 e | }
		d'8. e f8 d4 e |

		\new CueVoice { f8. d e8 }
			c8. d e8 |

		\alternative {
			{ c8. b g8 << e'2 \\ a,2 >> | \bar "||"}	
			% { c8. b g8 a2 | }	
		}
		\break

		\new CueVoice {  e8. e d8 f4 d | }
		e8 f d8 e c8 d b8 c |

		\new CueVoice { e8. e e8 f4 a | }
		a8 gis a e f8 d a' gis |
		\break

		\new CueVoice { e8. e f8 d4 c | }
		a8. a a8 gis8. 8. 8|

		a2 b |
		c8. d8. e8 c4 b4 |
	} % \bar "||"
	\break 

	\markSection "Drum Break"
	\repeat volta 2 { 
		R1 R1 
		\lineNote "Last time only"
		a2 b | c8. d8. e8 c4 b4 | }
	\numRepeats \markup \huge "?"
	\cueBox "B, then A"
	% \bar "||"

	% c8. b16~ 8 gis a2 |	
}
