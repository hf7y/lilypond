%introit-music.ly
%Created	 2 Jan 2020

\version "2.19.83"

introitMusic = {
	<<
		\new Voice {
			\change Staff = "up"
			\voiceOne
		}
		\new Voice {
			\change Staff = "up"
			\voiceTwo
		}
		\new Voice {
			\change Staff = "up"
			\voiceThree
		}

		\new Voice {
			\change Staff = "down"
			\voiceOne
		}
		\new Voice {
			\change Staff = "down"
			\voiceTwo
		}
		\new Voice {
			\change Staff = "down"
			\voiceFour
		}

		\new Voice {
			\change Staff = "pedal"
			\oneVoice
			s1 * 4
		}
	>>
}