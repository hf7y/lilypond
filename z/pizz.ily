\version "2.20.0"

pizz-list = #'()

add-pizz-list = #(define-scheme-function
	(cont bool)
	(ly:context? boolean?)
	(set! pizz-list (cons (cons (ly:context-id cont) bool) pizz-list)))

flip-pizz-list = #(define-scheme-function
	(cont)
	(ly:context?)
	(if (not (apply (lambda (a b) (or a b)) 
		            (map (lambda (x) (let ((condition (equal? (car x) (ly:context-id cont))))
	                                      (if condition (set-cdr! x (not (cdr x))))
						                  condition)) pizz-list) (list #f)))
        (add-pizz-list cont #f))
	)

#(define* (pizz? cont #:optional (list pizz-list))
	(let ((name (ly:context-id cont)))
	    (cond ((or (not (list? list)) (null? list)) #f)
	          ((and (equal? name (car (car list))) (cdr (car list))) #t)
	          (else (pizz? cont (cdr list))))))



pizz-scheme = #(define-music-function
	(cont)
	(ly:context?)
	(if (not (pizz? cont))
		(begin (flip-pizz-list cont)
			#{ ^\markup \italic "pizz." #})
		#{ #}))

pizz = \applyContext #(lambda (x) (pizz-scheme x))

ord-scheme = #(define-music-function
	(cont)
	(ly:context?)
	(if (pizz? cont)
		(begin (flip-pizz-list cont)
			#{ ^\markup \italic "ord." #})
		#{ #}))

ord = \applyContext #(lambda (x) (ord-scheme x))

\score {
	<<
		\new Staff = "cl" {
			\applyContext #(lambda (x) (add-pizz-list x #t))
			c1 \pizz
			c1 \pizz
			c1 \ord
			c1 \ord
		}
	>>
}