\version "2.24.0"
\include "Global.ly"

chiasmus-clarinet = \relative c' {
	% \key es \major
	\onceOmitClef
	\time 2/2
	\markSection "Rhythm"
	\lineNote "tubas and midhorns start"
	\once\hideNotes\grace c64

	\new CueVoice {
		\bar "[|:"
		\cueClef "bass"
		\repeat volta 2 \relative c, {
			\stemDown bes4 r  \stemUp bes' r | 
			\stemDown ces,4 r \stemUp  ces' r | 
			\stemDown aes,4 r \stemUp  aes' r | 
			\stemNeutral
			<f, f'>4 r4 \extendLV #4 <aes aes'>2\laissezVibrer | 
		}
		\cueClefUnset
	}
	\numRepeats "4"
	\break

	% \repeat volta 2 {
	% 	r4 <f'>4-. 4-. 4-. |
	% 	\repeat percent 2 { <f>4-. 4-. 4-. 4-. | }
	% 	<f>4-. 4( <e>4 <f>-.) |
	% }
	% \numRepeats "4"
	% \break

	\mark #1
	% \lineLabel "1st time bottom voice only"
	\repeat volta 2 {
		\omitClef
		r4 <f' aes>4-. 4-. 4-. |
		\repeat percent 2 { <f aes>4-. 4-. 4-. 4-. | }
		<f aes>4-. 4( <e g>4 <f aes>-.) |
	}
	\numRepeats "4"
	\break

	\cueBox "Rhythm, then A, then B"

	\mark #2
	% \lineLabel "1st time bottom voice only"
	<<
		\repeat volta 2 \relative c' {
			d4 f f es | ges f es4 r |
			ces4 es es d | 
			\alternative {
				\volta 1,2,3 { f es ces es | }
				\volta 4 { f es d ces | }
			}
		}
	>>
	\break
	\cueBox "A, then Midhorns Melody"

	\markSection "Midhorns Melody"
	% \lineLabel "1st time bottom voice only"
	\new CueVoice {
		\cueClef "bass"
		\repeat volta 2 \relative c' {
			<bes>2 <f>2 | <ges>4. <f>8 <es>2 | <d>1 | <es>4. <d>8 <ces>2 |
		}
		\cueClefUnset
	} \numRepeats "4"
	\break
	\mark #2
	<<
		\repeat volta 2 \relative c' {
			d4 f f es | ges f es4 r |
			ces4 es es d | 
			\alternative {
				\volta 1,2,3 { f es ces es | }
				\volta 4 { f es d ces | }
			}
		}
		\repeat volta 2 \relative c' {
			f4 aes4 4 ges | bes aes ges4 r |
			es4 ges4 4 f | 
			\alternative {
				\volta 1,2,3 { aes ges es ges | }
				\volta 4 { aes ges f es | }
			}
		}
	>>
	\break
	\markSection "Midhorns Melody"
	\new CueVoice {
		\cueClef "bass"
		\repeat volta 2 \relative c' {
			<bes d>2 <f bes>2 | <ges ces>4. <f bes>8 <es aes>2 | <d f>1 | <es ges>4. <d f>8 <ces es>2 |
		}
		\cueClefUnset
	} \numRepeats "4"
	\break
	\cueBox \markup \center-column { 
		\line { "B, then Rhythm, then B" }
		\boxLine \vspace #0.5
		\line { "A, A with choir ahs, then to Aubade" }
	}

	\pageBreak
	\markSection "Aubade"
	\relative c'' {
		\hide NoteHead
		\hide TupletNumber
		\hide TupletBracket
		\repeat volta 4 \shiftDurations #-1 #0 {
			r8 c8 g4 aes8 g f16( g f8) |
			\repeat percent 2 { r8 c16 d \tuplet 3/2 { f8 e d } e8 g g des | }
			r8 c f8 e g4. r8 |
		} \numRepeats "4" \break

		\repeat volta 4 {
			bes8 8 r4 \tuplet 3/2 { bes4 4 4 } 
			\tuplet 3/2 { bes4 c4 4 } c2 |
		} \numRepeats "4"

		\repeat volta 2 { 
			\omit Slur
			\tupletUp
			\parenthesize e,2 \tuplet 3/2 { r4 g2_( } | \tuplet 3/2 { g4 f g } \tuplet 3/2 { aes g f } |
			e2) \tuplet 3/2 { r4 g2( } | \tuplet 3/2 { g4 f e } \tuplet 3/2 { f e des } |
			c2) \break \tuplet 3/2 { r4 g'2_( } | \tuplet 3/2 { g4 f g } bes2) |
			\tuplet 3/2 { bes4( c bes } g2) | \tuplet 3/2 { g4( \once \stemUp aes g } \tuplet 3/2 { f e f) } |
		} %\numRepeats "2"

		\repeat volta 2 {
			\tuplet 3/2 { r4 bes c } \tuplet 3/2 { des4 c bes } |
			\tuplet 3/2 { bes4 c des } \tuplet 3/2 { c4 g r } |
		} \numRepeats "8"
		\break
	}
	\addlyrics {
		\override Lyrics.LyricText.color = #white
		Ma -- ter  ma -- tu -- ta __ 
		Tu a -- sen -- ti -- mus gra -- vi -- ta -- tem nos lu -- \skip 1 men
		Pon -- dus fer -- re po -- te -- e -- ri -- mus
		\skip 2 Ah __ Ah __ Ah __ Ah __ Ah __

		Ut nos po -- test re -- flec -- te -- re lu -- cem
	}
	\addlyrics {
	  \override Lyrics.LyricText.color = #white
	  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
	  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
	  \skip 1 \skip 1 \skip 1 \skip 1
	  nos mu -- ne -- ra
	}

	\mark #3
	\revert NoteHead.transparent
	\revert TupletNumber.transparent
	\revert TupletBracket.transparent
	<< {
		\override TupletBracket.edge-height = #'(0.0 . 0.0)
		\override TupletBracket.padding = #2.5
		\tupletDown
		\repeat volta 2 {
			\parenthesize d,2 \tuplet 3/2 { r4 f4 f } |
			\tuplet 3/2 { f es f } \tuplet 3/2 { ges f es } | 
			c2 c4. 8 | 
			aes2 c2 | \break

			d2 \tuplet 3/2 { r4 f f } | 
			\tuplet 3/2 { f4 es f } aes2 |
			\tuplet 3/2 { aes4 bes aes  } f2 |
			\tuplet 3/2 { f4 ges f } \tuplet 3/2 { es4 d es } |
		}
	} \new Staff {
		% \key f \major
		\omit Staff.Clef
		\omit Staff.TimeSignature
		\bar ":|][|:"
		\hide TupletBracket
		\hide TupletNumber %\tupletUp
		\repeat volta 2 \relative c' {
			\parenthesize f2 
			\tweak direction #DOWN \lineNote \markup \concat { "2nd " \bold \upright "C" " only" } 
			\tuplet 3/2 { r4 d4 d } |
			\tuplet 3/2 { d4 ces d } \tuplet 3/2 { es d ces } |
			aes'2 4. 8 |
			f2 aes2 | 

			bes2 \tuplet 3/2 { r4 d, d } |
			\tuplet 3/2 { d4 ces d } es2 |
			\tuplet 3/2 { f4 es f } aes2 |
			\tuplet 3/2 { aes4 bes aes } \tuplet 3/2 { aes f ges } |
		}
	} >>
	% \break

	\cueBox "Midhorns Melody, then C, then to Ending Vamp"

	\markSection "Ending Vamp"
	\repeat volta 2 {
		r2 <d f bes>4 r |
		r2 <es ges ces>4 r |
		r2 <c! es aes>2_( |
		<f a c>2 <c! aes' ces>2
	} \numRepeats "4"
	\repeat volta 2 {
		<d f bes>1) |
		<es ges ces> |
		<c! es aes> |
		<f a c>2 <c! aes' ces>2
	}  \numRepeats "4"

	{ <d f bes>1\fermata \bar "|." } 
	% \addlyrics { Ah. }
}
