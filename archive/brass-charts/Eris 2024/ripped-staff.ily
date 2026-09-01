%% http://lsr.di.unimi.it/LSR/Item?id=668
%% see also http://lilypond.1069038.n5.nabble.com/LSR-v2-18-quot-Ripped-torn-staff-lines-quot-does-not-compile-tc159381.html

%LSR updated by Harm (Feb. 2014)
%LSR This snippet was contributed by Mark Polesky for version 2.12.0

%% preferences %%

tearWidth = #1
tearXext = #'(0 . 0)

zigzagDefaultYext = #'(-4 . 4)
zigzagDefaultSerrationCount = #5
zigzagTearLineWidth = #0.1
zigzagTearAngle = #90
zigzagTearXext = #'(0 . 0)


%% start definitions %%

tearGeneric =
  #(define-music-function (lengths) (list?)
  (let ((x-ext
          (lambda (n)
            (cons (* (list-ref lengths n) (/ tearWidth 4)) tearWidth)))
        (y-ext '(1.5 . 2.5)))

  #{
    \once \override Staff.BarLine.stencil = #ly:text-interface::print
    \once \override Staff.BarLine.text = \markup
      \override #'(baseline-skip . 0) \with-color #white
      \column {
        \filled-box #(x-ext 0) #y-ext #0
        \filled-box #(x-ext 1) #y-ext #0
        \filled-box #(x-ext 2) #y-ext #0
        \filled-box #(x-ext 3) #y-ext #0
        \filled-box #(x-ext 4) #y-ext #0
      }
    \once \override Staff.BarLine.layer = #1
    \once \override Staff.BarLine.X-extent =
      #`(,(car tearXext) . ,(- (+ (cdr tearXext) tearWidth) 0.1))
    \break
  #}))

tear =
  #(define-music-function () ()
  #{
    \tearGeneric
      #(let loop ((unused '(0 1 2 3 4))
                  (lengths '()))
        (if (= (length lengths) 5)
            lengths
            (let* ((x (random (length unused)))
                   (y (- (length unused) x))
                   (z (list-ref unused x)))
             (loop (append (list-tail unused (+ x 1))
                           (list-tail (reverse unused) y))
                   (append lengths `(,z))))))
  #})

tearCustom =
  #(define-music-function (lengths) (list?)
  #{ \tearGeneric #lengths #})

zigzagTearCustom =
  #(define-music-function (y-ext serrations)
    (pair? number?)
    (let* ((zigzagTearHeight (- (cdr y-ext) (car y-ext)))
           (deg2rad (lambda (x) (* x (/ (* (atan 1) 4) 180))))
           (zigzagTearWidth
              (/ zigzagTearHeight
                 serrations
                 (* (tan (/ (deg2rad zigzagTearAngle) 2)) 2))))
  #{
    \once \override Staff.BarLine.stencil = #ly:text-interface::print
    \once \override Staff.BarLine.text =
      \markup \with-dimensions
               #`(0 . ,zigzagTearWidth)
               #`(,(car y-ext) . ,(cdr y-ext))
        \postscript

#(string-append "
/linewidth " (number->string zigzagTearLineWidth) " def
/height " (number->string zigzagTearHeight) " def
/serrations " (number->string serrations) " def
/width " (number->string zigzagTearWidth) " def
/padding " (number->string (cdr zigzagTearXext)) " 2 width mul add def

/serrationHeight height serrations div def
/y0 " (number->string (cdr y-ext)) " def
/xn width def
/yn serrationHeight 2 div neg def

/plotAngle {
  xn yn rlineto
  xn neg yn rlineto
} def

/plotSerrations {
  serrations { plotAngle } repeat
} def

%% whiteout:
1 setgray
linewidth setlinewidth
0 y0 linewidth add moveto %% (whiteout staff-lines when y-exts are integers)
0 y0 lineto
plotSerrations
0 linewidth neg rlineto %% (whiteout staff-lines when y-exts are integers)
padding 0 rlineto
0 height linewidth 2 mul add rlineto %% (account for top and bottom linewidth)
padding neg 0 rlineto
fill stroke

%% draw serrations:
newpath
0 setgray
linewidth setlinewidth
0 y0 moveto
plotSerrations
stroke")

    \once \override Staff.BarLine.layer = #1
    \once \override Staff.BarLine.X-extent =
      #`(,(car zigzagTearXext) .
       ,(- (+ (cdr zigzagTearXext) zigzagTearWidth) 0.1))
    \break
  #}))

zigzagTear = \zigzagTearCustom #zigzagDefaultYext #zigzagDefaultSerrationCount

%% end definitions %%

%% example of a custom tear-pattern:
tearRagged = \tearCustom #'(3 1 3 1 3)

% music = { g'4 d'' b' d'' }
% \header { tagline=##f }
% \score {
%   {
%     %% random line-lengths:
%     \music \tear

%     %% set line-lengths on-the-fly:
%     \music \tearCustom #'(0 1 2 3 4)

%     %% define a custom tear-pattern if you want consistency (see above):
%     \music \tearRagged

%     %% default zigzag tear:
%     \music \zigzagTear

%     %% set zigzag Y-extent and serration-count on-the-fly:
%     \transpose c c' \music \zigzagTearCustom #'(-4 . 7) #4
%   }
%   \layout {
%     indent = #0
%     ragged-right = ##t
%   }
% }


