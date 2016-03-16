\version "2.18.2"

intro =	{
	\time 4/4

	\repeat volta 2	<<
		\autochange
		\new Voice
		{
			\voiceOne
			\relative c''
			{
				d1\( | e | a, | c\) |
				d1\( | e | g, | c\) |
			}
		
		}
	
		\autochange
		\new Voice
		{
			\voiceTwo
			\relative c
			{
				c1\laissezVibrer | s | s | s |
				s | s | s | s |
			}
		}
	>>

	<<
		\autochange
		\new Voice
		{
			\voiceOne
			\relative c''
			{
				d1\( | e | a, | c\) |
				d1\( | e | g, | c\) |
			}
		
		}
	
		\autochange
		\new Voice
		{
			\voiceTwo
			\relative c
			{
				<c d>1\laissezVibrer | s | s | s |
				s | s | s | s |
			}
		}
	>>
	\bar "||"

	<<
		\autochange
		\new Voice
		{
			\voiceOne
			\relative c''
			{
				d1\( | e | a, | c\) |
				d1\( | e | g, | c\) |
			}
		
		}
	
		\autochange
		\new Voice
		{
			\voiceTwo
			\relative c
			{
				<c e>1\laissezVibrer | s | s | s |
				d\laissezVibrer | s | s | s |
			}
		}
	>>
	\bar "||"

	<<
		\autochange
		\new Voice
		{
			\voiceOne
			\relative c''
			{
				d1\( | e | a, | c\) |
				d1\( | e | g, | c\) |
			}
		
		}
	
		\autochange
		\new Voice
		{
			\voiceTwo
			\relative c
			{
				c1\laissezVibrer | s | s | s |
				s | s | s | s |
			}
		}
	>>
	\bar "||"
}

\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
			\intro
		}

		\new Staff = "down"
		{
			\clef "bass"
		}
	>>
}
