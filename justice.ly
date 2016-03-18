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
			c1~   | c     | s   | s  | s               | %14-18
			s     | f     | s   | s  | s               | %19-22
			b,    | s     | s   |                        %23-26
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
	>>

	<<
		\new Voice {
		\change Staff = "up"
			c'~   | c'~   | c'\laissezVibrer| %27-29
			d'~   | d'\laissezVibrer |        %30-31
			e'~   | e'\laissezVibrer |        %32-33
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
			e'''1~| e'''  | d'~ | d'~| d'\laissezVibrer|
			s     | b''   | c'~ | c'~| c'\laissezVibrer|
			f'    | s     | s   |
		}
	>>

	<<
		\new Voice {
		\change Staff = "up"
			e'~   | e'~   | e'\laissezVibrer|
			d'~   | d'\laissezVibrer |
			c'~   | c'\laissezVibrer |
		}
	>>

	\bar "||" %End Measures 34-66
	
	<<	
		\new Voice {
		\change Staff = "up"
			c''~ | d'~  | d'  |     %67-69
			bes' | e'~  | e'  |     %70-72
			r8 fis''2..~|fis''1|    %73-74

			c'''~| d'~  | d'  |     %75-77
			bes''| e'~  | e   |     %78-80 
			r8 fis'''2..~|fis'''1|  %81-82

			c'~   | c'~ |           %83-84
			d'~   | d'  |           %85-86
			e'    |                 %87

		}
		\new Voice {
		\change Staff = "down"
			c1   | r    | r   |
			r4 f2.~|f1  | r   |
			b    | r    |
	
			c,1  | r    | r   |
			r4 f,2.~|f,1| r   |
			b,,  | r    |
		}
	>>
	
	\bar "." %End measures 67-87
}

\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
			\AOne	
		}

		\new Staff = "down" {
			\clef "bass"
			s1*87
		}
	>>
}
