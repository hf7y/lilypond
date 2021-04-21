\version "2.20.0"

\include "./lib.ly"
\include "./chorale.ly"


#(define last-voice-list '())
#(define last-voice
	(lambda* (#:optional msg)
		(if msg
			(set! last-voice-list
				  (cons msg last-voice-list))
			(car last-voice-list))))

#(define max-voices 
	;n is max voices
	(lambda* (melody n #:optional (m 8))
		(let ((chosen-indicies (m-choose-n m n)) 
			  (durs (moment->durations (ly:music-length melody))))
			(letrec ((wrapped-iter
				(lambda (i)
					(cond ((zero? i) '())
						  ((element? (- i 1) chosen-indicies) ;- 1 because zero indexed
						   (cons
						   		melody
						   		(wrapped-iter (- i 1)))
						  (#t
						   (cons
							   (make-melody
							   		(make-skips durs))
							   (wrapped-iter (- i 1)))))))))
				(make-chorale (wrapped-iter m))))))

#(define (m-choose-n m n)
	(if (= 1 n)
		(cons 0 '())
		(let ((current (random m))
			  (nexts (m-choose-n (- m 1) (- n 1))))
			 (cons
			 	current
			 	(map
			 		(lambda (elem)
			 			(if (>= elem current)
			 				(+ 1 elem)
			 				elem))
			 		nexts)))))


% #(define all-instruments (list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% #(define random-inst-list
% 	(letrec ((wrapped-fxn
% 		(lambda (index-list)
% 			(if (null? index-list)
% 				'()
% 				(cons
% 					(list-ref
% 						all-instruments 
% 						(car index-list))
% 					(wrapped-fxn (cdr index-list)))))))
% 		(lambda ()
% 			(wrapped-fxn
% 				(m-choose-n 8 8)))))