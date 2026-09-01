\version "2.24.0"
\include "../Global.ly"

thunderstomp = \relative c' {
	\onceOmitClef
	\markSection "Rhythm"
	\bar "[|:"
	\lineNote "drums start, tubas join"
	\new CueVoice {
		\cueClef "bass"
		\repeat volta 4 \relative c, {
			\time 7/8 
			e4 4 c!4. | e4 4 c!4. |
			e4. cis!4 4 | bes4. c! 4 c'-> |
		} \numRepeats "4"
		\cueClefUnset
	}\break

	\mark #1
	\omitClef
	\repeat volta 2 {
		\time 7/8
		e8[ aes] b8[ aes] c[ b g] | 
		e8[ aes] b8[ aes] g[ f des] | 
		e4  aes8 g[ f] es[ des]  |
		c16[ des c8 bes8] c4 c'4-> |
	}
	\numRepeats "4"
	\break

	\mark #2
	% \lineNote "tubas start, trumpets join after 2x"
	\time 11/8
	\repeat volta 2 {
		<c, g'>4-. 4-. <des g aes>4 8 <c g'>4-. 4-. |
		\alternative {
			\volta 1,2,3 { <c g'>4-. 4-. <g d'>4 8 <c g'>4-. 4-. | }
			\volta 4 { <c g'>4-. 4-. <g d'>4 8 <c g'>2\fermata | }
		}
	} \bar "[|:-||"
	\cueBox \markup \column {
		\line { "A, then B, then C" }
	}

	\mark #3
	% \lineLabel "tubas start"
	% \repeat volta 2 {
	% 	g4 g bes4. d4 d |
	% 	\alternative {
	% 		\volta 1 {
	% 			d4 d4 f,4. c'4 c |
	% 		}
	% 		\volta 2 {
	% 			\time 9/8
	% 			d4 d8[ e] f8[ e d] c4 |
	% 		}
	% 	}
	% }
	% d4 d8[ e] f8[ e d] c4 |
	% d4 d8[ e] f8[ e d] c4\fermata|
	% \time 3/4
	% d\fermata c\fermata a\fermata \bar "|."

	% \key f \major
	\time 11/8
	\lineNote "drums start"
	\repeat volta 4 {
		g4 bes8[ g] bes8[ d f] f8[ g a f] |
		a4 \breathe a8[ g] f8[ g a] g8[ f e c] |
		d4 \breathe d8[ e] d8[ e f] f8[ g a f] |
		\alternative {
			{ a4 \breathe a8[ bes] c8[ bes a] g8[ f e c] }
			{ 
				\time 9/8
				a'4 \breathe a8[ bes] c8[ bes a] g4 |
			}
		}
	}
	\time 7/8 a4 \breathe a8[ bes] c8[ bes a] | 

	g2. \override Staff.BarLine.stencil = #'()
	f e c \fermata 
	% \revert Staff.BarLine.stencil
	% \tearCustom #'(-5 -7 -4 -2 -6) \bar "" % 
	\bar "|."
	\cueBox "A, then B"
}
