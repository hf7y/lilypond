\version "2.18.2"

riff = {
	\relative c'' {
		d8 e b c  d e b b  | a g e d  e fis b fis~ |
		fis1~              | fis2 r4        b8 fis |
		fis4. a8~ a2       | r2       r8 fis b b~ |
		b1                 | r1                   |
		d8 e b c  d e b b  | a g e d  e fis b fis~ |
	}
}

chorda = {
	\relative c { 
		r1 | r1 |
	      	< d b' >4. < d b' >8 < d b' >2 |
	      	< d b' >4. < d b' >8 < d b' > < e b' > < e b' > < e b' > |
	      	< d b' >4. < d b' >8 < d b' >2 |
	      	< d b' >4. < d b' >8 < d b' > < e c' > < e c' > < e c' > |
	      	< d b' >4. < d b' >8 < d b' >2 |
	      	< d b' >4. < d b' >8 < d b' > < e b' > < e b' > < e b' > |
		< fis c' > < fis c' > < fis c' > < fis c' >
		< fis c' > < fis c' > < fis c' > < fis c' >
		< fis c' > < fis c' > < fis c' > < fis c' >
		< g bes' > < g bes' > < g bes' > < g bes' >
	}
}

bass = {
	\relative c {
		r1 | r1 |
		g8 g g g g g g g |
		g8 g g g g g g g |
		g8 g g g g g g g |
		g8 g g g g g g g |
		g8 g g g g g g g |
		g8 g g g g g g g |
		d d d d d d d d
		d d d d es es es es |
	}
}

\score {
	\new StaffGroup <<
		\new Staff {
			\key g \major
			\clef "treble"
			\riff
		}
		
		\new Staff {
			\key g \major
			\clef "treble"
			\chorda
		}

		\new Staff {
			\key g \major
			\clef "bass"
			\bass
		}
	>>

	\midi {}
}
