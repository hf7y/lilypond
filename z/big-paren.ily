\version "2.19.82"

%% http://lsr.di.unimi.it/LSR/Item?id=186
%% see also http://www.lilypond.org/doc/v2.18/Documentation/notation/inside-the-staff#parentheses
%% see also http://lilypond.1069038.n5.nabble.com/LSR-v2-18-quot-Parenthesize-note-heads-using-a-Scheme-function-quot-interest-tc159509.html
parentheAll = #(define-music-function (parser location note) (ly:music?)
#{
  \once \override ParenthesesItem.font-size = #-1
  \once \override ParenthesesItem.stencil = #(lambda (grob)
       (let* ((acc (ly:grob-object (ly:grob-parent grob Y) 'accidental-grob))
              (dot (ly:grob-object (ly:grob-parent grob Y) 'dot)))
         (if (not (null? acc)) (ly:pointer-group-interface::add-grob grob 'elements acc))
         (if (not (null? dot)) (ly:pointer-group-interface::add-grob grob 'elements dot))
         (parentheses-item::print grob)))
  \parenthesize $note
#})

#(define (parenthesize-callback callback)
   (define (parenthesize-stencil grob)
     (let* ((fn (ly:grob-default-font grob))
            (pclose (ly:font-get-glyph fn "accidentals.rightparen"))
            (popen (ly:font-get-glyph fn "accidentals.leftparen"))
            (subject (callback grob))            
            ;; get position of stem
            (stem-pos (ly:grob-property grob 'stem-attachment))            
            ;; remember old size
            (subject-dim-x (ly:stencil-extent subject X))
            (subject-dim-y (ly:stencil-extent subject Y)))

       ;; add parens
       (set! subject
             (ly:stencil-combine-at-edge 
              (ly:stencil-combine-at-edge subject X RIGHT pclose 0)
              X LEFT popen 0))

       ;; adjust stem position
       (set! (ly:grob-property grob 'stem-attachment)
             (cons (- (car stem-pos) 0.43) (cdr stem-pos)))

       ;; adjust size
       (ly:make-stencil
        (ly:stencil-expr subject)
        (interval-widen subject-dim-x 0.5)
        subject-dim-y)))
   
   parenthesize-stencil)

big-paren = #(define-music-function (music)(ly:music?) #{
  \override NoteHead.stencil = #(parenthesize-callback ly:note-head::print)
  { $music }
  \revert NoteHead.stencil
#})

explicit-harmonic = #(define-music-function (resultant fundamental)(ly:music? ly:music?) #{
  <<
  \new Voice {
    \voiceOne
    \override Stem.length = #0
    \small $resultant 
  }
  $fundamental
  >>
#})
