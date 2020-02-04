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
	\ottava #-1
	<e g bes d >1~ | 1 |
	r4 <e g bes d >2.~ | 1 | 
	r4 <e g c e >4 <g bes d fis >2~ | 2 r4 <bes c e gis >4~ |
	\set tieWaitForNote = ##t
	<bes c e gis >1~ | { \hide gis'4 \hide bes, \hide e \hide c } |

	\break	
	r4 <e, g bes d >2.~ | 1 | 
	r4 <e g b! d >4 <e g b d >2~ | 1 | 
	r4 <e g b d >4  <fis gis cis e >  <gis b dis fis > |
	\ottava #0
		<ais cis f gis >  <dis g ais > <d f a c > <e g b d > |
	<fis a cis e >2. r4 | r1 |

	\break
	r4 <e g b d >4 <fis a cis e >2~ | 1 | 
	r4 <fis a cis e > <gis b dis fis >  <bes cis f gis >~ | 1 |
	r4 <fis a cis e >  <gis b dis fis >  <ais cis f gis > |
	  <c dis g ais > <d f a c > <e g b d > <fis a cis e > |
	<gis b dis fis>8  <ais cis f gis>~ 4 s2 |

}
pedal-tones = \relative c,, {
	\ottava #-1
	<c c'>1~ | 2. r4 |
	<c c'>1~ | 2. r4 |
	<c c'>1~ | 4 \ottava #0 r4 <c' g'>2~ |
	<c g'>1 | r1 |

	<c g'>1~ | 2. r4 |
	<c g'>1~ | 2. r4 |
	<c g'>2 <g' c>2 | <c e>2 
		{
			\clef "treble"
		 	\tuplet 5/4 { fis'''16  g16  d16  cis16  g'16 } 
			\tuplet 5/4 { ais,16  e16  g16  fis,16  dis'16 }  |
			 \tuplet 5/4 { f16  f16  g,16  ais,16  g16 } 
			 \clef "bass"
			 \tuplet 5/4 { f'16  e,16  cis'16  dis16  b16 } 
			 \tuplet 5/4 { f16  g16  e,16  e'16  fis,16 } 
			 \tuplet 5/4 { a16  g16  c,16  d,16  g16 }  |
			 e16  d'16  c16  c,16  g'16 r8. r2 |
		}

	r1 | \clef "bass" r2 <g' c>2~ 
	<g c>2. r4 | <c e>1 ~ |
	<c e>2 <e g> | <g bes> \tuplet 3/2 { <bes c>4 <c d> <d e> }|
	\clef "treble"
		 \tuplet 5/4 { g16  b16  gis16  c16  gis'16 } 
		\tuplet 5/4 { a16  d,,16  a'16  e'16  g,16 }
		\clef "bass"
		\change Staff = "up"
	\new Voice \autochange {
		% ________________________________________bar 2 :
 		\tuplet 5/4 { d'16  ais''16  c,16  f,16  dis16 } 
		 \tuplet 5/4 { ais16  e'''16  fis,,16  a,16  f'16 } 
		 \tuplet 5/4 { ais16  gis,16  c'16  a,16  c''16 } 
		 \tuplet 5/4 { e,,,16  e'''16  f16  g,,,16  ais''16 }  |
		% ________________________________________bar 3 :
 		\tuplet 5/4 { g,,16  ais16  g'16  dis16  ais''16 } 
		 \tuplet 5/4 { cis'16  b,16  a,16  g'16  g,16 } 
		 \tuplet 5/4 { c'16  g16  g,,,16  g16  e'16 } 
		 \tuplet 5/4 { e'16  g''16  f'16  ais,,16  g''16 }  |
		% ________________________________________bar 4 :
 		\tuplet 5/4 { ais16  cis,,16  b,16  g'''16  g16 } 
		 \tuplet 5/4 { g16  c,,,,16  g'''16  g,,16  g'16 } 
		 \tuplet 5/4 { g,,,16  a'16  g''16  e'''16  c,,16 } 
		 \tuplet 5/4 { d''16  g,,16  g,,,,16  g'16  g16 }  |
		% ________________________________________bar 5 :
 		\tuplet 5/4 { g'''16  g16  g,,,,16  g''''16  g16 } 
	 	\tuplet 5/4 { g''16  g,,,,16  g''''16  g,,,16  g,,16 }
	}
}


\score {
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