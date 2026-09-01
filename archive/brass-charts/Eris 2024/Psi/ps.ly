\version "2.24.0"
\include "Global.ly"

globalA = {
	\compoundMeter #'((7 7 9 8))
	\key bes \major
	\repeat volta 2 {
		s2.. \bar "!" s2.. \bar "!" s2. s4. |
		s2.. \bar "!" s2.. \bar "!" s2. s4. |
		s2.. \bar "!" s2.. \bar "!" s2. s4. |
		s2.. \bar "!" s2.. \bar "!" s2. s4. |
	}
}

trumpetA = \relative c'' {
	es2~ es4.
	es4.~ es2
	d8[ cis d] a8[ gis a] bes4 aes'8 |

	g4 c,4 fis8[ g a?]
	c8[ a g]  fis?2
	g4 bes,8 g'4 bes,8 g'4 bes,8 |

	g'4 g aes4.
	f4. g4 es4
	d8[ es f] es[ d c] bes4. |

	c4 c4 es8[ d c]
	bes4. a2 
	bes4 g8 bes4 g8 bes4 g8 |
}


midA = \relative c {
	\repeat percent 2 {
		<g c es>4 4 <aes c f>4.
		<aes d f>4. <bes es g>4 4
		<d g bes>4. <es a c>4. <f bes d>4. |

		<g c es>4 4 <c, fis a>4.
		<d g bes>4. <a d fis>4 4 
		<bes es g>4. 4. 4. |
	}
}

tubaA = \relative c, {
	\repeat percent 2 {
		c4 g' f'4 aes,8
		d4 aes?8 es'4 bes
		g4. a!4. bes4. |

		c4 es, fis4 a8
		g4. d'4 d,
		es'4 es,8 es'4 es,8 es'4 es,8 |
	}
}



globalB = {
	\compoundMeter #'((9 7 7 8))
	% \key bes \major
	\repeat volta 2 {
		s2. s4. \bar "!" s2.. \bar "!" s2.. |
	}
}

trumpetB = \relative c'' {
	g'4 bes,8 g'4 bes,8 g'4 bes,8 
	a8[ bes] c[ d] es4 g,8
	es'4 g,8 es'[ g,] c[ es] | 
}

midB = \relative c {
	<d g bes>4. 4. 4.
	<d fis a>4 4 <es g bes>4.
	4. <c es g>4 4 |
}

tubaB = \relative c {
	g4 d8 bes'4 d,8 g4 d8
	fis4 a es4 bes8
	g'4 bes8 c4 es4 |
}

globalC = {
	\compoundMeter #'((7 7 9 8))
	% \key bes \major
	\repeat volta 2 {
		s2.. \bar "!" s2.. \bar "!" s2. s4. |
		s2.. \bar "!" s2.. \bar "!" s2. s4. |
		s2.. \bar "!" s2.. \bar "!" s2. s4. |
	}
}

trumpetC = \relative c'' {
	g4. a4 bes
	des4. c4 f,
	des'?8 a c[ bes] a[ fis g] a[ bes] |

	g4. es'4 g
	f8 ges f es4 c4
	des8[ c bes a] c[ f, ges] a[ bes] |

	es4 c8 fis4 g
	a!4 b,8 es4 g,
	aes4. f8 es[ d es] f[ fis] |
}

midC = \relative c {
	<d g bes>4. <c fis a>2
	<des f! bes>4. <c f aes>4 4
	<bes es g>2 <c fis a>4. <a d fis>4 |

	<d g bes>4. <es g c>4 4
	<f aes des>4. <es g c>4 4
	<des ges bes>2 <c f aes?>4. <c f aes>4 |

	<es g c>4. <es aes c>2
	<d g b!>4. <es g c>4 4
	<c f aes>2 <bes es g>4. 4 |
}

tubaC = \relative c {
	g4. a4 d,
	des4 bes8 f'2
	es4 c'4 d!4. fis,4 |

	g4. es'4 g4
	aes,8 des f c2
	ges4 des' f, c'8 es4 |

	c4. aes4 es'4
	b!4 g8 c4 es4
	f4 c es4. bes4 |
}
\bookpart {
	\header {
		title = "Ψ"
		composer = "Brett Brothwell"
	}
	\score {
		<<
		\new Staff {
			<< \globalA \trumpetA >>
			<< \globalB \trumpetB >>
			<< \globalC \trumpetC >>
		}
		\new Staff {
			\clef "bass"
			<< \globalA \midA>>
			<< \globalB \midB>>
			<< \globalC \midC>>
		}
		\new Staff {
			\clef "bass"
			<< \globalA \tubaA >>
			<< \globalB \tubaB >>
			<< \globalC \tubaC >>
		}
		>>
		\layout {}
		\midi {}
	}
}