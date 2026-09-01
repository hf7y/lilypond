\version "2.24.1"

\include "./global.ly"

\include "./loveme-longA.ly"
\include "./loveme-longB.ly"
\include "./loveme-longC.ly"


globalScore = { 
	\glissandoFormatting
	\override Score.TimeSignature.break-visibility = ##(#f #t #t)
	\numericTimeSignature
	\override Score.SpacingSpanner.common-shortest-duration =
	    #(ly:make-moment 1/80)
	% \override TextSpanner.bound-details.left.text = "rallentando"
	% \override TextSpanner.bound-details.right.text = ""

	%\tempo 4 = 48
	s1 | s1. |
	s1 | s1 |
	s2. | s1 |
	s2. | s2. |
	s1 | s1 | 
	s1 | s1 | 
	s1 | s2. | %\bar "||" %m14 

	s1 | s1 |
	s2 | %m17
	s2. |
	s2. | %m19
	s1 | s1 | s1 |
	s1 | s1 | s1 |
	s1 | s1 |
	s1 | s1 |
	s1 | \break \newSpacingSection %\bar "||" %m30

	\override Score.SpacingSpanner.common-shortest-duration =
	    #(ly:make-moment 1/72)
	%\tempo 4 = 66 
	\grace { s8 } s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 | s2.. s8 | %\bar "||" %m37

	\tempo 4=88
	s1 s4 |
	s1 s4 |
	s1 |
	s2... s16 |
	s1 | s1 \break \newSpacingSection %\bar "||" %m43

	\override Score.SpacingSpanner.common-shortest-duration =
	    #(ly:make-moment 1/80)
	
	% \tempo 4 = 48 
	s1 |
	s2. |
	s1 |
	s1 |
	s1 | s1 | \break 
	s1 | \break
	s2.... s32 | \break % \bar "||" %m51

	% \tempo "Adagio"
	s1 | s1 | s1 | \break
	s1 | s1 | %\bar "|." %m56
}

horn = { \hornA \hornB \hornC }
harp = { \harpA \harpB \harpC }
guitar = { \guitarA \guitarB \guitarC }

\header {
  title = "Love Me (Long)"
  composer = "Z.V. Pine"
  tagline = ""
}

\score {
	<<
		\new Staff \with {
			instrumentName = "Horn in F"
		} {
			<< \global \globalScore \transpose f c \horn >>
		}
		\new Lyrics = "tenors" << \global \globalScore >>
		\new Staff = "guitar" \with {
			instrumentName = "Guitar"
		} {
			\clef "treble_8"
			<< \global \globalScore \guitar >>
		}
		\new GrandStaff = "harp" \with {
			instrumentName = "Harp"
		} <<
			\new Staff = "up" { 
				<< \global \globalScore \harp >>
			}
			\new Lyrics = "altos" { << \global \globalScore >> }
			\new Staff = "down" { 
				\clef "bass"
				<< s1*#(ly:music-length harp) >>
			}
		>>
	>>
}