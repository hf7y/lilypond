\version "2.24.0"
\include "Global.ly"

waltz-clarinet = \relative c' {
	\onceOmitClef \key c \minor
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
			\cueClef "bass"
			c4 r4 r4 | g4 r4 r4 |
			c4 r4 r4 | 
			
		}
		\alternative {
			\volta 1,2,3 \new CueVoice { g,4 a! b! | }
			\volta 4 { 
				\new CueVoice {
					g4 \cueClefUnset 
				}	
			 } 
		}
	}
	\break

	\mark #1
	\repeat volta 2 {
		\partial 2 g''8 aes bes b |
		c2.   | g4 r r |
		r4 es'8 d es d | f8 g es f d es |

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
