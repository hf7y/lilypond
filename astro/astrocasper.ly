%Thu, 30 May 2019 23:22:39 -0500
\version "2.18.2"

\header {
  title = "Astrocasper"
  subtitle = \markup \normal-text {\italic "for Walden" \small "MMXIX"}
  composer = "Z.V. Pine"
  tagline = ""
}%end header

\include "/home/zach/lilypond/z/frameEngraver.ily"
\include "/home/zach/lilypond/z/note.ily"
\include "/home/zach/lilypond/z/staff.ily"
\include "/home/zach/lilypond/z/square.ily"
\include "/home/zach/lilypond/z/dynamic.ily"
\include "/home/zach/lilypond/z/half-harmonic.ily"

%Definitions
#(define-markup-command (bpm layout props text) (markup?)
  "Center number over note head and add BPM text"
  (interpret-markup layout props
    #{\markup \center-align { #text \tiny "BPM"} #}))

makePercent =
#(define-music-function (note) (ly:music?)
   "Make a percent repeat the same length as NOTE."
   (make-music 'PercentEvent
               'length (ly:music-length note)))

#(define trapKit '(
         (bassdrum        default   #f           -1)
         (snare           default   #f           0)
         (hihat           default   #f           1)))

fpp = #(make-dynamic-script (markup #:line ( 
             #:dynamic "fpp" )))

I = ^\markup {\center-align \concat {\teeny I}}
II = ^\markup {\halign #0 \concat {\teeny II}}
III = ^\markup {\halign #0 \concat {\teeny III}}
IV = ^\markup \center-align \teeny "IV"

stemHack = #(define-music-function
  (parser location mus)
  (ly:music?)
  #{
    \stemUp
    \temporary \override Staff.Stem.length = #11
    \temporary \override Staff.Stem.Y-offset = #-3
    #mus
    \revert Staff.Stem.Y-offset
    \revert Staff.Stem.length
    \stemNeutral
  #})

%%%%%%%%%%%%%%%%%%%%:
%:                 %:
%:  R  a  v  e  l  %:
%:                 %:
%%%%%%%%%%%%%%%%%%%%:

vibraphoneRavel = \stemless \relative c''' {
  \override FrameBracket.no-bracket = ##t
  %hmy0
  \frameStart s8 <g! aes>4_\markup \bpm 360 \frameEnd \hide g8 
    \no-line { s2 | %m1
  s1 | %m2
  s1} | %m3 
  %\bar "!"
  
  %hmy1
  \no-line { s1 | %m4
  s1 | %m5
  s1 | %m6
  s1 | %m7
  s1 | %m8
  s1 | %m9
  s1 | %m10
  s1} | %m11
  %\bar "!"

  %hmy2
  \no-line { s1 | %m12
  s1 | %m13
  s1 | %m14
  s1 | %m15
  s1 | %m16
  s1 | %m17
  s1 | %m18
  s1 | %m19
  s1} | %m20
  %\bar "!"

  %hmy3
  \no-line { s1 | %m21
  s1 | %m22
  s1 | %m23
  s2... \frameExtenderEnd s16 }| %m24
  \frameStart \hide g8 <g! a!>4_\markup \bpm 480 
    \frameEnd \hide g8 \no-line { \hide g8 s8 s4 | %m25
  s1 | %m26
  s1} | %m27
  %\bar "!"

  %hmy4
  \no-line { s1 | %m28
  s1 | %m29
  s1 | %m30
  s1 } | %m31
  %\bar "!"
  
  %hmy5
  \no-line { s1 | %m32
  s1 | %m33
  %\time 2/4
  s2 } | %m34
  %\bar "!"
  
  %hmy6
  %\time 4/4
  \no-line { s1 | %m35
  s1 | %m36
  s1 } | %m37
  %\bar "!"
  
  %hmy7
  %\time 2/4
  \frameExtenderEnd \frameStart <a! b!>4_\markup \bpm 420 
    \frameEnd \hide f8 \no-line s8 | %m38
  %\time 4/4
  \no-line s1 | %m39
  \frameExtenderEnd \frameStart <aes bes>4_\markup \bpm 360
    \frameEnd \hide f8 \no-line { s8 s2 } | %m40
  %\bar "!"

  %hmy8
  \frameExtenderEnd \frameStart <a! b!>4_\markup \bpm 300 
    \frameEnd \hide f8 \no-line { s8 s2 } | %m41
  \no-line s1 | %m42
  \frameExtenderEnd \frameStart <aes bes>4_\markup \bpm 360
    \frameEnd \hide f8 \no-line { s8 s2 } | %m43
  %\bar "!"
  
  %hmy9
  \no-line {s1 | %m44
  s1 | %m45
  %\time 5/4
  s1 s4 } | %m46
  %\bar "!"
  
  %hmy10
  %\time 4/4
  \no-line { s1 | %m47
  s1 | %m48
  s1 | %m49
  %\time 2/4
  s2 } | %m50
  %\bar "!"
}%end vibraphoneRavel

violinIRavel = \relative c'' {
  %hmy0
  \no-line \square {\n b1\f\>~ | %m1
  b1~ | %m2
  b1} | %m3 
  %\bar "!"
  
  %hmy1
  r4\! d2.\fp~ | %m4
  d1~ | %m5
  d1~ | %m6
  \n d1\>~ | %m7
  d4 r4\! bes2\fp~ | %m8
  bes1~ | %m9
  bes1\glissando | %m10
  \no-line \square b1~ | %m11
  %\bar "!"

  %hmy2
  \no-line {\square <b e,>1~ | %m12
  \square {<b e,>2~ \tieDashed <b e,>2:16\<~} | %m13
  \n \square <b e,>1:32\mp\> } \tieSolid | %m14
  r4\! bes2.\fpp~ | %m15
  bes1~ | %m16
  bes1\<~ | %m17
  bes1\p\glissando | %m18
  \half-harmonic bes1 \glissando | %m19
  \no-line \square b1~ | %m20
  %\bar "!"

  %hmy3
  \no-line \square {b1 | %m21
  s1 | %m22
  s1 | %m23
  s1} | %m24
  g'1:32\harmonic\fpp \glissando | %m25
  \half-harmonic g1:32\glissando | %m26
  \no-line \square g1:32\<\glissando | %m27
  %\bar "!"

  %hmy4
  \tieDashed \half-harmonic g1:32\f\>\glissando | %m28
  g1:32\pp\harmonic~ | %m29
  g4:32\harmonic cis,4:32 e:32 g:32~  | %m30
  g1:32\glissando \tieSolid | %m31
  %\bar "!"
  
  %hmy5
  \tieDashed <<\n \no-line {\square g2:32\> s8.\!}
    {s2 r4 \n e:32\<~}>> | %m32
  << e1:32~ {s2 s\!}>> | %m33
  %\time 2/4
  e2:32 \tieSolid | %m34
  %\bar "!"
  
  %hmy6
  %\time 4/4
  e4:32 e2.:32-> | %m35
  s1 | %m36
  s2 e2:32\< | %m37
  %\bar "!"
  
  %hmy7
  %\time 2/4
  s2 | %m40
  %\time 4/4
  s1 | %m38
  s1 | %m39
  %\bar "!"

  %hmy8
  s1 | %m41
  s1 | %m42
  s1 | %m43
  %\bar "!"
  
  %hmy9
  \relative c''
  \n aes1:32\> | %m44
  r4\! f4( aes c | %m45
  %\time 5/4
  \n d1)\> r4\! | %m46
  %\bar "!"
  
  %hmy10
  %\time 4/4
  \tieDashed bes1:32^\markup {\italic "sul pont."}~ | %m47
  bes1:32~ | %m48
  \n bes2:32\> r4\! \n aes4:32\<~ | %m49
  %\time 2/4
  aes2:32 \tieSolid | %m50
  %\bar "!"
}%end violinIRavel

violinIIRavel = \relative c'' {
  %hmy0
  \no-line { \square b1\p\<~ | %m1
  \square b1\glissando | %m2
  \half-harmonic bes1\glissando } | %m3 
  %\bar "!"
  
  %hmy1
  bes\fp~ | %m4
  bes1\>~ | %m5
  bes1\pp~ | %m6
  bes2. \n g4\<~| %m7
  g1\mp\>~ | %m8
  g1\p~ | %m9
  g1 \glissando | %m10
  <<
  \new Voice {
    \no-line \square g1^~ | %m11
  %\bar "!"

  %hmy2
    \no-line \square  g1^~ | %m12
    \stemless \hide g4 
    }
  \new Voice {
    s1 | %m11
    \no-line { c,8\rest \once \stemDown \square c2..~} | %m12
    \no-line \square {<g' c,>2~ \tieDashed <g c,>2:16\<~ | %m13
    <g c,>1:32\mp^~} | %m14
    <<{\n \square g2.:64\>}
      {\no-line {s2 s8.}}>> \n e'4:32\<~ | %m15
    e1:32~ | %m16
    e1:32\p~ | %m17
    e1:32~ | %m18
    e1:32~ | %m19
    \n e1:32\> \tieSolid | %m20
  }>>
  %\bar "!"

  %hmy3
  r2\! d4 bes4~ | %m21
  bes1~ | %m22
  bes2 bes2->\>~ | %m23
  bes2. r4\! | %m24
  r4 b!2.~ | %m25
  b1~ | %m26
  b2. a8 g | %m27
  %\bar "!"

  %hmy4
  b1\mf\> | %m28
  g1\fp~ | %m29
  g1\glissando | %m30
  \no-line \square g1~ | %m31
  %\bar "!"
  
  %hmy5
  <<\n \no-line {\square g2\> s8 s32.}
    {s2 r4\! \tieDashed \n cis4:32\<~}>>| %m32
  cis2:32 c2:32\p~ | %m33
  %\time 2/4
  c2:32\<~ \tieSolid | %m34
  %\bar "!"
  
  %hmy6
  %\time 4/4
  \tieDashed c4:32 cis2.:32\fp~ | %m35
  cis2:32 s2 | %m36
  s2 cis2:32\< \tieSolid | %m37
  %\bar "!"
  
  %hmy7
  %\time 2/4
  \tieDashed <b e\harmonic>2:32 | %m40
  %\time 4/4
  s1 | %m38
  <bes es>1:32\< \tieSolid | %m39
  %\bar "!"

  %hmy8
  \tieDashed <b e>1:32\fp~ | %m41
  \n <b e\harmonic>2:32\> r2\! | %m42
  \n <b e\harmonic>1:32\< \tieSolid | %m43
  %\bar "!"
  
  %hmy9
  \tieDashed <bes f'\harmonic>1:32~ | %m44
  <bes f'\harmonic>1:32\!~ | %m45
  %\time 5/4
  \n <bes f'\harmonic>1:32\> r4\! \tieSolid | %m46
  %\bar "!"
  
  %hmy10
  %\time 4/4
  \tieDashed \n f'1:32^\markup {\italic "sul pont."}\> | %m47
  r4\! \n f2.:32\<~ | %m48
  f2:32\! r4 \n f4:32\<~ | %m49
  %\time 2/4
  f2:32 \tieSolid | %m50
  %\bar "!"
}%end violinIIRavel 

violaRavel = \relative c' {
  %hmy0
  \no-line { \square d1\p~ | %m1
  \square d1~ | %m2
  \square d1~} | %m3 
  %\bar "!"
  
  %hmy1
  \no-line {\square d1~ | %m4
  \square d1\<~ | %m5
  \square d1\mp\glissando} | %m6
  d1\harmonic~ | %m7
  d1\harmonic~ | %m8
  \n d1\harmonic\> | %m9
  r4\! \stemUp \tieDashed \n <a e'\harmonic>2.:32\<~ | %m10
  \n <a e'\harmonic>1:32\p\> \stemNeutral \tieSolid | %m11
  %\bar "!"

  %hmy2
  r1\! | %m12
  << 
    \new Voice {
      r4 \clef "treble" \grace {g'8~} \stemUp <g d'>2.\p_~ | %m13
      g1~ | %m14
      g1~ | %m15
      e1\rest | %m16
    }
    \new Voice {
      s1 | %m13
      s1 | %m14
      \stemUp d'4\rest d2.^~ | %m15
      \stemNeutral d1\<~ | %m16
      \n d2.\f\> r4\! | %m17
    }
  >>
  \clef "alto" \tieDashed \n f,,1:32\harmonic\IV\<~  | %m18
  \n f1:32\p\>\harmonic~ | %m19
  f2:32\harmonic r2\! \tieSolid | %m20
  %\bar "!"

  %hmy3
  r2\! bes'4\fp g4~ | %m21
  <<g1 {s2 \n s\>}>> | %m22
  r4\! \clef "treble" <<{\n c2.\<}{s2 s4\mp}>> | %m23
  <<{\n c1\>~}{s2..... \clef "alto" s64}>> | %m24
  \n c,1:32->\harmonic\pp~  | %m25
  c1:32\harmonic | %m26
  c1:32\harmonic\< | %m27
  %\bar "!"

  %hmy4
  \tieDashed <gis cis\harmonic>1:32\p~ | %m28
  <g cis\harmonic>1:32~ | %m29
  <g cis\harmonic>4:32 e':32 \clef "treble" cis'2:32~ | %m30
  \n cis1:32\> \tieSolid | %m31
  %\bar "!"
  
  %hmy5
  r4\! b4 g4 e4~ | %m32
  e2 a4 g4~ | %m33
  %\time 2/4
  g2~ | %m34
  %\bar "!"
  
  %hmy6
  %\time 4/4
  g2 b4 e4\fp~ | %m35
  e2. e4\<~ | %m36
  e4 e4 e4 e4 | %m37
  %\bar "!"
  
  %hmy7
  %\time 2/4
  e2\f~ | %m40
  %\time 4/4
  e4 r4 c2 | %m38
  r4 d2. | %m39
  %\bar "!"

  %hmy8
  e1 | %m41
  c1 | %m42
  << d1 {s2.... \clef "alto" s32}>> | %m43
  %\bar "!"
  
  %hmy9
  f,,1\harmonic~ | %m44
  \n f4\harmonic\> r4\! \n d'2:32\<| %m45
  %\time 5/4
  \n d2:32\> f,2.\fp\glissando | %m46
  %\bar "!"
  
  %hmy10
  %\time 4/4
  <<{
    \tieDashed \half-harmonic f4:32\IV r4 
      r4 \half-harmonic f4:32 | %m47
    d'2:32\harmonic d2:32\harmonic~ | %m48
    d2:32\harmonic  r4 \tieSolid
  }{
    \override Hairpin.to-barline = ##f
    \n s8\< \n s8\> s4\! s4 \n s8\< \n s8\> | %m47
    \n s4\< \n s4\> \n s2\< | %m48
    \n s2\> s4\! 
  }>> 
  
  \half-harmonic f,4:32\IV\< | %m49
  %\time 2/4
  \half-harmonic {d'4:32\II \clef "treble" e'4:32\I} | %m50
  %\bar "!"
}%end violaRavel

celloRavel = \relative c {
  %hmy0
  \no-line \square { c1\p~ | %m1
  c1~ | %m2
  c1~ } | %m3 
  %\bar "!"
  
  %hmy1
  \no-line \square { c1~ | %m4
  c1\<~ | %m5
  c1\mp~ | %m6
  \n c1\> | %m7
  r4\! \tieDashed \n c2.:32\<~ | %m8
  c1:32\pp\glissando } | %m9
  <c f\harmonic>1:32\<~ | %m10
  \n <c f\harmonic>1:32\p\>~ \tieSolid | %m11
  %\bar "!"

  %hmy2
  <c f\harmonic>4:32 r4\! 
    \clef "treble" bes''4\fp_~ <bes d>~| %m12
  <bes d>1\glissando | %m13
  \n \half-harmonic <bes d>1\>~ | %m14
  <bes d>1 | %m15
  r4\! g2.\pp\<~ | %m16
  g1\mp\>~ | %m17
  g1\p\glissando | %m18
  \half-harmonic g1\glissando | %m19
  \no-line \square g1~ | %m20
  %\bar "!"

  %hmy3
  \n \no-line \square g2.\> r4\! | %m21
  \n << d'1\<~ {s2. s4\mp}>> | %m22
  << d1\>~ {s2 s\pp}>> | %m23
  << {d2.. c8} {s2 s\<}>> | %m24
  e1:32\harmonic \glissando | %m25
  \half-harmonic \n e1:32\>\glissando | %m26
  \no-line \square {e2 r4\!} \clef "bass" f,,4 | %m27
  %\bar "!"

  %hmy4
  e1~ | %m28
  \n e1\> | %m29
  r4\! e4 a g~ | %m30
  \n g1\> | %m31
  %\bar "!"
  
  %hmy5
  r4\! \clef "treble" g'4 e2~ | %m32
  \n e1~ | %m33
  %\time 2/4
  e2\> | %m34
  %\bar "!"
  
  %hmy6
  %\time 4/4
  r4\! \no-line {\square a2.\fp~ | %m35
  \square a1\glissando} | %m36
  a1\< | %m37
  %\bar "!"
  
  %hmy7
  %\time 2/4
  \tieDashed d2:32\fp~ | %m38
  %\time 4/4
  d2:32 s2 | %m39
  s1 | %m40
  %\bar "!"

  %hmy8
  s1 | %m41
  s1 | %m42
  s1 | %m43
  %\bar "!"
  
  %hmy9
  s1 | %m44
  s1 | %m45
  %\time 5/4
  \clef "bass" \relative c' {
  \n <aes des\harmonic>2.:32\> aes4\p\< bes4 } \tieSolid | %m46
  %\bar "!"
  
  %hmy10
  %\time 4/4
  c,2\! f,4 aes8 c | %m47
  d1 | %m48
  r8 \clef "tenor" c16 d \tuplet 3/2 { f8 e c } d2\<~ | %m49
  %\time 2/4
  d2~ | %m50
  %\bar "!"
}%end celloRavel

timecodeRavel = { 
  \tempo 4 = 60 
  \time 4/4
  \numericTimeSignature
  \once \override Staff.TimeSignature.extra-spacing-width = 
    #'(0 . 3.5)

  \set Timing.defaultBarType = "'"
  \override Score.BarNumber.transparent = ##t
  \override Score.BarNumber.break-visibility = 
    #end-of-line-invisible
  \set Score.barNumberVisibility = 
    #(every-nth-bar-number-visible 1)

  \override Staff.Glissando.thickness = #3
  \override Staff.Glissando.bound-details.right.arrow = ##t
  %\override Hairpin.to-barline = ##f
  \set Staff.harmonicDots = ##t

  %hmy0
  s1 | %m1
  s1 | %m2
  s1 | %m3 
  \bar "!"
  
  %hmy1
  \set Score.currentBarNumber = #1
  \once \override Score.BarNumber.transparent = ##f
  s1 | %m4
  s1 | %m5
  s1 | %m6
  s1 | %m7
  s1 | %m8
  s1 | %m9
  s1 | %m10
  s1 | %m11
  \bar "!"

  %hmy2
  \set Score.currentBarNumber = #2
  \once \override Score.BarNumber.transparent = ##f
  s1 | %m12
  s1 | %m13
  s1 | %m14
  s1 | %m15
  s1 | %m16
  s1 | %m17
  s1 | %m18
  s1 | %m19
  s1 | %m20
  \bar "!"

  %hmy3
  \set Score.currentBarNumber = #3
  \once \override Score.BarNumber.transparent = ##f
  s1 | %m21
  s1 | %m22
  s1 | %m23
  s1 | %m24
  s1 | %m25
  s1 | %m26
  s1 | %m27
  \bar "!"

  %hmy4
  \set Score.currentBarNumber = #4
  \once \override Score.BarNumber.transparent = ##f
  s1 | %m28
  s1 | %m29
  s1 | %m30
  s1 | %m31
  \bar "!"
  
  %hmy5
  \set Score.currentBarNumber = #5
  \once \override Score.BarNumber.transparent = ##f
  s1 | %m32
  s1 | %m33
  \time 2/4
  s2 | %m34
  \bar "!"
  
  %hmy6
  \set Score.currentBarNumber = #6
  \once \override Score.BarNumber.transparent = ##f
  \time 4/4
  s1 | %m35
  s1 | %m36
  s1 | %m37
  \bar "!"
  
  %hmy7
  \set Score.currentBarNumber = #7
  \once \override Score.BarNumber.transparent = ##f
  \once \override Staff.TimeSignature.extra-spacing-width = 
    #'(0 . 3)
  \time 2/4
  s2 | %m38
  \time 4/4
  s1 | %m39
  s1 | %m40
  \bar "!"

  %hmy8
  \set Score.currentBarNumber = #8
  \once \override Score.BarNumber.transparent = ##f
  s1 | %m41
  s1 | %m42
  s1 | %m43
  \bar "!"
  
  %hmy9
  \set Score.currentBarNumber = #9
  \once \override Score.BarNumber.transparent = ##f
  s1 | %m44
  s1 | %m45
  \time 5/4
  s1 s4 | %m46
  \bar "!"
  
  %hmy10
  \set Score.currentBarNumber = #10
  \once \override Score.BarNumber.transparent = ##f
  \time 4/4
  s1 | %m47
  s1 | %m48
  s1 | %m49
  \time 2/4
  s2 | %m50
  \bar "|"
}

vibraphoneRavelB = \stemless \relative c''' {
  \override FrameBracket.no-bracket = ##t
  %hmy1
  \frameExtenderEnd \frameStart <g! aes>32_\markup \bpm 360 
    \hide g,32 \frameEnd \hide g'16 \no-line { s8 s2. } | %m1
  \no-line { s1 | %m2
  s1 | %m3
  s1 | %m4
  %\time 2/4
  s2 } | %m5
  %\bar "!"

  %hmy2
  %\time 4/4
  \no-line { s1 | %m6
  s1 | %m7
  s1 | %m8
  s1 | %m9
  s1 | %m10
  s1 } | %m11
  %\bar "!"

  %hmy3
  \no-line { s1 | %m12
  s2... \frameExtenderEnd s16 }| %m13
  \frameStart \hide g8 <g! a!>4_\markup \bpm 360 
    \frameEnd \hide g8 \no-line { \hide g8 s8 s4 }| %14
  %\bar "!"

  %hmy4
  \no-line { s1 | %m15
  s1 | %m16
  s1 } | %m17
  %\bar "!"
  
  %hmy5
  %\time 6/4
  \no-line { s1. | %m18
  s1. } | %m19
  %\bar "!"
  
  %hmy6
  \no-line { s1 | %m20
  s1 | %m21
  s1 } | %m22
  %\bar "!"
  
  %hmy7
  %\time 6/4
  \frameExtenderEnd \frameStart <a! b!>4_\markup \bpm 360 
    \frameEnd \hide f8 \no-line s8 \no-line s1 | %m23
  \frameExtenderEnd \frameStart <aes bes>4_\markup \bpm 360
    \frameEnd \hide f8 \no-line { s8 s1 } | %m24
  %\bar "!"

  %hmy8
  %\time 4/4
  \frameExtenderEnd \frameStart <a! b!>4_\markup \bpm 360 
    \frameEnd \hide f8 \no-line { s8 s2 } | %m25
  \no-line s1 | %m26
  \frameExtenderEnd \frameStart <aes bes>4_\markup \bpm 360
    \frameEnd \hide f8 \no-line { s8 s2 } | %m27
  %\bar "!"
  
}%end vibraphoneRavel

violinIRavelB = \relative c''' {
  %hmy1
  g32\f aes g g aes g g aes \makePercent s4 \makePercent s4 
    << \makePercent s4 \n s4\> >> | %m1

  g32 aes g g aes g g aes
 \headless { g\!^\markup \italic "tacet" b g g b g g b }
    \makePercent s4 \makePercent s4 | %m2
  g1:32\harmonic \glissando | %m3
  \half-harmonic g1:32\glissando | %m4
  %\time 2/4
  \tieDashed g2:32 ~ | %m5
  %\bar "!"

  %hmy2
  %\time 4/4
  g1:32~ | %m6
  g1:32~ | %m7
  g1:32\> | %m8
  g4:32 r4\! \tieSolid g,2\p\<~ | %m9
  g1 | %m10
  bes4\mp c2.\sfz | %m11
  %\bar "!"

  %hmy3
  d4 c2.\sfz | %m12
  e4 g b2~ | %m13
  b2 a4 \afterGrace g4 {b,16( e g} | %m14
  %\bar "!"

  %hmy4
  b1)~ | %m15
  \n b1\>~  | %m16
  b2 r4\! \tieDashed \n \half-harmonic cis,4:32\<~| %m17
  %\bar "!"
  
  %hmy5
  %\time 6/4
  \half-harmonic cis1.:32~ | 
  \half-harmonic cis1.:32\!\glissando | %m19
  %\bar "!"
  
  %hmy6
  %\time 4/4
  \tieDashed cis1:32 | %m20
  c!1:32~ | %m21
  c1:32\< | %m22
  %\bar "!"
  
  %hmy7
  %\time 6/4
  \tieDashed d1.:32\!~ | %m23
  d1.:32\glissando | %m24
  %\bar "!"

  %hmy8
  %\time 4/4
  \half-harmonic d1:32~ | %m25
  \half-harmonic d1:32 | %m26
  \half-harmonic f1:32~ | %m27
  %\bar "!"
}%end violinIRavel

violinIIRavelB = \relative c''' {
  %hmy1
  \tieDashed g1:32\f\>~ | %m1
  \n g2:32\mp\n \tieSolid \n bes,2\<~| %m2
  bes1\mf~ | %m3
  bes4 <bes g>2.\fp\<~ | %m4
  %\time 2/4
  <c g>2 | %m5
  %\bar "!"

  %hmy2
  %\time 4/4
  <d g,>1\f~ | %m6
  <d g,>2~ \n g,2\>~ | %m7
  g2. \tieDashed e'4:32\II\p\<~ | %m8
  e1:32~ | %m9
  e1:32\p\glissando | %m10
  \n e1:32\harmonic~ | %m11
  %\bar "!"

  %hmy3
  \tieDashed e1:32\harmonic~ | %m12
  e1:32\harmonic~ | %m13
  e1:32\harmonic~ | %m14
  %\bar "!"

  %hmy4
  e1:32\harmonic~ | %m15
  e1:32\harmonic~ | %m16
  e1:32\harmonic\glissando | %m17
  %\bar "!"
  
  %hmy5
  %\time 6/4
  e1.:32~| %m18
  \n e1.:32\> \tieSolid | %m19
  %\bar "!"
  
  %hmy6
  %\time 4/4
  b2\mp g2 | %m20
  <<
    \new Voice {
      a1~ | %m21
      <a e'>1\<~ | %m22
      %\bar "!"
  
      %hmy7
      %\time 6/4
      e'1.\! | %m23
    }
    \new Voice {
      s1 | %m21
      s1 | %m22

      %hmy7
      %\time 6/4
      g,2.\rest c2. | %m23
    }
  >> 
  d1. | %m24
  %\bar "!"

  %hmy8
  %\time 4/4
  e2.\II\glissando \half-harmonic e4 | %m25
  \half-harmonic c1\II\glissando | %m26
  \no-line \square c1~ | %m27
  %\bar "!"
}%end violinIIRavel 

violaRavelB = \relative c'' {
  %hmy1
  \clef "treble"
  \tieDashed \half-harmonic e1:32\f~ | %m1
  \half-harmonic e1:32\glissando | %m2
  e1:32~ | %m3
  \n e1:32\>~ | %m4
  %\time 2/4
  e2:32 \tieSolid | %m5
  %\bar "!"

  %hmy2
  %\time 4/4
  r4\! \n bes2.^\markup \italic "sul pont."\<~ | %m6
  bes1\f~ | %m7
  bes2\> r4 \! g4\fp~ | %m8
  \n g1\> | %m9
  r4\! \clef "alto" \tieDashed \n f,2.:32\harmonic\IV\<~  | %m10
  f1:32\harmonic\mp~  | %m11
  %\bar "!"

  %hmy3
  f1:32\harmonic~ | %m12
  f2:32\harmonic \clef "treble" c''2:32~ | %m13
  c1:32\< | %m14
  %\bar "!"

  %hmy4
  \tieDashed <cis\harmonic fis,>1:32\f~ | %m15
  <cis\harmonic fis,>1:32\glissando | %m16 
  \once \stemUp \n \half-harmonic cis1:32\> \tieSolid | %m17
  %\bar "!"
  
  %hmy5
  %\time 6/4
  b2\mf g2 e2 | %m18
  a8->\III g4.~ g1\glissando | %m19
  %\bar "!"
  
  %hmy6
  %\time 4/4
  g1\harmonic~ | %m20
  g1\harmonic~ | %m21
  << g1\harmonic\> {s2.... \clef "alto" s32 }>>| %m22
  %\bar "!"
  
  %hmy7
  %\time 6/4
  f1.\harmonic\pp~ | %m23
  f1.\harmonic\glissando\< | %m24
  %\bar "!"

  %hmy8
  %\time 4/4
  \no-line \square { f1\mf\<~ | %m25
  f1\f~ | 
  <f b,>1~ } |
  %\bar "!"
}%end violaRavel

celloRavelB = \relative c' {
  %hmy1
  \clef "tenor"
  d1 | %m1
  \clef "bass" <bes c,>1\sfz~ | %m2
  c,1\> | %m3
  r4\! \clef "treble" \tieDashed \n c''2.:32\<~  | %m4
  %\time 2/4 
  c2:32~ \tieSolid | %m5
  %\bar "!"

  %hmy2
  %\time 4/4
  \tieDashed c1:32\mp~ | %m6
  c1:32~ | %m7
  c1:32~ | %m8
  \n c2:32\> r4\! \tieSolid \clef "bass" d,,4\pp\<~ | %m9
  d1 | %m10
  e1\mp~ | %m11
  %\bar "!"

  %hmy3
  e1 | %m12
  c2. b4~ | %m13 
  b1 | %m14
  %\bar "!"

  %hmy4
  e,1~ | %m15
  e1 \glissando
  \half-harmonic e1~ | %m17
  %\bar "!"
  
  %hmy5
  %\time 6/4
  \n \half-harmonic e1.\glissando | %m18
  \no-line \square e1. | %m19
  %\bar "!"
  
  %hmy6
  %\time 4/4
  \tieDashed \no-line \square { <g d'>1:32~ | %m20
  <g d'>1:32~ | %m21
  <g d'>1:32\glissando } | %m22
  %\bar "!"
  
  %hmy7
  %\time 6/4
  \no-line \square <d' a'>1.:32~ | %m23
  \no-line \square <d a'>1.:32\glissando | %m24
  %\bar "!"

  %hmy8
  %\time 4/4
  \no-line \square <a' e'>1:32~ | %m25
  \no-line \square <a e'>1:32\<~ | %m26
  \no-line \square <a e'>1:64~\f | %m27
  %\bar "!"
  
}%end celloRavel

timecodeRavelB = { 
  \tempo 4 = 60 
  \time 4/4
  \numericTimeSignature

  \set Timing.defaultBarType = "'"
  \override Score.BarNumber.transparent = ##t
  \override Score.BarNumber.break-visibility = 
    #end-of-line-invisible
  \set Score.barNumberVisibility = 
    #(every-nth-bar-number-visible 1)

  \override Staff.Glissando.thickness = #3
  \override Staff.Glissando.bound-details.right.arrow = ##t
  %\override Hairpin.to-barline = ##f
  \set Staff.harmonicDots = ##t

  \break
  %hmy1
  \set Score.currentBarNumber = #11
  \once \override Score.BarNumber.transparent = ##f
  \once \override Staff.TimeSignature.extra-spacing-width = 
    #'(0 . 3)
  s1 | %m1
  s1 | %m2
  s1 | %m3
  s1 | %m4
  \time 2/4
  s2 | %m5
  \bar "!"

  %hmy2
  \set Score.currentBarNumber = #12
  \once \override Score.BarNumber.transparent = ##f
  \time 4/4
  s1 | %m6
  s1 | %m7
  s1 | %m8
  s1 | %m9
  s1 | %m10
  s1 | %m11
  \bar "!"

  %hmy3
  \set Score.currentBarNumber = #13
  \once \override Score.BarNumber.transparent = ##f
  s1 | %m12
  s1 | %m13
  s1 | %m14
  \bar "!"

  %hmy4
  \set Score.currentBarNumber = #14
  \once \override Score.BarNumber.transparent = ##f
  s1 | %m15
  s1 | %m16
  s1 | %m17
  \bar "!"
  
  %hmy5
  \set Score.currentBarNumber = #15
  \once \override Score.BarNumber.transparent = ##f
  \time 6/4
  s1. | %m18
  s1. | %m19
  \bar "!"
  
  %hmy6
  \set Score.currentBarNumber = #16
  \once \override Score.BarNumber.transparent = ##f
  \time 4/4
  s1 | %m20 
  s1 | %m21
  s1 | %m22
  \bar "!"
  
  %hmy7
  \set Score.currentBarNumber = #17
  \once \override Score.BarNumber.transparent = ##f
  \once \override Staff.TimeSignature.extra-spacing-width = 
    #'(0 . 3)
  \time 6/4
  s1. | %m23
  s1. | %m24
  \bar "!"

  %hmy8
  \set Score.currentBarNumber = #18
  \once \override Score.BarNumber.transparent = ##f
  \once \override Staff.TimeSignature.extra-spacing-width = 
    #'(0 . 3)
  \time 4/4
  s1 | %m25
  s1 | %m26
  s1 | %m27
  \bar "|"
}

%:.';;.';.';.;.';.';.";.';
%;';.  " '  " ''  " '' :'.
%:".' N 'o .i  s''e   ": "
%":: . .'  . ,. :  . :"::'
%:.::.';,":.';.';.;'::.":.

trapNoise = \drummode {
  \override DrumStaff.FrameBracket.no-bracket = ##t
  s1 | s1 | s1 | s1 | s1 | %m5
  s1 | s1 | s1 | s1 | \n << hh1:32^"hat"(\< {s2.. s8)}>> | %m10

  \frameStart << sn1^"snare, brush" {s4 \frameEnd \stemless \stemHack \hide sn4}>> | %m11
 \hide  sn1 | %m13
 \hide  sn1 | %m14
 \hide  sn1 | %m15
 \hide  sn1 | %m16
 \hide  sn1 | %m17
 \hide  sn1 | %m18
 \hide  sn1 | %m19
 \hide  sn1 | %m20
 \hide  sn1 | %m21
 \hide  sn1 | %m22
 \frameExtenderEnd \hide sn1 | %m23

}%end trapNoise
vibraphoneNoise = \relative c''' {
  %hmy9
  \stemless \no-line { \n s1\> | %m1
  s1 | %m2
  s1 | %m3
  s1 | %m4
  s1 } | %m5
  %\bar ";"

  %hmy0
  \no-line \stemless { \frameExtenderEnd \frameStart 
    <a b>4\!^\markup \italic "tacet"_\markup \bpm 360
    \frameEnd \hide f8 \no-line { s8 s2 } | %m6
  \no-line s1_\markup \large "slower and slower" | %m7
  \no-line s1 | %m8
  \frameExtenderEnd \no-line c1\rest_\markup \bpm 0 | %m9
  \no-line s1 } | %m10
  %\bar ""

  %hmy1
  \no-line s1 | %m11
  %\bar ";"

  %hmy2
  \no-line s1 | %m13
  \no-line s1 | %m14
  \no-line s1 | %m15
  \no-line s1 | %m16
  \no-line s1 | %m17

  \no-line s1 | %m18
  \no-line s1 | %m19
  \no-line { a2\rest b2\mf~ } | %20
  \stemless \no-line { \frameStart << \n b1\< 
    {s4 \frameEnd \stemHack \hide b4 }>> | %m21
  \no-line s1  | %m22
  \frameExtenderEnd \no-line s1 } | %m23
  %\bar "|"
}%end vibraphoneNoise

violinINoise = \relative c'' {
  %hmy9
  \once \override Hairpin.to-barline = ##f
  \tieDashed \n \half-harmonic <c f>1:32\>~ | %m1
  \half-harmonic <c f>1:32 \glissando | %m2
  \no-line { \square <c f>1:32~ | %m3
  \headless f1:32~^\markup \italic "tacet"\! | %m4
  \headless f1:16~ } | %m5
  %\bar ";"

  %hmy0
  \no-line { \headless f1:8 | %m6
  \tieSolid \n \square c1\<~ | %m7
  \square c1\p\glissando } | %m8
  \half-harmonic c1\glissando | %m9
  \no-line \square c1\< | %m10
  %\bar ""

  %hmy1
  \no-line c1\rest\! | %m11
  %\bar ";"

  %hmy2
  \stemless \no-line { \frameStart << \n b1\< 
    {s4 \frameEnd \stemHack \hide b4 }>> | %m13
  << s1 { s2 s\pp }>> | %m14
  s2 \frameExtenderEnd a2\rest | %m15 
  r4 } \no-line b2.\pp~ | %16
  \stemless \no-line { \frameStart << b1
    {s4 \frameEnd \stemHack \hide b4 }>> | %m17
  s1 | %m18
  s1 | %m19
  s1 | %m20
  s1 | %m21
  s1 | %m22
  \frameExtenderEnd \hide g1 } | %m23
  %\bar "|"
}%end violinINoise

violinIINoise = \relative c'' {
  %hmy9
  \no-line \square { c1~ | %m1
  c1~ | %m2
  <c f,>1\<~ | %m3
  <c f,>1~ | %m4
  <c f,>1\mf~ } | %m5
  %\bar ";"

  %hmy0
  \no-line \square { <c f,>1\glissando | %m6
  <g' c,>1~ | %m7
  <c, f,>1\glissando | %m8
  <f, b,>1\glissando\< | %m9
  <f' b,>1~ } | %m10
  %\bar ""

  %hmy1
  \no-line c1\rest\! | %m11
  %\bar ";"
  
  %hmy2
  \no-line { r2. b4\pp~ } |
  \stemUp \stemless \no-line { \frameStart << b1 
    {s4 \frameEnd \stemHack \hide b4 }>> | %m13
  s2 \frameExtenderEnd a2\rest | %m15 
  \frameStart << b1
    {s4\< \frameEnd \stemHack \hide b4 s4\p }>> | %m16
  s1 | %m17
  s1 | %m18
  s1 | %m19
  s1 | %m20
  s1 | %m21
  s1 | %m22
  \frameExtenderEnd \hide g1 } | %m23
  %\bar "|"
}%end violinIINoise

violaNoise = \relative c' {
  %hmy9
  \no-line \square { <f b,>1~ | %m1
  <f b,>1\glissando | %m2
  <c' f,>1 | %m3
  \clef "treble"
  <c g'>1\III\II~ | %m4
  <c g'>1 } | %m5
  %\bar ";"

  %hmy0
  \no-line \square { <g' d'>1\II\I\glissando | %m6
  <e b'>1\glissando | %m7
  <c g'>\glissando\< | %m8
  <a e'>\glissando | %m9
  <f c'>1 } | %m10
  %\bar ""

  %hmy1
  \no-line c'1\rest\! | %m11
  %\bar ";"

  %hmy2
  \no-line { r1 | %m13
  s1 | %m14
  s2 b2\p~ | %15
  \frameStart << b1
    {s4 \frameEnd \stemHack \stemless \hide b4 s4 }>> | %m16
  s1 | %m17
  s1 | %m18
  s1 | %m19
  s1 | %m20
  s1 | %m21
  s1  | %m22
  \frameExtenderEnd \hide g1 } | %m23
  %\bar "|"
}%end violaNoise

celloNoise = \relative c' {
  %hmy9
  \tieDashed \no-line { \square <a e'>1:32~ | %m1
  \square <a e'>1:32~ | %m2
  \n \square <a e'>1:32\>~ | %m3
  \square <a e'>1:32~ | %m3
  \headless <a e'>1:32\!_\markup \italic "tacet" } | %m3
  %\bar ";"

  %hmy0
  \no-line \square { \n <c,, g'>1:64\III\IV\<~ | %m6
  <c g'>1:64~ | %m7
  <c g'>1:64~ | %m7
  <c g'>1:64~ | %m7
  <c g'>1:64 } \tieSolid | %m7
  %\bar ""

  %hmy1
  \no-line e'1\rest\! | %m11
  %\bar ";"

  %hmy2
  \no-line { r1 | %m13
  s1 | %m14
  s1 | %m15
  s1 | %m16
  s1}| %17
  \once \override Staff.TextScript.outside-staff-priority = #249
  <<
    \new Voice \no-line {
      d1^"\"Hey, Zach\""\mf~
      \frameStart << d1 | %m18 
	{s4 \frameEnd \stemHack \stemless \hide d4 s4 }>> | %m19 |
      s1 | %20
      s1 | %21
      s1 | %22
      \frameExtenderEnd \hide g1 | %m23
    } 
    \new Staff \no-line {
      \override Staff.FrameBracket.no-bracket = ##t
      \override Staff.Clef.full-size-change = ##t
      \clef "bass"
      \hide Staff.TimeSignature
      r2. d4^\markup \right-align "Zach:"\mf~ | %m18 
      \frameStart << d1
	{s4 \frameEnd \stemHack \stemless \hide d4 s4 }>> | %m19
      s1 | %m20
      s1 | %m21
      s1 | %m22
      \frameExtenderEnd \hide g1 | %m23
    }
  >>
  %\bar "|"
}%end celloNoise 

timecodeNoise = {
  \override Staff.FrameBracket.no-bracket = ##t
  \tempo 4 = 60 
  \time 4/4
  \numericTimeSignature

  \set Timing.defaultBarType = "'"
  \override Score.BarNumber.transparent = ##t
  \override Score.BarNumber.break-visibility = 
    #end-of-line-invisible
  \set Score.barNumberVisibility = 
    #(every-nth-bar-number-visible 1)

  \override Staff.Glissando.thickness = #3
  \override Staff.Glissando.bound-details.right.arrow = ##t
  %\override Hairpin.to-barline = ##f
  \set Staff.harmonicDots = ##t
  %hmy9
  \set Score.currentBarNumber = #19
  \once \override Score.BarNumber.transparent = ##f
  s1 | %m1
  s1 | %m2
  s1 | %m3
  s1 | %m4
  s1 | %m5
  \bar ";"

  %hmy0
  \set Score.currentBarNumber = #20
  \once \override Score.BarNumber.transparent = ##f
  s1 | %m6
  s1 | %m7
  s1 | %m8
  s1 | %m9
  s1 | %m10
  \bar ""

  %hmy1
  \set Score.currentBarNumber = #21
  \once \override Score.BarNumber.transparent = ##f
  s1 | %m11
  \bar ";"
  \once \override Score.RehearsalMark.break-visibility = 
    #end-of-line-visible
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark\markup{\musicglyph #"scripts.ufermata"} 

  %hmy2
  \set Score.currentBarNumber = #22
  \once \override Score.BarNumber.transparent = ##f
  \override TextScript.outside-staff-priority = #'()
  \once \override TextScript.staff-padding = #'()
  \tempo "Speaking"
  s1 | %m13
  s1 | %m14
  s1 | %m15
  s1 | %m16
  s1 | %m17
  s1 | %m18
  s1 | %m19
  s1 | %m20
  s1 | %m21
  s1 | %m22
  \mark\markup{\musicglyph #"scripts.ufermata"} 
  s1 | %m23
  \bar "|"
  
}%end timecodeNoise

%Called by Staves in \score
trap = {
  << \timecodeRavel >>
  \timecodeRavelB
  \trapNoise
}
vibraphone = {
  \vibraphoneRavel
  \vibraphoneRavelB
  \vibraphoneNoise
}
violinI = {
  \violinIRavel
  \violinIRavelB
  \violinINoise
}
violinII = {
  \violinIIRavel
  \violinIIRavelB
  \violinIINoise
}
viola = {
  \violaRavel
  \violaRavelB
  \violaNoise
}
cello = {
  \celloRavel
  \celloRavelB
  \celloNoise
}
timecode = {
  \timecodeRavel
  \timecodeRavelB
  \timecodeNoise
}

\layout {
  \context {
    \Global
    \grobdescriptions #all-grob-descriptions
  }
  \context {
    \Score
    proportionalNotationDuration = #(ly:make-moment 1/8)
    \override Score.SpacingSpanner.strict-note-spacing = ##t
    \override StaffGrouper.staff-staff-spacing.basic-distance = #1
  }
  \context {
    \Staff
    \override VerticalAxisGroup.staff-staff-spacing.padding = #5
    \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #20
  }
  \context {
    \DrumStaff
    \RemoveEmptyStaves
    \consists \frameEngraver
  }
  \context {
    \Voice
    \consists \frameEngraver
  }
}%end layout

\paper {
  #(set-paper-size "letter")
  indent = 0.6\in

  #(set! paper-alist (cons '("ipad pro" . (cons (* 220 mm) (* 305 mm))) paper-alist)) 
  #(set! paper-alist (cons '("montalvo" . (cons (* 11 in) (* 14 in))) paper-alist)) 
  #(set-paper-size "montalvo")
  top-margin = 0.7\in
  left-margin = 0.7\in
  right-margin = 0.6\in
  bottom-margin = 0.7\in
  %
  markup-system-spacing = 
    #'((basic-distance   . 10)
       (minimum-distance . 10)
       (padding          . 5 )
       (stretchability   . 1 ))

  system-system-spacing = 
    #'((basic-distance   . 25)
       (minimum-distance . 5)
       (padding          . 4 )
       (stretchability   . 1 ))

}%end paper

\score {
<<
  \pointAndClickOff

  \new StaffGroup \with {
    instrumentName = #""
    shortInstrumentName = #""
  }<<
    \new DrumStaff \with {
      instrumentName = #"Trap"
      shortInstrumentName = #""
      \override StaffSymbol.line-count = #1
    }{
      \set DrumStaff.drumStyleTable = 
	#(alist->hash-table trapKit)
      <<\timecode \trap>>
    }%end Snare
    \new Staff \with {
      instrumentName = #"Vibraphone "
      shortInstrumentName = #""
    }{
	\clef "treble"
	<<\timecode \vibraphone>>
    }%end Vibraphone
  >>%end StaffGroup "Percussion"
  \new StaffGroup <<
    \new Staff = "vlni" \with {
      instrumentName = #"Violin I"
      shortInstrumentName = #""
    }{
      \clef "treble"
      <<\timecode \violinI>>
    }
    \new Staff = "vlnii" \with {
      instrumentName = #"Violin II"
      shortInstrumentName = #""
    }{
      \clef "treble"
      <<\timecode \violinII>>
    }
    \new Staff = "vla" \with {
      instrumentName = #"Viola"
      shortInstrumentName = #""
    }{
      \clef "alto"
      <<\timecode \viola>>
    }
    \new Staff = "vc" \with {
      instrumentName = #"Violoncello "
      shortInstrumentName = #""
    }{
      \clef "bass"
      <<\timecode \cello>>
    }
  >>
>>}%end score

