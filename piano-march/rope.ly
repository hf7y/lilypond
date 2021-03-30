\version "2.20.0"
\include "./lib.ly"


%THINKING OF SCRAPING ROPES AND JUST IMPLEMENTING 
%DURATION AAS LIST OF LISTs. DUH! 3/28

%Implementing a rope bsed off wikipedia

#(define (weight rope)
	(car rope))
#(define (children rope)
	(cdr rope))
#(define (left rope)
	(car (children rope)))
#(define (right rope)
	(cdr (children rope)))
#(define (value rope-leaf)
	(if (rope-leaf? rope-leaf)
		(car (children rope-leaf))
		"non-leaf has no value, bro"))

#(define (make-rope-node weight children)
	(cons weight
		  children))

#(define (rope? x)
	(and (list? x)
		 (car x)
		 (pair? (cdr x))
		 (not (null? (car (cdr x))))))
#(define (rope-leaf? rope)
	(null? (right rope)))

#(define (weigh-rope rope)
	(if (rope-leaf? rope)
		(weight rope)
		(sum-weights (weight rope)
					 (weigh-rope (right rope)))))

#(define (sum-weights rope-weight right-weight)
	(if (ly:moment? rope-weight)
		(ly:moment-add rope-weight right-weight)
		(+ rope-weight right-weight)))

#(define (index rope i)
	;rope<? should be redefined
	(cond ((rope-leaf? rope)
		   (left rope))
		  ((weight<=? (weight rope) i)
		   (index (right rope)
		   		  (weight-diff i (weight rope))))
		  (#t (index (left rope) i))))

#(define (concat-ropes rope1 rope2)
	(make-rope-node
		(weigh-rope rope1)
		(cons rope1 rope2)))

%%% SPECIFIC TO LILYPOND DURATIONS

#(define make-dur-leaf
	(lambda (dur)
		(make-rope-node
			(ly:duration-length dur)
			(cons dur '()))))

#(define (weight<=? w x)
	(not (ly:moment<? x w)))

#(define weight-diff ly:moment-sub)

%PRINTING VIA SCORE AND MAKENOTE
#(define rope->list
	(lambda (rope)
		(if (rope-leaf? rope)
			(list (left rope))
			(concat
				(rope->list (left rope))
				(rope->list (right rope))))))

%%%DUrations as nested lists?