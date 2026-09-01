\version "2.24.0"

\bookpart {
	\header {
		title = "Artemisia"
		subtitle = "the Small-Headed Gopher"
		composer = "erin bell"
	}

	\score {
		\new Staff {
			\clef "bass"
			\relative c {
				\key d \minor
				\numericTimeSignature
				\makeCircleMarks
				\mark #1

				\lineLabel "tubas start"
				\new CueVoice \relative c {
					\voiceOne 
					e,4 a, c e |
				}
				\repeat volta 2 {
					\lineLabel \markup \concat { "midhorns " \smaller "I" "  join" }
					\repeat percent 2 { e8\finger2 a\finger2 e a e a e a | } 
					c8\finger1 b\finger12 bes\finger0 g\finger12 fis2\finger23 | 
					\repeat percent 2 { e8 a e a e a e a | }
					a8\finger2 g\finger12 f\finger0 d\finger12 des2\finger23 |	
				}

				\lineLabel \markup \concat { "midhorns " \smaller "II" "  join" }
				\repeat volta 2 {
					\parenthesize a2 f'8\finger0 e\finger2 f a\finger2 | d,2\finger12 f8 e f a |
					d,2 bes4\finger0 g\finger12 |
					a2\finger2 f'8 e f a | d,2 f8 e f a |
					d,2 bes4 g | 
				}

				\partial 2 a2\fermata \bar "||"
			}
		}
	}

	\score {
		\new Staff {
			\makeCircleMarks
			\clef "bass"
			\relative c {
				\markSection "Drum Break"
				\time 6/8
				r4. r | r4 
				\new CueVoice \relative c'' {
					\cueClef "treble"
					bes8 4 b8 |
					c4 g8 c4 g8 | c4 aes8 g4. |
				}
			}
		}
	}
	\score {
		\new Staff {
			\clef "bass"
			\makeCircleMarks
			\relative c {
				\key bes \minor
				\mark #2
				\time 6/8
				\repeat volta 2 {	
					\new CueVoice \relative c'' {
						\cueClef "treble"
						a4 bes8 c4 des8 | es4 des8 c4 a8 | bes4. r | 
						\cueClefUnset
					}
					a'4\finger2 bes8\finger0 c4\finger1 des8\finger2 | es4\finger1 des8 c4 a8\finger12 | bes4.\finger0 r | 

					\new CueVoice \relative c'' {
						\cueClef "treble"
						c4 f8 es4 des8 | c4 bes8 c4 bes8 | a4. r |
						\cueClefUnset
					}
					c4\finger1 f8\finger0 es4\finger1 des8\finger2 | c4\finger1 bes8 c4 bes8 | a4.\finger2 r |

					a4\finger2 bes8\finger0 c4\finger1 des8\finger2 | es4\finger1 des8 c4 a8\finger12 | bes4.\finger0 r | 
					\bar "||"

					c\finger1 r4. | des\finger2 r4. | es\finger1 r4. |
					c8 8 8 r4. | des8 8 8 r4. | es8 8 8 r4. |

					\alternative {
						\volta 1 { f,4\finger0 8 ges4\finger23 8 | f4. r | }
						\volta 2 { 
							\time 9/8 f4\finger0 f8 ges4\finger23 8 a4\finger2 8 |
							\time 6/8 bes4.\finger0 des\finger2
						}
					}
				}
			}
		}
	}

		
	\score {
		\new Staff {
			\clef "bass"
			\makeCircleMarks
			\mark #3
			\time 6/8
			\key c \minor
			\relative c {
				\repeat percent 2 { <c f aes>2.\finger13\finger0\finger1 | <f aes c>\finger0\finger1\finger1 | }
				\repeat percent 2 { <c es g>2. | <es g c> | }

				f4.\finger0~ 4 g8\finger12 | aes4\finger23 g8 f4. |
				f4 c8\finger13 f4 g8 | aes2. |

				c,4.~\finger13 4 d8\finger12 | es4\finger1 d8 c4. | % \break
				c4 g8\finger12 es'4\finger1 d8\finger12 | c2.\finger13 |

				\repeat volta 2 {
					\repeat percent 2 { <c f aes>2.\finger13\finger0\finger1 | <f aes c>\finger0\finger1\finger1 | } 
					\repeat percent 2 { <c es g>2. | <es g c> | }

				}

				f4.\finger0~ 4 g8\finger12 | aes4\finger23 g8 f4. |
				f4 c8\finger13 f4 g8 | aes2. |

				c4.~\finger1 4 d8\finger0 | es4\finger1 d8 c4. | % \break
				c4 g8\finger12 es'4\finger1 d8\finger0 | c2.\finger1 |

				\newSpacingSection
				\override Score.SpacingSpanner.spacing-increment = #0.5
				c2. |

				\override TextSpanner.bound-details.left.text = "ritardando"
				b2._\startTextSpan\finger2 | bes!\finger0 | g\finger12\fermata\stopTextSpan |
			}
		}
	}
	\score {
		\new Staff {
			\clef "bass"
			\makeCircleMarks
			\once \omit Staff.KeySignature
			\accidentalStyle modern
			\markSection "Descent to End"
			\relative c {
				\repeat volta 2 {
					\time 4/2	fis2\finger23 d\finger12 fis bes\finger0 |
					\time 5/2	a2\finger2 g\finger12 cis,\finger23 d\finger12 cis |
					\time 4/2 	g'2\finger12 d\finger12 bes\finger0 g\finger12 |

					\alternative {
						{ e\breve\finger123 | }
						{ f\breve\finger13 | \ottava #0 }
					}
				}
			}
			\bar "||"
		}
	}
	\score {
		\new Staff {
			\clef "bass"
			\makeCircleMarks
			\numericTimeSignature
			\accidentalStyle default
			\time 4/4
			\mark #1
			\key d \minor
			\relative c, {
				r2 f'8\finger0 e\finger2 f a\finger2 | d,2\finger12 f8 e f a |
				d,2 bes4\finger0 g\finger12 |
				a2\finger2 f'8 e f a | d,2 f8 e f a |
				d,2 bes4 g | a1\fermata

				\bar "|."
			}
		}
	}
}