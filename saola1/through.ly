\version "2.18.2"

ground = {
	d4. f a c e | g e c a f |
}

AOne = {
	\time 15/8

	\relative c
	{
		\ground
	}
}

\score {
	\new PianoStaff <<
		\new Voice = "up"
		{
			\clef "treble"
			s4.*10	
		}

		\new Voice = "down"
		{
			\clef "bass"
			\AOne
		}
	>>
}
