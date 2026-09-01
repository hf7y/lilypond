\version "2.24.0"
% \include "../Global.ly"


% half-page format for Sean
% Feb 10, 2026

\pointAndClickOff

highlightColor = "gainsboro"
cue-pad = #2
cue-offset = #-4
label-pad = #1

numRepeats = #(define-scheme-function
	(arg)(markup?)
	#{
		% \tweak direction #DOWN
		% \tweak Y-offset #cue-offset
		\textEndMark
		\markup \concat { "×" #arg }
	#})

cueBox = #(define-scheme-function
	(arg)(markup?)
	#{
		\tag #'cueBox {
			\tweak direction #DOWN
			% \tweak Y-offset #cue-offset
			\textEndMark
			\markup \with-color #highlightColor \box \center-column {
				\fill-line {
					
						\pad-markup #cue-pad \column { 
							\with-color "black" \line { \huge #arg } 
						}
				}
			}
		}
	#})



pishtaco-saxophone = \relative c {
	\numericTimeSignature
	\time 3/4
	\set Timing.beamExceptions = #'()
	\set Timing.baseMoment = #(ly:make-moment 1/4)
	\set Timing.beatStructure = 1,1,1
	% \key aes \major
	% \mark "Intro"
	% \new CueVoice {
	% 	\cueClef "bass"
	% 	\repeat volta 2 {
	% 		\repeat unfold 4 { g4 bes des } |
	% 		\repeat unfold 2 { e,4 g aes }
	% 		e4 g aes des4 bes aes |
	% 	}
	% 	\repeat volta 2 {
	% 		\relative c' {
	% 			g2 r4 a2 r4 | bes2 r4 a4 g e!
	% 			g2 r4 es2 r4 | des2 c4 des2 e4 |
	% 		}
	% 	}
	% 	\cueClefUnset
	% }

	\break
	\new Voice {
		\repeat volta 2 \relative c' {
			\repeat percent 2 { r4 e8 f g a | g4-. f8 e r4 | }
			r4 des8 es? e f | \break
			g4-. f8 fes r es | 
			\repeat percent 2 { des r es fes r es }
		}
		
		\mark "Transition"
		\repeat volta 4 \relative c' {
			{ des r es fes r es }
		}
		% \bar "||"
		\numRepeats "8?"

		\break
		\mark "Fanfare"
		\override Glissando.style = #'trill
		\repeat volta 2 \relative c'' { 
			r2. | g2.-> | r | fis2.-> |
			r2. | e4.-> d4.-> | e4.-> fis4.->\glissando | 
				<< \once \omit Accidental
					 \transpose c es, 
					 { a'''2->\glissando 
							\once \omit Stem 
							\omit b,,4 | } 
					 { s2 r4 } >>
		}
	}
	% \bar "|."
	% \cueBox "Intro, then A"
}

\header {
	title = "Pishtaco"
	subtitle = ""
	composer = "bruno"
	instrument = "E♭ Saxophone"
	tagline=""
	enteredby = "zvp"
}

\paper { 
	indent = 0
}
\score {
	\new Staff {
		% \key d \major
		\transpose es, c \pishtaco-saxophone
	}
}