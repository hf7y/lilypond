\version "2.20.0"

%Modelled after https://en.wikipedia.org/wiki/Necklace_(combinatorics)

#(define* (transpose-for-normal n #:optional (shift 0))
	;uses string of bits to represent pitches present as in necklass
	;for 7 diatonic pitch classes
	;returns the amount to transpose by to get normal order

	;search from right for zeros
	;return (cons index-of-first-zero length-of-zeros)
	;shift keeps track of gap

	;7 is magic number for length of necklass, could be 12 for 12tone

	(define* (rightmost-zero n)
		(if (even? n)
			0
			(+ 1 (rightmost-zero (ash n -1)))))

	(define* (num-zeros i n)
		;to the left of bit #i of number n, inclusive of i
		(if (logbit? i n)
			0
			(+ 1 (num-zeros (+ i 1) n))))

	(let* ((right0 (rightmost-zero n))
		   (num0 (num-zeros right0 n)))
		(if (= (integer-length n) right0)             ;no 0 gaps in number
			(cons (+ (integer-length n) shift)        ;leftmost bit +1
				  (- 7 (+ (integer-length n) shift))) ;size of wraping around
			(let* ((next-shift (+ num0 right0))
				   (recursive-call (transpose-for-normal 
									  	(ash n (- next-shift))
									  	next-shift)))
				  (if (> num0 (cdr recursive-call)) ;bigger gap?
				  	  (cons (+ right0 shift) num0)
				  	  recursive-call)))))

#(define (int->pitch-list n)
	(define length (integer-length n))
	(cond ((zero? n) '())
		  ((> length 7) (int->pitch-list (ash n -1)))
		  (#t (cons 
		  		(ly:make-pitch 0 
  							   (- length 1)) ;so 1 corresponds to C
				(int->pitch-list
					(- n (expt 2 (- length 1))))))))

#(define (int->pitch-list-normed num)
	;converts a number into a set of pitches up to 6, thus diatonic
	(let* ((proto-pitch-list (int->pitch-list num))
		   (normalize-tranposition (transpose-for-normal num)))
		  (if (zero? (cdr normalize-tranposition))
			  proto-pitch-list
			  (map (lambda (p)
						   (ly:pitch-transpose
								p
								(ly:pitch-negate 
									(ly:make-pitch 
										0 
										(+ (car normalize-tranposition)
										   (cdr normalize-tranposition))))))
				   proto-pitch-list))))

#(define (random-pitch-list)
	(int->pitch-list (random (integer-expt 2 7))))