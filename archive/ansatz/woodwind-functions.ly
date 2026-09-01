\version "2.24.3"

% flute notes: aeolian sounds takes a lot of air < 5 seconds. lowest reg. <es. 
%                 triangle notehead (Saariaho)
%                 when >es, half-breath technique (triangle on stem)
%              "inside air," or white noise (changing vowel) https://www.youtube.com/watch?v=EOXz5d0XBsc
%                 possible flutter tongue
%              whisper tones (very quiet, can play harmonics)
%              overblow, bisbigliando, flutter tongue

% clarinet matching with bass clarinet: Roche Cl #121

#(define (roche index duration . dgram?)
  (let ((duration (if (ly:duration? duration)
                      duration
                      (if (number? duration)
                          (ly:make-duration 
                            (- (integer-length duration) 1)
                            0)
                          (ly:make-duration 0 0))))
        (pitch-pair
          (case index
                ((1) (list (ly:make-pitch -1 2) (ly:make-pitch 0 6)))
                ((2) (list (ly:make-pitch -1 2) (ly:make-pitch 1 0 1/2)))
                ((3) (list (ly:make-pitch -1 2 1/4) (ly:make-pitch 1 1)))
                ((4) (list (ly:make-pitch -1 2) (ly:make-pitch 1 0 1/4)))
                ((5) (list (ly:make-pitch -1 3 1/2) (ly:make-pitch 0 5 3/4)))
                ((6) (list (ly:make-pitch -1 4 1/2) (ly:make-pitch 1 1 1/2)))
                ((7) (list (ly:make-pitch -1 4 1/4) (ly:make-pitch 1 4)))
                ((8) (list (ly:make-pitch -1 4 1/2) (ly:make-pitch 1 4 1/2))))))
            (let ((fundamental 
                   (if (not (null? dgram?))
                       (add-diagram (make-music 'NoteEvent
                                                'pitch (car pitch-pair)
                                                'duration duration)
                                    (diagram index))
                       (make-music 'NoteEvent
                                   'pitch (car pitch-pair)
                                   'duration duration)))
                  (partial (make-music 'NoteEvent
                                       'pitch (cadr pitch-pair)
                                       'duration duration)))
                 ;;(set! (ly:music-property partial 'articulations)
                 ;;      (list (make-music 'HarmonicEvent)))
                 (let ((chord (make-music
                                'EventChord
                                'elements
                                (list partial fundamental))))
                      #{ \transpose c bes, #chord #}))))

% #(define (roche index duration . dgram?)
% 	(let ((duration (if (ly:duration? duration)
%                       duration
%                       (if (number? duration)
%                           (ly:make-duration 
%                   	        (- (integer-length duration) 1)
%                             0)
%                     	    (ly:make-duration 0 0))))
%         (pitch-pair
%           (case index
%                 ((1) (list (ly:make-pitch -1 2) (ly:make-pitch 0 6)))
%                 ((2) (list (ly:make-pitch -1 2) (ly:make-pitch 1 0 1/2)))
%                 ((3) (list (ly:make-pitch -1 2 1/4) (ly:make-pitch 1 1)))
%                 ((4) (list (ly:make-pitch -1 2) (ly:make-pitch 1 0 1/4)))
%                 ((5) (list (ly:make-pitch -1 3 1/2) (ly:make-pitch 0 5 3/4)))
%                 ((6) (list (ly:make-pitch -1 4 1/2) (ly:make-pitch 1 1 1/2)))
%                 ((7) (list (ly:make-pitch -1 4 1/4) (ly:make-pitch 1 4)))
%                 ((8) (list (ly:make-pitch -1 4 1/2) (ly:make-pitch 1 4 1/2))))))
%         	  (let ((fundamental 
%                    (if (not (null? dgram?))
%                        (add-diagram (make-music 'NoteEvent
%                                                 'pitch (car pitch-pair)
%                                                 'duration duration)
%                                     (diagram index))
%                        (make-music 'NoteEvent
%                                    'pitch (car pitch-pair)
%                                    'duration duration)))
%                   (partial (make-music 'NoteEvent
%                                        'pitch (cadr pitch-pair)
%                                        'duration duration)))
%                  (set! (ly:music-property partial 'articulations)
%                        (list (make-music 'HarmonicEvent)))
%                  #{ \transpose c bes, << { \hide Stem #partial } \\ #fundamental >> #})))

#(define (add-diagram music dgram)
  (set! (ly:music-property music 'articulations)
        (cons dgram
              (ly:music-property music 'articulations)))
  music)

% #(define (diagram index)
%   (make-music
%    'TextScriptEvent
%    'direction
%    1
%    'text
%    (markup 
%      #:line
%      (#:override 
%        (cons 'size 0.7)
%        (#:woodwind-diagram
%         'bass-clarinet
%         (case index
%           ((1) (list (list 'cc 'one 'two 'three 'four 'five 'six)
%                      (list 'lh 'thumb)
%                      (list 'rh 'four)))
%           ((2) (list (list 'cc 'two 'three 'four 'five)
%                      (list 'lh 'thumb)
%                      (list 'rh)))
%           ((3) (list (list 'cc 'two 'three 'four)
%                      (list 'lh  'thumb)
%                      (list 'rh)))
%           ((4) (list (list 'cc 'one 'two 'three 'four 'five 'six)
%                      (list 'lh)
%                      (list 'rh 'gis)))
%           ((5) (list (list 'cc 'one 'two 'three 'four 'five 'six)
%                      (list 'lh)
%                      (list 'rh 'ees)))
%           ((6) (list (list 'cc 'one 'two 'three 'four 'five)
%                      (list 'lh 'thumb 'gis)
%                      (list 'rh)))
%           ((7) (list (list 'cc 'two 'three 'six)
%                      (list 'lh 'R 'thumb)
%                      (list 'rh)))
%           ((8) (list (list 'cc 'one 'two)
%                      (list 'lh 'thumb)
%                      (list 'rh 'two)))))))))

#(define (diagram-markup index)
   (markup 
     #:line
     (#:override 
       (cons 'size 0.7)
       (#:woodwind-diagram
        'bass-clarinet
        (case index
          ((1) (list (list 'cc 'one 'two 'three 'four 'five 'six)
                     (list 'lh 'thumb)
                     (list 'rh 'four)))
          ((2) (list (list 'cc 'two 'three 'four 'five)
                     (list 'lh 'thumb)
                     (list 'rh)))
          ((3) (list (list 'cc 'two 'three 'four)
                     (list 'lh  'thumb)
                     (list 'rh)))
          ((4) (list (list 'cc 'one 'two 'three 'four 'five 'six)
                     (list 'lh)
                     (list 'rh 'gis)))
          ((5) (list (list 'cc 'one 'two 'three 'four 'five 'six)
                     (list 'lh)
                     (list 'rh 'ees)))
          ((6) (list (list 'cc 'one 'two 'three 'four 'five)
                     (list 'lh 'thumb 'gis)
                     (list 'rh)))
          ((7) (list (list 'cc 'two 'three 'six)
                     (list 'lh 'R 'thumb)
                     (list 'rh)))
          ((8) (list (list 'cc 'one 'two)
                     (list 'lh 'thumb)
                     (list 'rh 'two))))))))

#(define (diagram index)
  #{
    -#(markup 
     #:line
     (#:with-dimensions
       (cons 1 0)
       (cons 0 0)
       (#:translate-scaled
          (cons 0 -3)
          (#:raise 
            0
           (#:override 
             (cons 'size 0.7)
             (#:woodwind-diagram
              'bass-clarinet
              (case index
                ((1) (list (list 'cc 'one 'two 'three 'four 'five 'six)
                           (list 'lh 'thumb)
                           (list 'rh 'four)))
                ((2) (list (list 'cc 'two 'three 'four 'five)
                           (list 'lh 'thumb)
                           (list 'rh)))
                ((3) (list (list 'cc 'two 'three 'four)
                           (list 'lh  'thumb)
                           (list 'rh)))
                ((4) (list (list 'cc 'one 'two 'three 'four 'five 'six)
                           (list 'lh)
                           (list 'rh 'gis)))
                ((5) (list (list 'cc 'one 'two 'three 'four 'five 'six)
                           (list 'lh)
                           (list 'rh 'ees)))
                ((6) (list (list 'cc 'one 'two 'three 'four 'five)
                           (list 'lh 'thumb 'gis)
                           (list 'rh)))
                ((7) (list (list 'cc 'two 'three 'six)
                           (list 'lh 'R 'thumb)
                           (list 'rh)))
                ((8) (list (list 'cc 'one 'two)
                           (list 'lh 'thumb)
                           (list 'rh 'two)))))))))) #} )
#(define (smallDiagram index)
  #{
    -#(markup 
     #:line
     (#:with-dimensions
       (cons 1 0)
       (cons 0 0)
       (#:translate-scaled
          (cons 0 -3)
          (#:raise 
            0
           (#:override 
             (cons 'size 0.6)
             (#:woodwind-diagram
              'bass-clarinet
              (case index
                ((1) (list (list 'cc 'one 'two 'three 'four 'five 'six)
                           (list 'lh 'thumb)
                           (list 'rh 'four)))
                ((2) (list (list 'cc 'two 'three 'four 'five)
                           (list 'lh 'thumb)
                           (list 'rh)))
                ((3) (list (list 'cc 'two 'three 'four)
                           (list 'lh  'thumb)
                           (list 'rh)))
                ((4) (list (list 'cc 'one 'two 'three 'four 'five 'six)
                           (list 'lh)
                           (list 'rh 'gis)))
                ((5) (list (list 'cc 'one 'two 'three 'four 'five 'six)
                           (list 'lh)
                           (list 'rh 'ees)))
                ((6) (list (list 'cc 'one 'two 'three 'four 'five)
                           (list 'lh 'thumb 'gis)
                           (list 'rh)))
                ((7) (list (list 'cc 'two 'three 'six)
                           (list 'lh 'R 'thumb)
                           (list 'rh)))
                ((8) (list (list 'cc 'one 'two)
                           (list 'lh 'thumb)
                           (list 'rh 'two)))))))))) #} )

% \score {
%   \new Staff {
%     \clef "treble_8"
%     % \displayMusic << { \hide Stem b4\harmonic } \\ c4 >>

%     #(roche 1 1)
%     #(roche 2 1)
%     #(roche 3 1)
%     #(roche 4 1)
%     #(roche 5 1)
%     #(roche 6 1)
%     #(roche 7 1)
%     #(roche 8 1)
%   }

% }
  % #(print-keys-verbose 'bass-clarinet (current-error-port))
  % #(add-diagram #{c1#} (diagram 2))
  % #(add-diagram #{c1#} (diagram 3))
  % #(add-diagram #{c1#} (diagram 4))
  % #(add-diagram #{c1#} (diagram 5))
  % #(add-diagram #{c1#} (diagram 6))
  % #(add-diagram #{c1#} (diagram 7))
  % #(add-diagram #{c1#} (diagram 8))
  % #(add-diagram #{c1#} (diagram 9))

  
#(define (wwexp pitchlist duration . args)
  (let ((duration 
         (if (ly:duration? duration)
             duration
             (if (number? duration)
                 (ly:make-duration
                   (if (positive? duration)
                       (- (integer-length duration) 1)
                       (- (* (integer-length (* duration -1)) -1) 1))
                   0)
                 (ly:make-duration 0 0)))))
    (make-music
      'SequentialMusic
      'elements
      (list (make-music 'RestEvent 
              'duration 
              (ly:make-duration 
                (+ (ly:duration-log duration) 2)
                3))
            (make-music 'NoteEvent
              'duration
              (ly:make-duration 
                (+ (ly:duration-log duration) 1)
                (ly:duration-dot-count duration))
              'pitch
              (let last ((plist pitchlist))
                         (if (null? (cdr plist))
                            (car plist)
                            (last (cdr plist)))))))))

#(define (wwrexp pitchlist duration . args)
  (let ((duration (if (ly:duration? duration)
                      duration
                      (if (number? duration)
                          (ly:make-duration
                            (- (integer-length duration) 1)
                            0)
                        (ly:make-duration 0 0)))))
    (make-music
      'SequentialMusic
      'elements
      (cons 
        (make-music
          'RestEvent
          'duration (ly:make-duration
                            (+ (ly:duration-log duration)
                               (length pitchlist))
                            (ly:duration-dot-count duration)))
        (let apply-durations ((plist pitchlist))
          (if (null? (cdr plist))
              (let ((note (make-music
                          'NoteEvent
                          'duration
                          (ly:make-duration
                            (+ (length plist) 
                               (ly:duration-log duration))
                            (ly:duration-dot-count duration))
                          'pitch (car plist))))
                 (if (list? args)
                     (set! (ly:music-property note 'tweaks) args))
                 (list note))
              (cons (make-music
                      'RestEvent
                      'duration (ly:make-duration
                                  (+ (ly:duration-log duration)
                                     (length plist))
                                  (ly:duration-dot-count duration)))
                    (apply-durations (cdr plist)))))))))

#(define-markup-command (on-color layout props color arg) (color? markup?)
   (let* ((stencil (interpret-markup layout props arg))
          (X-ext (ly:stencil-extent stencil X))
          (Y-ext (ly:stencil-extent stencil Y)))

     (ly:stencil-add 
       (stencil-with-color
         (ly:round-filled-box X-ext Y-ext 0)
         color)
       stencil)))