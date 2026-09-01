\version "2.24.0"

waltz-baritone = \relative c' {
	\key c \minor
	\bar "[|:"
	\overrideTimeSignatureSettings
	        3/4        % timeSignatureFraction
	        1/4        % baseMomentFraction
	        1,1,1        % beatStructure
	        #'()       % beamExceptions
	\time 3/4
    \sectionLabel "Rhythm"
	\repeat volta 4 {
		\new CueVoice \relative c {
			r4 g'4 g4 | r4 g4 g4 |
			r4 g4 g4 | r4 g4 g4 | 
		}
	}
	\break

	\mark #1
	\repeat volta 2 {
		\repeat percent 4 {
			r4 g4 g4 | 
		}
		\repeat percent 4 {
			r4 g4 g4 | 
		}

		c4 r r | R2.*2 | r4 r \tuplet 3/2 { c8 b bes }  \break
		
		aes2. | f4 r r |
		f8 g aes g aes g | c4 bes aes |
		g4 r r | R2.*2 | 
		r4
	} \break

	\partial 2 r \tuplet 3/2 { aes8 g ges } \bar "||"
	\repeat unfold 2 { f2-> \tuplet 3/2 { aes8 g ges } | }
	f2-> g4 | aes4 g fis |
	g4 r r | R2.*2 | r4 r \tuplet 3/2 { aes8 g ges } |
	\break

	\repeat unfold 2 { f2-> \tuplet 3/2 { aes8 g ges } | }
	f2-> g4 | aes4 g fis |
	\repeat volta 2 {
		g4 es c | g'2. |
		f4 d b | aes'2. |
	}

	g4 es c | aes'4 f d |
	b' aes f | d' b aes |
	
	<g g'>2.~ | 2.~ |
	2.~ | 2. | \bar "[|:-||"

	% <c c'>4 r r |
	% \new CueVoice \relative c {
	% 	\cueClef "bass"
	% 	g4 r4 r4 |
	% 	c4 r4 r4 | 
	% 	g4 a! b! |

	% 	c4 r4 r4 | 
	% 	g4 r4 r4 |
	% 	c4 r4 r4 | 
	% 	g4 \bar ""
	% 	\cueClefUnset
	% }
	\break 
	\cueBox "Rhythm, then A, then B"

	\mark #2
	\repeat volta 2 { 
		\repeat unfold 3 { es'4. d8 es d | } es4. f8 es d | 
		es4 r4 r | R2.*3 | \break
		
		\repeat unfold 3 { d4. cis8 d cis | } d4. es8 d cis |
		d4 r4 r | R2.*3
	}

	\cueBox "Rhythm, then A"
}
