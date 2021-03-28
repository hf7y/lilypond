\version "2.20.0"
\include "./rows.ly"
\include "../z/timesignature.ily"

%Small Constructors
%originally in ./rows.ly
%  (make-note p d)
%  (make-rest d)
%  (make-skip d)
%  (make-drum type d)

#(define (make-note p d)
	(make-music
		'NoteEvent
		'pitch p
		'duration d))

#(define (make-rest d)
	(make-music
		'RestEvent
		'duration d))

#(define (make-skip d)
	(make-music
		'SkipEvent
		'duration d))

#(define (make-drum type d)
	(make-music
		'NoteEvent
		'drum-type type
		'duration d))




%from ../introit.math.ly
n-tuplet = #(define-music-function
	(pair music)(pair? ly:music?)
	(if (zero? (logand (car pair) (- (car pair) 1))) music
			 (tuplet pair music)))

unfoldf = #(define-music-function
	;allows lambda encapsulation for delayed evaluation
	(n f)(number? procedure?)
	(if (> n 0)
		#{ #(f) \unfoldf #(- n 1) #f #}
		#{#}))



%harmony structure


\include "./harmony.ly"

%from ../linea/math.ly
%Used in pf-lib and pc-lib

#(define (trem dur)
	;makes a three-line tremolo every time
    (let ((log (ly:duration-log dur)))
        (make-music 'TremoloEvent 'tremolo-type
                    (expt 2 (+ (+ 3 log) (max (- 2 log) 0))))))


\include "./pf-lib.ly"
\include "./pc-lib.ly"


%Vestigial from when I was putting time-sigs on their own special staff
% make-ts = #(define-music-function
% 	(h)(harmony?)
% 	(let* ((skips
% 			(make-music
% 				'SequentialMusic
% 				'elements
% 				(list (make-skip (car (harmony-durations h)))
% 					  (make-skip (cdr (harmony-durations h))))))
% 		  (moment (ly:music-length skips)))
% 	#{  \context TimeSig = "ts" {
% 			\time #(let* ((nume (ly:moment-main-numerator moment))
% 						 (den  (ly:moment-main-denominator moment)))
% 						(if (= 1 nume) (cons (* 2 nume) (* 2 den))
% 					       			   (cons nume den)))
% 		    $skips
% 		}
% 	#}))
