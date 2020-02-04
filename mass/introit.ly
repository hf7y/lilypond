%introit.layout
%Created	 2 Jan 2020

\version "2.19.82"

\include "/home/zach/lilypond/total-abstraction/definitions.ily"
\include "/home/zach/lilypond/z/note.ily"
\include "/home/zach/lilypond/z/square.ily"
\include "/home/zach/lilypond/z/dynamic.ily"
\include "/home/zach/lilypond/z/staff.ily"
\include "/home/zach/lilypond/z/metronome.ily"
\include "/home/zach/lilypond/z/frameEngraver.ily"

\include "./introit-music.ly"

\header {
	title = "Introit"
	composer = "Z.V. Pine"
	tagline  = ""
}

\score {
	<<
		\new GrandStaff <<
			\new Staff = "up" {
				\clef "treble"
				\introitMusic
			}
			\new Staff = "down" {
				\clef "bass"
				s1
			}
		>>
		\new Staff = "pedal" {
			\clef "bass"
			s1
		}
	>>
}
\layout {

}
\paper {
  system-separator-markup = \slashSeparator
  #(set! paper-alist (cons '("ipad pro" . (cons ( * 220 mm) ( * 305 mm))) paper-alist))
  #(set! paper-alist (cons '("montalvo" . (cons ( * 11  in) ( * 14  in))) paper-alist))
  #(set-paper-size "letter")
  
  indent = 0.5\in

  top-margin = 0.5\in
  left-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in

  markup-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 1 ))

  system-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 10))
}
