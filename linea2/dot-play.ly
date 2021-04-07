\version "2.20.0"
\include "./lib.ly"
\include "./chorale.ly"
\include "./texture.ly"
\include "./textures/identity.ly"

%dot-iter -- returns list of list
%8 elem list (one per inst) x 2 elem for each measure
%two dot rhythms that add up to another dot rhythm
%can shape how the dots unfold with some parameters


%SET THIS UP SO INPUT IS A ONE OR TWO VOICE CHORALE THAT GETS ELABORATED 4/5/20

#(define create-countdown
	(lambda (start)
		(define count start)
		(lambda* (#:optional cmd)
			(cond ((equal? 'max cmd)
				   start)
				  ((equal? 'peek cmd)
				   count)
				  ((number? cmd)
				   (floor (* (/ count start) cmd)))
				  (#t
				   (set! count (max (- count 1) 0))
				   count)))))

% #(define dp-count (create-countdown 50))
#(define dp-pitch
	(lambda ()
		(autotune
			(ly:make-pitch 
				(- (random 3) 1) ;octaves
				(random 7))
			(ly:make-pitch
				0
				(random
					(max 1
						 (round (* (/ (dp-count 'peek)
							 	   (dp-count 'max))
							 	7))))
				(* 1/2 (dp-coherence 1 'peek))))))

#(define coherence-count (create-countdown 1000))
#(define dp-coherence
	(lambda* (n #:optional cmd)
		(if (equal? 'peek cmd)
			(inexact->exact 
				(round (* (expt (sin (/ (coherence-count 'peek) 13)) 14) n)))
			(inexact->exact 
				(round (* (expt (sin (/ (coherence-count) 13)) 14) n))))))

#(define (split-dur dur)
	(list
		(ly:make-duration
			(ly:duration-log dur))
		(ly:make-duration
			(+ (ly:duration-log dur) 1)
			(- (ly:duration-dot-count dur) 1))))

#(define* (split-dur-pair durp #:optional (n 0))
	;n divides first beat
	;car durp has no dots!
	(if (zero? n)
		(list (car durp)
			  (cdr durp))
		(list
			(ly:make-duration
				(+ (ly:duration-log (car durp)) n))
			(ly:make-duration
				(+ (ly:duration-log (car durp)) 1)
				(- n 1))
			(cdr durp))))

#(define (make-dp-melody-bar durs)
	(if (= 3 (length durs))
		(make-melody
			(list
				(make-rest (car durs))
				(make-note 
					(dp-pitch)
					(cadr durs))
				(make-rest (caddr durs))
				(make-music 'BarCheck)))
		(make-melody
			(list
				(make-note
					(dp-pitch)
					(car durs))
				(make-rest (cadr durs))
				(make-music 'BarCheck)))))

#(define (make-dp-chorale-bar dur-pair)
	(dp-count)
	(make-chorale
		;needs list of melodies
		(letrec ((wrapped-fxn
					(lambda (n)
						(if (zero? n)
							'()
							(cons
								(make-dp-melody-bar 
									(split-dur-pair 
										dur-pair
										(dp-coherence 3)))
								(wrapped-fxn (- n 1)))))))
				(wrapped-fxn 8))))

#(define (dp-chorale n)
	(if (zero? n)
		'()
		(chorale-add
			(make-dp-chorale-bar 
				(cons
					(ly:make-duration 1)
					(ly:make-duration 2)))
			(dp-chorale (- n 1)))))

#(define dp-count (create-countdown 14))
#(define my-chorale
		(dp-chorale 50))

#(define range
	;place to define ranges for insts
	(lambda (id)
		(cond ((equal? id "fl")
			   (cons (ly:make-pitch 0 0) (ly:make-pitch 2 0)))
			  ((equal? id "cl")
			   (cons (ly:make-pitch 0 1) (ly:make-pitch 1 6 -1/2)))
			  ((equal? id "bn")
			   (cons (ly:make-pitch -3 6 -1/2) (ly:make-pitch 0 1)))
			  ((equal? id "tbn")
			   (cons (ly:make-pitch -2 2) (ly:make-pitch 0 2)))
			  ((equal? id "vn")
			   (cons (ly:make-pitch -1 4) (ly:make-pitch 1 5)))
			  ((equal? id "va")
			   (cons (ly:make-pitch -1 0) (ly:make-pitch 1 2)))
			  ((equal? id "vc")
			   (cons (ly:make-pitch -2 0) (ly:make-pitch 0 3)))
			  ((equal? id "db")
			   (cons (ly:make-pitch -3 2) (ly:make-pitch -1 4)))
			  (#t
			   (cons (ly:make-pitch -9 0) (ly:make-pitch 9 0))))))

\score {
	<<
		\new GrandStaff <<
			\new Staff = "fl" {
				\clef "treble"
			}
			\new Staff = "cl" {
				\clef "treble"
			}
			\new Staff = "bn" {
				\clef "bass"
			}
			\new Staff = "tbn" {
				\clef "bass"
			}
		>>
		\new GrandStaff <<
			\new Staff = "vn" {
				\clef "treble"
			}
			\new Staff = "va" {
				\clef "alto"
			}
			\new Staff = "vc" {
				\clef "bass"
			}
			\new Staff = "db" {
				\clef "bass_8"
			}
		>>
		{ << #(chorale->texture 
				identity-proc 
				my-chorale
				(list "fl" "cl" "bn" "tbn"
					  "vn" "va" "vc" "db")) >> }
	>>
}


% #(display-scheme-music
% 	(map (lambda (d)
% 		(split-duration d -20))
% 		(dot-stack 7)))

%random-tone gives pitch 0-6

%transpose-iter randomly changes key area
%works with random-tone




%usage
%dot-iter starts by printing lots of dots
%  goes through phases of mixing all 8 voices being staggered and different
%  vs coherent (all the same rhythm)
% meta shift has there being fewer dots overall

%transpose-iter starts by transposing to any random key
%  progresses to bitonal (random 2) arrangement
% perhaps stutters on one key for a little while (suggesting a tonic)

%result is 8 voice chorale to be texturized