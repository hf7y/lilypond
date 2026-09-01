\version "2.24.0"
\include "Phone.ly"

anthem = \relative c, {
	\lineNote "add-in one group at a time"
	\key f \minor
	\time 2/2
	\repeat volta 2 { bes2 r | 4 4 4 4 |  } 
	\repeat volta 2 { <bes e>2 r | 4 4 4 4 | } 
	\repeat volta 2 { <bes e f>2 r | 4 4 4 4 | } 
	\repeat volta 2 { <bes e f ges>2 r | 4 4 4 4 | } 
	\repeat volta 2 { 1~ 2 r }	

	\break
	\mark #1
	\lineNote "tubas start"
	% \time 4/4
	\repeat volta 2 {
		bes4. f'4. bes4 | r2 r4 bes4 |
		aes4.\finger1 f4. des4\finger23 | r2 r4 aes'4 |
		g4.\finger12 e4.\finger2 c4\finger13 | R1 |
		c2 des\finger23 | c aes\finger1 |
	}
	\cueBox "cue for B: unison with tubas for 2x"

	\mark #2
	\lineNote "tubas and midhorns start"
	\time 7/8
	\repeat volta 2 {
		c'4\finger1 bes8 c4 g\finger12 | c4 bes8 c4 des\finger2 |
	}
	\break
	\cueBox "cue for C: highhorns stop, then play 2x"

	\mark #3
	\repeat volta 4 {
		c4 8 4 4 | bes4 8 4 4 |
		aes4\finger1 8 4 b!\finger12 |  
		\alternative {
			\volta 1,3 { c4 g8 c4 g |  }
			\volta 2,4 { c4 g8 c4 r |  }
		}
	}
	\cueBox \markup \column {
		\line { "B, C, B, then A" }
	}
}

artemisia = \relative c, {
	\numericTimeSignature
	\key a \minor
	\mark #1
	\lineNote "tubas start"
	\time 4/4
	e4\finger2 a,\finger2 c\finger13 e
	\repeat volta 4 {
		\repeat percent 2 { a,4 e' a,4 e' } a, c e a, |
		\repeat percent 2 { e'4 a, e'4 a, } e' a, c e |
	}
	\time 2/4
	a,2 |
	\break

	\lineLabel "Drum Break"
	\time 6/8
	R2. | 
	\key f \minor
	\clef "treble"

	\new Voice \relative c'' {

		r4 
		\lineNote \markup { \hspace #-4 "melodies solo" }
		bes8 4 b8 |
		c4 g8 c4 g8 | c4 aes8 ges4. |
	}
	\bar "||"
	\pageBreak

	\clef "bass"
	\mark #2
	% \time 6/8
	\lineNote "tubas join"
	\repeat volta 2 {	
		\repeat percent 2 {
			a4.\finger2 \tuplet 2/3 { c8 8 } | a4. c |
			\hide TupletNumber
			bes4. \tuplet 2/3 { des8\finger23 8 } | bes4. des |
		}
		
		c4. \tuplet 2/3 { es8\finger1 8 } | c4. es |
		a,4. \tuplet 2/3 { c8 8 } | a4. c | 
		a4. \tuplet 2/3 { c8 8 } | a4. c |
		bes4. r4. | \bar "||"

		f'4. r | f r | f r | \break
		f8 8 8 r4. | f8 8 8 r4. | f8 8 8 r4. |
		
		\alternative {
			\volta 1 { f4 8 ges4\finger23 8 | f4. r | }
			\volta 2 { 
				\time 9/8 f4 f8 ges4 8 a4\finger2 8 |
				\time 6/8 bes4. des\finger2
			}
		}
	}
	\pageBreak

	\mark #3
	\repeat volta 4 {
		f,2. | aes\finger1 | f | aes |
		c,2.\finger13 | es\finger1 | c | 

		\alternative {
			\volta 1,2,3 { es | }
			\volta 4 { c'\finger1 | }
		}
	}
	\override TextSpanner.bound-details.left.text = "ritardando"
	b2.\finger12_\startTextSpan | bes! | g\finger12\fermata\stopTextSpan |
	\break

	\lineLabel "Descent to End"
	\repeat volta 2 {
		\time 4/2	fis2\finger23 d\finger12 fis bes |
		\time 5/2	a!2 g cis,\finger23 d\finger12 cis |
		\time 4/2 	g'2\finger12 d\finger12 bes g\finger12 |

		\alternative {
			{ e\breve\finger123 | }
			{ f\breve\finger13 | }
		}
	}
	% \mark #1
	% \key a \minor
	% \time 4/4
	% {
	% 	\unfoldRepeats
	% 	\repeat percent 2 { a4 e' a,4 e' } a, c e a, |
	% 	\unfoldRepeats
	% 	\repeat percent 2 { e'4 a, e'4 a, } e' a, c e |
	% } \bar "||"
	% a,1
	% \bar "|."
	\cueBox "A, then end"
}

bookOfFive = \relative c, {
	\numericTimeSignature
	\key d \minor
	\time 4/4
	\repeat volta 2 {
		d4 r8 d16 e\finger2 f4 e8 f |
		g8 a\finger2 bes cis\finger2 d4 r4 |
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
		d8.\finger12 f8. a8\finger2 d,8. f8. a8 |
		d,8. f8. a8 a8. a16 r16[ a16 bes8] |
		d,8. f8. a8 d,8. f8. a8 |
		d,8. f8. a8 a8 g f e\finger2 |
		\numRepeats "×4"
	}
	\break
	% \cueBox \markup \column {
	% 	\line { "1st time to B" }
	% 	\null
	% 	\line { "2nd time to C" }
	% }

	\mark #2
	\repeat volta 2 <<
		\new CueVoice \relative c {
			d8. a'8. g8 g8. bes8. a8 | a8. g8. d8 a'8. s16 s4 |
			d,8. a'8. g8 bes8. a8. g8 | a8. g8. cis ,8 d8. s16 s4 |
			\cueClefUnset
		}

		\new Voice {

			s1 | s2 s8. d16 8 8 |
			s1 | s2 s8. d16 8 8 |
		}
	>>\break
	\repeat volta 2 {
		d4 r8 d16 e f4 e8 f |
		g8 a bes cis d4 r4 |
		d,4 r8 d16 e f4 e8 f |
		e4 es d4 r4 |
	}

	\lineLabel "Drum Break!"
	\repeat volta 8 {
		R1 | r2 r8.  d16 8 8
		\numRepeats "×8"
	}
	\repeat volta 8 {
		r2 r8. d16 8 8
		\numRepeats "×8"
	}
	\repeat volta 4 {
		r8. d16 8 8 r8. d16 8 8 |
		\numRepeats "×4"
	}
	R1 | r2 r8. d16 8 8 \bar "||"

	d4 r8 d16 e f4 e8 f |
	\time 2/4 g8 a bes cis
	\bar "||-.|:"
	\cueBox \markup \column { "A, then C " }
	\pageBreak

	\mark #3
	\time 4/4
	\repeat volta 2 {
		d,4. 8 bes'4. 8 |
		a4. 8 8 8 8 8 |
		d,4. 8 e4. 8 |
		f4. 8 8 8 8 8 |
	}
	\break
	\lineLabel "Transition"
	e4. 8 f4. 8 |
	g4. 8 8 8 8 8 |
	f4. 8 g4. 8 |
	\repeat unfold 3 { a8. 8. 8 }
		 4 4 |
	\break

	\lineLabel "Breakdown"
	\time 2/4
	\repeat volta 4 {
		a8. g8. f8 | \repeat unfold 2 { d8. 8. 8 | }
		\numRepeats "×4"
	}
	\repeat volta 4 {
		a'8. g8. f8 | d8 r8 r4 | R2 |
		\numRepeats "×4"
	}
	a'8. g8. f8 | d8 r8 r4 \bar "|."
}

chiasmus = {
	\key bes \minor
	% \mark #20
	\lineNote "tubas and midhorns start, play throughout"
	\repeat volta 2 \relative c, {
		bes4 r4 r2 | 
		ces4\finger123 r4 r2 | 
		aes4\finger1 r4 r2 | 
		f4\finger13 r4 aes2\laissezVibrer | 
	}
	% \break

	% \mark #1
	% \clef "treble"
	% <<
	% 	\new Voice \magnifyMusic 0.7 {
	% 		\stemUp
	% 		\repeat volta 2 \relative c'' {
	% 			s4 <ces d>4 4 4 |
	% 			\repeat unfold 2 { <ces d>4 4 4 4 | }
	% 			<ces d>4 4 <bes cis>4( <ces d>) |
	% 		}
	% 	}
	% 	\new Voice {
	% 		\stemDown
	% 		\repeat volta 2 \relative c' {
	% 			r4 <f aes>4-. 4-. 4-. |
	% 			\repeat unfold 2 { <f aes>4-. 4-. 4-. 4-. | }
	% 			<f aes>4-. 4-. <e g>4( <f aes>-.) |
	% 		}
	% 	}
	% >>
	% \break
	% \cueBox "T, A, then B"

	% \mark #2
	% % \lineNote "Upper voice 2nd time only"
	% <<
	% 	\new Voice \magnifyMusic 0.7 {
	% 		\stemUp
	% 		\repeat volta 2 \relative c' {
	% 			f4 aes4 4 ges | bes aes ges4 s |
	% 			es4 ges4 4 f | 
	% 			\alternative {
	% 				\volta 1,2,3 { aes ges es ges | }
	% 				\volta 4 { aes ges f es | }
	% 			}
	% 		}
	% 	}
	% 	\new Voice {
	% 		\stemDown
	% 		\repeat volta 2 \relative c' {
	% 			d4 f f es | ges f es4 r |
	% 			ces4 es es d | 
	% 			\alternative {
	% 				\volta 1,2,3 { f es ces e | }
	% 				\volta 4 { f es d ces | }
	% 			}
	% 		}
	% 	}
	% >>
	% \break
	% \cueBox "A, then M"

	% \mark #13
	% \clef "bass"
	% % \lineNote "Upper voice 2nd time only"
	% <<
	% 	\new Voice \magnifyMusic 0.7 {
	% 		\override TupletBracket.bracket-visibility = ##f
	% 		\omit TupletNumber
	% 		\voiceOne
	% 		\repeat volta 2 \relative c' {
	% 			d2 bes | \tuplet 3/2 { ces2 bes4 } aes2 |
	% 			f1 | \tuplet 3/2 { ges2 f4 } es2 |
	% 		}
	% 	}
	% 	\new Voice {
	% 		\voiceTwo
	% 		\repeat volta 2 \relative c' {
	% 			bes2 f | \tuplet 3/2 { ges2 f4 } es2\prall |
	% 			d1 | \tuplet 3/2 { es2 d4 } ces2 |
	% 		}
	% 	}
	% >>
	% \break
	% \cueBox \markup \center-column {
	% 	\line { "M & B, then M solo, then M & B" }
	% 	\null
	% 	\line { "T, then M & B, then M & A" }
	% 	\null
	% 	\line { "Chorus, then C" }
	% }

	% \mark #3
	% \clef "treble"
	% % \lineNote "Lower voice 2nd time only"
	% r2 
	% <<
	% 	\new Voice {
	% 		\repeat volta 2 \relative c' {
	% 			\tuplet 3/2 { r4 f4 f }
	% 			\tuplet 3/2 { f es f } \tuplet 3/2 { ges f es } |
	% 			c?2 \tuplet 3/2 { c2 4 } |
	% 			aes2 c2 | 
	% 			\break

	% 			d2 \tuplet 3/2 { r4 f f } |
	% 			\tuplet 3/2 { f4 es f } aes2 |
	% 			\tuplet 3/2 { aes4 bes aes} 
	% 				\stemDown f2 |

	% 			\tuplet 3/2 { f4 ges f } \tuplet 3/2 { es4 d es } |
	% 			d2 
	% 		}
	% 	}
	% 	\new Voice \magnifyMusic 0.7 {
	% 		\override TupletBracket.bracket-visibility = ##f
	% 		\omit TupletNumber
	% 		\voiceTwo
	% 		\repeat volta 2 \relative c' {
	% 			\tuplet 3/2 { s4 d4 d }
	% 			\tuplet 3/2 { d ces d } \tuplet 3/2 { es d ces } |
	% 			aes2 \tuplet 3/2 { aes2 4 } |
	% 			f2 aes2 | 

	% 			bes2 \tuplet 3/2 { s4 d d } |
	% 			\tuplet 3/2 { d4 ces d } es2 |
	% 			\tuplet 3/2 { f4 es f } \stemUp aes2 |
	% 			\tuplet 3/2 { aes4 bes aes } \tuplet 3/2 { aes f ges } |
	% 			f2 
	% 		}
	% 	}
	% >>
	% r2 |
	% \bar "||"
	% \break

	% \cueBox "M, then C, then T to fade out"
}

dindin = \relative c, {
	\key d \minor
	\mark #1
	\lineNote "tubas start"
	\repeat volta 2 {
		d4.\finger12 e4.\finger2 f4~ | f4 r8 d8 e4 f |
		c4.\finger13 e4. f4~ | f4 r8 c8 e4 f |
		bes,4.\finger0 e4. f4~ | f4 r8 bes,8 e4 f |
		a,4.\finger2 e'4. f4~ | f4 r4 \tuplet 3/2 { f8 e8 es\finger1 } d4 |
	}
	\pageBreak

	\mark #2
	\lineNote "tubas start"
	\repeat volta 2 {
		d'8 d4 d8 r4 d8 f,8~ | f2 r2 |
		\numRepeats "×12"
	}
	a8\finger2 4 8 r2 |
	aes8\finger1 4 8 r2 |
	g8\finger12 4 8 r2 |
	f4 r4 \tuplet 3/2 { f8 e es } d4 |
	\cueBox "A, then Chorus"

	\lineLabel "Chorus"
	\clef "treble"
	\repeat volta 4 \relative c'' {
		a8 a4 a8 r4 r8 g8~ | g2 r2 |
		a8 a4 a8 r4 bes8^( g8~ | g2) r2 |
		bes8 4 8 r4 r8 g8~ | g2 r2 |
		\repeat percent 2 { a8 a4 a8 r2 | }
		\numRepeats "×4"
	}
	\break

	% \lineLabel "Melodies solo"
	% \new CueVoice {
	% 	\transpose e d
	% 	\relative c'' {
	% 		b8 g4 a8~ 8 b g4~ | g2 r8 e e d |
	% 		b'8 g4 a8~ 8 b g8 a | b8 g a2 r4 |
	% 		\pageBreak
	% 		r8 c a b g8 a fis a | g8 fis4. r8 b, c b |
	% 		c8 d e fis r8 b, c d | e8 fis g b a4 r |
	% 	}
	% } \bar "||"
	\cueBox "Melodies solo, A, then B"
}

fantasma = \relative c {
	\time 4/4
	\key aes \major
	\lineNote "melodies start"
	\new CueVoice {
		\partial 4 c4 |
		es2. c4 | aes2. c4 | 
		f4. es8 f8 es4 c8~ | c2 r4 c4 |

		es2. c4 | aes2. c4 | 
		bes4. aes8 bes8 aes4 f8~ | f2. \bar "" \break r8 f8 |

		f4. f8 aes4. 8 | f2 r4 c'4 | 
		bes4. aes8 bes8 aes4 f8~ | f2. r8 f8 |

		f4. 8 aes4. 8 | f2 
	}
	\lineNote \markup { \hspace #-2 "tubas join" }
	es4 f4~ | f1 | r2. \bar ""

	\mark #1
	\cueBox "Drum Break"
	\lineNote "tubas join drums"
	r8 f |
	\repeat volta 12 {
		f8. 8. 8 r4 r8 f |
		\makePercent s1
		\alternative {
			{ aes8. 8. 8 r4 r8 8 | g8. 8. 8 r4 r8 8 |  }
			{ \repeat unfold 2 { aes8. 8. 8 } | g8. 8. 8 4 4 }
		}
	}
	\pageBreak

	\mark #2
	\lineNote "midhorns solo"
	\new CueVoice {
		\repeat volta 4 {
			r8 f'16 16 f8 8 r8 f8 r4
		}
		\numRepeats \markup { \hspace #-3.5 "×4" }
	}
	\lineNote \markup { \hspace #2 "tutti" }
	\repeat volta 2 {
		f,1 | f1 |
		e4. e4. e4~ | e8 e4. e4 4 |
	}
	\repeat volta 2 {
		c1 | c1 |
		d!4. 4. 4~ | 8 4. 4 4 |
	}
	\repeat volta 2 {
		f1 | f1 |
		e4. e4. e4~ | e8 e4. e4 4 |
	}
	g4. 4. 4~ | 8 4. 4 4 |
	a4. 4. 4 | g4. g4. es4 |
	\repeat volta 2 {
		f1~ | f2. f4 |
		e1~ | e2. e4 | }

	\cueBox "B, then dissolve into chaos, then A, then melodies solo, then end"
}

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

nigerianSpecial = \relative c {
	\lineNote \markup { \hspace #-1 "drums start" }
	\key f \major
	\partial 2. \new CueVoice { c8 f8 c2 }
	\lineNote "tutti"
	\new Voice {
			\repeat volta 2 {
				\repeat percent 2 { f,4. f8 c'8. c16~ 16[ d16 c8] | }
				\repeat percent 2 { bes,4. 8 f'8. f16~ 16[ g16 f8] | }
			}
			\break
			\repeat percent 2 { f4. f8 c'8. c16~ 16[ d16 c8] | }
			bes,4 4 4 4 | bes4 \bar "|."
	}
	\cueBox "Drum Break"
}

pleaseLetGo = \relative c {
	% \lineNote "tubas start"
	% \repeat volta 2 {
	% 	\repeat percent 4 { g4. 8 d4 f | }
	% }

	\mark #1
	\repeat volta 2 {
		\repeat percent 4 { g4. 8 d4 f | }
		\repeat percent 4 { d4. 8 a4 c | }
	} \break

	\mark #2
	\repeat volta 2 {
		\repeat percent 4 { g'8. c,8. d8 bes4 a | }
		a'2 f2 | d1 |
		a'2 f2 | d1 |
	}
	\numRepeats "×3"
	\cueBox "A, then Drum Break"

	% \lineLabel "pre-C"
	% \lineNote "Drum Break"
	% g4. 8 d4 f | R1 * 3 |
	% \bar "||"
	% \pageBreak
	\lineNote "midhorns"
	\mark #3
	\new CueVoice \relative c' {
		\repeat volta 2 {
			g4:16 r8 g16 16 g16 g8. g4 |
			\alternative {
				{ f4:16 r8 f16 16 f16 f8. a4 | }
				{ f16 16 16 16 r8 e16 16 e16 e8. d4 | }
			}
		}
	}
	\repeat volta 2 {
		r4. g16 16 8     d8 8 f |
		r4. f16 16 16 16 c8 8 e |
	}
	% <<
	% 	\repeat volta 2 {
	% 		r4. g16 16 16 16 d8 8 f |
	% 		r4. f16 16 8     c8 8 e |
	% 		r4. g16 16 16 16 d8 4   |
	% 		r4. f16 16 16 16 c8 8 e |
	% 		r4. g16 16 8     d8 4   |
	% 		r4. f16 16 16 16 c8 8 e |
	% 	}
	% 	\repeat volta 2 {
	% 		\lineNote "C1, D2"
	% 		s1 * 2 |
	% 		\lineNote "D1, C3"
	% 		s1 |  s1 |
	% 		\lineNote "C2"
	% 		s1 * 2 |
	% 	}
	% >>
	% \numRepeats "×8"
	% \break

	% r4. g16 16 16 16 d8 8 f | R1 |
	% \bar "|."
	% \cueBox 
	% \markup \column {
	% 	\line { "C1+D1+C2+D2+C3 = 14+8+14+8+4 = 48 mm" }
	% 	\line { "Bassline ×  8 = 48 mm"}
	% }
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

pterocarya = \relative c {
	\key d \minor
	\mark #1
	\time 4/4
	\repeat volta 2 {
		\partial 4 r8 a8
		f4 r8 f8 e4 r8 d8 | gis,4(_\finger1 a4)_\finger2 r2 |

		g'4 r d r | g4 a bes g |
		\repeat percent 2 { 
			c,8 8 8 8 8 8 8 8
		}
		d'4 a f d | 
		d'4 a d,
	} r4 | \break

	\mark #2
	\repeat volta 2 {

		\repeat percent 2 { d'4 a f d | }
		\repeat percent 2 { g4 r8 bes8 d,4 r | }

		c'4 g e r | g4 e c r |
		d'4 r a r | d4 a d, r |
		% \bar "||" \break

		% d'4 a f d | d'4 a f d |
		% g4. bes8 d,4 r | g4. bes8 d,4 r |

		% c'4 g e r | \repeat unfold 2 { c2:8 }
		% d'4 r a r | d4 a d, r4
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
	\repeat volta 2 { des2~ des4. es8 | c1 | }
	des2~ des4. es8 | a,2. c8 b |
	a4 r8 c g4_\finger12 r8 c | f,4_\finger13 r4 r4

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
		aes?8 r r es?[ r aes] | es8 r r r[ es d] |
		des!4. c4 e!8 |
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
		g4 g8 bes4 a8~ a8 a8 c4 |
		bes4 bes8 des?4. r4 c |
		bes8 bes4 g4 c8 c4 f,8 fis |
	}
	\break
	\cueBox "cue: melodies 4x 2nd time"
	\repeat volta 8 {
		g4. bes4. aes4 c | bes4. des4. es4 c |
	}
	\cueBox "melodies solo, Drum Break, then to C"
	% \lineNote "melodies solo"
	% R1 * 5
	% \bar "||" \break

	% \lineLabel "Drum Break"
	% \time 4/4
	% R1 * 6

	\lineNote "tubas join drums"
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
		e4 4 c4. | e4 4 des?4. |
		e4. des4 4 | bes4. c4 c'-^ |
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
	\lineNote "tubas join drums"
	\key d \minor
	\time 11/8
	\repeat volta 2 {
		g'4 g bes4. d4 d |
		d,4 d4 f4. c'4 c |
	}
	\lineNote "melodies join"
	\repeat volta 8 {
		g4 g bes4. d4 d |
		\alternative {
			{
				d,4 d4 f4. c'4 c |
			}
			{
				\time 9/8
				d,4 d4 f4. c'4 |
			}
		}
	} 
	d,4 d4 f4. c'4 |
	d,4 d4 f4. g4 \fermata| 
	\time 3/4
	f\fermata e\fermata c\fermata \bar "|."

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
	\markup \vspace #1
	\score {
		\layout {
			indent = 0.5\in
		}
		\new Staff {
			\clef "bass"
			\anthem
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
			\artemisia
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
			\bookOfFive
		}
	}
}

\bookpart {
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
			\chiasmus
		}
	}
}

\bookpart {
	\markup \vspace #1
	\header {
	  title = "Dindin"
	  % instrument = "Tuba"
	  composer = "J.R. Hankins"
	}
	\score {

		\new Staff {
			\clef "bass"
			\dindin
		}
	}
}
\bookpart {
	\header {
	  title = "Fantasma"
	  % instrument = "Tuba"
	  composer = "Bruno"
	}
	\score {
		\layout {
			indent = 0.5\in
		}
		\new Staff {
			\clef "bass"
			\fantasma
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
	\header {
	  title = "Onwu Ama Dike"
	  % instrument = "Tuba"
	  composer = "St. Augustine & His Rovers"
	}
	\markup \vspace #1
	\score {

		\new Staff {
			\clef "bass"
			\nigerianSpecial
		}
	}
}
\bookpart {
	\header {
		title = "Pish Taco"
	}
	\score {
		\new Staff {
			\clef "bass"
			\pishTaco
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

% \bookpart {
% 	\header {
% 	  title = "Fiercely; as at night"
% 	  composer = ""
% 	}
% 	\score {

% 		\new Staff {
% 			\clef "bass"
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
			\clef "bass"
			\pleaseLetGo
		}
	}
}

\bookpart {
	\header {
		title = "Ψ"
		composer = "Brett Brothwell"
	}
	\score {

		\new Staff {
			\clef "bass"
			\psi
		}
	}
}
