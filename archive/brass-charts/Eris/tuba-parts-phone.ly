\version "2.24.0"

\include "Phone.ly"
\include "Anthem/Anthem_Tuba.ly"
\include "Artemisia/Artemisia.ly"
\include "Book of Five/Book of Five.ly"
\include "Chiasmus/Chiasmus_Tuba.ly"
\include "Din Din/Din Din_Tuba.ly"
\include "Fantasma/Fantasma_Tuba.ly"
\include "Nigerian Special/Nigerian Special_Tuba.ly"
\include "Pishtaco/Pishtaco_Tuba.ly"
\include "Please Let Go/Please Let Go_Tuba.ly"


fiercely = \relative c {
	\key d \minor
	\time 3/4
	\lineNote "Lower voice on repeat, only"
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
	\numRepeats "×5"
	\lineNote "midhorns solo"
	\new CueVoice {
		d'2.~ 2. |
	}
	\bar "|."
}

kallisti = \relative c {
	\numericTimeSignature
	\key a \minor
	\mark #1
	\repeat volta 2 {
		\time 4/4 
		a4 r e r |
		a4 r c8 b b4 |
		a4 r e r | 
		\time 5/4 
		a4 r8 <d,>8 4 <e>4 
			<< \new CueVoice { \stemUp c''8 b } \\ { b,4\rest } >> |

		\time 4/4 
		a4 r e r |
		\time 6/4
		a4 r e4 r8 <d>8 4 <e>4 |
		\time 4/4
		a4 r e r |
		a4 r e8 g c4
	}
	% \bar "||"
	a2 b |

	c8. d8. e8 c4 b | 
	\pageBreak

	\mark #2
	\repeat volta 2 {
		a8. gis8. a8 d4 e |
		R1 |
		a,8. gis8. a8 r2 |
		e'8. c8. b8 a2 |

		a8. a8. e8 a4 e |
		R1 | 

		<f>8. <d>8. <e>8 r2 |
		c'8. b8. a8 <e>2 | 

		<e>8. 8. <d>8 <f>4 <d> | 
		R1 |

		e8. e8. e8 f4 a |
		R1 |

		<e>8. <e>8. <f>8 <d>4 <c> |
		R1 |

		a'2 b |
		c8. d8. e8 c4 b4 |
	}

	% \lineLabel "Drum Break"
	% \repeat volta 2 { R1 R1 R1 R1 }
	% \numRepeats "×2-6"
	\cueBox "Drum Break, then B 1x, then A"
	% \bar "||"

	% c8. b16~ 8 gis a2 |

}

keroKero = \relative c, {
	\key c \minor
	\lineLabel "Vamp"
	\repeat percent 4  { <c g'>4. 4. r4 | }
	\mark #1
	\lineNote "mids enter, full band joins"
	\repeat volta 2 {
		\repeat percent 2  { <c g'>4. 4. r4 | }
		\repeat percent 2 { <es bes'>4. 4. r4 | }
		\repeat percent 2 { <bes f'>4. 4. r4 | } \break
		\repeat percent 2 { <f' c'>4. 4. r4 | }
		\repeat percent 2 { <es bes'>4. 4. r4 | }
		\repeat percent 1 { <bes f'>4. 4. r4 | }
		\repeat percent 2 { <f' c'>4. 4. r4 | }
		\repeat percent 2 { <es bes'>4. 4. r4 | }
		\repeat percent 2  { <c g'>4. 4. r4 | }
	}
	\break
	\lineLabel "Transition"
	<es bes'>4.\< 4. r4 |
	<f c'>4. 4. r4 | 
	\repeat percent 2  { <c g'>4. 4. r4 | }
	<es bes'>4. 4. r4 |
	<f c'>4. 4. r4 | 
	\repeat percent 2  { <c g'>4. 4. r4 | }

	\break
	\mark #2
	\repeat volta 2 {
		\repeat percent 2 { <aes' ees'>4\! r8 8 4 r8 8 | }
		\repeat percent 2 { <f c'>4\! r8 8 4 r8 8 | }
		\repeat percent 2 { <aes ees'>4\! r8 8 4 r8 8 | }
		\repeat percent 2 { <c, g'>4\! r8 8 4 r8 8 | }
	}
	\break
	\mark #3
	\repeat volta 2 {
		\repeat percent 2 { <aes' ees'>4\! r8 8 4 r8 8 | }
		\repeat percent 2 { <f c'>4\! r8 8 4 r8 8 | }
		\repeat percent 2 { <d a'>4\! r8 8 4 r8 8 | }
		\repeat percent 2 { <b fis'>4\! r8 8 4 r8 8 | }
	}
	\break
	\mark #4
	\repeat volta 2 {
		<c g'>4 r8 8 4 r8 8|
		<b fis'>4 r8 8 4 r8 8|
		<aes es'>4 r8 8 4 r8 8|
		<b fis'>4 r8 8 4 r8 8|
	} \break
	\override NoteHead.style = #'slash
	\lineLabel "Dub Breakdown"
	\repeat volta 2 {
		\repeat unfold 1 { \tuplet 3/2 { d'4\> 4 4 } } 
		\repeat unfold 1 { \tuplet 3/2 { d4 4 4 } } 
		\repeat unfold 1 { \tuplet 3/2 { d4 4 4 } } r2 |
	} \numRepeats "4"
	\repeat volta 2 {
		\repeat unfold 1 { \tuplet 3/2 { d4\> 4 4 } } 
		\repeat unfold 1 { \tuplet 3/2 { d4 4 4 } } 
		\repeat unfold 1 { \tuplet 3/2 { d4 4 4 } } r2\!\parenthesize \fermata | 
	}
}

pterocarya = \relative c {
	\key d \minor
	\mark #1
	\time 4/4
	\partial 4 r8 a8
	\repeat volta 2 {
		f4 r8 f8 e4 r8 d8 | gis,4(_\finger1 a4)_\finger2 r2 |

		g'4 r d r | g4 a bes g |
		\repeat unfold 2 { 
			c1:8
		}
		d4 a f d | 
		\alternative {
			{ d'4 a d, r8 a'8 }
			{ d4 a d r4 }
		}
	} \break

	\mark #2
	\repeat volta 2 {

		\repeat percent 2 { d4 a f d | }
		\repeat percent 2 { g4. bes8 d,4 r | }

		c'4 g e r | g4 e c' r | 
		d4 a f d | d'4 a d, r |
		
		\bar "||" \break

		\repeat percent 2 { d'4 a f d | }
		\repeat percent 2 { g4. bes8 d,4 r | }

		c'4 g e r | g4 e c' r | 
		d4 a f d | d'4 a d, r |
	}
	\pageBreak

	\mark #3
	\repeat volta 1 {
		c1( | d | a\finger2 | 1) |
		c1( | d | g,\finger12 | 1) |
	}

	\break
	\mark #4
	\repeat volta 2 {
		f'4 r c r | bes' r f r |
		\repeat unfold 2 { c'4 r g r | }
	}
	\break
	\repeat percent 2 { des'2-2~ des4. es8-1 | c1-1 | }
	des2~ des4. es8 | << { \parenthesize c4 }  a2.  >> c8-1 b-0 |
	a4-2 r8 c g4_\finger12 r8 c | f,4_\finger0 r4 r4

	\bar "|." 
	\cueBox "A, then B, then C 4x, then D"
}

sickLeggedElephant = \relative c, {
	\once \override Staff.TimeSignature.stencil = ##f
	\key bes \minor
	\lineNote "tubas start"
	\lineLabel "Main Groove"
	\bar ".|:"
	\repeat volta 2 {
		\partial 4 ges?8_\finger23 f_\finger13 |
		\time 8/4
		bes?4. des?4. c4. es?4. r4 ges,8 f |
		\time 6/4
		bes4. des4. aeses!4_\finger12 r4 
	}
	\break

	\cueBox "cue for Fanfare: 2nd melody 4x"

	\lineNote "melodies start, tuba after 2x"
	\lineLabel "Fanfare"
	\repeat volta 2 \transpose f bes, \relative c,, {
		\partial 4 f'4 
		\time 8/4
		aes8 f4 aes8 f4 aes8 g~ g2 r4 f |
		\time 6/4
		aes8 f4 es8 des4 c4 r4
		\numRepeats "×4"
	}
}

swarm = \compressMMRests \relative c, {
	\numericTimeSignature
	\key f \minor
	\mark #1
	\lineNote "melodies start, tuba after 2x"
	\time 6/8
	\repeat volta 2 {
		f8 r r c[ r f] | e8 r r g4. |
		aes8-1 r r es-1[ r aes] | es8 r r r[ es d-12] |
		des4.-23 c4 e8-2 |
	}
	\break
	\cueBox \markup \center-column {
		% \line { "cue: drumroll" }
		% \null
		\line { "Swarm!, then drums, then B" }
	}
	
	\mark #2
	\lineNote "tubas start"
	\time 5/4
	\repeat volta 2 {
		g4-12 g8 bes4-0 a8-2~ a8 a8 c4-1 |
		bes4 bes8 des4.-2 r4 c |
		bes8 bes4 g4 c8-1 c4 f,8-0 fis-23 |
	}
	\break
	\cueBox "cue: melodies 4x 2nd time"
	\repeat volta 8 {
		g4.-12 bes4. a4-2 c-1 | bes4. des4.-2 es4-1 c |
	}
	\cueBox "melodies solo, Drum Break, then to C"
	% \lineNote "melodies solo"
	% R1 * 5
	% \bar "||" \break

	% \lineLabel "Drum Break"
	% \time 4/4
	% R1 * 6

	\lineNote "drums start, tubas join"
	\time 4/4
	f,2 f2 | f4 4 4 4 |

	\mark #3
	% \time 4/4
	\repeat volta 2 {
		\repeat percent 2 { f4 b!8\finger12 8 f4 b | }
	}
	\break
	\lineNote "melodies join"
	\repeat volta 4 {
		f4 b!8 8 f4 b |
		\makePercent s1
		\makePercent s1
		\alternative {
			\volta 1,2,3 {
				\makePercent s1
			}
			\volta 4 {
				f4 b!8 8 f4 fis |
			}
		}
	} \break
	\repeat volta 4 {
		\repeat percent 4 { g4 des'?8\finger2 8 g,4 des' | }
			% \volta 4 {
			% 	g4 cis!8 8 g4 ges |
			% }
	}

	\lineLabel "Transition"
	\repeat volta 5 { g,2 g2 }
	\numRepeats "×5"
	\bar "|."
	\cueBox \markup \column {
		\line { "B, then C, then Transition" \italic "ad nauseum"}
	}
}

thunderstomp = \relative c, {
	\mark #1
	\key f \minor
	\lineNote "drums start, tubas join"
	\repeat volta 2 {
		\time 7/8
		% e4 aes4 g8[ e c] | e4 aes4 f8[ a! f] | 
		% e8[ f <f aes>] g[ f] es[ des] |
		% bes8[ des bes] c4 c4 |
		e4-2 4 c4.-13 | e4-2 4 des4.-23 |
		e4.-2 des4-23 4 | bes4. c4-13 c'-^-1 |
	}
	\numRepeats "×4"

	\mark #2
	\lineNote "tubas start"
	\time 11/8
	\repeat volta 8 {
		<c,>4 4 <des>4 8 <c>4 4 |
		\alternative {
			{
				<c>4 4 <g>4_\finger13 8 <c>4 4 |
			}
			{
				<c>4 4 <g>4 8 <c>2\fermata |
			}
		}
	}
	\cueBox \markup \column {
		\line { "A × 4, B × 4, then Drum Break, then C" }
	}
	\pageBreak

	% \lineLabel "Drum Break"
	% \repeat volta 2 { 
	% 	R1 R4. | R1 R4. | R1 R4. | R1 R4. |
	% }

	% \break


	\mark #3
	\lineNote "drums start, tubas join"
	\key d \minor
	\time 11/8
	\repeat volta 8 {
		g'4-12 g bes4. d,4-12 d |
		\alternative {
			{
				d4 d4 f4. c4-13 c |
			}
			{
				\time 9/8
				d4 d4 f4. c4-13 |
			}
		}
	} 
	d4 d4 f4. c4 |
	d4 d4 f4.

	\override Stem.stencil = #'()
	\override Staff.BarLine.stencil = #'()
	g2-12 
	f e-2 c-13 \fermata 

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

waltz = \relative c {
	\key c \minor
	\time 3/4
	% \lineLabel "Intro"
	\lineNote "tubas intro"
	\repeat volta 8 {
		c4 r2 | g4 r2 |
		c4 r2 | g4 a! b! |

	}
	\numRepeats "×2"
	\break

	\lineNote "melodies join"
	\repeat volta 2 {
		c4 r2 | g4 r2 |
		c4 r2 | g4 a! b! |
		c4 r2 | g4 r2 |
		c4 r2 | c4 bes? aes? |
		
		f4 r2 | aes4 r2 |
		f4 r2 | f4 aes b! |
		c4 r2 | g4 r2 |
		c4 r2 |
		\alternative {
			\volta 1 {
				 g4 a! b! |
			}
			\volta 2 {
				c4 bes aes |
			}
		}
	}
	\bar "||"
	\pageBreak

	f2. | f2. |
	f2. | f4 aes b! |
	c4 r2 | g4 r2 |
	c4 r2 | c4 bes aes | \break

	f2. | f2. |
	f2. | f2. |
	c'4 r2 | c2.-> | 
	g4 r2 | g2.-> |  

	c4 r2 | c2.-> |
	g4 r2 | g2.-> | \break
	c2.\finger1 | b!2.\finger12 |  
	bes!2. | aes2. | 

	g2. | f2. |
	es2. | d2. |
	\bar "|."
}

psi = \relative c, <<
	{
		\mark #1
		\key bes \major
		\compoundMeter #'((7 7 9 8))
		\repeat volta 2 {
			c4 g' f4 aes8\finger1
			d4\finger0 aes8\finger1 es'4\finger1 bes
			g4. a!4. bes4. |

			c4 es, fis4\finger23 a8
			g4 c8 d4 d,
			es4. 4. 4. |
		} \break
		\mark #2
		\compoundMeter #'((13 10 8))
		\repeat volta 2 {
			g4 d8 bes'4 d,8 g4 d8
			fis4 a es4 bes8
			g'4 bes8 c4\finger1 es4\finger1 |
		}
		\pageBreak
		\mark #3
		\compoundMeter #'((7 7 9 8))
		\repeat volta 2 {
			g,4. a4\finger2 d,\finger12
			des4.\finger23 f2
			es4 c4 d4. fis4\finger23 |

			g4. es4 g4
			aes8[\finger1 des\finger2 f\finger0] c2\finger1
			ges4\finger23 des f4. es4 |

			c4. aes'4 es4
			b'!4.\finger12 c4 es,4
			f4 c es4. bes'4 | \bar "|."
			\alternative {
				\volta 1 {
					g4. a4\finger2 d,
					des4. f2
					es4 c4 d4. fis4\finger23 |
				}
			}
		}
		\cueBox "A, then B, then D"
		\break
		\mark #4
		\time 23/2
		\repeat volta 2 {
			g1 es2 d b\finger123 
			c1 bes2 d f 
			es1 d2 f d 
			es1 fis2\finger23 a\finger2 fis
			c2 es aes\finger1 |
		}
		g1 \fermata \bar "|."
	}
	\repeat volta 2 {
		s2.. \bar "!" s2.. \bar "!" s2. s4. |
		s2.. \bar "!" s2.. \bar "!" s2. s4. |
		s2. s4. s2 \bar "!" s2. s2 |
		s2.. \bar "!" s2.. \bar "!" s2. s4. |
		s2.. \bar "!" s2.. \bar "!" s2. s4. |
		s2.. \bar "!" s2.. \bar "!" s2. s4. |
		s2.. \bar "!" s2.. \bar "!" s2. s4. |

		s1 s1. \bar "!" s1 s1. \bar "!"
		s1 s1. \bar "!" s1 s1. \bar "!" s1. |
	}
>>

\bookpart {
	\header {
	  title = "Anthem for Eris"
	  composer = "J.R. Hankins"
	  % instrument = "Tuba"
	  % Hankins was in the NYC based Hungry March Band
	}
	% \markup \vspace #1
	\score {
		\layout {
			indent = 0.5\in
		}
		\new Staff {
			\clef "bass"
			\anthem-tuba
		}
	}
}

\bookpart {
	\header {
	  title = "Artemesia"
	  subtitle = "the Small-Headed Gopher"
	  % instrument = "Tuba"
	  composer = "erin bell"
	}
	\score {

		\new Staff {
			\clef "bass"
			\artemisia-tuba
		}
	}
}

\bookpart {
	\header {
	  title = "Book of Five"
	  % instrument = "Tuba"
	  composer = "john gerken"
	}
	\score {
		\layout {
			indent = 0.5\in
		}
		\new Staff {
			\clef "bass"
			\bookOfFive-tuba
		}
	}
}

\bookpart {
	\paper {
	  page-count = #1
	  ragged-last = ##f
	  % indent = #20
	}
	\header {
	  title = "Chiasmus"
	  % instrument = "Tuba"
	  composer = "L. Lou"
	}
	\markup \vspace #1
	\score {
		\layout {
			% indent = 0.5\in
		}

		\new Staff {
			\clef "bass"
			\chiasmus-tuba
		}
	}
}

\bookpart {
	% \markup \vspace #1
	\header {
	  title = "Dindin"
	  % instrument = "Tuba"
	  composer = "J.R. Hankins"
	}
	\score {

		\new Staff {
			\clef "bass"
			\dindin-tuba
		}
	}
}

\bookpart {
	\header {
	  title = "fantasma"
	  % instrument = "Tuba"
	  composer = "bruno"
	}
	\score {
		\layout {
			indent = 0\in
		}
		\new Staff {
			\clef "bass"
			\fantasma-tuba
		}
	}
}

\bookpart {
	\header {
	  title = "Kallisti"
	  % instrument = "Tuba"
	  composer = "Missa and Kelly"
	}
	\score {

		\new Staff {
			\clef "bass"
			\kallisti
		}
	}
}


\bookpart {
	\paper {
	  page-count = #2
	  ragged-last = ##t
	  % indent = #20
	}
	\header {
	  title = "Kero Kero"
	  % instrument = "Tuba"
	  composer = "Scone & Hott Dish"
	}
	\score {

		\new Staff {
			\clef "bass"
			\keroKero
		}
	}
}


\bookpart {
	\header {
		supertitle = "“Nigerian Special”"
	  title = "Onwu Ama Dike"
	  % instrument = "Tuba"
	  composer = "St. Augustine & His Rovers"
	}
	\markup \vspace #1
	\score {

		\new Staff {
			\clef "bass"
			\nigerianSpecial-tuba
		}
	}
}

\bookpart {
	\markup \vspace #1	
	\header {
		title = "Pishtaco"
	}
	\score {
		\new Staff {
			\clef "bass"
			\pishtaco-tuba
		}
	}
}

\bookpart {
	\paper {
	  page-count = #1
	  % ragged-last = ##t
	  % indent = #20
	}
	\header {
	  title = "Please Let Go"
	  composer = "Eric W. Spinrad"
	}
	\score {

		\new Staff {
			\clef "bass"
			\pleaseLetGo-tuba
		}
	}
}

\bookpart {
	\header {
	  title = "Pterocarya"
	  % instrument = "Tuba"
	  composer = ""
	}
	\score {

		\new Staff {
			\clef "bass"
			\pterocarya
		}
	}
}

\bookpart {
	\markup \vspace #1
	\header {
	  title = "Sick-Legged Elephant"
	  % instrument = "Tuba"
	  composer = ""
	}
	\score {
		\new Staff {
			\clef "bass"
			\sickLeggedElephant
		}
	}
}

\bookpart {
	\header {
	  title = "The Swarm"
	  % instrument = "Tuba"
	  composer = "p.f."
	}
	\score {
		\new Staff {
			\clef "bass"
			\swarm
		}
	}
}

\bookpart {
	\header {
	  title = "(Summertime) Thunderstomp"
	  % instrument = "Tuba"
	  composer = "a.h. blum"
	}
	\score {
		\new Staff {
			\clef "bass"
			\thunderstomp
		}
	}
}

\bookpart {
	\markup \vspace #1
	\header {
	  title = "The Trickster's Waltz"
	  % instrument = "Tuba"
	  composer = ""
	}
	\score {
		\layout {
			indent = 0.5\in
		}
		\new Staff {
			\clef "bass"
			\waltz
		}
	}
}

