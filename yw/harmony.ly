\version "2.20.0"

%Originally in math.ly
%This describes the harmony structure

#(define (make-harmony ps ds)
;this is some data structure that make-chord and make-perc take in
;must encode dynamics
;pitches list (register, note, alter) 
;(changing key effects this! therefore easier to do diatonic than dodecaphonic
;dodecaphonic by way of key changes!)
;duration (pair of lilypond durations)
	(list 'harmony ps ds))

% #(define (make-harmony2 ps ds)
% ;RECONSTRUCTED AS AN ALIST
% ;this is some data structure that make-chord and make-perc take in
% ;must encode dynamics
% ;pitches list (register, note, alter) 
% ;(changing key effects this! therefore easier to do diatonic than dodecaphonic
% ;dodecaphonic by way of key changes!)
% ;duration (pair of lilypond durations)
% 	(list 'harmony
% 		  (cons 'pitches ps)
% 		  (cons 'durations ds)))

% #(define (harmony-get h key)
% 	(cond ((null? h) #f)
% 		  ((equal? (car h) 'harmony)
% 		   (harmony-get (cdr h) key))
% 		  ((equal? (car (car h) key))
% 		   (cdr (car h)))
% 		  (harmony-get (cdr h) key)))

%Sugar for cadr and caddr

#(define (harmony-pitches h)
	(and (harmony? h) (cadr h)))

#(define (harmony-durations h)
	(and (harmony? h) (caddr h)))

#(define (harmony? x)
	;really basic predicate
	(and (equal? (car x) 'harmony)
		 (and (list? (cadr x))
		 	  (pair? (caddr x)))))

%Helper

#(define (elem? x lst)
	(cond ((null? lst) #f)
		  ((equal? x (car lst)) #t)
		  (#t (elem? x (cdr lst)))))


#(define (musics->harmony pm dm)
	;uses list-elems from rows.ly
	(let ((durs (list-elems dm 'duration)))
		(make-harmony
			(list-elems pm 'pitch)
			(cons (car durs) (cadr durs)))))