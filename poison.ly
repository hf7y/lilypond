\version "2.18.2"

theme = <<
	\tempo 4. = 128
	\time 12/8
	\new Voice {
		\change Staff = "up"
		\relative c'' {
			r4. r8 cis8  e cis4 a8  cis a4 | fis8  a fis4 d8  fis d4( e fis )|
			r4. r8 cis'8  e cis4 a8  cis a4 | fis8  a fis4 d8  fis d4( cis b )|
			a4. r8 cis'8  e cis4 a8  cis  a4 fis8  a fis4 d8  fis d4( e g )|
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c, {
			d4.   fis a cis | e g b4( c  d   )|
			d,,4. fis a cis | e g b4( a  g   )|
			d,4.  fis a cis | e g b4( a cis, )|
	
		}
	}
>>

variOld = <<
	
	\new Voice {
		\change Staff = "up"
		\relative c' {
			fis4. r8 d16 e d cis b4. r8 e16 fis e d | cis4. r8 fis16 g fis e d4( e fis )|
			r4. r8 d16 e d cis b4. r8 e16 fis e d | cis4. r8 fis16 g fis e d4( cis b )|
			\time 3/4 a( b cis) | \time 12/8
			d4. r8 d16 e d cis b4. r8 e16 fis e d | cis4. r8 fis16 g fis e d4( < e d' >  < g cis > )|
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c {
			d4.   fis a cis | e, g b4( c  d   )|
			d,4. fis a cis | e, g b4( a  g   )|
			\time 3/4 fis( g a ) | \time 12/8
			d,4.  fis a cis | e, g b4( a, cis,)|
	
		}
	}
>>

vari = <<
	
	\new Voice {
		\change Staff = "up"
		\relative c''' {
			r4. r8 cis8  e cis4 a8  cis a4 | fis8  a fis4 d8  fis d4( e fis )|
			r4. r8 cis'8  e cis4 a8  cis a4 | fis8  a fis4 d8  fis d4( cis b )|
			r4. r8 cis'8  e cis4 a8  cis  a4 fis8  a fis4 d8  fis d4( e g )|
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c {
			d4.  < fis cis' > < a fis' > | e, g b4( c  d   )|
			d,4. fis a cis | e, g b4( a  g   )|
			d,4.  fis a cis | e, g b4( a, cis,)|
	
		}
	}
>>
varii = <<

	\new Voice {
		\change Staff = "up"
		\relative c' {
			< fis d' >2 < a fis'>4 < g e'>2 << { bis4 } \\ { b'8 bes } >> < cis, a'>2 < a fis'>4 < b g'> 2.
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c, {
			d2.   fis b, d | g b a4( b  cis )|
			d2.   fis b, d | g b a4( b  cis )|
			d2.   fis b, d | g b a4( b  cis )|
	
		}
	}
>>

\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
			\theme \bar "||"
			\vari \bar "||"
			\varii
		}

		\new Staff = "down" {
			\clef "bass"
		}
	>>
}
