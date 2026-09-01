\version "2.24.0" 

\header {
  title = "Hymn"
  tagline = ""
}

melody = \relative c'' {
	c4	c	g	c	| bes	a	g2 |
	c4	bes	g	fis	| e		d	e2 |
	c'4	c2		bes4| c		des	es2 |
	des2	c4	bes	| bes	a	g2 |
	c4	bes	g	fis	| e4	d	e2 |
}

alto = \relative c' {
	e4	e	d	c	| d		c	d2 |
	e4	fis	e	d	| c		bes	c2 |
	e4	e2	   fis4	| a		a	g2 |
	fis2	e4	fis	| g		e	d2 |
	e4	fis	e	d	| c4	bes	c2 |
}

tenor = \relative {
	g4 c bes a	| bes	c	bes2 |
	g4 bes c bes | g	g	g2 |

	a4	a2 		g4	| fis	fis	g2 |
	bes2	g4	bes	| g		fis	g2 |
	g4	bes	c	a	| g		g	g2 |
}

bass = \relative {
	c4 c d e	| fis	fis g2 |
	c,4 d e fis	| g		g,	c2 |

	c4	e2 		d4	| c bes c2 |
	bes2	c4	d	| d	 c 	bes2 |
	c4	d 	e	fis	| g	g,	c2 |
}

global = {
	s1*4 \break
}

% \score {
% 	\new ChoirStaff <<
% 		\new Staff {
% 			\partCombine \melody \alto
% 		}
% 		\new Staff {
% 			\clef "bass"
% 			\partCombine \tenor \bass
% 		}
% 	>>
% }

\score {
	\midi {}
	\new ChoirStaff <<
		\new Staff {
			<< \global
				\melody
			>>
		}
		\new Staff {
			<< 
				\global
				\alto
			>>
		}
		\new Staff {
			\clef "treble_8"
			<< 
				\global
				\tenor
			>>
		}
		\new Staff {
			\clef "bass"
			<< 
				\global
				\bass
			>>
		}
	>>
}