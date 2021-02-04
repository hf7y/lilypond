\version "2.20.0"

\header {
	title = "Opening in 3 keys"
	subtitle ="Dec 19 20"
	tagline = ""
}

\include "../z/autochange.ily"
\include "./arpeggio.ly"
\include "../z/note.ily"

pentatonic = #`(
  (0 . ,DOUBLE-SHARP)
  (1 . 0)
  (2 . 0)
  (3 . ,DOUBLE-SHARP)
  (4 . 0)
  (5 . 0)
  (6 . 0)
)

whole-tone = #`(
  (0 . 0)
  (1 . 0)
  (2 . 0)
  (3 . ,SHARP)
  (4 . ,SHARP)
  (5 . ,SHARP)
  (6 . ,SHARP)
)

overtone = #`(
  (0 . 0)
  (1 . 0)
  (2 . 0)
  (3 . ,SHARP)
  (4 . 0)
  (5 . 0)
  (6 . ,FLAT)
)

function =
#(define-music-function
     (parser location pitch duration figure)
     (ly:pitch? ly:duration? string?)
	(make-music
	  'SequentialMusic
	  'elements
	  (list (make-music
	          'NoteEvent
	          'articulations
	          (list (make-music
	                  'AbsoluteDynamicEvent
	                  'text
	                  "f"))
	          'duration
	          duration
	          'pitch
	          pitch)))
   )
arpeggiosA = {
	\override Accidental.stencil = ##f
	\arpeggioNormal
	\relative c' {
		\key c \overtone
		r4 \squig e r4 \squig bes | 
		r4 \squig fis \squig bes r4 |
		\squig c r4 \squig g'4 \squig a'4 |
		r4 \squig bes'4 r8 \squig c'4 \squig d'8 |

		\squig e'4 \squig bes' \squig c' r8 \squig fis8 | 
		r2 \squig fis'4 \squig g'' |
		\squig a'' \squig bes''4 \squig e'4 \squig fis'4 |
		\squig a'4 \squig bes'4 r8 \squig c'4 \squig g'8 |

		\squig a4 \squig b'!8\decr \squig c'8 
			\squig a4 \squig b,!8 \squig c'8 |
		\key g \major
		\squig a''8 \squig b!8 \squig c'8 \squig d''
			\squig a8 \squig b,!8 \squig c'8 \squig a'8 |
		\key a \major
		\squig a''8 \squig b'!8 \squig c'8 \squig d''
			\squig a'8 \squig b''!8 \squig c'8 \squig a''8 |
		\key b \major
		\squig a''8 \squig b'!8 \squig c'8 \squig d''
			\squig a'8 \squig b''!8 \squig c'8 \squig a''8\! |
	}
}
melodyA = {
	\relative c' {
		\key c \overtone
		r4 e fis bes, | 
		a fis' g bes, |
		r8 a8 g4 g'4 r4 |
		a bes, a fis'4 |

		r4 e fis bes, | 
		a fis' r4 a4 |
		r8 bes8 r4 g,4 fis4 |
		r4 c' d e |

		r8 fis8 g8[ bes,8] r4 r4  |
		b1 | R1 | R1
	}
}
bassA = {
	\relative c, {
		\key c \overtone
		<c c'>1^\f
		<c'>2. g'4
		<c,,>2. g''4
		c2 fis,2

		<c g'>2.^\f es4
		\tuplet 3/2 {d8 fis'8 8} fis4.:32\> r8\! r8 g8
		c,1
		c8 bes4.~ bes4 a4 |
		
		g2. fis4~ |
		fis1 | R1 | R1
	}
}
arpeggiosB = {
	\override Accidental.stencil = ##f
	\arpeggioNormal
	\relative c' {
		\key c \overtone
		\squig c'4 \squig bes' \squig a' r4 |
		r4 \squig fis'4 \squig e' \squig d' |
		\squig bes''4 \squig a''4 \squig g'' \squig g' |
		\squig fis' r8 \squig g'' \squig a''4 r8 \squig bes''8 |

		r8 \squig fis \squig g'4 \squig a''8 \squig bes'' r8 \squig c'' |
		r8 \squig b'!8 \squig c'4
			\squig a'8 \squig b''!8 \squig c'8 \squig a''8 |
		\squig a''8 \squig b!8 \squig c'8 \squig d''
			\squig a8 \squig b,!8 \squig c'8 \squig a'8 |
		\key f \major
		\squig a''8 \squig b'!8 \squig c'8 \squig d''
			\squig a'8 \squig b''!8 \squig c'8 \squig a''8 |
	}
}
melodyB = {
	\relative c' {
		\key c \overtone
		e4^\f fis g bes, | 
		e, fis' g a |
		e, b''! c bes, |
		d' g,,4 e''4 fis4 |

		a bes,, a' e,8 c''8 |
		b4 g8 bes, e'4 r8 bes,8 |
		r2. \clef "bass" a8 g8 |
		\key f \major
		r8 g8 fis4 r4 d4 |
		
	}
}
bassB = {
	\relative c {
		\key c \overtone
		s1 * 5
		<c c'>1

		c'2 g,2
		\key f \major
		bes,2 f'2
	}
}

arpeggiosC = {
	\key c \major
	\squig e'4 \squig d'8 \squig f'8 
		r8 \squig e8 \squig c8 \squig b'8 |
	r8 \squig e8 r4 r8 \squig g'8 \squig a' \squig b'
	\squig c'4 \squig d4 r8 \squig e'8 \squig f'8 \squig g'' |
	r8 \squig a''8 \squig a' \squig g' \squig f \squig f' \squig e' \squig e |

	\key g \major
	\squig d4 r8 \squig b \squig c \squig g'' \squig a'' \squig f, |
	\key c \major
	\squig a''8 \squig b8 \squig c'8 \squig d''
		\squig a8 \squig b,8 \squig c'8 \squig a'8 |
	\squig a''8 \squig b8 \squig c'8 \squig d''
		\squig a8 \squig b,8 \squig c'8 \squig a'8 |
	r8 \squig b8 \squig c'8 \squig d''
		\squig a8 \squig b,8 \squig c'8 \squig a'8 |


	\squig b8 \squig c'8 s4
		s8 \squig b8 \squig c'8 s8 |
	s4 \squig c'8 \squig d''
			\squig a8 s4 \squig a'8 |
	\squig b''8 \squig c'8 s4
		s8 \squig b8 \squig c''8 s8 |
	\squig b''8 \squig c''8 s4
		s8 \squig b,8 \squig c''8 s8 |
}
melodyC = {
	\relative c' {
		\key c \major
		\clef "treble"
		r8 a'8 r8 b f e8 r8 c'8 |
		b4 g8 b, e'4 r8 d8 |
		r8 b,8 r8 a c d8 r8 fis8 |
		\clef "bass"
		a,4 b8 d, c'4 fis,4 |

		\key g \major
		r8 a8 g8 c d,4 r8 d'8 |
		\key c \major
		r8 c8 r8 g f e8 r8 b'8 |
		r4 \tuplet 3/2 {c8 c c} c4:32 e16 e e e |
		e1:32


		s4 \squig c,8 \squig d,
			\squig a8 s4 \squig a,8 |
		\squig b8 \squig c,8 s4
			s8 \squig b8 \squig c,8 s8 |
		s4 \squig c'8 \squig d,
			\squig a,8 s4 \squig a8 |
		s4 \squig c'8 \squig d,,
			\squig a,8 s4 \squig a8 |
		}
}
bassC = {
	\relative c, {
		\key c \major
		<c e'>2. g''4 |
		\tuplet 3/2 {e8 e e} c4.:32^\> r8\! c,4 |
		e'16 e e e g4.:32^\> r8\! fis4 |
		d,1 |

		\key g \major
		d2. f4 |
		\key c \major
		f1 |
		a1 |
		c,2. \tuplet 3/2 {g'8 g g} |

		c,4.:32 r8 g'2 |
		c,,2. \tuplet 3/2 { e''8 e e } |
		c,2:32 r4 \tuplet 3/2 { g'8 8 8 } |
		<g, g'>1:32 |

	}
}

arpeggiosD = {
	\key es \major
	\squig es'4 \squig d'8 \squig f'8 
		\squig es8 \squig c8 r8  \squig bes'8 |
	\squig es8 \squig g'8 \squig as'4
		\squig es8 \squig g'8 \squig r8 \squig as'8 | 
	\squig es'4 \squig d'8 \squig f'8 \squig g''4 \squig f8 \squig g'' |
	\squig es8 \squig g'8 \squig as'4
		\squig es8 \squig g'8 \squig r8 \squig as'8 |

	\squig es8 \squig g'8 \squig bes'8 \squig bes8
		\squig es8 \squig g'8 \squig r8 \squig as'8 |
	\squig es'4 r8 \squig g'8 
		\squig es8 \squig c8 \squig aes8  \squig bes'8 |
	\squig d'4 \squig g8 \squig as'8
		\squig f8 \squig d8 \squig bes8 \squig as'8 | 
	r8 \squig es'8 \squig d8 \squig f'8 \squig d'8 \squig bes'8 r8 \squig g'' |
	\squig bes''8 \squig g'8 \squig bes'8 \squig bes8
		\squig es8 \squig g'8 \squig g8 \squig as'8 |

	\squig es'8 \squig bes8 \squig d8 \squig f,8 \squig bes'8 \squig d'8 \squig g8 \squig g' |
	\squig bes''8 r8 \squig bes'8 \squig bes,8
		\squig es8 \squig g'8 \squig g,8 \squig as'8 |
}
melodyD = {
	\relative c' {
		\key es \major
		\clef "bass"
			r8 es8 d4 r8 c bes4 |
			f8 g8 r8 aes c4 c4 |
			c8 bes4. r8 fis g es |
			r4 d4 d4 f4 |

			r8 as4. g8 f8 r8 d8 |
			c4 es4 r8 fis8 d4 |
			c8 b8 r8 d8 r8 es fis as |
			bes4 r4 r4 d8 as |
			r8 bes4. r2 |

			aes4. aes8 r4. d8 |
			r8 aes4. r2 | 

		}
}
bassD = {
	\relative c,, {
		\key es \major
		<es es'>2. d''4 |
		r4 es,,2. |
		r4 c'2. |
		as1 |

		f2. bes4 |
		r4 c2. |
		r4 f2. |
		r4 bes2. |
		<es,, es'>1 |

		r1 |
		<bes' bes'>2:32\< <aes aes'>2:32 |
	}
}

arpeggiosE = {
	\key fis \major
	\arpeggioArrowDown
	\squig b8 \squig cis'8 s4
		s8 \squig b8 \squig cis'8 s8 |
	s4 \squig cis'8 \squig dis'
			\squig ais8 s4 \squig ais'8 |
	\squig b'8 \squig cis,8 s4
		s8 \squig b8 \squig cis'8 s8 |
	\squig b,8 \squig cis8 s4
		s8 s \squig cis8 s8 |

	\squig b8 \squig cis,8 s4
		s8 s \squig cis,8 s8 |
	s4 \squig cis,8 s8
			s8 s4 s8 |
	s8 s8 s4
		s8 s s s8 |
	s8 \squig cis8 s4
		s8 s8 s8 s8 |
}
melodyE = {
	\relative c' {
		\key fis \major
		\clef "bass"
		s4 \squig cis,8 \squig dis,
			\squig ais,,8 s4 \squig ais,8 |
		\squig b,,8 \squig cis,8 s4
			s8 \squig b8 \squig cis,8 s8 |
		s4 \squig cis,,8 \squig dis,
			\squig ais,8 s4 \squig ais8 |
		s4 \squig cis8 \squig dis,,
			\squig ais,8 \squig b,,8 s8  \squig ais,,8 |

					s4 \squig cis,8 \squig dis,
			\squig ais,,8 \squig b,8 s8 \squig ais,8 |
		\squig b8 \squig cis,8 s8 \squig dis,
			\squig ais8 \squig b,,8 \squig cis,8  \squig ais,8 |
		\squig b,,8 \squig cis,8 \squig cis,,,8 \squig dis,
			\squig ais,8 \squig b,,8 \squig cis,,8 \squig ais,,,8 |
		\squig b,8 s8 \squig cis,,8 \squig dis,
			\squig ais,,8 \squig b,8 \squig cis,,,8 \squig ais,,8 |

		<< \squig b,,8\> s8^"muddy rumble">> \squig cis,8 \squig cis,,,8 \squig dis,
			\squig ais,8 \squig b,,8 \squig cis,,8 \squig ais,,,8 |
		\squig b,8 \squig cis,,,8 \squig cis,,8 \squig dis,,,
			\squig ais,8 \squig b,,8 \squig cis,,,8 \squig ais,,,,8\! |

		}
}
bassE = {
	\relative c,, {
		\key fis \major
		<fis fis'>2.:32\> r4\! |
		r4 cis''4 ais gis |
		r4 \tuplet 3/2 { cis,8 8 8 } cis4.:32 r8 |
		r4 dis' ais gis |

		\tuplet 3/2 { dis8 8 8 } dis4:32 eis16 16 16 16 eis4:32 |
		<b b'>2.:32 r4 |
		\ottava #-1
		fis4 eis2 b4 |
		r4 ais4 cis2 |
	}
}




\score {
	\new PianoStaff <<
		\new Staff = "arpeggios" \with {
			\override VerticalAxisGroup.staff-staff-spacing = #'((minimum-distance . 15))
		}<<
			\new Voice {
				%\override Staff.StaffSymbol.line-positions = #'(-2)
				\clef "treble"
				%\set Staff.clefPosition = #0
	  			%\set Staff.middleCPosition = #-4

				\arpeggiosA
				\arpeggiosB
				\arpeggiosC
				\arpeggiosD
				\arpeggiosE
			}
			\new FiguredBass \figuremode {
				s4 <7 3>4 s4 <7 3>4
				s4 <7 3>4 s4 <\markup \bold "sim.">4
			}
		>>
		\new Staff = "melody" \with {
			%\accidentalStyle dodecaphonic
			\override VerticalAxisGroup.staff-staff-spacing = #'((minimum-distance . 15))
		}<<
			\new Voice {
				\clef "treble"

				%\stemless

				\melodyA
				\melodyB
				\melodyC
				\melodyD
				\melodyE
			}
			\new FiguredBass \figuremode {
				s4 <6>4 <6>4 <\markup \bold "sim.">4
			}
		>>
		
		\new Staff = "bass" \with {
			%\override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 50))
		}<<
			\new Voice {
				\clef "bass"

				\bassA
				\bassB
				\bassC
				\bassD
				\bassE
			}
			\new FiguredBass \figuremode {
				
			}
		>>

	>>
	\layout {
   		\context {
     		\Score
      		\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
    		proportionalNotationDuration = #(ly:make-moment 1/16)
    		%\omit BarLine
    		%\omit Staff.KeyCancellation
    	}

    	\context {
    		\GrandStaff
    		\remove Span_bar_engraver
    	}
    }
}

