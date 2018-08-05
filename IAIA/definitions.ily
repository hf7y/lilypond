\version "2.19.80"
%Created Sun June 17 00:02 EDT 2018 at Walden School

fpp = #(make-dynamic-script (markup #:line ( 
             #:dynamic "fpp" )))

redHead = #(define-music-function
  (parser location mus)
  (ly:music?)
  #{
    #mus
  #})

topGliss = \once \set glissandoMap = #'((1 . 1) (0 . 2))

half-harmonic = #(define-music-function
  (parser location mus)
  (ly:music?)
  #{
    \temporary \override NoteHead.style = #'harmonic-black
    \revert NoteColumn.glissando-skip
    \temporary \override Glissando.bound-details.left.padding = #-0.1
    \temporary \override Glissando.line-cap-style = #'square
    #mus
    \revert Glissando.bound-details.left.padding
    \revert Glissando.bound-details
    \revert Glissando.thickness
    \revert NoteHead.style
  #})

hh = #(define-music-function 
  (parser location notes)
  (ly:music?)
  #{
    \temporary \override Glissando.arrow-length = #1.3
    \temporary \override Glissando.arrow-width = #0.5
    \temporary \override Glissando.thickness = #3
    \half-harmonic { #notes }
    \revert Glissando.arrow-length
    \revert Glissando.arrow-width
  #})

Hh = #(define-music-function
  (parser location num notes)
  (number? ly:music?)
  #{
    \temporary \override Glissando.bound-details.right.padding = #num
    \override Glissando.bound-details.right.arrow = ##f
    \temporary \override Glissando.thickness = #3
    \half-harmonic { #notes }
    \revert Glissando.bound-details.right.padding
    \override Glissando.bound-details.right.arrow = ##t
  #})

HH = #(define-music-function 
  (parser location notes)
  (ly:music?)
  #{
    \temporary \override Glissando.bound-details.right.padding = #-4
    \override Glissando.bound-details.right.arrow = ##f
    \temporary \override Glissando.thickness = #3
    \half-harmonic { #notes }
    \revert Glissando.bound-details.right.padding
    \override Glissando.bound-details.right.arrow = ##t
  #})

hH = #(define-music-function 
  (parser location notes)
  (ly:music?)
  #{
    \temporary \override Glissando.bound-details.right.padding = #-1
    \override Glissando.bound-details.right.arrow = ##f
    \temporary \override Glissando.thickness = #3
    \half-harmonic { #notes }
    \revert Glissando.bound-details.right.padding
    \override Glissando.bound-details.right.arrow = ##t
  #})

noHead = #(define-music-function (music)(ly:music?)
  #{
    \temporary \override NoteHead.transparent = ##t
    \temporary \override NoteColumn.glissando-skip = ##t
    \temporary \override NoteHead.no-ledgers = ##t
    $music
    \revert NoteHead.no-ledgers
    \revert NoteHead.transparent
    \revert NoteColumn.glissando-skip
  #})

noAcc = \once \override Accidental #'stencil = ##f

#(define (square grob)
  (let ((duration (ly:grob-property grob 'duration-log)))
    (if (>= duration 2)
      (grob-interpret-markup grob
        #{
        \markup \filled-box #'(-0.62 . 0.62) #'(-0.46 . 0.46) #0
        #})
      (grob-interpret-markup grob
        #{
        \markup
        \override #'(box-padding . 0)
        \override #'(thickness . 2)
        \box {
          \transparent
          \filled-box #'(-0.4 . 0.4) #'(-0.3 . 0.3) #0
        }
        #}))))

spannerStyle = {
  \override TextSpanner.style = #'line
  \override TextSpanner.thickness = #2
  \override TextSpanner.bound-details.right.arrow = ##t
  \override TextSpanner.bound-details.left.padding = #0
  \override TextSpanner.bound-details.right.padding = #1
  \override TextSpanner #'(bound-details left-broken text) = ##f 
  \override TextSpanner #'(bound-details right-broken text) = ##f

  \override Glissando.thickness = #3
  \override Glissando.bound-details.right.arrow = ##t

  \override Hairpin.to-barline = ##f

  \set harmonicDots = ##t
}

square = \once \override NoteHead.stencil = #square
sq = \square
hm = \harmonic


I = ^\markup {\halign #2 \concat {\teeny I}}
II = ^\markup {\halign #2 \concat {\teeny II}}
III = ^\markup {\halign #2 \concat {\teeny III}}
IV = ^\markup {\halign #2 \concat {\teeny IV}}

textin = {
  \once \override Staff.TextScript.outside-staff-priority = #240 
}
sept = ^\markup {\small "7ᵗʰ par"}


%% T E X T  S P A N N E R  D E F I N I T I O N S    |   |   |
%% T E X T  S P A N N E R  D E F I N I T I O N S    V   V   V

ord = ^\markup {N}
ordl = \once \override TextSpanner.bound-details.left.text =
  \markup {\upright N}
ordr = \once \override TextSpanner.bound-details.right.text =
  \markup {\upright N}

pont = ^\markup {S.P.}
pontl = \once \override TextSpanner.bound-details.left.text = 
  \markup {\upright S.P.} 
pontr = \once \override TextSpanner.bound-details.right.text = 
  \markup {\upright S.P.} 

tasto = ^\markup {S.T.}
tastol = \once \override TextSpanner.bound-details.left.text = 
  \markup {\upright S.T.} 
tastor = \once \override TextSpanner.bound-details.right.text = 
  \markup {\upright S.T.} 

shrink = #(define-music-function (num)(number?)
  #{
    \once \override TextSpanner.bound-details.right.padding = $num
  #})
lift = #(define-music-function (num)(number?)
  #{
    \once \override TextSpanner.staff-padding = $num
  #})
leften = #(define-music-function (num)(number?)
  #{
    \once \override TextSpanner.bound-details.left.padding = $num
  #})




feathr = #(define-music-function (music)(ly:music?)
  #{
    \override Beam.grow-direction = #RIGHT
    \featherDurations #(ly:make-moment 2/3)
    { $music }
    \override Beam.grow-direction = #'()
  #})
feathl = #(define-music-function (music)(ly:music?)
  #{
    \override Beam.grow-direction = #LEFT
    \featherDurations #(ly:make-moment 2/3)
    { $music }
    \override Beam.grow-direction = #'()
  #})

moltoleg = \markup { \italic \tiny "molto legato" }

n = \once \override Hairpin #'circled-tip = ##t
