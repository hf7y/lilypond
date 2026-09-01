\version "2.24.3"

pushNC =
\once \override NoteColumn.X-offset =
  #(lambda (grob)
           (let* ((p-c (ly:grob-parent grob X))
                  (p-c-elts (ly:grob-object p-c 'elements))
                  (stems
                    (if (ly:grob-array? p-c-elts)
                        (filter
                          (lambda (elt)
                                  (grob::has-interface elt 'stem-interface))
                          (ly:grob-array->list p-c-elts))
                        #f))
                  (stems-x-exts
                    (if stems
                        (map
                          (lambda (stem)
                                  (ly:grob-extent
                                    stem
                                    (ly:grob-common-refpoint grob stem X)
                                    X))
                        stems)
                        '()))
                  (sane-ext
                    (filter interval-sane? stems-x-exts))
                  (cars (map car sane-ext)))
           (if (pair? cars)
               (abs (- (apply max cars)  (apply min cars)))
               0)))

\score {
  \layout {
    \context {
      \PianoStaff
      \consists "Span_stem_engraver"
    }
    \context {
      \StaffGroup
      \consists "Span_stem_engraver"
    }
  }
  \new StaffGroup <<
    \new Staff { 
      \clef "treble_8"
      \stemDown
      \crossStaff 
      \transpose c c' {
        s32... \pushNC f,16^\pp
          s32... \pushNC g,16
          s32... \pushNC a,16
          s32... \pushNC b,16
          s32... \pushNC c16^\<
          s32... \pushNC d16
          s32... \pushNC e16
          s32... \pushNC f16^\p |
      }
    }
    \new PianoStaff <<
      \new Staff = up
      {
        \time 31/32
        \set Timing.baseMoment = #(ly:make-moment 1/128)
        \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
        \override Beam.grow-direction = #LEFT
        \featherDurations 1 
        { b'256 c''128 e''64 f''32 \set stemRightBeamCount = 1 \pushNC \crossStaff a''16 }
          { \set stemLeftBeamCount = 1 a'256 b'128 d''64 e''32 \pushNC g''16 } 
          { g'256 a'128 c''64 d''32 \set stemRightBeamCount = 1 \pushNC f''16 }
          { \set stemLeftBeamCount = 1 f'256 g'128 b'64 d''32 \pushNC e''16 } 
          { f'128 g'64 b'32 c''16 d''8 }
          { [f'128 g'64 a'32 b'16 c''8] }
      }
      \new Staff = down
      {
        % \time 31/32
        \clef treble
        \stemUp
        \override Beam.grow-direction = #LEFT
        \transpose c c' {
          \featherDurations 1 
          e256 d128 b,64 a,32 \set stemRightBeamCount = 1 f,16
            \set stemLeftBeamCount = 1 f256 e128 c64 b,32 g,16
            \clef "treble"
            g256 f128 d64 c32 \set stemRightBeamCount = 1 a,16
            \set stemLeftBeamCount = 1 a256 g128 e64 d32 b,16
            b256 a128 f64 d32 \set stemRightBeamCount = 1 c16
            \set stemLeftBeamCount = 1 c'256 b128 g64 e32 d16
            c'256 b128 g64 f32 \set stemRightBeamCount = 1 e16
            \set stemLeftBeamCount = 1 d'256 c'128 a64 g32 \crossStaff f16 |
        }
      }
    >>
  >>
}