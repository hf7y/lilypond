\version "2.24.0"
\include "Global.ly"

anthem-clarinet = \relative c' {
	% \bar "[|:"
	\time 2/2
	% \markSection "Intro"
	% \once\hideNotes\grace c64
	% \omit Staff.Clef
	\tweak direction #DOWN \lineNote "Add-in one group at a time"
	\repeat volta 2 { bes2  r | 4 4 4 4 |  } 
	\repeat volta 2 { <bes e>2 r | 4 4 4 4 | } 
	\break \onceOmitClef
	\repeat volta 2 { <bes e f>2 r | 4 4 4 4 | } 
	% \break
	\repeat volta 2 { <bes e f ges>2 r | 4 4 4 4 | } 
	\repeat volta 2 { 1~ 2 r }	
	\break

	\mark #1
	\time 4/4
	\new CueVoice {
		\onceOmitClef
		\cueClef "bass"
			\relative c, {
			\lineLabel "tubas start, midhorns join"
			\repeat volta 2 {
				bes4. f'4. bes4 | r2 r4 bes4 |
				aes4. f4. des4 | r2 r4 aes'4 |
				g4. es4. c4 | R1 |
				c2 des | c a |
			} 
		}
		\cueClefUnset
	} 
	\break

	\lineLabel "on cue, with trumpets"
	% \time 4/4
	\clef "treble"
	\repeat volta 2 {
		\repeat percent 2 {
			r4 <f' bes des>8 8 r4 8 8 |
		}
		\repeat percent 2 {
			r4 <f aes des>8 8 r4 8 8 |
		}
		\repeat percent 2 {
			r4 <e g c>8 8 r4 8 8 |
		}
		<e g c>2 <e g des'> | 
		<f aes c>2 <ges beses des> |
	} % \numRepeats "4"
	\break \onceOmitClef
	\cueBox "A with weird lines & noises, then to Cue for B"
	% \cueBox "Cue for B: Highhorns unison with tubas for 2x"

	\relative c' {
		\markSection \markup \smaller \concat { "Cue for " \bold "B" }
		% \lineLabel "join in with tubas and midhorns"
		\repeat volta 2 {
			bes4. f'4. bes4 | r2 r4 bes4 |
			aes4. f4. des4 | r2 r4 aes'4 |
			g4. es4. c4 | R1 |
			c2 des | c a! |
		} 
	} \numRepeats \markup \huge "?"
	\break

	\mark #2
	\new CueVoice \relative c, {
		\cueClef "bass"
		\pageBreak
		\time 3,2,2 7/8 
		\lineLabel "tubas and midhorns"
		\repeat volta 2 { c4 bes8 c4 g | c4 bes8 c4 des | }
		% \numRepeats "4"
		\lineLabel "drums join"
		\repeat volta 2 { c4 bes8 c4 g | c4 bes8 c4 des | }
		% \numRepeats "4"
		\cueClefUnset
	} \break \omitClef

	% \lineLabel "1st time lower voice only"
	% \partCombine
	% \repeat volta 2 \relative c'' {
	% 	d8 8 8 c8 bes8 4\mordent |
	% 	c8 8 8 bes8 aes8 g4\mordent |
	% 	bes8 8 8 a8 g8 f8 e8 |
	% 	\alternative {
	% 		\volta 1,2 { e8 f des e8 f g8 aes | }
	% 		\volta 3,4 { e8 f des e4     r4 | }
	% 	}
	% }	
	\repeat volta 2 \relative c'' {
		bes8 8 8 aes8 g8 4\prall |
		aes8 8 8 g8 f8 e4\prall |
		g8 8 8 f8 e8 des8 c8 |
		\alternative {
			\volta 1,2 { c8 des bes c8 des e8 f | }
			\volta 3,4 { c8 des bes c4     r4 | \bar "||" }
		}
	}
	\break
	\cueBox "B, then to C"

	\mark #3
	\bar "[|:-||"
	\time 3,2,2 7/8 
	\repeat volta 2 {
		c4 8 bes8 aes g8 f |
		bes4 8 aes8 g f8 e |
		aes4 8 g8   f e8 f |
		g4. r2 |
	
		aes4 8 g8 f e8 des |
		g4 8 f8 e des8 c |
		\alternative {
			{ f4 8 e8 f e8 f | e4. r2 | }
			{ f4 8 e8 f e8 des | c4. r2 | }
		}
	}
	\bar "[|:-||"

	\cueBox \markup \center-column {
		\line { "B, then C" }
		\boxLine \vspace #0.5
		\line { "B rhythm, then A, then End" }
	}

	% \markSection \markup \concat { "Cue for " \bold "A" }
	% \repeat volta 2 { c4 bes8 c4 g | c4 bes8 c4 des | }

	% \cueBox \markup \center-column {
	% 	\line { "A, then End" }
	% }
}
