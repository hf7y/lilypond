\version "2.18.2"

BOne = {
	
	\tempo 4=60
%Section One of Five, Twelve Measures
	\autochange {
		\time 4/2

		c2^\p\( < a c' d' >  d''1   |
		c2      < c' d' e'>  e''1   |
		c2      < d f  a >   a'1    |
		c2      < f a c' >   c''1\) |

		c2\( < b c' d' >  d''1   |
		c2   < c' d' e'>  e''1   |
		c2   < e g  b >   a'1    |
		c2   < g b c' >   c''1\) |

		c2\( < a c' d' >  d''1   |
		c2   < c' d' e'>  e''1   |
		c2   < d f  a >   a'1    |
		c2   < f a c' >   c''1\) |
	}

%Section Two of Five, Twelve Measures
	\autochange {

		c2^\pp\( < a c' d' >  d''1   |
		c2       < c' d' e'>  e''1   |
		c1                   < e g b>2 a'2|
		c2       < g b c' >   c''1\) |

		c2\( < b c' d' >  d''1   |
		c2   < c' d' e'>  e''1   |
		c1               < d f a>2 a'2|
		c2   < f a c' >   c''1\) |

		c2\( < a c' d' >  d''1   |
		c2   < c' d' e'>  e''1   |
		c1               < e g b >4 a'2.|
		c2   < g b c' >   c''1\) |
	}

%Section Three of Five, Twelve Measures
	\autochange {

		c,2^\p\( < a c' d' >  f''1   |
		c2       < c' d' e'>  g''1   |
		c1                   < d f a>2 aes''2|
		c2       < f a c' >   bes''1\) |

		c,2\( < b c' d' > f''1   |
		c2   < c' d' e'>  g''1   |
		c1               < e g b>2 aes''2|
		c2   < g b c' >   bes''1\) |

		c,2\( < a c' d' > f''1   |
		c2   < c' d' e'>  g''1   |
		c1               < d f a >4 aes''2.|
		c2   < f a c' >   bes''1\) |
	}

%Section Four of Five, Twelve Measures
	\autochange {

		c'2\pp\( < bes, c d >         f''1   |
		c'2       < c d e>          g''1   |
		c'1                        < e, g, bes,>2 a''2|
		c'2       < g, bes, c >   b''1\) |

		c'2\( < aes, c d >  f''1   |
		c'2   < c d e>    g''1   |
		c'1               < d, f, aes,>2 a''2|
		c'2   < f, aes, c> b''1\) |

		c'2\( < bes, c d >  f''1   |
		c'2   < c d e>    g''1   |
		c'1               < e, g, bes, >4 a''2.|
		c'2   < g, bes, c> b''1\) |
	}

%Section Five of Five, Twelve Measures
	\autochange {

		c,2^\p\( < a c' d' >  d'''1   |
		c2      < c' d' e'>  e'''1   |
		c2      < d f  a >   a''1    |
		c,2     < f a c' >   c'''1\) |

		c2\( < b c' d' >  d'''1   |
		c,2  < c' d' e'>  e'''1   |
		c2   < e g  b >   a''1    |
		c'2  < g b c' >   c'''1\) |

		c,2\( < a c' d' >  d'''1   |
		c,2   < c' d' e'>  e'''1   |
		c,2   < d f  a >   a'''1    |
		c,,2  < f a c' >   c''''1\) |
	}
	
	\bar "."
}

COne = {

	<<
		\new Voice {
			\change Staff = "up"
			\relative c'''' {
				fis1  fis | g  g | e  e | f   f  |	
				fis1  fis,| g' g | e  e | f   f,,|	
				fis1  fis | g  g | e  e | f   f  |	
				fis1  fis,| g' g | e  e | f   f  |	
				
				s1                                     s    |
				s                                      s    |
				r                                      e16 g a b d2. | 
				s1                                     s    |
				
				e,,16 g b c  d e g a  b d fis8~  fis4~ fis1 |
				e,,16 g b c  d e g a  b d fis g  b4~   b1   |
				s                                      e,16 g a b d2. | 
				e,16  g b c  d e8.~   e2~              e1             |
			
			}
		}

		\new Voice {
			\change Staff = "down"
			\relative c,, {
				s1*8
				s1*8
				
				e16   g b c  d e g a  b d fis8~  fis4~      fis1            |
				r1                                          r1              |
				r1                                          e,16 g a b d2.  |
				r1                                          r1              |
				
				e,,16 g b c  d e g a  b d fis8~  fis4~      fis1            |
				e,,16 g b c  d e g a  b d fis g  b4~        b1              |
				r1                                          e,16 g a b d2.  |
				e,,16 g b c  d e8.~   e2~                   e1              |

				fis,,1  fis | g  g | e  e | f   f  |	
				fis1  fis | g  g | e  e | f   f  |	
			}
		}
	>>

	\bar "||"
	\time 12/8

	<<
		\new Voice {
			\change Staff = "up"
			s1.*16
			\voiceOne
			\relative c'' {
				< d d' >1.    < e  e' >  |
				< a, a'>1.    < c  c' >  |
				< d  d'>1.    < e  e' >  |
				< a, a'>1.    < c  c' >  |
				
				< fis fis'>1. < g   g'  >|
				< f   f'  >2. < e   e'  > 
				< d   d'  >2. < c   c'  >
				
				< fis fis'>1. < g   g'  >|
				< f   f'  >4. < e   e'  > 
				< d   d'  >4. < c   c'  >
				< f   f'  >4. < e   e'  >
				< d   d'  >4. < cis cis'>
			
				< d d' >1.~   < d  d' >  |
				s1.           s1.        |

				< d d' >1.    < e  e' >  |
				< a, a'>1.    < c  c' >  |
				< d  d'>1.    < e  e' >  |
				< a, a'>1.    < c  c' >  |
				< d  d'>1.    < e  e' >  |
				< a, a'>1.    < c  c' >  |
			}
		}

		\new Voice {
			\change Staff = "up"
			\voiceOne
			\relative c' {
				\repeat unfold 4 {
					s16 s s s d e g e d s s s
				}

				{
					s16 s s s d e g e d s s s
					s16 s s s d e g e d s s s
					s16 s s s d e g e d s s s
					s2.
				}

				\repeat unfold 4 {
					s16 s s s d e g e d s s s
				}
				
				{
					s16 s s s d e g e d s s s
					s16 s s s d e g e d s s s
					s16 s s s d e g e d s s s
					g32 e d g e d g e d g e d g e d g e d g e d s s s
				}

				% end first 4 or 8  measures

				{
					s16 s s s d e g e d s s s
					s16 s s s d e g e d s s s
					s16 s s s d e g e d s s s
					s16 s s s d e \tuplet 3/2 { g e c } \tuplet 3/2 { e \change Staff = "down" c a } s s 
				}

				{
					\change Staff = "up"	
					s16 s s s d e g e d s s s
					s16 s s s d e g e d s s s
					s16 s s s d e g e d s s s
					s2.
				}

				\repeat unfold 4 {
					s16 s s s d e g e d s s s
				}
				
				{
					s16 s s s d e g e d s s s
					s16 s s s d e g e d s s s
					s16 s s s d e g e d s s s
					g32 e d g e d g e d g e d g e d g e d g e d s s s
				}

				% end measure 8

				\voiceTwo
					r8.         g32 e d s s s 
				\repeat unfold 7 {
					s s s s d e g   e d s s s
				}

				\repeat unfold 8 {
					s32 s s s d e g e d s s s
				}

					s4.
				\repeat unfold 15 {
					s32 s s s d e g e d s s s
				}

				% begin e section

				{
					s32 s s s d e g e d s s s
					s32 s s s d e g e d s s s
					s4.
					s4.
				}

				{
					s32 s s s d e g e d s s s
					s32 s s s d e g e d s s s
					s32 s s s d e g e d s s s
					s4.
				}

				{
					s1. | s1.
			
				}

				{
					s32 s s s d e g e d s s s
					s32 s s s d e g e d s s s
					s4.
					s4.
				}

				{
					s32 s s s d e g e d s s s
					s32 s s s d e g e d s s s
					s32 s s s d e g e d s s s
					s4.
				}

				{
					s1. | s1.
			
				}
			}
		}

		\new Voice {
			\change Staff = "down"
			\voiceOne
			\relative c {
				\repeat unfold 4 {
					d16 f a c s s s s s c a f
				}

				{
					d16 f a c s s s s s c a f
					d16 f a c s s s s s c a f
					d16 f a c s s s s s c a f
					d32 f a c d, f a c d, f a c d, f a c d, f a c d, f a c	
				}

				\repeat unfold 4 {
					d,16 f a c s s s s s c a f
				}

				{
					d16 f a c s s s s s c a f
					d16 f a c s s s s s c a f
					d16 f a c s s s s s c a f
					s4. s8. s16. c'32 a f
				}

				{
					d16 f a c s s s s s c a f
					d16 f a c s s s s s c a f
					d16 f a c s s s s s c a f
					d16 f a c s s s s s s \tuplet 3/2 { c a f }
				}

				{
					d16 f a c s s s s s c a f
					d16 f a c s s s s s c a f
					d16 f a c s s s s s c a f
					d32 f a c d, f a c d, f a c d, f a c d, f a c d, f a c	
				}

				\repeat unfold 4 {
					d,16 f a c s s s s s c a f
				}

				{
					d16 f a c s s s s s c a f
					d16 f a c s s s s s c a f
					d16 f a c s s s s s c a f
					s4. s8. s16. c'32 a f
				}

				% end measure 8

					s8.            s16.   c'32 a f
					
				\repeat unfold 7 {	
					d f a c s s    s s s c    a f

				}
				\repeat unfold 8 {
					d32 f a c s s s s s c a f
				}


					d32 f a c d, f a c d, f a c

				\repeat unfold 15 {
					d,32 f a c s s s s s c a f
				}

				% being e section
				{
					e32 g b c s  s s s s  c b g 
					e32 g b c s  s s s s  c b g 
					e   g b c e, g b c e, g b c
					e,  g b c e, g b c e, g b c
				}

				{
					e,32 g b c s  s s s s  c b g 
					e32  g b c s  s s s s  c b g 
					e32  g b c s  s s s s  c b g 
					e    g b c e, g b c e, g b c
				}

				{
					e,   g b c e, g b c e, g b c
					e,   g b c e, g b c e, g b c
					e,   g b c e, g b c e, g b c
					e,   g b c e, g b c e, g b c
				}

				{
					
					e,   g b e, g b e, g b e, g b
					e,   g b e, g b e, g b e, g b
					e,   g b e, g b e, g b e, g b
					e,   g b e, g b e, g b e, g b
				}

				{
					e,32 g b c s  s s s s  c b g 
					e32  g b c s  s s s s  c b g 
					e    g b c e, g b c e, g b c
					e,   g b c e, g b c e, g b c
				}

				{
					e,32 g b c s  s s s s  c b g 
					e32  g b c s  s s s s  c b g 
					e32  g b c s  s s s s  c b g 
					e    g b c e, g b c e, g b c
				}

				{
					e,   g b c e, g b c e, g b c
					e,   g b c e, g b c e, g b c
					e,   g b c e, g b c e, g b c
					e,   g b c e, g b c e, g b c
				}

				{
					
					e,   g b e, g b e, g b e, g b
					e,   g b e, g b e, g b e, g b
					e,   g b e, g b e, g b e, g b
					e,   g b e, g b e, g b e, g b
				}
			}
		}

		\new Voice {
			\change Staff = "down"
			\voiceTwo
			\relative c, {
				d1.~          d  | d~ d | f~            f  | bes,~ bes |
				d1.~          d  | d~ d | f~            f  | bes,~ bes |
				s4. d4.~ d2.~ d1.| s  s | s4. d4.~ d2.~ d1.| s     s   |
			}
		
		}
	>>

	\bar "||"
}
\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
		}
	
		\new Staff = "down" {
			\clef "bass"
			\BOne	
			\COne
		}	
	>>

}
