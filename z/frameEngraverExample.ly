%Suono A%
\version "2.19.82"
\include "z/frameEngraver.ily"
\include "z/arrow.ily"
\include "z/note.ily"
\include "z/beams-in-markup.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
  title = "DC Diesel"
  subtitle = "for Ogni Suono"
  composer = "Z.V. Pine"
  tagline = "2018"
}

saxIC = {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \time 1/4
  \new Voice \relative c' { 
    \override Staff.BarLine.hair-thickness = #-1
    \override FrameBracket.no-bracket = ##t
    %\once \override FrameBracket.text = \markup "10''"
    \stemless { \frameStart b16-.^\markup { \seven-beamed}
      c-. d-. dis-. e-. fis-. \frameEnd g-. } s s4 s2. | 
      s1 | \frameExtenderEnd b,,1\harmonic\ff\> |

    \stemless { \frameStart b16-.\!^\markup { \eight-beamed }
      c-. d-. dis-. e-. fis-. g \frameEnd ais-. } s4 |
      s1 | \frameExtenderEnd cis,1\<~ | cis1\ff\harmonic\>~ | 
    \revert Staff.BarLine.hair-thickness
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {<<

  \pointAndClickOff
  \new Staff = "Iup" \with {
  }{
    \saxIC
  }
>>}

\layout {
  %ragged-right = ##t
  indent = 1.2\in

  \context {
    \Global
    \grobdescriptions #all-grob-descriptions
  }
  \context {
    \Score
    %\remove "Bar_number_engraver"
    proportionalNotationDuration = #(ly:make-moment 1 8)
    %\override SpacingSpanner #'uniform-stretching = ##t
    \override StaffGrouper.staffgroup-staff-spacing =
      #`((basic-distance . 19)
         (minimum-distance . 8)
         (padding . 5))
  }
  \context {
    \Staff
    \RemoveEmptyStaves
    %\remove "Time_signature_engraver"
  }
  \context {
    \Voice
    %\override Beam.stencil = ##f
    %\override Stem.stencil = #point-stencil
    \consists \frameEngraver
  }
}
\paper {
  system-system-spacing =
    #'((basic-distance   . 32)
       (minimum-distance . 12)
       (padding		 . 4)
       (stretchability	 . 1)) 

  markup-system-spacing =
    #'((basic-distance   . 30)
       (minimum-distance . 12)
       (padding		 . 4)
       (stretchability	 . 1)) 

  system-separator-markup = \slashSeparator


  #(set-paper-size "letter")
  top-margin = 0.7\in
  left-margin = 0.7\in
  right-margin = 0.7\in
  bottom-margin = 0.7\in
%{
  #(define fonts
    (set-global-fonts
      #:music "lilyboulez"
      #:brace "lilyboulez"
    )\
  )
%}
}
