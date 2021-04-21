\version "2.20.0"

%For Ensemble Linea

%Outline
% chorale --- list of list of notes where each sub list has equal total duration
% melody  --- list of one list
% possibly split lists at barchecks

% chorale->(texture proc chorale #:optional ids)
%	--- applys function to chorale based on id and writes it to Staff = "id"
% 		one such function could be a simple chorale expresser

\include "./lib.ly"
\include "./chorale.ly" %includes fxns for melody and barcheck
\include "./texture.ly"
\include "./textures/buzz.ly"
\include "./textures/identity.ly"
\include "./textures/chance-rest.ly"
\include "./arrangement.ly"
\include "./parts/extract.ly"
% \include "./static.ly"

% BONUS
% shaped-function init
%	--- returns function that goes to chorale->texture
%	--- uses some scoped/closed variables to modify the function a little every time it's called

\layout {
	\context {
		\Staff
		\numericTimeSignature
		\override TimeSignature.break-visibility = #end-of-line-invisible
	}
}

% \bookpart {
% 	\header {
% 	  title = "Tresse"
% 	  subtitle = "flute"
% 	  composer = "Z. V. Pine"
% 	  tagline = "April 2021"
% 	}

% 	\score {
% 		<<
% 			\new Staff = "fl" \with {
% 				instrumentName = "Flute" }
% 			{
% 				\tempo 4=120
% 				\clef "treble"
% 				%#timecode
% 			}
% 			{ #(export arrangement "fl") \bar "|." }
% 		>>
% 	}
% }

% \bookpart {
% 	\header {
% 	  title = "Tresse"
% 	  subtitle = "clarinet"
% 	  composer = "Z. V. Pine"
% 	  tagline = "April 2021"
% 	}

% 	\score {
% 		<<
% 			\new Staff = "cl" \with {
% 				instrumentName = "Clarinet" }
% 			{
% 				\tempo 4=120
% 				\clef "treble"
% 				%#timecode
% 			}
% 			{ #(export arrangement "cl") \bar "|." }
% 		>>
% 	}
% }

% \bookpart {
% 	\header {
% 	  title = "Tresse"
% 	  subtitle = "bassoon"
% 	  composer = "Z. V. Pine"
% 	  tagline = "April 2021"
% 	}

% 	\score {
% 		<<
% 			\new Staff = "bn" \with {
% 				instrumentName = "Bassoon" }
% 			{
% 				\tempo 4=120
% 				\clef "bass"
% 				%#timecode
% 			}
% 			{ #(export arrangement "bn") \bar "|." }
% 		>>
% 	}
% }

% \bookpart {
% 	\header {
% 	  title = "Tresse"
% 	  subtitle = "bassoon"
% 	  composer = "Z. V. Pine"
% 	  tagline = "April 2021"
% 	}

% 	\score {
% 		<<
% 			\new Staff = "tbn" \with {
% 				instrumentName = "Trombone" }
% 			{
% 				\tempo 4=120
% 				\clef "bass"
% 				%#timecode
% 			}
% 			{ #(export arrangement "tbn") \bar "|." }
% 		>>
% 	}
% }

\bookpart {
	\header {
	  title = "Tresse"
	  subtitle = "violin"
	  composer = "Z. V. Pine"
	  tagline = "April 2021"
	}

	\score {
		<<
			\new Staff = "vn" \with {
				instrumentName = "Violin" }
			{
				\tempo 4=120
				\clef "treble"
				%#timecode
			}
			{ #(export arrangement "vn") \bar "|." }
		>>
	}
}

% \bookpart {
% 	\header {
% 	  title = "Tresse"
% 	  subtitle = "viola"
% 	  composer = "Z. V. Pine"
% 	  tagline = "April 2021"
% 	}

% 	\score {
% 		<<
% 			\new Staff = "va" \with {
% 				instrumentName = "Viola" }
% 			{
% 				\tempo 4=120
% 				\clef "alto"
% 				%#timecode
% 			}
% 			{ #(export arrangement "va") \bar "|." }
% 		>>
% 	}
% }

% \bookpart {
% 	\header {
% 	  title = "Tresse"
% 	  subtitle = "cello"
% 	  composer = "Z. V. Pine"
% 	  tagline = "April 2021"
% 	}

% 	\score {
% 		<<
% 			\new Staff = "vc" \with {
% 				instrumentName = "Cello" }
% 			{
% 				\tempo 4=120
% 				\clef "bass"
% 				%#timecode
% 			}
% 			{ #(export arrangement "vc") \bar "|." }
% 		>>
% 	}
% }

% \bookpart {
% 	\header {
% 	  title = "Tresse"
% 	  subtitle = "bass"
% 	  composer = "Z. V. Pine"
% 	  tagline = "April 2021"
% 	}

% 	\score {
% 		<<
% 			\new Staff = "db" \with {
% 				instrumentName = "Bass" }
% 			{
% 				\tempo 4=120
% 				\clef "bass_8"
% 				%#timecode
% 			}
% 			{ #(export arrangement "db") \bar "|." }
% 		>>
% 	}
% }