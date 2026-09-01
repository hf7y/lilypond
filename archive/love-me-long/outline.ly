\version "2.24.1"

melody = {
	d4 g fis g
	a4 e a2
	g4 fis e fis
	g1

	d4 g fis g
	a4 e a2
	g4 fis e fis
	g1

	b4 b b8 b4.
	b4 b b2
	b4 a g a
	b1

	b4 b c' b
	a4 e a2
	g4 fis e fis
	g2. r4	
}

bass = {
	g2 b2
	a2 e'4 a
	d'2 d2
	g4 d' fis' c'

	g2 b2
	a2 e'4 a
	d'2 d2
	g4 d' b8 d' g' a'

	g'2 fis'4 b
	e'2 d'4 g
	c'2 c'2
	g4 d' fis' e'8 d'

	g4 f e2
	a2~ a8 fis' e' a
	d'2 d2
	g4 d' d2
}

\markup { Melody and Bass for "Love Me Tender" verse and chorus}
\score {
	<<
		\new PianoStaff <<
			\new Staff {
				\transpose c c' {
					\melody
				}
			}
			\new Staff {
				\clef bass
				\transpose c c, {
					\bass
				}
			}
		>>
	>>
}

guitarTechOne = <<
	\new Voice { 
		\voiceOne
		r16 b b b  r16 b b b  r16 b  r b b16 b b b |
		r16 b b b  r16 b b b  r16 b b b  b16 b b b |
		r16 b b b  a16 a a a  r16 g g g  a16 a a a |
		r16 b b b  b16 b b b  r16 b b b  r16 b r b |

		r16 b b b  r16 b b b  r16 c' c' c'  b16 b b b |
		r16 a a a  e16 e e e  a16 a r a  r16 a r a |
		r16 g g g  fis16 fis fis fis  r16 e e e  fis16 fis fis fis |
		r16 g g g  r16 g g g  r16 g g g r4 |
	}

	\new Voice \transpose c c, {
		\voiceTwo
		g4 g' fis'8 b4.
		e4 e' d'4 g
		c'2 c'2
		g4 d' fis' e'8 d'

		g4 f e2
		a2~ a8 fis' e' a
		d'2 a2
		g4 a d'4 d'
	}
>>

guitarTechTwo = {
	e,16 gis, c e    a,16 cis f gis  d16 fis a    cis' r4 |
	e,16 a,   d g    a,16 d   g b    d16 g   b    e'   r4 |
	e,16 ais, e ais  a,16 es  a d'   d16 aes cis' g'   r4 |

	eisis,16 ais, d ges  aisis,16 dis g bes  disis16 gis b    es'  r4 |
	e,16     a,   d g    a,16     d   g b    d16     g   b    e'   r4 |
	eses,16  aes, d gis  aeses,16 des g bis  deses16 ges b    eis' r4 |
}

guitarTechThreeChords = {
	\chordmode {
		% g2 g:/d | a2:7 a:7/e | 
		% d2:7 d2:7/a | g2 g:/d |
		% g2 g:/d | a2:7 a:7/e | 
		% d2:7 d2:7/a | g2 g:/d |

		% g2 b:7/fis | e:m g:7/d |
		% c2 c:m6 | g2 g:/d |
		% g2 e:7 | a2:7 a:7/e | 
		% d2:7 d2:7/a | g2 g:/d |
		g1 | a1:7 | 
		d1:7 | g1 |
		g1 | a1:7 | 
		d1:7 | g1 |

		g2 b:7 | e:m g:7 |
		c2 c:m6 | g1 |
		g2 e:7 | a1:7 | 
		d1:7 | g1 |
	}
}
guitarTechThree = <<
	\new Voice \with {
		\consists "Pitch_squash_engraver"
	} {
		\relative c'' {
			\improvisationOn
			s4 g4 s4 d4
			s4 a,4 s4 e4
			s4 d4 s4 a,4
			s4 g4 s4 d4

			s4 g4 s4 d4
			s4 a,4 s4 e4
			s4 d4 s4 a,4
			s4 g4 s4 d4

			s4 g4 s4 fis4
			s4 e4 s4 d4
			s4 c4 s4 c4
			s4 g4 s4 d4

			s4 g4 s4 e4
			s4 a,4 s4 e4
			s4 d4 s4 a,4
			s4 g4 s4 d4
		}
 	}
	\new Voice {
		g4 s4 d4 s4 
		a,4 s4 e4 s4 
		d4 s4 a,4 s4 
		g4 s4 d4 s4 
		g4 s4 d4 s4 
		a,4 s4 e4 s4 
		d4 s4 a,4 s4 
		g4 s4 d4 s4 
		g4 s4 fis4 s4 
		e4 s4 d4 s4 
		c4 s4 c4 s4 
		g4 s4 d4 s4 
		g4 s4 e4 s4 
		a,4 s4 e4 s4 
		d4 s4 a,4 s4 
		g4 s4 d4 s4 
	}
>>

\markup { Palette of sounds for Guitar }
\markup { Technique One }
\score {
	\new Staff {
		\clef "treble_8"
		\guitarTechOne
	}
}

\markup { Technique Two }
\score {
	\new Staff {
		\clef "treble_8"
		\guitarTechTwo
	}
}

\markup { Technique Three }
\score {
	<<
		\new ChordNames {
			\guitarTechThreeChords
		}
		\new Staff {
			\clef "treble_8"
			\guitarTechThree
		}
	>>
}

fluteTechOne = {
	\pitchedTrill b'1\startTrillSpan b' |
	b'1 |
	b'4\stopTrillSpan\glissando a'\glissando g'\glissando a'\glissando |
	\pitchedTrill b'1\startTrillSpan b' |

	\tuplet 3/2 { b'2:32\stopTrillSpan\glissando c'':32\glissando b':32 } |
	bes'4\glissando \pitchedTrill a'2\startTrillSpan e' \pitchedTrill a'4\stopTrillSpan\startTrillSpan a' |
	aes'8\stopTrillSpan\glissando g'\glissando fis'\glissando f'\glissando
		e'\glissando f'\glissando fis'\glissando g'\glissando |
	\pitchedTrill aes'2\startTrillSpan g'\pitchedTrill g'2\stopTrillSpan\startTrillSpan g'
}

\markup { Palette of sounds for Flute }
\markup { Technique One }
\score {
	\new Staff {
		\fluteTechOne
	}
}

fluteTechTwo = \relative c'' {
	<d\harmonic g>1
	<c\harmonic g' cis\harmonic>1
	<d fis\harmonic>1
	<es\harmonic g>1

	<d\harmonic g>1
	<c\harmonic g' cis\harmonic>1
	<d fis\harmonic>1
	<es\harmonic g>1

	<b' d\harmonic>2 <b dis\harmonic>2
	<b e\harmonic>2 <b d\harmonic>2
	<c, b'\harmonic>2 <a\harmonic c>2
	<b' d\harmonic>2 <b dis\harmonic>2 

	<b d\harmonic>2 <b e\harmonic>2
	<c,\harmonic g' cis\harmonic>1
	<d fis\harmonic>1
	<d\harmonic g>1
}

\markup { Technique Two }
\score {
	\new Staff {
		\fluteTechTwo
	}
}

hornTechOne = {
	\clef "bass"
	\transpose c c, {
		g4 geh fis f
		e4 es d4 des
		c2 a4 aes
		g4 d' fis' e'8 d'

		g4 f e4 bes
		a2 g'8 fis' e' es'
		d'4 deh' des' c'
		b4 bes a aes
	}
}

\markup { Palette of sounds for Horn }
\markup { Technique One }
\score {
	\new Staff {
		\hornTechOne
	}
}

hornTechTwo = \relative c' {
	\clef bass
	<\parenthesize g d'>1
	<\parenthesize a e'>1
	<\parenthesize d, d'>1
	<\parenthesize g, g'>1

	<\parenthesize d'' g>1
	<\parenthesize e a>1
	<\parenthesize d a'>1
	<\parenthesize g b>1

	g,,2 fis 
	e d
	c1
	<\parenthesize g' g'>1

	\clef "treble"
	<\parenthesize d'' g>2 <\parenthesize e gis>2 
	<\parenthesize e a>2 <\parenthesize a cis>2 
	<\parenthesize b d>2 <\parenthesize d, a'>2
	<\parenthesize g, d'>1
}

\markup { Technique Two }
\score {
	\new Staff {
		\hornTechTwo
	}
}