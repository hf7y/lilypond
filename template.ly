\version "2.18.2"

\header {
  title = "TITLE"
  subtitle = ""
  composer = "Z.V. Pine"
  tagline = ""
}%end header

music = {
}%end music

\layout {
  \context {
    \Score
      proportionalNotationDuration = #(ly:make-moment 1/1)
      \override Score.SpacingSpanner.strict-note-spacing = ##t
  }%end context
}%end layout

\paper {
  #(set-paper-size "letter")
  indent = 0.3\in

  %{ PRE-FORMATTING FOR IPAD PRO ****************************************************
  #(set! paper-alist (cons '("ipad pro" . (cons (* 220 mm) (* 305 mm))) paper-alist)) 
  #(set-paper-size "ipad pro")
  top-margin = 0.7\in
  left-margin = 0.7\in
  right-margin = 0.6\in
  bottom-margin = 0.7\in
  %}
  
  markup-system-system-spacing = 
    #'((basic-distance   . 20)
       (minimum-distance . 10)
       (padding          . 5 )
       (stretchability   . 1 ))

  system-system-system-spacing = 
    #'((basic-distance   . 30)
       (minimum-distance . 20)
       (padding          . 4 )
       (stretchability   . 1 ))
}%end paper

\score {
  %\pointAndClickOff

  \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
  }{

  }%end Staff
}%end score
