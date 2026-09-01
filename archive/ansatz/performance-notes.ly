\version "2.24.3"

flute-notes =
\markup \column {
      \line { \fontsize #7 { "Performance Notes for Alto Flute" } }
      \combine \null \vspace #1.8
      \line { \fontsize #4 { "Technique Notation Descriptions" } }
      % \combine \null \vspace #1
      % \line \bold { \combine " " \null
      %               \combine "Example" \null
      %               \combine "Description" \null }
      \combine \null \vspace #1.5
      \line { \vcenter \line \with-dimensions-from \hspace #20
                    { \null \column { \right-align "Overtone" \right-align "multiphonic:" } }
              \hspace #0
              \vcenter \combine \score {
                         \layout { ragged-right = ##f
                                   ragged-last = ##f
                                    line-width = #25 }
                         \new Staff \with { \remove "Time_signature_engraver" } {
                           \magnifyStaff #5/7
                           \transpose g, c { 
                              \partial 2. f'4_~ <f' f''>2  \bar "'"
                              <g\harmonic d'' g''>1 \bar ""
                           }
                         }
                       }
                       \null
              \hspace #3 \override #'(line-width . 45) 
              \vcenter \wordwrap-string { "All pitches equally loud. Diamond note heads 
                                  indicate fingered pitch is not in chord." }
            }
      \combine \null \vspace #1
      \line { \vcenter \line \with-dimensions-from \hspace #20
                    { \null \right-align "Quartersharp:" }
              \hspace #0
              \vcenter \combine \score {
                         \layout { ragged-right = ##f
                                   ragged-last = ##f
                                    line-width = #25 }
                         \new Staff \with { \remove "Time_signature_engraver" } {
                           \magnifyStaff #5/7
                           \partial 2
                           \transpose g, c { <eih' eih''>4 }
                         }
                       }
                       \null
              \hspace #3 \override #'(line-width . 45) 
              \vcenter \wordwrap-string { "Approximately one quarter-tone lower than a regular 
                                  sharp. " }
            }

      \combine \null \vspace #1
      \line { \vcenter \line \with-dimensions-from \hspace #20
                    { \null \right-align "Flutter tongue:" }
              \hspace #0
              \vcenter \combine \score {
                         \layout { ragged-right = ##f
                                   ragged-last = ##f
                                    line-width = #25 }
                         \new Staff \with { \remove "Time_signature_engraver" } {
                           \magnifyStaff #5/7
                           \transpose g, c { 
                              c''8:64^\markup { \italic "f.t." }
                              s8
                              c''4:32^\markup { }
                              c''2:32^\markup { }
                              \bar ""
                           }
                         }
                       }
                       \null
            }
      \combine \null \vspace #1
      \line { \vcenter \line \with-dimensions-from \hspace #20
                    { \null \right-align "Key click:" }
              \hspace #0
              \vcenter \combine \score {
                         \layout { ragged-right = ##f
                                   ragged-last = ##f
                                    line-width = #25 
                                   \override SpacingSpanner.spacing-increment = #0.2
                                   \override SpacingSpanner.shortest-duration-space = #0.2
                         }
                         \new Staff \with { \remove "Time_signature_engraver" } {
                           \magnifyStaff #5/7
                           \omit Accidental
                           \override NoteHead.style = #'cross
                           \stopStaff
                           \override Beam.grow-direction = #LEFT
                           \featherDurations 1
                           \transpose g, c \transpose d c {
                             { a'8[ g' fis' e' d'] }
                           }
                         }
                       }
                       \null
                 }
      \combine \null \vspace #1
      \line { \vcenter \line \with-dimensions-from \hspace #20
                    { \null \right-align "Air sound:" }
              \hspace #0
              \vcenter \combine \score {
                         \layout { ragged-right = ##f
                                   ragged-last = ##f
                                    line-width = #25 
                                   \override SpacingSpanner.spacing-increment = #0.2
                                   \override SpacingSpanner.shortest-duration-space = #0.2
                         }
                         \new Staff \with { \remove "Time_signature_engraver" } {
                           \magnifyStaff #5/7
                           \omit Accidental
                           \override NoteHead.style = #'cross
                           \override Beam.grow-direction = #LEFT
                           \override TextSpanner.bound-details.left.text =
                             \markup { "add pitched air" }
                             \featherDurations 1
                             \transpose g, c \transpose d c {
                               { a'8[\startTextSpan g' fis' e' d']\stopTextSpan }
                             }
                         }
                       }
                       \null
              \hspace #3
              \override #'(line-width . 55) 
              \vcenter \wordwrap-string { "Only some residual pitch." }
            }
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
      \combine \null \vspace #1
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
                           \magnifyStaff #5/7
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
       \combine \null \vspace #1
       \line { \line \with-dimensions-from \hspace #20
                     { \null \column { \right-align "Cross-staff" \right-align "unison:" } }
              \hspace #0
              \vcenter \combine \score {
                         \layout {
                           \context {
                             \Score
                             \consists "Span_stem_engraver"
                           }
                           \context {
                             \Staff
                             % \numericTimeSignature
                             \remove "Time_signature_engraver"
                             \override TimeSignature.stencil = #format-quote-time-sig-note
                             \override VerticalAxisGroup
                                           .default-staff-staff-spacing =
                                               #'((basic-distance . 0)
                                                 (minimum-distance . 0)
                                                 (padding . 1)
                                                 (stretchability . 10))
                           }
                           \context {
                             \PianoStaff
                             \override VerticalAxisGroup
                                           .staff-staff-spacing =
                                               #'((basic-distance . 0)
                                                 (minimum-distance . 0)
                                                 (padding . 1)
                                                 (stretchability . 10))
                           }
                           ragged-last = ##f
                           ragged-right = ##f
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
                         <<
                           \new Staff {
                             \magnifyStaff #5/7
                             \transpose g, c {
                               << \new Voice { { s16... \stemUp a'8 }
                                             }
                                   \new Voice { \voiceTwo
                                               \crossStaff { s16... a'8 }
                                             }
                               >>
                             }
                           }
                           \new PianoStaff <<
                             \new Staff {
                               \magnifyStaff #1/2
                               \override Beam.grow-direction = #LEFT
                               \omit Accidental
                               \featherDurations 1 
                               \transpose g, g' { 
                                 \inversion c c' { e'128[ d'64 c'32 b16 a8] }
                               }
                             }
                             \new Staff \with { 
                             }{
                               \magnifyStaff #1/2
                               \override Beam.grow-direction = #LEFT
                               \featherDurations 1 
                               \clef bass
                               \transpose g c {
                                 \override NoteColumn.X-offset = #-0.01
                                 \greyout { e'128[ d'64 c'32 b16 a8] }
                               }
                             }
                           >>
                         >>
                       }
                       \null
              \hspace #3
              \override #'(line-width . 55) 
              \wordwrap-string { "Vary timing to ensure indicated unison." }
            }      
      \combine \null \vspace #1
      \line { \line \with-dimensions-from \hspace #20
                    { \null \right-align "Classical rubato" }
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
                           \magnifyStaff #5/7
                            \partial 2 r32 d'32_\markup \italic \magnify #0.8 "poco rubato" { e'16 f'8 g'4 } |
                         }
                         \new Staff {
                           \magnifyStaff #5/7
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
                    { \null \right-align "Romantic rubato" }
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
                           \featherDurations 1 
                           \magnifyStaff #5/7
                           \omit Accidental
                           \transpose b g
                            { b'256[
                              _\markup \italic \magnify #0.8 "molto rubato"
                              c''128 e''64 f''32 a''16] }
    
                         }
                         \new Staff {
                           \magnifyStaff #5/7
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
      % \line { \combine "Common time:" \null
      %         \hspace #3
      %         \combine \score {
      %                    \new Staff \with { \remove "Time_signature_engraver" } {
      %                      \partial 4
      %                      \transpose g, c { c''4:32^\markup { \italic "f.t." } | }
      %                    }
      %                 }
      %                 \null 
      %         \override #'(line-width . 40)
      %         \wordwrap-string {  "Classical period rubato. Pulse remains 
      %                        constant but expressive nuances are
      %                        created by making small changes to the rhythmic 
      %                        values of individual notes." }
      %       }
    }

clarinet-notes =
\markup \column {
      \line { \fontsize #7 { "Performance Notes for Bass Clarinet" } }
      \combine \null \vspace #1.8
      \line { \fontsize #4 { "Technique Notation Descriptions" } }
      % \combine \null \vspace #1
      % \line \bold { \combine " " \null
      %               \combine "Example" \null
      %               \combine "Description" \null }
      \combine \null \vspace #1.5
      \line { \vcenter \line \with-dimensions-from \hspace #20
                    { \null \column { \right-align "Inharmonic" \right-align "multiphonic:" } }
              \hspace #0
              \vcenter \combine \score {
                         \layout { ragged-right = ##f
                                   ragged-last = ##f
                                    line-width = #25 }
                         <<
                           \new Staff \with { \remove "Time_signature_engraver" 
                             \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #12 } {
                             \magnifyStaff #5/7
                             \clef "treble_8"
                             \override Score.GraceSpacing.spacing-increment = #3.0
                             \grace { s1 s1 -#(smallDiagram 1) } \transpose bes, c #(roche 1 1)\bar "'" %^\markup \large \halign #0.1 "#1" 
                             \grace { s1 s1 -#(smallDiagram 2) } \transpose bes, c #(roche 2 1) \bar "" %^\markup \large \halign #0.1 "#2"
                           }
                           \new Staff \with { \remove "Time_signature_engraver" 
                              } {
                             \magnifyStaff #5/7
                             \clef "treble_8"
                             \grace { s1 s1 -#(smallDiagram 3) } \transpose bes, c #(roche 3 1)\bar "'" %^\markup \large \halign #0.1 "#3" 
                             \grace { s1 s1 -#(smallDiagram 5) } \transpose bes, c #(roche 5 1) \bar "" %^\markup \large \halign #0.1 "#5"
                           }
                         >>
                       }
                       \null
              \hspace #3 \override #'(line-width . 45) 
              \vcenter \column { \wordwrap-string { "All pitches equally loud. Fingerings
                                                     indicated once per line." }
                                 \vspace #1
                                 \line {
                                    "From"
                                    \with-url "https://heatherroche.net/2020/02/03/20-easy-bass-clarinet-multiphonics/"
                                    \with-color "blue" "Heather Roche (2020)." } }
            }
      \combine \null \vspace #1
      \line { \vcenter \line \with-dimensions-from \hspace #20
                    { \null \right-align "Quartersharp:" }
              \hspace #0
              \vcenter \combine \score {
                         \layout { ragged-right = ##f
                                   ragged-last = ##f
                                    line-width = #25 }
                         \new Staff \with { \remove "Time_signature_engraver" } {
                           \magnifyStaff #5/7
                           \clef "treble_8"
                           \partial 2
                          <eih d''>2
                         }
                       }
                       \null
              \hspace #3 \override #'(line-width . 45) 
              \vcenter \wordwrap-string { "Approximately one quarter-tone lower than 
                                           a regular sharp. Used to indicate temperment
                                           of some multiphonics." }
            }

      \combine \null \vspace #1
      \line { \vcenter \line \with-dimensions-from \hspace #20
                    { \null \right-align "Flutter tongue:" }
              \hspace #0
              \vcenter \combine \score {
                         \layout { ragged-right = ##f
                                   ragged-last = ##f
                                    line-width = #25 }
                         \new Staff \with { \remove "Time_signature_engraver" } {
                           \magnifyStaff #5/7
                           \transpose g, c { 
                              c''8:64^\markup { \italic "f.t." }
                              s8
                              c''4:32^\markup { }
                              c''2:32^\markup { }
                              \bar ""
                           }
                         }
                       }
                       \null
            }
      \combine \null \vspace #1.8
      \line { \fontsize #4 { "Harpsichordist Directs Tempo & Rhythm" } }
      \combine \null \vspace #1
      \override #'(line-width . 110) 
            \wordwrap-string { "This piece embraces the harpsichordist's historical
                                role as the director of small ensembles." }
            \wordwrap-string { "The
                                harpsichordist should vary rhythm and tempo freely,
                                exploring expressive possibilities." }
            \wordwrap-string { "The flute and
                                clarinet players should follow the harpsichordist's
                                direction and mind the many unison rhythms." }
      \combine \null \vspace #1
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
                           \magnifyStaff #5/7
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
       \combine \null \vspace #1
       \line { \line \with-dimensions-from \hspace #20
                     { \null \column { \right-align "Cross-staff" \right-align "unison:" } }
              \hspace #0
              \vcenter \combine \score {
                         \layout {
                           \context {
                             \Score
                             \consists "Span_stem_engraver"
                           }
                           \context {
                             \Staff
                             % \numericTimeSignature
                             \remove "Time_signature_engraver"
                             \override TimeSignature.stencil = #format-quote-time-sig-note
                             \override VerticalAxisGroup
                                           .default-staff-staff-spacing =
                                               #'((basic-distance . 0)
                                                 (minimum-distance . 0)
                                                 (padding . 1)
                                                 (stretchability . 10))
                           }
                           \context {
                             \PianoStaff
                             \override VerticalAxisGroup
                                           .staff-staff-spacing =
                                               #'((basic-distance . 0)
                                                 (minimum-distance . 0)
                                                 (padding . 1)
                                                 (stretchability . 10))
                           }
                           ragged-last = ##f
                           ragged-right = ##f
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
                         <<
                           \new Staff {
                             \magnifyStaff #5/7
                             \transpose g, c {
                               << \new Voice { { s16... \stemUp a'8 }
                                             }
                                   \new Voice { \voiceTwo
                                               \crossStaff { s16... a'8 }
                                             }
                               >>
                             }
                           }
                           \new PianoStaff <<
                             \new Staff {
                               \magnifyStaff #1/2
                               \override Beam.grow-direction = #LEFT
                               \omit Accidental
                               \featherDurations 1 
                               \transpose g, g' { 
                                 \greyout \inversion c c' { e'64[ d'32 c'16 b8]
                                 \scaleDurations 4/128 a4 }
                               }
                             }
                             \new Staff \with { 
                             }{
                               \magnifyStaff #1/2
                               \override Beam.grow-direction = #LEFT
                               \featherDurations 1 
                               \clef bass
                               \transpose g c {
                                 { e'128[ d'64 c'32 b16 a8] }
                               }
                             }
                           >>
                         >>
                       }
                       \null
              \hspace #3
              \override #'(line-width . 55) 
              \wordwrap-string { "Vary timing to ensure indicated unison." }
            }      
      \combine \null \vspace #1
      \line { \line \with-dimensions-from \hspace #20
                    { \null \right-align "Classical rubato" }
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
                           \magnifyStaff #5/7
                            \partial 2 r32 d'32_\markup \italic \magnify #0.8 "poco rubato" { e'16 f'8 g'4 } |
                         }
                         \new Staff {
                           \magnifyStaff #5/7
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
                    { \null \right-align "Romantic rubato" }
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
                           \featherDurations 1 
                           \magnifyStaff #5/7
                           \omit Accidental
                           \transpose b g
                            { b'256[
                              _\markup \italic \magnify #0.8 "molto rubato"
                              c''128 e''64 f''32 a''16] }
    
                         }
                         \new Staff {
                           \magnifyStaff #5/7
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
    }
  harpsichord-notes =
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