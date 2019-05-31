\version "2.16.2" 
spannerText =
#(define-music-function (parser location text)(string?)
#{
  \override TextSpanner.bound-details.left.text = 
    #(car (string-split text #\ ))
  \override TextSpanner.bound-details.right.text = 
    #(if (equal? (cdr (string-split text #\ )) '()) "" (car (cdr (string-split text #\ ))))
#})


oldSpannerText = 
#(define-music-function (parser location text)(string?) 
   " 
   Add text to TextSpanner. 

   @var{text} should be entered using dashes to indicate hyphenation. 
   Additional dashes may be used to affect spacing. 
   " 
#{ 
   \once \override TextSpanner #'after-line-breaking = 
     #(lambda (grob) 
       (let* ((stil (ly:grob-property grob 'stencil)) 
              (layout (ly:grob-layout grob)) 
              (staff-space (ly:staff-symbol-staff-space grob)) 
              (line-thickness (ly:output-def-lookup layout 'line-thickness)) 
              ;; have we been split? 
              (orig (ly:grob-original grob)) 
              ;; if yes, get the split pieces (our siblings) 
              (siblings (if (ly:grob? orig) 
                            (ly:spanner-broken-into orig) 
                            '())) 
              ;; get all (broken) stencils 
              (stils 
                (if (null? siblings) 
                  (list stil) 
                  (map 
                    (lambda (x) (ly:grob-property x 'stencil)) 
                    siblings))) 
              ;; get the length of all stencils 
              (stil-x-lengths 
                (map 
                  (lambda (x) (interval-length (ly:stencil-extent x X))) 
                  stils)) 
              ;; split the input-string into parts 
              (text-lst (string-split text #\-)) 
              ;; how many parts did we get 
              (txt-lst-length (length text-lst)) 
              ;; get a divisor to split `text-lst' into parts to be printed 
              ;; before and after the line break. 
              ;; TODO: find better method 
              (partial (if (null? siblings) 
                           1 
                           (floor (/ txt-lst-length (length siblings))))) 
              ;; get the parts 
              ;; adding an empty string at end of first line, 
              ;; an start of second line 
              (head (append (list-head text-lst partial) '(""))) 
              (tail (cons "" (list-tail text-lst partial))) 
              ;; get lists of whiteout-markups 
              (mrkp-whiteout-proc 
                (lambda (x) (markup 
                 	     #:whiteout 
                 	     #:pad-markup line-thickness 
                 	     x))) 
              (lst (map mrkp-whiteout-proc text-lst)) 
              (lst-head (map mrkp-whiteout-proc head)) 
              (lst-tail (map mrkp-whiteout-proc tail)) 
              ;; procedures to get the text-stencils. 
              (mrkp 
                (lambda (x y) 
                #{ 
                   \markup 
                     \override #`(line-width . ,(+ staff-space y)) 
                     \fill-line 
                     $x 
                #})) 
              (text-stil (lambda (x y) (grob-interpret-markup grob 
(mrkp x y))))) 

    (ly:grob-set-property! grob 'stencil 
      (cond ((null? siblings) 

                 (ly:stencil-add 
                   stil 
                   (text-stil lst (car stil-x-lengths)))) 
            ((and (= (length siblings) 2) 
                  (eq? (car siblings) grob)) 
                 (ly:stencil-add 
                   stil 
                   (text-stil lst-head (car stil-x-lengths)))) 
            ((and (= (length siblings) 2) 
                  (eq? (cadr siblings) grob)) 
                 (ly:stencil-add 
                   stil 
                   (text-stil lst-tail 
                              (+ (* 4 staff-space) (cadr stil-x-lengths))))) 
            (else (begin 
                     (ly:warning "More than two linebreaks are not supported.") 
                     stil)))))) 
#}) 
