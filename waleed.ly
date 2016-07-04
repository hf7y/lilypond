music = {
	\relative c {
		c4 b bes bis | 
	}
}

musicTwo = {
	\relative c {
		a4 b c d |
	}
}

\score {
<<
	\new Staff {
		\clef "bass"
		
		\music
		\musicTwo
	}

	\new Staff {
		\clef "bass"
		\musicTwo
		\music
	}
>>

\midi {}
}

