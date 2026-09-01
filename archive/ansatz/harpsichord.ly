\version "2.24.3"

\include "composition-functions.ly"

pushNC = {}
pushNCs = {}
pullNC = {}

\include "woodwind-functions.ly"
% \include "material.ly"
\include "lilymusic.ly"
\include "clarinet-material.ly"
\include "flute-material.ly"
\include "style.ly"
\include "book-titling.ily"

#(set-default-paper-size '(cons (* 11 in) (* 14 in)))

\tagGroup #'(clarinet harpsichord flute downStem)

\book {
  \header {
    title = "Ansatz"
    pdftitle = "Ansatz Clarinet Part"
    instrumentation = "for Alto Flute, Bass Clarinet and Harpsichord"
    instrument = "Harpsichord"
    % transposition = "B-flat"
    composer = "Z.V. Pine"
    date = "January 2025"
    duration = "c. 3’"
    tagline = ""
  }
  \paper {
    %  markup-system-spacing = #'((basic-distance . 14)
    %                            (padding . 1)
    %                            (stretchability . 30))
    % top-markup-spacing = #'((basic-distance . 6)
    %                         (minimum-distance . 1)
    %                         (padding . 1))
    % top-system-spacing = #'((basic-distance . 10)
    %                         (minimum-distance . 1)
    %                         (padding . 2))
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
    \markup \column {
      \line { \fontsize #7 { "Performance Notes for Harpsichord" } }
      \combine \null \vspace #1.8
      \line { \fontsize #4 { "Harpsichordist Directs Tempo & Rhythm" } }
      \combine \null \vspace #0.5
      \override #'(line-width . 110) 
            \wordwrap-string { "This piece embraces the harpsichordist's historical
                                role as the director of small ensembles." }
            \wordwrap-string { "The
                                harpsichordist should vary rhythm and tempo freely,
                                exploring expressive possibilities." }
            \wordwrap-string { "The flute and
                                clarinet players should follow the harpsichordist's
                                direction and mind the many unison rhythms." }
      \combine \null \vspace #1.5
      \line { \line \with-dimensions-from \hspace #20
                     { \null \column { \right-align "Exponential" \right-align "rhythm:" } }
              \hspace #0
              \vcenter \combine \score {
                         \layout { ragged-right = ##f
                                   ragged-last = ##f
                                   line-width = #25 
                                   \override SpacingSpanner.spacing-increment = #0.2
                                   \override SpacingSpanner.shortest-duration-space = #0.2
                         }
                         \new Staff \with { \remove "Time_signature_engraver" } {
                           % \magnifyStaff #5/7
                           \omit Accidental
                           \override Beam.grow-direction = #LEFT
                             \featherDurations 1
                             \transpose g, c \transpose d c {
                               { e'128[ d'64 c'32 b16 a8] }
                             }
                         }
                       }
                       \null
              \hspace #3
              \override #'(line-width . 55) 
              \wordwrap-string { "Approximately as written but flexible." }
            }
       % \combine \null \vspace #1
       % \line { \line \with-dimensions-from \hspace #20
       %               { \null \column { \right-align "Cross-staff" \right-align "unison:" } }
       %        \hspace #0
       %        \vcenter \combine \score {
       %                   \layout {
       %                     \context {
       %                       \Score
       %                       \consists "Span_stem_engraver"
       %                     }
       %                     \context {
       %                       \Staff
       %                       % \numericTimeSignature
       %                       \remove "Time_signature_engraver"
       %                       \override TimeSignature.stencil = #format-quote-time-sig-note
       %                       \override VerticalAxisGroup
       %                                     .default-staff-staff-spacing =
       %                                         #'((basic-distance . 0)
       %                                           (minimum-distance . 0)
       %                                           (padding . 1)
       %                                           (stretchability . 10))
       %                     }
       %                     \context {
       %                       \PianoStaff
       %                       \override VerticalAxisGroup
       %                                     .staff-staff-spacing =
       %                                         #'((basic-distance . 0)
       %                                           (minimum-distance . 0)
       %                                           (padding . 1)
       %                                           (stretchability . 10))
       %                     }
       %                     ragged-last = ##f
       %                     ragged-right = ##f
       %                     line-width = #25 
       %                     \context {
       %                       \PianoStaff
       %                       \override VerticalAxisGroup
       %                                     .staff-staff-spacing =
       %                                         #'((basic-distance . 0)
       %                                           (minimum-distance . 0)
       %                                           (padding . 1)
       %                                           (stretchability . 10))
       %                     }

       %                   }
       %                   <<
       %                     \new Staff {
       %                       % \magnifyStaff #5/7
       %                       \transpose g, c {
       %                         << \new Voice { { s16... \stemUp a'8 }
       %                                       }
       %                             \new Voice { \voiceTwo
       %                                         \crossStaff { s16... a'8 }
       %                                       }
       %                         >>
       %                       }
       %                     }
       %                     \new PianoStaff <<
       %                       \new Staff {
       %                         % \magnifyStaff #1/2
       %                         \override Beam.grow-direction = #LEFT
       %                         \omit Accidental
       %                         \featherDurations 1 
       %                         \transpose g, g' { 
       %                           \greyout \inversion c c' { e'64[ d'32 c'16 b8]
       %                           \scaleDurations 4/128 a4 }
       %                         }
       %                       }
       %                       \new Staff \with { 
       %                       }{
       %                         % \magnifyStaff #1/2
       %                         \override Beam.grow-direction = #LEFT
       %                         \featherDurations 1 
       %                         \clef bass
       %                         \transpose g c {
       %                           { e'128[ d'64 c'32 b16 a8] }
       %                         }
       %                       }
       %                     >>
       %                   >>
       %                 }
       %                 \null
       %        \hspace #3
       %        \override #'(line-width . 55) 
       %        \wordwrap-string { "Vary timing to ensure indicated unison." }
       %      }      
      \combine \null \vspace #1
      \line { \line \with-dimensions-from \hspace #20
                    { \null \right-align "Classical rubato:" }
              \hspace #0
              \vcenter \combine \score {
                         \layout { ragged-right = ##f
                                   ragged-last = ##f
                                   line-width = #25 
                                  \context {
                                    \PianoStaff
                                    \override VerticalAxisGroup
                                                  .staff-staff-spacing =
                                                      #'((basic-distance . 0)
                                                        (minimum-distance . 0)
                                                        (padding . 1)
                                                        (stretchability . 10))
                                  }
                         }
                         \new PianoStaff <<
                         \new Staff {
                           % \magnifyStaff #5/7
                            \partial 2 r32 d'32_\markup \italic \magnify #1 "poco rubato" { e'16 f'8 g'4 } |
                         }
                         \new Staff {
                           % \magnifyStaff #5/7
                           \clef "bass"
                           r2
                         }
                        >>
                      }
                       \null
              \hspace #3 \override #'(line-width . 45) 
              \vcenter\wordwrap-string { "Harpsichordist improvises small changes to the rhythmic 
                                 values of individual notes. Pulse remains 
                                 constant." }
            }
      \combine \null \vspace #1
      \line { \line \with-dimensions-from \hspace #20
                    { \null \right-align "Romantic rubato:" }
              \hspace #0
              \vcenter \combine \score {
                         \layout { ragged-right = ##f
                                   ragged-last = ##f
                                   line-width = #25 
                                   \context {
                                     \Staff
                                     \override TimeSignature.stencil = 
                                      #format-quote-time-sig-note
                                   }
                         }
                         \new PianoStaff <<
                         \new Staff {
                           \time 31/32
                           \override Beam.grow-direction = #LEFT
                           % \magnifyStaff #5/7
                           \omit Accidental
                           \featherDurations 1 
                           \transpose b g
                            { b'256[
                              _\markup \italic \magnify #1 "molto rubato"
                              c''128 e''64 f''32 a''16] }
    
                         }
                         \new Staff {
                           % \magnifyStaff #5/7
                           \clef "bass"
                           \omit Accidental
                           \override Beam.grow-direction = #LEFT
                           \stemDown
                           \featherDurations 1 
                           \transpose e g { e256[ d128 b,64 a,32 f,16] }
                         }
                        >>
                      }
                       \null
              \hspace #3 \override #'(line-width . 45) 
              \wordwrap-string { "Pulse at the liberty of the harpsichordist. Note time signature." }
            }
      \combine \null \vspace #1
      \line { \line \with-dimensions-from \hspace #20
                    { \null \column { \right-align "Suggested" \right-align "improvisation:" } }
              \hspace #0
              \vcenter \combine \score {
                         \layout { ragged-right = ##f
                                   ragged-last = ##f
                                   line-width = #25 
                                   \context {
                                     \Staff
                                     \override TimeSignature.stencil = 
                                      #format-quote-time-sig-note
                                   }
                         }
                         \new PianoStaff <<
                         \new Staff \with { \remove "Time_signature_engraver" } {
                           \override Beam.grow-direction = #LEFT
                           % \magnifyStaff #5/7
                           \omit Accidental
                           \featherDurations 1 
                           { c'''8 r64 
                           \headlessInside { f'64[ g'32 a'16 b'8 d''8] } }
                         }
                         \new Staff \with { \remove "Time_signature_engraver" } {
                           % \magnifyStaff #5/7
                           \clef "bass"
                           \omit Accidental
                           \override Beam.grow-direction = #LEFT
                           \stemDown
                           \featherDurations 1 
                           \transpose c c {
                              r64 \headlessInside { b64 a32 g16 f8 d8 } } s8
                         }
                        >>
                      }
                       \null
              \hspace #3 \override #'(line-width . 45) 
              \vcenter \wordwrap-string { "Grey note heads indicate and nearby pitches
                                  are acceptable.
                                  Prioritize expressivity over accuracy." }
            }
            \combine \null \vspace #1
            \line { \line \with-dimensions-from \hspace #20
                    { \null \column { \right-align "Dividing" \right-align "hands:" } }
              \hspace #0
              \vcenter \combine \score {
                         \layout { ragged-right = ##f
                                   ragged-last = ##f
                                   line-width = #25 
                                   \context {
                                     \Staff
                                     \override TimeSignature.stencil = 
                                      #format-quote-time-sig-note
                                   }
                         }
                         \new PianoStaff <<
                         \new Staff \with { \remove "Time_signature_engraver" } {
                           \override Beam.grow-direction = #LEFT
                           % \magnifyStaff #5/7
                           \omit Accidental
                           \featherDurations 1 
                             { f'128[ g'64
                                b'32 c''16 d''8] } 
                         }
                         \new Staff \with { \remove "Time_signature_engraver" } {
                           % \magnifyStaff #5/7
                           \clef "bass"
                           \omit Accidental
                           \override Beam.grow-direction = #LEFT
                           \stemDown
                           \featherDurations 1 
                           \transpose c c {
                              { b256[ \startDivide a128 f64 
                                  d32 \set stemRightBeamCount = 1 c16 }
                              { \set stemLeftBeamCount = 1 c'256 b128 g64 
                                  e32 \stopDivide d16] }
                            }
                         }
                        >>
                      }
                       \null
              \hspace #3 \override #'(line-width . 45) 
              \vcenter \wordwrap-string { "Notes should not fall together after 
                                          downbeat. Timing otherwise flexible." }
            }
            \combine \null \vspace #2
            \line { \fontsize #4 { "Flute & Clarinet Players Lead Dynamics" } }
            \combine \null \vspace #1
            \override #'(line-width . 90) 
            \wordwrap-string { "Harpsichord registration can be engaged any
                                time at the player's discretion." } 
            \wordwrap-string { "Selection
                                should reflect the 
                                dynamics presented on the flute and clarinet staves." }
    }
  } %end bookpart
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
          % \remove Metronome_mark_engraver
          % \remove Mark_engraver
          \remove Text_mark_engraver
          \override RehearsalMark.extra-spacing-width = #'(1 . 2)
          rehearsalMarkFormatter = #format-mark-padded-box-letters
        }
        \context {
          \Staff
          \override TimeSignature.stencil = #format-quote-time-sig-note
        }
        \context {
          \PianoStaff
          \consists Metronome_mark_engraver
          \consists Mark_engraver
          % \consists "Span_stem_engraver"
          \consists Text_mark_engraver
          \override RehearsalMark.extra-spacing-width = #'(1 . 2)
          rehearsalMarkFormatter = #format-mark-padded-box-letters
        }
      }

    	<<
      	\new Staff \with { 
          \magnifyStaff #11/14
          instrumentName = \markup \center-column { \line { "Alto Flute" }
                                                    \line { \tiny \smallCaps "concert pitch" } }
          \override VerticalAxisGroup.staff-staff-spacing =
            #'((basic-distance . 8)
               (minimum-distance .0)
               (padding . 0.5)) 
        } {
          \accidentalStyle modern
          \numericTimeSignature
          % \transpose g, c 
          {
            \keepWithTag #'harpsichord \a-fl
            \keepWithTag #'harpsichord \b-fl
            \keepWithTag #'harpsichord \c-fl
          }
      	}
        \new Staff \with { 
          \magnifyStaff #11/14
          instrumentName = \markup \center-column { \line { "Bass Clarinet" }
                                                    \line { \tiny \smallCaps "concert pitch" } }
          \override VerticalAxisGroup.staff-staff-spacing =
            #'((basic-distance . 12)
               (minimum-distance .10)
               (padding . 2.5)) 
        } {
          % \accidentalStyle modern
          \keepWithTag #'harpsichord
          \numericTimeSignature
          \clef "bass"
          % \transpose bes, c 
          {
            \keepWithTag #'harpsichord \a-cl
            \keepWithTag #'harpsichord \b-cl
            \keepWithTag #'harpsichord \c-cl
          }
        }
        \new PianoStaff \with { instrumentName = "Harpsichord" 
        } {
          \numericTimeSignature
          <<
            \new Staff {
              % \accidentalStyle modern 
              \clef "treble"
              \featherDurations 1
              \keepWithTag #'harpsichord \a-rh
              \keepWithTag #'harpsichord \b-rh
              \newSpacingSection
              \keepWithTag #'harpsichord \c-rh
              % \d-rh
              \bar "|."
            }
            \new Staff {
              % \accidentalStyle modern 
              \clef "bass"
              \featherDurations 1
              \keepWithTag #'harpsichord \a-lh
              \keepWithTag #'harpsichord \b-lh
              \keepWithTag #'harpsichord \c-lh
              % \d-lh
            }
          >>
        }
    	>>
      % \midi {}
    }
  }
}