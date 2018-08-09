%Mon, 06 Aug 2018 11:56:52 -0500
\version "2.18.2"

\header {
  title = "pfperc"
  subtitle = "duet for pianist and percussionist "
  composer = "Z.V. Pine"
  tagline = ""
}%end header

%%% B I G   S E C T I O N   FOR   C U S T O M   D R U M   N O T A T I O N %%%
drumPitchNames.tt = #'tamtam
drumPitchNames.x  = #'center
drumPitchNames.t  = #'tamtamhigh
drumPitchNames.rm  = #'rim
drumPitchNames.rim = #'rim
drumPitchNames.ed   = #'edge
drumPitchNames.edge = #'edge

#(define tam-tam
  '((tamtam     default  #f  -2)
    (center     default  #f  -0)
    (tamtamhigh default  #f   2)
    (rim        default  #f   3)
    (edge       default  #f   4)))

drumPitchNames.bd = #'bassdrum
drumPitchNames.x  = #'center
drumPitchNames.bdh = #'bassdrumhigh
drumPitchNames.col    = #'collar
drumPitchNames.collar = #'collar
drumPitchNames.rm     = #'rim
drumPitchNames.rim    = #'rim
drumPitchNames.sh     = #'shell
drumPitchNames.shell  = #'shell

#(define bass-drum
  '((bassdrum     default  #f  -2)
    (center       default  #f  -0)
    (bassdrumhigh default  #f   2)
    (collar       default  #f   3)
    (rim          default  #f   4)
    (shell        default  #f   5)))

pfA = {
}%end pfA

ttA = \drummode {
  tt x t rm ed edge
}%end ttA

bdA = \drummode {
  bd x bdh col rm sh
}

\layout {
  \context {
    \Score
      proportionalNotationDuration = #(ly:make-moment 1/1)
      \override Score.SpacingSpanner.strict-note-spacing = ##t
  }%end context
}%end layout

\paper {
  #(set-paper-size "letter")
  indent = 1\in

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


\score {<<
  %\pointAndClickOff
  \new StaffGroup <<
    \new DrumStaff \with {
      instrumentName = "Tam-tam"
      shortInstrumentName = "Tt."
      \override StaffSymbol.line-positions = #'(-2 0 2) 
      drumStyleTable = #(alist->hash-table tam-tam)
    }{
      \ttA
    }%end Staff Tam-tam

    \new DrumStaff \with {
      instrumentName = "Gran Cassa"
      shortInstrumentName = "G.C."
      \override StaffSymbol.line-positions = #'(-2 0 2) 
      drumStyleTable = #(alist->hash-table bass-drum)
    }{
      \bdA
    }%end Staff Grande Casse
  >>%end StaffGroup
  \new PianoStaff \with {
     instrumentName = "Pianoforte"
     shortInstrumentName = "Pf."
   }<<
     \new Staff = "up" {
       \clef "treble"
     }
     \new Staff = "down" {
       \clef "bass"
     }
  >>%end PianoStaff
>>}%end score

