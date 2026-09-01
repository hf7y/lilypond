\version "2.24.0"
\include "../Global.ly"

\header {
  title = "Anthem for Eris"
  composer = "J.R. Hankins."
  % Hankins was in the NYC based Hungry March Band
}

\include "Anthem_Trumpet.ly"

tubaI = \relative c, {
	\time 2/2
	\repeat volta 2 { bes2 r | 4 4 4 4 |  } 
	\repeat volta 2 { <bes e>2 r | 4 4 4 4 | } 
	\repeat volta 2 { <bes e f>2 r | 4 4 4 4 | } 
	\repeat volta 2 { <bes e f ges>2 r | 4 4 4 4 | } 
	\repeat volta 2 { 1~ 2 r }
}

tubaA = \relative c, {
	\lineLabel "tubas start, midhorns join in:"
	\repeat unfold 2 {
		\repeat volta 2 {
			bes4. f'4. bes4 | r2 r4 bes4 |
			aes4. f4. des4 | r2 r4 aes'4 |
			g4. es4. c4 | R1 |
			c2 des | c a! |
		}
	}
}

tubaB = \relative c, {
\time 3,2,2 7/8
	c4 bes8 c4 g | c4 bes8 c4 des |
	\repeat volta 2 {
		c4 bes8 c4 g | c4 bes8 c4 des |
		c4 bes8 c4 g | 
		\alternative {
			{ c4 bes8 c4 des | }
			{ c4 bes8 c4 des | }
		}
	}
}

tubaC = \relative c, {
	\repeat unfold 3 {
		c4 8 4 4 | bes4 8 4 4 |
		aes4 8 4 b! | c4 g8 c4 g |
		c4 8 4 4 | bes4 8 4 4 |
		aes4 8 4 b! | c4 g8 c4 r | 
	}
}