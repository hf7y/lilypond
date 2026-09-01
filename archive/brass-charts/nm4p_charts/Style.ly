\version "2.24.1"

\pointAndClickOff

% This is the styling for rehearsal marks in boxes



% #(define (format-mark-padded-box-letters mark context)
%  (make-bold-markup
%    #{ \markup % \with-color #highlightColor
%      #(make-box-markup
%        (make-pad-markup-markup 0.5
%          (markup #:with-color black
%           (make-markletter-markup
%            mark)))) #} ))

#(define-markup-command (padded-box layout props text) (markup?)
  #:properties ((box-padding 0.5))
  "Draw a padded box around text."
  (interpret-markup layout props
    #{\markup \override #`(box-padding . ,box-padding) \box
               { \bold #text } #}))

% This MarkLine context is used to create a line at the top of the score 
% containing instructions that should only be printed once. This workaround
% is necessary mostly because \textMark events would otherwise be printed
% on each staff

\header {
  tagline = ""
}


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
    \consists Chord_name_engraver
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

    \numericTimeSignature
    % rehearsalMarkFormatter = #format-mark-padded-box-letters
  }
}