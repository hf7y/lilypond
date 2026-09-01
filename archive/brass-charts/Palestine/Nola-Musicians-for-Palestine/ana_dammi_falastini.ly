\version "2.24.1"
\include "arabic.ly"
\language "english"
\paper {
	left-margin = 2\cm
}

\header {
	title = "Ana Dammi Falastini"
}

%global settings
global = {
	\key d \kurd
	\time 4/4
	\tempo 4 = 200
}
%melodic components
intro = {
	\repeat volta 4 {
		\alternative {
			{ r4 d16 ef d ef d4 d16 ef d ef | d4 r4 d16 ef d ef d4 }
			{ r4 d,8 d ef ef f f | g g a a bf bf c c }
		}
	}
}

theme = {
	| r4 d8 g f4 f8 ef | d4 ef f r
	| r4 d8 g f4 f8 ef | d4 ef ef r
	| r4 d8 g f4 f8 ef | d4 ef f8 g16 a g4
	| r4 a8 a a4 a8 g | f4 a  g r8 g | f4 a g r8 g | f4 a g f8 ef  | d4 f8 f f4 f8 f | f4 g f8 ef d c |
}

theme_background = {
	| d4 r2. | r2. c4 | f r2. | r2 d4 c | d4 r2. | r1 | f4 r2. | f4 a g r | f a g r | f a g f8 ef | d4 r2. | r1 |
}


%parts
melody = {
	\global

	%intro
	\break \section \sectionLabel \markup \box "Intro"
	\relative c'' { \intro }

	\repeat segno 2 {
		%theme
		\break \section \sectionLabel \markup \box "A"
		\relative  c' { \theme }

		%theme background
		\break \section \sectionLabel \markup \box "B"
		\relative  c'' { \theme_background }

		%pedal 1
		\break \section \sectionLabel \markup \box "C"
		\relative  c' {
			\repeat volta 2 {
				{ | d4^"All 1/4 notes in this section have a short trill" ef8 d d4 ef8 d | }
				{ f4 ef8 d d4 ef8 d }
				{ \repeat unfold 2 { d4 ef8 d } }
				\alternative {
					{ f8 g ef d d4 ef8 d }
					{ f8 g ef d d4 r }
				}
			}
		}

		%2nd pedal (on 3rd)
		\break \section \sectionLabel \markup \box "D"
		\relative  c' {
			\repeat volta 3 {
				| e8 f f f f4 a8 g |
				\alternative {
					{ | g4 e f8 f f4 |}
					{ | g4 e f4 a8 g | \repeat unfold 2 {g4 a8 g } | g4 e f8 ef d c | }
					\textEndMark "EITHER 1) back to A, 2) drum break for chants, or 3) to coda to end"
				}
			}
		}
	}
}

accompaniment = {
	\global

	%intro
	\break \section \sectionLabel \markup \box "Intro"
	\relative c'
	\repeat volta 4 {
		\alternative{
			{ | d1 ~ d1 | }
			{ | r4 d8 d ef ef f f | g g a a bf bf c c |}
		}
	}

	%theme background
	\break \section \sectionLabel \markup \box "A"
	\relative  c'' { \theme_background }

	%theme
	\break \section \sectionLabel \markup \box "B"
	\relative  c' { \theme }

}

\score {
	\transpose d bf, {
		<<
			\new Staff \with { instrumentName = "Melody" shortInstrumentName = "mldy." } { \melody }
			%\new Staff \with { instrumentName = "Accompaniment" shortInstrumentName = "accomp." } { \accompaniment }
		>>
	}
}

