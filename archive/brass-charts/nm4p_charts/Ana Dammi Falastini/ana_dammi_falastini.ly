\version "2.24.3"
\include "arabic.ly"
\language "english"
\paper {
	left-margin = 2\cm
}

\header {
	title = "Ana Dammi Falastini"
}

%key time and tempo settings
keyTimeTempo = {
	\key d \kurd
	\time 4/4
	\tempo 4 = 200
}
%melodic components

intro_walk_up = { r4 d8 d ef ef f f | g g a a bf bf c c }
intro_melody = {
	\repeat volta 4 {
		\alternative {
			{ r4 d16 ef d ef d4 d16 ef d ef | d4 r4 d16 ef d ef d4 }
			\relative d' \intro_walk_up
		}
	}
}

theme = {
	| r4 d8 g f4 f8 ef | d4 ef f r
	| r4 d8 g f4 f8 ef | d4 ef d r
	| r4 d8 g f4 f8 ef | d4 ef f8 g16 a g4
	| r4 a8 a a4 a8 g | f4 a  g r8 g | f4 a g r8 g | f4 a g f8 ef  | d4 f8 f f4 f8 f | f4 g f8 ef d c |
}

theme_background = {
	| d4 r2. | r2. c4 | f r2. | r2 d4 c | d4 r2. | r1 | f4 r2. | f4 a g r | f a g r | f a g f8 ef | d4 r2. | r1 |
}


%parts
melody = {
	\keyTimeTempo
	\set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

	%intro
	\break \section \mark \markup \box "Intro"
	\relative c'' { \intro_melody }

	\repeat segno 2 {
		%theme
		\break \section \mark \default %A
		\relative  c' { \theme }

		%theme background
		\break \section \mark \default %B
		\relative  c'' { \theme_background }

		%1st pedal
		\break \section \mark \default %C
		\relative  c' {
			\repeat volta 2 {
				{ | d4\prall ef8 d d4\prall ef8 d | }
				{ f4\prall ef8 d d4\prall ef8 d }
				{ \repeat unfold 2 { d4\prall ef8 d } }
				\alternative {
					{ f8 g ef d d4\prall ef8 d }
					{ f8 g ef d d4 r }
				}
			}
		}

		%2nd pedal (on 3rd)
		\break \section \mark \default %D
		\relative  c' {
			\repeat volta 3 {
				| e8 f f f f4 a8 g |
				\alternative {
					{ | g4 e f8 f f4 |}
					{
						| g4 e f4 a8 g | g4 a8 g g4 a8 g | g4 e f8 ef d c |
						\textEndMark "EITHER 1) back to A, 2) drum break for chants, or 3) to coda to end"
					}
				}
			}
		}
	}
}

accompaniment = {
	\keyTimeTempo

	%intro
	\break \section \mark \markup \box "Intro"
	\relative c'
	\repeat volta 4 {
		\alternative{
			{ | d1 ~ d1 | }
			\relative d' \intro_walk_up
		}
	}
	\repeat segno 2 {

		%theme background
		\break \section \mark \default %A
		\relative  c'' { \theme_background }

		%theme at B
		\break \section \mark \default %B
		\relative  c' { \theme }

		%1st pedal
		\break \section \mark \default %C
		\relative c' {
			\repeat volta 2{
				d1 ~ | d2. c4 | d1 ~ |
				\alternative {
					{d2. r4 |}
					{d2. r4 |}
				}
			}
		}

		%2nd pedal (on 3rd)
		\break \section \mark \default %D
		\relative  c' {
			\repeat volta 3 {
				{r4. f8-. r4 f8-. r8}
				\alternative {
					{r4. f8-. r4 f8-. r8}
					{
						r4. f8-. r4 f8-. r8 |
						g4 r g r | g4 e f8 ef d c |
						\textEndMark "EITHER 1) back to A, 2) drum break for chants, or 3) to coda to end"
					}
				}
			}
		}
	}
}

\score {
	\transpose d d {
		<<
			\new Staff \with { instrumentName = "Melody" shortInstrumentName = "mldy." } { \melody }
			\new Staff \with { instrumentName = "Accompaniment" shortInstrumentName = "accomp." } { \accompaniment }
		>>
	}
}

