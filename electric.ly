\version "2.18.2"

freewrite = <<

	\relative c' {
		c16 b c d~	d c b c		e8 c16 b	c a'8 c,16	|
		b c g'8		r16 c, b c	d8. c16		b c e8		|
		c16 b c a'~	a c b c 	g8. r16		r4		|

		c16 b c c,	d'4~		d8 c16 b	c c, e'8 	|
		c16 b c c, 	a'8 c16 b	c c,8 g'16~	g r c b  	|
		c c, d'8	c16 b c c,	e'4		c8  b16 c	|
		c, a'8.		c16 b c8	c,16 g8.	r4		|

		c8 b16 c	d8 c16 b 	c e8.		c16 b8 c16	|
		a4		c16 b c8	g4		r4		|
	}
>>


freewritetwo = <<

	\new Voice
	\relative c''
	{
		\voiceOne
		\change Staff = "up"
		r8 c r4 b8 r d c | r b r4 e8 r c b | r a r c r4 b8 g | r c r4 b8 r d c |
		r b r4 e8 r c b | r a r4 c8 r b g | r c r b r4 d8 c | r b r4 e8 r c b | 
		r a r4 c8 r b g | r c r4 b8 r d c | r b r e r4 c8 b | r a r4 c8 r b g |	
	}

	\new Voice
	\relative c'
	{
		\voiceThree
		\change Staff = "down"
		c4 b4. d | c4 b4. e | c4 b4. a | c4 b4. g |
		c4 b4. d | c4 b4. e | c4 b4. a | c4 b4. g |
		c4 b4. d | c4 b4. e | c4 b4. a | c4 b4. g |
	}

	\new Voice
	\relative c
	{
		\voiceTwo
		\change Staff = "down"
		r4. c8~ c2 | r4. c8~ c2 | r2  c2 | r4. c8~ c2 |
		r4. c8~ c2 | r4. c8~ c2 | r2  c2 | r4. c8~ c2 |
		r4. c8~ c2 | r4. c8~ c2 | r2  c2 | r4. c8~ c2 |
	}
>>

middleCTheme = {
	\relative c' {
	c4\(( b4. d) | c4( b4. e) | c4( b4. a) | c4( b4. g\)) |
	}
}


bassC = {
	\relative c {
	r4. c8~ c2 | r4. c8~ c2 | r2  c2 | r4. c8~ c2 |
	}
}

firstOutline = {
	{
		\voiceOne
		\repeat unfold 5
		\middleCTheme
	}

	\bar "||"

	<<
		\new Voice
		{
			\change Staff = "down"
			\voiceOne
			\repeat unfold 4
			\middleCTheme
			
			\relative c' {
			c4\(( b4. d) | c4( b4. e) | c4( b4. a') | c,4( b4. g'\)) |
			}
		}

		\new Voice
		{
			\change Staff = "down"		
			\voiceTwo
			\repeat unfold 4
			\bassC
			
			\oneVoice
			\relative c {
			r4. c8~ c2 | r4. c8~ c2 | r2  c'2 | r1 |
			}
		}
	>>

	\bar "||"

	\autochange
	\relative c' {
		c,4\(( b'4. d) | c4( b4. e) | c,4( b'4. a') | c4( b,4. g'\)) |
		c4\(( b4. d) | c,4( b'4. e) | c,,4( b4. a'') | c,,,4( b''4. g''\)) |
	}	

	\change Staff = "down"
	\relative c' {
		c,4\(( b4. d) | c4( b4. e) | c4( b4. a') | c4( b4. g,\)) |	
	}
	\bar "."
}

secondOutline = {
	<<
		\new Voice {
			\change Staff = "up"
			\relative c'' {

				r8 c4.\((~ c2      | r8 b4. ~ b2     | r8 d4. ~ d2     )| r8 c4.(~ c2    \) |
				r8 b4.\( ~ b2      | r8 e4. ~ e2)    | r8 c4.(~ c2      | r8 b4. ~ b2    \) |
				
				r8 a4.\( ~ a4) c4( | r8 b4. ~ b4 g4 )| r8 c4.(~ c4  b4  | r8 d4. ~ d4) c4\)(|
				r8 b4.\( ~ b4  e4 )| r8 c4.(~ c4 b4  | r8 a4. ~ a4) c4( | r8 b4. ~ b4  g4\))|
				
				r8 c4.\((  b4  d4 )| r8 c4.(  b4 e4 )| r8 c4( b8 r4 a') | r8 c,4.( b4  g'\))|
			}
		}

		
		\new Voice {
			\change Staff = "down"
			\voiceOne
			\relative c'{
				\repeat unfold 4
				\middleCTheme
			
				c,4\(( b'4. d) | c,4( b'4. e) | c,4( b'4. a) | c,4( b'4. g\)) |
			}
		}

		\new Voice {
			\change Staff = "down"
			\voiceTwo
			
			\relative c {
				\repeat unfold 2
				\bassC
		
				r4. f8~ f2 | r4. f8~ f2 | r2  f2 | r4. f8~ f2 |
				r4. f8~ f2 | r4. f8~ f2 | r2  f2 | r4. f8~ f2 |
				
				\bassC
			}
		}
	>>

	\bar "||"

	<<
		\new Voice {
			\change Staff = "up"
			\relative c''' {
				
				\ottava #1
				r2 r8 b\(( a c) | b4.( e,8) a4.( e8) | g1~ | g2.\) r4 |
				r2 r8 b\(( a c) | b4 ( e  )  a,(  d)  | g,1~ | g2.\) r4 | 
				
				r2 r8 b\(( a c) | b4. e,8 a4. e'8 | g,1~ | g2.\) r4 |
				r2 r8 b\(( a c) | b4  e  a  d  | g1~ | g2\) 
				
				\ottava #0
			}

		}

		\new Voice {
			\change Staff = "down"
			\relative c, {
				f1\laissezVibrer | s1 | s1 | s1 |
				f1\laissezVibrer | s1 | s1 | s1 |
				f'1\laissezVibrer | s1 | s1 | s1 |
				
				\ottava #-1
				f,,1\laissezVibrer | s1 | s1 \ottava #0 | s2 
			
			}
		}
	>>

	<<

	 	\new Voice {
			\change Staff = "up"
			\relative c''' {
				\voiceOne 
					r8 b\(( a c)| b4.( e,8) a4.( e8) | g1\) | s1 | s1 |
			}
		}

		\new Voice {
			\change Staff = "up"
			\relative c'' {
				\voiceTwo
					s2 | r2  r8 b\(( a c) | b4( e) a,( d) | g,1\) | s1 |
				
				\oneVoice
				\bar "||"
					r8 c4.\((~ c4 b4~ \bar "!" | \time 2/4 b2 |
					\time 4/4 r8 d4.~ d2) \bar "!" | \time 1/4 r8 c8( | 
					\time 4/4 r8 b4.~ b2  \bar "!" | \time 1/4 r8 e8) |
					\time 4/4 r2 r8 c4.( \bar "!" | r8 b8~ b2 r4|

				\relative c' {
					\tuplet 5/4 {c16 a') \change Staff = "down" b, a, a'} \change Staff = "up" d2. |
					\tuplet 5/4 {c16 c'( \change Staff = "down" b, f, f'} \change Staff = "up"  e'2. |
					\tuplet 5/4 {c16 b' \change Staff = "down" b, g, g'} a2. |
					\tuplet 3/2 {\change Staff = "up" c8 g'\)) \change Staff = "down" b,} g,,8 g'4. g'4 |
				}
			}
		}

		\new Voice {
			\change Staff = "down"
			\relative c' {
				\voiceOne
					s2 | s1 | r2  r8 b\(( a c) | b4.( e,8) a4.( e8) | g1\) |
				
				\bar "||"
					c4\(( b4. d4.~ | \time 2/4 d2) |
					\time 4/4 c4( b4.~ b4. | \time 1/4 e4) | 
					\time 4/4 c4( b4.~ b4. | \time 1/4 a4) |
					\time 4/4 c2.( b4 | g2.\)) r4 | 
			}
		}

		\new Voice {
			\change Staff = "down"
			\relative c {
				\voiceTwo
					s2 | s1 | s1 | r2 r8 b\(( a c)  | b4( e) a,( d~ |
				
				\bar "||"
					d4.) g8~ g2~ | \time 2/4 g2\) |
					\time 4/4 r4. g8~ g2~ \time 1/4 g4 
					\time 4/4 r2 g2~ | \time 1/4 g4
					\time 4/4 r2.. g8~ | g2. r4 |
			}
		}
	>>

	\bar "."

	<<
		\new Voice {
			\change Staff = "up"
			\relative c'' {
			}
		}

		\new Voice {
			\change Staff = "down"
			\relative c' {
				\voiceOne

			}
		}

		\new Voice {
			\change Staff = "down"
			\relative c {
				\voiceTwo
			}

		}
	>>



}

thirdOutline = {
	
	\change Staff = "up"
	\autochange
	\relative c'' {
		c4\(( b4. d,) | c'4( b4. e,) | c'4( b4. a,) | c'4( b4. g,\)) |
		c'4\(( b4. d,,) | c''4( b4. e,,) | c''4( b4. a,) | c'4( b4. g,\)) |
		c'4\(( b4. d,,) | c''4( b4. e,,) | c''4( b4. a,,) | c''4( b4. g,,\)) |
	}

	\bar "||"
	
	<<
		\new Voice {
			\change Staff = "up"
			\voiceOne
			\relative c''' {
				r4. c8~ c2 | r4. c8~ c2 | c2 c2 | r4. c8~ c2 | 
				r4. c8~ c2 | r4. c8~ c2 | c2 c2 | r4. c8~ c2 | 
				r4. c8~ c2 | r4. c8~ c2 | c2 c2 | r4. c8~ c2 | 
			}
		}
		
		\autochange
		\new Voice {
			\voiceTwo
			\relative c'' {
				c4\(( b4. d,,,) | c'''4( b4. e,,,) | c'''4( b4. a,,) | c''4( b4. g,,\)) |
				c''4\(( b4. d,,,) | c'''4( b4. e,,,) | c'''4( b4. 
				\change Staff = "down" \ottava #-1                a,,,) | c'''4( b4. g,,,\)) |
				c'''4\(( b4. d,,,,) | c''''4( b4. e,,,,) | c''''4( b4. a,,,) | c'''4( b4. g,,,\)) |
				\ottava #0
			}
		}

	>>

	\bar "||"

	\relative c'
	{
		\voiceOne
		\middleCTheme
		\middleCTheme

		\autochange
		f'1 | c,,1 |
	}
	
	\bar "|."
}


\score {
	\new PianoStaff <<
	
		\new Staff = "up" {
			\clef "treble"
			s1*102
			\thirdOutline
		}

		\new Staff = "down" {
			\clef "bass"
			\firstOutline
			\secondOutline
			s1*34	
		}
	>>

}

