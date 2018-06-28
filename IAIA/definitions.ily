\version "2.19.80"
%Created Sun June 17 00:02 EDT 2018 at Walden School

redHead = #(define-music-function
  (parser location mus)
  (ly:music?)
  #{
    \override NoteHead.color = #red
    #mus
    \revert NoteHead.color
  #})

topGliss = \once \set glissandoMap = #'((1 . 1) (0 . 2))

hh = #(define-music-function 
  (parser location notes)
  (ly:music?)
  #{
    \temporary \override NoteHead.style = #'harmonic-black
    \temporary \override Glissando.thickness = #3
  %%\temporary \override Glissando.bound-details.left.padding = #-0.1
    \revert NoteColumn.glissando-skip
    #notes
    \revert Glissando.bound-details
    \revert NoteHead.style
    \revert Glissando.thickness
  #})

HH = #(define-music-function 
  (parser location notes)
  (ly:music?)
  #{
    \temporary \override NoteHead.style = #'harmonic-black
    \temporary \override Glissando.thickness = #4
  %%\temporary \override Glissando.bound-details.left.padding = #-0.1
    \temporary \override Glissando.bound-details.right.padding = #-4
    \override Glissando.bound-details.right.arrow = ##f
    \revert NoteColumn.glissando-skip
    #notes
    \revert Glissando.bound-details.left.padding
    \revert Glissando.bound-details.right.padding
    \override Glissando.bound-details.right.arrow = ##t
    \revert NoteHead.style
    \revert Glissando.thickness

  #})
hH = #(define-music-function 
  (parser location notes)
  (ly:music?)
  #{
    \temporary \override NoteHead.style = #'harmonic-black
    \temporary \override Glissando.thickness = #4
  %%\temporary \override Glissando.bound-details.left.padding = #-0.1
    \temporary \override Glissando.bound-details.right.padding = #-1
    \override Glissando.bound-details.right.arrow = ##f
    \revert NoteColumn.glissando-skip
    #notes
    \revert Glissando.bound-details.left.padding
    \revert Glissando.bound-details.right.padding
    \override Glissando.bound-details.right.arrow = ##t
    \revert NoteHead.style
    \revert Glissando.thickness
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
  \override Glissando.thickness = #3
  \override TextSpanner #'(bound-details left-broken text) = ##f 
  \override TextSpanner #'(bound-details right-broken text) = ##f

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
sept = ^\markup {\small 7th \small par.}

ord = ^\markup {\italic N}
ordl = \once \override TextSpanner.bound-details.left.text =
  \markup {N}
ordr = \once \override TextSpanner.bound-details.right.text =
  \markup {N}

pont = ^\markup {\italic S.P.}
pontl = \once \override TextSpanner.bound-details.left.text = 
  \markup {S.P.} 
pontr = \once \override TextSpanner.bound-details.right.text = 
  \markup {S.P.} 

tasto = ^\markup {\italic S.T.}
tastol = \once \override TextSpanner.bound-details.left.text = 
  \markup {S.T.} 
tastor = \once \override TextSpanner.bound-details.right.text = 
  \markup {S.T.} 

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
