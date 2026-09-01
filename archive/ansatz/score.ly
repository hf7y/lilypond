\version "2.23.4"

\include "composition-functions.ly"
\include "woodwind-functions.ly"
% \include "material.ly"
\include "lilymusic.ly"
\include "clarinet-material.ly"
\include "flute-material.ly"
\include "style.ly"
\include "performance-notes.ly"
\include "book-titling.ily"


#(set-default-paper-size '(cons (* 11 in) (* 14 in)))

\book {
  \header {
    title = "Ansatz"
    pdftitle = "Ansatz Clarinet Part"
    instrumentation = "for Alto Flute, Bass Clarinet and Harpsichord"
    % instrument = "Transposing Score"
    % transposition = "B-flat"
    composer = "Z.V. Pine"
    date = "January 2025"
    duration = "c. 3’"
    tagline = \markup \tiny "v2"
  }
  \paper {
    page-breaking = #ly:optimal-breaking
    markup-system-spacing = #'((basic-distance . 14)
                               (padding . 1)
                               (stretchability . 30))
    top-markup-spacing = #'((basic-distance . 6)
                            (minimum-distance . 1)
                            (padding . 1))
    top-system-spacing = #'((basic-distance . 10)
                            (minimum-distance . 1)
                            (padding . 2))
    % top-margin = 10 \mm     % scaled to paper-size
    % left-margin = 15\mm  % scaled to paper-size
    % right-margin = 15\mm     % scaled to paper-size
    % bottom-margin = 10\mm  % scaled to paper-size
  }
  \bookpart { 
    \paper { 
      print-page-number = ##f
      evenHeaderMarkup = \markup \null
      oddHeaderMarkup = \markup \null
      scoreTitleMarkup = \markup \null
      indent = #-30
    }
    \pageBreak
    $flute-notes
    \pageBreak
    $clarinet-notes
    \pageBreak
    $harpsichord-notes }
  \bookpart {
    \paper {
      bookTitleMarkup = \markup \null
      evenHeaderMarkup = \markup
        \fill-line {
          \if \should-print-page-number \fromproperty #'page:page-number-string
          \unless \on-first-page-of-part 
            \concat { \fromproperty #'header:title  }
          ""
        }
      oddHeaderMarkup = \markup
        \fill-line {
          ""
          \unless \on-first-page-of-part
            \concat { \fromproperty #'header:title  }
          \if \should-print-page-number \fromproperty #'page:page-number-string
        }
      scoreTitleMarkup = \markup {
        \override #'(baseline-skip . 3.5)
        \column {
          \override #'(baseline-skip . 3.5)
            \fill-line {
              \line { "Transposing Score" }
              { \huge \larger \larger \bold
              \fromproperty #'header:title }
              \null
            }
            \fill-line {
              \fromproperty #'header:poet
              \fromproperty #'header:composer
            }
            \fill-line {
              \fromproperty #'header:meter
              \fromproperty #'header:arranger
            }
          }
        }
      % first-page-number = #2
    }
    \score {
      \layout {
        indent = 3\cm
        \context {
          \Score
          % \remove Metronome_mark_engraver
          % \remove Mark_engraver
          \remove Text_mark_engraver
          \override RehearsalMark.extra-spacing-width = #'(1 . 2)
          rehearsalMarkFormatter = #format-mark-padded-box-letters
        }
        \context {
          \Staff
          % \override TimeSignature.stencil = #format-quote-time-sig-note
          \numericTimeSignature
        }
        \context {
          \PianoStaff
          % \consists "Span_stem_engraver"
          \consists Text_mark_engraver
          \override RehearsalMark.extra-spacing-width = #'(1 . 2)
          rehearsalMarkFormatter = #format-mark-padded-box-letters
        }
      }

    	<<
      	\new Staff \with { 
          % \magnifyStaff #6/7
          instrumentName = \markup \center-column { \line { "Alto Flute" } 
                                                    \line { "in G" } }
        } {
          % \accidentalStyle modern
          \numericTimeSignature
          \transpose g, c 
          {
            \removeWithTag #'(tmi downStem) \a-fl
            \removeWithTag #'(tmi downStem) \b-fl
            \removeWithTag #'(tmi downStem) \c-fl
          }
      	}
        \new Staff \with { 
          % \magnifyStaff #6/7
          instrumentName = \markup \center-column { \line { "Bass Clarinet" }
                                                    \line { "in B-flat" } } 
        } {
          % \accidentalStyle modern
          \numericTimeSignature
          \clef "treble_8"
          \transpose bes, c 
          {
            \removeWithTag #'(tmi downStem) \a-cl
            \removeWithTag #'(tmi downStem) \b-cl
            \removeWithTag #'(tmi downStem) #(skip->rest c-cl)
          }
        }
        \new PianoStaff \with { instrumentName = "Harpsichord" 
        } {
          \numericTimeSignature
          <<
            \new Staff = "up" {
              % \accidentalStyle modern 
              \clef "treble"
              \removeWithTag #'(tmi downStem) \a-rh
              \removeWithTag #'(tmi downStem) \b-rh
              \removeWithTag #'(tmi downStem) \c-rh
              % \d-rh
              \bar "|."
            }
            \new Staff = "down" {
              % \accidentalStyle modern 
              \clef "bass"
              \removeWithTag #'(tmi downStem) \a-lh
              \removeWithTag #'(tmi downStem) \b-lh
              \removeWithTag #'(tmi downStem) \c-lh
              % \d-lh
            }
          >>
        }
    	>>
      % \midi {}
    }
  }
}