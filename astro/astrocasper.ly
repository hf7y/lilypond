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
\include "/home/zach/lilypond/z/glissando.ily"

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
         (bassdrum	    default   #f           -1)
         (acousticbassdrum  cross     #f           -1)
         (snare		    default   #f           0)
         (crashcymbal       default   #f           2)
         (hihat		    default   #f           1)))

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

% (.Y.) ( '  ' (.).)   ( .)( .)  ( , Y . )
% ( . . )  P    `     . )   (.x.)    (.).) 
% (. .)  \   ,  O        ' ' . ) ( , Y . )
% ( , Y . )  (.     P    (.Y.) (.x.) (.).)
% (.v.) (. .)  \.'./   , , . . ) ( . ' . ) 

trapPop = \drummode {
  \override DrumStaff.FrameBracket.no-bracket = ##t
  \stemUp
  %hmy1
  s1 | %m1
  s1 | %m2
  s1 | %m3
  s1 | %m4

  %hmy2
  s1 | %m5
  s1 | %m6
  s1 | %m7
  s2 r8 <<{bda8\mp^"bass, rim"} \\ {bda8}>> r16 bda bda bda | %m8

  %hmy3
  bd16^"head" \headless {bd bd} bd
    bd \headless bd bd-> \headless bd 
    \headless bd bd bd bd
    \headless bd bd \headless bd \headless bd | %m9
  bd \headless bd bd-> \headless bd
    \headless bd bd bd-> \headless bd
    \headless bd bd bd bd
    bd-> \headless {bd bd} bd | %m10
  \hide R1^\markup \italic "simile" | %m11
  s1 | %12

  s1 | %13
  s1 | %14
  s1\< | %15
  \stemNeutral bd16 cymc cymc bd
    bd cymc bd cymc 
    cymc bd sn bd 
    bd \n cymc sn sn | %16
  
  cymc4:32
    sn16 cymc cymc sn 
    bd->\mf bd cymc cymc 
    sn bd cymc bd | %m17
  bd cymc bd cymc 
    sn sn cymc sn 
    bd sn cymc sn
    sn cymc bd bd | %m18
  \hide R1^\markup \italic "simile" | %m19
  s1 | %m20

  s1 | %21
  s1 | %22
  %\time 5/16
  bd16[ cymc cymc sn] bd | %23

  %\time 4/4
  r1^"mute" | %24
  r1 | %25
  
  <<
    \new DrumVoice {
      \voiceOne
      \override TupletNumber.text = #tuplet-number::calc-fraction-text
      \stemUp hh4\p\< hh \tuplet 7/8 {hh8[ hh16.]} \omit TupletNumber
	\tuplet 7/8 {hh8[\flageolet cymc16.]} | %m26

      \tuplet 7/8 {hh8[\mf hh16.]}
	\tuplet 7/8 {hh8\flageolet[ hh16.]}
	\tuplet 7/8 {hh8[ hh16.]}
	\tuplet 7/8 {hh8\flageolet[ hh16.]} | %m27
      \makePercent s1 | %m28
      \makePercent s1 | %m29
      \tuplet 7/8 {hh8[ hh16.]}
	\tuplet 7/8 {hh8\flageolet[ hh16.]}
	\tuplet 7/8 {hh8[ hh16.]}
	hh8\flageolet r8 | %m27
    }
    \new DrumVoice {
      \voiceTwo
      s2 r8. bd16 sn4 | %m26
      bd4 sn bd8 bd sn4 | %m27
      s1 |
      s1 |
      bd4 sn sn8 bd8 sn4 | %m27
    }
  >>
}

vibraphonePop = \relative c' {
  \key cis \major
  %hmy1
  fis4\pp <ais gis> <cis gis> <fis, ais'> | %m1
  <fis gis'> <ais gis'> <bis eis> <bis cis> | %m2
  <ais bis>\pp\> bis\! <fis gis>\pp\> ais\! | %m3
  <dis, ais'>_\markup \italic "simile" <eis fis> <eis ais> <gis ais> | %m4

  %hmy2
  <fis gis> <dis gis> <fis bis> <ais bis> | %m5
  \n <eis bis'>\pp\> <cis' dis>\! \n <bis eis>\pp\> <dis cis'>\! | %m6
  \n <ais eis'>4\ppp\> \headless cis <ais bis> \headless cis | %m7
  cis4 \headless cis\! r4 s4 | %m8

  %hmy3
  s1 | %m9
  s1 | %m10
  s1 | %m11
  s1 | %m12

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
  %\time 5/16
  s4 s16 | %m23

  \key c \major
  \fancy-gliss
    #'(
     (1 3)
     (2 0)
     (3 3)
     (4 1)
     (5 3.5)
     (6 0)
     (7 0 8 5 12 0))
  \headless c1\glissando^\markup \italic "gliss."\pp | %m24
  s2 \headless \stemless c'2_\markup \italic "l.v." | %m25
  s1 |

  s1 |
  s1 |
  s1 |
  s1 |
}%end vibraphonePop

violinIPop = \relative c' {
  \key cis \major
  eis8\p r8 eis8 r8 dis8 r8 gis16 r8. | %m1
  eis16 r8. cis'8 r8 eis16 r8. gis8 r8 | %m2
  fis16 r8. cis8 r8 bis16 r8. eis8 r8 | %m3
  eis16 r8. dis8. r16 gis16 r8. eis8. r16 | %m4

  fis,32 r8.. ais8. r16 cis32 r8.. ais'8. r16 | %m5
  gis32 r8.. gis8. r16 eis32 r8.. cis'8.. r32 | %m6
  bis32\< r8.. bis8.. r32 fis32 r8.. b8.. r32 | %m7
  ais64 r8... fis8... r64 ais64 r8... gis4\mp | %m8

  r4 eis4 r4 gis4 | %m9
  r4 dis4 r4 gis4~ | %m10
  gis32 r8.. cis,4~ cis16 r8. dis4~ | %m11
  dis8 r8 eis4~ eis8. r16 dis4~ | %m12

  dis8.. r32 ais'4~ ais4 ais4~ | %m13
  ais8.. r32 gis4~ gis8. r16 cis4~ | %m14
  cis8 r8 bis4~ bis16 r8. ais4~ | %m15
  ais32 r8.. fis4~ r4 gis4 | %m16

  r2. <dis ais'>4\mf | %m17
  r4 <dis gis>4 r4 <cis gis'>4~ | %m18
  <cis gis'>32 r8.. <cis fis>4~ <cis fis>16 r8. <dis ais'>4~ | %m19
  <dis ais'>8 r8 <eis bis'>4~ <eis bis'>8. r16 <dis cis'>4~ | %m20

  <dis cis'>8 r8 <cis fis>4~ <cis fis>16 r8. <dis ais'>4~ | %m15
  <dis ais'>32 r8.. <fis eis'>4~ r4 <gis fis'>4~ | %m16
  %\time 5/16
  <gis fis'>8 r8. | %m23

  \key c \major
  %\time 4/4
  <e, b'>2\pp\<^\markup \italic "sul pont."~ <e b'>8 <f b>4. | %m24
  <e b'>2\p\<~ <e b'>8 <f b>4. | %m25
  <e b'>2\mp\<~ <e b'>8 <f b>4. | %m26

  <e b'>2\mf~ <e b'>8 <f b>4. | %m27
  <d b'>2~ <d b'>8 <f b>4. | %m28
  <e b'>2~ <e b'>8 <f b>4. | %m29
  <g b>2~ <g b>8 <f b>8 r4 | %m30
}%end violinIPop

violinIIPop = \relative c'' {
  \key cis \major
  r1 | %m1
  \n gis16\< r8. dis'8 r8 dis16 r8. dis8 r8 | %m2
  cis16\pp r8. bis8 r8 ais16 r8. fis8 r8 | %m3
  bis16 r8. ais8. r16 dis16 r8. dis8. r16 | %m4

  ais32 r8.. cis8. r16 bis32 r8.. gis'8. r16 | %m5
  fis32 r8.. eis8. r16 bis32 r8.. ais8.. r32 | %m6
  fis'32 r8.. fis8.. r32 fis32 r8.. fis8.. r32 | %m7
  eis64 r8... fis8... r64 gis64 r8... ais4 | %m8

  r4 eis4 r4 gis4 | %m9
  r4 dis'4 r4 r64 dis8... | %m10
  r4 r64 bis8... r4 r64 fis8... | %m11
  r4 r32 ais8.. r4 r32 dis8.. | %m12

  r4. cis,8 r4. gis'8 | %m13
  r4. eis8  r4. r32 ais16. | %m14
  r4. r32 fis16. r4.. fis16 | %m15
  r4.. dis16 r4... gis32 | %m16

  << eis'1~ {\n s4\< s\f}>> | %m17
  eis2. fis4~ | %m18
  fis1~ | %m19
  fis4 bis2.~ | %m20

  bis4 ais2 eis4~ | %m21
  eis4 gis2.~ | %m22
  %\time 5/16
  gis4~ gis16 | %m23

  \key c \major
  %\time 4/4
  <c,,, a'>2\pp\<^\markup \italic "sul pont."~ 8 <d a'>4. | %m24
  <c a'>2\p\<~ 8 <d a'>4. | %m25
  <c a'>2\mp\<~ 8 <d a'>4. | %m26

  <c a'>2\mf~ 8 <d a'>4. | %m27
  <c a'>2~ 8 <d a'>4. | %m28
  <d a'>2~ 8 <e a>4. | %m29
  <f a>2~ 8 <g a>8 r4 | %m30
}%end violinIIPop

violaPop = \relative c' {
  \key cis \major
  %hmy1
  \no-line {r2 \n \square <ais eis'>2\<~} | %m1
  \no-line \n \square <ais eis'>1\f\>~  | %m2
  << \square <ais eis'>2. \no-line {s2 s8\!}>> |
    \n ais'4\<^\markup \italic "detaché" | %m3
  dis, fis eis gis | %m4

  %hmy2
  gis\ppp\> dis\! fis\ppp\> bis\! | %m5
  eis,\pp\> cis\! bis\pp\> dis\! | %m6
  eis4\p\> cis\! bis\p\> eis\! | %m7
  cis gis' <dis gis>\< <eis bis'> | %m8

  <cis gis>\mp\> <dis gis>\! <cis fis>\mp\> <cis bis'>\! | %m9
  <eis bis'>_\markup \italic "sim." <cis bis'> <bis ais'> <dis ais'> | %m10
  <eis ais>4 <cis fis> <bis fis'> <bis eis> | %m11
  <cis fis> <cis gis'> <dis gis> <eis bis'> | %m12

  <cis gis> <dis gis> <cis fis> <cis bis'> | %m13
  <eis bis'> <cis bis'> <bis ais'> <dis ais'> | %m14
  <eis ais>4 <cis fis> <bis fis'> <bis eis> | %m15
  <cis fis>\< <cis gis'> <dis gis> <eis bis'> | %m16

  r2\! <cis fis>4\mf\> <cis bis'>\! | %m17
  <eis bis'>_\markup \italic "sim." <cis bis'> <bis ais'> <dis ais'> | %m18
  <eis ais>4 <cis fis> <bis fis'> <bis eis> | %m19
  <cis fis> <cis gis'> <dis gis> <eis bis'> | %m20

  <cis gis> <dis gis> <cis fis> <cis bis'> | %m13
  <eis bis'> <cis bis'> <bis ais'> <dis ais'> | %m14
  %\time 5/16
  <eis ais>4 <cis fis>16-. | %m23

  \key c \major
  %\time 4/4
  \clef "treble"
  r1 | %m24
  r1 | %m25
  r2 a''2\p\<~ | %m26

  a4\mf d, f8 a b4~ | %m27
  b2. a4-> | %m28
  b1 | %m29
  d2.\glissando \half-harmonic d4\fermata | %m30
}%end violaPop

celloPop = \relative c {
  \key cis \major
  %hmy1
  \half-harmonic <cis ais'>1~ | %m1
  \half-harmonic <cis ais'>1^\markup \italic "vib."~ | %m2
  \half-harmonic 
    << { <cis ais'>1^\markup \italic "molto vib."\glissando | } %m3
      { s2 \n s2\> } >>
  \square <cis ais'>1~ | %m4
  %\bar "|"

  %hmy2
  s1\! | %s5
  s1 | %s6
  r2 \n dis2\<^\markup \italic "molt. sul pont."~ | %s7
  << dis1 { s2.. s8\f } >> | %s8
  %\bar "|"

  %hmy3
  \n cis8([\mp\>^\markup \italic "ord." cis cis\!)] \n dis([\mp\> dis dis\!)] 
    ais'([_\markup \italic "simile" ais | %m9
  ais)] eis([ eis eis)] ais,([ gis gis)] \n bis([\mp\> | %m10
  bis bis bis]) bis([ bis bis bis bis]) |%m11
  \headless {bis8(\! 8 8 8)} \headless {bis8([ 8 8)]} \n cis([\mp\> |%m12

  dis dis dis\!)] cis([\mp\> cis\!)] \n fis([\> fis fis | %m13
  fis\!)] \n eis([\mp\> eis eis\!)]
    \n ais,([\mp\> gis gis\!)] eis([\mp | %m14
  eis)] \n fis([\mp\> fis fis fis)] fis([ fis fis | %m15
  fis)] r8\! r8 \n ais'8^\markup \italic "molt. sul pont."\<~ 
    << ais2 { s4. s8\f} >> | %m16

  r2 \n dis,8([\mf\> dis dis\!)] 
    gis([_\markup \italic "simile" | %m17
  gis)] fis([ fis fis)] cis([ cis cis bis)] | %m18
  \n dis([\mf\> dis dis]) dis([ dis dis dis dis]) |%m19
  \headless {dis8(\! 8 8 8)} \headless { dis8([ 8 8)] } cis8([\mf |%m20

  cis dis dis)] ais'([ ais)] \n eis([ eis eis | %m21
  eis)] gis([ gis gis)]
    bis([ bis bis)] ais([ | %m22
  %\time 5/16
  ais)] eis([ eis16)] | %m23

  \key c \major
  %\time 4/4
  r1 | %m24
  r1 | %m25
  r2. r8. e,16\mf^"groovy" | %m26

  b'8 a16 e16 r8. e16 d8 f16 b16 r8. a16 | %m27
  b8 a16 e16 r8. e16 d16 d16 f16 b16 r16 c16 r8 | %m28
  b8 a16 e16 r8. e16 d8 f16 d'16 r8. a16 | %m29
  b8 a16 e16 r8. e16 d8 f16 b16 r4 | %m30
}

timecodePop = {
  \tempo 4 = 108
  \set Timing.defaultBarType = "|"
  s1 | %m1
  s1 | %m2
  s1 | %m3
  s1 | %m4
  \bar "|"
  s1 | %m5
  s1 | %m6
  s1 | %m7
  s1 | %m8
  \bar "|"
  s1 | %m9
  s1 | %m10
  s1 | %m11
  s1 | %m12

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
  \time 5/16
  s4 s16 | %m23
  \bar "|"
  
  \tempo 4 = 84
  \time 4/4
  s1 | %m24
  s1 | %m25
  s1 | %m26
  s1 | %m27
  s1 | %m28
  s1 | %m29
  s1 | %m30
  \bar "|."
}%end timecodePop

%%%%%%%%%%%%%%%%%%%%:
%:                 %:
%:  R  a  v  e  l  %:
%:                 %:
%%%%%%%%%%%%%%%%%%%%:

vibraphoneRavel = \stemless \relative c''' {
  \override FrameBracket.no-bracket = ##t
  %hmy0
  \frameStart s8\ppp <g! aes>4_\markup \bpm 360 \frameEnd \hide g8 
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
  \frameStart \hide g8 <g! a!>4\<_\markup \bpm 480 
    \frameEnd \hide g8 \no-line { \hide g8 s8 s4 | %m25
  s1 | %m26
  s1} | %m27
  %\bar "!"

  %hmy4
  \no-line { s1\p | %m28
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
  \frameExtenderEnd \frameStart <a! b!>4\pp_\markup \bpm 300 
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
  \no-line { s1\< | %m47
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
  \no-line \square \n b2\> \tieDashed \n \square g'2:32\IV\<~ | %m20
  %\bar "!"

  %hmy3
  \no-line \square {g1:32~ | %m21
  g1:32\pp~ | %m22
  g1:32~ | %m23
  g1:32\glissando } | %m24
  g1:32\harmonic\fpp \glissando | %m25
  \half-harmonic g1:32\glissando | %m26
  \no-line \square g1:32\<\glissando \tieSolid | %m27
  %\bar "!"

  %hmy4
  \half-harmonic g1:32\f\>\glissando | %m28
  g1:32\pp\harmonic\glissando | %m29
  g4:32 cis,4:32\< e:32 \tieDashed g:32~  | %m30
  g1:32\mp\>\glissando \tieSolid | %m31
  %\bar "!"
  
  %hmy5
  \tieDashed \n \no-line \square g2:32 \n e2:32\<~| %m32
  << e1:32~ {s2 s\p}>> | %m33
  %\time 2/4
  e2:32\< \tieSolid | %m34
  %\bar "!"
  
  %hmy6
  %\time 4/4
  e4:32 \tieDashed e2.:32->\mp\>~ | %m35
  e1:32\p~ | %m36
  e1:32\< | %m37
  %\bar "!"
  
  %hmy7
  %\time 2/4
  f2:32\mf~ | %m40
  %\time 4/4
  f1:32~ | %m38
  \n f1:32\> \tieSolid | %m39
  %\bar "!"

  %hmy8
  \n a,1\<~ | %m41
  \n a1\p\> | %m42
  \tieDashed \n aes'1:32\<~ | %m43
  %\bar "!"
  
  %hmy9
  \relative c''
  \n aes1:32\p\> | %m44
  r4\! f4(\p\< aes c | %m45
  %\time 5/4
  \n d1)\mp\> r4\! | %m46
  %\bar "!"
  
  %hmy10
  %\time 4/4
  \tieDashed \n bes1:32^\markup {\italic "sul pont."}\<~ | %m47
  \n bes1:32\p\>~ | %m48
  bes2:32\! \n aes2:32^\markup \italic "ord."\<~ | %m49
  %\time 2/4
  aes2:32 \tieSolid | %m50
  %\bar "!"
}%end violinIRavel

violinIIRavel = \relative c'' {
  %hmy0
  \no-line { \n \square b1\<~ | %m1
  \square b1\glissando | %m2
  \half-harmonic bes1\glissando } | %m3 
  %\bar "!"
  
  %hmy1
  bes\fp~ | %m4
  bes1\>~ | %m5
  bes1\pp~ | %m6
  bes2 \n 
  
  <<
  \new Voice {
    g2\<~| %m7
    g1\mp\>~ | %m8
    g1\p~ | %m9
    g1 \glissando | %m10
    \no-line \square g1^~ | %m11
  %\bar "!"

  %hmy2
    \no-line \square  g1^~ | %m12
    \stemless \hide g4 
    }
  \new Voice {
    s2 | %m7
    s1 | %m8
    s1 | %m9
    s1 | %m10
    s1 | %m11
    
    \no-line { c,8\rest \once \tieDown \once \stemDown \square c2..~} | %m12
    \no-line \square {<g' c,>2~ \tieDashed <g c,>2:16\<~ | %m13
    <g c,>1:32\mp^~} | %m14
    \n \no-line \square g1:64\> | %m15
    \n e1:32\<~ | %m16
    e1:32\p~ | %m17
    e1:32~ | %m18
    e1:32~ | %m19
    \n e1:32\> \tieSolid | %m20
    r2\!
  }>>
  %\bar "!"

  %hmy3
  d'4\pp bes4~ | %m21
  bes1~ | %m22
  bes2 \n bes2\p\>~ | %m23
  bes1 | %m24
  r4\! b!2.\p~ | %m25
  b1~ | %m26
  b2. a8\< g | %m27
  %\bar "!"

  %hmy4
  b1\mf\> | %m28
  g1\fp~ | %m29
  g1\glissando | %m30
  \no-line \square g1\<~ | %m31
  %\bar "!"
  
  %hmy5
  \n \no-line \square g2\mf\> \tieDashed \n cis2:32\<~| %m32
  cis2:32 c2:32\p~ | %m33
  %\time 2/4
  c2:32\<~ \tieSolid | %m34
  %\bar "!"
  
  %hmy6
  %\time 4/4
  \tieDashed c4:32 cis2.:32\fp~ | %m35
  cis1:32~ | %m36
  cis1:32\< \tieSolid | %m37
  %\bar "!"
  
  %hmy7
  %\time 2/4
  \tieDashed <b e\harmonic>2:32~ | %m40
  %\time 4/4
  < b e\harmonic>1:32\f\> | %m38
  <bes es\harmonic>1:32\mp\<~ | %m39
  %\bar "!"

  %hmy8
  \tieDashed <bes f'\harmonic>1:32\sp~ | %m41
  \n <bes f'\harmonic>2.:32\> r4\! | %m42
  \n <bes es\harmonic>1:32\< | %m43
  %\bar "!"
  
  %hmy9
  \tieDashed <bes f'\harmonic>1:32\pp\<~ | %m44
  <bes f'\harmonic>1:32~ | %m45
  %\time 5/4
  \n <bes f'\harmonic>1:32\p\> r4\! \tieSolid | %m46
  %\bar "!"
  
  %hmy10
  %\time 4/4
  \tieDashed \n f'1:32\<^\markup \italic "sul pont."~ | %m47
  f1:32\pp\<~ | %m48
  \n f2.:32\p\> \n f4:32\<~ | %m49
  %\time 2/4
  f2:32 \tieSolid | %m50
  %\bar "!"
}%end violinIIRavel 

violaRavel = \relative c' {
  %hmy0
  \no-line { \square d1\p^\markup \italic "sul pont."~ | %m1
  \square d1~ | %m2
  \square d1~} | %m3 
  %\bar "!"
  
  %hmy1
  \no-line {\square d1^\markup \italic "ord."~ | %m4
  \square d1\<~ | %m5
  \square d1~ | %m6
  \square d1\mp\glissando} | %m7
  \square d1\harmonic~ | %m8
  \n d1\harmonic\> | %m9
  r4\! \stemUp \tieDashed \n <a e'\harmonic>2.:32\<~ | %m10
  <a e'\harmonic>1:32\mp\>\glissando \stemNeutral \tieSolid | %m11
  %\bar "!"

  %hmy2
  \n \no-line \square a1:32\pp\> | %m12
  r4\! 
  
  << 
    \new Voice {
      \clef "treble" \grace {g'8~} \stemUp <g d'>2.\p_~ | %m13
      g1~ | %m14
      g1~ | %m15
      e1\rest | %m16
    }
    \new Voice {
      s2. | %m13
      s1 | %m14
      \stemUp d'4\rest d2.^~ | %m15
      \stemNeutral d1\<~ | %m16
      << d1 {\n s2...\mp\> \clef "alto" s16\!} >> | %m17
    }
  >>
  \tieDashed \n f,,1:32\harmonic\IV\<~  | %m18
  \n f1:32\p\>\harmonic~ | %m19
  f2:32\harmonic r2\! \tieSolid | %m20
  %\bar "!"

  %hmy3
  r2\! bes'4\pp g4~ | %m21
  <<g1 {s2 \n s\>}>> | %m22
  r4\! \clef "treble" 
  <<{\n c2.\<~ | \n c1\>~ | }
    {s2 s4\mp |s2..... \clef "alto" s64}>> | %m23
  \n c,1:32->\harmonic\pp~  | %m25
  c1:32\harmonic~ | %m26
  c1:32\harmonic\< | %m27
  %\bar "!"

  %hmy4
  \tieDashed <gis cis\harmonic>1:32\p~ | %m28
  <gis cis\harmonic>1:32~ | %m29
  <gis cis\harmonic>4:32 e':32 \clef "treble" \n cis'2:32\>~ | %m30
  cis1:32 \tieSolid | %m31
  %\bar "!"
  
  %hmy5
  r4\! b4\p g4 e4~ | %m32
  e2 a4 g4\<~ | %m33
  %\time 2/4
  g2~ | %m34
  %\bar "!"
  
  %hmy6
  %\time 4/4
  g2 b4\mp e4~ | %m35
  e2. e4\<~ | %m36
  e4 e4 e4 e4 | %m37
  %\bar "!"
  
  %hmy7
  %\time 2/4
  e2\f~ | %m40
  %\time 4/4
  e2 c2~ | %m38
  c4 d2.( | %m39
  %\bar "!"

  %hmy8
  e1\p) | %m41
  c2.
  
  <<
    { d4~ | %m42
      d1 | } %m43 
    { s4 | %m42 
      \n s2....\> \clef "alto" s32\!}>> | %m43
  %\bar "!"
  
  %hmy9
  \n f,,1\IV\harmonic\<~ | %m44
  f1\p\harmonic\glissando | %m45
  %\time 5/4
  \half-harmonic f1~ \half-harmonic f4\< | %m46
  %\bar "!"
  
  %hmy10
  %\time 4/4
  \tieDashed \n \half-harmonic f4:32\IV\pp\> r4\! 
    r4 \n \half-harmonic f4:32\< | %m47
  \n d'2:32\harmonic\pp\>~ \n d2:32\harmonic\<~ | %m48
  \n d2:32\harmonic\p\> r4\! \tieSolid \half-harmonic f,4:32\IV\mp\< | %m49
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
  <c f\harmonic>2:32 
    \clef "treble" bes''4\fp_~ <bes d>~| %m12
  <bes d>1\glissando | %m13
  \n \half-harmonic <bes d>1\>\glissando | %m14
  <bes d>1 | %m15
  g1\pp\<~ | %m16
  g1\mp\>~ | %m17
  g1\p\glissando | %m18
  \half-harmonic g1\glissando | %m19
  \no-line \square g1~ | %m20
  %\bar "!"

  %hmy3
  \once \override Hairpin.to-barline = ##f
  \n \no-line \square g1\> | %m21
  \n << d'1\<~ {s2. s4\mp}>> | %m22
  << d1\>~ {s2 s\pp}>> | %m23
  << {d2.. c8} {s2 s\<}>> | %m24
  e1:32\harmonic \glissando | %m25
  \half-harmonic \n e1:32\>\glissando | %m26
  \no-line \square e2. \clef "bass" f,,4\p | %m27
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
  \n e2\> | %m34
  %\bar "!"
  
  %hmy6
  %\time 4/4
  \no-line {r4\! \square a2.\fp\glissando } | %m35
  \half-harmonic a1\glissando | %m36
  a1\< | %m37
  %\bar "!"
  
  %hmy7
  %\time 2/4
  \tieDashed d2:32\fp~ | %m38
  %\time 4/4
  d1:32~ | %m39
  d1:32\glissando | %m40
  %\bar "!"

  %hmy8
  \half-harmonic d1:32~ | %m41
  \n \no-line \square d1:32\> \tieSolid | %m42
  \n d1(\< | %m43
  %\bar "!"
  
  %hmy9
  c'1)\!~ | %m44
  c2 \tieDashed \clef "tenor" \n <aes,, des\harmonic>2:32\<~| %m45
  %\time 5/4
  <aes des\harmonic>2.:32\> aes4\p\< bes4 \tieSolid | %m46
  %\bar "!"
  
  %hmy10
  %\time 4/4
  c2\! f,4 aes8 c | %m47
  d1 | %m48
  r8 c16 d \tuplet 3/2 { f8 e c } d2\<~ | %m49
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
  \frameExtenderEnd \frameStart <g! aes>32\mf\>_\markup \bpm 360 
    \hide g,32 \frameEnd \hide g'16 \no-line { s8 s2. } | %m1
  \no-line { s1 | %m2
  s1\mp | %m3
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
  \no-line { s1\p | %m12
  s2... \frameExtenderEnd s16 }| %m13
  \frameStart \hide g8\< <g! a!>4_\markup \bpm 360 
    \frameEnd \hide g8 \no-line { \hide g8 s8 s4 }| %14
  %\bar "!"

  %hmy4
  \no-line { s1\mp | %m15
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
    \makePercent s4 | %m1

  << \makePercent s4 \n s4\> >> \makePercent s4 g32 aes g g aes g g aes
  \headless { g\!^\markup \italic "tacet" b g g b g g b } | %m2
  \n << g1:32\harmonic\glissando\< { s2 s2\mp} >> | %m3
  \half-harmonic g1:32\glissando | %m4
  %\time 2/4
  \tieDashed g2:32 ~ | %m5
  %\bar "!"

  %hmy2
  %\time 4/4
  g1:32~ | %m6
  g1:32~ | %m7
  \n g1:32\>~ | %m8
  g4:32 r4\! \tieSolid g,2\p\<~ | %m9
  g1 | %m10
  bes4\mp c2.->\< | %m11
  %\bar "!"

  %hmy3
  d4 c2.->\mf | %m12
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
  \half-harmonic cis1.:32\mp\glissando | %m19
  %\bar "!"
  
  %hmy6
  %\time 4/4
  \tieDashed cis1:32 | %m20
  c!1:32~ | %m21
  c1:32 | %m22
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
  e1:32\mp\glissando | %m10
  e1:32\harmonic\>~ | %m11
  %\bar "!"

  %hmy3
  \tieDashed e1:32\harmonic~ | %m12
  e1:32\harmonic\p~ | %m13
  e1:32\harmonic\<~ | %m14
  %\bar "!"

  %hmy4
  e1:32\harmonic~ | %m15
  e1:32\harmonic\mp~ | %m16
  e1:32\harmonic\glissando | %m17
  %\bar "!"
  
  %hmy5
  %\time 6/4
  \n e1.:32\>~| %m18
  e1.:32 \tieSolid | %m19
  %\bar "!"
  
  %hmy6
  %\time 4/4
  b2\mp g2 | %m20
  <<
    \new Voice {
      a1\<~ | %m21
      <a e'>1\mf~ | %m22
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
  d1.\< | %m24
  %\bar "!"

  %hmy8
  %\time 4/4
  e2.\f\II\glissando \half-harmonic e4 | %m25
  \half-harmonic c1\II\glissando | %m26
  \no-line \square c1~ | %m27
  %\bar "!"
}%end violinIIRavel 

violaRavelB = \relative c'' {
  %hmy1
  \clef "treble"
  \tieDashed \half-harmonic e1:32\f\>~ | %m1
  \half-harmonic e1:32\mf\glissando | %m2
  e1:32~ | %m3
  \n e1:32\>~ | %m4
  %\time 2/4
  e2:32 \tieSolid | %m5
  %\bar "!"

  %hmy2
  %\time 4/4
  \n bes1^\markup \italic "sul pont."\<~ | %m6
  bes1\f\>~ | %m7
  bes2.  g4\fp^\markup \italic "ord."~ | %m8
  \n g1\> | %m9
  r4\! \clef "alto" \tieDashed \n f,2.:32\harmonic\IV\<~  | %m10
  f1:32\harmonic\mp\>~  | %m11
  %\bar "!"

  %hmy3
  f1:32\p\harmonic~ | %m12
  f2:32\harmonic \clef "treble" c''2:32~ | %m13
  c1:32\< | %m14
  %\bar "!"

  %hmy4
  \tieDashed <cis\harmonic fis,>1:32\mf\>~ | %m15
  <cis\harmonic fis,>1:32\mp\glissando | %m16 
  \once \stemUp \n \half-harmonic cis1:32\> \tieSolid | %m17
  %\bar "!"
  
  %hmy5
  %\time 6/4
  b2\mp g2 e2 | %m18
  a8->\III g4.~ g1\glissando\< | %m19
  %\bar "!"
  
  %hmy6
  %\time 4/4
  \n g1\harmonic\mf\>~ | %m20
  g1\harmonic~ | %m21
  << g1\harmonic {s2.... \clef "alto" s32\! }>>| %m22
  %\bar "!"
  
  %hmy7
  %\time 6/4
  f1.\harmonic\p\<~ | %m23
  f1.\harmonic\glissando | %m24
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
  d1\f\< | %m1
  \clef "bass" \n <bes c,>1\sfz\>~ | %m2
  c,1 | %m3
  r4\! \clef "treble" \tieDashed \n c''2.:32\<~  | %m4
  %\time 2/4 
  c2:32~ \tieSolid | %m5
  %\bar "!"

  %hmy2
  %\time 4/4
  \tieDashed c1:32\mp\>~ | %m6
  c1:32\p~ | %m7
  c1:32~ | %m8
  \n c2:32\> r4\! \tieSolid \clef "bass" d,,4\p\<~ | %m9
  d1 | %m10
  e1\mp~ | %m11
  %\bar "!"

  %hmy3
  e1 | %m12
  c2.\< b4~ | %m13 
  b1\mf | %m14
  %\bar "!"

  %hmy4
  e,1~ | %m15
  e1 \glissando
  \half-harmonic e1~ | %m17
  %\bar "!"
  
  %hmy5
  %\time 6/4
  \n \half-harmonic e1.\glissando | %m18
  \n \no-line \square e1.\> | %m19
  %\bar "!"
  
  %hmy6
  %\time 4/4
  \tieDashed \no-line \square { \n <g d'>1:32\<~ | %m20
  <g d'>1:32~ | %m21
  <g d'>1:32\p\glissando } | %m22
  %\bar "!"
  
  %hmy7
  %\time 6/4
  \no-line \square <d' a'>1.:32\<~ | %m23
  \no-line \square <d a'>1.:32\mp\glissando | %m24
  %\bar "!"

  %hmy8
  %\time 4/4
  \no-line \square <a' e'>1:32~ | %m25
  \no-line \square <a e'>1:32\<~ | %m26
  \no-line \square <a e'>1:64~\f | %m27
  %\bar "!"
  
}%end celloRavel

timecodeRavelB = { 
  \tempo 4 = 66 
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
  s1 | s1 | s1 | s1 |  
  << \n crashcymbal1:32^"cymbal"(\< 
    { s8 s4.. s16) s4.^\markup \italic "l.v."}>>| %m10

  sn1_"snare, brush"\spp\longfermata~ | %11
  \frameStart << sn1^"(snare)"
    {s4 \frameEnd \stemless \stemHack \hide sn4}>> | %m12
 \hide  sn1 | %m13
 \hide  sn1 | %m14
 \hide  sn1 | %m15
 \hide  sn1 | %m16
 \once \override Hairpin.to-barline = ##f
 \n \hide  sn1\> | %m17
 \hide  sn1 | %m18
 \frameExtenderEnd r2\! s2 | %m19
 \frameExtenderEnd \hide sn1 | %m23
 s1 | %m24
 s1 | %m25
 s1 | %m26
 s1 | %m27
 s1 | %m28
 \hide sn1 | %m29
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
  \no-line { s2 b2\mf~ } | %20
  \stemless \no-line { \frameStart << b1
    {s4 \frameEnd \stemHack \hide b4 }>> | %m21
  s1 } | %m22
  %\bar "|"

  %hmy3
  \no-line s1 | %m23
  \no-line {\n s1\> | %m24
  \frameExtenderEnd s1\! | %m25
  s1 | %m24
  b1_"\"shh\"" | %m25
  s1 | %m26
  s1 } | %m29
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
  \square c1\glissando } | %m8
  \half-harmonic c1\f\<\glissando | %m9
  \no-line \square c1 | %m10
  %\bar ""

  %hmy1
  \no-line c1\rest\ff | %m11
  %\bar ";"

  %hmy2
  \stemless \no-line { \frameStart << \n b1\< 
    {s4 \frameEnd \stemHack \hide b4 }>> | %m13
  << s1 { s2 s\pp }>> | %m14
  s2 \frameExtenderEnd a2\rest | %m15 
  r4 } \no-line b2.\pp~ | %16
  \no-line { \frameStart << \stemless b1
    {s4 \frameEnd \stemHack \hide b4 }>> | %m17
  s1 | %m18
  s1 | %m19
  s1 | %m20
  s1 | %m21
  s1 | %m22
  %\bar "|"

  %hmy3
  s1 | %m23 
  s1 | %m24
  s1 | %m25
  s1 | %m26
  s2 \frameExtenderEnd s4 b4_"\"shh\""~ | %m27
  b1 | %m28
  s1} | %m29
}%end violinINoise

violinIINoise = \relative c'' {
  %hmy9
  \no-line \square { c1\>~ | %m1
  c1~ | %m2
  <c f,>1\mp\<~ | %m3
  <c f,>1~ | %m4
  <c f,>1~ } | %m5
  %\bar ";"

  %hmy0
  \no-line \square { <c f,>1\f\glissando | %m6
  <g' c,>1~ | %m7
  <c, f,>1\glissando | %m8
  <f, b,>1\glissando\< | %m9
  <f' b,>1~ } | %m10
  %\bar ""

  %hmy1
  \no-line c1\rest\ff | %m11
  %\bar ";"
  
  %hmy2
  \no-line { a2.\rest b4\pp~ } |
  \stemUp \no-line \stemless { \frameStart << b1 
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
  %\bar "|"

  %hmy3
  s1 | %m23 
  s1 | %m24
  s1 | %m25
  s1 | %m26
  s1 | %m27
  \n s2...\> \frameExtenderEnd s16\!} | %m28
  \no-line { s2 b2^\markup \italic "tacet"}| %m29
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
  \no-line c'1\rest\ff | %m11
  %\bar ";"

  %hmy2
  \clef "alto"
  \no-line { d,1\rest | %m13
  s1 | %m14
  s2 c2\p~ | %15
  \frameStart << b1
    {s4 \frameEnd \stemHack \stemless \hide c4 s4 }>> | %m16
  s1 | %m17
  s1 | %m18
  s1 | %m19
  s1 | %m20
  s1 | %m21
  s1  | %m22
  %\bar "|"

  %hmy3
  s1 | %m23 
  s1 | %m24
  s1 | %m25
  s1 | %m26
  s1 | %m27
  \n s2...\> \frameExtenderEnd s16\! | %m28
  s1 } | %m29
}%end violaNoise

celloNoise = \relative c' {
  %hmy9
  \tieDashed \no-line { \square <a e'>1:32\>~ | %m1
  \square <a e'>1:32~ | %m2
  \n \square <a e'>1:32~ | %m3
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
  \no-line e'1\rest\ff | %m11
  %\bar ";"

  %hmy2
  \no-line { e1\rest | %m13
  s1 | %m14
  s1 | %m15
  s1 | %m16
  s1}| %17
  \once \override Staff.TextScript.outside-staff-priority = #249
  <<
    \new Voice {
      \no-line { d1^"\"Hey, Zach\""\mf~
      \frameStart << d1 | %m18 
	{s4 \frameEnd \stemHack \stemless \hide d4 s4 }>> | %m19 |
      s1 | %20
      s1 | %21
      s1 | %22

      %hmy3
      \n s1\> | %m23 
      \frameExtenderEnd \hide g1\! | %m24
      s1 | %m25
      \n \square <c, a'>1^\markup \italic "sul pont."\<~ | %m26
      \square <c a'>~ | %m27
      \square <c a'>\p\glissando } | %m28
      \half-harmonic <cis ais'>1~ | %m29
      \celloPop
    } 
    \new Staff \no-line {
      \override Staff.FrameBracket.no-bracket = ##t
      \override Staff.Clef.full-size-change = ##t
      \clef "baritone"
      \hide Staff.TimeSignature
      r2. f4^\markup \right-align "Zach:"\mf~ | %m18 
      \frameStart << f1
	{s4 \frameEnd \stemHack \stemless \hide f4 s4 }>> | %m19
      s1 | %m20
      s1 | %m21
      s1 | %m22
      %\bar "|"
      
      %hmy3
      s1 | %m23 
      \n s1\> | %m24
      \frameExtenderEnd \no-line s2\! |%m25
    }
  >>
  %\bar "|"
}%end celloNoise 

timecodeNoise = {
  \override Staff.FrameBracket.no-bracket = ##t
  %\tempo 4 = 60 
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
  %\mark\markup{\musicglyph #"scripts.ufermata"} 

  %hmy2
  \set Score.currentBarNumber = #22
  \once \override Score.BarNumber.transparent = ##f
  \once \override TextScript.outside-staff-priority = #'()
  \once \override TextScript.staff-padding = #'()
  \break
  \set Timing.defaultBarType = ""
  \tempo "Small Talk"
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
  \bar "|"
  
  %hmy3
  s1 | %23
  s1 | %24
  s1 | %25
  s1 | %26
  s1 | %27 
  s1 | %28
  s1 | %29
  \bar "|"
}%end timecodeNoise


%Called by Staves in \score
trap = {
  \timecodeRavel
  \timecodeRavelB
  <<\timecodeNoise \trapNoise>>
  \trapPop
}
vibraphone = {
  \vibraphoneRavel
  \vibraphoneRavelB
  \vibraphoneNoise
  \vibraphonePop
}
violinI = {
  \violinIRavel
  \violinIRavelB
  \violinINoise
  \violinIPop
}
violinII = {
  \violinIIRavel
  \violinIIRavelB
  \violinIINoise
  \violinIIPop
}
viola = {
  \violaRavel
  \violaRavelB
  \violaNoise
  \violaPop
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
  \timecodePop
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

  #(set! paper-alist (cons '("ipad pro" . (cons (* 215 mm) (* 280 mm))) paper-alist)) 
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

