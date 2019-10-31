%trappiano.ly
%Created on 08 07, 2019 at 18:15

\version "2.19.83"

\header {
  title = "Trappiano"
  subtitle = ""
  composer = "Z.V. Pine"
  tagline = ""
}

pianoOne = {
  
}

piano = <<
  \context Staff = "up" \relative c'' {
    \partial 4 r4 | 
    <b e>4. <b e>8 r2 | 
  }
  \context Staff = "down" \relative c' {
    \clef "bass"
    \tempo 4 = 76
    \partial 4 \tuplet 3/2 { fis8 c g } |
    <c fis>4. <c fis>8 r4 \tuplet 3/2 { fis8 c g } | %m1
  }
>>

battery = {
  \context DrumStaff = "drums" {
    \drummode {
      \partial 4 r4 | r1 | %m1
      bd4 4 4 4 |
    }
  }
}

global = {
    \time 4/4
    \tempo 4 = 60
    \key c \major
}

\score {
  \pointAndClickOff
  <<
    \new PianoStaff = "piano" \with {
      instrumentName = "Piano"
      shortInstrumentName = "Pf."
    }{
      \new Staff = "up" {}
      \new Staff = "down" {}}
    \new DrumStaff = "drums" {}
    \piano

    \battery
  >>
}

\layout {
  \context {
    \Score
    %proportionalNotationDuration = #(ly:make-moment 1/4)
    %\override Score.ScoreSpacingSpanner.strict-note-spacing = ##t
  }
  \context {
    \Staff
    \numericTimeSignature
  }
}

\paper {
  #(set! paper-alist (cons '("ipad pro" . (cons ( * 220 mm) ( * 305 mm))) paper-alist))
  #(set! paper-alist (cons '("montalvo" . (cons ( * 11  in) ( * 14  in))) paper-alist))
  #(set-paper-size "montalvo")
  
  indent = 1.0\in

  top-margin = 1.0\in
  left-margin = 1.0\in
  right-margin = 1.0\in
  bottom-margin = 1.0\in

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
