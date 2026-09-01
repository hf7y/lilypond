\version "2.24.1"

Folk_Medley-header = \header {
	title = "Folk Medley"
}

Folk_Medley-Form = {
	\time 6/4
	\tempo 4 = 100
	\key bes \major
	\repeat volta 2 { s1.*4 }
	\repeat volta 2 { s1.*4 }

	\removeWithTag #'noBreaks \break
	\time 2/4
	\repeat volta 2 {
		s2*3
		\alternative {
			s2
			s2
		}
	}
	\removeWithTag #'noBreaks \break

	s2*5 \bar "|."

	\removeWithTag #'noBreaks \break
	

	\time 6/4

}

Folk_Medley-Bass = \relative c {
	\mark "A"
	\repeat volta 2 { 
		\repeat percent 2 {
			\repeat unfold 2 { d,8.[ d'16]~ d4 } 
			c4 d4 |
		} | % m3

		\repeat unfold 2 { g,8.[ g'16]~ g4 } 
			f4 es4 | % m4
		\repeat unfold 2 { d,8.[ d'16]~ d4 } 
			c4 d4 |
	}

	\mark "A′"
	\repeat volta 2 { 
		\repeat percent 2 {
			\repeat unfold 2 { d,8.[ d16]~ d4 } 
				c4 d4 |
		} | 

		\barNumberCheck #9
		\repeat unfold 2 { g8.[ g16]~ g4 } 
			f4 es4 | % m4
		\repeat unfold 2 { d8.[ d16]~ d4 } 
			c4 d4 |
	}

	\mark "Interlude" 
	\repeat volta 2 {
		\repeat unfold 3 { d4 d4 } |
		\alternative {
			{ d4 c8 es8 | }
			{ d4 d8 f8 | }
		}
	}
	\repeat unfold 4 { g4 g4 } d2 | 

	\repeat volta 2 {
		\repeat unfold 2 {
			d2~ d4. c'8 d4 d4 |
		}
	}

	\repeat volta 2 {		
		d,4. 8 4. 8 4. 8 |
		d4. 8 4. 8 d4. c8 |
	}
}
