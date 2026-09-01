\version "2.24.0"

nigerianSpecial-tuba = \relative c {
	\lineNote \markup { \hspace #-1 \column { "drums start," "trumpets cue" }}
	\key f \major
	\partial 2. \new CueVoice { c8 f8 c2 }
	\lineNote "tutti"
	\new Voice {
			\repeat volta 2 {
				\repeat percent 2 { f,4. f8 c'8. c16~ 16[ d16 c8] | }
				\repeat percent 2 { bes,4. 8 f'8. f16~ 16[ g16 f8] | }
			}
			\break
			\repeat percent 2 { f4. f8 c'8. c16~ 16[ d16 c8] | }
			bes,4 4 4 4 | bes4 \bar "|."
	}
	\cueBox "Drum Break"
}

% nigerianSpecial-tuba = \relative c {
% 	\set Staff.explicitClefVisibility = #begin-of-line-visible
% 	\override Staff.Clef.break-visibility = #begin-of-line-visible
	
% 	\once \omit Staff.KeySignature
% 	\key f \major
% 	\bar "[|:"
% 	\clef "percussion"

% 	\lineLabel "Drum Break"
% 	\repeat volta 2 { 
% 		R1 | R1 | R1 |
% 		\alternative { 
% 			{ R1 \numRepeats \markup \huge "?" } 
% 			{ r4 \new CueVoice { 
% 							\cueClef "treble" 
% 							c''8 f8 c2~ | 
% 							\cueClefUnset 
% 						}
% 			}
% 		}
% 	} 

% 	\lineLabel "Fanfare"
% 	\clef "bass"

% 	\repeat volta 2 \relative c, {
% 		\repeat percent 2  { f4. f8 c'8. c16 r16 d c8 | }
% 		\repeat percent 2  { bes,4. bes8 f'8. f16 r g f8 | }
% 		\repeat percent 2  { f4. f8 c'8. c16 r16 d c8 | }

% 		bes4 4 4 4 | 
% 		\alternative
% 		{
% 			{	bes \new CueVoice { 
% 									\cueClef "treble" 
% 									c''8 f8 c2~ | 
% 									\cueClefUnset 
% 								}
% 			}
% 			{ bes,,4 r4 r2 \bar "|." } 
% 		}
% 	}
% 	\cueBox "Drum Break, then Fanfare"
% }
