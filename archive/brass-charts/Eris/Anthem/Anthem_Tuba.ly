\version "2.24.0"
% \include "../Global.ly"

\header {
  title = "Anthem for Eris"
  composer = "J.R. Hankins."
  % Hankins was in the NYC based Hungry March Band
}

% \include "Anthem_Trumpet.ly"

tubaI = \relative c, {
	\lineNote "add-in one group at a time"
	\repeat volta 2 { bes2 r | 4 4 4 4 |  } 
	\repeat volta 2 { <bes e>2 r | 4 4 4 4 | } 
	\repeat volta 2 { <bes e f>2 r | 4 4 4 4 | } 
	\repeat volta 2 { <bes e f ges>2 r | 4 4 4 4 | } 
	\repeat volta 2 { 1~ 2 r }
}

tubaA = \relative c, {
	\lineNote "tubas start"
	% \time 4/4
	\repeat volta 2 {
		bes4. f'4. bes4 | r2 r4 bes4 |
		aes4.\finger1 f4. des4\finger23 | r2 r4 aes'4 |
		g4.\finger12 e4.\finger2 c4\finger13 | R1 |
		c2 des\finger23 | c aes\finger1 |
	}
	\cueBox "cue for B: unison with tubas for 2x"
}

tubaB = \relative c {
	\time 3,2,2 7/8
	% c4 bes8 c4 g | c4 bes8 c4 des |
	\lineNote "tubas and midhorns start"
	\repeat volta 2 {
		c4\finger1 bes8 c4 g\finger12 | c4 bes8 c4 des\finger2 |
		c4 bes8 c4 g | 
		\alternative {
			{ c4 bes8 c4 des | }
			% { c4 bes8 c4 des | }
		}
	}
	\cueBox "cue for C: highhorns stop, then play 2x"
}

tubaC = \relative c {
	\repeat volta 4 {
		c4 8 4 4 | bes4 8 4 4 |
		aes4\finger1 8 4 b!\finger12 |  
		\alternative {
			\volta 1,3 { c4 g8 c4 g |  }
			\volta 2,4 { c4 g8 c4 r |  }
		}
	}
	\cueBox \markup \column {
		\line { "B, C, B, then A" }
	}
}

anthem-tuba = {
	\key bes \major
	\time 2/2
	\tubaI \break 
	\mark #1
	\tubaA \break
	\mark #2
	\tubaB \break
	\mark #3
	\tubaC
}