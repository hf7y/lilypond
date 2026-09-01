\version "2.23.4"

\include "composition-functions.ly"
\include "woodwind-functions.ly"
% \include "material.ly"
\include "clarinet-material.ly"
\include "lilymusic.ly"
\include "style.ly"
\include "performance-notes.ly"
\include "book-titling.ily"

#(set-default-paper-size "letter")

\book {
  \header {
    title = "Ansatz"
    pdftitle = "Ansatz Clarinet Part"
    instrumentation = "for Alto Flute, Bass Clarinet and Harpsichord"
    instrument = "Bass Clarinet"
    transposition = "B-flat"
    composer = "Z.V. Pine"
    duration = "c. 3’"
    date = "January 2025"
    tagline = ""
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
    $clarinet-notes
  } %end bookpart
  % \bookpart {
  %   \paper { 
  %     print-page-number = ##t
  %     bookTitleMarkup = \markup \null
  %     indent = #-30
  %     oddHeaderMarkup = \markup
  %       \fill-line {
  %         ""
  %           \concat { \fromproperty #'header:title 
  %                     "—" 
  %                     \fromproperty #'header:instrument }
  %         \fromproperty #'page:page-number-string
  %       }
  %   }
  %   \markup \combine \null \vspace #50
  %   \markup \fill-line { \null \italic "This page intentionally left blank." \null }
  % }
  \bookpart {
    \paper {
      bookTitleMarkup = \markup \null
      % first-page-number = #2
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
          \override TimeSignature.stencil = #format-quote-time-sig-note
        }
      }

    	<<
        \new Staff \with { 
          % \magnifyStaff #5/7
          instrumentName = \markup \center-column { \line  { "Bass Clarinet" }
                                                    \line { "in B-flat" }
                                                       }
          % \override TextScript.staff-padding = 0
          % \override TextScript.Y-extent = ##f
          \override VerticalAxisGroup.staff-staff-spacing =
            #'((basic-distance . 10)
               (minimum-distance 8)
               (padding . 2)) 
        } {
          \numericTimeSignature
          \clef "treble_8"
          \transpose bes, c 
          {
            \keepWithTag #'clarinet \a-cl 
            \keepWithTag #'clarinet \b-cl
            << \new Voice { 
                 \stemUp
                 \dynamicUp
                 \keepWithTag #'clarinet \c-cl
                  }
               \new Voice { 
                 \omit DynamicText
                 \omit Hairpin
                 \omit TextScript
                 \omit Slur
                 \omit Tie
                 \omit Beam
                 \stemDown
                 \crossStaff
                 \keepWithTag #'downStem \c-cl } >>
          }
        }
        \new PianoStaff \with {
          instrumentName = \markup \center-column { \line { "Harpsichord" }
                                                    \line { \tiny \smallCaps "transposed" } } 
          % \consists "Page_turn_engraver"
        }  {
          \numericTimeSignature
          <<
            \new Staff \with {
              \override VerticalAxisGroup.staff-staff-spacing =
                #'((basic-distance . 6)
                   (minimum-distance 0)
                   (padding . 0.5)) 
            } {
              \magnifyStaff #5/7
              \clef "treble"
              \transpose bes, c {
                \keepWithTag #'clarinet \a-rh
                \keepWithTag #'clarinet \b-rh
                \stemDown
                << \keepWithTag #'clarinet \c-rh
                   { 
                      \override Score.NonMusicalPaperColumn.line-break-system-details = 
                        #'((alignment-distances . (10)))
                      \override NoteHead.color = "lightgray"
                      \override Stem.color = "lightgray"
                      \override Beam.color = "lightgray"
                      \override Accidental.color = "lightgray"
                      \override Tie.color = "lightgray"
                      \override Staff.TimeSignature.color = "lightgray"
                      \override NoteHead.layer = #-1
                      \override Stem.layer = #-1
                      \override Beam.layer = #-1
                      \override Accidental.layer = #-1
                      \override Tie.layer = #-1
                      \override Dots.layer = #-1
                      \override Dots.color = "lightgray"
                      \override Flag.layer = #-1
                      \override Staff.TimeSignature.layer = #-1
                      % s32
                      \stopStaff
                      \override Staff.LedgerLineSpanner.color = "lightgray"
                      \override Staff.Clef.color = "lightgray"
                      \override Staff.LedgerLineSpanner.layer = #-1
                      \override Staff.TimeSignature.layer = #-1
                      \override Staff.Clef.layer = #-1
                      \startStaff
                   }
                   {
                     % s2....*14
                     %  \revert Score.NonMusicalPaperColumn.line-break-system-details
                     % \revert NoteHead.color
                     % \revert Stem.color
                     % \revert Beam.color
                     % \revert Accidental.color
                     % \revert Tie.color
                     % \revert Staff.TimeSignature.color
                     % \revert Staff.Clef.color
                     % s32
                     % \stopStaff
                     % \revert Staff.LedgerLineSpanner.color
                     % \startStaff
                   }
                >>
              }
              \bar "|."
            }
            \new Staff {
              \magnifyStaff #5/7
              \clef "bass"
              \transpose bes, c {
                \keepWithTag #'clarinet \a-lh
                \keepWithTag #'clarinet \b-lh
                % \override Score.NonMusicalPaperColumn.line-break-system-details = 
                %         #'((alignment-distances . (9.5)))
                \stemDown \keepWithTag #'clarinet \c-lh
                \bar "|."
              }
            }
          >>
        }
    	>>
    }
  }
}