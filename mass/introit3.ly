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
	title = "Spectral Harmony Sketch"
}

chordos = \relative c {
	\set tieWaitForNote = ##t
	\partial 16 r16 |
	\tuplet 3/2 { <e bes' d>8 <g c e> <bes d fis>8~ } 2. | %m1
	r2 \ottava #1 \tuplet 3/2 { r8 <e'' bes' d>8 <g c e> }  
		<bes d fis>4~ | %m2
	\tuplet 3/2 \headless {\no-acc fis'8 \no-acc bes, \no-acc d} \ottava #0 r2. | %m3
	r1 | %m4
	r2. r8 <g,, c e>16 <bes d fis>~ | %m5
	8 r4. r4. <e, bes' d>8 | %m6
	r4. \ottava #1 <g' c e>16 <bes d fis>
		\tuplet 5/4 {r8. <c, e g>8} r8 <d fis gis>8~ | %m7
	4.~ \headless d8 \headless fis2 | %m8
	gis8~ <gis g'!>2.. | %m9
	\grace { g'32 es c bes a } gis8 8 16 8 16~ 16 16 8 8 16 16~ | %m10
	gis16 16 8 16 8 16 \tuplet 3/2 { <g, c>8 <e bes' d> <g c e > }
		\tuplet 3/2 { <bes d fis> <c e g> <d fis ais>~ } | %m11
	<d fis ais>8 ais'16 ais16 <ais, ais'>8 8 8 8 8 8 | %m12
	<ais b'!>8 16 16 8 8 8 8 \tuplet 3/2 { b'16 ais, b'} ais,8 | %m13
	<ais b'>8 \tuplet 3/2 { ais'16 gis, fis' } ais,8 <ais b'>8
		8 \tuplet 3/2 { ais'16 gis, fis' } 
		ais,16 <ais c'!>16 \tuplet 3/2 {e'16 d' fis,} | %m14
	\scaleDurations 8/12 {
		d'16[ gis, d'] ais[ d cis] f![ dis g] a[ g b!]
			cis16[ r dis,16] r8 f16 r8 g16 r8. | %m15
	}
		\tuplet 3/2 { a,16 r8 } \tuplet 3/2 {r8 b16}
		r4 c4 \ottava #0
			\tuplet 5/4 { <d,,, fis gis>16 <e g a> <fis gis ais>
				<g! a b!> <gis ais c> }
	cis1 |

}
pedal-tones = \relative c,, {
	\ottava #-1
	\partial 16 <c, c'>16 |
	<< { g''2 d'2\rest } \\
	   { c,8 8 16 8 16~ 16 16 8 8 16 16~ } >> | %m1
	c8 <c c,>8 c16 8 16 
		\grace { e32( g bes fis } d8) c8 8 16 16~ | %m2
	c8 8 16 8 16~ 16 16 8 8 16 16~ | %m3
	c8 <c c,>8 c8 16 <c c,>16~ 16 c8 16 
		\grace { e32( g bes cis gis fis } d8) c8 | %m4
	c8 <c c,>8 8c 16 c 
		\grace { e32( g bes gis fis } d8) c8 8 8| %m5
	\grace { d32( fis gis fis e } c8) <c c,>8 c8 16 <c c,>16~ 16 c8 16 
		\grace { e32( g bes cis gis fis } d8) des8 | %m6
	c8 <c c,>8 c8 16 c 
		\grace { e32( g bes gis fis } d8) c8 8 8| %m7
	\grace { d32( fis gis fis e } c8) <c c,>8 c16 <c g'>8 c16~ 
		16 8 16 <c c,>8 c16 c16 | %m8
	c8 <c c,>16 g' \grace { gis( fis e b } cis8) c16 g'16 8 8 
		\grace { gis( fis e d } cis8)
		\grace { e32( g bes d fis } gis8 | %m9
	\ottava #0 ais16 c d8 16 8 16~ 16 16 8 
		\grace {fis ais d} \clef "treble" fis8 8 | %m10
	16 16 8 8 \tuplet 3/2 {d'16 c e} fis16 8 16~ 16 8 16~ | %m11
	fis16 gis a8 r4 r4 
		\set tieWaitForNote = ##t
		\tuplet 5/4 { <g, c>16 <e bes' d> <g c e > 
		<bes d fis> <c e g>~ } | %m12
	\tuplet 3/2 \headless {g'8 c, e} 
		\clef "bass"\tuplet 3/2 { r4 <d,, fis g>8} r2 | %m13
	\clef "treble" \tuplet 3/2 { d''16 ais fis'} g,8
		r16 <g c> <e bes' d> <g c e > 
		\tuplet 3/2 { fis' d gis} c,16 a'
		\tuplet 3/2 { gis fis ais} \tuplet 3/2 {c ais d } | %m14
	\scaleDurations 8/12 {
		\ottava #1 
		e16[ d fis] gis[ fis ais] c[ ais d] e[ d fis]
		gis16[ d!] r e r8 r16 fis,16 r16 r8. |
	}
		\ottava #0
		r16 gis, r8 r4 
		\clef "bass"
			\tuplet 5/4 { <g,, c>16 <e bes' d> <g c e > <bes d fis>
				<c e g> } r8. \ottava #-1 <c,,, c'>16 |
	<< { g''2 d'2\rest } \\
	   { c,8 8 16 8 16~ 16 16 8 8 16 16~ } >> | %m1

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
				s1 * 30	
			}
			\new Staff = "down" {
				\clef "bass"
				\pedal-tones
				s1 * 30
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