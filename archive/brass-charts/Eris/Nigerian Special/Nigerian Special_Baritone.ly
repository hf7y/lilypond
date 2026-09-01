\version "2.24.0"

nigerianSpecial-baritone = \relative c'' {

	\once \omit Staff.KeySignature
	\key f \major
	\bar "[|:"
	\clef "percussion"

	\markSection "Drum Break"
	\repeat volta 2 { 
		R1 | R1 | R1 |
		\alternative { 
			{ R1 \numRepeats \markup \huge "?" } 
			{ \clef "treble" r4 c8 f8 c2~ | }
		}
	} \break 

	\markSection "Fanfare"

	\repeat volta 2 {
		<c a f>1 |
		r4 d8 f8 bes,2~ |
		<bes f d>1 |
		r4 d8 f8 a,2~ |

		<a f c>1 | \break
		c16 8 16  r16[ g16 bes8] a4 r4 | 
		g8 16 16 r16[ 16 8]
			bes8 16 16 r16[ 16 8]
		\alternative { 
			{ d4 d8 f8 \extendLV #5 c2\laissezVibrer }
			{ d4 r4 r2 }
		}
	}
	\bar "||"
	\cueBox "Drum Break, then Fanfare"
}
