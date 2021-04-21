\version "2.20.0"

\include "../arrangement.ly"
\include "./extract.ly"
\include "../chorale.ly"
\include "../contextualize.ly"
\include "../lib.ly"
\include "../texture.ly"
\include "../textures/buzz.ly"
\include "../textures/chance-rest.ly"
\include "../textures/chance-zing.ly"
\include "../textures/chance-bloom.ly"
\include "../textures/chance-air.ly"
\include "../textures/identity.ly"
\include "../dot-play.ly"
\include "../max-voices.ly"
\include "../jazz-stabs.ly"
\include ".../z/square.ily"

\score {
	#(extract-id arrangement "fl")
}