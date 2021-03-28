\version "2.20.0"
\include "../math.ly"

% firstHalf = #(define-music-function
%     (noteX)
%     (ly:music?)
%     (if (= 0 (ly:duration-dot-count (ly:music-property noteX 'duration)))
%         #{ \n $noteX \< #}
%         #{ \n \giveDot $noteX r1 \trimDot $noteX \< #}))

firstHalf = #(define-music-function
    (noteX)
    (ly:music?)
    #{ \n $noteX \< #} )


secondHalf = #(define-music-function
    (noteY)
    (ly:music?)
    #{ \n \trimDot $noteY \> \giveDot $noteY r1\! #})

% firstHalfFifth = #(define-music-function
%     (noteX chord)
%     (ly:music? ly:music?)
%     (if (= 0 (ly:duration-dot-count (ly:music-property noteX 'duration)))
%         #{ \n \giveDur $noteX \transpose c #(ly:music-property noteX 'pitch) $chord \<^\markup \italic "sul pont." #}
%         #{ \giveDot $noteX r1 \n \giveDur \trimDot $noteX \transpose c #(ly:music-property noteX 'pitch) $chord \<^\markup \italic "sul pont." #}))

firstHalfFifth = #(define-music-function
    (noteX chord)
    (ly:music? ly:music?)
    #{ \n \giveDur $noteX \transpose c #(ly:music-property noteX 'pitch) $chord \<^\markup \italic "sul pont." #} )

secondHalfFifth = #(define-music-function
    (noteY chord)
    (ly:music? ly:music?)
    #{ \n \giveDur \trimDot $noteY \transpose c #(ly:music-property noteY 'pitch) $chord \>^\markup \italic "sul pont." \giveDot $noteY r1\!  #})

hiss = #(define-music-function
    (instruments noteA noteB)
    ((list? tutti) ly:music? ly:music?)
    (let* ((pitchA (ly:music-property noteA 'pitch))
             (durA (ly:music-property noteA 'duration))
             (pitchB (ly:music-property noteB 'pitch))
             (durB (ly:music-property noteB 'duration))
             (pitchEq (equal? pitchA pitchB))
             (tie (if pitchEq #{~#}))
             (randA (random 2))
             (randB (random 2))
             (function 
                (lambda* (inst music #:optional (before #{#}) (lyrics #{#}))
                    (if (memq inst instruments)
                      #{ \context Staff = #(symbol->string inst) << 
                            \context Voice = #(symbol->string inst) {
                                $before $music }
                            \context Lyrics = #(symbol->string inst) 
                                \lyricsto #(symbol->string inst) { $lyrics } >> #}))))
   #{ \autoTimeSig
    <<
    	#(function 'fl 
                    #{ \fixed c'' { \firstHalf $noteA #tie \secondHalf $noteB } #} 
                    #{#} 
                    (if (= 1 (random 3))
                        #{ ⟨f⟩ #} 
                        #{ ⟨s⟩ #} ))
		#(function 'cl #{ \fixed c'  { \firstHalf $noteA #tie \secondHalf $noteB } #} )
        #(function 'bn #{ \fixed c   { \firstHalf $noteA #tie \secondHalf $noteB } #} )
        #(function 'tbn (if (= 1 (random 2))
                            #{ \no-line <<  \tag #'verbose \footnote #'(0 . 0) "air" \hide \giveDur $noteA r1 
                               \transpose $pitchA d \square { \firstHalf $noteA ~ \secondHalf \giveDur $noteB $noteA } >> #}
                             #{ \fixed c   { \firstHalf $noteA #tie \secondHalf $noteB } #} ))

		#(function 'up   #{ \giveDur $noteA r1 \giveDur $noteB r1 #} )
		#(function 'down #{ \giveDur $noteA r1 \giveDur $noteB r1 #} )

        #(function 'vn #{ \fixed c'' { \firstHalfFifth $noteA <c g>1 #(trem durA) #tie \secondHalfFifth $noteB { <c g>1 #(trem durB) }  } #} )
        #(function 'va #{ \fixed c' { \firstHalfFifth $noteA <c g>1 #(trem durA) #tie \secondHalfFifth $noteB { <c g>1 #(trem durB) } } #} )
        #(function 'vc #{ \fixed c { \firstHalfFifth $noteA <c g>1 #(trem durA) #tie \secondHalfFifth $noteB { <c g>1 #(trem durB) } } #} )
        #(function 'db #{ \fixed c, { \firstHalfFifth $noteA <c f>1 #(trem durA) #tie \secondHalfFifth $noteB { <c f>1 #(trem durB) } } #} )

	
        %% CLARINET MULTIPHONIC IDEA
        % #(if (memq 'cl instruments) 
        %           #{
        %               \context Staff = "cl" {
        %                   #(let ((ls (mome3dur (ly:moment-add (ly:duration-length durA)
        %                                                       (ly:duration-length durB)))))
        %                           (make-sequential-music 
        %                               (list (changeDur (car ls) clA)
        %                                     (if (null? (cdr ls)) #{#} 
        %                                         (changeDur (cadr ls) #{ r1 #})))))
        %         }
        %     #})
        %%
    >>
    #}))