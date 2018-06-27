\version "2.18.2"

i =  <<
	\new Voice {
		\change Staff = "up"
	}

	\new Voice {
		\change Staff = "down"
	}
>>

ii =  <<
	\new Voice {
		\change Staff = "up"
	}

	\new Voice {
		\change Staff = "down"
	}
>>

iii =  <<
	\new Voice {
		\change Staff = "up"
	}

	\new Voice {
		\change Staff = "down"
	}
>>

iv =  <<
	\new Voice {
		\change Staff = "up"
	}

	\new Voice {
		\change Staff = "down"
	}
>>

v =  <<
	\new Voice {
		\change Staff = "up"
	}

	\new Voice {
		\change Staff = "down"
	}
>>

\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
			\i
			\ii
			\iii
			\iv
			\v
		}
	
		\new Staff = "down" {
			\clef "bass"
			s1 * 100
		}
	>>
}

