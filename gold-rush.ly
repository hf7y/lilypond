\version "2.20.0"
\include "./z/note.ily"
\header {
	title = "After the Gold Rush"
	composer = "Neil Young"
	tagline = ""
}

elegant = \new Voice = "elegant" \stemless \relative c' {
	\autoBeamOff
	\key e \major
	\set tieWaitForNote = ##t

	e8\finger 12 fis\finger 2 | fis gis\finger 23 gis gis s fis
	s fis | s e4\finger 12 e8~ s8 \hide e
	r e | fis\finger 2 gis\finger 23 s gis s fis
	e e~ | s2 s8 \hide e8
	r8 e\finger 12 | fis\finger 2 gis\finger 23 s gis s a8\finger 12
	s gis8 | s fis4\finger 2 fis8~ s \hide fis
	r fis | gis4\finger 23 e\finger 12 e 
	gis8 fis~ | s \hide fis8 r4

	b8\finger 2 cis\finger 12 b gis\finger 23~ | s8 s8 \hide gis8 r8 gis8 gis 
	s4 | fis8\finger 2 e4\finger 12 fis8 s4 
	r8 e | gis4\finger 23 s8 e8 s4 
	e8 fis~ | s2.. \hide fis8 |
	R1 | fis8\finger 2 gis\finger 23 s gis s a\finger 12 
	s gis | s fis4 fis8 s4
	r 8 fis\finger 2 | gis4\finger 23 fis4 e4\finger 12
	cis4\finger 123 | e4~ s4 s8 \hide e8 r4

	fis8 gis s gis s a 
	s gis | s fis4 fis8 s4
	r8 fis | gis4 fis4 e4
	cis4 | 
	\shape #'((0 . 0) (3 . 0) (6 . 0) (9 . 0)) Tie
	e4~ s4 s8 \hide e8 \bar "|."
}

verbatim = \new Voice = "verbatim" \relative c' {
	\autoBeamOff
	e8 fis | fis gis gis gis gis4 
	fis8 fis~ | fis e4 e8~ e e
	e fis | fis gis gis gis(~ gis fis)
	e e | r2 r4
	e8 fis | gis gis4 a8~ a gis4
	gis8 | gis8 fis4 fis8~ fis fis
	fis fis | gis4 e e 
	gis8 fis~ | fis4 r4

	b8 cis b gis~ | gis4 gis4 gis8 gis 
	r4 | fis8 e4 fis8 r4 
	e8 fis | gis4 e e 
	e8 fis~ | fis4 r2. |
	R1 | gis8 gis gis gis a( gis) 
	gis gis~ | gis fis4 fis8~ fis4
	fis8 fis | gis( fis) e4 e8 cis4
	e8~ | e2 r2

	gis8 gis gis gis a( gis) 
	gis gis~ | gis fis4 fis8~ fis4
	fis8 fis | gis4 e4 e8 cis4
	e8~ | e2 r4
}

verse = \lyricmode {
	Well I dreamed I saw the knights 
	in ar -- mor co -- ming,
	say -- in' some -- thing a -- bout a queen.

	There were pea -- sants sing -- in' 
	and drum -- mers drum -- min'
	and the ar -- cher split the tree.

	There was a fan -- fare blo -- win'
	to the sun
	that was floa -- ting on
	the breeze.

	Look at Mo -- ther Na -- ture 
	on the run
	in the Nine -- teen Se -- ven -- ties.

	Look at Mo -- ther Na -- ture 
	on the run
	in the Nine -- teen Se -- ven -- ties.
}

simplified = \new Voice = "simplified" \relative c' {
	\key e \major
	e8 fis | gis8 8 gis8 8 gis4
	fis | fis e e8 8
	e8 fis | gis8 8 gis4 gis
	e4 | e4 r2
	e8 fis | gis4 gis a8 gis
	gis4 | gis4 fis fis8 8
	fis8 8 | gis4 e e 
	gis4 | fis4 r4

	b8 cis b4 | gis4 gis4 gis4 
	gis4 | fis4 e4 fis4 
	e8 fis | gis4 e e 
	e4 | fis4 r2. |
	R1 | gis8 gis gis8 8 a4 
	gis4 | gis fis4 fis
	fis8 8 | gis4 e4 e4 
	cis4 | e2 r2

	gis8 gis gis8 8 a4 
	gis4 | gis fis4 fis
	fis8 8 | gis4 e4 e4 
	cis4 | e2 r4
}

\score {
	<<
		\new Staff \with {
			instrumentName = \markup { \concat {"Trumpet in B" \flat } }
		}{
			\time 2/2
			\partial 4
			\elegant
		}
		\new Lyrics {
			\lyricsto "elegant" {
				%\verse
			}
			\lyricsto "verbatim" {
				\verse
			}
		}
	>>
	\layout {
		indent = 1\in
    	\context {
      		\Score
      		proportionalNotationDuration = #(ly:make-moment 1/20)
    	}	
    }
}

\paper {
  system-system-spacing = #'((basic-distance . 13) (padding . 0))
  ragged-last-bottom = ##t
  ragged-bottom = ##t
  #(set-paper-size "letter")
  top-margin = 0.7\in
  left-margin = 0.7\in
  right-margin = 0.7\in
  bottom-margin = 0.7\in

}