\version "2.24.0"
\include "Phone.ly"

mischenichnas = \relative c, {
	\key c \major
	% \repeat percent 2 { c4 g'4 c,4 g'4 } |

	% \sectionLabel "Verse"
	\repeat volta 2 {
		\repeat percent 2 { c4-12 g4-12 c4 g4 | }
		c4-12 g4-12 d'4-2 g,4 |
		c8-12 g4.-12 c8 g4. |
	}
	\break
	\sectionLabel "Chorus"
	\repeat volta 2 {
		\repeat percent 2 { d'8-2 d4. g4-0 c,4-12 | }
		c4-12 4 d-2 g-0 |
		\alternative { 
			{ c,8-12 c4. g'4-0 c, | }
			{ c8-12 c4 g'8-0 c,8 c4 g'8 | }
		}
	}

	\bar "|."

	% \cueBox "Verse, Chorus, then Bridge"

	% \sectionLabel "Bridge"
	% \repeat volta 2 {
	% 	\repeat percent 2 { c,4 e c e | }
	% 	c4 d e f | 
	% 	\alternative {
	% 		{ e e a e | }
	% 		{ e e f g-> | }
	% 	}
	% }
	% \break
	% \sectionLabel "Coda"
	% \repeat volta 1 {
	% 	\repeat percent 3 { c,4 g'4 c,4 g'4 | }
	% 	d4 a'4 d,4 g4 |
	% 	c,4 g'4 c,4 g'4 |
	% 	c,4 g'4-> c,4 r4 
	% }	
	% \bar "|."
}

chagPurim = \relative c, {
	\key c \minor	
	% \sectionLabel "Lick"
	% c4 c f8 8 4 | f4 4 c8 8 4 |
	% c4 c f8 8 4 | f4 g c, c4-> | \bar "||"

	% \break

	% \sectionLabel "Verse"
	c4-12 g'-2 c, g' | c,-12 e-23 g-2 c, |
	f4-12 c8-12 8 f4-12 c-12 | f-12 g-2 c,-12 g'-2 | \bar "||"

	\break

	% \sectionLabel "Chorus"
	c,4-12 c f8-12 8 4 | f4-12 4 c8-12 8 4 |
	c4-12 c f8-12 8 4 | f4-12 g-2 c,-12 c4-> | \bar "|."

	% \cueBox \markup \center-column {
	% 	\line { "then Lick, Verse, Chorus," }
	% 	\null
	% 	\line { "then Verse, Chorus," }
	% 	\null
	% 	\line { "then Lick, Verse, Chorus" }
	% }
}

shoshanat = \relative c, {	\key c \minor
	% \sectionLabel "Verse"
	\repeat volta 2 {
		c4-13 es-1 f-0 c | c-13 f-0 f aes-1 |
		c4-1 aes-1 f-0 c-13 | 
		aes'-1 g-12 c-1 c,-13 |
	}

	\break
	% \sectionLabel "Chorus"
	c4-13 e-2 f-0 c | f-0 c'-1 aes-1 f |
	c4-13 e-2 f-0 c | f-0 c'-1 aes-1 f |

	\break

	% \sectionLabel "Tag"
	\repeat volta 2 {
		c'-1 aes-1 es-1 f-0 | 
		g4-12 g4 aes4-1 aes |
		c-0 aes-1 es-1 f-0 | 
		g-12 g c,-13 c |
	} \bar "|."
}

veMordechai = \relative c, {
	\key c \minor
	% \sectionLabel "Lick"
	% \repeat volta 3 {
	% 	\repeat percent 2 { c4 g'8 c, c4 g'8 c, }
	% }

	% \break

	% \sectionLabel "Verse"
	\repeat volta 2 {
		c4-12 g'8-2 8 c,4 g' | g4-2 8 8 c,4-12 c8 e-23 |
		f4-12 8 8 c4-12 c | d4-2 8 8 g4-2 g8 b,-23 |
		\break
		c4-12 g'8-2 8 c,4 g' | g4-2 8 8 c,4-12 c8 e-23 |
		f4-12 8 8 g4-2 g | g4-2 g8 b,-23 c4-12 c |
	}
	\bar "||"
	\break

	% \sectionLabel "Chorus"
	\repeat volta 2 {
		c4-12 c8 e-23 f4-12 4 |
		bes,4-13 bes8 d-2 es4-0 8 d-2 |
		c4-12 8 8 f4-12 8 8 |
		\alternative {
			{ d4-2 4 g-2 g | }
			{ g4-2 d8-2 g-2 c,4-12 r4 }
		}
	}

	\bar "|."
}

shirHamasechot = \relative c {
	% \key c \major
	% \sectionLabel "Lick/Chorus"
	% \repeat volta 2 {
	% 	c4 g c a | 
	% 	\alternative {
	% 		{ d g, c g | }
	% 		{ d' g, c2\fermata | }
	% 	}
	% }

	% \break

	% \sectionLabel "Verse"
	\time 3/4
	\partial 4 r4 |
	\repeat unfold 2 {
		c2-0 g4-13 | c2\fermata r4 |
	}

	\break

	\sectionLabel "Chorus"
	\time 4/4
	\repeat volta 2 {
		c4-0 g-13 c a-12 | 
		d-12 g,-13 c-0 g |
		c4-0 g-13 c a-12 | 
		d-12 g,-13 c2-0\fermata |
	}
	\bar "|."

	% \cueBox \markup \center-column {
	% 	\line { "then Verse, Chorus; Verse, Chorus," }
	% 	\null
	% 	\line { "then Verse, Lick; Verse, Chorus," }
	% 	\null
	% 	\line { "then Verse, Chorus; Verse, Chorus," }
	% }
}

aniPurim = \relative c, {
	\key c \major
	% \sectionLabel "Lick"
	% \repeat volta 2 {
	% 	d4 g c, e | 
	% 	\alternative {
	% 		{ f4 g c, e }
	% 		{ f4 g c8 g c,4 }
	% 	}
	% }

	% \break

	% \sectionLabel "Verse"
	c4-13 e-2 a-2 c, | d-12 g-12 c,-13 g' |
	c4-1 c8 b-12 a4-2 c | d-0 g,-12 c8-1 g-12 c,4-13 |

	\break

	% \sectionLabel "Chorus"
	\repeat volta 1 {
		d4-12 g-12 c,-13 e-2 | 
		f4-0 g-12 c,-13 e-2 |
		d4-12 g-12 c,-13 e-2 | 
		f4-0 g-12 c8-1 g-12 c,4-13 \bar "|."
	}
}

drunkersTune = \relative c, {
	\key c \phrygian
	% \repeat volta 4 { c1 \numRepeats "x4" }

	% \mark #1
	\repeat percent 3 { c8-2 g'4-12 8 c,4-2 g'-12 | }
	c,8-2 g'4-12 8 c,4-2 bes8-12 c |

	\break

	\repeat volta 2 {
		f8-2 4 8 c4-2 f |
		c8-2 g'4-12 8 c,4-2 g' |
		bes,8-12 f'4-2 8 bes,4-12 f'-2 |
		c8-2 g'4-12 8 c,4 g' |
	}

	c,8-2 g'4-12 8 c,4 g' | \bar "||"
	\break

	% \mark #2
	\repeat percent 4 { es8-12 bes'4-0 8 es,4 bes'4 }
	\break

	\repeat volta 2 {
		f8-2 4 8 c4-2 f |
		c8-2 g'4-12 8 c,4-2 g' |
		bes,8-12 f'4-2 8 bes,4-12 f'-2 |
		c8-2 g'4-12 8 c,4 g' | \textEndMark "Fine"
	}
	c,8-2 g'4-12 8 c,4 g' | \bar "||" \textEndMark "D.C. al Fine"
}

\bookpart {
	\header {
	  title = "Neimat Hashikorim"
	  subtitle = "The Drunker's Tune"
	}
	\score {

		\new Staff {
			\clef "bass"
			\transpose c e \drunkersTune
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
			\transpose c f, \shirHamasechot
		}
	}
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
			\transpose c g \mischenichnas
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
			\transpose c d \chagPurim
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
			\transpose c d \veMordechai
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
