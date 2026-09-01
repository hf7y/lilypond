\version "2.23.4"

%%%%%%%%%%%%double check ranges all insts
%check transpositions for winds
%remove double bars
%remove fingering numbers
%change accidental formatting
%harpsichord retrigger?
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%point and click off
%check flute rechisters for dynamics

\include "composition-functions.ly"
\include "woodwind-functions.ly"
\include "material.ly"
\include "lilymusic.ly"

#(set-default-paper-size "letter")

\pointAndClickOff

\header {
  title = "Lemma 3222"
  pdftitle = "Lemma 3222"
  tagline = ""
}

\score {
  \layout {
    indent = 3\cm
  }
	<<
  	\new Staff \with { instrumentName = "Alto Flute" } {
      \numericTimeSignature
      \transpose g, c {
        \a-fl
        \b-fl
        \c-fl
      }
  	}
    \new Staff \with { instrumentName = \markup \center-column { 
                                                  \line  { "Bass Clarinet" }
                                                  \line { "in B-flat" } } } {
      \numericTimeSignature
      \clef "treble_8"
      \transpose bes, c {
        \a-cl
        \b-cl
        \c-cl
      }
    }
    \new PianoStaff \with { instrumentName = "Harpsichord" } {
      \numericTimeSignature
      <<
        \new Staff {
          \clef "treble"
          \a-rh
          \b-rh
          \c-rh
          % \d-rh
          \bar "|."
        }
        \new Staff {
          \clef "bass"
          \a-lh
          \b-lh
          \c-lh
          % \d-lh
        }
      >>
    }
	>>
  % \midi {}
}