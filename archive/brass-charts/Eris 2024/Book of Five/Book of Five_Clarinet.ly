\version "2.24.0"
\include "../Global.ly"

bookOfFive-clarinet = \relative c' {
	% \key d \minor
	\numericTimeSignature
	% \markSection "Intro"
	\repeat volta 2 {
		\once\hideNotes\grace c64
		\omit Staff.Clef
		d4 r8 d16 e f4 e8 f |
		g8 a bes cis d4 r4 |
		d,4 r8 d16 e f4 e8 f |
		\alternative {
			{ e4 es d r | }
			{ \time 2/4 e4 es | }
		}
	}
	\break

	\mark #1
	\time 4/4
	\repeat volta 2 {
		d'2 a2 | a8 g a bes a8 g a bes | 
		d2 g,2 | g8 f e f d2 |
		% \numRepeats "2"
	}
	\break
	\repeat volta 2 {
		d'8 8 8 a d8 d d a | a8 g a bes a8 g a bes | 
		d8 8 8 g, d'8 d d g,  | g8 f e f d2 |
		% \numRepeats "2"
	}
	\break

	\mark #2
	\repeat volta 2 {
		d8. a'8. g8 g8. bes8. a8 | a8. g8. d8 a' 4 r |
		d,8. a'8. g8 bes8. a8. g8 | a8. g8. c ,8 d4 r |
		\numRepeats \markup \huge "?"
	}
	% \repeat volta 2 {
	% 	d4 r8 d16 e f4 e8 f |
	% 	g8 a bes cis d4 r4 |
	% 	d,4 r8 d16 e f4 e8 f |
	% 	e4 es d4 r4 |
	% }
	\break

	\markSection "Drum Break!"
	\newSpacingSection
	\repeat volta 8 {
		R1 | r2 r8. d16 8 8
	} \numRepeats "8" 
	\repeat volta 8 {
		r2 r8. <d f>16 8 8
	} \numRepeats "8" 
	\repeat volta 8 {
		\time 2/4
		r8. <d f a>16 8 8 |
	} \numRepeats "8"
	\break
	\time 4/4
	R1 | r2 r8. d16 8 8 \bar "||"


	d4 r8 d16 e f4 e8 f |
	\time 2/4 g8 a bes cis
	% \bar "[|:-||"
	\cueBox "A, then to C "

	\mark #3
	\time 4/4
	\repeat volta 2 {
		<d, f>4. 8 <bes' d>4. 8 |
		<a cis>4. 8 8 8 8 8 |
		<d, f>4. 8 <e g>4. 8 |
		<f a>4. 8 8 8 8 8 |
	}
	\break
	% \markSection "Transition"
	<e g>4. 8 <f a>4. 8 |
	<g bes>4. 8 8 8 8 8 |
	<f a>4. 8 <g bes>4. 8 |
	<a cis>8. 8. 8 8. 8. 8 |
	<a cis>8. 8. 8 4-> 4-> |
	\break

	\markSection "Breakdown"
	\time 2/4
	\repeat volta 4 {
		a8. g8. f8 | d8. 8. 8 | d8. 8. 8 |
		\numRepeats "4"
	}
	\repeat volta 4 {
		a'8. g8. f8 | d8 r8 r4 | R2 |
		\numRepeats "4"
	}
	a'8. g8. f8 | d8 r8 r4 \bar "|."
}
