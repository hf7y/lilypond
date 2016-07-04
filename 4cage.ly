\version "2.18.2"

chup = { \change Staff = "up" }
chdn = { \change Staff = "down" }
violin = {
<<
	\new Voice {
		g'''1\(  d''' a'''  e'''\) |
		fis'''\( c''' g'''  d'''\) |
		g''\(    d''  a''   e''\)  |
		fis''\(  c''  g''   d''\)  |

		g'\(   d' a' e'\) |
		fis'\( c' g' d'\) |
		g\(    d'  a'  e''\) |
		\voiceTwo
		fis'\( c' g' d'\) |

		g\( d' a' e''\) |
		g\( d' a' e''\) |
		s1 s1 a' s1 |
		g\( d' a' s1\) |
		
		\once \stemUp
		\repeat tremolo 32 fis'32
		\repeat tremolo 16 < d' fis'' >
		\repeat tremolo 16 < c'' fisih'' >
		\repeat tremolo 32 < g'' d''' >
		\grace { fisih''8 } d'''2^\flageolet e'''2^\flageolet
		
		\oneVoice
		g'''1^\flageolet~
		g'''1^\flageolet~
		g'''1^\flageolet~
		g'''1^\flageolet

		d'''1^\flageolet~
		d'''1^\flageolet~
		d'''1^\flageolet~
		d'''1^\flageolet

		g''1^\flageolet~
		g''1^\flageolet~
		g''1^\flageolet~
		g''1^\flageolet

		d''1^\flageolet~
		d''1^\flageolet~
		d''1^\flageolet~
		d''1^\flageolet

		< g g' >1~
		< g g' >1
		g1~
		g1
	}

	\new Voice {
		\voiceOne
		s1*31 r2 fisih'4( g' |

		fisih'2 g') | cisih''2( d'') |
		e''2( \once \stemDown e'''^\flageolet) | s1 |

		fisih''4( g'' fisih'' g'') |
		fisih''4( g'' fisih'' g'') |
		fisih''2( \once \stemDown e'''^\flageolet ) | s1

		g'1^\flageolet d''1^\flageolet
		fisih''8 ( g'' fisih'' g'' fisih'' g'' fisih'' g'' )
		\once \stemDown e'''1^\flageolet
		
		fisih''16 ( g'' fisih'' g'' fisih'' g'' fisih'' g''
 		fisih''     g'' fisih'' g'' fisih'' g'' fisih'' g'')
		fisih''16 ( g'' fisih'' g'' fisih'' g'' fisih'' g''
 		fisih''     g'' fisih'' g'' fisih'' g'' fisih'' g'')
		fisih''1\trill
		\stemDown
		\tuplet 3/2 { e''16 fisih''' g''' }	
		\tuplet 3/2 { e'' fisih''' g''' }	
		\tuplet 3/2 { e'' fisih''' g''' }	
		\tuplet 3/2 { e'' fisih''' g''' }	
		\tuplet 3/2 { e'' fisih''' g''' }	
		\tuplet 3/2 { e'' fisih''' g''' }	
		\tuplet 3/2 { e'' fisih''' g''' }	
		e''[ fisih'''] |
		
		\stemUp
		s1
		s1
		s1
	}
>>
}

piano = <<
	\new Voice {
		\change Staff = "down"
		%sostenuto b's and e's
		%half pedal everything
		c,1\laissezVibrer       s1 s1 s1 | c,1\laissezVibrer       s1 s1 s1 |
		c,1\laissezVibrer       s1 s1 s1 | c,1\laissezVibrer       s1 s1 s1 |
		< c, c >1\laissezVibrer s1 s1 s1 | < c, c >1\laissezVibrer s1 s1 s1 |
		< c, c >1\laissezVibrer s1 s1 s1 | < c, c >1\laissezVibrer s1 s1 r2.... 
		
		%begin phasing
		< c,, c >32\arpeggio   | r1 r1 r1 r2... 
		\tuplet 3/2 { c,32 c \change Staff = "up" c''' \chdn } | r1 r1 r1 r2..
	
		\tuplet 3/2 { c,,16 c \change Staff = "up" c''' \chdn } | r1 r1 r1 r2.
		\tuplet 3/2 { d,8 d \change Staff = "up" \ottava #1 d'''' \ottava #0 \chdn } | r1 r1 r1 r2

		\tuplet 3/2 { d,,4 \change Staff = "up" d' \ottava #1 d'''' \ottava #0 \chdn } | r1 r1 r1 r4
		              g,,4 \change Staff = "up" \ottava #0 g' \ottava #0 \chdn s4   | r1 r1 r1

		\tuplet 3/2 { \clef "treble" d'2  d'''\change Staff = "up"  d'' \chdn } | r1 r1 r2
		              g2  g'' s2   | r1 r1

		\tuplet 3/2 { \clef "bass"  d1 \clef "treble"  d''' \change Staff = "up" \ottava #1 d'''' \ottava #0 \chdn } | r1
		              \clef "bass" g,1 \clef "treble"  \ottava #1 g''' \ottava #0 | s1
			      r1 r1 r1 r1 |
	}

	\new Voice {
		\change Staff = "up"
		%sostenuto b's and e's
		%half pedal everything
		s1       s1 | s1       s1 |
		s1       s1 | s1       s1 |
		s1       s1 | s1       s1 |
		s1       s1 | s1       s1 |
		c'''1\laissezVibrer s1 s1 s1 | c'''~ s1 s1 s1 
		c'''1\laissezVibrer s1 s1 s1 | c'''~ s1 s1 r2.... 
		
		%begin phasing
		c'''32~\arpeggio   | r1 r1 r1 r2... 
		s16 | r1 r1 r1 r2..
		
		s8 | r1 r1 r1 r2.
		s4 | r1 r1 r1 r2
		
		s2 | r1 r1 r1 r4
		s2 \ottava #1 g''''4 \ottava #0 | r1 r1 r1 

		s1 | r1 r1 r2
		s1 \ottava #0 g'''2 \ottava #0  | r1 r1 s1 i

		r1 s1 s1 \ottava #1  g''''1 \ottava #0 r1 | r1 r1 r1 |
	}
>>
\score {
	\new StaffGroup <<
		\new Staff = "violin" {
			\violin
		}

		\new PianoStaff <<
			\new Staff = "up" {
				\clef "treble"
				s1*64
			}

			\new Staff = "down" {
				\clef "bass"
				\piano
			}
		>>
	>>
}
