\version "2.24.0"

\score {
	\new Staff {
		\omit Score.BarLine
		\omit Staff.TimeSignature
		\omit Note.Stem
		\clef "bass"
		\relative c {
			g1 g1    fis1 dis1
			e1 e1   d!1( g1)
			c1 c2( e!) es1 es1 
			d1~ d1 \bar "||"
		} \addlyrics {
			Love me ten -- der, love me sweet. All my dreams ful -- fill. 
		}
	}
}