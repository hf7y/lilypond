\version "2.24.0"

\bookpart {
	\header {
	  title = "Anthem"
	  subtitle = "for Eris"
	  composer = "J.R. Hankins"
	}

	\score {
		\new Staff {
			\clef "bass"
			\relative c {
				\bar "[|:"
				\time 2/2

				\tweak direction #DOWN \lineNote "Add-in one group at a time"
				\repeat volta 2 { bes2\finger0  r | 4 4 4 4 |  } 
				\repeat volta 2 { <bes e>2\finger1 r | 4 4 4 4 | } 
				\repeat volta 2 { <bes e f>2\finger0 r | 4 4 4 4 | } 
				\tag #'lineBreak \break
				\repeat volta 2 { <bes e f ges>2\finger23 r | 4 4 4 4 | } 
				\repeat volta 2 { 1~ 2 r }	
			}
		}
	}

	\score {
		\new Staff {
			\clef "bass"
			\mark #1
			\time 4/4
			\lineLabel "tubas start, midhorns join"
			\relative c {
				\repeat volta 2 {
					bes4.\finger0 f'4.\finger0 bes4\finger0 | r2 r4 bes4 |
					aes4.\finger1 f4. des4\finger23 | r2 r4 aes'4 |
					\tag #'lineBreak \break
					g4.\finger12 es4.\finger1 c4\finger13 | R1 |
					c2 des | c a\finger2 |
				} 
			}
		}
	}

	\score {
		\new Staff {
			\clef "bass"
			\mark #2
			\time 3,2,2 7/8 
			\lineLabel "tubas and midhorns"
			\relative c {
				\repeat volta 2 { 
					c4\finger13 bes8\finger0 c4 g\finger12 | 
					c4 bes8 c4 des\finger23 | 
				}
			}
		}
	}

	\score {
		\new Staff {
			\clef "bass"
			\mark #3
			% \bar "[|:-||"
			\time 3,2,2 7/8 
			\relative c {
				\repeat volta 4 {
					c4\finger13 8 4 4 | bes4\finger0 8 4 4 |
					aes4\finger1 8 4 b!\finger123 |  
					\alternative {
						\volta 1,3 { c4 g8\finger12 c4 g |  }
						\volta 2,4 { c4 g8 c4 r |  }
					}
				}
			}
			\bar "[|:-||"
		}
	}
}