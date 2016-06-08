\version "2.18.2"

ud = #(define-music-function
		(parser location dur note)
		(ly:pitch? ly:duration?)
	#{
		
	#})
opening = <<

	\tempo 4 = 60
	\new Voice = "tactus" {
		\change Staff = "tactus"
		s1 * 4 
		s1 * 4 

		\relative c''' {
			\ottava #1
			r8 c8 r4. r8 a a' | r4 r4 b,8 r8 b'8 b,8 | 
			r4 r4. r8 a16 a' g, g' | r16 g, g' g, r16 fis' fis, d' d, b' r16 \change Staff = "tactus" b, g' g, f' f, |
			
			r8 c'16 c'16 r4. r4. | r4 r8 d,16 d' fis, fis' r8 gis, gis' | 
			r4 r4. r8 \tuplet 3/2 { a,16 a' a, a' a, a' }  | r8 \tuplet 3/2 { r8 bes,16 } \tuplet 3/2 { r16 b' b, } r4 r4. |

			r8 \tuplet 3/2 { c,,16 c' e, } \tuplet 3/2 { r16 fis' fis, a' a, b' } r8 r8 c, c' | 
			r4 r8 \tuplet 3/2 { d,16 d' fis, fis' a, a' } r16 cis, cis' e, e' g, |
			r4 r4. r8 a,32 a' r16 e32 e' r16 |
			r1 |

			r4 r4 d,32 d' r16 fis,32 fis' r16 a,32 a' r16 c,32 c' r16 |
			e,32 e, g'16 g,32 bes' r16 b32 b, d' d, fis'16 fis,32 a' a,16 b' r8. b,,,32 b' r16 b'32 b' |
			\repeat tremolo 8 { c,,,,32 c' } 
			\repeat tremolo 8 { c32 c' } 
			\repeat tremolo 8 { c32 c' } 
			<< { c2 \trill } \\ { r4 d,8 d } >>

			< c c' >4 < b b'> 4. d4. | 
			< c c' >4 < b b'> 4. e4. | 
			< c c' >4 < b b'> 4. < a a' >4. | 
			< c c' >4 < b b'> 4. s4. |

			\ottava #0
			c,,,4 b4. d4. |
			c4 b4. e4. |
			c4 b4. a4. |
			c4 b4. g4. |
		}
	}

	\new Voice = "sixteenths" {
		\change Staff = "up"
		\voiceOne
		\relative c'' {
			s1 | s1 | r4 r4. r16 a8. s8 | r1 | 
			s1 *4

			r16 c8. s2. | r4 r16 b8. s2 | r4 r4. r16 a8. s8 | s1 |
			r16 c,8. s2. | r4 r16 b'8. s2 | r4 r4. r16 a8. s8 | s1 |
			r16 c,,8. s2. | r4 r16 b'8. s2 | r4 r4. r16 a'16 r16 cis,32 cis' r16 b32 b' | s1 | \bar "||"

			r4 r4 r16 a32 a' r16 d,,32 d' r16 c,32 c' r16 d,32 d' |
			\tuplet 3/2 { r8 c c, } s4. r8 e, e' |
			r16 c,16 e, e' r4 < a, a' >8 \tuplet 3/2 { r16 a cis, } \tuplet 3/2 { cis' e, e' } \tuplet 3/2 { g, g' a, }
			c'8 c,8 b''8 s4 \tuplet 3/2 { r16 g, b } \change Staff = "down" \tuplet 3/2 { b, d d, } \tuplet 3/2 { f f, g, }
		
			\ottava #-1

			c,2~ c8 d4. | 
			c2~ c8 e4. | 
			c2~ c8 a4. | 
			c2~ c8 g''4. | 
	}
			}

	
	\new Voice = "cbtheme" {
		\change Staff = "up"
		\voiceTwo
		\relative c' {
			c4\(  b4. d4. | c4 b4. e4. | c4 b4. a4. | c4  b4. g4.\) |
			c4\(  b4. d4. | c4 b4. e4. | c4 b4. a4. | c4  b4. g4.\) |
			
			c4\(  b4. d4. | c4 b4. e4. | c4 b4. a4. | c4  b4. g4.\) |
			c,4\(  b'4. d4. | c4 b4. e4. | c4 b4. a4. | c4  b4. g4.\) |
			c,,4\(  b''4. d4. | c,4 b4. e'4. | c'4 b4. a,4. | c'4  b4. g4.\) |
			
			c'4\(  b4. s4. | c,4 b'4. e,,,4. | c4 b'4. a,4. | c4  b''4. g'4.\) |
			
		}
	}

	\new Voice = "basso" {
		\change Staff = "down"
		s1 * 20
		\relative c { 
			r4 r8 c4 r4. |
			r4 r8 c4 r4. |
			r4 r8 f,4 r4. |
			r4 r8 g8 g, r4. |
		}
	}
>>

\score {
	\new PianoStaff <<
		\new Staff = "tactus" {
			\clef "treble"
		}

		\new Staff = "up" {
			\clef "treble"
			\opening
		}

		\new Staff = "down" {
			\clef "bass"
			s1* 40
		}
	>>

	\midi {}
}
