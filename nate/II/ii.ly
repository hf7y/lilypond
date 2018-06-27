\version "2.18.2"

%Second Movement of Zachary Viet Pine's piano composition for Nate Ben-Horin
%based on an original gestalt, 0 , 1, 2 from a piece "Blueberry"
%for guitar and piano written by Pine in 2016

bells = <<
	\new Voice {
		\change Staff = "up"
		< d'' b'' >4 r r < c'' d'' b'' > |
		r < d''' b' > r r |
		r1 | 
		
		< d'' b'' >4 r r < c'' d''' > |
		r \appoggiatura { b'8 } d'''4 r r |
		r1\fermata | 

		\bar "||"
	}


	\new Voice {	
		\change Staff = "down"
		c2. r4 | r4 c'2. | r1 |
		c'2 b2 | r4 c2. | r1\fermata | \bar "||"
	}
>>

firstSentence = <<
	\new Voice {
		\change Staff = "up"
		\clef "bass"
		\relative c,, {
			r1 r1 | 
			\repeat percent 4 {
				\ottava #-1
				\tuplet 3/2 { bes8 d e }
				\tuplet 3/2 { bes8 d e }
			}
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c, {
			\ottava #-1
			\repeat percent 4 {
				\tuplet 5/4 { fis16 g gis a ais }
				\tuplet 5/4 { b ais a gis g }
			}
			\repeat percent 4 {
				\tuplet 5/4 { fis16 g gis a ais }
				\tuplet 5/4 { b ais a gis g }
			}
		}
	}
>>

secondSentence = <<
	\new Voice {
		\change Staff = "up"
		r2 b16 d''8. r4 |
		b'8 d''' r4 b'8. d'''16 r4 |
		r4 d''8.. b''32 c''4 r4 | 
		b'8.. d'32 c'''4 b'8.. d''32\fermata r4 |
	}

	\new Voice {
		\change Staff = "down"
		\relative c {
			g16 d' c fis	g e gis a	r8 ais16 b	\stemUp c,, bes' \stemNeutral c' d |
			r8. g,,16 	b' bes a aes	r4 	g16 \once \stemUp c,, \once \stemDown fis' d |
			e bes c g	r4	c,16 g' fis' g	bes, c d e
			r4	fis16 g gis a	r4	\stemDown ais16 b \stemNeutral g, c,\fermata
			\bar "||"
		}
	}
>>

farOffPoint = <<
	\new Voice {
		\change Staff = "up"
		\clef "bass"
		c,4 d \ottava #-1 g,, e, |
		c,, c, c,, g,, |
		c, c,, bes,, c,, |
		g,, \clef "treble" \ottava #0 \appoggiatura { b'16 }  a''4 \ottava #-1
			\clef "bass" c,, \clef "treble" \ottava #0 \appoggiatura { a'16 } c''4 |
		\clef "bass" g, \clef "treble" \appoggiatura { e'16 } b'4
			\appoggiatura { e'16 } a'4 \appoggiatura { e'16 } g'4 |
	}

	\new Voice {
		\change Staff = "down"
		\repeat tremolo 16 < fis g a >32
		\repeat tremolo 16 < gis ais b >32 |
		\repeat tremolo 32 < bes, c d e fis >32
		\tuplet 3/2 {
			\repeat tremolo 16 < fis, g, > 
			\repeat tremolo 16 < gis, a, > 
			\repeat tremolo 16 < ais, b, > 
		}
		\ottava #-1 	
		\repeat tremolo 32 < bes,, c, d, e, fis, >32
		\tuplet 3/2 {
			\repeat tremolo 16 < fis,, g,, > 
			\repeat tremolo 16 < gis,, a,, > 
			\repeat tremolo 16 < ais,, b,, > 
		}
	}
>>

repriseSentence = <<
	\new Voice {
		\clef "treble"
		r2. < b' d''' >4 |
		r2. < d'' b'' >4 |
		r2. \clef "bass" fis4\trill
		fis2.\trill \clef "treble" \tuplet 3/2 { c'16 b' d''' }	r8 |
	}

	\new Voice {
		\change Staff = "down"
		\clef "bass"
		\ottava #-2
		\relative c,, {
			g16 c d e fis g ais bes, a' ais b c,, r4 |
			r8 fis'16 g gis e a d, ais' b c, bes r4 |
			g16 c bes d e g fis gis a ais b g, gis' a ais b |
			bes, c d fis e g, a' ais gis b bes, c, r4 |
		}
	}
>>

finalBells = <<
	\new Voice {
		\change Staff = "up"
		\ottava #1 
		< d''' b''' >4 r r < d''' b''' > |
		r < d'''' b'' > r < d'''' b'' > |
		r4 < d''' b''' >\fermata r2 | 
		\bar "|."
	}


	\new Voice {	
		\change Staff = "down"
		\ottava #-1
		c,2. \ottava #-2 c,,4 | \ottava #0 g4 r r \ottava #-1 c,4 | 
		r4 \ottava #-2 c,,4 \fermata r2 | \bar "|."
	}
>>

\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\time 4/4
			\tempo 4=120
			\clef "treble"
			\bells
			\firstSentence
			\secondSentence
			\farOffPoint
			\repriseSentence
			\finalBells
		}

		\new Staff = "down" {
			\clef "bass"
			s1 * 23
		}
	>>

}
