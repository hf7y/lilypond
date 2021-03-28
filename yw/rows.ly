\version "2.20.0"

%rows are functions which two lists representing one big list and a current index
%when procedure left is passed to rows, it returns the top element in the left list,
%  removes that element from the left list, and adds it to the right list
%if the left list is empty the row cycles
%this is symmetrical for right procedure and other possible procedures 
%  that can be written for rows

#(define* (row lefts #:optional (rights '()))
	(define pair (cons lefts rights))
	(lambda (proc)
		(let ((proc-result (proc pair)))
			(set! pair (cdr proc-result))
			(car proc-result))))

#(define (left pair)
	;pair refers to the two part list inside row
	(let ((lefts (car pair))
		  (rights (cdr pair)))
		(if (null? lefts) 
			(left (cons (reverse rights) '()))
			(cons (car lefts)
				  (cons (cdr lefts)
				  		(cons (car lefts)
				  			  rights))))))
#(define (right pair)
	(let ((lefts (car pair))
		  (rights (cdr pair)))
		(if (null? rights) 
			(right (cons '() (reverse lefts)))
			(cons (car rights)
				(cons (cons (car rights) 
								 lefts)
				  	  (cdr rights))))))


%Handy helpers for constructing rows

#(define* (list-elems music #:optional property)
	(if property 
		(map (lambda (x)
				(ly:music-property x property))
			(ly:music-property music 'elements)) 
		(ly:music-property music 'elements)))