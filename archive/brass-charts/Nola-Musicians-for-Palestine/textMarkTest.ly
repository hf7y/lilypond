\score {
  <<
  	\new MarkLine { \mark \default c''1 \textMark "molto" c'' }
    \new Staff { \mark \default c''1 \textMark "molto" c'' }
    \new Staff { \mark \default c'1 \textMark "molto" c' }
  >>
\layout {
    \context {
      \name "MarkLine"
      \type "Engraver_group"
      \consists Output_property_engraver
      \consists Axis_group_engraver
      \consists Mark_engraver
      \consists Text_mark_engraver
      \consists Metronome_mark_engraver
      \consists Staff_collecting_engraver
      \override RehearsalMark.extra-spacing-width = #'(0 . 1)
      \override MetronomeMark.extra-spacing-width = #'(0.5 . 0)
      \override VerticalAxisGroup.minimum-Y-extent = #'(-2 . 2)
      \override VerticalAxisGroup.staff-staff-spacing =
      #'((basic-distance . 1)
         (minimum-distance . 1)
         (padding . 1)
         (stretchability . 3))
    }
    \context {
      \Score
      \remove Mark_engraver
      \remove Text_mark_engraver
      \remove Metronome_mark_engraver
      \remove Staff_collecting_engraver
      \accepts MarkLine
    }
  }
}
