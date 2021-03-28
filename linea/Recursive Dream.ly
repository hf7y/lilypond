\version "2.20.0"

#(ly:set-option 'relative-includes #t)
\include "./gestures.ily"
\include "./gestures/clap.ly"
\include "./instrument-names.ily"
\include "./rows.ly"

\include "/home/zach/lilypond/z/list.ily"
\include "/home/zach/lilypond/z/dynamic.ily"


\header {
	title= "r. r."
	composer = "Z V Pine"
	tagline = "" }

#(set! paper-alist
  (cons '("half-dell"  . (cons ( * 6   in) ( * 6.5   in))) paper-alist))
#(set-global-staff-size 16)
%\paper { #(set-paper-size "half-dell") }
\paper { 
	#(set-paper-size "b4") 
	% #(set-paper-size "half-dell")
	system-separator-markup = \slashSeparator
}

timecode = { 
	\tempo 4 = 76
	s1*40}

\include "./arrangement.ly"

\score {
	<<
		\new StaffGroup <<
			\new Staff = "fl" \with { instrumentName = "Flute" } <<
				\clef "treble"
				\timecode
			>>
			\new Lyrics = "fl"

			\new Staff = "cl" \with { instrumentName = "Clarinet"} <<
				\clef "treble"
				\timecode
			>>
			\new Lyrics = "cl"

			\new Staff = "bn" \with { instrumentName = "Basson"}<<
				\clef "bass"
				\timecode
			>>
			\new Lyrics = "bn"

			\new Staff = "tbn" \with { instrumentName = "Trombone"} <<
				\clef "bass"
				\timecode
			>>
			\new Lyrics = "tbn" {}
		>>

		\new PianoStaff = "pf"  \with { instrumentName = "Piano"} <<
			\new Staff = "up" <<
				\clef "treble"
				\timecode
			>>
			\new Staff = "down" <<
				\clef "bass"
				\timecode
			>>
		>>

		\new StaffGroup <<
			\new Staff = "vn" \with { instrumentName = "Violin"} <<
				\clef "treble"
				\timecode
			>>
			\new Staff = "va" \with { instrumentName = "Viola"} <<
				\clef "alto"
				\timecode
			>>
			\new Staff = "vc" \with { instrumentName = "Cello"} <<
				\clef "bass"
				\timecode
			>>
			\new Staff = "db" \with { instrumentName = "Contrabass"} <<
				\clef "bass_8"
				\timecode
			>>
		>>
	\arrangement
	>>

	\layout {
  		\context {
    		\Staff
    		\override VerticalAxisGroup.staff-staff-spacing =
    			#'((basic-distance . 15)
				   (minimum-distance . 9)
				   (padding . 1)
				   (stretchability . 10))

    		\accidentalStyle modern
			
			\override TimeSignature.break-visibility = ##(#f #t #t)
			\numericTimeSignature

    		\override TupletNumber.text = #tuplet-number::calc-fraction-text
    		tupletFullLength = ##t
			tupletFullLengthNote = ##f
  		}
  		\context {
  			\Score
  			proportionalNotationDuration = #(ly:make-moment 1/16)
  			% proportionalNotationDuration = #(ly:make-moment 1/8)
  			
  		}
	}
}