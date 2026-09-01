\version "2.24.0"

chiasmus-baritone = {
	% \key es \major
	% \onceOmitClef
	\time 2/2
	\markSection "Rhythm"
	\lineNote "tubas and midhorns start"

	\bar "[|:"	
	\partCombine
	{
		\repeat volta 2 \relative c {
			s2 \stemUp bes4\finger0 r | 
			s2 \stemUp  ces4\finger123 r | 
			s2 \stemUp  aes4\finger12 r | 
			\stemNeutral
			f4\finger13 r4 \extendLV #4 aes2\laissezVibrer | 
		}
	}
	\new CueVoice {
		\repeat volta 2 \relative c, {
			\stemDown bes4 r  s2 |
			\stemDown ces4 r s2 |
			\stemDown aes4 r s2 |
			s1 |
		}
	}

	\markSection "Midhorns Melody"
	% \lineLabel "1st time bottom voice only"

	\repeat volta 2 \relative c' {
		<bes>2\finger0 <f>2\finger0 | \tuplet 3/2 { <ges>4~\finger12 4 f } <es>2\finger1 | <d>1\finger12 | \tuplet 3/2 { es4~ 4 d } <ces>2 |
	}

	\markSection "Midhorns Harmony"
	\repeat volta 2 \relative c' {
		d2\finger0 bes2\finger0 | \tuplet 3/2 { ces4~\finger12 4 bes4 } aes2\finger1 | f1\finger0 | \tuplet 3/2 { ges4~\finger23 4  f4 } es2\finger1 |
	}

	\cueBox \markup \center-column { 
		\line { "B, then Rhythm, then B" }
		\boxLine \vspace #0.5
		\line { "A, A with choir ahs, then to Aubade" }
	}

	\markSection "Midhorns Melody"
	\repeat volta 2 \relative c' {
		<bes>2\finger0 <f>2\finger0 | \tuplet 3/2 { <ges>4~\finger23 4 f } <es>2\finger1 | c2\finger13 aes4\finger1 c | f\finger0 es\finger1 c aes'\finger1 |
	}

	\markSection "Midhorns Harmony"
	\repeat volta 2 \relative c' {
		d2\finger0 bes2\finger0 | \tuplet 3/2 { ces4~\finger12 4 aes4\finger1 } g2\finger12 | es2\finger1 c4\finger13 es  | aes\finger1 g\finger12 es\finger1 c'\finger1 |
	}

	\markSection "Ending Vamp"
	\repeat volta 2 {
		r2 <d f bes,>4 \finger0\finger12\finger0 r4 |
		r2 <es ges ces>4 \finger123\finger1\finger23 r4 |
		r2 <c! es aes,>2 \finger1\finger13\finger1 |
		<f, a, c>2\finger13\finger2\finger13 <aes, c es>2\finger1\finger13\finger1
	} %\numRepeats "4"
	\repeat volta 2 {
		<d f bes,>1\finger0\finger12\finger0 |
		<es ges ces>1\finger123\finger1\finger23 |
		<c! es aes,>\finger1\finger13\finger1 |
		<f, a, c>2\finger13\finger2\finger13 <aes, c es>2\finger1\finger13\finger1
	} %\numRepeats "4"

	{ <d f bes,>1\fermata\finger0\finger12\finger0 \bar "|." }
}
