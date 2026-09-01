\version "2.24.1"

niente = \once \override Staff.Hairpin.circled-tip = ##t
nienteOn = \override Staff.Hairpin.circled-tip = ##t
nienteOff = \revert Staff.Hairpin.circled-tip
\include "./glissando.ily"
\include "./square.ily"
\include "./half-harmonic.ily"

\include "./loveme-longA.ly"
\include "./loveme-longB.ly"
\include "./loveme-longC.ly"

\paper {
  #(set-paper-size "letter")
  
  indent = 1.0\in

  top-margin = 0.5\in
  left-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in

  markup-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 1 ))

  system-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 10))
}

\layout {
\context {
  % \Score
  % \override SpacingSpanner.common-shortest-duration =
% 	    #(ly:make-moment 1/32)
	}
}

global = { 
	\glissandoFormatting
	\override Score.TimeSignature.break-visibility = ##(#f #t #t)
	\numericTimeSignature
	\override Score.SpacingSpanner.common-shortest-duration =
	    #(ly:make-moment 1/80)
	% \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
	% \override Staff.Clef.break-visibility = ##(#f #f #t)
	\override TextSpanner.bound-details.left.text = "rallentando"
	\override TextSpanner.bound-details.right.text = ""

	\tempo 4 = 48
	s1 %\break 
	s1. %\break 
	\repeat unfold 2 { s1 } 
	s2. | s1 |
	s2. | s2. |
	\repeat unfold 5 {	s1 %\break 
		} 
	s2. %\break 
	\bar "||" %m14 

	s1 %\break 
	s1 %\break 
	s2 %\break 
		%m17
	s2. %\break 
	s2. 
	\repeat unfold 10 { s1 %\break 
		} 
	s1 \break \newSpacingSection \bar "||" %m31
	\override Score.SpacingSpanner.common-shortest-duration =
	    #(ly:make-moment 1/72)
	\tempo 4 = 66 \grace { s8 } s1 %\break 
	\repeat unfold 4 { s1 %\break 
		}
	s1\startTextSpan s2.. s8\stopTextSpan \bar "||"
	\tempo 4=88
	s1 s4 %\break 
	s1 s4 %\break 
	s1 s2...\startTextSpan s16\stopTextSpan
	s1 s1 \break \newSpacingSection \bar "||" %m44
	\override Score.SpacingSpanner.common-shortest-duration =
	    #(ly:make-moment 1/80)
	
	\tempo 4 = 48 s1 %\break 
	s2. %\break 
	\repeat unfold 3 { s1 } 
	s1 \break s1 \break

	s2....\startTextSpan s32\stopTextSpan \bar "||" \break 

	\tempo "Adagio"
	s1 s1 s1 \break
	\repeat unfold 2 { s1 %\break 
		} \newSpacingSection \bar "|."
}

horn = { 
	\hornA
	\hornB
	\hornC
}

harp = { 
	\harpA
	\harpB
	\harpC
}

guitar = { 
	\guitarA
	\guitarB
	\guitarC
}

\header {
  title = "Love Me (Long)"
  composer = "Z.V. Pine"
  instrument = "Horn in F"
  tagline = ""
}

% \bookpart {
% 	\score {
% 		<<
% 			% \new Staff = "flute" {
% 			% 	<< \global \flute >>
% 			% }
% 			\new Staff \with {
% 				instrumentName = "Horn in F"
% 				shortInstrumentName = "" %"Hn"
% 			} {
% 				<< \global \transpose f c \horn >>
% 			}
% 			\new Lyrics = "tenors" { \global }
% 			\new Staff = "guitar" \with {
% 				instrumentName = "Guitar"
% 				shortInstrumentName = "" % "Gtr"
% 			} {
% 				\clef "treble_8"
% 				<< \global \guitar >>
% 			}
% 			\new GrandStaff = "harp" \with {
% 				instrumentName = "Harp"
% 				shortInstrumentName = "" %"Hp"
% 			} <<
% 				\new Staff = "up" { 
% 					<< \global \harp >>
% 				}
% 				\new Lyrics = "altos" { \global }
% 				\new Staff = "down" { 
% 					\clef "bass"
% 					<< s1*#(ly:music-length harp) >>
% 				}
% 			>>
% 		>>
% 	}
% }

hornFormatting = { 
	\textLengthOn
  \override TextScript.staff-padding = #1
	\override Staff.DynamicLineSpanner.staff-padding = #4
	\glissandoFormatting
	% \override Score.TimeSignature.break-visibility = ##(#f #t #t)
	\numericTimeSignature
	\override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/20)
	% \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
	% \override Staff.Clef.break-visibility = ##(#f #f #t)
	\override TextSpanner.bound-details.left.text = "rallentando"
	\override TextSpanner.bound-details.right.text = ""

	\tempo 4 = 48
	s1 %\break 
	s1. %\break 
	\repeat unfold 2 { s1 } 
	s2. | s1 |
	s2. | s2. |
	\repeat unfold 5 {	s1 %\break 
		} 
	s2. %\break 
	\bar "||" %m14 

	s1 %\break 
	s1 %\break 
	s2 %\break 
		%m17
	s2. %\break 
	s2. 
	s1 \pageBreak
	\repeat unfold 9 { s1 %\break 
		} 
	s1 %% \break 
	\newSpacingSection \bar "||" %m31
	\override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/72)
	\tempo 4 = 66 \grace { s8 } s1 %\break 
	\repeat unfold 4 { s1 %\break 
		}
	s1\startTextSpan s2.. s8\stopTextSpan \bar "||"
	\tempo 4=88
	s1 s4 %\break 
	s1 s4 
	s1 s2...\startTextSpan s16\stopTextSpan
	s1 s1 \pageBreak
	 \newSpacingSection \bar "||" %m44
	
	\tempo 4 = 48 s1 %\break 
	s2. %\break 
	\repeat unfold 3 { s1 } 
	s1 %% \break 
	s1 %% \break

	s2....\startTextSpan s32\stopTextSpan \bar "||" %% \break 
	\override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4)

	\tempo "Adagio"
	s1 s1 s1 %% \break
	\repeat unfold 2 { s1 %\break 
		} \newSpacingSection \bar "|."
}
\bookpart {
	\score {
		<<
			% \new Staff = "flute" {
			% 	<< \global \flute >>
			% }
			\new Staff \with {
				% instrumentName = "Horn in F"
				shortInstrumentName = "" %"Hn"
			} {
				<< \hornFormatting \transpose f c \horn >>
			}
			\new Lyrics = "tenors" { \hornFormatting }
		>>
	}
}

% guitarFormatting = { 
% 	\override DynamicLineSpanner.staff-padding = #3
% 	\glissandoFormatting
% 	% \override Score.TimeSignature.break-visibility = ##(#f #t #t)
% 	\numericTimeSignature
% 	\override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/20)
% 	% \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
% 	% \override Staff.Clef.break-visibility = ##(#f #f #t)
% 	\override TextSpanner.bound-details.left.text = "rallentando"
% 	\override TextSpanner.bound-details.right.text = ""

% 	\tempo 4 = 48
% 	s1 %\break 
% 	s1. %\break 
% 	\repeat unfold 2 { s1 } 
% 	s2. | s1 |
% 	s2. | s2. |
% 	\repeat unfold 5 {	s1 %\break 
% 		} 
% 	s2. %\break 
% 	\bar "||" %m14 

% 	s1 %\break 
% 	s1 %\break 
% 	s2 %\break 
% 		%m17
% 	s2. %\break 
% 	s2. 
% 	\repeat unfold 10 { s1 %\break 
% 		} 
% 	s1 %% \break 
% 	\newSpacingSection \bar "||" %m31
% 	%% \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/72)
% 	\tempo 4 = 66 \grace { s8 } s1 %\break 
% 	\repeat unfold 4 { s1 %\break 
% 		}
% 	s1\startTextSpan s2.. s8\stopTextSpan \bar "||"
% 	\tempo 4=88
% 	s1 s4 %\break 
% 	s1 s4 %\break 
% 	s1 s2...\startTextSpan s16\stopTextSpan
% 	s1 s1 %% \break
% 	 \newSpacingSection \bar "||" %m44
% 	%% \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/80)
	
% 	\tempo 4 = 48 s1 %\break 
% 	s2. %\break 
% 	\repeat unfold 3 { s1 } 
% 	s1 %% \break 
% 	s1 %% \break

% 	s2....\startTextSpan s32\stopTextSpan \bar "||" %% \break 

% 	\tempo "Adagio"
% 	s1 s1 s1 %% \break
% 	\repeat unfold 2 { s1 %\break 
% 		} \newSpacingSection \bar "|."
% }

% \bookpart {
% 	\score {
% 		\new Staff = "guitar" \with {
% 			instrumentName = "Guitar"
% 			shortInstrumentName = "" % "Gtr"
% 		} {
% 			\clef "treble_8"
% 			<< \guitarFormatting \guitar >>
% 		}
% 	}
% }

% harpFormatting = { 
% 	\override DynamicLineSpanner.staff-padding = #3
% 	\glissandoFormatting
% 	% \override Score.TimeSignature.break-visibility = ##(#f #t #t)
% 	\numericTimeSignature
% 	\override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/20)
% 	% \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
% 	% \override Staff.Clef.break-visibility = ##(#f #f #t)
% 	\override TextSpanner.bound-details.left.text = "rallentando"
% 	\override TextSpanner.bound-details.right.text = ""

% 	\tempo 4 = 48
% 	s1 %\break 
% 	s1. %\break 
% 	\repeat unfold 2 { s1 } 
% 	s2. | s1 |
% 	s2. | s2. |
% 	\repeat unfold 3 {	s1 %\break 
% 		} 
% 	s1 \pageBreak
% 	s1 
% 	s2. %\break 
% 	\bar "||" %m14 

% 	s1 %\break 
% 	s1 %\break 
% 	s2 %\break 
% 		%m17
% 	s2. %\break 
% 	s2. 
% 	\repeat unfold 10 { s1 %\break 
% 		} 
% 	s1 %% \break 
% 	\newSpacingSection \bar "||" %m31
% 	%% \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/72)
% 	\tempo 4 = 66 \grace { s8 } s1 %\break 
% 	\repeat unfold 4 { s1 %\break 
% 		}
% 	s1\startTextSpan s2.. s8\stopTextSpan \bar "||"
% 	\tempo 4=88
% 	s1 s4 %\break 
% 	s1 s4 %\break 
% 	s1 s2...\startTextSpan s16\stopTextSpan
% 	s1 s1 \pageBreak
% 	 \newSpacingSection \bar "||" %m44
% 	%% \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/80)
	
% 	\tempo 4 = 48 s1 %\break 
% 	s2. %\break 
% 	\repeat unfold 3 { s1 } 
% 	s1 %% \break 
% 	s1 %% \break

% 	s2....\startTextSpan s32\stopTextSpan \bar "||" %% \break 

% 	\tempo "Adagio"
% 	s1 s1 s1 %% \break
% 	\repeat unfold 2 { s1 %\break 
% 		} \newSpacingSection \bar "|."
% }

% \bookpart {
% 	\score {
% 		\new GrandStaff = "harp" \with {
% 			instrumentName = "Harp"
% 			shortInstrumentName = "" %"Hp"
% 		} <<
% 			\new Staff = "up" { 
% 				<< \harpFormatting \harp >>
% 			}
% 			\new Lyrics = "altos" { \harpFormatting }
% 			\new Staff = "down" { 
% 				\clef "bass"
% 				<< s1*#(ly:music-length harp) >>
% 			}
% 		>>
% 	}
% }