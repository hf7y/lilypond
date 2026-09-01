\version "2.24.0" 

\header {
  title = "Entrance Processional"
  tagline = ""
}

trumpet = \relative c' { 
	r2 bes8 c es4 | f2 r8 c es8 f | es8 c b4 r8 c es8 f |
	es8 c f8 c es8 c bes4 | c1 |

	r2 bes8 c es4 | f2 r8 c es8 f | es8 c b4 r8 c es8 f |
	es8 c f8 c es8 c bes4 | c1 |

	r2 f8 g bes4 | c2 r8 g bes8 c | bes8 g f4 r8 g bes8 c |
	bes8 g c8 g bes8 g f4 | r8 g bes8 c es4 f4 | aes1 | 
	aes1 | R1*3 |
}
saxophone = \relative c { 
	R1*5

	r2 cis8 e fis4 | a2 r8 e fis8 a | fis8 e b4 r8 e fis8 a |
	fis8 e a8 e fis8 e cis4 | e1 |

	r2 cis'8 e fis4 | a2 r8 e fis8 a | fis8 e b4 r8 e fis8 a |
	fis8 e a8 e fis8 e cis4 | r8 e fis8 a b4 d4 | e1 | 
	es1 | R1*3 |
}
trombone = \relative c { 
	r2 bes8 c es4 | f2 r8 c es8 f | es8 c b4 r8 c es8 f |
	es8 c f8 c es8 c bes4 | c1 |

	r2 f,8 g bes4 | c2 r8 g bes8 c | bes8 g f4 r8 g bes8 c |
	bes8 g c8 g bes8 g f4 | g1 |

	r2 bes8 c es4 | f2 r8 c es8 f | es8 c b4 r8 c es8 f |
	es8 c f8 c es8 c bes4 | r8 c es8 f aes4 bes4 | des1 | 
	es1 | R1*3 |
}
tuba = \relative c, { 
	R1*5
	R1*4 | c1 |

	r2 bes8 c es4 | f2 r8 c es8 f | es8 c b4 r8 c es8 f |
	es8 c f8 c es8 c bes4 | r8 c es8 f aes4 bes4 | des1 | 
	es1 | R1*3 |
}
guitar = { 
	s1*20
}
bass = { 
	s1*20
}

global = {
	s1*20 \bar "||"
}

trumpetB = \relative c' { 
	c'4. bes8 a8 g a bes | c4. bes8 a8 g bes8 a | 
	g8 bes a8. fis16 e2 | R1 |

	c'4. bes8 a8 g a bes | c4. bes8 a8 g bes8 a | 
	g8 bes a8. fis16 e2 | R1 |

	d'4. c8 b8 a b c | d4. c8 d e fis8. gis16 | 
	a4. gis8 fis8 e a8 gis | fis4 e dis cis |

	c4. bes8 a8 g a bes | c4. bes8 a8 g bes8 a | 
	g8 bes a8. fis16 e2 | R1 |
}
saxophoneB = \relative c { 
	
}
tromboneB = \relative c { 
	
}
tubaB = \relative c { 
	c,2 e4 fis | g4 c, e fis | g4 fis g2 | e4 dis e2 |
	c4 g' e fis | g4 c, e fis | g4 fis g2 | e4 fis gis a |
	d,2 fis4 gis | a4 d, fis a | fis4 gis a e | a b a aes |
	g4 c, e fis | g4 c, e fis | g4 fis g2 | e4 es des c | 
}
guitarB = { 
	s1
}
bassB = { 
	s1
}

globalB = {
	\tempo 4=66
}
\score {
	<<
		\new StaffGroup <<
			\new Staff = "trumpet" \with {
				instrumentName = "Trumpet" 
				shortInstrumentName = "Tpt" }{
				<< \global \trumpet >>
				<< \globalB \trumpetB >>
			}
			\new Staff = "saxophone" \with {
				instrumentName = "Saxophone" 
				shortInstrumentName = "Sax." }{
				<< \global \saxophone >>
				<< \globalB \saxophoneB >>
			}
			\new Staff = "trombone" \with {
				instrumentName = "Trombone" 
				shortInstrumentName = "Tbn" }{
				\clef "bass"
				<< \global \trombone >>
				<< \globalB \tromboneB >>
			}
			\new Staff = "tuba" \with {
				instrumentName = "Tuba" 
				shortInstrumentName = "Tba" }{
				\clef "bass"
				<< \global \tuba >>
				<< \globalB \tubaB >>
			}
		>>
		\new StaffGroup <<
			\new Staff = "guitar" \with {
				instrumentName = "Guitar" 
				shortInstrumentName = "Gtr" }{
				\clef "treble_8"
				<< \global \guitar >>
				<< \globalB \guitarB >>
			}
			\new Staff = "bass" \with {
				instrumentName = "Bass" 
				shortInstrumentName = "Bs" }{
				\clef "bass"
				<< \global \bass >>
				<< \globalB \bassB >>
			}
		>>
	>>
}