\version "2.18.2"

guitarA = {
	\repeat volta 2 {
		\relative c'' {
			\repeat unfold 2 {
				\time 4/4
				\repeat unfold 4 { 
					a8 cis fis a a, cis fis a |
				}
				\time 6/8 
				\repeat unfold 4 {
					d, fis a  d, fis a |
				}
			}
			
			{
				\time 4/4
				a,8 cis fis cis gis cis e cis |
				\repeat unfold 3 {
					fis, b  d   b   gis cis e cis |
				}
				\time 6/8 
				\repeat unfold 4 {
					d fis a d, fis a |
				}
			}
		}
	}

	\alternative {
		{
			\relative c'' {
				\time 4/4
				a8 cis fis cis gis cis e cis |
				\repeat unfold 3 {
					fis, b  d   b   gis cis e cis |
				}
				\time 6/8 
				\repeat unfold 4 {
					d fis a d, fis a |
				}
			}
		}
		
		\relative c'' {	
			\time 4/4
			a8 cis fis cis gis cis e cis |
			\repeat unfold 3 {
				fis, b  d   b   gis cis e cis |
			}
			d fis a fis cis e gis e |
			\repeat unfold 3 {
				b d fis d cis e gis e |
			}
			
			\time 4/4
			a,8 cis fis cis gis cis e cis |
			\repeat unfold 3 {
				fis, b  d   b   gis cis e cis |
			}

			\time 6/8 
			\repeat unfold 4 {
				d fis a d, fis a |
			}
		}
	}
}

guitarB = \relative c'' {
	\repeat volta 2 {
		\repeat unfold 2 {
			b8 d fis a b cis | e cis b a fis d |
		}
		\repeat unfold 2 {
			cis e gis a b cis | e cis b a gis e |
		}
		\repeat unfold 2 {
			b8 d fis a b cis | e cis b a fis d |
		}
		\repeat unfold 2 {
			cis e gis a b cis | e cis b a gis e |
		}
		\repeat unfold 4 {
			b8 d fis a b cis |
		}
	}
	\repeat unfold 2 {
		cis, e gis a b cis | e cis b a gis e |
	}
	\repeat unfold 4 {
		b8 d fis a b cis |
	}
	cis, e gis a b cis | e d cis b a gis |
	fis e d cis b a | gis fis e d cis b |
}

guitarAA = {
	\relative c'' {
		\time 4/4
		\repeat unfold 4 { 
			<< { a8 cis fis a a, cis fis a |}  \\ { a,,1\laissezVibrer } >>
		}
		\repeat unfold 2 {
			\repeat unfold 4 { 
				a'8 cis fis a a, cis fis a |
			}
			\time 6/8 
			\repeat unfold 4 {
				d, fis a  d, fis a |
			}
			\time 4/4
		}
		a,8 cis fis cis gis cis e cis |
		\repeat unfold 3 {
			fis, b  d   b   gis cis e cis |
		}
		\time 6/8 
		\repeat unfold 4 {
			d fis a d, fis a |
		}
		
		\time 4/4
		a,8 cis fis cis gis cis e cis |
		\repeat unfold 3 {
			fis, b  d   b   gis cis e cis |
		}
		d fis a fis cis e gis e |
		\repeat unfold 3 {
			b d fis d cis e gis e |
		}
		
		\time 4/4
		a,8 cis fis cis gis cis e cis |
		\repeat unfold 3 {
			fis, b  d   b   gis cis e cis |
		}

		\time 6/8 
		\repeat unfold 2 {
			d fis a d, fis a |
		}
		{
			dis, fis a dis, fis a |
			dis, fis a b a g |
		}
	}
}

voiceA = \relative c' {
	\repeat volta 2 {
		gis1 | fis1 | e1 | cis1 |
		b8 a4 a4( fis8~ | fis2.) |  r2. | r2. | 
		
		gis'1 | fis1 | a1 | fis |
		a8 b4 b4( cis16 b | a2. ) | r2. | r4. fis4. |

		a4 b gis a | fis2. cis4 | 
		cis cis cis cis8 e~ | e2 b4 cis |
		b8 a4 a4. | r2. | 
		r2. | r2. |
	}
	\alternative {
		{
			a'4 b gis a | cis2. fis,4 | 
			fis fis fis fis8 a~ | a2 cis,2 |
			b8 a4 a4. | r2. | 
			r2. | r2. |
		}

		{
			a'4 b gis a | cis2. fis,4 | 
			fis fis fis fis8 a~ | a2 r2 |

			a4 b gis a | cis2. fis,4 | 
			fis fis fis fis8 a~ | a2 r2 |

			a4 b gis a | cis2. fis,4 | 
			fis fis fis fis8 a~ | a2 r2 |
		}
	}
}

\score {
	\new StaffGroup <<
		\new Staff = "baritone" {
			\new Voice {
				\clef "baritone"
				\voiceA
			}
		}

		\new Staff = "guitar" {
			\new Voice {
				\clef "treble"
				\guitarA
				\bar "||"
				\guitarB
				\bar "||"
				\guitarAA
				\bar "|.|"
			}
		}
	>>
}
