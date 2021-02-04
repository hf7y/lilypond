%Aaron Hill lilypond@hillvisions.com
%lilypond-user mailing list 12/20/2020

\version "2.20.0"

#(define (symbol-pair? arg)
   (and (pair? arg) (symbol? (car arg)) (symbol? (cdr arg))))
#(define (symbol-pair-list? arg)
   (and (list? arg) (every symbol-pair? arg)))

replaceContextChanges =
#(define-music-function
   (replacements music)
   (symbol-pair-list? ly:music?)
   (define (proc music)
    (if (music-is-of-type? music 'context-specification)
     (ly:music-set-property! music 'context-id
      (let* ((id (ly:music-property music 'context-id))
             (sym (string->symbol id)))
       (if (eq? "" id) id ; Sometimes context-id is an empty string.
        (symbol->string (ly:assoc-get sym replacements sym))))))
    (if (music-is-of-type? music 'auto-change-instruction)
     (ly:music-set-property! music 'context-change-list
      (map (lambda (p) (let ((mom (car p)) (sym (cdr p)))
            (cons mom (ly:assoc-get sym replacements sym))))
       (ly:music-property music 'context-change-list))))
    music)
   #{ \musicMap #proc #music #})

%<< \new Staff = upper { \clef treble s1*3 }
%    \new Staff = middle { \clef alto s1*3 }
%    \new Staff = lower { \clef bass
%     \replaceContextChanges #'((down . lower) (up . middle))
%     \autochange { a4 b d' e' }
%     \replaceContextChanges #'((down . middle) (up . upper))
%     \autochange { a4 b d' e' }
%     \replaceContextChanges #'((down . upper) (up . lower))
%     \autochange { a4 b d' e' }
%    } >>
%%%%


