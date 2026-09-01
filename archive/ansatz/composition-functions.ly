\version "2.24.3"

% #(define (make-pentachord index)
%   (let place-fingers ((starting-note 0)
%                       (hand-spacing (list 7 3 2 2 2))
%                       (denominators (list 24 8 4 2 1)))
%     (if (null? hand-spacing)
%         '()
%         (let ((note (+ (modulo (quotient index (car denominators))
%                                (car hand-spacing))
%                        starting-note)))
%           (cons note (place-fingers (+ note 1)
%                                     (cdr hand-spacing)
%                                     (cdr denominators)))))))

% Generative Functions

#(define (make-pitchlist notenames)
  (map (lambda (notename)
               (ly:make-pitch
                 (quotient notename 7)
                 (remainder notename 7)))
       notenames))

#(define (make-inv-pitchlist notenames)
  (map (lambda (notename)
               (ly:make-pitch
                 (quotient (- 2 notename) 7)
                 (remainder (- 2 notename) 7)))
       notenames))

#(define (parse-duration duration)
  (if (ly:duration? duration)
    duration
    (if (number? duration)
      (ly:make-duration
        (- (integer-length duration) 1)
        0)
      (ly:make-duration 0 0))))

#(define (pentachord index)
  (make-pitchlist
    (case (modulo index 168)
      ((0) (list 0 1 2 3 4))
      ((1) (list 0 1 2 3 5))
      ((2) (list 0 1 2 4 5))
      ((3) (list 0 1 2 4 6))
      ((4) (list 0 1 3 4 5))
      ((5) (list 0 1 3 4 6))
      ((6) (list 0 1 3 5 6))
      ((7) (list 0 1 3 5 7))
      ((8) (list 0 2 3 4 5))
      ((9) (list 0 2 3 4 6))
      ((10) (list 0 2 3 5 6))
      ((11) (list 0 2 3 5 7))
      ((12) (list 0 2 4 5 6))
      ((13) (list 0 2 4 5 7))
      ((14) (list 0 2 4 6 7))
      ((15) (list 0 2 4 6 8))
      ((16) (list 0 3 4 5 6))
      ((17) (list 0 3 4 5 7))
      ((18) (list 0 3 4 6 7))
      ((19) (list 0 3 4 6 8))
      ((20) (list 0 3 5 6 7))
      ((21) (list 0 3 5 6 8))
      ((22) (list 0 3 5 7 8))
      ((23) (list 0 3 5 7 9))
      ((24) (list 1 2 3 4 5))
      ((25) (list 1 2 3 4 6))
      ((26) (list 1 2 3 5 6))
      ((27) (list 1 2 3 5 7))
      ((28) (list 1 2 4 5 6))
      ((29) (list 1 2 4 5 7))
      ((30) (list 1 2 4 6 7))
      ((31) (list 1 2 4 6 8))
      ((32) (list 1 3 4 5 6))
      ((33) (list 1 3 4 5 7))
      ((34) (list 1 3 4 6 7))
      ((35) (list 1 3 4 6 8))
      ((36) (list 1 3 5 6 7))
      ((37) (list 1 3 5 6 8))
      ((38) (list 1 3 5 7 8))
      ((39) (list 1 3 5 7 9))
      ((40) (list 1 4 5 6 7))
      ((41) (list 1 4 5 6 8))
      ((42) (list 1 4 5 7 8))
      ((43) (list 1 4 5 7 9))
      ((44) (list 1 4 6 7 8))
      ((45) (list 1 4 6 7 9))
      ((46) (list 1 4 6 8 9))
      ((47) (list 1 4 6 8 10))
      ((48) (list 2 3 4 5 6))
      ((49) (list 2 3 4 5 7))
      ((50) (list 2 3 4 6 7))
      ((51) (list 2 3 4 6 8))
      ((52) (list 2 3 5 6 7))
      ((53) (list 2 3 5 6 8))
      ((54) (list 2 3 5 7 8))
      ((55) (list 2 3 5 7 9))
      ((56) (list 2 4 5 6 7))
      ((57) (list 2 4 5 6 8))
      ((58) (list 2 4 5 7 8))
      ((59) (list 2 4 5 7 9))
      ((60) (list 2 4 6 7 8))
      ((61) (list 2 4 6 7 9))
      ((62) (list 2 4 6 8 9))
      ((63) (list 2 4 6 8 10))
      ((64) (list 2 5 6 7 8))
      ((65) (list 2 5 6 7 9))
      ((66) (list 2 5 6 8 9))
      ((67) (list 2 5 6 8 10))
      ((68) (list 2 5 7 8 9))
      ((69) (list 2 5 7 8 10))
      ((70) (list 2 5 7 9 10))
      ((71) (list 2 5 7 9 11))
      ((72) (list 3 4 5 6 7))
      ((73) (list 3 4 5 6 8))
      ((74) (list 3 4 5 7 8))
      ((75) (list 3 4 5 7 9))
      ((76) (list 3 4 6 7 8))
      ((77) (list 3 4 6 7 9))
      ((78) (list 3 4 6 8 9))
      ((79) (list 3 4 6 8 10))
      ((80) (list 3 5 6 7 8))
      ((81) (list 3 5 6 7 9))
      ((82) (list 3 5 6 8 9))
      ((83) (list 3 5 6 8 10))
      ((84) (list 3 5 7 8 9))
      ((85) (list 3 5 7 8 10))
      ((86) (list 3 5 7 9 10))
      ((87) (list 3 5 7 9 11))
      ((88) (list 3 6 7 8 9))
      ((89) (list 3 6 7 8 10))
      ((90) (list 3 6 7 9 10))
      ((91) (list 3 6 7 9 11))
      ((92) (list 3 6 8 9 10))
      ((93) (list 3 6 8 9 11))
      ((94) (list 3 6 8 10 11))
      ((95) (list 3 6 8 10 12))
      ((96) (list 4 5 6 7 8))
      ((97) (list 4 5 6 7 9))
      ((98) (list 4 5 6 8 9))
      ((99) (list 4 5 6 8 10))
      ((100) (list 4 5 7 8 9))
      ((101) (list 4 5 7 8 10))
      ((102) (list 4 5 7 9 10))
      ((103) (list 4 5 7 9 11))
      ((104) (list 4 6 7 8 9))
      ((105) (list 4 6 7 8 10))
      ((106) (list 4 6 7 9 10))
      ((107) (list 4 6 7 9 11))
      ((108) (list 4 6 8 9 10))
      ((109) (list 4 6 8 9 11))
      ((110) (list 4 6 8 10 11))
      ((111) (list 4 6 8 10 12))
      ((112) (list 4 7 8 9 10))
      ((113) (list 4 7 8 9 11))
      ((114) (list 4 7 8 10 11))
      ((115) (list 4 7 8 10 12))
      ((116) (list 4 7 9 10 11))
      ((117) (list 4 7 9 10 12))
      ((118) (list 4 7 9 11 12))
      ((119) (list 4 7 9 11 13))
      ((120) (list 5 6 7 8 9))
      ((121) (list 5 6 7 8 10))
      ((122) (list 5 6 7 9 10))
      ((123) (list 5 6 7 9 11))
      ((124) (list 5 6 8 9 10))
      ((125) (list 5 6 8 9 11))
      ((126) (list 5 6 8 10 11))
      ((127) (list 5 6 8 10 12))
      ((128) (list 5 7 8 9 10))
      ((129) (list 5 7 8 9 11))
      ((130) (list 5 7 8 10 11))
      ((131) (list 5 7 8 10 12))
      ((132) (list 5 7 9 10 11))
      ((133) (list 5 7 9 10 12))
      ((134) (list 5 7 9 11 12))
      ((135) (list 5 7 9 11 13))
      ((136) (list 5 8 9 10 11))
      ((137) (list 5 8 9 10 12))
      ((138) (list 5 8 9 11 12))
      ((139) (list 5 8 9 11 13))
      ((140) (list 5 8 10 11 12))
      ((141) (list 5 8 10 11 13))
      ((142) (list 5 8 10 12 13))
      ((143) (list 5 8 10 12 14))
      ((144) (list 6 7 8 9 10))
      ((145) (list 6 7 8 9 11))
      ((146) (list 6 7 8 10 11))
      ((147) (list 6 7 8 10 12))
      ((148) (list 6 7 9 10 11))
      ((149) (list 6 7 9 10 12))
      ((150) (list 6 7 9 11 12))
      ((151) (list 6 7 9 11 13))
      ((152) (list 6 8 9 10 11))
      ((153) (list 6 8 9 10 12))
      ((154) (list 6 8 9 11 12))
      ((155) (list 6 8 9 11 13))
      ((156) (list 6 8 10 11 12))
      ((157) (list 6 8 10 11 13))
      ((158) (list 6 8 10 12 13))
      ((159) (list 6 8 10 12 14))
      ((160) (list 6 9 10 11 12))
      ((161) (list 6 9 10 11 13))
      ((162) (list 6 9 10 12 13))
      ((163) (list 6 9 10 12 14))
      ((164) (list 6 9 11 12 13))
      ((165) (list 6 9 11 12 14))
      ((166) (list 6 9 11 13 14))
      ((167) (list 6 9 11 13 15)))))

#(define (inv-pentachord index)
  (make-inv-pitchlist
    (case (modulo index 168)
      ((0) (list 0 1 2 3 4))
      ((1) (list 0 1 2 3 5))
      ((2) (list 0 1 2 4 5))
      ((3) (list 0 1 2 4 6))
      ((4) (list 0 1 3 4 5))
      ((5) (list 0 1 3 4 6))
      ((6) (list 0 1 3 5 6))
      ((7) (list 0 1 3 5 7))
      ((8) (list 0 2 3 4 5))
      ((9) (list 0 2 3 4 6))
      ((10) (list 0 2 3 5 6))
      ((11) (list 0 2 3 5 7))
      ((12) (list 0 2 4 5 6))
      ((13) (list 0 2 4 5 7))
      ((14) (list 0 2 4 6 7))
      ((15) (list 0 2 4 6 8))
      ((16) (list 0 3 4 5 6))
      ((17) (list 0 3 4 5 7))
      ((18) (list 0 3 4 6 7))
      ((19) (list 0 3 4 6 8))
      ((20) (list 0 3 5 6 7))
      ((21) (list 0 3 5 6 8))
      ((22) (list 0 3 5 7 8))
      ((23) (list 0 3 5 7 9))
      ((24) (list 1 2 3 4 5))
      ((25) (list 1 2 3 4 6))
      ((26) (list 1 2 3 5 6))
      ((27) (list 1 2 3 5 7))
      ((28) (list 1 2 4 5 6))
      ((29) (list 1 2 4 5 7))
      ((30) (list 1 2 4 6 7))
      ((31) (list 1 2 4 6 8))
      ((32) (list 1 3 4 5 6))
      ((33) (list 1 3 4 5 7))
      ((34) (list 1 3 4 6 7))
      ((35) (list 1 3 4 6 8))
      ((36) (list 1 3 5 6 7))
      ((37) (list 1 3 5 6 8))
      ((38) (list 1 3 5 7 8))
      ((39) (list 1 3 5 7 9))
      ((40) (list 1 4 5 6 7))
      ((41) (list 1 4 5 6 8))
      ((42) (list 1 4 5 7 8))
      ((43) (list 1 4 5 7 9))
      ((44) (list 1 4 6 7 8))
      ((45) (list 1 4 6 7 9))
      ((46) (list 1 4 6 8 9))
      ((47) (list 1 4 6 8 10))
      ((48) (list 2 3 4 5 6))
      ((49) (list 2 3 4 5 7))
      ((50) (list 2 3 4 6 7))
      ((51) (list 2 3 4 6 8))
      ((52) (list 2 3 5 6 7))
      ((53) (list 2 3 5 6 8))
      ((54) (list 2 3 5 7 8))
      ((55) (list 2 3 5 7 9))
      ((56) (list 2 4 5 6 7))
      ((57) (list 2 4 5 6 8))
      ((58) (list 2 4 5 7 8))
      ((59) (list 2 4 5 7 9))
      ((60) (list 2 4 6 7 8))
      ((61) (list 2 4 6 7 9))
      ((62) (list 2 4 6 8 9))
      ((63) (list 2 4 6 8 10))
      ((64) (list 2 5 6 7 8))
      ((65) (list 2 5 6 7 9))
      ((66) (list 2 5 6 8 9))
      ((67) (list 2 5 6 8 10))
      ((68) (list 2 5 7 8 9))
      ((69) (list 2 5 7 8 10))
      ((70) (list 2 5 7 9 10))
      ((71) (list 2 5 7 9 11))
      ((72) (list 3 4 5 6 7))
      ((73) (list 3 4 5 6 8))
      ((74) (list 3 4 5 7 8))
      ((75) (list 3 4 5 7 9))
      ((76) (list 3 4 6 7 8))
      ((77) (list 3 4 6 7 9))
      ((78) (list 3 4 6 8 9))
      ((79) (list 3 4 6 8 10))
      ((80) (list 3 5 6 7 8))
      ((81) (list 3 5 6 7 9))
      ((82) (list 3 5 6 8 9))
      ((83) (list 3 5 6 8 10))
      ((84) (list 3 5 7 8 9))
      ((85) (list 3 5 7 8 10))
      ((86) (list 3 5 7 9 10))
      ((87) (list 3 5 7 9 11))
      ((88) (list 3 6 7 8 9))
      ((89) (list 3 6 7 8 10))
      ((90) (list 3 6 7 9 10))
      ((91) (list 3 6 7 9 11))
      ((92) (list 3 6 8 9 10))
      ((93) (list 3 6 8 9 11))
      ((94) (list 3 6 8 10 11))
      ((95) (list 3 6 8 10 12))
      ((96) (list 4 5 6 7 8))
      ((97) (list 4 5 6 7 9))
      ((98) (list 4 5 6 8 9))
      ((99) (list 4 5 6 8 10))
      ((100) (list 4 5 7 8 9))
      ((101) (list 4 5 7 8 10))
      ((102) (list 4 5 7 9 10))
      ((103) (list 4 5 7 9 11))
      ((104) (list 4 6 7 8 9))
      ((105) (list 4 6 7 8 10))
      ((106) (list 4 6 7 9 10))
      ((107) (list 4 6 7 9 11))
      ((108) (list 4 6 8 9 10))
      ((109) (list 4 6 8 9 11))
      ((110) (list 4 6 8 10 11))
      ((111) (list 4 6 8 10 12))
      ((112) (list 4 7 8 9 10))
      ((113) (list 4 7 8 9 11))
      ((114) (list 4 7 8 10 11))
      ((115) (list 4 7 8 10 12))
      ((116) (list 4 7 9 10 11))
      ((117) (list 4 7 9 10 12))
      ((118) (list 4 7 9 11 12))
      ((119) (list 4 7 9 11 13))
      ((120) (list 5 6 7 8 9))
      ((121) (list 5 6 7 8 10))
      ((122) (list 5 6 7 9 10))
      ((123) (list 5 6 7 9 11))
      ((124) (list 5 6 8 9 10))
      ((125) (list 5 6 8 9 11))
      ((126) (list 5 6 8 10 11))
      ((127) (list 5 6 8 10 12))
      ((128) (list 5 7 8 9 10))
      ((129) (list 5 7 8 9 11))
      ((130) (list 5 7 8 10 11))
      ((131) (list 5 7 8 10 12))
      ((132) (list 5 7 9 10 11))
      ((133) (list 5 7 9 10 12))
      ((134) (list 5 7 9 11 12))
      ((135) (list 5 7 9 11 13))
      ((136) (list 5 8 9 10 11))
      ((137) (list 5 8 9 10 12))
      ((138) (list 5 8 9 11 12))
      ((139) (list 5 8 9 11 13))
      ((140) (list 5 8 10 11 12))
      ((141) (list 5 8 10 11 13))
      ((142) (list 5 8 10 12 13))
      ((143) (list 5 8 10 12 14))
      ((144) (list 6 7 8 9 10))
      ((145) (list 6 7 8 9 11))
      ((146) (list 6 7 8 10 11))
      ((147) (list 6 7 8 10 12))
      ((148) (list 6 7 9 10 11))
      ((149) (list 6 7 9 10 12))
      ((150) (list 6 7 9 11 12))
      ((151) (list 6 7 9 11 13))
      ((152) (list 6 8 9 10 11))
      ((153) (list 6 8 9 10 12))
      ((154) (list 6 8 9 11 12))
      ((155) (list 6 8 9 11 13))
      ((156) (list 6 8 10 11 12))
      ((157) (list 6 8 10 11 13))
      ((158) (list 6 8 10 12 13))
      ((159) (list 6 8 10 12 14))
      ((160) (list 6 9 10 11 12))
      ((161) (list 6 9 10 11 13))
      ((162) (list 6 9 10 12 13))
      ((163) (list 6 9 10 12 14))
      ((164) (list 6 9 11 12 13))
      ((165) (list 6 9 11 12 14))
      ((166) (list 6 9 11 13 14))
      ((167) (list 6 9 11 13 15)))))

#(define (chordify pitchlist . duration)
  (let ((duration (parse-duration duration)))
    (make-music
      'EventChord
      'elements
      (map (lambda (pitch)
                   (make-music
                      'NoteEvent
                      'duration
                        (if (ly:duration? duration)
                           duration
                           (if (number? duration)
                              (ly:make-duration 
                                (integer-length duration) 0)
                              (ly:make-duration 0 0)))
                      'pitch pitch))
           pitchlist))))

#(define (arpeggiate pitchlist duration)
  (make-music
    'SequentialMusic
    'elements
    (map (lambda (pitch)
                 (make-music
                    'NoteEvent
                    'duration duration
                    'pitch pitch))
         pitchlist)))

#(define (exponentiate pitchlist duration . args)
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
                    'NoteEvent
                    'duration 
                    (ly:make-duration
                      (+ (length plist) 
                         (ly:duration-log duration))
                      (ly:duration-dot-count duration))
                    'pitch (car plist))
                  (apply-durations (cdr plist))))))))

#(define (r+exponentiate pitchlist duration)
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
          (if (null? plist)
              '()
              (cons (make-music
                      'NoteEvent
                      'duration (ly:make-duration
                                  (+ (ly:duration-log duration)
                                     (length plist))
                                  (ly:duration-dot-count duration))
                      'pitch (car plist))
                    (apply-durations (cdr plist)))))))))

#(define (apply-last-duration music duration)
  (let ((duration (if (ly:duration? duration) duration
                      (if (number? duration)
                        (ly:make-duration
                          (- (integer-length duration) 1)
                          0)
                        (ly:make-duration 0 0))))
        (elements (ly:music-property music 'elements)))
       (if (pair? elements)
        (let swap-last ((elems elements))
          (if (null? (cdr elems))
              (if (ly:duration? (ly:music-property (car elems) 'duration))
                  (set! (ly:music-property (car elems) 'duration)
                        duration))
              (swap-last (cdr elems)))))
      music))

#(define (apply-to-last music func)
  (let ((elements (ly:music-property music 'elements)))
    (if (pair? elements)
      (let to-last ((lst elements))
        (if (null? (cdr lst))
            (func (car lst))
            (to-last (cdr lst))))))
  music)

#(define (add-articulation note)
  (if (music-is-of-type note 'note-event)
      (set! (ly:music-property note 'articulations)
            (list (make-music
                    'FingeringEvent
                    'digit 0))))
  note)

% Aliases %
#(define aplad apply-last-duration)
#(define rexp 
  (lambda (pitchlist duration)
    (apply-to-last 
      (r+exponentiate pitchlist duration)
      (lambda (note)
        (set! (ly:music-property note 'tweaks)
              (list (cons 'color "black")))))))
#(define exp 
  (lambda (pitchlist duration)
    (apply-to-last 
      (exponentiate pitchlist duration)
      (lambda (note)
        (set! (ly:music-property note 'tweaks)
              (list (cons 'color "black")))))))
#(define 5ach pentachord)
#(define -5ach inv-pentachord)
#(define 4ach (lambda (x) (cdr (pentachord x))))
#(define -4ach (lambda (x) (cdr (inv-pentachord x))))
#(define aplalv (lambda (music)
  (apply-to-last music
                 (lambda (x)
                  (set! (ly:music-property x 'articulations)
                        (cons
                          (make-music 'LaissezVibrerEvent)
                          (ly:music-property x 'articulations)))))
  music))

% #(define (skip-without-tag music tag)
%   (let funt 
%        (lambda (m)
%                (if (music-is-of-type? m 'note-event)

% \score {
%   \new Staff {
%     % #(let loop ((times 168))
%     %   (if (positive? times)
%     %       (begin
%     %         (chordify 
%     %           (pentachord (- 168 times))
%     %           (ly:make-duration 0 0))
%     %         (loop (- times 1)))))
%     #(chordify (pentachord 0) (ly:make-duration 0 0))
%     #(exponentiate+r (pentachord 0) (ly:make-duration 0 0))
%     #(exponentiate+r (reverse (pentachord 0)) (ly:make-duration 0 0))
%   }
% }

#(define (format-mark-padded-box-letters mark context)
 (make-bold-markup
   #{ \markup % \with-color #highlightColor
     #(make-box-markup
       (make-pad-markup-markup 0.5
         (markup #:with-color black
          (make-markletter-markup
           mark)))) #} ))

pushNC =
\once \override NoteColumn.X-offset =
#(lambda (grob)
(let* ((p-c (ly:grob-parent grob X))
(p-c-elts (ly:grob-object p-c 'elements))
(stems
(if (ly:grob-array? p-c-elts)
(filter
(lambda (elt)(grob::has-interface elt 'stem-interface))
(ly:grob-array->list p-c-elts))
#f))
(stems-x-exts
(if stems
(map
(lambda (stem)
(ly:grob-extent
stem
(ly:grob-common-refpoint grob stem X)
X))
stems)
'()))
(sane-ext
(filter interval-sane? stems-x-exts))
(cars (map car sane-ext)))
(if (pair? cars)
(abs (- (apply max cars)  (apply min cars)))
0)))

pushNCs = #(define-music-function
  (music)(ly:music?)
  #{
    \override NoteColumn.X-offset =
      #(lambda (grob)
               (let* ((p-c (ly:grob-parent grob X))
                      (p-c-elts (ly:grob-object p-c 'elements))
                      (stems (if (ly:grob-array? p-c-elts)
                                 (filter (lambda (elt)
                                                 (grob::has-interface elt 'stem-interface))
                                         (ly:grob-array->list p-c-elts))
                                 #f))
                      (stems-x-exts (if stems
                                        (map (lambda (stem)
                                                     (ly:grob-extent
                                                       stem
                                                       (ly:grob-common-refpoint grob stem X)
                                                       X))
                                              stems)
                                        '()))
                      (sane-ext (filter interval-sane? stems-x-exts))
                      (cars (map car sane-ext)))
                     (if (pair? cars)
                         (abs (- (apply max cars)  (apply min cars)))
                         0)))
    #music
    \revert NoteColumn.x-offset
    #}
    )

pullNC = \once
    \override NoteColumn.X-offset =
      #(lambda (grob)
               (let* ((p-c (ly:grob-parent grob X))
                      (p-c-elts (ly:grob-object p-c 'elements))
                      (stems (if (ly:grob-array? p-c-elts)
                                 (filter (lambda (elt)
                                                 (grob::has-interface elt 'stem-interface))
                                         (ly:grob-array->list p-c-elts))
                                 #f))
                      (stems-x-exts (if stems
                                        (map (lambda (stem)
                                                     (ly:grob-extent
                                                       stem
                                                       (ly:grob-common-refpoint grob stem X)
                                                       X))
                                              stems)
                                        '()))
                      (sane-ext (filter interval-sane? stems-x-exts))
                      (cars (map car sane-ext)))
                     (if (pair? cars)
                         (* -1 (abs (- (apply max cars)  (apply min cars))))
                         0)))

% commonTime = \once \override Staff.TimeSignature.stencil =
%   #(lambda (grob)
%     (grob-interpret-markup grob
%      #{ \markup \number \override #'(baseline-skip . 0)
%         { \column { 3 4 } \column { 2 4 } } #}))

commonTime = \once \override Staff.TimeSignature.stencil =
  #(lambda (grob)
    (grob-interpret-markup grob
     #{ \markup \number % \override #'(baseline-skip . 0)
        { 4 } #}))

doubleTime = \once \override Staff.TimeSignature.stencil =
  #(lambda (grob)
    (grob-interpret-markup grob
     #{ \markup \number % \override #'(baseline-skip . 0)
        { 8 } #}))

% commonTime = { 
%   \defaultTimeSignature
%   \set Staff.timeSignatureFraction = #'(4 . 4)
% }

#(add-simple-time-signature-style 'simplify-quad-dot
   (lambda (fraction)
      (make-compound-meter-markup 
        (if (equal? (car fraction) 31)
            (quotient 128 (cdr fraction))
            fraction))))

#(define-public (format-time-sig-note grob)
   (let* ((frac (ly:grob-property grob 'fraction))
          (num (if (pair? frac) (car frac) 4))
          (den (if (pair? frac) (cdr frac) 4))
          (m (markup #:override '(baseline-skip . 0.5)
                     #:center-column (#:number (number->string num)
                                               #:override '(style . default)
                                               #:note 
                                                 (ly:make-duration (1- (integer-length den)) 0 1)
                                                 DOWN))))
     (grob-interpret-markup grob m)))

#(define-public (format-quote-time-sig-note grob)
  (let* ((frac (ly:grob-property grob 'fraction))
         (num (if (pair? frac) (car frac) 4)))
    (if (equal? 31 num)
        (let* ((den (if (pair? frac) (cdr frac) 4))
               (den (quotient den 8))
               (num 4)
               (duration (ly:make-duration (1- (integer-length den)) 0 1))
               (m (markup #:override '(baseline-skip . 0.5)
                          #:center-column 
                             (#:number (number->string num)
                               #:override '(style . default)
                               #:pad-x 0.5
                               #:line
                               (#:concat 
                                 (#:large (#:lower 1.4 #:pad-x -0.5 "“"))
                                 (#:pad-x -0.5 #:note duration DOWN)
                                 (#:large (#:lower 1.4 #:pad-x -0.5 "”")))))))
          (grob-interpret-markup grob m))
          (ly:time-signature::print grob))))

\tagGroup #'(clarinet harpsichord flute downStem)

greyout = #(define-music-function
  (music)(ly:music?)
  #{ << #music
        {  \override NoteHead.color = "gray"
           \override Stem.color = "gray"
           \override Beam.color = "gray"
           \override Accidental.color = "gray"
           \override Tie.color = "gray"
           \override Staff.TimeSignature.color = "gray"
           \override Dots.color = "gray"
           \override OttavaBracket.color = "gray"
           \override NoteHead.layer = #-1
           \override Stem.layer = #-1
           \override Beam.layer = #-1
           \override Accidental.layer = #-1
           \override Tie.layer = #-1
           \override Dots.layer = #-1
           \override Flag.layer = #-1
           \override Staff.TimeSignature.layer = #-1
           % \grace { s32 }
           \stopStaff
           \override Staff.LedgerLineSpanner.color = "gray"
           \override Staff.Clef.color = "gray"
           \override Staff.LedgerLineSpanner.layer = #-1
           \override Staff.TimeSignature.layer = #-1
           \override Staff.Clef.layer = #-1
           \startStaff
        }
    >> #})

headlessize = #(define-music-function
  (music)(ly:music?)
  (music-map (lambda (m)
                     (if (music-is-of-type? m 'note-event)
                         (let ((duration (ly:music-property m 'duration)))
                              (if (> (ly:duration-log duration) 2)
                                  #{ \tag #'harpsichord { 
                                       \once \override NoteHead.color = "grey"
                                       \once \override NoteHead.font-size = #-1
                                       \once \override NoteHead.layer = #-1
                                       \once \override Accidental.color = "grey"
                                       \once \override Accidental.font-size = #-1
                                       \once \override Accidental.layer = #-1
                                     }
                                     #m #}
                                  m))
                         m))
             music))

#(define-public (headlessUnder dur music)
  (music-map (lambda (m)
                     (if (music-is-of-type? m 'note-event)
                         (let ((duration (ly:music-property m 'duration)))
                              (if (> (ly:duration-log duration) (1- (integer-length dur)))
                                  #{ \tag #'harpsichord { 
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Accidental.transparent = ##t
                                        \once \override Staff.LedgerLineSpanner.transparent = ##t
                                      }
                                     #m #}
                                  m))
                         m))
             music))

headlessInside = #(define-music-function
  (music)(ly:music?)                 
  (if (music-is-of-type? music 'sequential-music)
      (let* ((elements (ly:music-property music 'elements))
             (first (car elements))
             (middle (reverse (cdr (reverse (cdr elements)))))
             (last (car (reverse elements))))
            #{ #first
               #(headlessize (make-music
                               'SequentialMusic
                               'elements
                               middle))
                #last #})
      music))

divideHands = #(define-music-function
  (music)(ly:music?)
  (if (music-is-of-type? music 'sequential-music)
      (let ((elements (ly:music-property music 'elements)))
           #{ \override TextSpanner.bound-details.left.text = \markup { \combine \draw-line #'(0 . 1) \draw-line #'(1 . 0) "hands divide" }
              \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1) }
              #(car elements) \tag #'harpsichord \startTextSpan
              #(make-music 'SequentialMusic 'elements (cdr elements))
              \tag #'harpsichord \stopTextSpan
            #})
      music))


startDivide = #(define-music-function
  (music)(ly:music?)
  #{ \override TextSpanner.bound-details.left.text = \markup { 
    \combine \draw-line #'(0 . -0.5) \draw-line #'(0.5 . 0) 
    \lower #0.5 "hands divide" }
     \override TextSpanner.bound-details.right.text = \markup { 
      % \draw-line #'(0 . -0.5) 
    }
     #music \tag #'harpsichord ^\startTextSpan    
  #})

startDiv = #(define-music-function
  (music)(ly:music?)
  #{ \override TextSpanner.bound-details.left.text = \markup { 
    \combine \draw-line #'(0 . -0.5) \draw-line #'(0.5 . 0) 
    \lower #0.5 \smaller "div." }
     \override TextSpanner.bound-details.right.text = \markup { 
      \draw-line #'(0 . -0.5) 
    }
     #music \tag #'harpsichord ^\startTextSpan    
  #})

stopDivide = #(define-music-function
  (music)(ly:music?)
  #{ \revert TextSpanner.bound-details.left.text
     \revert TextSpanner.bound-details.right.text
     #music \tag #'harpsichord \stopTextSpan
  #}
)

stopDiv = #stopDivide

hideRest = { 
  \tag #'tmi \once \override Rest.transparent = ##t
  \tag #'tmi \once \override Dots.transparent = ##t
}

harmonicBlack = #(define-music-function
  (music)(ly:music?)
  #{
    \once \override NoteHead.style = #'harmonic-mixed
    #music
  #})