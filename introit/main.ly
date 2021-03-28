\version "2.20.0"

\include "./math.ly"

music = {
	\headntail 4 c'1
}

timecode = { s1*5 } 

\score {
	<<
		\new PianoStaff = "pf" <<
			\new Staff = "up" { \clef "treble" \timecode }
			\new Staff = "down" { \clef "bass" \timecode }
		>>
		\on "up" \music
	>>
}

\layout {
	\context {
		\Score
		\override TupletNumber.text = #tuplet-number::calc-fraction-text
	}
}