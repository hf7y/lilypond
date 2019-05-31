% { aes8 c b d e } as Feldman style thesis statement
% first fifth vanilla MF
% second fifth add new technique
%%% use twelve tone to fill in gaps with { s4. s8 } rhythm
%%% but keep things sparse and Feldmanesque
% begin to invoke tonality with a minor pedal tone
%%% { f4. e8 } rhythm above pedal planing up and down
%%% fading out twelve tone shit
%%% move to e in bass
%%% { d8 e\f ( f g )
%%% twelvetone shit returns
% back to intro style
%%% triplet figure where the aes was
%%% triplets in twelve tone shit


i = <<
	\new Voice {
		\change Staff = "up"
		\voiceOne
		\relative c''{
			s8 c b d r2 | r1 | 
			s8 des a es' r2 | r1 |
			s8 e bes f' r2 | r1 |
			s8 c b e r2 | r1 |
			s8 bes a dis r2 | r1 |
		}
	}

	\new Voice {
		\change Staff = "up"
		\voiceTwo
		\relative c'' {
			aes8 s4. s2 | s1 |
			g8 s4. s2 | s1 |
			fis8 s4. s2 | s1 |
			f8 s4. s2 | s1 |
			e8 s4. s2 | s1 |
		}
	}
>>


\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
			\i
		}

		\new Staff = "down" {
			\clef "bass"
			s1 * 20
		}
	>>
}
