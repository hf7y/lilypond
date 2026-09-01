\version "2.24.0"
\include "../Global.ly"


thirdTimeOnly = #(define-music-function
	(music)
	(ly:music?)
	#{
		\override TextSpanner.bound-details.left.text = "3rd time only"
		#music \startTextSpan
	#})


artemisia-clarinet = \relative c' {
	\key d \minor
		\lineLabel "tubas start"
		\numericTimeSignature
		\makeCircleMarks
		\mark #1
	
	\onceOmitClef
	\partCombine
	\new CueVoice \relative c {
		\cueClef "bass"

		s1 | \bar "||"
		\voiceOne
		\lineLabel \markup \concat { "midhorns " \smaller "I" "  join" }
		\repeat percent 2 { e8 a e a e a e a | } 
		c8 b bes g fis2 | 
		\repeat percent 2 { e8 a e a e a e a | }
		a8 g f d des2 |
	}

	\new CueVoice \relative c {
		\voiceOne 
		e,4 a, c e |
		\voiceTwo
	 	\repeat percent 2 { a,4 e' a, e' | }
	 	a,4 c e a, |
	 	\repeat percent 2 { e'4 a, e' a, | }
	 	e'4 a, c e | \break
	}
	\lineLabel \markup \concat { "midhorns " \smaller "II" "  join" }
	\onceOmitClef
	\new CueVoice \repeat volta 2 {
		\parenthesize a,2 f'8 e f a | d,2 f8 e f a |
		d,2 bes4 g |
		a2 f'8 e f a | d,2 f8 e f a |
		d,2 bes4 g | 
		\cueClefUnset
	}
	\break

	\clef "treble"
	\repeat volta 1 {
		<<
		\new CueVoice {
			\stemDown
			e'8_"mids I" a e a
		}
		a'2\rest
		>>

		\stemNeutral
		f8 e f a | d,2 f8 e f a |
		d,2 bes4 g |
		a2 f'8 e f a | d,2 f8 e f a |
		\break
		d,2 <d bes'>4 <bes g'> | 
	}

	\partial 2 <cis a'>2\fermata \bar "||"

	\markSection "Drum Break"
	\time 6/8
	r4. r | r4 bes'8 4 b8 |
	c4 g8 c4 g8 | c4 aes8 g4. |

	\key bes \minor
	\break
	\mark #2
	\time 6/8
	\repeat volta 2 {	
		a4 bes8 c4 des8 | es4 des8 c4 a8 | bes4. r | 
		% `
		\new CueVoice { 
			a,4 bes8 c4 des8 | es4 des8 c4 a8 | bes4. r | 
		} \break

		c'4 f8 es4 des8 | c4 bes8 c4 bes8 | a4.\trill r | %\break
		\new CueVoice {
			c,4 f8 es4 des8 | c4 bes8 c4 bes8 | a4. r |
		} \break

		a'4 bes8 c4 des8 | es4 des8 c4 a8 | bes4. r | 
		\bar "||"

		r4. c | r4. des | r4. es | \break
		r4. c8 8 8 | r4. des8 8 8 | r4. es8 8 8 |

		\alternative {
			\volta 1 { f,4 8 ges4 8 | f4. r | }
			\volta 2 { 
				\time 9/8 f4 f8 ges4 8 a4 8 |
				\time 6/8 bes4. des
			}
		}
	}
	\pageBreak 
	\section

	\mark #3
	\time 6/8
	% \newSpacingSection
	% \override Score.SpacingSpanner.spacing-increment = #2
\key c \minor
	\repeat volta 2 {
		f,4.~ 4 g8 | aes4 g8 f4. |
		f4 c8 f4 g8 | aes2. |

		c,4.~ 4 d8 | es4 d8 c4. | \break
		c4 g8 es'4 d8 | c2. |


		\repeat percent 2 { <c f aes>2. | <f aes c> | }
		\repeat percent 2 { <c es g>2. | <es g c> | }
	} \break
	{
		\repeat percent 2 { <c f aes>2. | <f aes c> | } 
		\repeat percent 2 { <c es g>2. | <es g c> | }


		f4.~ 4 g8 | aes4 g8 f4. |
		f4 c8 f4 g8 | aes2. |

		c4.~ 4 d8 | es4 d8 c4. | 
		c4 g8 es'4 d8 | 
	}

	\newSpacingSection
	\override Score.SpacingSpanner.spacing-increment = #0.5
	c2. |

	\override TextSpanner.bound-details.left.text = "ritardando"
	b2._\startTextSpan | bes! | g\fermata\stopTextSpan |

	\once \omit Staff.KeySignature
	\break
	\accidentalStyle modern
	\section
	\markSection "Descent to End"
	\repeat volta 2 {
		% \time 4/2	fis!2 d! fis bes! |
		% \time 5/2	a!2 g! cis,! d! cis |
		% \time 4/2 	g'!2 d! bes! g! |

		\time 4/2	fis2 d fis bes |
		\time 5/2	a2 g cis, d cis |
		\time 4/2 	g'2 d bes g |

		\alternative {
			{ \ottava #-1 e\breve | }
			{ f\breve | \ottava #0 }
		}
	}
	\bar "||"
	\break

	\accidentalStyle default
	\key d \minor
	\time 4/4
	\mark #1
	\repeat volta 1 {
		<<
		\new CueVoice {
			\stemDown
			e8_"mids I" a e a
		}
		\oneVoice a'2\rest
		>>
		 f8 e f a | d,2 f8 e f a |
		d,2 bes4 g |
		a2 f'8 e f a | d,2 f8 e f a | 
		
		\newSpacingSection
  		\override Score.SpacingSpanner.spacing-increment = #3
		\break
		d,2 <d bes'>4 <bes g'> | 
	}

	\partial 2 <cis a'>2\fermata
	\bar "|."
}
