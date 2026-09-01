\version "2.24.0"
\include "../Global.ly"

trumpetI = \relative c' {
	\time 2/2
	\repeat volta 2 { bes2 r | 4 4 4 4 |  } 
	\repeat volta 2 { <bes e>2 r | 4 4 4 4 | } 
	\repeat volta 2 { <bes e f>2 r | 4 4 4 4 | } 
	\repeat volta 2 { <bes e f ges>2 r | 4 4 4 4 | } 
	\repeat volta 2 { 1~ 2 r }
}

trumpetA = \relative c' {
	\unfoldToChart
	\repeat volta 1 {
		\volta 1 \unfolded { R1*8 } }
	\repeat volta 2 {
		\volta 1 { 
			\lineLabel "trumpets on cue:"
			\break
			\repeat percent 2 { r4 <f bes des>8 8 r4 8 8 | } %	r4 8 8 r4 8 8 |
			\repeat percent 2 { r4 <f aes des>8 8 r4 8 8 | } %	r4 8 8 r4 8 8 |
			\repeat percent 2 { r4 <e g c>8 8 r4 8 8 | } %	r4 8 8 r4 8 8 |
			2 <f aes des> | <f aes c> <fis a! des>
		}
		\volta 2 \unfolded {
			bes4. fes'4. bes4 | r2 r4 bes4 |
			aes4. fes4. des4 | r2 r4 aes'4 |
			g4. e4. c4 | R1 |
			c2 des | c a |
		}
	}
}

trumpetB = \relative c'' {
	\time 3,2,2 7/8
	R2.. * 2 
	\repeat volta 2 {
		bes8 8 8 aes g g4_\prall |
		aes8 8 8 g f e4_\prall |
		g8 8 8 f e des c |
		\alternative {
			\volta 1 { c8 des bes c des e f | }
			\volta 2 { c8 des bes c4 r | }
		}
	}
}
	
trumpetC = \relative c'' {
	R2.. * 8
	\repeat unfold 2 {
		c'4 8 bes aes g f | bes4 8 aes g f e |
		aes4 8 g f e f | g4. r2 |

		aes4 8 g f e des | g4 8 f e des c |
		\alternative {
			{ f4 8 e f e f | e4. r2 | }
			{ f4 8 e f e des | c4. r2 | }
		}
	}
}

% global = {
% 	\sectionLabel "Intro"
% 	\tweak direction #DOWN
% 		\lineLabel "Add-in one group at a time"

% 	s1 * #(ly:music-length trumpetI)
% 	\break

% 	\mark \default
% 	s1 * #(ly:music-length trumpetA)
% 	\break

% 	\mark \default
% 	s1 * #(ly:music-length trumpetB)
% 	\break

% 	\mark \default
% 	s1 * #(ly:music-length trumpetB)
% 	\break
% }