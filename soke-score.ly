%Sat, 13 Oct 2018 15:24:20 -0500
\version "2.18.2"
  
\header {
  title = "Soke"
  subtitle = "for Bent Duo"
  composer = "Z.V. Pine"
  tagline = ""
}%end header

% $1 Definitions and Functions %
fl =
#(let ((m (make-articulation "flageolet")))
   (set! (ly:music-property m 'tweaks)
         (acons 'font-size -2
                (ly:music-property m 'tweaks)))
   m)

drumPitchNames.cym  = #'cymbal
drumPitchNames.cymx = #'cymbalx
drumPitchNames.tom	= #'tom
drumPitchNames.tx = #'tomx

#(define trap '(
  (cymbal   default #f  1)
  (cymbalx  cross   #f  1)
  (tom	    default #f -1)
  (tomx	    cross   #f -1)))

lv = \laissezVibrer
tron = \startTrillSpan
troff = \stopTrillSpan
crots = \change Staff = "crotales"
vibes = \change Staff = "vibes"
chup = \change Staff = "up"
chdown = \change Staff = "down"
niente = \once \override Hairpin.circled-tip = ##t
diamond = \once \override NoteHead.style = #'harmonic
di = \once \override NoteHead.style = #'harmonic
rit = \override TextSpanner.bound-details.left.text = "ritardando"
acc = \override TextSpanner.bound-details.left.text = "accelerando"
spon = \startTextSpan
spoff = \stopTextSpan
son = \sustainOn
soff = \sustainOff
fppp = #(make-dynamic-script "fppp")
fpp = #(make-dynamic-script "fpp")
subp = #(make-dynamic-script "sub p")
begone = {
  \once \override NoteHead.no-ledgers = ##t
  \once \hide NoteHead }
drumCross = {
  \once \override Stem.cross-staff = ##t  
  \once \override Stem.Y-offset = #-1.7
  \once \override TupletNumber.Y-offset = #3.5
}
long = \once \override Stem.length = #14
%$2 Begin A Section %

% $january
january = <<
  %\mark "Carefully plotting out the unfolding of a single pitch"
  \tempo 8=56
  \new Voice \relative c'' {
    \change Staff = "up" \time 7/8
    g2\ppp~ 4. | r2 r4. | \pitchedTrill d'8_\ppp\<\tron es
      \niente es8:64\pp\>\troff \tuplet 7/4 {es32[ 32 32 32 32 32 32]} es8\! r4
      \tuplet 6/4 {es32\< es es es es es} |
    \pitchedTrill d4\ppp\tron es \tuplet 3/2 {es!32\troff es es} r16 
      \tuplet 3/2 {r16[ e8-.]} r8 \tuplet 3/2{f32 f f--} r16 r16[ fis16]-. |
    \time 9/8 s8 s32. \crossStaff dis64 r16 
      \tuplet 3/2 {r16[ dis16-.\pp 16~]} dis8
      \tuplet 3/2 { r16[ dis8-.]} r16 \pitchedTrill dis16\tron\<~ cis 
      dis16-.\troff\! dis8.-- r32 dis32-. r16 |
    r8. d16-. r16 d32-.[ d--] r8 r32 d32[ d-- e-.] r16 fis~ fis4~ 
      \pitchedTrill fis8\> \tron e | \time 5/8 
    \tuplet 5/4 {r32[\troff fis( e d f,)]\ppp} r8 \troff r4. |
  }%end up

  \new Voice \relative c {	
    \change Staff = "down"
    fis2~ fis4. | fis2~^\pppp fis4 r8 | \tuplet 3/2 {f'16[--\f r8]} r4. r4. |
      r4 d,,8~_\pp d2 | \stemDown \ottava #-1 
	\tuplet 9/8 {g,64[^\p( a des ges f c e es as,]} 
      d64[ g, fis64) \ottava #0 \once \hide NoteHead f'] \chdown 
      \stemNeutral s8. s4. s4. \clef "treble" | 
    \tuplet 3/2 {f''16[^\pp f f32 f]--} \tuplet 3/2 {r16[ f f32 f]}
    \tuplet 3/2 {f32[ f~ f16 r16]} \tuplet 3/2 {r16[ f16 f~]}
    \tuplet 3/2 {f32[ f r8]} \tuplet 5/4 {f16-.[ r16 e32--]}
      r8 \tuplet 5/4 {r32[ e8]->} r8 | s4 s4. \clef "bass" |
  }%end down
>>
januaryVibes = <<
  \new Voice \relative c {
    \change Staff = "vibes" \time 7/8
    \tuplet 6/4 {fis32[\ppp^"Vib" fis fis fis fis fis]} 
      fis4.:32\> <fis g'>4.:32\pppp\<^~ | g'4\p s4 s4. | 
    s8 r8 \niente e'4:32\<~ <e f>4.:32\mf\>~ | e8.\!\troff 
      \niente cis'16\mp r16 c,, s8 r8 r16 s16 s8  |
    \time 9/8 s8 dis'4:32\pp~ dis4.:32~ dis4:32~ dis16
      \once \stemDown \tuplet 3/2 {g,32[(\> fis e']} | 
    f8-.)\ppp r4 r2. | r4 r4. | 
  }%end vibes
>>%end januaryVibes

januaryTrap = \drummode {
  \tempo 8=56
  \time 7/8 cym8\f^\markup {\halign #1 "Cym"} s4. s4. |
  s4 tom:32^\markup {\halign #1.5 "Tom"}\pppp ~ \niente tom4.:32\> |
  \tuplet 3/2 {cym16\ppp cym8} s8 s4 s4. | s4. \tuplet 3/2 {r16[ cym8]\pp} s8
    s16 \tuplet 3/2 {tom32[\pppp 32 32]} tom8 | 
  \time 9/8 cym8\p s4 s2. |
  \autoBeamOff r8 cym8\pp cym16 \tuplet 3/2 {tom32[ tom tom]}
  \tuplet 3/2 {tom32[ tom tom16 tom]} \tuplet 3/2 {cym16[ tom tom32 tom]} 
  \tuplet 3/2 {tom32[\< tom tom cym tom cym]} 
    \tuplet 3/2 {tom16[\p cym16 32 32]} 
  cym4:32\>~ | cym4\ppp s4.| 
}%end januaryTrap

% $february
february = <<
  %\mark "First compression, inharmonics, grace notes"

  \new Voice \relative c' {
    \change Staff = "up" 
    \tuplet 5/4 {<f es>32[ es32 32 32 32]}
      \pitchedTrill es4\tron~ f \tuplet 3/2 {es16[\troff 16 32 32]} es8:64\< |
    \stemDown
    \time 7/8 es64[\p es es' r64 es\> es r64 es] es16-.[\pp r32 es32~]
      es64[ es es r64 r64 es32.--] es64[\> 64 r32 es32-- r64 es64~] 
      es8 es8.\ppp \chdown \stemUp fis,,16^~ |
    fis2^~ fis4.^~ | fis2 s4. |
    \chup \stemNeutral e'4 s8 f8^~ f32 s16. f4 | cis''2->~ cis4.~ | 
    \time 9/8 cis2. r4. | \time 6/8 
    g,4.:16\ppp~ \niente g4.:16\> | fis'8-.\pp r4 r4. | 
    \time 5/8 <es' d,>8-. <f e,>8 
      \tuplet 6/4 {\chdown fis,,,,32-.[ f' \chup fis' fis' \chdown f, fis,]\!}
      \chup s4 |
    \stemUp \acc s8\spon \once \hide NoteHead b''32 s16. <bes e,>32 s16.
    <aes es>16 s32 s \stemNeutral <<{g8->}{s16 s\spoff}>> | s2\fermata | 
  }%end up

  \new Voice \relative c {
    \change Staff = "down" 
    s4 s4. | s2 s4. | \voiceTwo g8-> r8. g16-. r8 fis4.~ | fis2 \oneVoice r4. |
    \chup \voiceTwo \tuplet 3/2 {dis''16 16 16}
      \tuplet 5/4 {32 32 32 32 32} \pitchedTrill 8\<\startTrillSpan e
	dis16[\troff\> 16] \tuplet 5/4 {32\ppp 32 32 32 32}
      32[ 32 32 32] \tuplet 3/2 {16 16 16} | 
      \repeat tremolo 4 {dis32\mp\> \chdown \once \stemUp fis,} s2\! s8 | 
    \oneVoice \time 9/8 s2 
      \new Voice {\hide Beam \hide Stem 
      \diamond <b g>32_"Sost.⟶" \di <bes aes>32 s16 s2 } |
    \time 6/8 aes8-. r4 r4. |
    \tempo 8=66 a,4.:16( e4.:32)^\< | \time 5/8
      \tuplet 6/4 {bes'32([\f a fis d f a)]} \pitchedTrill 
      bes8\tron a s8\troff \pitchedTrill 
      b4\sp \startTrillSpan ais |
    <<\autochange \relative c{
    \stemDown c64\troff[^\ff d, des' c' b' d,, des' c'] 
    \tuplet 6/4 {b'32 c,,, f des' d, dis''}
    \stemNeutral \tuplet 5/4 {\crossStaff d,,,32[ cis' f c a']} 
      \tuplet 3/2 {es''16[ d,, cis,]} \once \autoBeamOff b16[ bes16] | 
    \time 2/4 <<{\pitchedTrill g2\tron fis}
      {\niente s4.\spp\> s8\!\troff}>>
    }>> 
  }%end down
>>%end feb
februaryVibes = <<
  \new Voice \relative c'' {
    \change Staff = "vibes" \autoBeamOff
    < es f'>8 r16 <d, es'>16 r8 r32 e16._\fl r16 \tuplet 3/2 {d32[\< d d]} |
    \time 7/8 s8\! 
      \tuplet 9/8 {es'64[\pp\> es d es es es d d d]} es8\ppp 
      \tuplet 3/2 {r16[ d8->]} s8 r \tuplet 5/4 {\niente d,32[(\< d d d d]} |
    e2)\p \niente f,4.:32\<~ | \once \override Stem.length = #24
      f4\mp s4 s4. | 
      r2 \niente e4.\downbow\<~ | 
      \once \override Stem.length = #24 e4._\fl\mf s8 s4. |
    \time 9/8 s2. s4. | \time 6/8 
    fis'4.\ppp~ <fis g!>4.:32\<~ |
    <fis gis>4.:32\pp~ <fis d'>8:64^\<~ <fis dis'>8:64 
      e'16\glissando \parenthesize {\once \tiny} f,,  | \time 5/8
    s4.\f s4 |
    s8 <e'' d'> <f d'>16 s16 <fis dis'>16 s16 <g e'>16 s16 |
    \set tieWaitForNote = ##t
    \time 2/4 <aes f'>16[~ <b, a'>16]~ <b aes' a f'>4. |
  }%end vibes
>>%end februaryVibes

februaryTrap = \drummode {
  s4 s4 s8 | \time 7/8
  cym8\mp s4. cym8\pp s4 | s4 s4 s4. |
  \tuplet 5/4 { \drumCross \begone tom32[ \niente tom32\> 32 32 32]} 
    tom4.:32~ tom4.\! | s4. s2 | 
  \tuplet 5/4 { \drumCross \begone tom16[ s32 tom32\> 32]}
    \tuplet 3/2 {tom16[ tom\p r]} r8 \acciaccatura {tx16} tx8\pp r8 
    \acciaccatura {tx16[ tx]} \tuplet 3/2 {tx8[ tx16]} r16 tom\pppp |
  \niente tom2.:32\>^"edge → center → edge" r4.\! | s2. | 
  \tempo 8=66
    s4. s4  r16 \tuplet 3/2 {cym32[ cym cym]} | \autoBeamOff
    cym8 tom4-> \niente tom4:32\sp  | 
  \acc cym8\ff\spon s8 s16 cym s cym s cym\spoff |
    \time 2/4 s8 s4.\fermata | 
}%end februaryTrapr

% $march
marchVibes = <<
  %\mark "Brief passsage of fast material, non-collection pitches"
  \tempo 4=40
  \new Voice \relative c''' {
    \time 5/4 \change Staff = "vibes"
    <<{aes2~^\markup {Vibraphone, \italic arco for 3 meas.} 
      aes2. | e'2. dis2~ | dis2.~ dis2 |}
    \\{a,,2_\ppp g''2.~ | g2 ais4~ ais2~ | ais2.~ ais2 |}>> | s2. s2 | 
  }%end vibes
>>

march = <<
  \tempo 4=40
  \new Voice \relative c'' {
    \change Staff = "up"
      s1 s4 |
      e'4-- r r dis-- r | r2 f,4-- c-- r4 | cis'-- a,-- d-- r r | 
  }%end up
	
  \new Voice \autochange \relative c {
      \time 5/4 a''4--^\ppp r4 fis''-- r2 | s2. s2 | s2. s2 | s2. s2 | 
  }%end down
>>%end march

marchTrap = \drummode {
  \autoBeamOff
  \time 5/4 s2. s2 | s2. s2 | s2. s2 | s2. s2 | 
}%end marchTrap

% $april
aprilVibes = <<
  %\mark "Plotting"
  \tempo 8=60

  \new Voice \relative c'' {
    \change Staff = "vibes" \time 7/8 
    g2\ppp c4.^"Crotales"\downbow^~ | 
      c8 r4 \niente cis,2^"Vib"_\fl\downbow\< | dis4\downbow\pp~ dis4_\fl s4 
      \once \omit TupletNumber \tuplet 3/2 {s8 
	\once \override Stem.length = #24
	\crossStaff a16} | \set tieWaitForNote = ##t \autoBeamOff 
    \tuplet 3/2 {bes8->[ des16]~} des16 s8. 
      \grace {ges,16} f16 \niente g'16\<\downbow~ g4.\!~ |
    g8 s4. b'16~ c16~ <b c>4 | \time 5/8 r4. s4 | \once \omit TupletNumber
    \time 6/8 \tuplet 3/2 {s8 \once \override Stem.length = #20 
			      \crossStaff a,16} 
      g4:32\spp~ <g fis>4.:32\< | 
    g8\mp g32[ g g g] g16[ cis] d16 s \afterGrace s4 {b,16[ dis]} |
    \tuplet 5/4 {f16[ d'16.]~} d8:64\> r8\!
  }%end vibes
>> %end aprilVibes

april = <<	
  \tempo 8=60
  \new Voice \relative c'' {
    \change Staff = "up" \time 7/8
    aes8-. r4 \pitchedTrill g8\tron fis \tuplet 5/4 {fis32\troff[ 32 32 32 32]}
      \tuplet 3/2 {16 16 16} \repeat tremolo 4 {fis64 fis'}  |
      \tuplet 3/2 {e'16 g, g,} s4 r4 \tuplet 3/2 {f16 f f} 
      \set tieWaitForNote = ##t \tuplet 3/2 {f8~ e16~} | <f e>2 r4. |
    r4 \clef "bass" \tuplet 3/2 {r16[ e,,8]->}  r2 |
    r8 r32 d16. \clef "treble" \stemUp  
      \tuplet 3/2 {r8[ b'''16~]} <b ais>2 |
    \time 5/8 \stemNeutral cis4.~ cis4 |   
    \time 6/8 a'8-> f,4 s8 \repeat tremolo 4 {gis'32\< g,} |
    \tuplet 3/2 {g16\![ g g]} \grace {g16} s8 
      \tuplet 5/4 {g32[ 32 32 32 32]} s4. | 
      \tuplet 5/4 {f32[ \once \hideNotes d bes'16.~]} \stemUp
      \tuplet 5/4 {bes32[ bes\> bes bes bes]} aes8\!
  }%end up
	
  \new Voice \relative c' {
    \change Staff = "down" \time 7/8
    s4._\markup {\right-align Sost. \musicglyph "pedal.*"} s2 | 
      s8 ais4-. s2 | s4. s2 |
    aes16 \tuplet 3/2 {g32[ g g]} g[ g g g] \pitchedTrill g8\tron fis
      \tuplet 5/4 {g32\troff[\> g g g g]}
      \tuplet 3/2 { g8\! g32 es--} \tuplet 3/2 {r8[ es16-.]} f8-- |
      r16[ f] \tuplet 3/2 {f f f} f8 r2 | \time 5/8 r4. r4 |
    \time 6/8 s4. fis8 s4 | s8 f! s8 e8 b4 | \stemUp \once \omit TupletNumber 
    \tuplet 5/4 {s32 \crossStaff des s16.} s4 
  }%end down
>>%end april

aprilTrap = \drummode {
  \autoBeamOn
  \time 7/8 s2 r4 \tuplet 3/2 {cym16\< 16 16} | cym8\p s4. s4. |
    s2 r16 \niente tom\< tom[ tom32 tom] 
      \tuplet 3/2 {tom16\p cym \begone \drumCross tom} | s8 s16 cym cym8-> s2 |
  s8 \tuplet 3/2 {r16[ tom16\ppp 16]} \tuplet 3/2 {tom[ tx tx]} cym8 s4. |
    \time 5/4 s4. \niente cym4:32\< |
    \tuplet 3/2 {cym16\mf tom \begone \drumCross tom} s4 s4. |
    s4 s8\< s16 \tuplet 3/2 {tom32 32 32} tom4:32\mf\> | s4.\p 
}%end aprilTrap

% $august
augustVibes = <<
  %\mark "Crazy Energy. All ideas at once."

  \new Voice \relative c'' {
    \change Staff = "vibes" 
    r8 \tuplet 7/4 {<e g,,>32[\< fis, ais e c' dis, f'!]} 
      \repeat tremolo 4 {cis,64 a''} |

    \time 8/8 \autoBeamOff
    <a,, e' g b>16[\f <d a' c f>] <c' fis>8 
      \tuplet 3/2 {a16[ <a fis'>8]} <f! c' fis!>8 
      <cis' g'!>8:64 <cis gis'>:64 <cis a'>:64 b'16\glissando 
      \parenthesize { \once \tiny f,,16 }
    \time 5/8 r8 \tuplet 5/4 {fis32[_( c' fis ais d]} g16) r16 r8 
    <f g,>32[ <aes, bes,> <d f,> <es, ges,>] | \time 6/8
    <c' des,>4:32\>~ des,16\! s16 s4. \bar "||" \time 4/8
    s8 r4. | \time 3/16 s8. | \time 5/8
    s4 r16 ges8.~ \tuplet 3/2 {ges16[ f8]~} | f4. r4 | \niente 
    c'4.^"Crotales"\downbow\< ~ c4\ppp | 
    r8\! \niente b4^"Vib"\downbow\< c4\ppp~ |
    \time 5/16 c8. r8 | 
  }%end vibes
>>

august = <<
  \new Voice \relative c'' {
    \change Staff = "up" \acc
      \tuplet 3/2 {bes16[\spon 16 c32 g]} \stemNeutral
      \tuplet 7/4 {cis32[ 32 32 32 32 32 32]} 
      \repeat tremolo 4 {d64 f,\spoff} \autoBeamOff
    \tempo 8=76

    \tuplet 3/2 {<e dis'>16->[ e32 dis'16.]} \repeat tremolo 4 {f,64 e'} 
      \repeat tremolo 4 {f, es'} \repeat tremolo 4 {fis, d'} 
      \repeat tremolo 4 {g,32 f'}  \repeat tremolo 4 {g, fis'} | \time 5/8
    \repeat tremolo 4 {fis,32 g'} s4 d,8 |
    \time 6/8 fis4. r4. |
    \tempo 8=56
   \time 4/8 g8~ \tuplet 3/2{g16[ g8-.]} r4 |
    \time 3/16 r8. | \time 5/8
    r4. r8 fis8-. | \di <fis d' es>4.^"depress silently"~ \di 4~ |
    \di 4.~ \di 4 |
    e''16-> r s2 | \time 5/16 r8. r8 |
  }%end up

  \new Voice \relative c {
    \change Staff = "down"
    s8 s8^\< r16 aes
    
    \tuplet 3/2 {ges32[\f f'16. d32 es']} r16[ d,->] \tuplet 3/2 {g16 e8} 
      \repeat tremolo 4 {es64 c'} \repeat tremolo 4 {d, es'} 
      \repeat tremolo 6 {f,32 e'} | \time 5/8 \repeat tremolo 4 {g,, fis'}
      \tuplet 6/4 {fis,32[ g' \chup g' fis' \chdown aes,,, f'!]}
      \chup <ges' f'>32[ \chdown <e, g,> \chup <es' d'> \chdown <f, ges,>]
      f,16 fis16 | \time 6/8 \tuplet 5/4 {fis32[^\> c' e f! d]}
      \tuplet 5/4 {aes[ c e g d]} cis,32[ des' d, c'] dis,[ b' e, bes'] 
      f[ a fis aes] \pitchedTrill fis8\tron aes \time 4/8 r2\pppp\troff |
    \time 3/16 r16 g'8 | \time 5/8 fis4. r4 |
    r4 \pitchedTrill e8\tron f e8-.\troff r8 | 
    s4. \clef "treble" \diamond g''4~ | 
    \di g4.~ \di g4 | \time 5/16 s8. s8 \clef "bass" |
  }%end down
>>%end august
augustTrap = \drummode { \autoBeamOff \acc s4\spon s16 s\spoff 
  \tempo 8=76

  \time 8/8 r8 cym16[ \grace {tom16[ tom tom]} tom32 tom] cym8. tom16  
    cym8. cym16 cym8 r16 \tuplet 3/2 {cym32[\<( 32 32]} |
  \time 5/8 cym8->)\! r8 r16 \grace {cym16[ cym]} cym16:128~ cym4 | 
  \time 6/8 s4 s16 tom16:128~ tom4.:32^"center→diameter"\>~ |
  \tempo 8=56
  \time 4/8 tom8\pppp s4. | \time 3/16 r8 \grace {cym32[ cym]} cym16 |
  \time 5/8 cym4 s4. | s4. s4 | s4. s4 | s4. s4 |
  \time 5/16 s8. s8 |
}%end augustTrap

% $september
septemberVibes = <<
  %\mark "Falling apart into perforated material."
  \new Voice \relative c' {
    \change Staff = "vibes" \time 4/8
    es4 r4 | s8 \tuplet 3/2 {es16[ d d]} 
      \tuplet 3/2 {es[ e\ppp r16]} r8 | r16 f r4. |
    \time 2/8 f,4\downbow\<~ | \time 6/8 \autoBeamOff
    f32\f r16. r8 d'8_\fl^\ppp s8 r4 |
    r8 es8 r8 r8 f,4_\fl\downbow~   |
    f8 r16 g16 fis'8 r16 gis'16 r8 \niente g^"Crotales"\<~ | g4.~ g8\mp r4 | 
  }%end vibes
>>

september = <<
  \new Voice \relative c'' {
    \change Staff = "up" \time 4/8
    r16 dis-.\ppp r8 \tuplet 3/2 {r16[ dis8-.]} r16 d16 | 
    \tuplet 3/2 {dis32[ 32 32]} dis16~ dis4 r16 f,16~ | f16 r r f' f,8 r |
    \time 2/8 r8 d'-> | \time6/8 s2. | s8 r s e-> r16 e8. | \grace {g,32}
    fis16[ e] d'[ es]~ es16[ f] r e, \pitchedTrill dis4\tron\<~ e | 
    dis8\troff\mp r4 r4. | 
  }%end up
  \new Voice \relative c {
    \change Staff = "down" \time 4/8
    s2 | r4. es16[ es-.] | s2 | \time 2/8 r8 f-> | \time 6/8 d,4. r |
    d'16[ \chup fis'] \chdown r8 d,16[ \chup fis'] \chdown r8 r \once \stemDown
      \tuplet 3/2 {f,,16 ges' \chup d'} | \chdown r8 d, d, r16 \ottava #-1 d,
      \tuplet 3/2 {r8[ d16\fff]} \ottava #0 r8 | r4. r4. | 
  }%end down
>>%end september
septemberTrap = \drummode {
  \time 4/8 s2 | tx8 s4. | s2 | \time 2/8 s4 |
  \time 6/8 s4. \tuplet 3/2 {r16[ cym8]} s4 |
  s2. | s2. | s2. | 
}%end septemberTrap

% $october
octoberVibes = <<
  %\mark "Staid. Inharmonics predominate."
  \tempo 8=60

  \new Voice \relative c'' {
    \change Staff = "vibes" \time 7/8 \autoBeamOff
    fis,,4.\pp^"Vib"\downbow~ fis4_\fl r8. s16 | %\time 3/8 
    g4.\downbow | \time 6/8
    r8 f4\downbow\<~ f4._\fl~ | \time 5/8 f8\p r4 r4 | \time 6/8
    s2. | s2. | \time 4/8
    d'32[\< e a d] e8\pp <e f> \pitchedTrill dis8~\tron e | dis16\troff s16 s8 s4 |
    s2 | s2 |
  }%end vibes
>>

october = <<
  \tempo 8=60
  \new Voice \relative c'' {
    \change Staff = "up" \time 7/8
    \tuplet 3/2 {g16\pp g g32 g} \niente g4:32\> r8\! r16[ e] fis8.\pp fis16 | 
    \time 3/8 \grace {g32} fis4. | \time 6/8 s8 fis' r16 d~ d4. | \time 5/8
    \niente \pitchedTrill d4.\>\tron es r4\troff\! | 
    \tempo 8=66 \time 6/8 
    \autoBeamOff \omit TupletNumber 
    \tuplet 3/2 {s8 \once \override Stem.length = #0 \crossStaff e,16~} 
      e8 r r16 <e' fis>->~ <e fis>4~ | <e fis>2. | \time 4/8 r2 |
    d,32[\< a' e f] <d' e>8\p r4 | \once \voiceOne <d f>8 
    \repeat tremolo 4 {f'64 e,} f'16 s8 <f g,>16 |
    <fis a,>2 |
  }%end up
  \new Voice \relative c {
    \change Staff = "down" \time 7/8 \autoBeamOff
    fis4~ fis16 fis16~ fis2 | \time 3/8 \grace {s32} s4. | \time 6/8 
    d16[ \chup es'] \chdown r8 r16 a,,16-. r4. | \time 5/8 r8 f4 r4 |
    \set tieWaitForNote = ##t \time 6/8 
    \tuplet 3/2 {g16^~[\ppp fis'~ \chup e']}
      \chdown <g,, fis'>8~ g~ g4 r16[ g16] |
    fis4 r16[ e]~ e4. | \time 4/8 d8 a'^\pp r <d e>~ | <d e>4 <e, f>4 | 
    \chup <d'' e f>16[ \chdown e,] d,8^\< 
      \tuplet 3/2{ r8[ \ottava #-1 a16]} f8 |
    e8\mp dis4. | 
  }%end down
>>%end october

octoberTrap = \drummode {
  \time 7/8 s2 s4 s16 cym | %\time 3/8
  cym4. | \time 6/8 r4 r16 cym16 s4. | \time 5/8
  cym4. \grace {tom16} tom4\ppp | 
  \tempo 8=66 \time 6/8 tom4.:32\pppp~ tom4.:32~ | 
  \tuplet 5/4 {tom16.[ tom16]} \tuplet 5/4 {tom32[ tom16 tom]} 
    tom8 tom8 \tuplet 3/2{ r16[ tom8]} r8 | \autoBeamOff
  \time 4/8 s2 | s16 cym16 cym8\p r4 | r16 cym\< cym16[ cym] cym4\! |
  \grace {cym16} tom2:32~\< | 
}%end octoberTrap

% $november
novemberVibes = <<
  %\mark "Scales and arpeggios. Background wash."

  \new Voice \relative c'' {
    \change Staff = "vibes" \time 9/8
    s8.. \once \stemUp \once \override Stem.length = #18 
      \crossStaff e32 \tuplet 3/2 {e16[ e e32 32]} 
      \bar ";" e8:64\> \tuplet 3/2 {e8[\p e16]} \once \omit TupletNumber 
      \tuplet 3/2 {s16 \once \stemUp \long \crossStaff e8} \bar ";"
      <g fis,>32-> s16. s8 s8 | \time 3/8 s8 r4 | s2 | \autoBeamOff 
    r16 <e, fis'> \tuplet 3/2 {<fis gis'>16[ <gis ais'> cis']} dis4 |
      s16 \stemUp \crossStaff e,16 
      \omit TupletBracket \omit TupletNumber 
      \tuplet 3/2 {s16 \crossStaff <b f'>16 \crossStaff <b fis'>}
    \revert Stem.length \stemNeutral c16[ cis] d[ dis]| 
    e4 | s4
  }%end vibes
>>
november = <<
  \new Voice \relative c' {
    \change Staff = "up"
    s8 s16 <fis g>16 \tuplet 3/2 {r8[ <e' fis g>16]} \bar ";" 
      <aes d,>32 e,16.~ \tuplet 3/2 {e16[ e8]\p~} 
      \once \stemUp \tuplet 3/2{e8[ \chdown f,16]} \bar ";" \chup
      fis'!32-> s16. s4 | \time 3/8 b8 \tuplet 3/2 {c16[ c8]~} 
      \tuplet 3/2{ c16[ c'16 32 32]} | \time 4/8 
    c64[ c, c'32] c64[ c,32.] r32 b'64[ c,64] c'64[ cis,32.] 
      b'64[ d, b'32] ais32[ dis,32->]~ dis8 | e8\f s8 s4 | 
    r8 \repeat tremolo 4 {cis64 a'} \repeat tremolo 4 {f d'}
      \repeat tremolo 4 {f, e'} | \time 2/8 \rit
      \repeat tremolo 4 {a,64\spon g'} 
      \repeat tremolo 4 {c, a'} ais4\spoff\fermata |
  }%end up
  \new Voice \relative c,, {
    \change Staff = "down" \time 9/8 \autoBeamOff
    \tuplet 6/4 {e32[^\mf a d fis c a]} \tuplet 3/2 {g[ c32 f]} aes16
      \ottava #0 s8 dis,8 s4 \bar ";"
      s32 d16. d8~^\> \tuplet 3/2 {d16[ cis8]} |
    \time 3/8 d4\pp r8 | \time 4/8
    ais16.[ b32]~ b16.[ gis32]~ gis8 a-> | \ottava #-1 
      d,64[ f aes b c a cis f]
      e,[ gis b dis f fis, c' gis'] \tuplet 3/2 {cis16[ cis,,8-.]}
      \tuplet 3/2 {r16[ c8]} | b16[ a->]  \ottava #0 \repeat tremolo 4 {d''64 b'}
      \ottava #-1 a,,,16 \ottava #0 dis'' \repeat tremolo 4 {e64 cis'} |
    f,32[^\< d b a] e[ c a f] 
      \ottava #-1 <a, b c>4^\fff \ottava #0 |
  }%end down
>>%end november
novemberTrap = \drummode { \autoBeamOff
  \time 9/8 tom8:64\mf~ \tuplet 3/2 {tom32[ 32 32]} cym32->[ \begone tom] s8 
    s4 \tuplet 3/2 {cym16[ \begone tom8]} s32 cym16. r8 \niente tom8:64\<~ |
    \time 3/8 tom8\pp s4 | \time 4/8 <<{cym2:32~}{s4.\ppp s8\<}>> | cym8\f~ 
    \tuplet 3/2{cym8[ cym16]} cym16 tom8.:64\<~ |
  tom16->\![ \begone \drumCross tom] \grace {cym16[ cym]} 
    \tuplet 3/2 {cym16[ \begone \drumCross tom16 \begone \drumCross tom16]} 
    cym8 cym | \rit \time 2/8 \tuplet 6/4 {cym32[\spon tom32 32 32 32 32]}
      \tuplet 7/4 {cym[ tom32 32 32 32 32 32]} |
    cym4\spoff\fermata~  
}%end novemberTrap

% $december
december = <<
  %\mark ""
  \tempo 4=40
  \new Voice \relative c''' {
    \change Staff = "up"
    \time 5/8 r4. r4 | s4. s4 | \time 3/2 s2. | \time 4/4 s1 |
    gis1~ | gis2. <<{\makeClusters{<d>4^"rub on strings" |
      <f e,>2. e'4 | r1 }}{\once \hideNotes <a, c,,>\arpeggio}>> | r1 |
    r2. \autoBeamOff cis,8\fl \di <e, f ges>8:64^"rub"~ |
    \di <e f ges>2.:32\> r4\! |
    r1 | r4 \di cis'8^"scrape"\bendAfter #+4 r r2 |
    %5-2
    r1 | r4 \tuplet 3/2 {fis,8[\pppp e16]~} e8 r4 c4 | \time 3/4 s2. |
    s2. | s2. | \time 4/4 r4\fermata r4 r8 b'4.\fl | s1 |
   \time 3/4 s2. | R1 | 
  }%end up
  \new Voice \relative c,, {
    \change Staff = "down"
    \time 5/8 r4. r4 | 
      r4. \ottava #-1 \di a8\pppp^"scrape"\bendAfter #+4 s8 | \time 3/4 
    \di a2^"scrape"\bendAfter #+3 \ottava #0 r4 | \time 4/4 c'''1\fl | s1 | 
    s2. \niente s4^\< | s4\pp s4 \chup s4_\> \chup r4\!^"l.v." | 
    \chdown \di <d a cis gis b>1_"Sost.⟶" | r1 | s1 | s1 | s1 |
    r2. \tuplet 3/2 {r8[ g,16]\fl~} g8 | 
      \ottava #-1 \di bes,,,2.\pppp^"scrape"\bendAfter #+3 \ottava #0 r4 | s1 | 
      \time 3/4 r4 \tuplet 3/2 {r8[ c'''16\fl]~} c8 r4 |
      r4 c,_\fl \tuplet 3/2 {r8[ c16_\fl]~} c8 | r2. | \time 4/4
    s1 | \di <ais' b c>1:32^"rub"~ | 
    <<{\di 2:32}{s8 s^"let vibrate"}>> r4 | R1 | 
  }%end down
>>

decemberVibes = <<
  \new Voice \relative c''' {
    \change Staff = "vibes" \time 5/8
    \niente ais4.^"Crotales"\<~ ais4\pp | s4. s4 |
      \time 3/4 s2. | \time 4/4 s1 | 
    e4^"Crot."\ppppp r2. | r8 s gis4^"Vib." \tuplet 3/2 {c,4 a8} r4 | 
      r2 s2 | r2 r8 s4. | s2 r2 |
    s4 r r e''16-> r8. | r4. s8 s4 r4 | r1 | 
      r4 \niente c2.:32^"thin sticks"\> |
    %5-2
    r4\! ges8--^"fingers" des-- f-- bes-- r8 s8 | \tuplet 3/2 {ges-. d!-. des-.}
      f8-. \tuplet 3/2 {r16[ a,8-.]} aes4 s4 | \time 3/4 s2. | s2. | r2. |
    \time 4/4 \niente c1^"Crot."\downbow\< | r1\ppp^"choke" | 
      \time 3/4 s2 c8->^"fingers" s8 | R1 | 
  }%end vibes
>>%end december
decemberTrap = \drummode {
  \tempo 4=40
  \time 5/8 cym4.~ cym4\fermata | s4. s4 | 
  \time 3/4 r4 \tuplet 3/2 {r8[ tom16-.]\pppp} r8 r8 cym |
  \time 4/4 cym1 |
  s1 | s8 cym8-.^"bell" s2. | s2 \niente cym4:32\<~ cym4\pp | 
  s2 s8 \niente tom4.:32^"bottom edge"\<~ |
  \niente tom2:32^"to top edge"\> s2\! |
  cymx8^"edge w/ wood" tom-> s2. | s4. \niente tx8:64^"thin sticks"\>~ 
    tx4:32 s4\! | r8 cym8^"scrape"\bendAfter #+4 r2. | s1 |
  %5-2
  s2 s4 s8 cym->^"fingers" | s2. r8 cym8^"fingernails in circles"~ |
  \time 3/4 cym2.~ | 
    cym8 tom8^"f.nails"~ tom2\> | s2.\! | \time 4/4
  s4 tom8^"fingers"\pppp tom r4 cym4 | r4^"choke" r4 tom^"fingers" 
    \tuplet 3/2 {r8 [tom16]} r8 | \time 3/4 r8 <cym tom> r8 
    r16 tom s8 \tuplet 3/2 {r16[ cym8]} | \time 4/4 tom1:32\ppppp |
}%end decemberTrap


music = {
  %Gathers up all music functions into one call within the RH Piano
  \january
  \february
  \march
  \april
% % \may delet
% % \june delet
% % \july XXXXXXXXXXx Scrapped!
  \august
  \september
  \october
  \november
  \december
}%end music

vibesMusic = {
  \januaryVibes
  \februaryVibes
  \marchVibes
  \aprilVibes
  \augustVibes
  \septemberVibes
  \octoberVibes
  \novemberVibes
  \decemberVibes
}
trapMusic = {
  %Just for the DrumStaff
  \januaryTrap
  \februaryTrap
  \marchTrap
  \aprilTrap
% % \mayTrap   zzz goodbey
% % \juneTrap  xx gonzo
% % \julyTrap xXXXXXXXXXXXXXXX Scrapped!
  \augustTrap
  \septemberTrap
  \octoberTrap
  \novemberTrap
  \decemberTrap
}%end trapMusic
timeline = {
  %For all other voices, keeps staff alive with invisible rests
  s1 * 68 
}%end timeline

% $3 Layout and Design %

\layout {
  \context {
    \Score
      %proportionalNotationDuration = #(ly:make-moment 1/32)
      %\override Score.SpacingSpanner.strict-note-spacing = ##t
  }%end context
  \context {
    \Staff
      %\RemoveEmptyStaves
  }
  \context {
    \PianoStaff
      \consists #Span_stem_engraver
  }
}%end layout

\paper {
  %{
    #(set-paper-size "tabloid") 
    indent = 1\in
  %}
  #(set! paper-alist (cons '("mandark" . (cons (* 54 cm) 
					       (* 30 cm))) paper-alist))
  #(set! paper-alist (cons '("halfdark" . (cons (* 28 cm) 
					       (* 30 cm))) paper-alist))
  #(set! paper-alist (cons '("short" . (cons (* 11 in)
					     (* 14 in))) paper-alist))
  #(set-paper-size "short")
  %#(set-paper-size "mandark")

  %{ PRE-FORMATTING FOR IPAD PRO ***********************************************
  #(set! paper-alist (cons '("ipad pro" . (cons (* 220 mm) (* 305 mm))) paper-alist))
  #(set-paper-size "ipad pro")
  %} 
  top-margin = 0.7\in
  left-margin = 0.7\in
  right-margin = 0.6\in
  bottom-margin = 1\in
  %}
  
  markup-system-spacing = 
    #'((basic-distance   . 10)
       (minimum-distance . 8)
       (padding          . 1 )
       (stretchability   . 1 ))

  score-markup-spacing = 
    #'((basic-distance   . 4)
       (minimum-distance . 2)
       (padding          . 3 )
       (stretchability   . 1 ))

  system-system-spacing = 
    #'((basic-distance   . 19)
       (minimum-distance . 8)
       (padding          . 4 )
       (stretchability   . 1 ))
  
  system-separator-markup = \slashSeparator

  print-first-page-number = ##t
  oddHeaderMarkup = \markup \null
  evenHeaderMarkup = \markup \null
  oddFooterMarkup = \markup {
    \fill-line { \huge 
      \on-the-fly \print-page-number-check-first
      \fromproperty #'page:page-number-string 
    }
  }
  evenFooterMarkup = \oddFooterMarkup

}%end paper

% $4 Score %

\score {<<
  \pointAndClickOff
  \override Score.BarNumber.font-size = #2.5
  \override Score.BarNumber.Y-offset = #3
  \override Score.BarNumber.X-offset = #-1
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
	
  \new StaffGroup \with {
    instrumentName = "Percussion"
    \override StaffGrouper.staff-staff-spacing.basic-distance = #6
    \override StaffGrouper.staff-staff-spacing.minimum-distance = #0
    \override StaffGrouper.staff-staff-spacing.padding = #1
    \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #12
  }<<
    \new DrumStaff = "trap" \with {
      \override StaffSymbol.line-positions = #'(1 -1)
      \override BarLine.bar-extent = #'(-3 . 1)
      \omit TimeSignature 
    }{
      \set drumStyleTable = #(alist->hash-table trap)
      \stemUp \slurUp \tieUp
      \trapMusic
    }%end trap
    \new Staff = "vibes" {
      \numericTimeSignature
      \clef "treble"
      \set Staff.pedalSustainStyle = #'bracket
      \vibesMusic
    }%end vibes
  >>


  \new PianoStaff \with {
    instrumentName = "Pianoforte"
  }<<
    \new Staff = "up" {
      \numericTimeSignature
      \clef "treble"
      \music \bar "|."
    }%end up
    \new Staff = "down" {
      \numericTimeSignature
      \clef "bass"
      \timeline
    }%end down
  >>%end PianoStaff

>>}%end score
