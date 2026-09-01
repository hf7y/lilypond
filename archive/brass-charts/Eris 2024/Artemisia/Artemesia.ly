\version "2.24.0"
\include "Global.ly"
\header {
	title = "Artemesia the Small-headed Gopher"
	composer = "erin bell"
}

tubaA = \relative c, {
	\time 4/4	e a, c e
	\repeat volta 4 {
		\unfoldRepeats
		\repeat percent 2 { a,4 e' a,4 e' } a, c e a, |
		\unfoldRepeats
		\repeat percent 2 { e'4 a, e'4 a, } e' a, c e |
	}
}
tubaAA = \relative c, { \time 2/4 a2 }

tubaCoda = {
	\time 4/4
	e4 a, c e |

	a,4 e a, e | a, e a, e | a, c e a, |
	e4 a, e a, | e a, e a, | e4 c a2 |
}


midA = \relative c {
	\time 4/4	R1
	% \mark #1
	\repeat volta 4 {
		\unfoldRepeats
		\repeat percent 2 { e8 a e a e8 a e a } | c8 b bes g fis2 |
		\unfoldRepeats
		\repeat percent 2 { e8 a e a e8 a e a } | a8 g f d des2 |
	}	
}
midAA = \relative c { \time 2/4 	c2 }

midCoda = \relative c {
	\time 4/4
	R1 |

	f8 e f a d,2 | f8 e f a d,2 | bes'4 g a2 |
	f8 e f a d,2 | f8 e f a d,2 | bes'4 g a2 |
}

melodyA = \relative c' {
	% \mark #1
	r2 
	\repeat volta 2 {
		f8 e f a | d,2 f8 e f a | d,2 bes'4 g | \partial 2 a2
	}
}

melodyAA = \relative c'' { \time 2/4 	a2 }

melodyCoda = \relative c {
	\time 4/4
	R1 |

	f'8 e f a d,2 | f8 e f a d,2 | bes'4 g a2 |
	f8 e f a d,2 | f8 e f a d,2 | bes'4 g a2 |
}
melodyBreak = \relative c'' {
	\time 6/8
	R2. | r4 bes8 4 b8 |
	c4 g8 c4 g8 | c4 aes8 ges4. |
}

melodyB = \relative c'' {
	\time 6/8
	\repeat volta 2 {
		\volta 1 { a4 bes8 c4 des8 | es4 des8 c4 a8 | bes4. r | }
		\volta 2 \unfolded { R2. * 3 | }
	}
	\repeat volta 2 {
		\volta 1 { c4 f8 es4 des8 | c4 bes8 c4 bes8 | a4. r | }
		\volta 2 \unfolded { R2. * 3 }
	}
	a4 bes8 c4 des8 | es4 des8 c4 a8 | bes4. r |
}
melodyBB = \relative c'' {
	\time 6/8
	\repeat volta 2 {

		b4.\rest c | r des | r es |
		r4. c4.:8 | r4. des4.:8 | r4. es4.:8 |

		\alternative {
			\volta 1 { f,4 f8 ges4 8 | f4. r | }
			\volta 2 { 
				\time 9/8 f4 f8 ges4 8 a4 8 |
				\time 6/8 bes4. des
			}
		}
	}
}

midB = \relative c'' {
	\time 6/8
	\repeat volta 2 { 
		R2. * 3 |
		\clef "bass"
		a,4 bes8 c4 des8 | es4 des8 c4 a8 | bes4. r |

		R2. * 3 |
		\clef "bass"
		c4 f8 es4 des8 | c4 bes8 c4 bes8 | a4. r |

		a4 bes8 c4 des8 | es4 des8 c4 a8 | bes4. r |

		s1 * #(ly:music-length #{
				f4. r | f r | f r |
				f4.:8 r4. | f4.:8 r4. | f4.:8 r4. |
				
				\alternative {
					\volta 1 { f4 8 ges4 8 | f4. r | }
					\volta 2 { 
						\time 9/8 f4 f8 ges4 8 a4 8 |
						\time 6/8 bes4. des
					}
				}
			#})
	}
}

tubaB = \relative c, {
	\time 6/8
	a4. \tuplet 2/3 { c8 8 } | a4. c |
	bes4. \tuplet 2/3 { des8 8 } | bes4. des |
	a4. \tuplet 2/3 { c8 8 } | a4. c |
	bes4. \tuplet 2/3 { des8 8 } | bes4. des |
	
	c4. \tuplet 2/3 { es8 8 } | c4. es |
	a,4. \tuplet 2/3 { c8 8 } | a4. c |
	a4. \tuplet 2/3 { c8 8 } | a4. c |
	bes4. 4. | 
}

tubaBB = \relative c, {
	\time 6/8
	\repeat volta 2 {	
		f4. r | f r | f r |
		f4.:8 r4. | f4.:8 r4. | f4.:8 r4. |
		
		\alternative {
			\volta 1 { f4 8 ges4 8 | f4. r | }
			\volta 2 { 
				\time 9/8 f4 f8 ges4 8 a4 8 |
				\time 6/8 bes4. des
			}
		}
	}
}

melodyC = \relative c'' {
	\time 6/8
	f4.~ 4 g8 | aes4 g8 f4. | 4 c8 f4 g8 | aes2. |
	c,4.~ 4 d8 | es4 d8 c4. | 4 g8 es'4 d8 | c2. |

	<c, f aes>2. | <f aes c> | <c f aes>2. | <f aes c> |
	<c es g>2. | <es g c> | <c es g>2. | 
	\alternative {
		\volta 1 { <es g c>2. | }
		\volta 2 { <c c'>2. | }
	}
	b'2. | bes | g\fermata |
}

midC = \relative c {
	<c f aes>2. | <f aes c> | <c f aes>2. | <f aes c> |
	<c es g>2. | <es g c> | <c es g>2. | <es g c> |

	f4.~ 4 g8 | aes4 g8 f4. | 4 c8 f4 g8 | aes2. |
	c,4.~ 4 d8 | es4 d8 c4. | 4 g8 es'4 d8 |

	\alternative {
		\volta 1 { <c c'>2. | }
		\volta 2 { <c c'>2. | }
	}

	b'2. | bes | g\fermata |
}

tubaC = \relative c, {
	\repeat volta 2 {
		f2. | aes | f | aes |
		c,2. | es | c | es |

		f2. | aes | f | aes |
		c,2. | es | c | 
		\alternative {
			\volta 1 { es | }
			\volta 2 { c' | }
		}
	}

	b2. | bes | g\fermata |
}

melodyD = \relative c'' {
	\repeat volta 2 {
		\time 4/2	ges2 d ges bes |
		\time 5/2	a2 g! cis, des cis |
		\time 4/2 	g'2 d bes g |

		\alternative {
			{ e1~ e1 | }
			{ f1~ f1 | }
		}
	}
}

midD = \relative c' {
	\repeat volta 2 {
		\time 4/2	ges2 d ges bes |
		\time 5/2	a2 g! cis, des cis |
		\time 4/2 	g'2 d bes g |

		\alternative {
			{ e1~ e1 | }
			{ f1~ f1 | }
		}
	}
}

tubaD = \relative c {
	\repeat volta 2 {
		\time 4/2	ges2 d ges bes |
		\time 5/2	a2 g! cis, des cis |
		\time 4/2 	g'2 d bes g |

		\alternative {
			{ e1~ e1 | }
			{ f1~ f1 | }
		}
	}
}

global = {
	% \lineLabel "tubas and midhorns start"
	% \mark #1
	% \lineLabel "Drum Break"
	% \lineLabel "Melody horns only" 
	% \mark #3
	% \lineLabel "Descent to End"
}

\score {
	\new StaffGroup <<
		{ s1 \mark #1 }
		\new Staff { \clef "bass" \midA }
		\new Staff { \clef "bass_8" \tubaA }
	>>
} 
\score { \new Staff { \mark #1 \clef "bass" \transpose c c, \melodyA } }
\score { \new Staff { \mark #1 \melodyA \melodyBreak } }
\score { \new Staff { \mark #2 \melodyB } }
\score { \new Staff { \mark #2 \clef "bass_8" \tubaB } }
\score {
	\new StaffGroup <<
		\new Staff { \melodyBB }
		\new Staff { \clef "bass" \tubaBB }
	>>
}
\score {
	\new StaffGroup <<
		\new Staff { \mark #3 \melodyC }
		\new Staff { \mark #3 \clef "bass" \midC }
	>>
}
% \score {
%   <<
%     \new Staff {
%       s1 * 12 | s2

%       \melodyBreak \bar ".|:-||"

%       \melodyB

%       \melodyC

%       \melodyD

%       \transpose c c'
%       \melodyA
%     }
%     \new Staff {
%       \clef "bass"
%       << \midA \\ \tubaA >>
%       \melodyA

%       \time 2/4
%       <a,, a,>2

%       \time 6/8
%       s2. * 4

%       \set Staff.soloIIText = #""
%       \partCombine \midB \tubaB

%       << \midC \\ \tubaC >>
%       << \midD \\ \tubaD >>

%       \tubaA
%     }
%   >>
% }