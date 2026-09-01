\version "2.24.0"
\include "Global.ly"

anthem = \relative c' {
	\sectionLabel "Intro"
	\lineLabel "Add-in one group at a time"
	\time 4/4
	\repeat volta 2 { bes2 r | 4 4 4 4 |  } 
	\repeat volta 2 { <bes e>2 r | 4 4 4 4 | } 
	\repeat volta 2 { <bes e f>2 r | 4 4 4 4 | } 
	\break
	\repeat volta 2 { <bes e f ges>2 r | 4 4 4 4 | } 
	\repeat volta 2 { 1~ 2 r }	
	\break

	\mark #1
	\lineLabel "Highhorns on cue"
	% \time 4/4
	\repeat volta 2 {
		\repeat unfold 2 {
			r4 <f' bes des>8 8 r4 8 8 |
		}
		\repeat unfold 2 {
			r4 <f aes des>8 8 r4 8 8 |
		}
		\repeat unfold 2 {
			r4 <e g c>8 8 r4 8 8 |
		}
		<e g c>2 <e g des'> | 
		<f aes c>2 <fis a des> |
	}
	\break
	\cueBox "Cue for B: Highhorns unison with Tubas for 2x"

	\mark #2
	\lineLabel "Tubas and Midhorns start"
	\time 3,2,2 7/8 
	\repeat volta 2 {
		bes8 8 8 aes8 g8 4 |
		aes8 8 8 g8 f8 e4 |
		g8 8 8 f8 e8 des8 c8 |
		\alternative {
			{ c8 des bes c8 des e8 f | }
			{ c8 des bes c4     r4 | }
		}
	}
	\break
	\cueBox "Cue for C: Highhorns stop, then play 2x"

	\mark #3
	\repeat volta 4 {
		c4 8 bes8 aes g8 f |
		bes4 8 aes8 g f8 e |
		aes4 8 g8   f e8 f |
		g4. r4 r |
	
		aes4 8 g8 f e8 f |
		g4 8 f8 e des8 c |
		\alternative {
			{ f4 8 e8 f e8 f | e4. r4 r | }
			{ f4 8 e8 f e8 des | c4. r4 r | }
		}
	}
	\bar "||"
	\cueBox \markup \column {
		\line { "1st x after C: go back to B" }
		\null
		\line { "2nd x after C: play B groove 4x then A or end" }
	}
}

artemisia = \relative c' {
	\key d \minor
	\mark #1
	\lineLabel "Tubas start"
	\time 4/4
	\new CueVoice \relative c {
		\cueClef "bass"
		d2 bes'4 g | a2
		\cueClefUnset
	}
	\repeat volta 4 {
		f8 e f a | d,2 f8 e f a |
		d,2 bes'4 g | \time 2/4 a2 
	}
	\break

	\sectionLabel "Drum Break"
	\time 6/8
	r4. r | r4 bes8 4 b8 |
	c4 g8 c4 g8 | c4 aes8 ges4. |
	\bar "||"
	\key bes \minor
	\mark #2
	% \time 6/8
	\repeat volta 2 {	
		a4 bes8 c4 des8 | es4 des8 c4 a8 | bes4. r |
		R2. | R2. | R2. | 

		c4 f8 es4 des8 | c4 bes8 c4 bes8 | a4. r |
		R2. | R2. | R2. | 
		a4 bes8 c4 des8 | es4 des8 c4 a8 | bes4. r | \break

		r4. c | r4. des | r4. es |
		r4. c8 8 8 | r4. des8 8 8 | r4. es8 8 8 |

		\alternative {
			\volta 1 { f,4 8 ges4 8 | f4. r | }
			\volta 2 { 
				\time 9/8 f4 f8 ges4 8 a4 8 |
				\time 6/8 bes4. des
			}
		}
	}
	\break

	\mark #3
	\key c \minor
	\repeat volta 2 {
		f4.~ 4 g8 | aes4 g8 f4. |
		f4 c8 f4 g8 | aes2. |

		c,4.~ 4 d8 | es4 d8 c4. |
		c4 g8 es'4 d8 | c2. |
		\break
		\repeat unfold 2 { <c, f aes>2. | <f aes c> | }
		<c es g>2. | <es g c> |
		<c es g>2. |
		\alternative {
			{ <es g c> | }
			{ c'2. }
		}
	}
	\override TextSpanner.bound-details.left.text = "ritardando"
	b2._\startTextSpan | bes | g\fermata\stopTextSpan |
	\break

	\sectionLabel "Descent to End"
	\repeat volta 2 {
		\time 4/2	ges2 d ges bes |
		\time 5/2	a2 g! cis, des cis |
		\time 4/2 	g'2 d bes g |

		\alternative {
			{ \ottava #-1 e1~ e1 | }
			{ f1~ f1 | \ottava #0 }
		}
	}
	\bar "||"
	\break

	\mark #1
	\time 4/4
	{
		r2 f'8 e f a | d,2 f8 e f a |
		d,2 bes'4 g |
	} \bar "||"
	a1
	\bar "|."
}

bookOfFive = \relative c' {
	\key d \minor
	\sectionLabel "Intro"
	\repeat volta 2 {
		d4 r8 d16 e f4 e8 f |
		g8 a bes cis d4 r4 |
		d,4 r8 d16 e f4 e8 f |
		\alternative {
			{ e4 es d r | }
			{ \time 2/4 e4 es | }
		}
	}
	\break

	\mark #1
	\time 4/4
	\repeat volta 2 {
		d'2 a2 | a8 g a bes a8 g a bes | 
		d2 g,2 | g8 f e f d2 |
		% \textEndMark "x2"
	}
	\break
	\repeat volta 2 {
		d'8 8 8 a d8 d d a | a8 g a bes a8 g a bes | 
		d8 8 8 a d8 d d a | g8 f e f d2 |
		% \textEndMark "x2"
	}
	\break
	\cueBox \markup \column {
		\line { "1st time to B" }
		\null
		\line { "2nd time to C" }
	}

	\mark #2
	\repeat volta 2 {
		d8. a'8. g8 g8. bes8. a8 | a8. g8. d8 a' 4 r |
		d,8. a'8. g8 bes8. a8. g8 | a8. g8. cis ,8 d4 r |
		\textEndMark "x4"
	}
	% \repeat volta 2 {
	% 	d4 r8 d16 e f4 e8 f |
	% 	g8 a bes cis d4 r4 |
	% 	d,4 r8 d16 e f4 e8 f |
	% 	e4 es d4 r4 |
	% }
	\break

	\sectionLabel "Drum Break!"
	\repeat volta 8 {
		R1 | r2 r8. d16 8 8
	}
	\repeat volta 8 {
		r2 r8. <d f>16 8 8
	}
	\repeat volta 4 {
		r8. <d f a>16 8 8 r8. <d f a>16 8 8 |
	}
	R1 | r2 r8. d16 8 8 \bar "||"

	d4 r8 d16 e f4 e8 f |
	\time 2/4 g8 a bes cis
	% \bar "||"
	\break
	\cueBox "to A"

	\mark #3
	\time 4/4
	\repeat volta 2 {
		<d, f>4. 8 <bes' d>4. 8 |
		<a cis>4. 8 8 8 8 8 |
		<d, f>4. 8 <e g>4. 8 |
		<f a>4. 8 8 8 8 8 |
	}
	\break
	\sectionLabel "Transition"
	<e g>4. 8 <f a>4. 8 |
	<g bes>4. 8 8 8 8 8 |
	<f a>4. 8 <g bes>4. 8 |
	<a cis>8. 8. 8 8. 8. 8 |
	<a cis>8. 8. 8 4 4 |
	\break

	\sectionLabel "Breakdown"
	\time 2/4
	\repeat volta 4 {
		a8. g8. f8 | d8. 8. 8 | d8. 8. 8 |
		\textEndMark "x4"
	}
	\repeat volta 4 {
		a'8. g8. f8 | d8 r8 r4 | R2 |
		\textEndMark "x4"
	}
	a'8. g8. f8 | d8 r8 r4 \bar "|."
}

chiasmus = \relative c' {
	\key bes \minor
	\lineLabel "Tubas and midhorns start"
	\repeat volta 4 { R1 * 4 | }
	\textEndMark "x4"
	\break

	\mark #1
	\lineLabel "Reeds 8va"
	\repeat volta 2 {
		r4 <f aes>4-. 4-. 4-. |
		\repeat unfold 2 { <f aes>4-. 4-. 4-. 4-. | }
		<f aes>4-. 4-. <e g>4( <f aes>-.) |
	}
	\textEndMark "x4"
	\break
	\cueBox \markup \column {
		\line { "Tubas, then A again" }
	}

	\mark #2
	\lineLabel "Upper voice 2nd time only"
	<<
		\repeat volta 2 \relative c' {
			d4 f f es | ges f es4 r |
			ces4 es es d | 
			\alternative {
				\volta 1,2,3 { f es ces e | }
				\volta 4 { f es d ces | }
			}
		}
		\repeat volta 2 \relative c' {
			f4 aes4 4 ges | bes aes ges4 r |
			es4 ges4 4 f | 
			\alternative {
				\volta 1,2,3 { aes ges es ges | }
				\volta 4 { aes ges f es | }
			}
		}
	>>
	\break
	\cueBox "A 4x"

	\sectionLabel "Midhorn melody"
	\repeat volta 4 { R1 * 4 }
	\textEndMark "x4"
	\break

	\bar "||"
	\break
	\cueBox \markup \column {
		\line { "B, then Midhorns, then B" }
	}

	\sectionLabel "Tuba break"
	\repeat volta 4 { R1 * 4 }
	\textEndMark "x4"
	\break
	\cueBox "B1"

	\sectionLabel "A harmonies"
	\lineLabel "Add voices one at a time"
	\repeat volta 2 {
		r4 <f aes ces d>4-. 4-. 4-. |
		\repeat unfold 2 { <f aes ces d>4-. 4-. 4-. 4-. | }
		<f aes ces d>4-. 4-. <e g bes cis>4( <f aes ces d>-.) |
	}
	\textEndMark "x8"
	\cueBox "Chorus"

	\lineLabel "Lower voice 2nd time only"
	r2 
	\partCombine
	\repeat volta 2 \relative c' {
		\tuplet 3/2 { r4 f4 f }
		\tuplet 3/2 { f es f } \tuplet 3/2 { ges f es } |
		c2 \tuplet 3/2 { c4~ 4 4 } |
		aes2 c2 | 
		\break

		d2 \tuplet 3/2 { r4 f f } |
		\tuplet 3/2 { f4 es f } aes2 |
		\tuplet 3/2 { aes4 bes aes} f2 |
		\tuplet 3/2 { f4 ges f } \tuplet 3/2 { es4 d es } |
		d2 
	}
	\repeat volta 2 \relative c' {
		\tuplet 3/2 { r4 d4 d }
		\tuplet 3/2 { d ces d } \tuplet 3/2 { es d c } |
		aes2 \tuplet 3/2 { aes4~ 4 4 } |
		f2 aes2 | 

		bes2 \tuplet 3/2 { r4 d d } |
		\tuplet 3/2 { d4 ces d } es2 |
		\tuplet 3/2 { f4 es f } aes2 |
		\tuplet 3/2 { aes4 bes aes } \tuplet 3/2 { aes f ges } |
		f2 
	}
	r2 |
	\break
	\cueBox "Midhorns, then again with Lower voice"

	\repeat volta 2 { R1 * 4 }
	\repeat volta 2 {
		r2 <bes d f bes>4 r |
		r2 <ces es ges ces>4 r |
		r2 <aes c! es aes>4 r |
		<c f a c>4 r <aes c! es ces'>2\laissezVibrer
	}
}

dindin = \relative c'' {
	\key d \minor
	\mark #1
	\lineLabel "Tubas start"
	\repeat volta 2 {
		\transpose c bes \relative c' {
			b8 g4 a8~ 8 b g4~ | g2 r8 e e d |
			b'8 g4 a8~ 8 b g8 a | b8 g a4 r2 |
			r8 c a b g8 a fis a | g8 fis4. r8 b, c b |
			c8 d e fis r8 b, c d | e8 fis g b a4 r |
		}
	}
	\break

	\mark #2
	\lineLabel "Tubas"
	\repeat volta 4 { R1 * 2 }
	\textEndMark "x4"
	\repeat volta 2 {
		gis8 4 8 r4 bes8 a8~ | a2 r2 |
		\textEndMark "x8"
	}
	a8 4 8 r2 |
	aes8 4 8 r2 |
	g8 4 8 r2 |
	f4 r4 \tuplet 3/2 { f8 fes8 e } d4 |
	\textEndMark "Fine"
	\bar "|."
	\cueBox "A then Chorus"

	\sectionLabel "Chorus"
	\clef "treble"
	\relative c'' {
		a8 a4 a8 r4 r8 g8~ | g2 r2 |
		a8 a4 a8 r4 bes8( g8~ | g2) r2 |
		bes8 4 8 r4 r8 g8~ | g2 r2 |
		a8 a4 a8 r2 | a8 a4 a8 r2 |
		\textEndMark "x4"
	} \bar "||"

	% \lineLabel "Trumpets solo"
	% \new CueVoice {
	% 	\transpose e d
	% 	\relative c'' {
	% 		b8 g4 a8~ 8 b g4~ | g2 r8 e e d |
	% 		b'8 g4 a8~ 8 b g8 a | b8 g a4 r2 |
	% 		r8 c a b g8 a fis a | g8 fis4. r8 b, c b |
	% 		c8 d e fis r8 b, c d | e8 fis g b a4 r |
	% 	}
	% } \bar "||"
	\cueBox "A Highhorn solo, then A tutti, then B"
}

fiercely = \relative c' {
	\key d \minor
	\time 3/4
	\lineLabel "Tubas 1 start, 2s on repeat"
	\repeat volta 2 {
		\repeat percent 4 {
			<< { d4 4 4 | } \\
				{ a4 4 4 | } >>
		}
	}
	\repeat volta 2 {
		\repeat percent 4 {
			<< { c4 4 4 | } \\
				{ f,4 4 4 | } >>
		}
	}
	\repeat volta 2 {
		\repeat percent 4 {
			<< { bes4 4 4 | } \\
				{ bes,4 4 4 | } >>
		}
	}
	\repeat volta 2 {
		\repeat percent 4 {
			<< { d4 4 4 | } \\
				{ g4 4 4 | } >>
		}
	}
	\textEndMark "x5"
	\lineLabel "Midhorns solo"
	\new CueVoice {
		d'2.~ 2. |
	}
	\bar "|."
}

kallisti = \relative c' {
	\key a \minor
	\mark #1
	\repeat volta 2 {
		\time 4/4 
		a4. c8 e4. g8 |
		e4 d c e |
		a,4. c8 e4. g8 |
		\time 5/4 
		e4 d c e c'8 b |

		\time 4/4 
		a4. c8 a4. e8 |
		\time 6/4
		g4 a4 d,4~ d8 c8 e2 |
		\time 4/4
		g4. c,8 e4. d8 |
		d4 c a2 |
	}
	% \bar "||"
	\break
	\time 2/4
	 b2 |

	\time 4/4
	c8. d16~ d8 e8 c4 b |
	\mark #2
	\repeat volta 2 {
		\stemUp a'8. gis16~ 8 a d4 e |
		\stemDown a8. e16~ 8 f d4 e |

		\stemUp a,8. gis16~ 8 a
			\stemDown e'8. f16~ 8 d |
		\stemNeutral e8. c16~ 8 b a2 |

		\break
		\stemUp a8. a16~ 8 e a4 e |
		\stemDown d'8. e16~ 8 f8 d4 e |

		\stemUp f8. d16~ 8 e8 
			\stemDown c8. d16~ d8 e8 |
		\stemNeutral c8. b16~ 8 g e'2 |
		\bar "||"
		\break

		\stemUp e8. e16~ 8 d8 f4 d |
		\stemDown e8 f d8 e c8 d b8 c |

		\stemUp e8. e16~ 8 e f4 a |
		\stemDown a8 gis a e f8 d a' gis |

		\stemUp e8. e16~ 8 f8 d4 c |
		\stemNeutral a8. a16~ 8 a8 gis8. 16~ 8 8|

		a2 b |
		c8. d16~ 8 e c4 b4 |
	}
	\break

	\lineLabel "Drum Break"
	\repeat volta 2 { 
		R1 R1 
		\lineLabel "Last time only"
		a2 b | c8. d16~ 8 e c4 b4 | }
	\textEndMark "x2-6"
	\cueBox "B 1x, then A"
	% \bar "||"

	% c8. b16~ 8 gis a2 |	
}

pleaseLetGo = \relative c'' {
	\lineLabel "Tubas start"
	\repeat volta 2 {
		\repeat percent 4 { g4. 8 d4 f | }
	}
	\break

	\mark #1
	\repeat volta 2 {
		\repeat percent 4 { g4. 8 d4 f | }
		\repeat percent 4 { d4. 8 a4 c | }
	}
	\break

	\mark #2
	\repeat volta 2 {
		\repeat percent 4 { g'8. c,8. d8 bes4 a | }
		a'2 f2 | d1 |
		a'2 f2 | d1 |
	}
	\textEndMark "x3"
	\break
	\cueBox "A, then Drum Break"

	% \sectionLabel "pre-C"
	\lineLabel "Drum Break"
	g4. 8 d4 f | R1 * 3 |
	\bar "||"
	\break
	\lineLabel "Midhorns"
	\new CueVoice \relative c' {
		g16 16 16 16 r8 g16 16 g16 g8. g4 |
		f16 16 16 16 r8 f16 16 f16 f8. a4 |
		g16 16 16 16 r8 g16 16 g16 g8. g4 |
		f16 16 16 16 r8 e16 16 e16 e8. d4 |
	}
	r4. g16 16 8     d8 4   |
	r4. f16 16 16 16 c8 8 e |
	<<
		\repeat volta 2 {
			r4. g16 16 16 16 d8 8 f |
			r4. f16 16 8     c8 8 e |
			r4. g16 16 16 16 d8 4   |
			r4. f16 16 16 16 c8 8 e |
			r4. g16 16 8     d8 4   |
			r4. f16 16 16 16 c8 8 e |
		}
		\repeat volta 2 {
			\lineLabel "C1, D2"
			s1 * 2 |
			\lineLabel "D1, C3"
			s1 |  s1 |
			\lineLabel "C2"
			s1 * 2 |
		}
	>>
	\textEndMark "x8"
	\break

	r4. g16 16 16 16 d8 8 f | R1 |
	\bar "|."
	% \cueBox 
	% \markup \column {
	% 	\line { "C1+D1+C2+D2+C3 = 14+8+14+8+4 = 48 mm" }
	% 	\line { "Bassline x 8 = 48 mm"}
	% }
}

pterocarya = \relative c' {
	\key d \minor
	\mark #1
	\repeat volta 2 {
		\new CueVoice {
			\cueClef "bass"
			\partial 8 a8 |
			f4 r8 f8 e4 r8 d8 | gis,4( a4) r2 |
			\cueClefUnset
		}
		% a''8 bes a bes a bes a bes | f'4 e4 r2 |
		r4 <g''' bes>4:8 r4 <g bes>4 |
		r4 <g bes>4:8 r4 <g bes>4 |
		\repeat percent 2 { 
			\repeat unfold 4 { e4:8 }
		}
		\repeat unfold 4 { d4:8 }
		d1 |

	} \bar "||"
	\break

	\mark #2
	\repeat volta 2 {
		\repeat percent 2 { a8 d, e d a'8 d, e d }
		a'2~ a4. f8 | e2 r2 |
		\repeat unfold 2 { e8 f e f  } | 
		<< { e8 f g a g8 f e d | } \\
		 { e4:8 e4:8 e4:8 e4:8 } >>
		 d2~ d4. c8 |  a2 r |
	}

	% \repeat volta 2 {
	% 	d'2~ d4. c16 bes |
	% 	a2. r8 g |
	% 	a4. bes8 a8 g d g |
	% 	a2 r2 |

	% 	c2~ c4. bes16 a |
	% 	\alternative {
	% 		{ g2. r8 a8 |
	% 			d4. c8 d8 c a c |
	% 			d2 r2 |	}	
	% 		{ g,4 r d'4. e8 |
	% 			f4. e8 f8 e f e |
	% 			d1  |	}	
	% 	}
	% }

	\break
	\mark #3
	\repeat volta 4 {
		e'1 | f | d | c |
		e2~ 4. d8 | f2~ 4. e8 | c2~ 4. bes8 | a1 |
	}
	\break
	\cueBox "1st time C 1x, 2nd time C 4x"

	\mark #4
	\repeat volta 2 {
		c2 r8 a'   g f | des2 r8 a' g f |
		g2 r8 a g f |
		g4 c8 a g8 f e8 d | 
	}
	\break
	\repeat unfold 2 { g2 r8 c bes f | a1 | }
	g2 r8 c bes f |
	a2 r4   c8 bes | a4 r8 c8 g4 r8 c8 | f,4 r4 r4.

	\bar "|." 
}

sickLeggedElephant = \relative c'' {
	\key bes \minor
	\sectionLabel "Melody 1"
	\time 8/4
	\repeat volta 2 {
		\partial 4 r4 |
		r4 \tuplet 3/2 { bes8 a aes } 
			\tuplet 3/2 { g4 4 4 }
			\tuplet 3/2 { ges4 4 4 }
			\tuplet 3/2 { bes4 4 4 }
		\time 6/4
		r8 e,8 f4 ges f4 r  
	}
	\break

	\sectionLabel "Melody 1"
	\repeat volta 2 {
		\partial 4 r4 |
		\time 8/4
		r8 bes, \tuplet 3/2 { des8 bes des}
			f4~ <f bes>~ 8~ <f bes des>4. 
			\tuplet 3/2 { <f bes des>4 4 4 }

		\time 6/4
		\repeat unfold 2 {
			<f bes des>8[ <bes d f>]
			\tuplet 3/2 { <a des fes>8 <aes c es> <g b d> }
		}
		\tuplet 3/2 { <ges bes des>4 8 }
	}
	\break

	\sectionLabel "Fanfare"
	\repeat volta 2 {
		\partial 4 <f bes des>4
		\time 8/4
		<aes des f>8 <f bes des> r8 <aes des f>
		<f bes des>4 <aes des f>8 <g c e>8~ 2. <f bes des>4 |
		\time 6/4
		<aes des f>8 <f bes des> r8 <f aes c>8 
			<fes ges bes>4 <es f a> r 
	}
}

swarm = \relative c' {
	\mark #1
	\lineLabel "Melodies start, Tuba after 1x"
	\time 6/8
	\repeat volta 2 {
		f8 r r c[ r f] | e8 r r g4. |
		aes8 r r es[ r aes] | es8 r r r[ es d] |
		des4. c4 e!8 |
	}
	\break
	\cueBox "Cue for Swarm: drumroll"
	\cueBox "Swarm!"
	
	\mark #2
	\lineLabel "Tubas start"
	\time 5/4
	\repeat volta 2 {
		g4 g8 bes~ bes8 a8~ a8 a8 c4 |
		bes4 bes8 des~ des4 r c |
		bes8 bes4 g8~ g8 c c4 f,8 fis |
	}
	\break
	\cueBox "Cue for B2: Melodies 2nd time"
	\mark "B2"
	\repeat volta 8 {
		g4. bes4. aes4 c | bes4. des4. es4 c |
	}
	\break
	r2. r2 | r2. r2 | r2. r2 | r2. r2 |
	\bar "||"

	\break
	\lineLabel "Drum Break"
	\time 4/4
	R1 * 6
	f,2 f2 | f4 4 4 4 |

	\break
	\mark #4
	% \time 4/4
	\repeat volta 2 {
		\repeat percent 2 { f4 b!8 8 f4 b | }
	}
	\repeat volta 4 {
		f4 b!8 8 f4 b |
		f4 b!8 8 f4 b |
		f4 b!8 8 f4 b |
		\alternative {
			\volta 1,2,3 {
				f4 b!8 8 f4 b |
			}
			\volta 4 {
				f4 b!8 8 f4 fis |
			}
		}
	}
	\break
	\repeat volta 4 {
		g4 cis!8 8 g4 cis |
		g4 cis!8 8 g4 cis |
		g4 cis!8 8 g4 cis |
		\alternative {
			\volta 1,2,3 {
				g4 cis!8 8 g4 cis |
			}
			\volta 4 {
				g4 cis!8 8 g4 ges |
			}
		}
	} \bar "||"
	\break

	\sectionLabel "Transition"
	\repeat unfold 5 { g4 r g r }
	\bar "|."
	\cueBox \markup \column {
		\line { "1st time to B" }
		\null
		\line { "2nd time Transition ad nauseum"}
	}
}

thunderstomp = \relative c' {
	\mark #1
	\key a \minor
	\lineLabel "Drums start"
	\repeat volta 2 {
		\time 7/8
		% e4 aes4 g8[ e c] | e4 aes4 f8[ a! f] | 
		% e8[ f <f aes>] g[ f] es[ des] |
		% bes8[ des bes] c4 c4 |
		e4 4 c!4. | e4 4 c!4. |
		e4. cis!4 4 | bes4. c! 4 c' |
	}
	\textEndMark "x4"
	\break

	\mark #2
	\lineLabel "Tubas start"
	\time 11/8
	\repeat volta 4 {
		<c g'>4 4 <des g aes>4 8 <c g'>4 4 |
		\alternative {
			\volta 1,2,3 {
				<c g'>4 4 <g d'>4 8 <c g'>4 4 |
			}
			\volta 4 {
				<c g'>4 4 <g d'>4 8 <c g'>2\fermata |
			}
		}
	}
	\break
	\cueBox \markup \column {
		\line { "1st time to A" }
		\null
		\line { "2nd time to Drum Break"}
		\null
		\line { "3rd time end"}
	}

	\lineLabel "Drum Break"
	\repeat volta 2 { 
		r1 r4. | r1 r4. | r1 r4. | r1 r4. |
	}

	\break


	\mark #3
	\lineLabel "Tubas start"
	\repeat volta 2 {
		g4 g bes4. d4 d |
		\alternative {
			\volta 1 {
				d4 d4 f,4. c'4 c |
			}
			\volta 2 {
				\time 9/8
				d4 d8[ e] f8[ e d] c4 |
			}
		}
	}
	d4 d8[ e] f8[ e d] c4 |
	d4 d8[ e] f8[ e d] c4\fermata|
	\time 3/4
	d\fermata c\fermata a\fermata \bar "|."

	% \repeat volta 2 {
	% 	g4 bes8 g bes8[ d f] f8[ g a f] |
	% 	a4 a8 g f8[ g a] g8[ f e c] |
	% 	d4 d8 e d8[ e f] f8[ g a f] |
	% 	\alternative {
	% 		\volta 1 {
	% 			a4 a8 b c8[ b a] g8[ f e c]
	% 		}
	% 		\volta 2 {
	% 			\time 9/8
	% 			a'4 a8[ b] c8[ b a] g4 |
	% 		}
	% 	}
	% }
	% a4 a8[ b] c8[ b a] g4 |
	% a4 a8[ b] c8[ b a] g4 |
	% \time 3/4
	% f4 e c \bar "|."
}

waltz = \relative c' {
	\key c \minor
	\time 3/4
	\sectionLabel "Intro"
	\lineLabel "Tubas start"
	\repeat volta 4 {
		c2 r4 | g2 r4 |
		c2 r4 | g4 a! b! |
	}
	\textEndMark "x4"
	\break

	\repeat volta 2 {
		c2 r4 | g2 r4 |
		c2 r4 | g4 a! b! |
		c2 r4 | g2 r4 |
		c2 r4 | c4 bes aes |
		
		f2 r4 | aes2 r4 |
		f2 r4 | f4 aes b! |
		c2 r4 | g2 r4 |
		\alternative {
			\volta 1 {
				c2 r4 | g4 a! b! |
			}
			\volta 2 {
				c2 r4 | c4 bes aes |
			}
		}
	}
	\bar "||"
	\break

	f2 r4 | f2 r4 |
	f2 r4 | f4 aes b! |
	c4 r r | g4 r r |
	c4 r r | c4 bes aes |
	\break

	f2 r4 | f2 r4 | 
	f2 r4 | f2 r4 |
	c'4 r r | c2 r4 |
	g4 r r | g2 r4 |

	c4 r r | c2 r4 |
	g4 r r | g2 r4 |
	c2. | b!2. |
	bes2. | aes2. |
	g2. | f2. |
	e2. | d2. |
	\bar "|."

	\cueBox "da capo"
}

\bookpart {
	\header {
	  title = "Anthem for Eris"
	  composer = "J.R. HANKINS"
	  % Hankins was in the NYC based Hungry March Band
	}
	\score {

		\new Staff {
			\clef "treble"
			\anthem
		}
	}
}

\bookpart {
	\header {
	  title = "Artemisia"
	  subtitle = "the Small-Headed Gopher"
	  composer = "erin bell"
	}
	\score {

		\new Staff {
			\clef "treble"
			\artemisia
		}
	}
}

\bookpart {
	\header {
	  title = "Book of Five"
	  composer = "john gerken"
	}
	\score {

		\new Staff {
			\clef "treble"
			\bookOfFive
		}
	}
}

\bookpart {
	\header {
	  title = "Chiasmus"
	  composer = "L. Lou"
	}
	\score {

		\new Staff {
			\clef "treble"
			\chiasmus
		}
	}
}

\bookpart {
	\header {
	  title = "Dindin"
	  composer = \markup { \concat { \note {8} #1 "R" } }
	}
	\score {

		\new Staff {
			\clef "treble"
			\dindin
		}
	}
}

\bookpart {
	\header {
	  title = "Kallisti"
	  composer = "Missa anbd Kelly"
	}
	\score {

		\new Staff {
			\clef "treble"
			\kallisti
		}
	}
}

\bookpart {
	\header {
	  title = "Pterocarya"
	  composer = ""
	}
	\score {

		\new Staff {
			\clef "treble"
			\pterocarya
		}
	}
}

\bookpart {
	\header {
	  title = "Sick-Legged Elephant"
	  composer = ""
	}
	\score {
		\new Staff {
			\clef "treble"
			\sickLeggedElephant
		}
	}
}

\bookpart {
	\header {
	  title = "Swarm"
	  composer = "p.f."
	}
	\score {
		\new Staff {
			\clef "treble"
			\swarm
		}
	}
}

% \bookpart {
% 	\header {
% 	  title = "(Summertime) Thunderstomp"
% 	  composer = "a.h. blum"
% 	}
% 	\score {
% 		\new Staff {
% 			\clef "treble"
% 			\thunderstomp
% 		}
% 	}
% }

% \bookpart {
% 	\header {
% 	  title = "(The Trickster's) Waltz"
% 	  composer = ""
% 	}
% 	\score {
% 		\new Staff {
% 			\clef "treble"
% 			\waltz
% 		}
% 	}
% }

% \bookpart {
% 	\header {
% 	  title = "Fiercely; as at night"
% 	  composer = ""
% 	}
% 	\score {

% 		\new Staff {
% 			\clef "treble"
% 			\fiercely
% 		}
% 	}
% }

\bookpart {
	\header {
	  title = "Please Let Go"
	  composer = "Eric W. Spinrad"
	}
	\score {

		\new Staff {
			\clef "treble"
			\pleaseLetGo
		}
	}
}