\version "2.20.0"
\include "./math.ly"

% %%TESTING%%%
% #(newline)
% #(display "Testing frac->durs ")
% #(define (test-frac->durs pair)
% 	(begin (display (list "testing with" pair ""))
% 		   (display-scheme-music (frac->durs pair))))
% #(map (lambda (x) (test-frac->durs (/ x 4))) '(1 2 3 4 5 6))


% #(newline)
% #(display "Testing mome2dur ")
% #(newline)
% #(define (test-mome2dur n)
% 	(begin (display (list "testing with" n ""))
% 		   (display (ly:duration->string (mome2dur (ly:make-moment n)))))
% 		   (newline))
% #(test-mome2dur 1)
% #(test-mome2dur 3/2)
% #(test-mome2dur 7/4)
% #(test-mome2dur 15/8)
% #(test-mome2dur 1/2)
% #(test-mome2dur 3/4)
% #(test-mome2dur 7/8)
% #(test-mome2dur 15/16)

#(newline)
#(display "Testing mome3dur ")
#(newline)
#(define (test-mome3dur n)
	(begin (display (list "testing with" n ""))
		   (display-scheme-music (mome3dur (ly:make-moment n)))))
#(test-mome3dur 1)
#(test-mome3dur 3/2)
#(test-mome3dur 7/4)
#(test-mome3dur 15/8)
#(test-mome3dur 1/2)
#(test-mome3dur 3/4)
#(test-mome3dur 7/8)
#(test-mome3dur 15/16)

#(test-mome3dur 5/2)
#(test-mome3dur 11/4)
#(test-mome3dur 85/64)

#(test-mome3dur 5/3)

% #(newline)
% #(display "Testing mome4dur ")
% #(newline)
% #(define (test-mome4dur n)
% 	(begin (display (list "testing with" n ""))
% 		   (display-scheme-music (mome4dur (ly:make-moment n)))))
% #(test-mome4dur 1)
% #(test-mome4dur 3/2)
% #(test-mome4dur 7/4)
% #(test-mome4dur 15/8)
% #(test-mome4dur 1/2)
% #(test-mome4dur 3/4)
% #(test-mome4dur 7/8)
% #(test-mome4dur 15/16)

% #(test-mome4dur 5/2)
% #(test-mome4dur 11/4)
% #(test-mome4dur 85/64)