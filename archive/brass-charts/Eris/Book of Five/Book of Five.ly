\version "2.24.0"
% \include "Global.ly"

\header {
  title = "Book of Five"
  composer = "john gerken"
}
trumpetI = \relative c' {
	\repeat volta 2 {
		d4 r8 d16 e-2 f4 e8 f |
		g8-12 a-2 bes cis-2 d4 r4 |
		d,4 r8 d16 e f4 e8 f |
		\alternative {
			{ e4-2 es-1 d r | }
			{ \time 2/4 e4 es | }
		}
	}
}

tubaI = \relative c, {
	\repeat volta 2 {
		d4 r8 d16 e-2 f4 e8 f |
		g8-12 a-2 bes cis-2 d4 r4 |
		d,4 r8 d16 e f4 e8 f |
		\alternative {
			{ e4-2 es-1 d r | }
			{ \time 2/4 e4 es | }
		}
	}
}

trumpetA = \relative c'' {
	\time 4/4
	\repeat volta 2 {
		d2 a2 | a8 g a bes a g a bes |
		d2 g,2 | g8 f e f d2 | 
	}
	\repeat volta 2 {
		d'8 8 8 a d8 8 8 a | a8 g a bes a g a bes |
		d8 8 8 g, d'8 8 8 g, | g8 f e f d2 |  
	}
}
tubaA = \relative c, {
	\time 4/4
	\repeat volta 2 {
		d8.-12 f8. a8-2 d,8. f8. a8 |
		d,8. f8. a8 a8. a16 r16[ a16 bes8] |
		d,8. f8. a8 d,8. f8. a8 |
		d,8. f8. a8 a8 g f e-2 |
	}
	\numRepeats "4"
}

trumpetB = \relative c' {
	\repeat volta 4 {
		d8. a'8. g8 g8. bes8. a8 |
		a8. g8. f8 a4 r |
		d,8. a'8. g8 g8. bes8. a8 |
		a8. g8. cis,?8 d4 r |
	}
}

tubaB = \relative c, {
	\repeat volta 2 <<
		\new CueVoice \relative c {
			d8. a'8. g8 g8. bes8. a8 | a8. g8. d8 a'8. s16 s4 |
			d,8. a'8. g8 bes8. a8. g8 | a8. g8. cis ,8 d8. s16 s4 |
			\cueClefUnset
		}

		\new Voice {

			s1 | s2 s8. d16 8 8 |
			s1 | s2 s8. d16 8 8 |
		}
	>>
}

tubaBB = \relative c, {
	\repeat volta 1 { 
		d4 r8 d16 e f4 e8 f |
		g8 a bes cis d4 r4
		d,4 r8 d16 e f4 e8 f |
		e4 es d4 r4
	}
}

trumpetDrumBreak = \relative c' {
	\repeat volta 8 {
		R1 | r2 r8.  <d f a d>16 8 8
	}
	\repeat volta 8 {
		r2 r8. <d f a d>16 8 8 |
	}
	\repeat volta 4 {
		r8. <d f a d>16 8 8 r8. <d f a d>16 8 8 |
	}
	R1 | r2 r8. <d f a d>16 8 8 \bar "||"

	d4 r8 d16 e f4 e8 f |
	\time 2/4 g8 a bes cis
}

tubaDrumBreak = \relative c, {
	\repeat volta 8 {
		R1 | r2 s8. d16 8 8
	} \numRepeats "8"
	\repeat volta 8 {
		r2 r8. d16 8 8
	} \numRepeats "8"
	\repeat volta 4 {
		r8. d16 8 8 r8. d16 8 8 |
	} \numRepeats "4"
	R1 | r2 r8. d16 8 8 \bar "||"
	d4 r8 d16 e f4 e8 f |
	\time 2/4 g8 a bes cis
}

trumpetC = \relative c' {
	\time 4/4
	\repeat volta 2 {
		d4. 8 bes'4. 8 |
		a4. 8 8 8 8 8 |
		d,4. 8 e4. 8 |
		f4. 8 8 8 8 8 |
	}
	e4. 8 f4. 8 |
	g4. 8 8 8 8 8 |
	f4. 8 g4. 8 |
	a8. 8. 8 8. 8. 8 |
	a8. 8. 8 4 4 |
}

tubaC = \relative c, {
	\time 4/4
	\repeat volta 2 {
		d4. 8 bes'4. 8 |
		a4. 8 a2:8 |
		d,4. 8 e4. 8 |
		f4. 8 f2:8 |
	}
}

tubaCC = \relative c, {
	e4. 8 f4. 8 |
	g4. 8 g2:8 |
	f4. 8 g4. 8 |
	\repeat percent 2 { a8. 8. 8 }
	a8. 8. 8 4 4 |
}

trumpetBreakdown = \relative c'' {
	\time 2/4
	\repeat volta 4 {
		a8. g8. f8 | d8. 8. 8 | d8. 8. 8 |
	}
	\repeat volta 4 {
		a'8. g8. f8 | d4 r | R2 |
	}
	a'8. g8. f8 | d4 r \bar "|."
}
tubaBreakdown = \relative c {
	\time 2/4
	\repeat volta 4 {
		a8. g8. f8 | \repeat percent 2 { d8. 8. 8 | } 
	} \numRepeats "4"
	\repeat volta 4 {
		a'8. g8. f8 | d4 r | R2 |
	} \numRepeats "4"
	a'8. g8. f8 | d4 r \bar "|."
}

trumpet = {
	\trumpetI
	\trumpetA
	\trumpetB
	\trumpetDrumBreak
	\trumpetC
	\trumpetBreakdown
}

bookOfFive-tuba = {
	\numericTimeSignature
	\key d \minor
	% \lineLabel "Intro" 
	\tubaI \break
	\mark #1 \tubaA \tag #'phone { \pageBreak }
	\mark #2 \tubaB \break 
	\tubaBB \tag #'book \break
	\lineLabel "Drum Break!" \tubaDrumBreak \bar "||"
	\cueBox "A then C" \tag #'phone { \pageBreak }
	\tag #'book \break
	\mark #3 \tubaC \break
	\lineLabel "Transition" \tubaCC
	\lineLabel "Breakdown" \tubaBreakdown
	% s1 * #(ly:music-length tubaDrumBreak)
	% s1 * #(ly:music-length tubaC)
	% s1 * #(ly:music-length tubaBreakdown)
}



% global = {
% 	\lineLabel "Intro"
% 	% \tubaUni
% 	s1 * #(ly:music-length trumpetI)

% 	\mark \default
% 	s1 * 4
% 	\break
% 	% \tubaSim
% 	s1 * 4
% 	\break

% 	\mark \default
% 	s1 * 4
% 	\break

% 	% \tubaUni
% 	\lineLabel "Drum Break"
% 	s1 * #(ly:music-length trumpetDrumBreak)
% 	\break
% 	\tweak direction #DOWN
% 	\tweak Y-offset #-8
% 	\textEndMark
% 	\markup \fill-line {
% 		\box \pad-markup #1 \column {
% 			\line {  \bold "A" then \bold "C" }
% 		}
% 	}

% 	% \tubaUni
% 	\mark \default
% 	s1 * #(ly:music-length trumpetC)
% 	\break
% }

% \score {
% 	\new StaffGroup <<
% 		\new Staff = "up" {
% 			\clef "treble"
% 			<< \global \trumpet >>
% 		}
% 		\new Staff = "down" {
% 			\clef "bass"
% 			\tuba
% 		}
% 	>>
% }