\version "2.18.2"
#(set! paper-alist (cons '("square" . (cons (* 7.07 in) (* 7.77 in))) paper-alist))

smallFlageolet =
#(let ((m (make-articulation "flageolet")))
   (set! (ly:music-property m 'tweaks)
         (acons 'font-size -3
                (ly:music-property m 'tweaks)))
   m)
% http://lilypond.org/doc/v2.18/Documentation/snippets/expressive-marks#expressive-marks-creating-text-spanners

\paper {
	#(set-paper-size "square")
	top-margin = 0.5\in
	left-margin = 0.5\in
	right-margin = 0.5\in
	bottom-margin = 0.6\in
}

cd = { \stemUp \change Staff = "down" }
cp = { \change Staff = "up" \stemDown }

i =  <<
	\new Voice = "treble" {
		\change Staff = "up"
		\stemUp
		r1 | s1 | d''2 c'''2 | d'''1 |
		r1 | s2. d'''4~ | d'''2. aes4 | \ottava #2 r2 aes''''2 |
		b'''' c''''' | d'''''2 r2 |
		b''''4 r4 \ottava #1 aes'''4 c'''' | d'''' \ottava #0 r2.
	}

	\new Voice = "alto" {
		\cp	
		s1 | r4 d'' c'' b' | aes'2 g'2 | c'2 b' | \break
		s1 | r4 aes'' c'' b'' | 
			\appoggiatura { c'8 } d'4 r4 \clef "bass" aes,4 d |
			\clef "treble" \cd r1 \clef "treble" | \break
		r2 aes'2 | d'' b'' | c''' b' | c'' d'' | \break
		r1
		
	}
	\new Voice = "bass" {
		\change Staff = "down"
		\stemDown
		r1 | s1 | c2 b,,2 | aes,,1 |
		r1 | r1 | r2 \ottava #-1 c,,4 b,,,~ | b,,,4 \ottava #0 s2. | 
		r1 | r2 aes'2 | b'2 c' | b aes | c' d'4 aes | \clef "bass" b,2 r2 | r1 |



	}
>>

ii =  <<
	\new Voice {
		\change Staff = "up"
		\ottava #0
		\tempo 4 = 108
		\time 4/4
		\relative c'' {
			<< {
				r2 r8 b a c | b4. e,8 a4. e8 | g1 | r1 |
				r2 r8 b a c | b4 e    a, d   | g,1 | r1 |
				r2 r8 b a c | b4 e    a, d   | g,1 | r2 r8 e f g |
				a4 b g e' | r2 r8 e, f g | a4 b g2 | r2 r8 e f g |
				a4 b g e' | r2 \tuplet 3/2 { aes4 g f } |


			} \\ { 

			} >>
		}
	}
	
	\new Voice {
		\change Staff = "down"
		\clef "bass"
		\relative c {
			\clef "bass"
			<< {
				r4 < e b' > r8 < e g >4. | r4 < g c > r8 < g c >4. |
						r8 < e b' >8 < f a >8 < a c >8 r8 < g b >4. | 
						r4 < f a >8 < a c >8 r8 < g b >4. |
				r4 < e b' > r8 < e g >4. | r4 < g c > r8 < g c >4. |
					r4 < e b' > r8 < e d'>4. | r4 < e c' > r8 < e a >4. |

			} \\ {
				c4. c8 c2 | c4. c8 c2 | c4. r8 b4 e | c4. r8 b4 g | 
				c4. c8 c2 | c4. c8 c2 | c4. c8 c2 | c4. c8 c2 | 
				f4. f8 f2 | f4. f8 f2 | f4. f8 f2 | f4. f8 f2 |
				c4. c8 c2 | c4. c8 c2 | c4. c8 c2 | c4. c8 c2 | 
				c4. c8 c2 | g1 | 
			} >>
		}
	}
>>

iii =  <<
	\new Voice {
		\change Staff = "up"
		\tempo 4 = 128
		\relative c'' {
			\repeat tremolo 16 { e16 } |
			\repeat tremolo 16 { e16 } |
			\repeat tremolo 8 { e16 } \repeat tremolo 8 { < e g >16 }  |
			\repeat tremolo 8 { < e b'>16 } \repeat tremolo 8 { < e d >16 }  |

			\ottava #1
			\repeat tremolo 16 { e'16 } |
			<< {
				\repeat tremolo 16 { e16 } |
				\repeat tremolo 16 { e16 } |
				\repeat tremolo 16 { e16 } |
				\repeat tremolo 16 { e16 } |
			} \\ {
				r8 	

			} >>
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c {
			r2 r8 b a c | b4 e, a e | 
				<<  { r8 e' d f e4 r32 b'8.. } \\ { g,2 r8 g8 g g } >> |
				<< { r8 d' d d d f f f } \\ { f,4 b4 r8 g g g } >> |

			r2 r8 b a c | b4 e a, d | g,1 | r1 |
		}
	}
>>

iv =  <<
	\new Voice {
		\change Staff = "up"
		\tempo 4=86
		\ottava #0
		\relative c''' {
			r8 b a c b8 g fis a | g8 e d f e c b d | 
			c4. g'8 b,4. g'8 | e,4. c'8 b4. e8 |
			a,8 e'( d f e ) c ( b d | c ) a ( gis b a ) e ( f g )
			a4 ( b ) | g8 ( e'4. ) | f,8 b( a c b ) e, ( f g ) |
			a4 ( b ) | g8 ( e'4. )   | \time 2/4 r4 \stemUp aes, |
		}
	}

	\new Voice {
		\change Staff = "down"
		\clef "bass"
		\relative c {
			r1 | r8 g\( a b c d e f | 
			g\) e d f e c b d | c g' f a g b a c|
			d4 f a, g' | a,4 e' c4 d |
			c,8 c' ( b d e, ) c' ( f, g )| a4 ( b ) g4 d4 | 
			f8 b ( a c b ) f ( e g  | f ) \change Staff = "up" c' \stemDown e f |
		}
	}
>>

v =  <<
	\new Voice {
		\change Staff = "up"
		\tempo 4=98
		\time 2/2 
		\relative c'' {
			<< {
				r2 b | a c | b r | a r | 
				g  r | a r | g r | f r | 
				r  g | f a | g r | 
			} \\ {
				r2 < d g > | < e f > < d f > | < e g > r | < d f > r | 
				< d e > r | < e f > r | < d e > r | < c d > r |
			} >>
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c' {
			<< {
				r2 b | c a | d r | c r | 
				s1 | s1 | s1 | s1 |
			} \\ {
				s1 | s1 | r2 e, | r e |
				r b' | a c | b r | a r |
			} >>
		}
	}
>>

\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
			\i
			%\ii
			%\iii
			%\iv
			%\v
		}
	
		\new Staff = "down" {
			\clef "bass"	
			s1 * 100
		}
	>>
}

