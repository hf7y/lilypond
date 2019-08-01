\version "2.18.2"

fourMeasuresCanon = <<
	\time 4/4
	\tempo 4 = 134

	\new Voice {
		\voiceOne
		\relative c'' {
			s4 | s1 | s | s |
			s  | s  | s | s |
			r2. fis4\( | e a cis,2\) | r2. d4\( | d  e fis g |
			fis1       | b\)         | a\(      | e          |
			d\)        | cis\(       | b        | a\)        |
			g4\( a b cis| d e fis g\)| f\( e d c| bes a g a  |
			fis1\) r r r
			r r r r
			r r r r
			r r r r
			

			r2. fis'4\( | e a a2\)    | r2. a4\( | b a fis e |
			e1                | d\)         | f\(      | e         |		
		}
	}
	
	
	\new Voice {
		\relative c' {
			\partial 4 fis4\( | e a a2\)    | r2. a4\( | b a fis e |
			e1                | d\)         | f\(      | e         |		
			
			\voiceTwo	
			d\)               | a'\(        | fis      | b\)           |
			g4\( a  b  cis    | d e fis g\) | f\( e d c| bes   a g a   |
			fis2\)  r2        | e4\( a a2\) | r1       |fis4\( e g fis |
			e1                | fis\)       | g\(      | cis,          |
			d1 | r r r |
			r r r r
			r r r r
			r r r r
			
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c' {
			    r4 | r1         | r        | r         | 
			r2. a4\( | g bes bes2\) | r2. bes4\( | c bes a g |
			fis1\)   | cis'\(       | d          | cis       |
			b\)      | g\(          | c          | cis\)     |
			
			\voiceOne
			a4 \( b cis d | g, a b cis\) | fis,\( g a b | e, fis g a | 
			b2\)    r     | a4 cis cis2  | r1           | e,4\( d f g  |
			a1\)          | r r r
			r r r r
			r r r r
			r r r r
		}
	}

	\new Voice {
		\change Staff = "down"
		\voiceTwo
		\relative c, {
			s4 | s1 | s | s |
			s  | s  | s | s |
			s  | s  | s | s |
			r2. g'4\( | fis b d2\) | r2. d4\( | e d f e |
			d1\)     | r r r 
			r r r r
			r r r r
			r r r r
			r r r r
			r r r r
			
			\tuplet 3/2 { d2 d d } |
			\tuplet 3/2 { d2 d d } |
			\tuplet 3/2 { d2 d d } |
			\tuplet 3/2 { d2 d d } |
		
			\tuplet 3/2 { g,2 g g } |
			\tuplet 3/2 { g2 g g } |
			\tuplet 3/2 { g2 g g } |
			\tuplet 3/2 { g2 g g } |
		
			\tuplet 3/2 { d'2 d d } |
			\tuplet 3/2 { d2 d d } |
			\tuplet 3/2 { d2 d d } |
			\tuplet 3/2 { d2 d d } |
		
			\tuplet 3/2 { g,2 g g } |
			\tuplet 3/2 { g2 g g } |
			\tuplet 3/2 { g2 g g } |
			\tuplet 3/2 { g2 g g } |
		
		}	
	}
>>

firstFiveC = <<
	\time 12/8
	\new Voice {
		\change Staff = "up"
		\key d \minor
		\relative c'' {
			a4.\( d, a' c  | a\)
			g   \( d  g  |  c g\)
			a   \( d, |  a' c a\)
			g   \( |  d  g  c g\)

			a4.\( d, a' c  | a\)
			g  \( d  g  |  c g\)
			a  \( d, |  a' c a\)
			g  \( |  d  e  f g\)

			a8.\( a d, d  a' a c c|a a\)
			g  \( g d  d  g  g|c c g g\)
			a  \( a d, d| a' a c c a a\)
			g  \( g|d  d  g  g c c g g\)

			a8.\( a d, d  a' a c c|a a\)
			g  \( g d  d  g  g|c c g g\)
			a  \( a d, d| a' a c c a a\)
			g  \( g|d  d  e  e f f g g\)

			a8\( a a d, d d a' a a c c c|a a a\)
			g \( g g d  d d g  g g|c c c g g g\)
			a \( a a d, d d|a' a a c c c a a a\)
			g \( g|g d  d d e  e e f f f g g g\)
		}
	}

	\new Voice {
		\change Staff = "down"
		\key d \minor
		\relative c' {
			bes1.\laissezVibrer | s | s | s | s |
			bes1.\laissezVibrer | s | s2. bes2.~ | bes1.\laissezVibrer | s |
			bes1.\laissezVibrer | s1 bes2~ | bes1.\laissezVibrer | s2 bes1~ | bes1.\laissezVibrer |
			bes1.~              | bes4. bes4.~ bes2.~ | bes2. bes2.~ | bes2.~ bes4. bes4.~ | bes1. |
			bes1.               | bes1. | bes1. | bes1. |a1. |
			}
	}
>>
vR = { \oneVoice r8. \voiceOne }

secondFiveC = <<
	\new Voice {
		\change Staff = "up"
		\key fis \minor
		\relative c'' {
			r4. a8 a a a a a a a a |
			\voiceOne
			\repeat unfold 3 {
				\repeat unfold 4 {
					a8 a a
				}
			}

			a8 a a a' a a a a a a a a |
			
			\oneVoice r4. \voiceOne a16. a a a a a a a a a a a |
			\voiceOne
			\repeat unfold 3 {
				\repeat unfold 4 {
					a16. a a a
				}
			}
			a16. a a a a' a a a a a a a a a a a |

			\ottava #1
			cis,16. cis' cis, cis' fis,, fis' fis, fis' cis  cis' cis, cis' e, e' e, e' cis, cis' cis, cis'
			b,      b'   b,   b'   fis,  fis' fis, fis' b,   b'   b,   b'   e, e' e, e' b,   b'   b,   b'
		
			r8 < cis, cis' > < cis cis'> r8 < fis, fis' > < fis fis' > r8 < cis' cis'> < cis cis' > r8 < e e' > < e e'> r8 < cis cis'> < cis cis' >
			r8 < b    b'   > < b   b'  > r8 < fis  fis' > < fis fis' > r8 < b    b'  > < b   b'   > r8 < e e' > < e e'> r8 < b   b'  > < b   b'   >
			

			c16.  c' c, c' f, f' f, f' c, c' c, c' e, e' e, e' c, c' c, c'
			b,      b'   b,   b'   fis,  fis' fis, fis' b,   b'   b,   b'   e, e' e, e' b,   b'   b,   b'
			r8 < cis, cis' > < cis cis'> r8 < fis, fis' > < fis fis' > r8 < cis' cis'> < cis cis' > r8 < e e' > < e e'> r8 < cis cis'> < cis cis' >
			r8 < b    b'   > < b   b'  > r8 < fis  fis' > < fis fis' > r8 < b    b'  > < b   b'   > r8 < e e' > < e e'> r8 < b   b'  > < b   b'   >
		
			\ottava #0

			\vR < d, fis cis' >8. \vR < a cis fis > \vR < d fis cis' > \vR < fis cis' e > \vR < d fis cis' >
			\vR < d fis b    > \vR < a cis fis > \vR < d fis b    > \vR < fis cis' e > \vR < d fis b    >
			\vR < d fis cis' > \vR < a cis fis > \vR < d fis cis' > \vR < fis cis' e > \vR < d fis cis' >
			\vR < d fis b    > \vR < a cis fis > \vR < b e gis > \vR < cis fis a > \vR < cis eis b'    >
		}
	}

	\new Voice {
		\change Staff = "up"
		\voiceTwo
		\key fis \minor
		\relative c' {
			s4.   fis\( cis e cis\)
			b    \( fis' b,   e b  \)
			cis  \( fis cis e cis\)
			b    \( fis' b  e b  \)
			
			s4.   fis'\( cis e cis\)
			b     \( fis' b,   e b  \)
			cis   \( fis cis e cis\)
			b     \( fis' gis r b  \)
		}

		s1. * 10 

		\relative c' {
			s8. < d a' > s < d gis > s < d a' > s < d b' > s < d a' >
			s8. < b a' > s < b gis' > s < b a' > s < b b' > s < b a' >
			s8. < d a' > s < d gis > s < d a' > s < d b' > s < d a' >
			s8. < b a' > s < b gis' > s < b a' > s < b b' > s < cis a' >
		}
	}

	\new Voice {
		\change Staff = "down"
		\key fis \minor
		\relative c {
			r2. d    | d,2.  d'  | d,   d'  | d,   d'  | d,   d'  | 
			r1    d2 | d,  d' d, | d' d, d' | d, d' d, | d' d, d' |
			d4. d, a' gis' | e  d d, a' | gis' e  d d, | a' gis' e d | d, a' gis' e |			
			d4. \clef "treble" d' a' gis' | e  d d, a' | gis' e  d d | d  d  d    d | d d d d | \clef "bass"

		     	< d,,, d' >4. < d d' > < d d' > < d d' >
		     	< d    d' >4. < d d' > < d d' > < d d' >
		     	< d    d' >4. < d d' > < d d' > < d d' >
		     	< d    d' >4. < d d' > < d d' > < d d' >
		     	< d    d' >4. < d d' > < d d' > < eis cis' >
		}
	}
>>

thirdThreeC = <<
	\new Voice {
		\change Staff = "up"
		\key bes \minor
	}

	\new Voice {

	}

	\new Voice {
		\change Staff = "down"
		\key bes \minor
	}
>>

\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
			\key d \minor
			\fourMeasuresCanon
			\bar "."
			\firstFiveC
			\bar "||"
			\secondFiveC
			\bar "||"
			\thirdThreeC
		}

		\new Staff = "down" {
			\key d \major
			\clef "bass"
		}
	>>
}
