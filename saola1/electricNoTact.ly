\version "2.18.2"

global = {
	\tempo 4 = 60
}

middleCRX = {
	\autochange 
	\relative c' {
		c4\(( b4. d4. )   |
		c4  ( b4. e4. )   |
		c4  ( b4. \appoggiatura { a16 } a'4. )   | %first abberation%
		c,4 ( b4. g4. \)) |
		
		\time 5/4 c2\(( b4. \appoggiatura { d16 } d'4. )   |
		\time 4/4 c4  ( b4. e4. )   |
		          c4  ( \appoggiatura { b,16 } b'4. a4. )   | 
		c,4 ( b4. g4. \)) |
	 

		\time 5/4 c,2 \(( \appoggiatura { b16 } b'4. \appoggiatura { d16 } d'4. ) |
		\time 4/4 c4   ( b4. e4. ) |	
		c4 ( b4. \appoggiatura { a,,16 a' } a'4. ) |
		c4 ( b4. \appoggiatura { g,16 } g'4. \)) |
	}
}

polywbasso = <<
	\new Voice {
		\change Staff = "up"
		\relative c'' {
			\ottava #1

			\time 6/4 c2.\(( b4. \appoggiatura { d16 } d'4. )   |
			\time 4/4 c4  ( b4. e4. )   |
			\time 9/8 c4  ( \appoggiatura { b,16 } b'2 a4. )   | 
			\time 7/8 c,8 ( b4. g4. \)) |
		
			\ottava #0
				\time 6/4 c,2. \(( \appoggiatura { b16 } b'4. 
				\ottava #1 
					\appoggiatura { d16 } d'4. ) |
			\time 4/4 c4  ( b4. e4. ) |	
			\time 9/8 c4 ( b2 \appoggiatura { \change Staff = "down" \once \stemUp a,,16 a' } \change Staff = "up"  a'4. ) |
			\time 7/8 \grace { s16 } c8 ( b4. \appoggiatura { g,16 } g'4. \)) |
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c {
			\time 6/4 c4 r2 r8 c4 r4. 
			\time 4/4 c4 r8 c4 r4.
			\time 9/8 c4 r8 c4. r4.
			\time 7/8 c8 r8 c4 r4.


			\time 6/4 c4 r2 r8 c4 r4. 
			\time 4/4 c4 r8 c4 r4.
				  c4 r8 c4. r4.
			\appoggiatura { c,16 } c'8 r8 c8 c8 a'4. 

		}
	}
>>

pwbmidc = <<

	\new Voice {
		\change Staff = "up"
		\relative c''' {
			\time 7/4 c2 c, \(( \appoggiatura { b16 } b'4. \appoggiatura { d16 } d'4. ) |
			\time 4/4 c,4  ( b4. e4. ) |	
			\time 9/8 c4 ( b2 \appoggiatura { a,16 a' } \change Staff = "up"  a'4. ) |
			\time 7/8 c8 ( b4. \ottava #2 \appoggiatura { g16 } g'4. \)) |
		}
	}

	\new Voice  {
		\change Staff = "down"
		%\stemUp
		\relative c' {
			\time 7/4 r1 s4. d4.
			\time 4/4 r4 s4. e4.
			\time 9/8 r4 s2  a,4.
			\time 7/8 r8 s4. g4.
		}
	}

	\new Voice {
		\change Staff = "down"
		%\stemDown
		\relative c, {
			\time 7/4 s1 r8 f8 f s4. 
			\time 4/4 s4 r8 f8 f s4.
			\time 9/8 s4 r8 f,8 f' f' s4.
			\time 7/8 s8 r8 f,8 f, s4.
		}
	}
>>

lyricm = <<

	\bar "||"
	\new Voice {
		\change Staff = "up"
		\stemUp
		\relative c'''' {
			\ottava #2
			\time 4/4 c1 \laissezVibrer
			s1
			c1 \laissezVibrer
			s1

			b1 \laissezVibrer
			s1

			r4 b2. \laissezVibrer
			s1

			r2 d2 \laissezVibrer
			s1

			r4 \appoggiatura { d,16 } d'2. \laissezVibrer
			s1

			\appoggiatura { c,16 } c'2. \appoggiatura { b,16 } b'4 \laissezVibrer
			s1

			r8 \appoggiatura { e,,16 } e'8 
			r8 \appoggiatura { e16 } e'8 \laissezVibrer
			s2

			\appoggiatura { c,16 } c'4 \appoggiatura { b,16 b' }  b,4. a'4. \laissezVibrer
			
			\appoggiatura { c,,16 } c'2. \appoggiatura { c16 } c'4 \laissezVibrer
			r2 \appoggiatura { b16 } b'2 \laissezVibrer

			r8 \appoggiatura { g,16 } g'8 ~ g4. \appoggiatura { c,,16 } c'4 \appoggiatura { b16 } b'8 |
			\appoggiatura { d,,16 } d'8 \appoggiatura { c,16 } c'8 
				\appoggiatura { b,16 b' } b,4 r16 \appoggiatura { e16 } e,16 \appoggiatura { c'16 } c,16
				\appoggiatura { b'16 } b,16 \appoggiatura { a''16 a, } a,16 \appoggiatura { c''16 c, } c,16 
					\appoggiatura { b'''16 b, b, } b,16 \appoggiatura { g16 g' g' } g'16 |

		}
	}

	\new Voice {
		\change Staff = "mid"
		\relative c' {
			\time 4/4 
			r1
			r2 r4 r16 b( a c | 
			b8. ) e,16 ( a8. e16 g2)~ | 
			g1 \laissezVibrer |

			r1
			r2 r4 r16 b( a c | 
			b8 e) r2 a,8( d) |
			r1 |

			r1
			r2 r4 r16 b( a c | 
			b8 e) r2 a,8( d) |
			r2. r8 g,16( fis') |

			r1
			r2 r4 r16 b,( a c | 
			b4 e4) r4 a,8( d) |
			r2. r8 g,16( fis') |

			r16 b,( a c ) r8 b16( a c4) r4 |
			r2 r8 b( a c |
			b16 e ) r8 a,16 ( d ) r g, ( g' ) r r8 \appoggiatura { e16 } e'4

			r4 < b, b' >8 < a, a'> < c c' > 
				< b b' >16 < e' e' > < a,, a' > < d d' > < g, g' > < g, g' >
		}
	}

	\new Voice {
		\change Staff = "down"
		\stemDown
		\relative c, {
			\ottava #-1
			\time 4/4 c1 \laissezVibrer
			s1
			c1 \laissezVibrer
			s1
	
			c1 \laissezVibrer
			s1

			c1 \laissezVibrer
			s1
			
			f1 \laissezVibrer
			s1

			\appoggiatura { f,16 } f'4
			\appoggiatura { f,16 } f'4. ~ f4. \laissezVibrer 
			s1

			r4 \appoggiatura { f,16 } f'2. \laissezVibrer
			s1

			\appoggiatura { f,16 } f'4 
			\appoggiatura { f,16 } f'4. ~ f4. \laissezVibrer 
		
			r4 r8 f,8 f8 r4.

			r4 \appoggiatura { f16 } f'4. ~ f4. \laissezVibrer

			r4 g,2.

			r4 r8 \appoggiatura { g16 } g'4 r4. | 
			g,4 r8 g8 f
		}
	}

>>

fin = <<
	\new Voice {
		\change Staff = "up"
			\relative c'''' {
				\ottava #2
				< c c'>4  b4. d4. | 
				< c c'>4  b4. e,4. | 
				\ottava #1
				c4 b4. a,4. |
				\ottava #0
				c4 b4. g4. | 
				
				c4 b4. d4. |
				c4 b4. e4. |
				c4 b4. a4. |
				c4 b4. g4. |
			}
	}

	\new Voice {
		\change Staff = "down"
		\relative c,, {
			\ottava #-1
			c1 | r4 b'4.~ b4. | 
			\ottava #0
			r4 r4. a'4. | r4 r4. r4. | 
		}
	}
>>
\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
			\middleCRX
			\polywbasso
			\pwbmidc
			s1 * 20
			\fin
		}

		\new Staff = "mid" {
			\clef "bass"
			s1*24 s4*9
			\lyricm
		}

		\new Staff = "down" {
			\clef "bass"
		}
	>>
}
