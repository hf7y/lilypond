\version "2.24.3"
% Using alists. See: https://lilypond.org/doc/v2.25/Documentation/extending/association-lists-_0028alists_0029
%(define my-alist '((1  . "A") (2 . "B") (3 . "C")))

\include "composition-functions.ly"
#(set-default-paper-size "letter")

% #(define (make-pentachord index)
%   (make-music 'EventChord
%     'elements 
%     (map
%       (lambda (note)
%         (make-music
%           'NoteEvent
%           'duration (ly:make-duration 0 0)
%           'pitch (ly:make-pitch 0 note)))
%         (let pitch-list
%              ((interval-list 
%                 (map (lambda (modulus denominator) 
%                              (+ (modulo (quotient index denominator) modulus) 1))
%                      (list 3 3 2 2 2) ;;hand spacing moduli determined by experiment
%                      (list 24 8 4 2 1)))) ;;denominators calculated for this hand spacing
%              (if (null? interval-list)
%                  '()
%                  (let ((rest (cdr interval-list)))
%                     (if (null? rest)
%                         interval-list
%                         (cons (car interval-list)
%                               (pitch-list
%                                 (cons
%                                   (+ (car interval-list) (car rest))
%                                   (cdr rest)))))))))))

flatten-note = #(define-music-function
  (music) (ly:music?)
  (if (music-is-of-type? music 'note-event)
      (let ((pitch (ly:music-property music 'pitch)))
        (set! (ly:music-property music 'pitch)
              (ly:make-pitch
                (ly:pitch-octave pitch)
                (ly:pitch-notename pitch)
                -1/2))))
  music)

#(define (generate-flattener notenames-to-flatten)
  (define-music-function
    (note) (ly:music?)
    (if (music-is-of-type? note 'note-event)
      (let ((pitch (ly:music-property note 'pitch)))
        (if (member (ly:pitch-notename pitch) notenames-to-flatten)
            (set! (ly:music-property note 'pitch)
                  (ly:make-pitch
                    (ly:pitch-octave pitch)
                    (ly:pitch-notename pitch)
                    (- (ly:pitch-alteration pitch) 1/2))))))
    note))

#(define (generate-sharpener notenames-to-flatten)
  (define-music-function
    (note) (ly:music?)
    (if (music-is-of-type? note 'note-event)
      (let ((pitch (ly:music-property note 'pitch)))
        (if (member (ly:pitch-notename pitch) notenames-to-flatten)
            (set! (ly:music-property note 'pitch)
                  (ly:pitch-transpose pitch (ly:make-pitch 0 0 1/2))))))
    note))

#(define (flatten depth music)
  (music-map
    (generate-flattener 
     (let first-fifths ((d depth))
          (if (zero? d)
             '()
             (cons (modulo (+ (* d 3) 3) 7)
                   (first-fifths (- d 1))))))
        music))

#(define (sharpen depth music)
  (music-map
    (generate-sharpener
     (let first-fifths ((d depth))
          (if (zero? d)
             '()
             (cons (modulo (- (* d 4) 1) 7)
                   (first-fifths (- d 1))))))
        music))

\header {
  title = "3222 Pentachords"
  tagline = "zvp 2024-12-25"
}

\paper { indent = 0 }

\layout {
  \context {
    \Score
    \omit BarNumber
  }
  \context {
    \Staff
    \omit TimeSignature
  }
}

\markup { \null \vspace #3 }
\score {
  \new PianoStaff {
    <<
      \new Staff {
        #(let loop ((index 0))
            (if (< index 168)
                #{
                  #(chordify (pentachord index))
                  #(make-music 'FingeringEvent 'digit index)
                  #(loop (+ index 1))
                #}))
      }
      \new Staff {
        \clef "bass"
        #(let loop ((index 0))
            (if (< index 168)
                #{
                  \bar ""
                  #(if (= 0 (modulo index 4))
                      #{ \bar "'" #})
                  #(if (= 0 (modulo index 8))
                      #{ \bar "|" #})
                  #(if (= 0 (modulo index 24))
                      #{ \bar "." #})
                  #(if (= 0 (modulo index 12))
                      #{ \break #})              
                  #(chordify (inv-pentachord index))
                  % #(make-music 'FingeringEvent 'digit index)                                         
                  #(loop (+ index 1))
                #}))
        \bar "|."
      }
    >> 
  }
}