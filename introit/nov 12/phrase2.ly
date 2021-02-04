\version "2.20.0"

\header {
	title = "Phrase 2"
}

\include "./arpeggio.ly"
\include "../z/note.ily"

pentatonic = #`(
  (0 . ,DOUBLE-SHARP)
  (1 . 0)
  (2 . 0)
  (3 . ,DOUBLE-SHARP)
  (4 . 0)
  (5 . 0)
  (6 . 0)
)

whole-tone = #`(
  (0 . 0)
  (1 . 0)
  (2 . 0)
  (3 . ,SHARP)
  (4 . ,SHARP)
  (5 . ,SHARP)
  (6 . ,SHARP)
)

melodyB = {
	\ottava #1
	\relative c'''' { c4( des) s s aes g s d' s es, bes' s s a' }
	
	\ottava #0
	\relative c''' { c( des) s aes g s ges s s d s es s s f, s s s e' es'}

	\clef "bass"
	\relative c' { c( des) s aes s g s d es s bes s s a s e s f s }

	\ottava #-1
	\relative c, { c b s s  bes s a s s aes ges s g s ges s s f e es d }

	\relative c,, { des s des s des s s des s s des s s s s des s s s 
		\clef "treble" s s s}	
}

accompanimentB = {
	\arpeggioNormal
	s4
	%\ottava #1
	\squigUp d' \squig a'  \squig f' \squig c' 
	\squigDown gis'' \squig dis' \squig fis' \squig gis' 
	\squig dis' \squigUp b' \squig e' \squig b 
	s4
	
	%\ottava #0
	\squig c' \squig d' \squig g'' 
	\squig a' \squigDown gis' \squig dis \squig cis' 
	\squigUp g' \squig g'' \squigDown dis' \squig dis 
	\squig fis \squigUp a' \squig e \squig f 
	\squigDown dis \squig cis' \squig fis s4 
	s4
	\change Staff = "accompanimentUp" \clef "bass"
	\change Staff = "accompanimentDown" \clef "bass"

	\squigDown ais \squigUp a \squig d, 
	\squig a, \squigDown fis,, \squig dis, \squig gis 
	\squigUp d, \squig a, \squig f,, \squig d,, 
	\squigDown ais,, \squig dis,, \squig gis, \squig cis, 
	\squig fis,, \squig cis, \squig ais,, \squig gis,

	\change Staff = "accompanimentUp"
	\key f \whole-tone

	%\ottava #-1
	\squigUp dis, \squigDown ais,, \squig dis,, \squig gis,
	\squigUp cis, \squigDown ais, \squig dis,, \squig gis,
	\squig cis, \squig gis \squigUp g,, \squig dis,,
	\squigDown gis, \squig cis, \squig fis,, \squigUp a, 
	\squig dis, \squigDown fis,, \squig dis,, \squig gis, 
	\squig cis,,

	\squig ais, \squig cis, \squig gis,,
	\squig dis,, \squig fis,,, \squigUp cis,, \squigDown gis,,
	\squig dis,, \squig ais, \squigUp cis, \squig f,
	\squigDown ais,, \squig cis,, \squigUp g, \squig dis, 
	\squigDown fis,, \squigUp a, \squig cis, \squig g
	\change Staff = "accompanimentUp" \clef "treble"
	\change Staff = "accompanimentDown" \clef "treble"
	\squigUp dis \squig g' \squig cis'
}

\score {
	\new GrandStaff <<
		\new Staff = "melody" \with {
			\accidentalStyle dodecaphonic
		}{
			\clef "treble"
			\partial 4
			\stemless

			\melodyB
		}
		\new Staff = "accompanimentUp" {
			\clef "treble"
			  \set Staff.keyAlterations =
				  #`((3 . ,NATURAL)
				     (0 . ,NATURAL)
				     (4 . ,NATURAL)
				     (1 . ,NATURAL)
				     (5 . ,NATURAL)
				     (2 . ,NATURAL)
				     (6 . ,NATURAL))
			\partial 4
			\accompanimentB
		}
		\new Staff = "accompanimentDown" {
			\key b \pentatonic
			s4
			s1 * 23 s2.
		}
	>>
	\layout {
   		\context {
     		\Score
      		\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
    		proportionalNotationDuration = #(ly:make-moment 1/12)
    		\omit BarLine
    	}
    }
}