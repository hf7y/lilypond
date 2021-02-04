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
	\clef "bass"
	r2 <e g ais d >4 <e g c e >4 | <g ais d fis >1 | 
	r2 \tuplet 3/2 { <e g ais d >4 <e g c e >4 <g ais d fis >4 } | 
		<ais c e gis >1 |
	r4 <e g ais d >4 \tuplet 3/2 { <e g c e >4 <g ais d fis >4 <ais c e gis >4 } |
		\clef "treble"
		<c d g ais >4 <d e gis c >4  <e g b d >4  <fis gis cis e >4 |
	\set tieWaitForNote = ##t
	<gis b dis fis >1~ | 
		{ \hide gis4 \hide b \hide dis \hide fis } |

	\clef "bass"
	r2 <e,, g ais d >4 <e g c e >4 | r4 <g ais d fis >2.~ | 
	<g ais d fis>4 r4 \tuplet 3/2 { <e g ais d >4 <e g c e >4 <g ais d fis >4 } | 
		r4 <ais c e gis >2 <c d g ais >4~|
	<c d g ais >2 \tuplet 3/2 { r4 <e, g ais d >4 <g ais d fis >4 } |
		\clef "treble"
		\tuplet 3/2 { <ais c e gis >4 <c d g ais >4 <d e gis c >4 } <e g b d >4 \tuplet 3/2 { r8 <fis gis cis e >4 } |
	\set tieWaitForNote = ##t
	<gis b dis fis >4 <ais cis f gis >2.~
		{ \hide ais4 \hide cis \hide f \hide gis } |

	\break	
	e,4~ g~ ais~ d~ | <e, g ais d >1 | 
	<e g b d >4  <fis gis cis e >2.~ | <fis gis cis e >1|
	<e g b d >4  <fis gis cis e >2 <gis b dis fis >4~ | <gis b dis fis >1 |
		<ais cis f gis >4  <dis g ais > <d f a c > <e g b d > |
	<fis a cis e >2. r4 | r1 |

}
pedal-tones = \relative c, {
	\ottava #-1
	<c, c'>1~ | 2 <c' g'>2 |
	<c, c'>1~ | 2 <c' g'>2 |
	<c, c'>1  | 
		\ottava #0 
		r4 c' g' c |
	e4 ais, \tuplet 3/2 { fis' c gis' } |
		d \tuplet 3/2 { r8 g,4 } r2 | 

	\ottava #-1
	<c,, c'>1~ | 2 <c' g'>2 |
	<c, c'>1 | <c' g'> |
	<c, c'>2. 
		\ottava #0 
		\tuplet 3/2 {r8 g''4} | 
		\tuplet 3/2 { b4  g'4  e4 } |
	\tuplet 3/2 { ais4 c e } |
		\clef "treble"
		g8  c  ais  c \tuplet 3/2 { ais'4  c  e,  } |
	g'8  c, g  e \tuplet 5/4 { g  c,  e, b  g } |

	\clef "bass"
	\tuplet 3/2 { e4 bes g } 
	<< 	\voiceTwo { c,2~ | c1 } \\
		\voiceOne { r4 g'8 bes | r4 g8 bes r4 g8 bes |} >>	
	<< 	\voiceTwo { c,1~ | c1 } \\
		\voiceOne { r4 g'8 bes r4 g8 bes | r4 g8 bes r4 \tuplet 3/2 { g8 bes g }|} >>	
% ________________________________________bar 2 :
 \tuplet 3/2 { bes8  g8  c,8 } 
	 \tuplet 3/2 { g'8  c8  g'8 }
		 \tuplet 3/2 { c8  e8  c,8 }
		 	\clef "treble"
			 \tuplet 3/2 { fis'8  e8  g'8 }  |
% ________________________________________bar 3 :
 \tuplet 3/2 { c,8  ais8  e8 } 
	 \tuplet 3/2 { g8  e'8  fis,8 } 
		 \tuplet 3/2 { c'8  d,8  g'8 } 
			 \tuplet 3/2 { e,8  ais'8  fis8 }  |
% ________________________________________bar 4 :
 \tuplet 3/2 { e'8  c8  d,8 } 
	 \tuplet 3/2 { ais'8  fis,8  b8 }
	 		g16  d16  c16  g''16 
			ais,,16  e''16  fis,16  ais16  |
% ________________________________________bar 2 :
c,16  g'16  ais16  d,16 
	c'16  g16  c16  c'16 
		gis16  c,,16  c16  e16 
	\clef "bass"
	\change Staff = "up"
	\autochange \relative c {
			g'16  fis,16  gis'16  d16  |
% ________________________________________bar 3 :
c16  d'16  fis,16  ais'16 
	c16  c,16  fis,16  b,16 
		e16  ais'16  g16  b16  
\tuplet 5/4 { e16  fis,16  ais,,16  c''16  g16 }  |
% ________________________________________bar 2 :
 \tuplet 5/4 { ais,16  d,,16  c'16  g''16  c16 } 
	 \tuplet 5/4 { c,,16  gis''16  c,16  c'16  e,,,16 } 
		 \tuplet 5/4 { g'16  fis'16  fis,,16  d''16  c'16 } 
			 \tuplet 5/4 { d,16  fis16  fis16  c,,16  c'''16 }  |
% ________________________________________bar 3 :
 \tuplet 5/4 { fis,16  b,,16  e'16  ais'16  g,,16 }
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