\version "2.18.2"

\paper {
	#(set-paper-size "letter")
	top-margin = 0.5\in
	left-margin = 0.5\in
	right-margin = 0.5\in
	bottom-margin = 0.5\in
}

goUp = { \change Staff = "up" \voiceTwo }
goDown = {\change Staff = "down" \oneVoice }

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
				fis1  fis | g  g | f  f | e   e  |	
				fis1  fis,| g' g | f  f | e   e,,|	
				fis1  fis | g  g | f  f | e   e  |	
				fis1  fis,| g' g | f  f | e   s  |	
				
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
				e,,16 g b c  d e8.~   e2~                   < e e,,>1       |

				fis,,1  fis | g  g | f  f | e   e  |	
				fis1    fis | g  g | f  f | e   e  |	
			}
		}
	>>

	\bar "||"

	\tempo 2. = 60
	\time 24/8

	<<
		\new Voice {
			\change Staff = "up"
			s1.*16
			\voiceOne
			\relative c'' {
				< d d' >1.    \bar "!" < e  e' >  |
				< a, a'>1.    \bar "!" < c  c' >  |
				< d  d'>1.    \bar "!" < e  e' >  |
				< a, a'>1.    \bar "!" < c  c' >  |
				
				< fis fis'>1. \bar "!" < g   g'  >|
				< f   f'  >2.          < e   e'  > \bar "!" 
				< d   d'  >2.          < c   c'  >
				
				< fis fis'>1. \bar "!" < g   g'  >|
				< f   f'  >2.          < e   e'  > \bar "!" 
				< f   f'  >4.          < e   e'  >
				< d   d'  >4.          < c   c'  >
			
				< d d' >1.~   \bar "!" < d  d' >  |
				s             \bar "!" s          |
				\repeat unfold 8 { s1. \bar "!" }

				< fis fis'>1. \bar "!" < g   g'  >|
				< f   f'  >2.          < e   e'  > \bar "!" 
				< f   f'  >4.          < e   e'  >
				< d   d'  >4.          < c   c'  >
			}
		}

		\new Voice {
			\change Staff = "up"
			\voiceOne
			\relative c' {
				\repeat unfold 16 {
					s16 s s s d e g e d s s s
				}

				% end first 4 or 8  measures

				\repeat unfold 16{
					s16 s s s d e g e d s s s
				}	
				% end measure 8

				\voiceTwo
					s2.
				\repeat unfold 14 {
					s32 s s s d e g   e d s s s
				}

					s4.

				\repeat unfold 15 {
					s32 s s s d e g e d s s s
				}

				% begin e section

				\repeat unfold 16 {
					s32 s s s d e g e d s s s
				}

				\repeat unfold 12 {
					s32 s s s d e g e d s s s
				}

				s1.

				\repeat unfold 48  {
					s32 s s s d e g   e d s s s
				}

				\repeat unfold 12 {
					s32 s s s d e g e d s s s
				}

				s1.
			}
		}

		\new Voice {
			\change Staff = "down"
			\voiceOne
			\relative c {
				\repeat unfold 16 {
					d16 f a c s s s s s c a f
				}

				\repeat unfold 16 {
					d16 f a c s s s s s c a f
				}

				% end measure 8

					r2.
					
				\repeat unfold 14 {
					d32 f a c s s    s s s c    a f

				}
				
					r4.

				\repeat unfold 15 {
					d32 f a c s s s s s c a f
				}

				% being e section
				\repeat unfold 16 {
					e32 g b c s  s s s s  c b g 
				}

				\repeat unfold 12 {
					e32 g b c s  s s s s  c b g 
				}


				\repeat unfold 12 {
					e32 g b c
				}

				\repeat unfold 48 {
					d,32 f a c s s    s s s c    a f
				}	

				\repeat unfold 12 {
					e32 g b c s  s s s s  c b g 
				}

				\repeat unfold 12 {
					e32 g b c
				}
			}
		}

		\new Voice {
			\change Staff = "down"
			\voiceTwo
			\relative c, {
				d1.~          d  | d~ d | f~            f  | bes,~ bes |
				d1.~          d  | d~ d | f~            f  | bes,~ bes |
				s2.      d2.~ d1.| s  s | s2.      d2.~ d1.| s     s   |
			
				% Begin E Section
				s1.           s  | s    s  | s          s  | s     s   |
				s1.           s  | s    s  | d,1.~      d  | d~    d   |
				f1.~          f  | bes~ bes|

				s1.           s  | s    s  |
			}
		
		}
	>>

	\bar "||"
	
	% begin BOneXXa 
	\tempo 4 = 60
	\time 4/2
	<< 
		\new Voice {
			\change Staff = "up"
			\relative c'' {
				\voiceOne
				< cis cis' >1      < cis  cis' >8. < cis cis' >8. < cis cis'> 8~ < cis cis' >2 |
				< cis cis' >1      < cis cis' >1                                               |

				< cis fis cis' >1  < cis fis cis'>1                                            |
				< d   g   d'   >1  < d   g   d'  >1                                            |
				< c   f   c'   >1  < c   f   c'  >1                                            |
				< b   e   b'   >1  s1                                                          |
				
				e,8  g b c  d e g a  b   d fis4~  fis2 |
				e,,8 g b c  d e g a  b   d fis g  b2   |
				s1                   e,8 g a   b  d2   | 
				e,8  g b c  d e4.~   e1                |

			        fis1                 fis               |
				fis1                 fis               |

			}
		}

		\new Voice {
			\change Staff = "down"
			\relative c {
				a8    cis fis a  bes c \goUp d e  f1  \goDown                |
				a,,,8 cis fis a  bes c       d e  f   fis g   gis~ gis2      |

				e,,8  g   b   c  d   e       g a  b   d   fis4~    fis2      |
				e,,8  g   b   c  d   e       g a  b   d   fis g    b2        |
				r1                                e,8 g   a   b    d2        |
				e,,8  g   b   c  d   e4.~         < e e,, b>1                |

				< fis,, cis >1                    < fis c' >                 |
				< g     d   >                     < g   d' >                 |
				< f     c   >                     < f   c' >                 |
				< e     b   >                     < e   b' >                 |
			}
		}
	>>

	\bar "."
}

%End Measure 120

BTwo = {
	\autochange {

		c2^\p\( < b c' d' >  d''1   |
		c2      < c' d' e'>  e''1   |
		c2      < e g  b >   a'1    |
		c2      < g b c' >   c''1\) |

		c2\( < a c' d' >  d''1   |
		c2   < c' d' e'>  e''1   |
		c,2  < d f  a >   a'1    |
		c2   < f a c' >   c''1\) |

		c2\(< b c' d' >  d''1  |
		c2  < c' d' e'>  e''1  |
		c'2 < e g  b >   a'1   |
		c2  < g b c' >   c''1\)|
	}

	\autochange {

		c'2\pp\( < a  c' d'>  d'''1   |
		c'2      < c' d' e'> e'''1   |
		c'2      < d  f  a > a''1    |
		c'2      < f  a  c'> c'''1\) |

		c'2\( < b, c d >  d'''1   |
		c'2  < c d e>  e'''1   |
		c'2   < e, g,  b, >   a''1    |
		c'2   < g, b, c >   c'''1\) |

		c''2\( < a, c d >  d'''1   |
		c''2   < c d e>  e'''1   |
		c''2   < d f  a >   a''1    |
		c''2   < f, a, c >   c'''1\) |
	}
	\autochange {

		c2^\p\( < b c' d' >  d''1   |
		c2      < c' d' e'>  e''1   |
		c2      < e g  b >   a'1    |
		c2      < g b c' >   c''1\) |

		c'2\( < a c' d' >  d'1   |
		c'2   < c' d' e'>  e'1   |
		c'2   < d  f a >   a1    |
		c'1                c'1\) |
	}

	\bar "|."
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
			\BTwo
		}	
	>>

}
