\version "2.24.0"
\include "../Global.ly"

\header {
  title = "Anthem for Eris"
  composer = "J.R. Hankins."
  % Hankins was in the NYC based Hungry March Band
}

\include "Anthem_Trumpet.ly"
trumpet = {
	\trumpetI	\trumpetA	\trumpetB	\trumpetC 
}

\include "Anthem_Tuba.ly"
tuba = {
	\tubaI	\tubaA	\tubaB	\tubaC 
}


global = {
	\mark "Intro"
	\tweak direction #DOWN
		\sectionLabel "Add-in one group at a time"

	s1 * #(ly:music-length trumpetI)
	\break

	\mark \default
	s1 * #(ly:music-length trumpetA)
	\break

	\mark \default
	s1 * #(ly:music-length trumpetB)
	\break

	\mark \default
	s1 * #(ly:music-length trumpetB)
	\break
}

\score {
	\new StaffGroup <<
		\new Staff = "trumpet" {
			\clef "treble"
			<< \global \trumpet >>
		}
		\new Staff = "tuba" {
			\clef "bass_8"
			<< \global \tuba >>
		}
	>>
}

% \score {
% 	\new Staff {
% 		\sectionLabel \markup \bold "Intro"
% 		\override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
% 		\tweak direction #DOWN
% 		\lineLabel "Add-in one group at a time"
% 		\time 2/2
% 		\trumpetI

% 		% \break
% 		\mark \default
% 		\lineLabel "tubas start, midhorns join in:"
% 		\transpose c c'' { \tubaA }

% 		% \break
% 		\newSpacingSection
% 		\override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
% 		\tweak padding #label-pad
%    		\tweak X-offset #4
%    		\textMark 
% 	   		\markup \italic \line { \bold "high horns on cue " "(off and on together, also weird lines, noises etc.)" \bold ":" }
% 		\trumpetA
% 		\tweak direction #DOWN
% 		\tweak Y-offset #cue-offset
% 		\textEndMark
% 			\markup \fill-line {
% 				\box \pad-markup #cue-pad \column {
% 					\line {  \bold "cue for B: " "melody horns join in with tubas/mid-horns for 2x on A bass line" }
% 				}
% 			}

% 		% \break
% 		\mark \default
% 		\time 3,2,2 7/8
% 		\newSpacingSection
% 		\lineLabel "tubas and mid-horns:"
% 		\transpose c c'' { \tubaB }

% 		% \break
% 		\lineLabel "high horns on cue:"
% 		\trumpetB \bar ".|:-||"
% 		\tweak direction #DOWN
% 		\tweak Y-offset #cue-offset
% 		\textEndMark
% 			\markup \fill-line { 
% 				\box \pad-markup #cue-pad \column {
% 					\line { \bold "cue for C: " "melody plays a few times, stops so band can groove, then plays again 2x" }
% 				}
% 			}

% 		% \break
% 		\mark \default
% 		\lineLabel "tubas and mid-horns:"
% 		\transpose c c'' { \tubaC } \bar ":|.|:"

% 		% \break
% 		\lineLabel "high horns:"
% 		\trumpetC \bar "||"
% 		\tweak direction #DOWN
% 		\tweak Y-offset #cue-offset
% 		\textEndMark
% 			\markup \fill-line {
% 				\box \pad-markup #cue-pad \column {
% 					\line { \bold { "1st x after C: " }  "go back to B" }
% 					\vspace #0.5
% 					\line { \bold { "2nd x after C: " }  "play B groove 4x then either go to A or end" }
% 				}
% 			}
% 	}
% }