\version "2.24.1"

newman = \relative c'' {
											b8 | 
	8 8 		8 16 16 	16 16 8 	r8 16 16 |
	8 8 		4 			r4 			r8 16 16 |
	8 8 		8 8 		r8 16 16	16 16 8 |
	r8 16 16 	16 16 8 	r2	|
	8 8 		r8 16 16	16 16 8 	r16 16 16 16 |
	8 8 		8 8 		r4			r8

											b8 |
	8 16 16		r8 8		8 16 16		r8 16 16 |
	16 8 16		16 8 16		16 8.	 	r8 16 16 |
	8 8 		8. 16		16 8.	 	r8 

											16 16 |
	16 16 16 16	16 16 16 16 16 16 16 16 r8 16 16 
	32 32 16 8	r8 8 		8 8 		r8 16 16 |
	8 16 16		4			8 8			r8 

											16 16 |
	8 8			16 16 16 16 16 8 16		16 16 8 |
	r16 16 8	r16 16 8	r16 16 16 16 r8
}

newmanWord = \lyricmode {
	The ba -- sis of an aes -- the -- tic act is the pure i -- dea,
	But the pure i -- dea is, of ne -- ces -- si -- ty, an aes -- the -- tic act.
	Here then is the pa -- ra -- dox that is the ar -- tist's pro -- blem:

	Not space cut -- ting nor space buil -- ding,
	Not con -- struc -- tion nor fau -- vist de -- struc -- tion,
	Not the pure line, straight and nar -- row,

	Nor the tor -- tured line, dis -- tor -- ted and hu -- mi -- li -- a -- ting,
	Not the ac -- cu -- rate eye, all fin -- gers,
	Nor the wild eye of dream, win -- king

	But the i -- dea -- com -- plex that makes con -- tact with my -- ste -- ry
	of life, of me, of na -- ture.
}

newmanByWord = \relative c'' {
	4		8 8		4	 	8. 16 |
	16 8.	4		4		4 |
	4		16 8.	4		4 |
	4		16 8. 	4   	8. 16 |
	16 16 8	4		16 16 8	4 |
	4		4 		4		4 |
	16 16 8	4		4		4
	16 8.	16 8.	4		4 |
	16 8.	4		4		8 8 |
	8.	16	8 8		4		16 8 16 |
	16 8. 	4		4		4 |
	4		4		4		8 8 |
	4		4		8 8		8. 16 |
	16 8.	8. 16	16 16 16 16 4 |
	4		16 16 8	4		4 |
	16 8.	4		4		4 |
	4		4		4		8 8 |
	4		4		16 8.	8 8 |
	4		4		8 8		4 |
	16 16 8	4		4		4 |
	4		4		8 8	
}

newmanBySyllable = \relative c'' {
	4 4	4 4 |
	4 4 4 4 |
	4 4	4 4 |
	4 4	4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4	4 4 |
	4 4 4 4 |
	4 4	4 4 |
	4 4	4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4	4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4	4 4 |
	4 4 4 4 |
	4 4 4 4 |
	4 4 
}

\score {
	<<
		\new Staff {
			\new Voice = "sopranos" { 
				\partial 8 
				\newman r8 |
				\newmanByWord r4 |
				\newmanBySyllable
			}
		}
		\new Lyrics = "sopranos"
		\context Lyrics = "sopranos" {
			\lyricsto "sopranos" { \newmanWord \newmanWord \newmanWord}
		}
		\new Staff {
			\new Voice = "altos" { 
				\partial 8 
				r8 | r2 r4. 
				\newman r8 |
				\newmanByWord r4 |
				\newmanBySyllable
			}
		}
		\new Lyrics = "altos"
		\context Lyrics = "altos" {
			\lyricsto "altos" { \newmanWord \newmanWord \newmanWord}
		}
		\new Staff {
			\new Voice = "tenors" { 
				\partial 8 
				r8 | R1 | r2 r4. 
				\newman r8 |
				\newmanByWord r4 |
				\newmanBySyllable
			}
		}
		\new Lyrics = "tenors"
		\context Lyrics = "tenors" {
			\lyricsto "tenors" { \newmanWord \newmanWord \newmanWord}
		}
		\new Staff {
			\new Voice = "basses" { 
				\partial 8 
				r8 | R1 | R1 | r2 r4. 
				\newman r8 |
				\newmanByWord r4 |
				\newmanBySyllable
			}
		}
		\new Lyrics = "basses"
		\context Lyrics = "basses" {
			\lyricsto "basses" { \newmanWord \newmanWord \newmanWord}
		}
	>>
}