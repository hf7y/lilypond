\version "2.24.0"

sickLeggedElephant-baritone = \relative c'' {
	% \key bes \minor
	\once \omit Staff.TimeSignature

	\bar "[|:"
	\markSection "Midhorn Line 1"
	\repeat volta 2 {
		\partial 4 ges,,8 f |
		\time 8/4
		bes4 8 des8 r8 8 c4 8 es8 r8 8 r4 		
		\new CueVoice {
			\partial 4 ges,8 f |
			\time 6/4
			bes8
		} f8 bes4 des4 g,!4 r4
	} \break

	\markSection "Midhorn Line 2"
	\repeat volta 2 {
		\new CueVoice {
			\partial 4 ges8 f |
			\time 8/4
			bes4 
		}
		\tuplet 3/2 { f'8 e es } 
			\tuplet 3/2 { d4 4 4 }
			\tuplet 3/2 { des4 4 4 }
			\tuplet 3/2 { f4 4 4 }
		\time 6/4
		r8 f,8 bes4 des4 g,!4 r4
	}
	\break

	\cueBox \markup \center-column {
		\line { "Rhythm, then A" }
		\boxLine \vspace #0.5
		\line { "Rhythm, then to B" }
	}

	\markSection "Fanfare"
	\repeat volta 2 {
	\partial 4 <f' bes des>4
	\time 8/4

		<aes des f>8 <f bes des> r8 <aes des f>
		<f bes des>4 <aes des f>8 <g c e>8~\trill 2 r4 <f bes des>4 |
		\time 6/4
		<aes des f>8 <f bes des> r8 <f aes c>8 
			<fes ges bes>4 <es f a> r 
	} % \numRepeats "4"
}
