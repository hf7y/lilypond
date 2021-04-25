\version "2.20.0"

%Donald Knuth's Literate Programming Paradigm
%https://en.wikipedia.org/wiki/Literate_programming

%The notation *is* the data structure

%Trying to capture a sense of ergonomics, fingering on the ukulele

%Ergonomics *noun*
%the study of people's efficiency in their working environment.

open-strings = \relative c'' { a\1 e\2 c\3 g'\4 }

#(define (music-property prop)
	;returns a single arg function of music
	(lambda (music)
		(ly:music-property music prop)))

#(define (equal-music? mu zic)
	(let ((comparisons 
			(list (music-property 'name)
				  ly:music-length
				  (lambda (x) (length ((music-property 'elements) x)))
				  (lambda (x) ((music-property 'name) ((music-property 'element) x))))))
		 (letrec ((recursive-compare
		 			(lambda (list)
					 	(if (null? list)
					 		#t
					 		(and
					 			(equal? ((car list) mu)	
					 					((car list) zic))
					 			(recursive-compare (cdr list)))))))
		 		 (recursive-compare comparisons))))

%structure of open-strings inside lilypond
% #(display
% 	(equal-music?
% 		open-strings
% 		(make-music
% 		  'RelativeOctaveMusic
% 		  'element
% 		  (make-music
% 		    'SequentialMusic
% 		    'elements
% 		    (list (make-music
% 		            'NoteEvent
% 		            'articulations
% 		            (list (make-music
% 		                    'StringNumberEvent
% 		                    'string-number
% 		                    1))
% 		            'duration
% 		            (ly:make-duration 2)
% 		            'pitch
% 		            (ly:make-pitch 0 5))
% 		          (make-music
% 		            'NoteEvent
% 		            'articulations
% 		            (list (make-music
% 		                    'StringNumberEvent
% 		                    'string-number
% 		                    2))
% 		            'duration
% 		            (ly:make-duration 2)
% 		            'pitch
% 		            (ly:make-pitch 0 2))
% 		          (make-music
% 		            'NoteEvent
% 		            'articulations
% 		            (list (make-music
% 		                    'StringNumberEvent
% 		                    'string-number
% 		                    3))
% 		            'duration
% 		            (ly:make-duration 2)
% 		            'pitch
% 		            (ly:make-pitch 0 0))
% 		          (make-music
% 		            'NoteEvent
% 		            'articulations
% 		            (list (make-music
% 		                    'StringNumberEvent
% 		                    'string-number
% 		                    4))
% 		            'duration
% 		            (ly:make-duration 2)
% 		            'pitch
% 		            (ly:make-pitch 0 4)))))
% 		))


%Literate programming is thinking as you type?
%Linear verbal programming, right.


%The 1234 Rule: Left Hand Technique
%http://ukulelehunt.com/2020/02/19/the-1234-rule-left-hand-technique/

% 1st finger on 1st fret
% 2nd finger on 2nd fret
% 3rd finger on 3rd fret
% 4th finger on 4th fret

%Lilypond TabStaff behavior
%https://lilypond.org/doc/v2.19/Documentation/notation/common-notation-for-fretted-strings

% By default pitches are assigned to the lowest playing position on the 
% fret-board (first position). Open strings are automatically preferred. 
% If you would like a certain pitch to be played on a specific string 
% you can add a string number indication to the pitch name. If you don’t 
% want to have string number indications appear in traditional notation, 
% you can override the respective stencil. Usually it will be more 
% comfortable to define the playing position by using the value of 
% minimumFret. The default value for minimumFret is 0.

%build a chord, finger by finger

% #(display-scheme-music
% 	ukulele-tuning)

#(define (rm x lst)
	(if (null? lst)
		'()
		(if (ly:pitch-eq? x (car lst))
			(remove x (cdr lst))
			(cons
				(car lst)
				(rm x (cdr lst))))))

% #(define permute
% 	(lambda (lst)
% 		(if (= 1 (length lst))
% 			lst
% 			(map 
% 				(lambda (i)
% 					(map
% 						(lambda (j)
% 							(append
% 								(list i)
% 								j))
% 						(permute (rm i lst))))
% 				lst))))
		
#(display (rm (ly:make-pitch 0 0) (list (ly:make-pitch 0 1) (ly:make-pitch 0 0))))

% #(display (permute (list "a" "b" "c")))

% %frets/semitones by finger, in order
% #(define fingers-frets
% 	(list
% 		(ly:make-pitch 0 0)
% 		(ly:make-pitch 0 0 1/2)
% 		(ly:make-pitch 0 1)
% 		(ly:make-pitch 0 1 1/2)))

% #(define (pitch-lists-add psa psb)
% 	(if (or (null? psa) (null? psb))
% 		'()
% 		(cons
% 			(ly:pitch-add 
% 				(car psa)
% 				(car psb))
% 			(pitch-lists-add
% 				(cdr psa)
% 				(cdr psb)))))

% #(define generate-random-chord
% 	(lambda (strings fingers)
% 		(let ((permss (permute strings))
% 			  (permsf (permute fingers)))
% 			 (pitch-lists-add
% 			 	(list-ref
% 			 		permss
% 			 		(random (length permss)))
% 			 	(list-ref
% 			 		permsf
% 			 		(random (length permsf)))))))


% #(display-scheme-music
% 	(generate-random-chord
% 		ukulele-tuning
% 		fingers-frets))

% #(define mynotes open-strings)

first-note = #(define-music-function
	(music)(ly:music?)
	(letrec ((element-wrap
				(lambda (lst)
					(if (null? lst)
						'()
						(if (equal? (ly:music-property
										(car lst)
										'name)
									 'NoteEvent)
							(list (car lst))
							(cons
								(car lst)
								(element-wrap (cdr lst))))))))
			(let ((return (ly:music-deep-copy music)))
				(begin
					(ly:music-set-property! return 'elements (element-wrap (ly:music-property return 'elements)))
					return))))
butfirst-notes = #(define-music-function
	(music)(ly:music?)
	(letrec ((element-wrap
				(lambda (lst)
					(if (null? lst)
						'()
						(if (equal? (ly:music-property
										(car lst)
										'name)
									 'NoteEvent)
							(cdr lst)
							(element-wrap (cdr lst)))))))
			(let ((return (ly:music-deep-copy music)))
				(begin
					(ly:music-set-property! return 'elements (element-wrap (ly:music-property return 'elements)))
					return))))

test-motif = { c d e f g a b c\4 }

mynotes = {
	% \displayMusic
	#(first-note test-motif)
	#(butfirst-notes test-motif)
}

\score { 
	<<
			
	\new Staff {
		% \time 6/8	
		\clef treble
		% \key aes \major
		\relative c' { 	
		 % Type notes here 
		  \mynotes			
		}	
	}
	
	
	\addlyrics {
		%verse 1
	}
	\addlyrics{
		%verse 2
	}
	\addlyrics {
		%verse 3
	}
	\new TabStaff {
		\set TabStaff.stringTunings = #ukulele-tuning
		\relative c'{
			\mynotes
			
		}
	}
>>
%end score
}
