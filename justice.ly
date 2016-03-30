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
	
	\bar "||"
}

COne = {

	<<
		\new Voice {
			\change Staff = "up"
			\relative c'''' {
				fis1  fis | g  g | e  e | f   f  |	
				fis1  fis | g  g | e  e | f   f,,|	
				fis1  fis | g  g | e  e | f   f  |	
				fis1  fis | g  g | e  e | f   f  |	
				
				
			
			}
		}

		\new Voice {
			\change Staff = "down"
			\relative c,, {
				s1*8
				s1*8
				
				e16   g b c  d e g a  b d fis8~  fis4~      fis1 |
				r1                                          r1   |
				r1                               e,16 g a b d2.  |
				r1                                          r1   |
				
				e,,16   g b c  d e g a  b d fis8~  fis4~      fis1 |
				e,,16 g b c  d e g a  b d fis g  b4~        b1   |
				r1                               e,16 g a b d2.  |
				e,,16 g b c  d e8.~   e2~                   e1   |

				fis,,1  fis | g  g | e  e | f   f  |	
				fis1  fis | g  g | e  e | f   f  |	
			}
		}
	>>
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
