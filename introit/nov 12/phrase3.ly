\version "2.20.0"

\header {
	title = "Phrase 3"
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

function =
#(define-music-function
     (parser location pitch duration figure)
     (ly:pitch? ly:duration? string?)
	(make-music
	  'SequentialMusic
	  'elements
	  (list (make-music
	          'NoteEvent
	          'articulations
	          (list (make-music
	                  'AbsoluteDynamicEvent
	                  'text
	                  "f"))
	          'duration
	          duration
	          'pitch
	          pitch)))
   )

melodyC = {
	\ottava #0
	\relative c''' { cis4( dis) s s a g s dis' s f b, s s a }
	
	\ottava #0
	\relative c'' { cis( dis) s a g s f s s dis' s f s s f, s s s e d}

	\bar "" \break
	\clef "bass"
	\relative c' { bes( c) s aes s ges s d e s bes s s aes s e s f s }

	\ottava #-1
	\relative c, { cis b s s  a s g s s aes ges s g s f s s dis cis e es }

	\relative c,, { es s es s es s s es s s es s s s s es s s s 
		}	
}

accompanimentC = {
	\override Accidental.stencil = ##f
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
	\set Staff.clefPosition = #0
  	\set Staff.middleCPosition = #4
	\change Staff = "accompanimentDown" \clef "bass"
	\set Staff.clefPosition = #0
  	\set Staff.middleCPosition = #4

	\squigDown ais \squigUp a \squig d, 
	\squig a, \squigDown fis,, \squig dis, \squig gis 
	\squigUp d, \squig a, \squig f,, \squig d,, 
	\squigDown ais,, \squig dis,, \squig gis, \squig cis, 
	\squig fis,, \squig cis, \squig ais,, \squig gis,

	\change Staff = "accompanimentUp"
	\key bes \minor

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
	\set Staff.clefPosition = #0
  	\set Staff.middleCPosition = #-4
	\change Staff = "accompanimentDown" \clef "treble"
	\set Staff.clefPosition = #0
  	\set Staff.middleCPosition = #-4
	\squigUp dis \squig g' \squig cis' \squig g' 

	\change Staff = "accompanimentDown"
	\key b \major
	\squigDown dis \squig g' \squig cis' \squig g'

	\squigUp dis \squig g' \squig cis' \squig g' 

	\squigDown dis \squig g' \squig cis' \squig g'

	\squigUp dis \squig g' \squig cis' \squig g' 

	\squigDown dis \squig g' \squig cis' \squig g'

	\squigUp dis \squig g' \squig cis' \squig g' 

	\squigDown dis \squig g' \squig cis' \squig g'

	\squigUp dis \squig g' \squig cis' \squig g' 

	\squigDown dis \squig g' \squig cis' \squig g'
}

\score {
	\new GrandStaff <<
		\new Staff = "melody" \with {
			\accidentalStyle dodecaphonic
			\override VerticalAxisGroup.staff-staff-spacing = #'((minimum-distance . 15))
		}{
			\clef "treble"
			\partial 4
			\stemless

			\melodyC
		}
		\new Staff = "accompanimentUp" \with {
			\override VerticalAxisGroup.staff-staff-spacing = #'((minimum-distance . 15))
		}{
			\override Staff.StaffSymbol.line-positions = #'(0)
			\clef "treble"
			\set Staff.clefPosition = #0
  			\set Staff.middleCPosition = #-4

			\key c \whole-tone
			\partial 4
			\accompanimentC
		}
		\new Staff = "accompanimentDown" \with {
			%\override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 50))
		}{
			\key f \whole-tone
			\clef "treble"
			\set Staff.clefPosition = #0
  			\set Staff.middleCPosition = #-4
			\override Staff.StaffSymbol.line-positions = #'(0)
			s4
			s1 * 35 s2.
		}
	>>
	\layout {
   		\context {
     		\Score
      		\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
    		proportionalNotationDuration = #(ly:make-moment 1/16)
    		\omit BarLine
    		\omit Staff.KeyCancellation
    	}

    	\context {
    		\GrandStaff
    		\remove Span_bar_engraver
    	}
    }
}