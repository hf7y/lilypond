\version "2.24.0"
\include "../Global.ly"

startUpper = #(define-music-function
	(music)
	(ly:music?)
	#{
		\override TextSpanner.bound-details.left.text = "1st time upper"
		#music \startTextSpan
	#})

startLower = #(define-music-function
	(music)
	(ly:music?)
	#{
		\override TextSpanner.bound-details.left.text = "1st time lower"
		#music _\startTextSpan
	#})

chiasmus-clarinet = \relative c' {
	\key es \major
	\sectionLabel "Rhythm"
	\lineNote "tubas and midhorns start"

	\new CueVoice {
		\cueClef "bass"
		\repeat volta 2 \relative c, {
			\stemDown bes4 r  \stemUp bes' r | 
			\stemDown ces,4 r \stemUp  ces' r | 
			\stemDown aes,4 r \stemUp  aes' r | 
			\stemNeutral
			<f, f'>4 r4 <aes aes'>2\laissezVibrer | 
		}
		\cueClefUnset
	}
	\numRepeats "4"
	% \break

	\lineNote "1st time lower voice only"
	\mark #1
	\repeat volta 2 {
		r4 <f aes>4-. 4-. 4-. |
		\repeat percent 2 { <f aes>4-. 4-. 4-. 4-. | }
		<f aes>4-. 4( <e g>4 <f aes>-.) |
	}
	\numRepeats "4"
	% \break
	\cueBox \markup \column {
		\line { "to Rhythm, then A, then B" }
	}

	\mark #2
	\lineNote "1st time lower voice only"
	<<
		\repeat volta 2 \relative c' {
			d4 f f es | ges f es4 r |
			ces4 es es d | 
			\alternative {
				\volta 1,2,3 { f es ces e | }
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

	% \break
	\cueBox \markup \center-column {
		\line { "A, then Midhorns Melody" }
	}

	\sectionLabel "Midhorns Melody"
	\lineNote "1st time lower voice only"
	\new CueVoice {
		\cueClef "bass"
		\repeat volta 2 \relative c' {
			<bes d>2 <f bes>2 | <ges ces>4. <f bes>8 <es aes>2 | <d f>1 | <es ges>4. <d f>8 <ces es>2 |
		}
		\cueClefUnset
	} \numRepeats "4"

	\cueBox \markup \center-column {
		\line { "B, then Midhorns Melody, then B" }
		\vspace #1
		\line { "Rhythm, then B, then A, then A with Chorus" }
		\vspace #1
		\line { "Rhythm with Chorus, then C" }
	}

	\mark #3

	\partCombine {
		r2 	\tuplet 3/2 { \startUpper r4 f'4 f' }
		\repeat volta 2 \relative c' {

			\tuplet 3/2 { f es f } \tuplet 3/2 { ges f es } \stopTextSpan | 
			\voiceTwo \startLower c2 c4. 8 | 
			aes2 c2 | 

			d2 \stopTextSpan
				\tuplet 3/2 { \startUpper r4 f f } |
			\tuplet 3/2 { f4 es f } aes2 |
			\tuplet 3/2 { aes4 bes aes  \stopTextSpan } \voiceOne f2 | \voiceTwo
			\tuplet 3/2 { \startLower f4 ges f } \tuplet 3/2 { es4 d es } |

			\alternative { 
				\volta 1,2,3 { d2\stopTextSpan \tuplet 3/2 { r4 f4 f } }
				\volta 4 { d2 r2  }
			}
		}
	} 
	{
		r2 	\tuplet 3/2 { r4 d'4 4 }
		\repeat volta 2 \relative c' {
			\tuplet 3/2 { d ces d } \tuplet 3/2 { es d c } |
			\voiceOne
			aes'2 4. 8 |
			f2 aes2 | 

			bes2 
				\voiceTwo \tuplet 3/2 { r4 d, d } |
			\tuplet 3/2 { d4 ces d } es2 |
			\tuplet 3/2 { f4 es f } 
				\voiceTwo aes2 | \voiceOne
			\omit TupletBracket
			\omit TupletNumber
			\tuplet 3/2 { aes4 bes aes } \tuplet 3/2 { aes f ges } |
			\alternative {
				\volta 1,2,3 { f2 \tuplet 3/2 { r4 d4 d } | }
				\volta 4 { d2 r2 | }
			}
		}
	}
	% \break
	\cueBox "Midhorns Melody, then C, then Ending Vamp"

	\sectionLabel "Ending Vamp"
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

	{ <d f bes>1\fermata \bar "|." } \addlyrics { [ɐ] }
}
