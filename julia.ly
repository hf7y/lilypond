%% E Major Superposed with G Major 

theme = {
	\time 9/8
	\new Voice {
		\change Staff = "up"
		\relative c' {
			cis4. gis g | d a2. | dis4. as  a | e4.~ e4 fis8 g4. |
			gis4. dis d | a e2. | ais4. fis e | b4.~ b4 c4   cis |
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c {
			r4. r4. r4. | r4. r4. r4. | r4. r4. r4. | d8 g, fis, r4. as''8 d, cis,|
			r4. b''8 e, d, r4. | e''8 a, gis, r4. a8 ais' eis' | r4. b8 fis, e, r4. | b''8 fis, e, dis4 d' cis' |
			
		}
	}

}
\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
		}

		\new Staff = "down" {
			\clef = "bass"
		}
	>>

}

