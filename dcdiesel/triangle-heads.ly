\version "2.17.29"

% TWINNOTE SCRIPTS
% version: Oct 22, 2013

% Absolute value helper function
% when LilyPond goes to Guile 2.0 you can just use "abs" without defining it here
#(define (abs x) (if (> x 0) x (- 0 x)))

% PITCH LAYOUT ON STAFF
#(define (twinnote-pitch-layout p)
   (floor (/ (+ (ly:pitch-semitones p) 1) 2)))

% NOTE HEAD STENCILS
% trad oval dimensions: 
% horizontal: 0  0.65625  1.3125
% vertical: -0.5 0 0.5

#(define (make-notehead-stencil width isUp width-adjust)
   (let* ((width (* width width-adjust))
          (Xright width)
          (Xleft 0)
          (Xmid (* Xright 0.5))
          (Xcurv-right (+ Xright (* width 0.076))) ;; 0.076 of 1.3125 is ~ 0.1
          (Xcurv-left (- Xleft (* width 0.076)))
          (Ytop 0)
          (Ybottom -1)
          (Ycurv -0.5)
          (line-width 0.1)
          ;; nr = inner border for downwards triangle
          (Xright-nr (- Xright (* width 0.152))) ;; 0.152 of 1.3125 is ~ 0.2
          (Xleft-nr (+ Xleft (* width 0.152)))
          (Xmid-nr Xmid)
          (Xcurv-right-nr (+ Xright-nr (* width 0.053))) ;; 0.053 of 1.3125 is ~ 0.07
          (Xcurv-left-nr (- Xleft-nr (* width 0.053)))
          (Ytop-nr (- Ytop 0.2))
          (Ybottom-nr (+ Ybottom 0.08))
          (Ycurv-nr (- Ytop 0.5))
          ;; draw the stencil
          (stl (if isUp
                   ;; upwards triangle
                   (ly:stencil-rotate
                    (make-connected-path-stencil
                     `((,Xleft ,Ytop)
                       (,Xcurv-left ,Ycurv   ,Xmid ,Ybottom   ,Xmid ,Ybottom)
                       (,Xmid ,Ybottom   ,Xcurv-right ,Ycurv   ,Xright ,Ytop)
                       (,Xleft ,Ytop))
                     line-width   1.0   1.0   #f   #t)
                    180 0 0)
                   ;; downwards hollow triangle
                   (ly:stencil-rotate
		     (make-connected-path-stencil
		      `((,Xleft ,Ytop)
			(,Xcurv-left ,Ycurv   ,Xmid ,Ybottom   ,Xmid ,Ybottom)
			(,Xmid ,Ybottom   ,Xcurv-right ,Ycurv   ,Xright ,Ytop)
			(,Xleft ,Ytop)
			;; inner border
			(,Xleft-nr ,Ytop-nr)
			(,Xright-nr ,Ytop-nr)
			(,Xcurv-right-nr ,Ycurv-nr  ,Xmid-nr ,Ybottom-nr  ,Xmid-nr ,Ybottom-nr)
			(,Xmid-nr ,Ybottom-nr ,Xcurv-left-nr ,Ycurv-nr ,Xleft-nr ,Ytop-nr))
		      line-width   1.0   1.0   #f   #t)
                    180 0 0))))
     ;; move the stencil into place
     (ly:stencil-translate stl
       (cons 
        (* -0.5 (- width 1.3125))
        0.5))))

% NOTE HEAD HANDLER
%
% shapes, size, and stem attachment
%
% First get needed properties from the notehead grob:
% 1. resizing value (fsz --> mult)
% 2. pitch (ptch) --> pitch in semitones (semi)
% 3. note column (notecol, parent of notehead grob) --> stem (stm) --> stem direction (stmdir)
% 4. set stem attachment values
%
% Note Heads: assign correct notehad using pitch in semitones,
% resize based on current font-size using stencil-scale
%
% Stem Attachment: Based on semitone pitch (odd or even),
% is the notehead an up or down triangle,
% Then based on stem direction, assign stem attachment values

#(define ((twinnote-note-heads upTri dnTri upTri-wn dnTri-wn) grob)
   (let* ((fsz (ly:grob-property grob 'font-size 0.0))
          (mult (magstep fsz))
          (ptch (ly:event-property (event-cause grob) 'pitch))
          (semi (ly:pitch-semitones ptch))
          (dur-log (ly:grob-property grob 'duration-log))
          (notecol (ly:grob-parent grob X))
          (stm (ly:grob-object notecol 'stem))
          (stmdir (ly:grob-property stm 'direction))
          (upTriUpStem (cons 1 -0.98))
          (upTriDnStem (cons 1 0.80))
          (dnTriUpStem (cons 1 0.90))
          (dnTriDnStem (cons 1 -0.98)))
     ;; Note Heads
     (set! (ly:grob-property grob 'stencil)
           (ly:stencil-scale
            (if (= (remainder semi 2) 0)
                (if (< dur-log 1) dnTri-wn dnTri)
                (if (< dur-log 1) upTri-wn upTri))
            mult mult))
     ;; Stem Attachment
     (set! (ly:grob-property grob 'stem-attachment)
           (if (= (remainder (abs semi) 2) 1)
               (if (= UP stmdir) upTriUpStem upTriDnStem)
               (if (= DOWN stmdir) dnTriDnStem dnTriUpStem)))))


% HALF NOTE STEMS
%
% double-stems. Use -0.42 or 0.15 to change which side the 2nd stem appears
%
#(define (double-stemmer grob)
   (if (= 1 (ly:grob-property grob 'duration-log))
       (ly:stencil-combine-at-edge
        (ly:stem::print grob)
        X
        (- (ly:grob-property grob 'direction))
        (ly:stem::print grob)
        -0.42 )
       (ly:stem::print grob)))

triangle = #(define-music-function (music)(ly:music?) #{
  \override Stem.Y-offset = #-1
  \override Stem.length = #14
  \override NoteHead.before-line-breaking = 
    #(twinnote-note-heads
      (make-notehead-stencil 1.3125 #f 1)
      (make-notehead-stencil 1.3125 #f 1)
      (make-notehead-stencil 1.76 #f 1)
      (make-notehead-stencil 1.76 #f 1))
  $music
  \revert Stem.Y-offset
  \revert Stem.length
  \revert NoteHead.before-line-breaking
#})
