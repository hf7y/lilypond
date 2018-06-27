\version "2.18.0"

printTupletBow = {
  %% Use slur-stencil
  \override TupletBracket #'stencil = #ly:slur::print
  
  %% Use 'thickness from Slur
  \override TupletBracket #'thickness = #1.2
  
  %% Set 'layer to ensure without for TuoletNumber
  \override TupletBracket #'layer = #1
  \override TupletNumber #'layer = #2
  
  %% 'control-points need to be set
  \override TupletBracket #'control-points =
    #(lambda (grob)
      (let* ((x-pos (ly:grob-property grob 'X-positions))
             (pos (ly:grob-property grob 'positions))
             (x-ln (interval-length x-pos))
             (dir (ly:grob-property grob 'direction))
             ;; read out the height of the TupletBracket, maybe negativ!
             (height (- (cdr pos) (car pos)))
             ;; height-corr is introduced because sometimes the shape of the
             ;; slur needs to be adjusted.
             ;; It is used in 2nd/3rd controllpoint.
             ;; The value of 0.3 is found by try and error
             (height-corr (* 0.3 dir height))
             (edge-height (ly:grob-property grob 'edge-height '(0.7 . 0.7))))
            
        (list 
          ;; first cp
          (cons 
            (car x-pos) 
            (+ (car pos) (* -1 dir (car edge-height))))
          ;; second cp
          (cons 
            (+ (car x-pos) (* x-ln 1/4)) 
            (+ (car pos) (* dir (+ 0.5 height-corr))))
          ;; third cp
          (cons 
            (+ (car x-pos) (* x-ln 3/4)) 
            (+ (cdr pos) (* dir (- 0.5 height-corr))))
          ;; fourth cp
          (cons 
            (cdr x-pos) 
            (+ (cdr pos) (* -1 dir (cdr edge-height)))))))
           
  %% Give TupletNumber nicer padding
  \override TupletNumber #'stencil = 
    #(lambda (grob)
       (let* ((stil (ly:tuplet-number::print grob))
              (x-ext (ly:stencil-extent stil X))
              ;; little more padding at left of the number
              (new-x-ext (cons (- (car x-ext) 0.1) (cdr x-ext)))
              (y-ext (ly:stencil-extent stil Y))
              ;; give TupletNumber a little more padding around
              (new-stil (ly:make-stencil 
                          (ly:stencil-expr stil) 
                          (interval-widen new-x-ext 0.1)
                          (interval-widen y-ext 0.1))))
       
       (stencil-whiteout new-stil)))

    %% Adjust TupletNumber in Y-direction
    \override TupletNumber #'Y-offset = 
      #(lambda (grob) 
         (let* ((dir (ly:grob-property grob 'direction))
                (y-off (ly:tuplet-number::calc-y-offset grob)))
         ;; The value of 0.2 is found by try and error       
         (+ (* dir 0.2) y-off)))
}

\layout {
  \printTupletBow
}
	

\relative c'' {
  \voiceOne
  
  \times 2/3 { a4 b c }
  \times 2/3 { a4 b c' }
  \times 2/3 { a,4 b c, }
  \times 2/3 { a'4 b, c }
  
  \voiceTwo
  
  \times 2/3 { a'4 b c }
  \times 2/3 { a4 b c' }
  \times 2/3 { a,4 b c, }
  \times 2/3 { a'4 b, c }
}
