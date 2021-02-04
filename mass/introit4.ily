\include "../z/note.ily"

glissandoSkipOn = {
	\override NoteColumn.glissando-skip = ##t
	\hide NoteHead
	\hide Accidental
	\hide Tie
	\override NoteHead.no-ledgers = ##t
}

glissandoSkipOff = {
	\revert NoteColumn.glissando-skip
	\undo \hide NoteHead
	\undo \hide Tie
	\undo \hide Accidental
	\revert NoteHead.no-ledgers
}

\header {
	title = "Introit"
}

chordos = \relative c {
	\set tieWaitForNote = ##t
	\override TextSpanner.style = #'trill
	\override TextSpanner.bound-details.left.padding = #'-1
	\override TextSpanner.bound-details.right.padding = #'2.5
	\override TextSpanner.bound-details.left.text = \markup \bold "Rit."
	\partial 16 r16 |
	\tuplet 3/2 { <e bes' d>8 <g c e> <bes d fis>8~ } 2.\startTextSpan | %m1
	s2. \tiny \stemless 
		\scaleDurations 2/3 { bes8\stopTextSpan fis'8 d8 } \normalsize | %m2
	r1 | %m3
	r1 | %m4

	r2 \tuplet 3/2 {r4 <bes' d fis>8\startTextSpan~} 4 | %m5
	r2.\stopTextSpan r8 g''16-. e-. | %m6
	r2 \tuplet 5/4 { r8[ <g,, c> <e bes' d>8 <g c e> 
		<bes d fis>\startTextSpan ] } | %m7
	r1\stopTextSpan | %m8
	r1 |  %m9
	\override TextSpanner.bound-details.left.text = \markup \bold "Acc."
	<g' gis'>1\startTextSpan |  %m10

	\tuplet 5/4 { <e,, bes' d>16\stopTextSpan <g c e> <bes d fis>8 <c e g>16 }
		\override TextSpanner.bound-details.left.text = \markup \bold "N."
		<d fis gis>8\startTextSpan~ <d fis gis cis>8~ 2 | %m11
	\override TextSpanner.bound-details.left.text = \markup \bold "Rit."
	s4 \stemless <e g a d>2\stopTextSpan\startTextSpan s4 | %,12
	r4\stopTextSpan \tuplet 3/2 { r4 <g' a c d>8}
		<gis ais d e>4\startTextSpan r4\stopTextSpan | %m13
	r2. r8. \grace { \scaleDurations 2/3 { fis'32  e  d  b  a  fis 
		f  es  b  a  ges  es }} bes16 | %m14
	\tuplet 5/4 { c16 <bes d> <c e> <bes d fis> <c e g>} 
		<d fis gis>2\startTextSpan \stemless <des es g a>4 | %m15
	\grace { d32\stopTextSpan e fis gis ais c d e fis } 
		\override TextSpanner.bound-details.left.text = \markup \bold "N."
		<e fis gis ais>2...\startTextSpan
		\grace {f32\stopTextSpan  g a b cis } dis16 | %m16
	\ottava #1
	e8  e16  e16~ 
		e16  e8  e16~ 
			e16  e16  e16  e16~ 
				e16  e8  \grace { e32 des c } e16  | %m17 :
	fis8  fis8 
		fis16  fis8  fis16 
			fis8  fis16  \grace { e32 d c bes a64 b cis dis} fis16~ 
				fis16  fis16  \grace { e32 c  d  e } fis8  | %m18
	<g bes,>8  g16  g16~ 
		g16  g16  g16  g16~ 
			g16  g8 g16~ 
				g16  g8  \grace { e32  dis } g16  | %m19 :
	<g bes>8  <g bes>8 
		<g bes>16  \grace {e32  dis e d } <g bes>8  <g bes>16 
			<g bes>8  <g bes>8 
				<g bes>16  <g bes>8 <g bes>16 | %m20 :
}		

pedal-tones = \relative c,, {
	\partial 16 <c, c'>16 |
	<< {g''2 c,16  c8  c16_~ 
				c16  c16  c8 } \\ {c16  c16  c8 
		c8  c16  c16~ \stemless c16  } >> | %m1 :
	c8  c16 c16~
		c16 c8 c16 
			c16  c8  c16~ 
				c16  c8  \grace { des32  es } c16~  | %m2 :
	c16  c8  c16~ 
		c16  c16  c16  c16~ 
			c16  c8  c16~ 
				c16  c8  c16~  | %m3 :
	c16  c8  c16~ 
		c16  c8  c16~ 
			c16  \grace {c32  d  e  des} c8  c16~ 
				c16  c8  
				\grace { c32  des!  e  aes  b  g  es  des!} c16  | %m4

	<< { c16  c8  c16 
		c8  c16  c16~ 
			c16  c8  c16 c16  c16  c8 } \\ { c,2. r4} >> 
				| %m5 :
	c'16  c8  c16~ 
		c16  c8  c16 
			\grace { c32  d  fis  es} c8  c8 
				c16  c8 c16  | %m6 :
	c8  c16  c16~ 
		c16  c8  c16~ 
			c16  c16  c16  c16~ 
				c16  c8  \grace { c des32  es } c16  | %m7 :
	c8  c8 
		c16  c8  c16 
			\grace {c32  des  es  f  e! des } c8  c16  c16 
				r16[  c16]  \grace { c32  d  f  des } c8  | %m8

	<c c,>8  c16  c16
		r16[  c16  r16  c16] 
			r16[  c8  c16] 
				r16[  c8]  \grace { c32  es } c16  | %m9 :
	c8[  c16 r16] 
		r16  \grace {c32  dis e d } c8[  r16] 
			c16[ r8.] 
				c16  c16 r16 <c, c'>16 | %m10 :


	<< {g''2 c,16  c8  c16_~ 
				c16  c16  
		\grace { c32  d  e  fis  a  c  bes
			aes  f  } es8 } \\ {c16  c16  c8 
		c8  c16  c16~ \stemless c16  } >> | %m11 :
	c8  c16 c16~
		c16 c8 c16 
			<c c,>16  \grace {e32 d } c8  c16~ 
				c16  c8  \grace { des32  es } c16~  | %m12 :
	c16  c8  c16~ 
		\tuplet 6/4 { c16  c16  c16 c c c16~ } 
			c16  \grace { c32  e  f  es } c8  c16~ 
				c16 \grace { c32  dis  gis  a  fis  e} c8  c16~  | %m13 :
	c16  c8  c16~ 
		c16  c8  c16~ 
			c16  \grace {c32  d  e  des} c8  c16~ 
				c16  c8  
				\grace { c32[  des!  e  aes  b  g  es  des!]} c16  | %m14
	<< { c16  c8  c16 
		c8  c16  c16~ 
			c16  c8  c16 c16  c16  c8 } \\ { c,2. r4} >> 
				| %m15 :
	c'16  c8  c16~ 
		c16  c8  c16 
			\grace { c32  d  fis  es} c8  c8 
				c16  c8 c16  | %m16 :
	c8  c16  c16~ 
		c16  c8  c16~ 
			c16  c16  c16  c16~ 
				c16  c8  \grace { c32 des  es } c16  | %m17 :
	c8  c8 
		c16  c8  c16 
			\grace {c32  des  es  f  e! des } c8  c16  c16~ 
				c16  c16  \grace { c32[  d  f  des] } c8  | %m18
	<c c,>8  bes'8~
		bes16  \grace { c,32  es  f d c } bes'8.
			\grace { c,64  dis64  g64  f64  dis64 } bes'8.  d16~ 
				d8 \grace { c,32  es c} d'8~  | %m19 :
	d8  \grace { c,32  d fis  dis c} fis'8~
		fis16  \grace {c,32  dis e d c } gis'8.~ 
			gis8 \grace {c,32 e g bes d fis gis } ais8~ 
				\clef "bass"
	\set tieWaitForNote = ##t
				ais16~ c~ d~ e~ | %m20 :
	\override TextSpanner.style = #'trill
	\override TextSpanner.bound-details.left.padding = #'-1
	\override TextSpanner.bound-details.right.padding = #'2.5
	\override TextSpanner.bound-details.left.text = \markup \bold "Rit."
	<ais, c d e>1\startTextSpan
	r1 \stopTextSpan


}
pointilism = {


}

\score {
	<<
		% \new PianoStaff <<
		% 	\new Staff = "swell_up" {

		% 		s1 * 30	
		% 	}
		% 	\new Staff = "swell_down" {
		% 		\clef "bass_8"

		% 		s1 * 30
		% 	}
		% >>
		\new PianoStaff <<
			\new Staff = "up" {
				\chordos
				s1 *2 
			}
			\new Staff = "down" {
				\override Staff.ClefModifier.font-size = #0
				\override Staff.ClefModifier.Y-offset = #-3
				\clef "bass_8"
				\pedal-tones
				s1 * 0
			}
		>>
	>>

	\layout {
		\mergeDifferentlyHeadedOn
		\mergeDifferentlyDottedOn
		\set harmonicDots = ##t
		\override Glissando.thickness = #4
		\set Staff.pedalSustainStyle = #'mixed
		\override TextSpanner.bound-padding = #1.0
		\override TextSpanner.bound-details.right.padding = #1.3
		\override TextSpanner.bound-details.right.stencil-align-dir-y = #CENTER
		\override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
		\override TextSpanner.bound-details.right-broken.text = ##f
		\override TextSpanner.bound-details.left-broken.text = ##f
		\override Glissando.minimum-length = #4
		\override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
		\override Glissando.breakable = ##t
		\override Glissando.after-line-breaking = ##t
		\set baseMoment = #(ly:make-moment 1/8)
		\set beatStructure = #'(2 2 2 2)
		#(set-default-paper-size "a4")
	}
	\midi { }
}

\version "2.18.2"