\version "2.24.0"
\include "Phone.ly"

mischenichnas = \relative c, {
	\key c \minor
	\repeat percent 2 { c4 g'4 c,4 g'4 } |

	\sectionLabel "Verse"
	\repeat volta 2 {
		\repeat percent 2 { c,4 g'4 c,4 g'4 | }
		c,4 g'4 d4 g4 |
		c,8 g'4. c,8 g'4. |
	}
	\break
	\sectionLabel "Chorus"
	\repeat volta 2 {
		\repeat percent 2 { d8 d4. g4 c,4 | }
		c4 4 d g |
		\alternative { 
			{ c,8 c4. g'4 c, | }
			{ c8 c4 g'8 c,8 c4 g'8 | }
		}
	}

	\cueBox "Verse, Chorus, then Bridge"

	\sectionLabel "Bridge"
	\repeat volta 2 {
		\repeat percent 2 { c,4 e c e | }
		c4 d e f | 
		\alternative {
			{ e e a e | }
			{ e e f g-> | }
		}
	}
	\break
	\sectionLabel "Coda"
	\repeat volta 1 {
		\repeat percent 3 { c,4 g'4 c,4 g'4 | }
		d4 a'4 d,4 g4 |
		c,4 g'4 c,4 g'4 |
		c,4 g'4-> c,4 r4 
	}	
	\bar "|."
}

chagPurim = \relative c, {
	\key c \minor	
	\sectionLabel "Lick"
	c4 c f8 8 4 | f4 4 c8 8 4 |
	c4 c f8 8 4 | f4 g c, c4-> | \bar "||"

	\break

	\sectionLabel "Verse"
	c4 g' c, g' | c, e g c, |
	f c8 8 f4 c | f g c, g' | \bar "||"

	\break

	\sectionLabel "Chorus"
	c,4 c f8 8 4 | f4 4 c8 8 4 |
	c4 c f8 8 4 | f4 g c, c4-> | \bar "|."

	\cueBox \markup \center-column {
		\line { "then Lick, Verse, Chorus," }
		\null
		\line { "then Verse, Chorus," }
		\null
		\line { "then Lick, Verse, Chorus" }
	}
}

shoshanat = \relative c, {
	\key c \minor
	\sectionLabel "Lick"
	\repeat volta 2 { 
		c4 f c f | 
		\alternative {
			{ g g c, g' | }
			{ g g c, c | }
		}
	}

	\break

	\sectionLabel "Verse"
	\repeat volta 2 {
		c4 es f c | c f f aes |
		c4 aes f c | 
		\alternative { 
			{ aes' g c c, | }
			{ aes' g c r8 g8 | }
		}
	}

	\break

	\sectionLabel "Chorus"
	c,4 e f c | f c' aes f |
	c'4 c, f c | f c' aes f |

	\break

	\sectionLabel "Tag"
	\repeat volta 2 {
		c' aes es f | 
		\alternative {
			{ g g aes aes | }
			{ g g c, c | }
		}
	} \bar "|."

	\cueBox "da Capo x2"
}

veMordechai = \relative c, {
	\key c \minor
	\sectionLabel "Lick"
	\repeat volta 3 {
		\repeat percent 2 { c4 g'8 c, c4 g'8 c, }
	}

	\break

	\sectionLabel "Verse"
	\repeat volta 2 {
		c4 g'8 8 c,4 g' |
		g4 8 8 c,4 c8 e |
		\alternative { 
			{ f4 8 8 c4 c | d4 8 8 g4 g8 b, | }
			{ f'4 8 8 g4 g | g4 g8 b, c4 c | }
		}
	}

	\break

	\sectionLabel "Chorus"
	\repeat volta 2 {
		c4 c8 e f4 4 |
		bes,4 bes8 des es4 8 des |
		c4 8 8 f4 8 8 |
		\alternative {
			{ d4 4 g g | }
			{ g4 d8 g c,4 r4 }
		}
	}

	\cueBox \markup \center-column {
		\line {"then Verse, Chorus," }
		\null
		\line {"then Lick, Verse, Chorus," }
		\null
		\line {"then Verse, Chorus, Chorus" }
	}
}

shirHamasechot = \relative c {
	\key c \major
	\sectionLabel "Lick/Chorus"
	\repeat volta 2 {
		c4 g c a | 
		\alternative {
			{ d g, c g | }
			{ d' g, c2\fermata | }
		}
	}

	\break

	\sectionLabel "Verse"
	\time 3/4
	\repeat unfold 2 {
		c2 g4 | c2 r4 |
	}

	\break

	\sectionLabel "Chorus"
	\time 4/4
	\repeat volta 2 {
		c4 g c a | 
		\alternative {
			{ d g, c g | }
			{ d' g, c2\fermata | }
		}
	}

	\cueBox \markup \center-column {
		\line { "then Verse, Chorus; Verse, Chorus," }
		\null
		\line { "then Verse, Lick; Verse, Chorus," }
		\null
		\line { "then Verse, Chorus; Verse, Chorus," }
	}
}

aniPurim = \relative c, {
	\key c \major
	\sectionLabel "Lick"
	\repeat volta 2 {
		d4 g c, e | 
		\alternative {
			{ f4 g c, e }
			{ f4 g c8 g c,4 }
		}
	}

	\break

	\sectionLabel "Verse"
	c4 e a, c | d g c, g' |
	c,4 c8 b a4 c | d g c8 g c,4 |

	\break

	\sectionLabel "Chorus"
	\repeat volta 2 {
		d4 g c, e | 
		\alternative {
			{ f4 g c, e }
			{ f4 g c8 g c,4 }
		}
	}

	\cueBox \markup \center-column {
		\line { "then Verse, Chorus, Verse, Chorus" }
		\null
		\line { "then Lick, Verse, Chorus, Verse, Chorus" }
	}
}

drunkersTune = \relative c, {
	\key c \phrygian
	\repeat volta 4 { c1 \numRepeats "x4" }

	\mark #1
	\repeat percent 3 { c8 c'4 8 g4 c | }
	c,8 c'4 8 g4 bes8 c |

	\break

	\repeat volta 2 {
		f,8 4 8 c4 f |
		c8 c'4 8 g4 c |
		bes8 4 8 f4 bes |
		c,8 c'4 8 g4 c |
	}

	c,8 c'4 8 g4 c | \bar "||"
	\break

	\mark #2
	\repeat percent 4 { es,8 es'4 8 bes4 es4 }
	\break

	\repeat volta 2 {
		f,8 4 8 c4 f |
		c8 c'4 8 g4 c |
		bes8 4 8 f4 bes |
		c,8 c'4 8 g4 c | \textEndMark "Fine"
	}
	c,8 c'4 8 g4 c | \bar "||"
}


\bookpart {
	\header {
	  title = "Mishenichnas Adar"
	}
	% \markup \vspace #1
	\score {
		\layout {
			% indent = 0.5\in
		}
		\new Staff {
			\clef "bass"
			\mischenichnas
		}
	}
}

\bookpart {
	\header {
	  title = "Chag Purim"
	}
	\score {
		\new Staff {
			\clef "bass"
			\chagPurim
		}
	}
}

\bookpart {
	\header {
	  title = "Shoshanat Yaakov"
	}
	\score {
		\layout {
			% indent = 0.5\in
		}
		\new Staff {
			\clef "bass"
			\shoshanat
		}
	}
}

\bookpart {
	\header {
	  title = "VeMordechai Yatza"
	}
	% \markup \vspace #1
	\score {
		\layout {
			% indent = 0.5\in
		}

		\new Staff {
			\clef "bass"
			\veMordechai
		}
	}
}

\bookpart {
	% \markup \vspace #1
	\header {
	  title = "Shir Hamasechot"
	}
	\score {

		\new Staff {
			\clef "bass"
			\shirHamasechot
		}
	}
}
\bookpart {
	\header {
	  title = "Ani Purim"
	}
	\score {
		\layout {
			% indent = 0.5\in
		}
		\new Staff {
			\clef "bass"
			\aniPurim
		}
	}
}
\bookpart {
	\header {
	  title = "The Drunker's Tune"
	}
	\score {

		\new Staff {
			\clef "bass"
			\drunkersTune
		}
	}
}