\version "2.24.0"
\include "../Global.ly"

pterocarya = \relative c' {
	\key d \minor
	\numericTimeSignature
	\makeCircleMarks
	% \overrideTimeSignatureSettings
	%         4/4        % timeSignatureFraction
	%         1/4        % baseMomentFraction
	%         1,1,1,1    % beatStructure
	%         #'()       % beamExceptions
	\time 4/4
	\mark #1
	\partial 4 r8
		\new CueVoice {
			\cueClef "bass"
			a,8 |
		}
	\repeat volta 2 {
		\new CueVoice {
			\cueClef "bass"
			f4 r8 f8 e4 r8 d8 | gis,4( a4) r2 |
			\cueClefUnset
		}
		% a''8 bes a bes a bes a bes | f'4 e4 r2 |
		r4 <bes''' d>8 8 r4 4 |
		r4 8 8 r4 4 |
		% \repeat percent 2 { 
		% 	\repeat unfold 4 { <e, f>8 8 }
		% }
		% \repeat unfold 4 { <d f>8 8 }
		<e, f>1:8 |
		<e f>1:8 |
		<d f>1:8 |
		2. r4 |
	}
	\break

	\mark #2
	\repeat volta 2 {
		\repeat percent 2 { a'8 d, e d a'8 d, e d }
		a'2~ a4. f8 | e2. r4 |
		\repeat unfold 4 { <c e>8 <d f> } | 
		\alternative {
			{ e8 f g a g8 f e d | 
				d2~ d4. c8 |  a2. r4 | }
			{ 
				% \repeat unfold 8 { <d e>8 } |
				<d e>1:8 | 
				d2~ d4. bes8 |  g2. r4 | }
		}
	} \bar "[|:-||"
	\break

	\markSection "Woodwind Soli"
	\repeat volta 2 {
		d''2~ d4. c16 bes |
		a2~ a4. g8 |
		a4. bes8 a8 g d g |
		a2.r4 | % \break

		
		\alternative {
			{ c2~ c4. bes16 a | g2~ g4. a8 | 
				d4. c8 d8 c a c |
				d2. r4 |  } %	\break
			{ 
				c2~ c4. bes16 a | g4 r d'4. e8 |
				f4. e8 f8 e f e |
				f2. r4  |  \bar "[|:-||" } 
		}
	}

	\pageBreak
	\mark #3
	\repeat volta 4 {
		e1 | f1 | d1 | c2. r4 |
		e2.. d8 | f2.. e8 | c2.. bes8 | a2. r4 |
	} \numRepeats "1, 4"
	\break

	\mark #4
	\repeat volta 2 {
		\parenthesize c,2 r8 a'   g f | des2 r8 a' g f |
		g2 r8 a g f |
		\alternative { 
			{ g4 c8 a g8 f e8 d | }
			{ g4 c8 bes a8 g f8 e | \bar "||" }
		}
	}
	\break

	\mark #5
	\repeat unfold 2 { g2 r8 c bes g | a2. r4 | }
	g2 r8 c bes g |
	a2 r4    c8 bes | a4 r8 c8 g4 r8 c8 | f,4 r4 r4
	\bar "|." 
}
