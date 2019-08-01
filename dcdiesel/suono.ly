%Sat, 22 Dec 2018 22:56:29 -0600
\version "2.18.2"

\include "frameEngraver-bars-and-boxes.ily"

\header {
  title = "suono"
  subtitle = ""
  composer = "Z.V. Pine"
  tagline = ""
}%end header

samplePath =
  #'((moveto 0 0)
     (lineto -1 1)
     (lineto 1 1)
     (lineto 1 -1)
     (closepath))

music = {
  f1^\markup {
    \path #0.25 #samplePath
  }
  \stopStaff
  \override Staff.StaffSymbol.line-count = #1
  \startStaff
  f1^\markup {
    \path #0.25 #samplePath
  }
  \frameStart g1 \frameEnd g1 \frameExtenderEnd g1 
}%end music

\layout {
  \context {
    \Score
      proportionalNotationDuration = #(ly:make-moment 1/1)
      \override Score.SpacingSpanner.strict-note-spacing = ##t
  }%end context
  \context {
    \Voice
      \consists \frameEngraver
  }
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
  } \context Voice {
    \music
  }%end Voice
}%end score

