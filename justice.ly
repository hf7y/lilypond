\version "2.18.2"
% Justice - Zachary Viet Pine
% Solo Piano
% New Draft March 16, 2016

hOne = {
	d8( f a c d e g e d c a f) |
}

hTwo = {
	e8( g b c d e g e d c b g) |
}

AWhoKnows = {
	\time 12/8

	\relative c'' {
		c1.~ | c1. \laissezVibrer | r1. | r1. | 
	} % Introduce the Tonic 4mm

	\bar "||"

	\repeat unfold 2 {
		\autochange
		\relative c {
			\repeat unfold 2 {
				d8\( f a c d e g e d c a f)   |
				d8(  f a c d e g e d c a f\)) |
			}
	
			\repeat unfold 2 {
				e8\(( g b c d e g e d c b g)   |
				e8(   g b c d e g e d c b g\)) |
			}
		}
	} % Proportion of one Subsection of which there will be Five in AOne 20mm

	\bar "||"

	\repeat unfold 2 <<
		\new Voice {
			\autochange
			\relative c {
				\stemUp
				\repeat unfold 2 {
					d8 f a c \stemDown d e g e d c \stemUp a f |
					d8 f a c \stemDown d e g e d c \stemUp a f |
				}
		
				\repeat unfold 2 {
					e8 g b c \stemDown d e g e d c \stemUp b g |
					e8 g b c \stemDown d e g e d c \stemUp b g |
				}
			}
		}

		\new Voice {
			\voiceTwo 
			\relative c {
				\repeat unfold 4 {
					c1.~ | c |
				}
			}
		}	
	>> % Second Portion of AOne 36
	
	\bar "||"

	\repeat unfold 2 <<
		\new Voice {
			\autochange
			\relative c {
				\stemUp
				\repeat unfold 2 {
					d8 f a c \stemDown d e g e d c \stemUp a f |
					d8 f a c \stemDown d e g e d c \stemUp a f |
				}
		
				\repeat unfold 2 {
					e8 g b c \stemDown d e g e d c \stemUp b g |
					e8 g b c \stemDown d e g e d c \stemUp b g |
				}
			}
		}

		\new Voice {
			\voiceTwo
			\relative c {
				\repeat unfold 4 {
					c1. | c |
				}
			}
		}
		
		\new Voice {
			\change Staff = "up"
			\stemUp
			\relative c'' {
				{
					r2. bes | r bes | r bes | r bes |
					r   b   | r b   | r b   | r b   |
				}
			}
		}
	>> % Third Portion of AOne 52
	
	\bar "||"

	\repeat unfold 2 <<
		\relative c {
			\repeat unfold 4 {
				\hOne
			}
	
			\repeat unfold 4 {
				\hTwo
			}
		}

		\relative c {
			\repeat unfold 4 {
				c1. | c |
			}
		}
		
		\relative c'' {
			{
				r2. bes | r f'  | r bes,| r f'  |
				r   b,  | r fis'| r b,  | r fis'|
			}
		}
	>> % Third Portion of AOne 68

	\bar "||"
}


% Form is Compound Ternary 
% AABBA CCDDC ABA

AOne = {
	\time 4/4

	\absolute
	<<
		\new Voice {
		\change Staff = "up"
			c''1~ | c''   | d'~ | d'~| d'\laissezVibrer | %1-5
			bes'~ | bes'  | e'~ | e'~| e'\laissezVibrer | %6-10
			s     | fis''~|fis''|	                      %11-13
		}

		\new Voice {
		\change Staff = "down"
			c1~   | c     | s   | s  | s               | 
			s     | f     | s   | s  | s               |
			b,    | s     | s   |                      
		}
	>>	

	<<
		\new Voice {
		\change Staff = "up"
			c'''1~| c'''  | d'~ | d'~| d'\laissezVibrer|
			bes''~| bes'' | e'~ | e'~| e'\laissezVibrer|
			s     | fis'~ | fis'|	
		}

		\new Voice {
		\change Staff = "down"
			c,1~  | c,    | s   | s  | s               |
			s     | f,    | s   | s  | s               |
			b     | s     | s   |
		}
	>> %14-26

	<<
		\new Voice {
		\change Staff = "up"
			c'~   | c'~   | c'\laissezVibrer| %27-29
			d'~   | d'\laissezVibrer |        %30-31
			\change Staff = "down"
			\tuplet 5/4 { e16( g b \change Staff = "up" c' d' } e'2.)~   | e'1\laissezVibrer |        %32-33
		}
	>>
	
	\bar "||" % End Measures 1-33

	%Reflect across Middle D

	<<
		\new Voice {
		\change Staff = "down"
			e1~   | e     | s   | s  | s               |
			fis~  | fis   | s   | s  | s               |
			s     | bes,~ | bes,|	
		}

		\new Voice {
		\change Staff = "up"
			e''1~ | e''   | d'~ | d'~| d'\laissezVibrer|
			s     | b'    | c'~ | c'~| c'\laissezVibrer|
			f''   | s     | s   |
		}
	>>	
	
	<<
		\new Voice {
		\change Staff = "down"
			e,1~  | e,    | s   | s  | s               |
			fis,~ | fis,  | s   | s  | s               | 
			s     | bes~  | bes |	
		}

		\new Voice {
		\change Staff = "up"
			e'''1~| e'''  | \change Staff = "down" 
			                d16( f a \change Staff = "up" c' d'2.)~| d'1~| d'\laissezVibrer|
			s     | b''   | c'~ | c'~| c'\laissezVibrer|
			f'    | s     | s   |
		}
	>>

	<<
		\new Voice {
		\change Staff = "up"
			\change Staff = "down" \tuplet 5/4 { e16( g b \change Staff = "up" c' d' }    e'2.)~ | e'1~ | e'\laissezVibrer|
			\change Staff = "down" \tuplet 6/4 { d16( f a \change Staff = "up" c' d' e' } d'2.)~ | d'1~ | d'1\laissezVibrer |
			c'~   | c'\laissezVibrer |
		}
	>>

	\bar "||" %End Measures 34-67
	
	<<	
		\new Voice {
		\change Staff = "up"
			c'' | \change Staff = "down" \tuplet 6/4 {d16( f a \change Staff = "up" c' d' e' } \tuplet 3/2 { g'16 e'  d')~ } d'8~ d'2~  | d'1  |     %68-70
			bes' | \change Staff = "down" \tuplet 6/4 {e16( g b \change Staff = "up" c' d' e' } \tuplet 3/2 { g' e'8~) } e'8~ e'2~ | e'1  |     %70-72
			r8 fis''2..~|fis''1|    

			c''' \change Staff = "down" \tuplet 6/4 {d16( f a \change Staff = "up" c' d' e' } 
			\tuplet 6/4 { g' e' d' c' \change Staff = "down" a f } \tuplet 6/4 {d16 f a \change Staff = "up" c' d'8)~ } d'4~ | d'1  |     %76-78
			bes''| \appoggiatura {e'16 g'} e'1~   | e'1   |    
			r8 fis'''2..~|fis'''1|

			c'~   | c' |        
			\change Staff = "down"
			\tuplet 6/4 { d16( f a \change Staff = "up" c' d' e' }
			\tuplet 6/4 { g' e' d' c' \change Staff = "down" a f }
			
			\tuplet 6/4 { d16 f a \change Staff = "up" c' d' e' }
			\tuplet 6/4 { g' e' d' c' \change Staff = "down" a f } |
			
			\tuplet 6/4 { d16 f a \change Staff = "up" c' d' e' }
			\tuplet 3/2 { g' e' d')~ } d'8~ d'2                       |      
			
			\change Staff = "down"
			\tuplet 6/4 { e16 g b \change Staff = "up" c' d' e' }
			\tuplet 6/4 { g' e' d' c' \change Staff = "down" b g }
			
			\tuplet 6/4 { e16 g b \change Staff = "up" c' d' e' }
			\tuplet 6/4 { g' e' d' c' \change Staff = "down" b g }
			|            

		}
		\new Voice {
		\change Staff = "down"
			c1   | s    | s   |
			r4 f2.~|f1  | s   |
			b    | s    |
	
			c,1  | r    | r   |
			r4 f,2.~|f,1| r   |
			b,,  | r    |
		}
	>>
	
	\bar "." %End measures 67-88
}

subP = \markup { \dynamic p \teeny \italic subito }
dRiff = { f16 a c d e g e d c a f) | d( f a c d e g e d c a f) | }
dRiffer = {\autoBeamOff g'16 e d c a f \autoBeamOn| d( f a c d e g e d c a f) }
BOne = {
	\time 6/8
	
	<<
		\new Voice {
			\change Staff = "up"
			\voiceOne
			s2.*8
			
			\relative c'' {
				d2.(\p | e | a, | c) |
				d2.( | s | a  | s ) |
				
				d2.(\pp | e | a, | c) |
				d2.     | s | s  | s  |
				
				d2.(    | e4. a~ | a,2. | c)  |
				d2.~(    | d4. a~ | a2.) | s2. 

				d2.(    | e  | a, | c)  |
				d2.    | s | s | s | 
			}
		}

		\new Voice {
		
			\autochange
			\relative c {
				d16(^\f \dRiff || d16(    \dRiff  ||
				d16(^\p \dRiff || d16(\<  \dRiff || %end mm 1-8
	
				r4.\!\stemDown \dRiffer || d16(    \dRiff ||
				d16( \dRiff             || r4. \dRiffer ||

				
				d16( \dRiff || d16(    \dRiff ||
				d16( \dRiff || d16(    \dRiff ||
				
				d16( \dRiff || d16(    \dRiff ||
				d16( \dRiff || d16(    \dRiff ||
				
				d16( \dRiff || d16(    \dRiff ||
				d16( \dRiff || d16(    \dRiff ||
			}
		}
		
		\new Voice {

			\change Staff = "down"
			s2.\sustainOn s2.*3
			s2.\sustainOff\sustainOn s2.*3
	
			s2.\sustainOff | s\sustainOn | s2.*2 ||
			s2.\sustainOff\sustainOn | s |  s2.\sustainOff | s2.\sustainOn |
				
			s2.\sustainOff\sustainOn | s | s2.*2 ||
			s2.\sustainOff\sustainOn | s2. | s | s2. |

			s2.
			s 
		}
	>>
	\bar "||"


	:
}

\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
			%\AOne
			
		}

		\new Staff = "down" {
			\clef "bass"
		%	s1*88
			\BOne
		}
	>>
	\midi {}
}

