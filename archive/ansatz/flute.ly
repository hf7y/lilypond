\version "2.24.3"

\include "composition-functions.ly"
\include "woodwind-functions.ly"
\include "material.ly"
\include "lilymusic.ly"
\include "flute-material.ly"
\include "style.ly"
\include "performance-notes.ly"
\include "book-titling.ily"

#(set-default-paper-size "letter")

\tagGroup #'(clarinet harpsichord flute downStem)

headlessInside = {}

columnWidth = \markup { \combine \null \hspace #30 }
columnWidth = \markup \null

\book {
  \header {
    title = "Ansatz"
    pdftitle = "Ansatz Flute Part"
    instrumentation = "for Alto Flute, Bass Clarinet and Harpsichord"
    instrument = "Alto Flute"
    transposition = "G"
    composer = "Z.V. Pine"
    date = "January 2025"
    tagline = \markup \tiny "v2"
    duration = "c. 3’"
  }
  \bookpart {
    \paper { 
      print-page-number = ##f
      evenHeaderMarkup = \markup \null
      oddHeaderMarkup = \markup \null
      scoreTitleMarkup = \markup \null
      indent = #-30
    }

    % \bookTitle ""
    %% set to #f to turn off piece numbering
    % \useRehearsalNumbers ##t
    \pageBreak
    $flute-notes
  }
  \bookpart {
    \paper {
      bookTitleMarkup = \markup \null
    }
    \score {
      \layout {
        indent = 3\cm
        \context {
          \Score
          \override RehearsalMark.extra-spacing-width = #'(1 . 2)
          \override MetronomeMark.extra-spacing-width = #'(0.5 . 1)
          rehearsalMarkFormatter = #format-mark-padded-box-letters
          \consists "Span_stem_engraver"
          \remove "Footnote_engraver" 
        }
        \context {
          \Staff
          % \numericTimeSignature
          \override TimeSignature.stencil = #format-quote-time-sig-note
        }
      }
      <<
        \new Staff \with { 
          instrumentName = \markup \center-column { \line  { "Alto Flute" }
                                                    \line { "in G" } } 
        } {
          \transpose g, c {
            \keepWithTag #'flute \a-fl
            \keepWithTag #'flute \b-fl
            << \new Voice { << \keepWithTag #'flute \c-fl 
                               { s2....*5 | \dynamicUp s2....*3 \voiceOne } >>
                          }
               \new Voice { \voiceTwo
                            \omit DynamicText
                            \omit Hairpin
                            \omit TextScript
                            \omit TextSpanner
                            \omit Slur
                            \omit Tie
                            << \hideNotes { \keepWithTag #'downStem \c-fl }
                               { s2....*3 | s8....*3 \crossStaff { s8.... } | 
                                 s2.... | s4... \crossStaff s2 |
                                 \crossStaff s2....*14 } >> 
                          }
            >>
          }
        }
        \new PianoStaff \with {
          instrumentName = \markup \center-column { \line { "Harpsichord" }
                                                    \line { \tiny \smallCaps "transposed" } } 
        } <<
          \new Staff \with { } {
            \magnifyStaff #5/7
            \transpose g, c { 
              \keepWithTag #'flute \a-rh
              \keepWithTag #'flute \b-rh
              \stemDown \keepWithTag #'flute \c-rh
            }
          }
          \new Staff \with { 
            \remove Ottava_spanner_engraver 
          }{
            \magnifyStaff #5/7
            \clef bass
            \transpose g, c {
              \keepWithTag #'flute \a-lh
              \keepWithTag #'flute \b-lh
              \override NoteColumn.X-offset = #-0.01
              \greyout { \keepWithTag #'flute \c-lh }
            }
          }
        >>
      >>
    }
  }
}