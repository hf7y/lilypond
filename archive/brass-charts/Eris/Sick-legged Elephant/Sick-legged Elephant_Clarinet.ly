\version "2.24.0"
\include "../Global.ly"

sickLeggedElephant = \relative c'' {
	% \key bes \minor
	\once \omit Staff.TimeSignature

	\bar "[|:"
	\markSection "Rhythm"
	\onceOmitClef
	\new CueVoice {
		\cueClef "bass"
		\repeat volta 2 {
			\partial 4 ges,,8 f |
			\time 8/4
			bes4. des4. c4. es4. r4 ges,8 f |
			\time 6/4
			bes4. des4. aeses!4 r4
		} \numRepeats \markup \huge "?"
		\cueClefUnset
	}
	\break

	\mark #1
	\repeat volta 2 {
		\partial 4 r4
		\time 8/4
		r4 \tuplet 3/2 { bes''8 a aes } 
			\tuplet 3/2 { g4 4 4 }
			\tuplet 3/2 { ges4 4 4 }
			\tuplet 3/2 { bes4 4 4 }
		\time 6/4
		\alternative { 
			\volta 1,3 { r8 e,8 f4 ges f4 r }
			\volta 2,4 { r8 e8 f4 ges e4 r }
		}
	}
	\break

	\cueBox \markup \center-column {
		\line { "Rhythm, then A" }
		\boxLine \vspace #0.5
		\line { "Rhythm, then to B" }
	}

	\mark #2
	\bar "[|:-||"
	\repeat volta 2 {
		\partial 4 r4
		\time 8/4
		\set tieWaitForNote = ##t
		r8 bes \tuplet 3/2 { des8 bes des}
			\once \stemDown f4~^\markup \italic "div. in 3"
			\voiceOne bes4~ r8 des8~
			\oneVoice <f, bes des>4 \tuplet 3/2 { <f bes des>4 4 4 }

		\accidentalStyle Score.forget
		\break
		\time 6/4
			\tuplet 3/2 { <f bes des>8[ r8 <b es d! f>] }
			\tuplet 3/2 { <a des fes>8 <aes c es> <g ces eses> }
			\tuplet 3/2 { <ges bes des>8[ r8 <bes d! f>] }
			\tuplet 3/2 { <a des fes>8 <aes c es> <g ces eses> }
		\accidentalStyle Score.default
		\tuplet 3/2 { <ges bes des!>8[ r8 8] }
	} \numRepeats \markup \huge "?" % \numRepeats "2, 4"
	\break
	\cueBox \markup \center-column {
		\line { "Rhythm, then B" }
		\boxLine \vspace #0.5
		\line { "Rhythm, then to Fanfare" }
	}

	\markSection "Fanfare"
	\repeat volta 2 {
	\partial 4 <f bes des>4
	\time 8/4

		<aes des f>8 <f bes des> r8 <aes des f>
		<f bes des>4 <aes des f>8 <g c e>8~\trill 2 r4 <f bes des>4 |
		\time 6/4
		<aes des f>8 <f bes des> r8 <f aes c>8 
			<fes ges bes>4 <es f a> r 
	} \numRepeats "4"
}
