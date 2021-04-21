\version "2.20.0"

#(define extract-id
  (lambda (music id)
    (let ((context-id (ly:music-property music 'context-id #f))
          (elements (ly:music-property music 'elements #f))
          (element (ly:music-property music 'element #f)))
         (cond (context-id
                (if (equal? context-id id)
                    music
                    '()))
               (elements
                (begin
                 (ly:music-set-property!
                    music
                    'elements
                    (extract-id-elements elements id))
                 music))
               (element
                (begin
                  (ly:music-set-property!
                    music
                    'element
                    (extract-id element id))
                  music))
               (#t music)))))

#(define (extract-id-elements elements id)
    (if (null? elements)
        '()
        (let ((extract-or-null (extract-id(car elements) id)))
             (if (null? extract-or-null)
                 (extract-id-elements (cdr elements) id)
                 (cons extract-or-null
                       (extract-id-elements (cdr elements) id))))))

#(define prev-sig (cons 0 0))
#(define strip-time-sigs
  (lambda (music)
    (let ((denominator (ly:music-property music 'denominator #f))
          (elements (ly:music-property music 'elements #f))
          (element (ly:music-property music 'element #f)))
         (cond (denominator
                (let ((t-pair
                        (cons (ly:music-property music 'numerator) denominator)))
                      (if (equal? t-pair
                                  prev-sig)
                          '()
                          (begin
                            (set! prev-sig t-pair)
                            music))))
               (elements
                (begin
                 (ly:music-set-property!
                    music
                    'elements
                    (strip-time-sigs-elements elements))
                 music))
               (element
                (begin
                  (ly:music-set-property!
                    music
                    'element
                    (strip-time-sigs element))
                  music))
               (#t music)))))

#(define (strip-time-sigs-elements elements)
    (if (null? elements)
        '()
        (let ((extract-or-null (strip-time-sigs (car elements))))
             (if (null? extract-or-null)
                 (strip-time-sigs-elements (cdr elements))
                 (cons extract-or-null
                       (strip-time-sigs-elements (cdr elements)))))))


#(define (export music id)
  (strip-time-sigs (extract-id (ly:music-deep-copy music) id)))