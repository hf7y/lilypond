\version "2.24.0"

bookOfFive-baritone = \relative c {
	% \key d \minor
	\numericTimeSignature
	% \markSection "Intro"
	\repeat volta 2 {
		\once\hideNotes\grace c64
		% \omit Staff.Clef
		d4\finger12 r8 d16 e\finger2 f4\finger0 e8 f |
		g8\finger12 a\finger2 bes\finger0 cis\finger12 d4\finger0 r4 |
		d,4\finger12 r8 d16 e\finger2 f4\finger0 e8 f |
		\alternative {
			{ e4\finger2 es\finger1 d\finger12 r | }
			{ \time 2/4 e4 es | }
		}
	}
	% % \break

	\mark #1
	\time 4/4
	\repeat volta 2 {
		d'2\finger0 a2\finger2 | a8 g\finger12 a bes\finger0 a8 g a bes | 
		d2\finger0 g,2\finger12 | g8 f\finger0 e\finger2 f d2\finger12 |
		% \numRepeats "2"
	}

	\mark #2
	\repeat volta 2 <<
		\new CueVoice \relative c {
			d8. a'8. g8 g8. bes8. a8 | a8. g8. d8 a'8. s16 s4 |
			d,8. a'8. g8 bes8. a8. g8 | a8. g8. cis ,8 d8. s16 s4 |
			\cueClefUnset
		}

		\new Voice {

			s1 | s2 s8. d16\finger12 8 8 |
			s1 | s2 s8. d16 8 8 |
		}
	>>

	\repeat volta 2 {
		\once\hideNotes\grace c64
		d4\finger12 r8 d16 e\finger2 f4\finger0 e8 f |
		g8\finger12 a\finger2 bes\finger0 cis\finger12 d4\finger0 r4 |
		d,4\finger12 r8 d16 e\finger2 f4\finger0 e8 f |
		e4\finger2 es\finger1 d\finger12 r | 
	}

	\markSection "Drum Break!"
	\newSpacingSection
	\repeat volta 8 {
		R1 | r2 r8. d16\finger12 8 8
	} \numRepeats "8" 
	\repeat volta 8 {
		r2 r8. d16 8 8
	} \numRepeats "8" 
	\repeat volta 8 {
		\time 2/4
		r8. d16 8 8 |
	} \numRepeats "8"
	% \break
	\time 4/4
	R1 | r2 r8. d16 8 8 \bar "||"


	d4\finger12 r8 d16 e\finger2 f4\finger0 e8 f |
	\time 2/4 g8\finger12 a\finger2 bes\finger0 cis\finger12 
	% \bar "[|:-||"
	\cueBox "A, then to C "

	\mark #3
	\time 4/4
	\repeat volta 2 {
		<d,>4.\finger12 8 <bes'>4.\finger0 8 |
		<a>4.\finger2 8 8 8 8 8 |
		<d,>4. 8 <e>4.\finger2 8 |
		<f>4.\finger0 8 8 8 8 8 |
	}
	% \break
	% \markSection "Transition"
	<e>4.\finger2 8 <f>4.\finger0 8 |
	<g>4.\finger12 8 8 8 8 8 |
	<f>4. 8 <g>4. 8 |
	<a>8.\finger2 8. 8 8. 8. 8 |
	<a>8. 8. 8 4-> 4-> |
	% \break

	\markSection "Breakdown"
	\time 2/4
	\repeat volta 4 {
		a8.\finger2 g8.\finger12 f8\finger0 | d8.\finger12 8. 8 | d8. 8. 8 |
		\numRepeats "4"
	}
	\repeat volta 4 {
		a'8. g8. f8 | d8 r8 r4 | R2 |
		\numRepeats "4"
	}
	a'8. g8. f8 | d8 r8 r4 \bar "|."
}
