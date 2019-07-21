%Tue, 16 Jul 2019 08:08:07 -0500
\version "2.18.2"

\header {
  %title = "Fourteen Stations"
  subtitle = ""
  %composer = "Z.V. Pine"
  tagline = ""
}%end header

init = {
  \omit Staff.Clef
  \omit Staff.TimeSignature
  \repeat unfold 10 { s1*6 }
}%end music

\layout {
  \context {
    \Score
      proportionalNotationDuration = #(ly:make-moment 1/1)
      \override Score.SpacingSpanner.strict-note-spacing = ##t
  }%end context
}%end layout

\paper {
  #(set! paper-alist (cons '("newman" . (cons (* 11.66 in) (* 15 in))) paper-alist)) 
  #(set-paper-size "newman")

  indent = 0 \in

  top-margin = 0.0\in
  left-margin = 0.0\in
  right-margin = 0.0\in
  bottom-margin = 0.0\in
  
  markup-system-spacing = 
    #'((basic-distance   . 00)
       (minimum-distance . 00)
       (padding          . 0 )
       (stretchability   . 1 ))

  system-system-spacing = 
    #'((basic-distance   . 00)
       (minimum-distance . 00)
       (padding          . 0 )
       (stretchability   . 1 ))
}%end paper

\score {
\pointAndClickOff
<<
  <<
    \new StaffGroup \with {
      instrumentName = #"Soprano"
      shortInstrumentName = #""
    }<<
      \new Staff \with {
	instrumentName = "1"
	shortInstrumentName = "S 1"
      }{
	\clef "treble"
	\init
      }%end Soprano1
      \new Staff \with {
	instrumentName = "2"
      }{
	\clef "treble"
	\init
      }%end Soprano2
      \new Staff \with {
	instrumentName = "3"
      }{
	\clef "treble"
	\init
      }%end Soprano3
      \new Staff \with {
	instrumentName = "4"
      }{
	\clef "treble"
	\init
      }%end Soprano4
    >>%end Sopranos

    \new StaffGroup \with {
      instrumentName = #"Alto"
      shortInstrumentName = #""
    }<<
      \new Staff \with {
	instrumentName = "1"
	shortInstrumentName = "A 1"
      }{
	\clef "treble"
	\init
      }%end Alto1
      \new Staff \with {
	instrumentName = "2"
      }{
	\clef "treble"
	\init
      }%end Alto2
      \new Staff \with {
	instrumentName = "3"
      }{
	\clef "treble"
	\init
      }%end Alto3
      \new Staff \with {
	instrumentName = "4"
      }{
	\clef "treble"
	\init
      }%end Alto4
    >>%end Altos

    \new StaffGroup \with {
      instrumentName = #"Tenor"
      shortInstrumentName = #""
    }<<
      \new Staff \with {
	instrumentName = "1"
	shortInstrumentName = "T 1"
      }{
	\clef "treble_8"
	\init
      }%end Tenor1
      \new Staff \with {
	instrumentName = "2"
      }{
	\clef "treble_8"
	\init
      }%end Tenor2
      \new Staff \with {
	instrumentName = "3"
      }{
	\clef "treble_8"
	\init
      }%end Tenor3
      \new Staff \with {
	instrumentName = "4"
      }{
	\clef "treble_8"
	\init
      }%end Tenor4
    >>%end Tenors

    \new StaffGroup \with {
      instrumentName = #"Bass"
      shortInstrumentName = #""
    }<<
      \new Staff \with {
	instrumentName = "1"
	shortInstrumentName = "B 1"
      }{
	\clef "bass"
	\init
      }%end BassI
      \new Staff \with {
	instrumentName = "2"
      }{
	\clef "bass"
	\init
      }%end BassII
      \new Staff \with {
	instrumentName = "3"
      }{
	\clef "bass"
	\init
      }%end BassIII
      \new Staff \with {
	instrumentName = "4"
      }{
	\clef "bass"
	\init
      }%end BassIV
    >>%end Basses
  >>%end ChoirStaff

  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Flute"
      shortInstrumentName = "Fl."
    }{
      \clef "treble"
      \init
    }%end Staff Flute
    \new Staff \with {
      instrumentName = "Clarinet"
      shortInstrumentName = "Cl."
    }{
      \clef "treble"
      \init
    }%end Staff Clarinet
  >>%end StaffGroup

  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Violin"
      shortInstrumentName = "Vln."
    }{
      \clef "treble"
      \init
    }%end Staff Violin
    \new Staff \with {
      instrumentName = "Violoncello"
      shortInstrumentName = "Vc."
    }{
      \clef "bass"
      \init
    }%end Staff Violoncello
    \new Staff \with {
      instrumentName = "Contrabass"
      shortInstrumentName = "Cb."
    }{
      \clef "bass"
      \init
    }%end Staff Contrabass
  >>%end StaffGroup Strings
  
  \new PianoStaff \with {
    instrumentName = "Pianoforte"
    shortInstrumentName = "Pf."
  }<<
    \new Staff = "up" {
      \clef "treble"
      \init
    }%end Staff up
    \new Staff = "down" {
      \clef "bass"
      \init
    }%end Staff down
  >>
>>
}%end score

