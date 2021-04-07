\version "2.20.0"

%For Ensemble Linea

%Outline
% chorale --- list of list of notes where each sub list has equal total duration
% melody  --- list of one list
% possibly split lists at barchecks

% chorale->(texture proc chorale #:optional ids)
%	--- applys function to chorale based on id and writes it to Staff = "id"
% 		one such function could be a simple chorale expresser

\include "./lib.ly"
\include "./chorale.ly" %includes fxns for melody and barcheck
\include "./texture.ly"
\include "./textures/buzz.ly"
\include "./textures/identity.ly"


% BONUS
% shaped-function init
%	--- returns function that goes to chorale->texture
%	--- uses some scoped/closed variables to modify the function a little every time it's called

#(define (super-chroma oct step max)
	;gives all chromatic pitches in range
	(cond ((> step 7)
		   (super-chroma (+ oct 1) 0 max))
		  ((> oct max) '())
		  (#t
			(append 
				(list
					(ly:make-pitch
						oct
						step
						-1/2)
					(ly:make-pitch
						oct
						step
						0)
					(ly:make-pitch
						oct
						step
						1/2))
				(super-chroma
					oct
					(+ step 1)
					max)))))
#(define chroma-chorale
	#{
		<<
			#(make-music
				'SequentialMusic
				'elements
				(map 
					(lambda (p)
						(make-note
							p
							(ly:make-duration 1)))
					(super-chroma -4 0 4)))
			% { cis1 dis eis fis }
		>>
	#})

#(define my-chorale
	#{
		<<
			{e2. d4  | e4 g4 | b4 c'4 | d'4 e'2. | e'2 | d'4 | c'4 | g4 }
			{c2. b,4 | c4 e4 | g4 g4  | g4  g2.  | g2  | f4  | e4  | e4 }
		>>
	#})

#(define range
	;place to define ranges for insts
	(lambda (id)
		(cond ((equal? id "fl")
			   (cons (ly:make-pitch 0 0) (ly:make-pitch 4 0)))
			  ((equal? id "cl")
			   (cons (ly:make-pitch -1 1) (ly:make-pitch 3 6 -1/2)))
			  ((equal? id "bn")
			   (cons (ly:make-pitch -3 6 -1/2) (ly:make-pitch 1 1)))
			  ((equal? id "tbn")
			   (cons (ly:make-pitch -2 2) (ly:make-pitch 1 2)))
			  ((equal? id "vn")
			   (cons (ly:make-pitch -1 4) (ly:make-pitch 4 5)))
			  ((equal? id "va")
			   (cons (ly:make-pitch -1 0) (ly:make-pitch 3 2)))
			  ((equal? id "vc")
			   (cons (ly:make-pitch -2 0) (ly:make-pitch 2 3)))
			  ((equal? id "db")
			   (cons (ly:make-pitch -3 2) (ly:make-pitch 0 4)))
			  (#t
			   (cons (ly:make-pitch -9 0) (ly:make-pitch 9 0))))))

\score {
	<<
		\numericTimeSignature
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
		{ << #(chorale->texture identity-proc chroma-chorale (list "fl" "cl" "bn" "tbn"))
			 #(chorale->texture buzz-proc chroma-chorale (list "vn" "va" "vc" "db")) >>
		  << #(chorale->texture identity-proc my-chorale (list "fl" "cl" "bn" "tbn"))
			 #(chorale->texture buzz-proc my-chorale (list "vn" "va" "vc" "db")) >> }
	>>
}

#(define my-chorale
;	(make-music
;		'SequentialMusic
;		'elements
;		(list
;			(make-music
;				'SequentialMusic
;				'elements
;				(list
;					(make-note
;						(ly:make-pitch 0 0)
;						(ly:make-duration 0)))))))
	#{<<
		<< c'1 | d1 >>
	>>#})

% #(display-scheme-music
% 	(first-voice my-chorale))