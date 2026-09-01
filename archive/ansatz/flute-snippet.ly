\version "2.24.3"

\include "composition-functions.ly"
\include "woodwind-functions.ly"
\include "material.ly"
\include "lilymusic.ly"
\include "flute-material.ly"
\include "style.ly"

#(set-default-paper-size "letter")

\tagGroup #'(clarinet harpsichord flute downStem)

\book {
  \header {
    title = "Lemma 3222"
    instrument = "F Part"
    pdftitle = "Lemma 3222"
    tagline = ""
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
      }
      \context {
        \Staff
        \numericTimeSignature
      }
    }
    \displayMusic { c1 \override NoteHead.transparent = ##t 
                       \override Accidental.transparent = ##t c1 
                       \revert Accidental.transparent
                       \revert NoteHead.transparent c1 }
    % <<
    %   \new Staff \with { 
    %     instrumentName = \markup \center-column { \line  { "Alto Flute" }
    %                                               \line { "in F" } } 
    %   } {
    %     \transpose g, c {
    %       \keepWithTag #'flute \a-fl
    %       \keepWithTag #'flute \b-fl
    %       << \new Voice { << \keepWithTag #'flute \c-fl 
    %                          { s2....*6 | \dynamicUp s2....*2 \voiceOne } >>
    %                     }
    %          \new Voice { \voiceTwo
    %                       \omit DynamicText
    %                       \omit Hairpin
    %                       \omit TextScript
    %                       \omit TextSpanner
    %                       \omit Slur
    %                       \omit Tie
    %                       << \hideNotes { \keepWithTag #'downStem \c-fl }
    %                          { s2....*3 | s8....*3 \crossStaff { s8.... } | 
    %                            s2.... | s4... \crossStaff s2 |
    %                            \crossStaff s2....*14 } >> 
    %                     }
    %       >>
    %     }
    %   }
    %   \new PianoStaff \with {
    %     instrumentName = \markup \center-column { \line { "Harpsichord" }
    %                                               \line { \tiny \smallCaps "transposed" } } 
    %   } <<
    %     \new Staff {
    %       \magnifyStaff #5/7
    %       \transpose g, c { 
    %         \keepWithTag #'flute \a-rh
    %         \keepWithTag #'flute \b-rh
    %         \keepWithTag #'flute \c-rh
    %       }
    %     }
    %     \new Staff \with { 
    %       \remove Ottava_spanner_engraver 
    %     }{
    %       \magnifyStaff #5/7
    %       \clef bass
    %       \transpose g, c {
    %         \keepWithTag #'flute \a-lh
    %         \keepWithTag #'flute \b-lh
    %         \override NoteColumn.X-offset = #-0.01
    %         \greyout { \keepWithTag #'flute \c-lh }
    %       }
    %     }
    %   >>
    % >>
  }

}