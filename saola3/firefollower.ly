\version "2.18.2"

\header {
	title = "Firefollower"
	subtitle = "version for M. R. F."
	composer = "Zachary Viet Pine"
}

guitarHook = <<
	\relative c' {
		b8\rest a a a a b fis e | 
		b'4\rest < e, b' d > b'8\rest e, fis d | b'8\rest d, e fis g a b b | 
		b4\rest  < e, b' d > b'8\rest e,4 fis8 | b8\rest  a  a a a b fis e |
		b'4\rest < e, b' d > b'8\rest e, fis d | b'8\rest d, e fis g a b b | 
		b4\rest  < e, b' d > b'8\rest e,4 fis8 | b8\rest  a  a a a b d   d |
	} \\ \relative c {
		s1
		g2 g | g g | c c | c c |
		g2 g | g g | c c | c c |
	}
>>

guitarChordsOne = << 
	\relative c' {
		b4\rest < e, b' d > b'8\rest < d, b' d > b'\rest < d, b' d > |
		b'8\rest < d, b' d > b'8\rest < d, b' d > b'4\rest < d, b' d > |
		b'4\rest < e, b' d > b'8\rest < e, b' d > b'\rest < fis a d > |
		b8\rest < fis a d > b8\rest < fis a d > b4\rest < fis a d > |
	} \\ \relative c { 
		g2 g | g g | c c | c c |
	}
>>

guitarChordsTwo = << \relative c' {
		b4\rest < e, g b e > b'8\rest < d, g b e > b'\rest < d, g b e > |
		b'8\rest < d, g b e > b'8\rest < d, g b e > b'4\rest < d, g b e > |
		b'4\rest < e, g cis e > b'8\rest < e, g cis e > b'\rest < e, g cis e > |
	} \\ \relative c, {
		e2 e | e e | a a |
} >>

guitarBridge= <<
	\relative c' {
		b8\rest < e, g cis e > b'8\rest < e, g cis e > b'4\rest < e, g cis e > |
		< e b' d >4 < e b' d > < fis a d >8 < fis a d > b\rest < fis b d > |
		r < fis b d > r < fis b d > < fis b d >4 < fis b d > |

		b4\rest < g c e > b8\rest < g c e > b\rest < fis c' e > |
		b8\rest < fis c' e > b8\rest < fis c' e > b4\rest < fis c' e > |
		b4\rest < g c e > b8\rest < g c e > b\rest < fis c' e > |
		b8\rest < fis c' e > b8\rest < f ces' es > b8\rest < f ces' es > b8\rest < e, b' d >|

		b'4\rest < e, b' d > b'8\rest < e, b' d > b'\rest < a e' g > |
		b8\rest < a e' g > b8\rest < a e' g > < a e' g >4 < a e' g > |
		b4\rest < e, b' d > b'8\rest < e, b' d > b'\rest < a e' g > |
		b8\rest < a e' g > b8\rest < gis d' f > b\rest < gis d' f > b\rest < g c e > |
		
		b4\rest < g c e > b8\rest < g c e > b\rest < fis c' e > |
		b8\rest < fis c' e > b8\rest < fis c' e > b4\rest < fis c' e > |
		b4\rest < g c e > b8\rest < g c e > b\rest < fis c' e > |
		b8\rest < fis c' e > b8\rest < f ces' es > b8\rest < f ces' es > b8\rest < e, b' d >|

		b'4\rest < e, b' d > b'8\rest < e, b' d > b'\rest < a e' g > |
		b8\rest < a e' g > b8\rest < a e' g > < a e' g >4 < a e' g > |
		b4\rest < d, a' c > b'8\rest < d, a' c > b'\rest < g d' f > |
		b8\rest < g d' f > b8\rest < fis c' es > b\rest < fis c' es > b\rest < f bes d > |

		r4 < f bes d > r8 < f bes d > r < f bes d > | r d e fis g a bes bes |
		r4 < e, bes' d > r8 e4 fis8 | r a a a a bes a g |
		r4 < f bes d> r8 < f bes d> r < f bes d > | r8 d e fis g a bes bes |
		r4 < e, bes' d> r8 e4 fis8 | r a a a a b d d |
	} \\  \relative c {
		a2 a2
		c4 c c8 c c r |
		g4 g g g8 gis |

		a2 a | d d |
		a2 a | d des |
		c2 c | f f |
		c2 c | f e |

		a,2 a | d d |
		a2 a | d des |
		c2 c | f f |
		bes,2 bes | es d |

		g,2 g | g g | c c | c c |
		g2 g | g g | c c | c c |
	}

>>

guitarHype = <<
	\relative c {
		< e b' d >1 | < fis a d >1 | < fis b d >1 | < e g d' >1 |
		< e b' d >1 | < fis a d >1 | < fis b d >1 | < fis a dis >1 |
		< e b' d >2 < e b' d > | < fis a d > < fis a d > | < fis b d > < fis b d > | < fis a dis > < fis a dis > |
		< e b' d > < e b d' > | < fis a d > < fis a d > | 
			\repeat unfold 4 { < e g d'>4 } | \repeat unfold 4 { < e g cis>4 } |
		
		< e b' d >1 | < fis a d >1 | r4 < fis b d > r8 < fis b d > r < fis b d > | 
			r < e g d' > r < e g d' > r4 < e g d' > |
		r4 < e b' d > r8 < e b' d > r < e b' d > | r < fis a d > r < fis a d > r4 < fis a d > |
			r4 < fis b d > r8 < fis b d > r < fis b d > | r < fis a dis > r < fis a dis > r4 < fis a dis > |
		r4 < e b' d > r8 < e b' d > r < e b' d > | r < fis a d > r < fis a d > r4 < fis a d > |
			r4 < fis b d > r8 < fis b d > r < fis b d > | r < fis a dis > r < fis a dis > r4 < fis a dis > |
		r4 < e b' d > r8 < e b' d > r < e b' d > | r < fis a d > r < fis a d > r4 < fis a d > |
			r4 < e g d' > r8 < e g d' > r < e g d' > | r \repeat unfold 7 { < e g cis >8 } | 

		< e b' d >8[ < e b' d > < e b' d >] < e b' d >[ < e b' d > < e b' d >] < e b' d >< e b' d >
			< fis a d >[< fis a d > < fis a d >] < fis a d >[< fis a d > < fis a d >] < fis a d > < fis a d >
			< fis b d >[< fis b d > < fis b d >] < fis b d >[< fis b d > < fis b d >] < fis b d > < fis b d >
			< e g d' >[ < e g d' > < e g d'>] < e g d' >[ < e g d' > < e g d'>]  < e g d' > < e g d' >
		< e b' d >8[ < e b' d > < e b' d >] < e b' d >[ < e b' d > < e b' d >] < e b' d >< e b' d >
			< fis a d >[< fis a d > < fis a d >] < fis a d >[< fis a d > < fis a d >] < fis a d > < fis a d >
			< fis b d >[< fis b d > < fis b d >] < fis b d >[< fis b d > < fis b d >] < fis b d > < fis b d >
			< fis a dis >[< fis a dis > < fis a dis >] < fis a dis >[< fis a dis > < fis a dis >] 
				< fis a dis > < fis a dis >
		< e b' d >8[ < e b' d > < e b' d >] < e b' d >[ < e b' d > < e b' d >] < e b' d >< e b' d >
			< fis a d >[< fis a d > < fis a d >] < fis a d >[< fis a d > < fis a d >] < fis a d > < fis a d >
			< fis b d >[< fis b d > < fis b d >] < fis b d >[< fis b d > < fis b d >] < fis b d > < fis b d >
			< fis a dis >[< fis a dis > < fis a dis >] < fis a dis >[< fis a dis > < fis a dis >] 
				< fis a dis > < fis a dis >
		< e g d' >[ < e g d' > < e g d'>] < e g d' >[ < e g d' > < e g d'>]  < e g d' > < e g d' >
			< e g cis>[ < e g cis> < e g cis>] < e g cis>[ < e g cis> < e g cis>]  < e g cis> < e g cis>
			< e b' d >[ < e b' d > < e b' d >] < e b' d >[ < e b' d > < e b' d >] < e b' d >< e b' d >
			< fis a d >[< fis a d > < fis a d >] < fis a d >[< fis a d > < fis a d >] < fis a d > < fis a d >


	
	} \\ \relative c {
		c1 | c | g | e | 
		c' | c | g | b | 
		c  | c | g | b | 
		c  | c | e, | a |

		c1    | c   | g2 g | e e | 
		c'2 c | c c | g g  | b b |
		c2 c  | c c | g g  | b b |
		c2 c  | c c | e, e | a a |

		c4. c c4 | c4. c c4 | g4. g g4 | e4. e e4 |
		c'4. c c4 | c4. c c4 | g4. g g4 | b4. b b4 |
		c4. c c4 | c4. c c4 | g4. g g4 | b4. b b4 |
		e,4 e e e | a a a a | c c c c | c c c c |
		
	}

>>

verseOne = \relative c' {
	r1 | r8 b b d b4 a8 a   | b4. g8 g4. g8        | fis4. g8 fis2 |
	r1 | r4. b,8  b4 d      | fis4. fis8 b8 fis e4~| e2 r8 b8 d4 |
	r1 | r8 b' b d b4 a     | b4. g8 g4. g8        | fis4 g4 b8[( a] g4)  |
	r1 | r8 b  b a b4 a     | b1(                  | a1) |
}

verseTwo = \relative c' {
	r1 | r4 b8 d b4 a8 a | b4 g4 g4 e8 e | fis4. g8 fis2 |
	r1 | r4. e8 fis4 e4  | fis8 fis fis b b,4. d8 | r1 |
	r1 | r8 b' b d b4 a8 a | b4. g8 g4. g8 | fis4 g4 b8([ a] g4)  |
	r1 | r8 b b a b4 a | b1( | a1) |
}

bridge = \relative c' {
	r2 a8 b c d | e4. d4. c8[ a] | r4 a8 a a b c d | e4. f4. g4~ |
	g2 r4 g8 g | g4 f8 e f4 e4~ | e4 r2 e8 e | e d d d d4 e4 |
	r2. d8 c | d4 d8 c e4 c8[ a] | r2. d8 c | d d d c d4 e | 
	r4. g8 g g4 g8~ | g f4 e8 f4 f | r4. f8 f f4. | f4. e8 e4. d8 |
	d1 |
}

verseThree = \relative c' {
	r1 | r8 b b d b a4 a8 | b4. g8 g4. g8 | fis g fis4.( e4.)  |
	r1 | r4 b'8 a b a b[ a~] | a1 | r1 |
	r1 | r8 b b b b4 d | \appoggiatura { b16[ a] } g4 a2. | r1 |
}

hypeOne = \relative c {
	r2 e4 g | fis2. e8 fis | g4 g8[ e d2] | r1 | 
	r4. e8 e4 g~ | g8 fis e[ d4.] r4 | r1 | r1 |
	r8 b' b4 b8 b b a | a4 a8 a4. r4 | g4 d' d d8 d | dis4 b8 b4. r8 a |
	g2 b | a2. e8 e | g2 b | b8([ cis b a b4]) g4 |
}

hypeTwo = \relative c {
	r2 e4 g | fis2. e8 fis | g4 g8[ e d2] | r1 | 
	r4. d8 e4 g~ | g8 fis4 e8 e4( d4) | r1 | r1 |
	r8 b' b4 b8 b b a | a4 a8 a4 g4 g8~ | g4 d' d8 d d d | dis b4 a8 b4. a8 |
	g2 b | a2 e | g8([ fis e2.]) | r1 |
}

hypeThree = \relative c {
	r4. e8 e g4 fis8~ | fis2~ fis8 e4 fis8 | g4 g8[ e d2] | r1 |
	r2 r8 e'4 g8 | fis4 fis8 e4 e4. | b1 | r1 |
	r4. e8 e4 g4 | fis2 e4 b | b b d8[ b a] b~ | b2 a |
	g b | a e | g b | b( \appoggiatura { c16[ b] } a2) |
	g1 |
}

verseFour = \relative c' {
	r1 | r8 b b d b a a4 | b4. g8 g4. g8 | fis8 g fis2. |
	r1 | r1 | r1 | r4. b,8 b d fis4~ | fis8
}

vocals = {
	\key g \major
	\autoBeamOff
	r1 | r1 | r1 | r1 | r1 |
	r1 | r1 | r1 | r1 |
	\verseOne
	r1 | r1 | r1 | r1 |
	r1 | r1 | r1 | r1 |
	\verseTwo
	r1 | r1 | 
	\bridge
	r1 | r1 | r1 |
	r1 | r1 | r1 | r1 |
	\verseThree
	\hypeOne
	\hypeTwo
	\hypeThree
	r1 | r1 | r1 |
	r1 | r1 | r1 | r1 |
	\verseFour
}

guitar = {
	\key g \major
	\guitarHook

	\guitarChordsOne
	\guitarChordsOne
	\guitarChordsOne
	\guitarChordsTwo
	\guitarHook

	\guitarChordsOne
	\guitarChordsOne
	\guitarChordsOne
	\guitarChordsTwo

	\guitarBridge
	\guitarChordsOne
	\guitarChordsTwo
	\guitarChordsTwo

	s1 * 2	
	
	\guitarHype
	\guitarChordsOne
	\guitarChordsOne
	\guitarChordsOne
	\guitarChordsOne
	\stemDown g,8 \bar "||"
}	

clarinet = \relative c'' {
	\key g \major
	r2 r8 c4\f d8~ |
	d1~ | d2 r8 d4 e8~ | e2 b | a r8 g4 d'8~ |
	d2 r8 e fis d~ | d2 r8 d4 e8~ | e2 b | a r8 g4 g8~ |
	g1 | r | r | r2 r8 a,4\p b8~ |
	b1~ | b | c | d |
	b1~ | r | r4 c\< e g | fis d fis a | 
	g1~ | g2 r8 g4 a8~ | a1 | r8\! a\f a a a g d' d~ | 
	d1~  | d2 r8 d4 e8~ | e2 b | a r8 g d' e~ |
	e2 d~ | d r8 e fis g~ | g2 e | d r8 a'4 g8~ |
	g1 | r | g,8\f b c e g, b c e | a, c d fis a, c d fis |
	b,2 r8 g'4 g8~ | g4. r8 g a b4 | c,8 e g c c, e g c | d, fis a c d, fis a c |
	b2 r8 a4 g8~ | g2 r8 fis4 d8 | e g c e e, g c e | fis, a c d fis, a c d |
	e2 r8 d4 b8~ | b2 r8 a4 e'8~ | e2 r8 cis4 a8~ | a2 r8 g4 g8~ |
	g4 r a8 a r g-> | r g-> r g-> g4-> r |

	r1 | r1 | r1 | fis,,4.\pp f e4~ | 
	e1 | f1 | e1 | f4. gis a4 |
	r1 | r1 | a4\p b c d | e4.\< f g4~\!\f |
	g2 c | f, c' | f, bes | es,4 r a8\p bes a g~ |
	g1 | r8 d e fis g a bes bes~ | bes2 r8 e,4 fis8 | r8 a a a a bes c d~ |
	d2 g, | r8 g a bes c d e e~ | e2 r8 g,4 a8 | r8 a a a a b d d~ |
	d1 | r | r | r | 
	r | r | e,,~ | e |
	r | r | a | r |

	r | r | r | r |
	r | r | r | r |
	r | r | r | r |
	r | r | r | r |

	c1~\p | c4 r8 b c d e fis | g2 r8 fis4 g8~ | g a4 b4 fis e8~ |
	e1 | fis | g8 a g fis g a ais b~ | b dis4 b8 dis fis,4 g8~ |
	g1\< | a | b | b |
	c | d | e2 r8 d4\! cis8~\sp | cis1 | 

	c4.\f c c4 | c4. c d4 | d4. d d4 | e4. e e4 | 
	e4.\< e e4 | fis4. fis fis4 | g4 r8 g g a ais b~ | b[ b b ] b[ b b ] b b\! |
	c[ c c ] d[ c b] a g | fis4. d'4 r8 d d~ | d[ d d] d[ d c] b a | dis[ dis dis] dis[ dis b] dis fis |
	\repeat tremolo 8 { e16\< b } | \repeat tremolo 8 { e16 cis } | \repeat tremolo 8 { e16 c } | 
	fis8\! a,\ff a a a b fis e~ | e2 r8 e fis d | r8 d e fis g a b b~ | b2 r8 e,4 fis8 | r8 a a a a b d d~ | 
	d2 r8 e, fis d | r8 d e fis g a b b~ | b2 r8 fis4 g8 | r8 a a a a b a g~ | 
	g1 |  r | r | r2 a,8 b d d~ |
	d2 r8 e, fis d | r8 d e fis g a b b~ | b2 r8 e,4 fis8 | r8 fis fis r8 r4 fis\glissando | g,8 



}

void = {
	r r r | r2 b,2\glissando | 
	
	fis1 | g2. r4 | c, d e g | fis g a d | b1~ | b2. r4 | a2. g4 | r8 a a a a b d d~ |
	d2 r8 e, fis fis | r fis g a b c d e~ | e2 r8 g4 fis8 | r8 a a a a g d d~ | 
	d2 r8 e fis fis | r fis e d c d e e | r8 g fis e d e fis fis | r8 g fis g a b d d~ |

	d1 | r | g,,2 e | b e |
	d1 | r2 g | e b' | a8 b fis g a b d e~ |
	e8 d4 d8~ d8 b4 b8~ | b2 r2 | c4 d e g | d e fis a | 
	b2\trill b8 a g fis | e4 g b g | cis1~ | cis |
	c8 b a g fis e d c | b a g fis e d c b |

	a1 | a1 | a1 | a2 b |
	c1 | c1 | c1 | c2 d |
	e1 | fis1 | g | a2 b  |
	\tuplet 3/2 { c8 g e } \tuplet 3/2 { c e g } 
	\tuplet 3/2 { c8 g e } \tuplet 3/2 { c e g } 
	\tuplet 3/2 { c8 a f } \tuplet 3/2 { c f a } 
	\tuplet 3/2 { c8 a f } \tuplet 3/2 { c f a } 
	\tuplet 3/2 { c8 bes f } \tuplet 3/2 { d f bes } 
	\tuplet 3/2 { c8 bes f } \tuplet 3/2 { d f bes } 
	\tuplet 3/2 { c8 bes g } \tuplet 3/2 { es g bes } 
	\tuplet 3/2 { c8 a fis } \tuplet 3/2 { a bes a } |
	bes1 | r8 bes a g bes c d c~ | c2 r8 bes4 a8 | r8 c c c c bes c d~ |
	d2 g, | f' g, | c2\trill c8 bes4 a8 | r a a a a b d d~ |

d1 | r | r | d, | e | b | a~ | a | e' | b | cis~ | cis |
	c2 r2 |



	
}

\score {
	<<
		\new Voice = "clarinet" {
			\clef "treble"
			\transpose g a {
				\clarinet
			}
		}

		\new Voice = "voce" {
			\clef "treble_8"
			\vocals
		}

	
		\new Lyrics \lyricsto "voce" {
			Let's start a fi -- re and burn the grass and burn the brush
			and burn what was the two of us to dust.
			Poor Ca -- li -- for -- nia, beau -- ti -- ful and all carved up
			with what we've done to ya.

			At the cross of a noon green lawn and a bone mi -- rage
			a charge of thrif -- ti -- ness and gold stars,
			the coat of arms on a re -- gu -- la -- tion u -- ni -- form,
			a Ca -- li -- for -- nia war. 

			Catch a train in San Jo -- se
			with a win -- dow on the Wes -- tern side.
			You can sleep through Sa -- li -- nas
			on the way to Pa -- so Rob -- les.
			You can dream you're a ran -- cho,
			ov -- er night A -- me -- ri -- ca -- no,
			but wake up af -- ter O -- bis -- po
			for pain -- ted sands and o -- cean oil.

			Let's start a fi -- re and start a new re -- bel -- li -- on.
			We don't need to win, just got to get things go -- ing.

			You may say I'm a drea -- mer.
			Well so too Lenin was.
			I'm not sa -- ying I'm a Com -- mu -- nist.
			I don't jive with the So -- vi -- ets
			but I'd be cool with a re -- vo -- lu tion.

			You may say it could be worse.
			Well that's not sa -- ying much.
			I'm not roo -- ting for a Com -- mu -- nist thing.
			I'm just say -- ing that they know how to dream
			and I've been drea -- ming some.

			And if you still don't be -- lieve me
			well you're not the on -- ly one.
			I hope some -- day you can see things my way
			and get in -- spired to start a fi -- re.

			The fi -- re fol -- low -- ers ri -- sing from the dust and ash,
			they'll have a blast!
		}
		
		\new Voice = "guitar" {
			\clef "treble_8"
			\guitar

		}

	>>
}
