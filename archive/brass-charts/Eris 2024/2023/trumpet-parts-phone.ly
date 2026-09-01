\version "2.24.0"
\include "Phone.ly"

anthem = \relative c' {
	\lineNote "add-in one group at a time"
	\key f \minor
	\time 2/2
	\repeat volta 2 { bes2 r | 4 4 4 4 |  } 
	\repeat volta 2 { <bes e>2 r | 4 4 4 4 | } 
	\repeat volta 2 { <bes e f>2 r | 4 4 4 4 | } 
	\break
	\repeat volta 2 { <bes e f ges>2 r | 4 4 4 4 | } 
	\repeat volta 2 { 1~ 2 r }	
	\break

	\pageBreak
	\mark #1
	\lineNote "tubas start, melodies on cue"
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
	\lineNote "melodies unison with tubas"
	\repeat volta 2 {
		bes4. f'4. bes4 | r2 r4 bes4 |
		aes4.\finger1 f4. des4\finger23 | r2 r4 aes'4 |
		g4.\finger12 e4.\finger2 c4\finger13 | R1 |
		c2 des\finger23 | c aes\finger1 |
	}
	\numRepeats "x2"

	\pageBreak
	\mark #2
	\lineNote "tubas and midhorns start"
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
	\cueBox "melodies stop, then B 2x, then C"

	\mark #3
	\repeat volta 4 {
		c'4 8 bes8 aes g8 f |
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
		\line { "B, C, B, then A" }
	}
}

artemisia = \relative c' {
	\key d \minor
	\mark #1
	\lineLabel "Tubas start"
	\time 4/4
	\new CueVoice \relative c' {
		\cueClef "bass"
		a8 g f d des2 | e8 a e a
		\cueClefUnset
	}
	\repeat volta 4 {
		f8 e f a | d,2 f8 e f a |
		d,2 bes'4 g | \time 2/4 a2 
	} \break

	\sectionLabel "Drum Break"
	\time 6/8
	r4. r | r4 bes8 4 b8 |
	c4 g8 c4 g8 | c4 aes8 ges4. |
	\bar "||" 
	\pageBreak

	\key bes \minor
	\mark #2
	% \time 6/8
	\repeat volta 2 {	
		a4 bes8 c4 des8 | es4 des8 c4 a8 | bes4. r |
		\compressMMRests { R1*3/4*3 }

		c4 f8 es4 des8 | c4 bes8 c4 bes8 | a4. r |
		\compressMMRests { R1*3/4*3 }
		a4 bes8 c4 des8 | es4 des8 c4 a8 | bes4. r | \bar "||"

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
	\pageBreak

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

	\cueBox "A tutti, then end"
}

bookOfFive = \relative c' {
	\key d \minor
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
	\cueBox \markup \column { "A, then C " }
	\pageBreak

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
	\key es \major
	\lineNote "tubas and midhorns start, trumpets join with bottom voice"

	\mark #1
	\repeat volta 2 {
		r4 <f aes ces d>4-. 4-. 4-. |
		\repeat unfold 2 { <f aes ces d>4-. 4-. 4-. 4-. | }
		<f aes ces d>4-. 4-. <e g bes cis>4( <f aes ces d>-.) |
	}
	\numRepeats "x4"
	\break
	\cueBox \markup \column {
		\line { "melodies stop, then A, then B" }
	}

	\mark #2
	\lineNote "upper voice 2nd time only"
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
	\cueBox \markup \center-column {
		\line { "A 4x, then midhorns solo, then B 4x" }
		\null
		\line { "then midhorns solo, then B 4x, then tuba solo"}
		\null
		\line { "then B 4x, then A 8x, then fade out"}
	}
	\cueBox "Chorus, then C"

	\mark #3
	\lineNote "Lower voice 2nd time only"
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
	\cueBox "midhorns solo, then C, then Ending"

	\lineLabel "Ending Vamp"
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
	\lineNote "tubas and midhorns start"
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
	\lineNote "tubas start, melodies after 4x"
	\repeat volta 2 {
		gis8 4 8 r4 bes8 a8~ | a2 r2 |
		\textEndMark "x8"
	}
	a8 4 8 r2 |
	aes8 4 8 r2 |
	g8 4 8 r2 |
	f4 r4 \tuplet 3/2 { f8 fes8 e } d4 |
	\bar "|."
	\cueBox "A then Choir, then A, then B"

	% \sectionLabel "Chorus"
	% \clef "treble"
	% \relative c'' {
	% 	a8 a4 a8 r4 r8 g8~ | g2 r2 |
	% 	a8 a4 a8 r4 bes8( g8~ | g2) r2 |
	% 	bes8 4 8 r4 r8 g8~ | g2 r2 |
	% 	a8 a4 a8 r2 | a8 a4 a8 r2 |
	% 	\textEndMark "x4"
	% } \bar "||"

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
}

fantasma = \relative c'' {
	\time 4/4
	\key aes \major
	\mark #1
	\lineNote "melodies start molto lento"
	\repeat volta 2 {
		\partial 4 c4 |
		es2. c4 | aes2. c4 | 
		f4. es8 f8 es4 c8~ | c2 r4 c4 |

		es2. c4 | aes2. c4 | 
		bes4. aes8 bes8 aes4 f8~ | f2. \bar "" \break r8 f8 |

		f4. f8 aes4. 8 | f2 r4 c'4 | 
		bes4. aes8 bes8 aes4 f8~ | f2. r8 f8 |

		f4. 8 aes4. 8 | f2 
		es4 f4~ | f1 | r2.
	} r4

	\pageBreak

	\mark #2
	\lineNote "midhorns solo"
	\new CueVoice {
		\repeat volta 4 {
			r8 f16 16 f8 8 r8 f8 r4
		}
		\numRepeats \markup { \hspace #-3.5 "×4" }
	}
	\lineNote \markup { \hspace #2 "tutti" }
	\repeat volta 2 {
		\repeat percent 2 { f8 aes! a b f8 aes a b }
		e,4. e4. e4~ | e8 e4. e4 4 |
	}
	\break

	\repeat volta 2 {
		R1 * 2 |
		\repeat percent 2 { d8 f aes? b d,8 f aes b }
	}

	\lineNote \markup { \hspace #2 "tutti" }
	\repeat volta 2 {
		\repeat percent 2 { f8 aes! a b f8 aes a b }
		e,4. e4. e4~ | e8 e4. e4 4 |
	}

	\repeat unfold 4 { ces'8[ aes f] } ces' aes f4 |
	a8[ aes f] a8[ aes f] a4 |
	aes8[ f e] aes[ f e] f4 |
	\repeat volta 2 {
		f1~ | f2. f4 |
		\alternative { 
			{ e1~ | e2. e4 | }
			{ aes2. 4 | a1 }
		}
	} 

	\cueBox "B, then dissolve into chaos, then drums start A, then melodies join, then solo"
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

nigerianSpecial = \relative c'' {
	\lineNote \markup {"drums start, trumpets join" }
	\key f \major

	\repeat volta 2 {
			\partial 2. c8 f8 c2~ | \bar "||"
			c1 |
			r4 c8 f8 bes,2~ |
			bes1 |
			r4 c8 f8 a,2~ | \bar "||" \break

			a2. r4 |
			c8 16 16 r16[ g16 bes8] a4 r4 |
			g8 16 16 r16[ 16 8]
				bes8 16 16 r16[ 16 8]
			d4 
	}
	\cueBox "Drum Break"
}

pishTaco = \relative c {
	\numericTimeSignature
	\time 4/4 
	\key aes \major
	\tuplet 3/2 { g4 bes des }
	\hide TupletNumber
	\hide TupletBracket
	\repeat unfold 3 { \tuplet 3/2 { g,4 bes des } }
	\repeat unfold 3 { \tuplet 3/2 { e,4 g aes } } 
		\tuplet 3/2 { des bes aes } |
	\cueBox "cue: melody two, 2nd time"
	\undo \hide TupletNumber
	\undo \hide TupletBracket
	\time 3/6
	\repeat volta 8 { 
		\tuplet 3/2 { des bes aes } |
	}

	\time 2/2
	g2 r2 | aes2 r2 | c4\finger1 des\finger2 c bes | f'2 r2 |
	g,2 r2 | aes2 r2 | c4 des c bes | fis'2 r2 |
	\bar "|."
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
	\lineNote "tubas start, melodies join"
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

	\sectionLabel "Melody 2"
	\lineNote "tubas start, melodies join"
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

swarm = \relative c' \compressMMRests {
	\numericTimeSignature
	\mark #1
	\lineNote "melodies start"
	\time 6/8
	\repeat volta 2 {
		\repeat percent 2 { <fes aes c>8 8 8 } |
		\repeat percent 2 { <es g b!>8 8 8 } |
		\repeat percent 2 { <aes ces es>8 8 8 } |
		\repeat percent 2 { <es g bes>8 8 8 } |
		<des f beses>8 8 8 <c e! aes>8 8 8 |
	}
	\repeat volta 2 {
		r4. <fes aes c>4. |
		r4. <es g b!>4.
		r4. <aes ces es>4.
		r4. <es g bes>4.
		<des f beses>4. <c e! aes>4. |
	}
	\cueBox "Swarm!, then drums, then B"
	\pageBreak

	\mark #2
	\lineLabel "tubas start, then midhorns, then melodies"
	\time 5/4
	\repeat volta 2 {
		bes'2.~ bes2~ |
		bes2 r8 e es8 des c4 |
		des8 g,4 e'!8~ 8 es c2 |
	}
	\break
	\cueBox "tacet, then B then B2"
	\mark "B2"
	\repeat volta 4 {
		g4. bes4. aes4 c | bes4. des4. es4 c |
	}
	\numRepeats "x4"
	\repeat volta 4 {
		<bes des>8 8 8 8 r8 <c es>8 r2 | 
		<des fes>8 8 8 8 r8 <c es>8 8 8 4 |
	}
	\numRepeats "x6"

	\mark #3
	\time 4/4
	\lineNote "drums start, tubas join, then tutti"
	\repeat volta 4 {
		\tuplet 5/4 { <bes d>4 <f a> <des f> <a' cis> <ges bes>	} |
		\tuplet 5/4 { <es g>4 <c e> <bes d> <e! gis>2 }
		R1 * 2 
	}
	\numRepeats "x4"
	\repeat volta 4 {
		R1 * 3 |
		g4 4 4 4 |
	}

	\lineLabel "Transition"
	\repeat volta 5 { g,2 g2 }
	\numRepeats "×5"
	\bar "|."
	\cueBox \markup \column {
		\line { "B, then C, then Transition" \italic "ad nauseum"}
	}
}

thunderstomp = \relative c' {
	\mark #1
	\key f \minor
	\lineNote "drums start, tubas join, melodies join"
	\repeat volta 2 {
		\time 7/8
		e8[ aes?] b8[ aes] c[ b aes] | 
		e8[ aes] b8[ aes] g[ f des?] | 
		e4 aes8 g[ f] es[ des]  |
		c16[ des c8 bes8] c4 c'4 |
	}
	\textEndMark "x4"
	\break

	\mark #2
	\lineNote "tubas start, trumpets join after 2x"
	\time 11/8
	\repeat volta 2 {
		<c g'>4 4 <des aes'>4 8 <c g'>4 4 |
		\alternative {
			{
				<c g'>4 4 <g d'>4 8 <c g'>4 4 |
			}
			{
				<c g'>4 4 <g d'>4 8 <c g'>2\fermata |
			}
		}
	}
	\cueBox \markup \column {
		\line { "A × 4, B, then Drum Break, then C" }
	}
	\pageBreak


	\mark #3
	% \lineLabel "Tubas start"
	% \repeat volta 2 {
	% 	g4 g bes4. d4 d |
	% 	\alternative {
	% 		\volta 1 {
	% 			d4 d4 f,4. c'4 c |
	% 		}
	% 		\volta 2 {
	% 			\time 9/8
	% 			d4 d8[ e] f8[ e d] c4 |
	% 		}
	% 	}
	% }
	% d4 d8[ e] f8[ e d] c4 |
	% d4 d8[ e] f8[ e d] c4\fermata|
	% \time 3/4
	% d\fermata c\fermata a\fermata \bar "|."

	\key f \major
	\repeat volta 4 {
		g,4 bes8[ g] bes8[ d f] f8[ g a f] |
		a4 a8[ g] f8[ g a] g8[ f e c] |
		d4 d8[ e] d8[ e f] f8[ g a f] |
		\alternative {
			{
				a4 a8 bes c8[ bes a] g8[ f e c]
			}
			{
				\time 9/8
				a'4 a8[ bes] c8[ bes a] g4 |
			}
		}
	}
	a4 a8[ bes] c8[ bes a] g4 |
	a4 a8[ bes] c8[ bes a] g4\fermata |
	\time 3/4
	f4\fermata e\fermata c\fermata \bar "|."
	\cueBox "A, then B"
}

waltz = \relative c'' \compressMMRests {
	\key c \minor
	\time 3/4
	\mark #1
	\partial 2 g8 aes bes b
	\repeat volta 2 {
		c2. | g2 r4 |
		r4 es'8 d es d | f8 g es f d es |
		c4 r2 | R1*3/4 * 2
		r2 \tuplet 3/2 { c8 b! bes }
		
		aes2. | f2 r4 |
		f8 g aes g aes g | c4 bes aes |
		g4 r2 | R1*3/4*2
		\alternative {
			\volta 1 {
				r4 g8 aes bes b |
			}
			\volta 2 {
				r2 \tuplet 3/2 { aes8 g ges } |
			}
		}
	} \break

	\repeat percent 2 { f2 \tuplet 3/2 { aes8 g ges } }
	f2 g4 | aes4 g fis |
	g4 r2 | R1 *3/4 *2 |
		r2 \tuplet 3/2 { aes8 g ges } |

	\repeat percent 2 { f2 \tuplet 3/2 { aes8 g ges } }
	f2 g4 | aes4 g fis | \pageBreak
	\repeat volta 2 {
		g4 es c | g'2 r4 |
		f4 d b | aes'2 r4 | }

	g4 es c | aes' f d | 
	b'4 aes f | d'4 b aes |
	g'2.~ | g2.~ |
	g2.~ | g2.~ | \bar "|.-.|:"
	\cueBox "tuba solo, then A, then B"

	\break
	\mark #2
	\repeat volta 2 { 
		\repeat unfold 3 { es4. d8 es d | }
			es4. f8 es d | 
		es4 r2 | R1*3/4 *3 

		\repeat unfold 3 { d4. cis8 d cis | }
			d4. es8 d cis | 
		d4 r2 | R1*3/4 *3 
	}
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
			\transpose bes c' \anthem
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
			\transpose bes c' \artemisia
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
			\transpose bes c' \bookOfFive
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
			\transpose bes c' \chiasmus
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
			\transpose bes c' \dindin
		}
	}
}

\bookpart {
	\header {
	  title = "Fantasma"
	  composer = "Bruno"
	}
	\score {

		\new Staff {
			\clef "treble"
			\transpose bes c' \fantasma
		}
	}
}


% \bookpart {
% 	\header {
% 	  title = "Kallisti"
% 	  composer = "Missa anbd Kelly"
% 	}
% 	\score {

% 		\new Staff {
% 			\clef "treble"
% 			\kallisti
% 		}
% 	}
% }

\bookpart {
	\header {
	  title = "Onwu Ama Dike"
	  subtitle = "Nigerian Special"
	  % instrument = "Tuba"
	  composer = "St. Augustine & His Rovers"
	}
	\markup \vspace #1
	\score {

		\new Staff {
			\transpose bes c' \nigerianSpecial
		}
	}
}
% \bookpart {
% 	\header {
% 		title = "Pish Taco"
% 	}
% 	\score {
% 		\new Staff {
% 			\pishTaco
% 		}
% 	}
% }

% \bookpart {
% 	\header {
% 	  title = "Pterocarya"
% 	  composer = ""
% 	}
% 	\score {

% 		\new Staff {
% 			\clef "treble"
% 			\pterocarya
% 		}
% 	}
% }

\bookpart {
	\header {
	  title = "Sick-Legged Elephant"
	  composer = ""
	}
	\score {
		\new Staff {
			\clef "treble"
			\transpose bes c' \sickLeggedElephant
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
			\transpose bes c' \swarm
		}
	}
}

\bookpart {
	\header {
	  title = "(Summertime) Thunderstomp"
	  composer = "a.h. blum"
	}
	\score {
		\new Staff {
			\clef "treble"
			\transpose bes c' \thunderstomp
		}
	}
}

\bookpart {
	\header {
	  title = "(The Trickster's) Waltz"
	  composer = ""
	}
	\score {
		\new Staff {
			\clef "treble"
			\transpose bes c' \waltz
		}
	}
}

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

% \bookpart {
% 	\header {
% 	  title = "Please Let Go"
% 	  composer = "Eric W. Spinrad"
% 	}
% 	\score {

% 		\new Staff {
% 			\clef "treble"
% 			\pleaseLetGo
% 		}
% 	}
% }