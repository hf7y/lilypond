\version "2.20.0"
\include "./lib.ly"

%As a design choice, these functions will not access global variables directly
%Instead, they will be passed them by the conductor function

#(define composite-gesture
	;for each duration in dset, decide what the hands are doing
	;two bits for who's playing
	(lambda (pset dset intensity tonic)
		(let ((durs&hands
				(pair-durs-w-hands dset intensity))
			  (transposed-pset (transpose pset tonic)))
			 (in-context 
			 	'PianoStaff
			 	"pf"
				(make-music
				 	'SequentialMusic
				 	'elements
				 	(map (lambda (pair)
				 				 (simple-gesture
				 				 	transposed-pset
				 				 	(car pair)
				 				 	intensity))
				 		 durs&hands))))))

#(define (pair-durs-w-hands dset intensity)
	;I want to peak in intensity in the middle of the durations
	(let ((length (length dset)))
		)

#(define simple-gesture
	(lambda* (pitches dur int #:optional staff-id)
		(in-context 
			'Staff 
			staff-id
			((texture int) 
				pitches dur))))
 
#(define* (in-context context #:optional id music)
	(if id
		#{ \context #context = #id { #music } #}
		#{ \context #context { #music } #}))



#(define (texture intensity)
	(let ((i (modulo intensity 3)))
		 (cond ((zero? i) arpeggiate)
		 	   ((= i 1) tremolate)
		 	   (#t chordate))))

#(define (arpeggiate pitches duration)
	(n-tuplet 
		(length pitches)
		(make-music
			'SequentialMusic
			'elements
			(map (lambda (p) (make-note p duration)) pitches))))

#(define (tremolate pitches duration)
	'())

#(define (chordate pitches duration)
	'())


#(simple-gesture
	(ly:make-pitch 0 0)
	(ly:make-duration 0)
	0
	)