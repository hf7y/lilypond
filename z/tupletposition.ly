\version "2.17.21"

#(define ((move-tuplet-number-to-kneed-beam length-fraction) tuplet-number)
; This function will move a tuplet number closer to a kneed beam.
; It ignores the number if a bracket is visible.  The parameter
; 'length-fraction' represents the distance along the beam the
; new Y position should be reckoned from.  (Ordinarily, this will
; be 0.5.)
  (let* ((bracket (ly:grob-object tuplet-number 'bracket))
         (first-note-col (ly:grob-parent tuplet-number X))
         (first-stem (ly:grob-object first-note-col 'stem))
         (beam (ly:grob-object first-stem 'beam))
         ; staff-space is necessary for scaling purposes
         (staff-space (ly:staff-symbol-staff-space tuplet-number)))
    ; Make changes only if (1) there is a beam on the first note of
    ; the grouping; (2) this beam is kneed; (3) no bracket is drawn.
    (if (and (ly:grob? beam)
             (eq? #t (ly:grob-property beam 'knee))
             (interval-empty? (ly:grob-extent bracket bracket Y)))
        (let* ((stems (ly:grob-object beam 'stems))
               (stem-nearest-number (nearest tuplet-number stems))
               (first-stem-dir (ly:grob-property first-stem 'direction))
               (nearest-stem-dir (ly:grob-property stem-nearest-number 'direction))
               (beaming (ly:grob-property stem-nearest-number 'beaming))
               (beaming-near-number
                 (if (car beaming)
                     (car beaming)
                     (cdr beaming)))
               (beam-multiplier
                (if (= nearest-stem-dir UP)
                    (count positive? beaming-near-number)
                    (count negative? beaming-near-number)))
               (beam-X-pos (ly:grob-property beam 'X-positions))
               (beam-dx (- (cdr beam-X-pos) (car beam-X-pos)))
               (beam-Y-pos (ly:grob-property beam 'positions))
               (beam-dy (- (cdr beam-Y-pos) (car beam-Y-pos)))
               (beam-slope (/ beam-dy beam-dx))
               (mid-beam-Y (+ (car beam-Y-pos)
                              (* beam-slope length-fraction beam-dx)))
               ; scale mid-beam-Y to reflect staff space other than 1.0
               (mid-beam-Y (* staff-space mid-beam-Y))
               (bracket-padding (* (ly:grob-property bracket 'padding) staff-space))
               ;; With "2.16.2" use
               (beam-gap (* 0.5 (ly:grob-property beam 'gap)))
               ;; With "2.17.21" use
               ;(beam-gap (* 0.5 (car (ly:grob-property beam 'beam-gap))))
               (beam-width (ly:grob-property beam 'beam-thickness)))

          (+ mid-beam-Y
             (* nearest-stem-dir
                (+ bracket-padding
                   (* 0.5 beam-width)
                   (if (= first-stem-dir nearest-stem-dir)
                       0
                       (* beam-multiplier (+ beam-gap beam-width)))))))
        ; Return the default 'Y-offset if tuplet number is ignored.
        (ly:tuplet-number::calc-y-offset tuplet-number))))

#(define (nearest tuplet-number stems)
; Find the stem closest to the tuplet-number.  The direction of this stem
; and the number of beams attached to it are needed to calculate the Y-offset
  (let* ((stems (ly:grob-array->list stems))
         (refp (ly:grob-system tuplet-number))
         (X-coord (interval-center (ly:grob-extent tuplet-number refp X))))
    (fold
      (lambda (elem prev)
        (if (<= (abs (- X-coord
                        (ly:grob-relative-coordinate elem refp X)))
                (abs (- X-coord
                        (ly:grob-relative-coordinate prev refp X))))
            elem
            prev))
       (car stems)
       stems)))

#(define ((move-tuplet-number-along-kneed-beam length-fraction) tuplet-number)
; This function displaces a tuplet number horizontally along a beam.
; The relative position of the number is given by 'length-fraction'.
  (let* ((bracket (ly:grob-object tuplet-number 'bracket))
         (first-note-col (ly:grob-parent tuplet-number X))
         (first-stem (ly:grob-object first-note-col 'stem))
         (beam (ly:grob-object first-stem 'beam)))
    ; There must be a beam on the first note, the beam must be
    ; kneed, and the tuplet bracket must be visible for an adjustment
    ; to be made
    (if (and (ly:grob? beam)
             (eq? #t (ly:grob-property beam 'knee))
             (interval-empty? (ly:grob-extent bracket bracket Y)))

        (let* ((refp (ly:grob-system tuplet-number))
               (number-X (interval-center (ly:grob-extent tuplet-number refp X)))
               (beam-extent (ly:grob-extent beam refp X))
               (beam-center-X (+ (car beam-extent)
                                 (* length-fraction
                                    (interval-length beam-extent)))))

          (- beam-center-X number-X))
        ; if number will be ignored, return the default value of 'X-offset
        (ly:tuplet-number::calc-x-offset tuplet-number))))

correctTupletNumber =
#(define-music-function (parser location pos) ((number? 0.5))
; Currently, tuplet numbers are positioned based on the position of the
; associated tuplet bracket.  This is the case even when the bracket is
; not drawn.  With kneed beams, this leads to tuplet numbers which seem
; 'stranded' when the bracket is absent.  This function is a workaround
; taking a single argument which represents the X-position of the number
; along the beam, expressed as a value between 0 and 1.
  (let*
    ((pos (max 0 pos))
     (pos (min 1 pos)))
    #{
      \override TupletNumber #'X-offset = #(move-tuplet-number-along-kneed-beam pos)
      \override TupletNumber #'Y-offset = #(move-tuplet-number-to-kneed-beam pos)
    #}))

% same as writing \correctTupletNumber \default
correctTupletNumberDefault = \correctTupletNumber #0.5

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% END FUNCTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EXAMPLE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
top = \change Staff = "1"
bottom = \change Staff = "2"

%\score %{
%{
\new PianoStaff
  \with {
    fontSize = #-3
    \override StaffSymbol #'staff-space = #(magstep -3)
  }
  <<
    \new Staff = "1" {
      s1^"Before:"
      s1^"After:"
    }
    \new Staff = "2" {
      \clef bass
      \relative c {
        \override Beam #'auto-knee-gap = #1

        %% UNCORRECTED
        \set tupletSpannerDuration = #(ly:make-moment 1 4)
        \times 2/3 {
          \bottom c8.[ g'16 \top e'8]
          c'8.[ e,16 \bottom g,8]
          \top e''8.[ \bottom c,,16 \top g''8]
        }
        \times 4/5 {
          \bottom c,,16[ \top g''16. e'32 \bottom g,,16 \top c'']
        }

        %% CORRECTED
        \set tupletSpannerDuration = #(ly:make-moment 1 4)
        % or \correctTupletNumber #0.5
        % or \correctTupletNumberDefault
        \correctTupletNumber \default
        \times 2/3 {
          \bottom c,,,8.[ g'16 \top e'8]
          % shifted left-of-center
          \once \correctTupletNumber #0.3
          c'8.[ e,16 \bottom g,8]
          \top e''8.[ \bottom c,,16 \top g''8]
        }
        \times 4/5 {
          \bottom c,,16[ \top g''16. e'32 \bottom g,,16 \top c'']
        }
      }
      \bar "||"
    }
  >>
%}
