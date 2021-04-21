\version "2.20.0"

\header {
  title = "Tresse"
  composer = "Z. V. Pine"
  tagline = "April 2021"
}


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
% \include "./static.ly"

% BONUS
% shaped-function init
%	--- returns function that goes to chorale->texture
%	--- uses some scoped/closed variables to modify the function a little every time it's called

\layout {
	\context {
		\Staff
		\numericTimeSignature
	}
}

\score {
	<<
		\new GrandStaff <<
			\new Staff = "fl" \with {
				instrumentName = "Flute" }
			{
				\tempo 4=120
				\clef "treble"
				%#timecode
			}
			\new Staff = "cl" \with {
				instrumentName = "Clarinet" }
			{
				\clef "treble"
				%#timecode
			}
			\new Staff = "bn" \with {
				instrumentName = "Basson" }
			{
				\clef "bass"
				%#timecode
			}
			\new Staff = "tbn" \with {
				instrumentName = "Trombone" }
			{
				\clef "bass"
				%#timecode
			}
		>>
		\new GrandStaff <<
			\new Staff = "vn" \with {
				instrumentName = "Violin" }
			{
				\clef "treble"
				%#timecode
			}
			\new Staff = "va" \with {
				instrumentName = "Viola" }
			{
				\clef "alto"
				%#timecode
			}
			\new Staff = "vc" \with {
				instrumentName = "Cello" }
			{
				\clef "bass"
				%#timecode
			}
			\new Staff = "db" \with {
				instrumentName = "Bass" }
			{
				\clef "bass_8"
				%#timecode
			}
		>>
		\arrangement
	>>
}