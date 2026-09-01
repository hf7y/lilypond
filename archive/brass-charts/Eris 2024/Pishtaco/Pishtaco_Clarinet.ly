\version "2.24.0"
\include "../Global.ly"

pishtaco-clarinet = \relative c {
	\numericTimeSignature
	\time 12/8
	\key aes \major
	\mark "Intro"
	\repeat volta 2 {
		\new CueVoice {
			\cueClef "bass"
			\repeat unfold 4 { g4 bes des } |
			\repeat unfold 2 { e,4 g aes }
			e4 g aes des4 bes aes |
		}
	}
	\break

	\mark #1
	\repeat volta 2 { 
		\new CueVoice \relative c' {
			g2. a | bes2. a4 g e!
			g2. es2. | cis2. r2. |
			\cueClefUnset
		}
	}
	
	\break
	\repeat volta 2 \relative c'' {
		r4 g8 \repeat unfold 3 { a8[ r g8] } |
		\repeat unfold 4 { a8[ r g8] } |
		bes4 a g r2. | 
		\repeat unfold 2 { bes4 a g } |
	}

	\break
	\repeat volta 2 \relative c' {
		\repeat percent 2 {
			r4 e8 f8 g a g8[ r f] e4. |
		}
		r4 cis8 d8 e f g8[ r f] e8[ r d] |	
		\repeat unfold 2 { cis8[ r d] e8[ r d] } |
	}
	\cueBox "A"

	\repeat volta 4 \relative c' {
		\repeat percent 2 {
			r4 e8 f8 g a g8[ r f] e4. |
		}
		r4 cis8 d8 e f g8[ r f] e8[ r d] |	
		\repeat unfold 2 { cis8[ r d] e8[ r d] } |
	} \numRepeats "x4"

	\repeat volta 4 { cis'8[ r d] e8[ r d] cis8[ r d] e8[ r d] | } \numRepeats "x4"

	g2. r | aes2. r | c4. des c bes | f'2. r |
	g,2. r | aes2. r | c4. des c bes | fis'2. r |
	\bar "|."
	\cueBox "Intro, then A"
}
