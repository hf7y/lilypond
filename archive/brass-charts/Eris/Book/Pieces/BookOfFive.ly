\version "2.24.0"
\include "../Global.ly"
tubaUni = {}
tubaSim = {}

bookOfFive-title-markup = \header {
  title = "Book of Five"
  composer = "john gerken"
}
trumpetI = \relative c' {
	\repeat volta 2 {
		d4 r8 d16 e f4 e8 f |
		g8 a bes cis d4 r4 |
		d,4 r8 d16 e f4 e8 f |
		\alternative {
			{ e4 es d r | }
			{ \time 2/4 e4 es | }
		}
	}
}

tubaI = \relative c, {
	\repeat volta 1 {
		\volta #'() {
			\repeat volta 2 {
				s1 * 3
				\alternative {
					{ s1 }
					{ \time 2/4 s2 }
				}
			}
		}
		\volta 1 \unfolded {
			\repeat volta 2 {
				d4 r8 d16 e f4 e8 f |
				g8 a bes cis d4 r4 |
				d,4 r8 d16 e f4 e8 f |
				\alternative {
					{ e4 es d r | }
					{ \time 2/4 e4 es | }
				}
			}
		}
	}
}

trumpetA = \relative c'' {
	\time 4/4
	\repeat volta 2 {
		d2 a2 | a8 g a bes a g a bes |
		d2 g,2 | g8 f e f d2 | 
	}
	\repeat volta 2 {
		d'8 8 8 a d8 8 8 a | a8 g a bes a g a bes |
		d8 8 8 g, d'8 8 8 g, | g8 f e f d2 |  
	}
}
tubaA = \relative c, {
	\time 4/4
	\repeat volta 2 {
		d8. f8. a8 d,8. f8. a8 |
		d,8. f8. a8 a8. a8 16 bes8 |
		d,8. f8. a8 d,8. f8. a8 |
		d,8. f8. a8 a8 g f e |
	}
	\repeat volta 2 {
		s1 * 4
	}
}

trumpetB = \relative c' {
	\repeat volta 4 {
		d8. a'8. g8 g8. bes8. a8 |
		a8. g8. f8 a4 r |
		d,8. a'8. g8 g8. bes8. a8 |
		a8. g8. cis,?8 d4 r |
	}
}

tubaB = \relative c, {
	\repeat volta 4 {
		<<
			\volta #'() {
				\override TextSpanner.bound-details.right.text =
					\markup { \draw-line #'(0 . 1) }
				\override TextSpanner.bound-details.left.text =
		          "3rd & 4th times only"
		        s4*6_\startTextSpan s2\stopTextSpan
		        s4*6_\startTextSpan s2\stopTextSpan
			}
			\volta 1,2 \unfolded {
				\repeat unfold 2 {
					R1 | r2 r8. 
						<<
							{ <d f a d>16 8 8 } \\
							{ d,16 8 8 }
						>>
				}
			}
			\volta 3,4 {
				d'4 r8 d16 e f4 e8 f |
				g8 a bes cis d8. 
					<<
						{ <d f a d>16 8 8 } \\
						{ d,16 8 8 }
					>>
				d4 r8 d16 e f4 e8 f |
				e4 es d8.
					<<
						{ <d' f a d>16 8 8 } \\
						{ d,16 8 8 }
					>>
			}
		>>
	}
}

trumpetDrumBreak = \relative c' {
	\repeat volta 8 {
		R1 | r2 r8.  <d f a d>16 8 8
	}
	\repeat volta 8 {
		r2 r8. <d f a d>16 8 8 |
	}
	\repeat volta 4 {
		r8. <d f a d>16 8 8 r8. <d f a d>16 8 8 |
	}
	R1 | r2 r8. <d f a d>16 8 8 \bar "||"

	d4 r8 d16 e f4 e8 f |
	\time 2/4 g8 a bes cis
}

tubaDrumBreak = \relative c, {
	\repeat volta 8 {
		R1 | r2 s8. d16 8 8
	}
	\repeat volta 8 {
		r2 r8. d16 8 8
	}
	\repeat volta 4 {
		r8. d16 8 8 r8. d16 8 8 |
	}
	R1 | r2 r8. d16 8 8 \bar "||"
	d4 r8 d16 e f4 e8 f |
	\time 2/4 g8 a bes cis
}

trumpetC = \relative c' {
	\time 4/4
	\repeat volta 2 {
		d4. 8 bes'4. 8 |
		a4. 8 8 8 8 8 |
		d,4. 8 e4. 8 |
		f4. 8 8 8 8 8 |
	}
	e4. 8 f4. 8 |
	g4. 8 8 8 8 8 |
	f4. 8 g4. 8 |
	a8. 8. 8 8. 8. 8 |
	a8. 8. 8 4 4 |
}

tubaC = \relative c, {
	\time 4/4
	\repeat volta 2 {
		d4. 8 bes'4. 8 |
		a4. 8 8 8 8 8 |
		d,4. 8 e4. 8 |
		f4. 8 8 8 8 8 |
	}
	e4. 8 f4. 8 |
	g4. 8 8 8 8 8 |
	f4. 8 g4. 8 |
	a8. 8. 8 8. 8. 8 |
	a8. 8. 8 4 4 |
}

trumpetBreakdown = \relative c'' {
	\time 2/4
	\repeat volta 4 {
		a8. g8. f8 | d8. 8. 8 | d8. 8. 8 |
	}
	\repeat volta 4 {
		a'8. g8. f8 | d4 r | R2 |
	}
	a'8. g8. f8 | d4 r \bar "|."
}
tubaBreakdown = \relative c' {
	\time 2/4
	\repeat volta 4 {
		a8. g8. f8 | d8. 8. 8 | d8. 8. 8 |
	}
	\repeat volta 4 {
		a8. g8. f8 | d4 r | R2 |
	}
	a'8. g8. cis8 | d4 r \bar "|."
}

trumpet = {
	\trumpetI
	\trumpetA
	\trumpetB
	\trumpetDrumBreak
	\trumpetC
	\trumpetBreakdown
}

tuba = {
	\tubaI
	\tubaA
	\tubaB
	s1 * #(ly:music-length tubaDrumBreak)
	s1 * #(ly:music-length tubaC)
	s1 * #(ly:music-length tubaBreakdown)
}

global = {
	\lineLabel "Intro"
	\tubaUni
	s1 * #(ly:music-length trumpetI)

	\mark \default
	s1 * 4
	\break
	\tubaSim
	s1 * 4
	\break

	\mark \default
	s1 * 4
	\break

	\tubaUni
	\lineLabel "Drum Break"
	s1 * #(ly:music-length trumpetDrumBreak)
	\break
	\tweak direction #DOWN
	\tweak Y-offset #-8
	\textEndMark
	\markup \fill-line {
		\box \pad-markup #1 \column {
			\line {  \bold "A" then \bold "C" }
		}
	}

	\tubaUni
	\mark \default
	s1 * #(ly:music-length trumpetC)
	\break
}

bookOfFive-woodwind = \relative c' {
	% \key d \minor
	\numericTimeSignature
	% \markSection "Intro"
	\repeat volta 2 {
		\once\hideNotes\grace c64
		\omit Staff.Clef
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
		% \numRepeats "2"
	}
	\break
	\repeat volta 2 {
		d'8 8 8 a d8 d d a | a8 g a bes a8 g a bes | 
		d8 8 8 g, d'8 d d g,  | g8 f e f d2 |
		% \numRepeats "2"
	}
	\break

	\mark #2
	\repeat volta 2 {
		d8. a'8. g8 g8. bes8. a8 | a8. g8. d8 a' 4 r |
		d,8. a'8. g8 bes8. a8. g8 | a8. g8. c ,8 d4 r |
		\numRepeats \markup \huge "?"
	}
	% \repeat volta 2 {
	% 	d4 r8 d16 e f4 e8 f |
	% 	g8 a bes cis d4 r4 |
	% 	d,4 r8 d16 e f4 e8 f |
	% 	e4 es d4 r4 |
	% }
	\break

	\markSection "Drum Break!"
	\newSpacingSection
	\repeat volta 8 {
		R1 | r2 r8. d16 8 8
	} \numRepeats "8" 
	\repeat volta 8 {
		r2 r8. <d f>16 8 8
	} \numRepeats "8" 
	\repeat volta 8 {
		\time 2/4
		r8. <d f a>16 8 8 |
	} \numRepeats "8"
	\break
	\time 4/4
	R1 | r2 r8. d16 8 8 \bar "||"


	d4 r8 d16 e f4 e8 f |
	\time 2/4 g8 a bes cis
	% \bar "[|:-||"
	\cueBox "A, then to C "

	\mark #3
	\time 4/4
	\repeat volta 2 {
		<d, f>4. 8 <bes' d>4. 8 |
		<a cis>4. 8 8 8 8 8 |
		<d, f>4. 8 <e g>4. 8 |
		<f a>4. 8 8 8 8 8 |
	}
	\break
	% \markSection "Transition"
	<e g>4. 8 <f a>4. 8 |
	<g bes>4. 8 8 8 8 8 |
	<f a>4. 8 <g bes>4. 8 |
	<a cis>8. 8. 8 8. 8. 8 |
	<a cis>8. 8. 8 4-> 4-> |
	\break

	\markSection "Breakdown"
	\time 2/4
	\repeat volta 4 {
		a8. g8. f8 | d8. 8. 8 | d8. 8. 8 |
		\numRepeats "4"
	}
	\repeat volta 4 {
		a'8. g8. f8 | d8 r8 r4 | R2 |
		\numRepeats "4"
	}
	a'8. g8. f8 | d8 r8 r4 \bar "|."
}
