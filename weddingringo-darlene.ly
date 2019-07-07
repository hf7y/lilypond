%Tue, 02 Jul 2019 00:51:50 -0500
\version "2.18.2"

\header {
  title = "Weddingringo"
  subtitle = ""
  composer = "Z.V. Pine"
  tagline = ""
}%end header

init = {
  \tempo 4 = 88
  \key a \major
  \time 4/4
  \numericTimeSignature
  \mergeDifferentlyHeadedOn
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
}%end init

voiceHookI = {
  \partial 8 r8 |
  \repeat volta 2 {
    \repeat unfold 4 { R1 | } %m1,2,3,4
  }%end repeat
}%end voiceIntro

guitarHookI = <<
  \new Voice = "ima" \relative c' {
    \stemUp
    \partial 8 s8 |
    \repeat volta 2 {
      << r4 {s8 \hide r}>> cis8 e fis4 4 | %m1 %formatting hack
      << r4 {s8 \hide r}>> cis8 e fis gis fis e~ | %m2
      e8 r8 cis8 e fis4 fis8 e | %m3
      << cis2 {s8 \hide r}>> << r4 {s8 \hide r}>> d4 | %m4
    }%end repeat
  }%end voice ima
  \new Voice = "mid" \relative c {
    \voiceFour
    \partial 8 s8 |
    \repeat volta 2 {
      \once \shiftOff \once \omit NoteHead a8 e' gis4 <a cis>4 4 | %m1
      \once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 4 | %m2
      \once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 4 | %m3
      \once \shiftOff \once \omit NoteHead a,8 e' gis e a,8 e' gis e | %m4
    }%end repeat
  }%end voice mid
  \new Voice = "p" \relative c, {
    \partial 8 e8 |
    \voiceTwo
    \repeat volta 2 {
      a2_~ 4. e8 | %m1
      a2_~ 4 8 e | %m2
      a2 e4. e8 | %m3
      a2 s2 | %m4
    }%end repeat
  }%end voice p
>> %end guitarIntro

voiceVerseI =  \relative c' {
  \autoBeamOff
  \break
  r2 cis8 d cis4 | %m5
  r8 cis cis cis cis b a fis | %m6
  e1  | %m7
  r2 \bar "" \break r4 e8 e | %m8

  cis'8 b a b cis a b4 | %m9
  r8 a b cis b4\prall a | %m10
  a1 | %m11
  r1 | %m12

  \break
  fis'4 e8 cis cis d cis4 | %m13
  r8 cis cis cis cis b a fis | %m14
  e8. cis'16 cis4 r2 | %m15
  r2 \bar "" \break r4 e,8 e | %m16

  \tupletUp \stemDown \tuplet 5/4 {cis'8 b a b a } r2 | %m17
  \stemNeutral r8 a b cis b a b8 a | %m18 
  r1 | %m19
  r2 \bar "" \break r4. e8 | %m20

  b'8 b b cis b4 a8 a( | %m21
  fis2) r8 e e e | %m22
  b'8 b b cis b4 a8 d(~ | %m23
  d4. cis16[ b] \once \stemDown a8 b4.) | %m24
  r2..
}%end voiceVerseI

wordsVerseI = \lyricmode {
  De -- sert night, a wan -- ning cre -- scent and our time,
  in the air just final -- ly cool e -- nough to sail our souls out -- side,
  watch in a star -- less sky as we con -- spire to tell the world a lie:
  that we ne -- ver called this love though not for lack of try -- ing.

  You grant your -- self a kiss of mine 
  'cause I'm the on -- ly one who gives it right.
}

guitarVerseI = 
<<
  \new Voice = "ima" {
    \stemUp
    \relative c' {
      \repeat unfold 2 {
	r4 cis2 cis4 | %m5
	r4 cis2 gis4 | %m6
	<< r4 {s8 \hide r}>> cis8 e fis4 fis8 e | %m7 %formatting hack
	<< cis2 { s8 \hide r } >> r2 | %m8 %hack

	r4 a2 a4 | %m9
	r4 a2 a4 | %m10
	<< r4 {s8 \hide r}>>  cis8 e fis4 fis8 e | %m11 %formatting hack
      }%end repeat
      \alternative {
	{ << cis2 {s8 \hide r}>> r2 | } %m12
	{ << cis4 {s8 \hide r}>> e4 
	  << cis4 {s8 \hide r}>> d4 | } %m20
      }

      << gis,2. {s8 \hide r}>> gis4 | %m21
      << r4 {s8 \hide r}>> a4 fis e | %m22
      << gis2. {s8 \hide r}>> g4 | %m23
      r4 <a d>2.^~ | %m24
      <a d>2.. 
    }
  }

  \new Voice = "mid" {
    \voiceFour 
    \relative c {
      \repeat unfold 2 {
	a8 e' gis e a, e' gis e | %m5
	a, e' gis e a, e' gis e | %m6
	\once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 <a cis> | %m7
	\once \shiftOff \once \omit NoteHead a,8 e' gis e a, e' gis e | %m8

	d8 fis a fis d fis a fis | %m9
	d f a f d f a f | %m10
	\once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 <a cis> | %m11
      }%end repeat
      \alternative {
	{ \once \shiftOff \once \omit NoteHead a,8 e' gis e a, e' gis e | } %m12
	{ \once \shiftOff \once \omit NoteHead a,8 e' gis e 
	    gis, e' gis fis, | } %m12
      }

      \set tieWaitForNote = ##t
      e8 b' e b e, b' e eis, | %m21
      fis a cis a fis a c a | %m22
      e b' e b e, b' e b  | %m23
      f8~ f'8 ~ <f f,>2.~ | %m24
      <f f,>2..
    }
  }

  \new Voice = "p" {
    \voiceTwo
    \relative c {
      \repeat unfold 2 {
	s1 | %m5
	s1 | %m6
	a2 e4. e8 | %m7
	a2 s2 | %m8

	s1 | %m9
	s1 | %m10
	a2 e4. e8 | %m11
      }%end repeat
      \alternative {
	{ a2 s2 | } %m12
	{ a2 s2 | } %m20
      }
      
      s2 s2 | %21
      s2 s2 | %22
      s2 s2 | %23
      s1~ | %m24
      s2..
    }
  }
>>

voiceHookII = {
  \bar "" \pageBreak r8 | %m25
  \repeat volta 2 {
    R1 | %m26
    R1 | %m27
    R1 | %m28
  }%end repeat
  \alternative {
    { R1 | } %m29
    { r2 }
  }
}%end voiceHook

guitarHookII = <<
  \new Voice = "ima" \relative c' {
    \stemUp
    s8 | %m25
    \repeat volta 2 {
      << r4 {s8 \hide r}>> cis8 e fis4 4 | %m26 %formatting hack
      << r4 {s8 \hide r}>> cis8 e fis gis fis e~ | %m27
      e8 r8 cis8 e fis4 fis8 e | %m28
    }%end repeat
    \alternative {
      { << cis2 {s8 \hide r}>> r4 d4 | } %m29
      { << cis2 {s8 \hide r}>> } 
    }
  }%end voice ima
  \new Voice = "mid" \relative c {
    \voiceFour
    s8 | %m25
    \repeat volta 2 {
      \once \shiftOff \once \omit NoteHead a8 e' gis4 <a cis>4 4 | %m26
      \once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 4 | %m27
      \once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 4 | %m28
    }%end repeat
    \alternative {
      { \once \shiftOff \once \omit NoteHead a,8 e' gis e 
	  \once \shiftOff \once \omit NoteHead a,8 e' gis4 | } %m29
      { \once \shiftOff \once \omit NoteHead a,8 e' gis e }	
    }
  }%end voice mid
  \new Voice = "p" \relative c, {
    e8 | %m25
    \voiceTwo
    \repeat volta 2 {
      a2_~ 4. e8 | %m26
      a2_~ 4 8 e | %m27
      a2 e4. e8 | %m28
    }%end repeat
    \alternative {
      { a2 a4_~ a8 e8 | } %m29
      { a2 }
    }
  }%end voice p
>>%end guitarHookII


voiceVerseII = \relative c' {
  \autoBeamOff
  \bar "" \break r4. a8 | %m30
  fis'4 e8. cis16 cis8. d16 cis4 | %m31
  r4 cis8 cis cis([ b)] a4  | %m32
  e1  | %m33
  r2 \bar "" \break r4 e8 e | %m34

  cis'8 b a b cis([ a]) b4 | %m35
  r8 a b cis b4\prall a | %m36
  a1 | %m37
  r2 \bar "" \break r4 a8 a | %m38
  
  fis'4. e8  cis8 d cis8[( b)] | %m39
  r4. cis8 cis b a fis | %m40
  e cis' cis2. | %m41
  r2 \bar "" \break r8 e,8 e e | %m42

  \tuplet 5/4 {cis'8 b \stemDown a b a} \stemNeutral r2 | %m43
  r4 b8 cis b a a4 | %m44
  r1 | %m45
  r2 \bar "" \break r4 e8 e | %m46

  b'8 b b cis b4 a | %m47
  a8( fis4. ) r4 e8 e | %m48
  b' b b cis b4 a | %m49
  d4.( cis16[ b]  \once \stemDown a8 b4. ) | %m50
  r2. \tuplet 3/2 { r8 a a} | %m51
  \bar "||"
}%end voiceVerseII

wordsVerseII = \lyricmode {
  To -- mor -- row the de -- pu -- ty rea -- ding you your vows
  will say “ha -- sta que la muer -- te, no se -- pa -- ra -- ting now”
  and the man who takes your hand and of -- fers you a wed -- ding band
  will have a clea -- ner shirt than me and far fi -- ner pants.
  
  O well, Le -- o, he may kiss the bride
  but the way he'll do it won't look right to me.
}%end wordsVerseII

guitarVerseII = 
<<
  \new Voice = "ima" {
    \stemUp
    \relative c' {
      << r4 {s8 \hide r}>> gis4 | %m30
      \repeat unfold 2 {
	a4 cis2 cis4 | %m31
	r4 cis2 gis4 | %m32
	<< a4 {s8 \hide r}>> cis8 e fis4 fis8 e | %m33 %formatting hack
	<< cis2 { s8 \hide r } >> r2 | %34 %hack

	r4 a2 a4 | %m35
	r4 a2 a4 | %m36
	<< r4 {s8 \hide r}>>  cis8 e fis4 fis8 e | %m37 %formatting hack
      }%end repeat
      \alternative {
	{ << cis2 {s8 \hide r}>> r2 | } %m38
	{ << cis4 {s8 \hide r}>> e4 
	  << cis4 {s8 \hide r}>> gis4 | } %m46
      }

      << gis2. {s8 \hide r}>> gis4 | %m47
      << r4 {s8 \hide r}>> a4 fis e | %m48
      << gis2. {s8 \hide r}>> g4 | %m49
      r8 f8 <a d>2.^~ | %m50
      <a d>1 | %m51
    }
  }%end voice ima
  \new Voice = "mid" {
    \voiceFour 
    \relative c {
      \once \shiftOff \once \omit NoteHead a8 e' s4 | %m30
      \repeat unfold 2 {
	a,8 e' gis e a, e' gis e | %m31
	a, e' gis e a, e' gis e | %m32
	\once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 <a cis> | %m33
	\once \shiftOff \once \omit NoteHead a,8 e' gis e a, e' gis e | %m34

	d8 fis a fis d fis a fis | %m35
	d f a f d f a f | %m36
	\once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 <a cis> | %m37
      }%end repeat
      \alternative {
	{ \once \shiftOff \once \omit NoteHead a,8 e' gis e a, e' gis e | } %m38
	{ \once \shiftOff \once \omit NoteHead a,8 e' gis e 
	    \once \shiftOff \once \omit NoteHead gis, e' s4 | } %m46
      }
      \once \shiftOff \once \omit NoteHead e,8 b' e b e, b' e eis, | %m47
      \once \shiftOff \once \omit NoteHead fis a cis a fis a c a | %m48
      \once \shiftOff \once \omit NoteHead e b' e b e, b' e b  | %m49
      s8 f'8 ~ f2.~ | %m50
      f1 | %51
    }
  }%end voice mid
  \new Voice = "p" {
    \voiceTwo
    \relative c {
      a4_~ a8 e | %m30
      \repeat unfold 2 {
	s1 | %m31
	s1 | %m32
	a2 e4. e8 | %m33
	a2 s2 | %m34

	s1 | %m35
	s1 | %m36
	a2 e4. e8 | %m37
      }%end repeat
      \alternative {
	{ a2 s2 | } %m38
	{ a2 gis4_~ gis8 fis8 | } %m46
      }
      e2 s2 | %47 
      fis2 s2 | %48
      e2 s2 | %49 
      f1~ | %m50
      f1 | %m51
    }
  }%end voice p
>>%end guitarVerseII

voiceBridge = \relative c' {
  \pageBreak
  R1 | %m52
  R1 | %m53

  \repeat unfold 2 {
    cis2. cis8 b | %m54
    a8 fis4. r4. fis8 | %m55
    b8 a c4 a 
  }%end repeat
  \alternative {
    { a8[( g]) | %m56
      \break
      R1 | } %m57 
    { e'8[( d]) | %60
      R1 | } %m61
  }%end repeat

  \repeat unfold 4 { R1 | } %m62,63,64,65
  \repeat unfold 3 { R1 | } %m66,67,68
  \break r2 d2~ | %m69

  d2. b8 cis | %m70
  \once \override TupletNumber.avoid-slur = #'ignore
  \once \override TupletBracket #'padding = #2
  \tuplet 3/2 {e8[^( cis b])} fis4 r4. fis8 | %m71
  b8 a cis!4 a2 | %m72
  r2 r8. a16 a16 b cis a |
}%end voiceBridge

wordsBridge = \lyricmode {
  O, Le -- o -- bar -- do, he got the green card, O—.  
  O, Le -- o -- bar -- do, he got the green card, O—. 
  O, Le -- o -- bar -- do, he got the green card.
  Fe -- li -- ci -- da -- de.
}%end wordsBridge

guitarBridge = <<
 \new Voice = "bottom stuff" {
    \stemDown
    \relative c { 
      \scaleDurations 2/3 {
	\repeat percent 4 { \tuplet 3/3 { a8[ e' gis] } 
	  \hide TupletNumber } %m52
	\repeat percent 3 { a,8[ e' gis] } ais,8[ e' g]| %m53
      }%end scaleDurations

      \repeat unfold 2 {
	\scaleDurations 2/3 {
	  \repeat percent 3 { b,8[ fis' a] } e,8[ fis' b] | %54
	  \repeat percent 3 { fis,[ e' a] } e,[ e' a] | %55
	  b,[ d a'] \repeat percent 2 { c,[ e a] } 
	}%end scaleDurations
      } \alternative {
	\scaleDurations 2/3 { c,[ e a] | %56
	  \repeat percent 2 { c,[ e a] }  
	  \repeat percent 2 { c,[ fis a] } | %57
	}%end scaleDurations
	\scaleDurations 2/3 { c,[ e a] | %60
	  \repeat percent 2 { c,[ e a] }  
	  \repeat percent 2 { c,[ fis a] } | %61
	}%end scaleDurations
      }%end repeat

      \scaleDurations 2/3 {
	\repeat unfold 4 {
	  \repeat percent 2 { g,8 f' bes } 
	    \repeat percent 2 { a,8 g' c } | %m62
	  bes,[ a' d] c,[ g' bes] c,[ f bes] 
	} \alternative {
	    { c,[ fis c'] | } %m63
	    { c,[ fis a] } %m69 
	}%end repeat
      }%end scaleDurations

      \scaleDurations 2/3 {
	\repeat percent 3 { b,8[ fis' a] } e,8[ fis' b] | %70
	\repeat percent 3 { fis,[ e' a] } e,[ e' a] | %71
	b,[ fis' a] cis,![ gis' b] 
      }%end scaleDurations
      \set tieWaitForNote = ##t d,8~ a'_~ <d, a' cis>4 | %m72

      d8~ a'_~ <d, a' c>2. |
    }
  }%end voice
  \new Voice = "top stuff" {
    \stemUp
    \relative c' { 
      cis4 s s s | %m52
      cis4 s s cis | %m53	

      \repeat unfold 2 {
	d4 s s d | %m54
	cis4 s s cis | %m55
	cis4 d4 s
      } \alternative {
	{ d4 | %m56
	  d4 s d s | } %57
	{ d4 | %60
	  d4 s d s } | %61
      } %end repeat

      \repeat unfold 4 {
	d4 s e s | %m62
	f e d
      } \alternative {
	{ es4 | } %m63
	{ d4 | } %m69
      }%end repeat

      d4 s s d | %m70
      cis4 s s cis | %m71
      d4 e4 fis2^~ | %m72
      fis4 f2. | %m73
    }
  }%end voice
>>%end guitarBridge


voiceHookIII = {
  \break
  \repeat unfold 4 { R1 | } %m74,75,76,77

  \break
  \repeat unfold 3 { R1 | } %m78,79,80
  \break
  R1 | %m81

  \repeat unfold 3 { R1 | } %m82,83,84
}%end voiceHookIII

guitarHookIII = <<
  \new Voice = "ima" \relative c' {
    \stemUp
    << r4 {s8 \hide r}>> cis8 e fis4 4 | %m74 %formatting hack
    << r4 {s8 \hide r}>> cis8 e fis gis a b | %m75
    << cis2. {s8 \hide r}>> cis16 b a gis | %m76
    << fis4 {s8 \hide r}>> << e2 {s8 \hide r}>> 
      \once \shiftOff \once \omit NoteHead b8 bis | %m77

    << cis4. {s8 \hide r}>> e8 fis4 b\harmonic | %m78 %formatting hack
    << r4 {s8 \hide r}>> cis,8 e fis gis a b | %m79
    cis8 b d cis << fis4 {s8 \hide r}>> gis,4 | %m80
    << b2 {s8 \hide r}>> << a2 {s8 \hide r}>> | %m81

    a,,8 fis' cis' fis, a, e' cis' e, | %m82
    r8 d a' b cis b a4 | %m83
    r8 f a b c b a f | %m83
  }%end voice ima
  \new Voice = "mid" \relative c {
    \voiceFour
    \once \shiftOff \once \omit NoteHead a8 e' gis4 <a cis>4 4 | %m74
    \once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 fis'4 | %m75
    \once \shiftOff \once \omit NoteHead a,,8 gis' cis e <a, d fis>4 d4 | %m76
    \once \shiftOff \once \omit NoteHead a,8 a' cis a 
      \once \shiftOff \once \omit NoteHead a,8 e' b'4 | %m77

    \once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>2 | %m78
    \once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 fis'4 | %m79
    \once \shiftOff \once \omit NoteHead a,,8 gis' cis e <fis b>4 <b, d>4 | %m80
    g8\rest a cis e \mergeDifferentlyHeadedOn a e cis gis | %m81

  }%end voice mid
  \new Voice = "p" \relative c {
    \voiceTwo
    a2 a2 | %m74
    a2 a4 d | %m75
    a2 r8 a~ a[ e] | %m76
    a2 a4_~ a8 e8 | %m77

    a2 a4. e8 | %m78
    a2 a4 d | %m79
    a2 d4. e,8 | %m80
    a1 | %m81

    a2 a2 | %m82
    a1 | %m83 
    a2.. e8 | %m84
  }%end voice p
>> %end guitarHookIII


voiceVerseIII = \relative c'{
  \pageBreak
  cis,4 cis8 e fis gis fis4 |
  r8 e8 cis' cis cis b a fis |
  e4 e8 e16([ d] cis2) |
  r2 r4 e8 e |

  cis'8 b a b a2 | \break
  r4 b8 cis b a a4 |
  R1 |
  r2 r4 e8 d |

  cis4 e4 fis8 gis fis4 | \break
  r8 e8 cis' cis cis b a fis |
  e cis' cis2 r4 |
  r2 r8 e,8 e e |
  
  cis'4 r16 e, e e cis'2 |
  r4 b8 cis b a a4 |
  R1 |
  r2 r4 e8 e |

  b' b b cis b4 a |
  a8( fis4.) \bar "" \break r4 e8 e |
  b' b b cis b4\prall a | 
  d4.( cis16[ b]  \once \stemDown a8 b4. ) |
  r2.
}%end voiceVerseIII

wordsVerseIII = \lyricmode {
  Dawn to the de -- sert dust with sal -- u -- ta -- tions of a sil -- ver sun
  and the moun -- tains to the East final -- ly ov -- er come,
  and that light should land at last on the de -- ser -- vèd
    Mi -- choa -- ca -- no man
  to shine a star u -- pon his home and to grow his grass

  ain't much con -- so -- la -- tion for the dust
  that the sil -- ver sun is bur -- ning up.
}%end wordsVerseIII

guitarVerseIII = <<
  \new Voice = "ima" {
    \stemUp
    \relative c' {
      \repeat unfold 4 {
	s1 | %m85
	s1 | %m86 
	<< r4 {s8 \hide r}>> cis8 e fis4 fis8 e | %m87	
      } \alternative {
	{ << cis2 {s8 \hide r}>> s2 | } %m88
	{ << cis4 {s8 \hide r}>> b4 a r | } %m100
      }%end repeat

      << gis2. {s8 \hide r}>> gis4 | %m101
      << r4 {s8 \hide r}>> a4 fis e | %m102
      << gis2. {s8 \hide r}>> g4 | %m103
      r8 f8 <a d>2.^~ | %m104
      <a d>2.
    }
  }

  \new Voice = "mid" {
    \relative c {
      a8 cis a cis a cis e cis | %m85
      a e' gis e a, e' gis e | %m86
      \voiceFour 
      \once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 <a cis> | %mm87
      \once \shiftOff \once \omit NoteHead a,8 e' gis e 
	\oneVoice a, e' gis e | %m88

      d8 fis a fis d fis a fis | %m89
      d f a f d f a f | %m90
      \voiceFour 
      \once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 <a cis> | %m91
      \once \shiftOff \once \omit NoteHead a,8 e' gis e 
	\oneVoice a, e' gis e | %m92
      
      a,8 cis a cis a cis e cis | %m93
      a e' gis e a, e' gis e | %m94
      \voiceFour 
      \once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 <a cis> | %m95
      \once \shiftOff \once \omit NoteHead a,8 e' gis e 
	\oneVoice a, e' gis e | %m96

      d8 fis a fis d fis a fis | %m97
      d f a f d f a f | %m98
      \voiceFour 
      \once \shiftOff \once \omit NoteHead a,8 e' gis4 <a cis>4 <a cis> | %m99
      \once \shiftOff \once \omit NoteHead a,8 e' gis e a, e' cis e | %m100

      \once \shiftOff \once \omit NoteHead e,8 b' e b e, b' e eis, | %m101
      \once \shiftOff \once \omit NoteHead fis a cis a fis a c a | %m102
      \once \shiftOff \once \omit NoteHead e b' e b e, b' e b  | %m103
      s8 f'8 ~ f2.~ | %m104
      f2.
    }
  }

  \new Voice = "p" {
    \voiceTwo
    \relative c {
      s1 | %m85
      s1 | %m86
      a2 e4. e8 | %m87
      a2 s2 | %m88

      s1 | %m89
      s1 | %m90
      a2 e4. e8 | %m91
      a2 s2 | %m92
      
      s1 | %m93
      s1 | %m94
      a2 e4. e8 | %m95
      a2 s2 | %m96

      s1 | %m97
      s1 | %m98
      a2 e4. e8 | %m99
      a2 s2 | %m100

      e2 s2 | %101 
      fis2 s2 | %102
      e2 s2 | %103
      f1_~ | %m104
      f2.
    }
  }
>>%end guitarVerseIII


voiceCoda = \relative c' {
  cis,8 e | %m105
  \time 5/4 fis8 e cis4 r2 a8 b | %m106
  \time 6/4 cis  b b4   r4 r2 \bar "" \break a8 b | %m107
  \time 7/4  cis b b4   r4 r2. a8 b | %m108
  \time 7/4  cis b b2(~ b8[ cis8] b2.) | %m109
  \time 4/4 R1 | %m110

  R1 | %m111 
  R1 | %m112
  \bar "|."
}%end voiceCoda

wordsCoda = \lyricmode {
  O, our de -- sert night
  when the li -- zards lived
  was our time to sin.
  Our time had to end.
}%end wordsCoda

guitarCoda = {
  r4 | %m105
    <<
    \new Voice = "ima" \relative c' {
      \stemUp

      \set tieWaitForNote = ##t
      \time 5/4 r4 cis r d4 r4 | %106
      \time 6/4 r4 cis r d2 r4 | %m107
      \time 7/4 r4 cis cis r d2 r4 | %m108
      \time 7/4 r4 cis cis r d2. | %m109 
      

      \time 4/4 a8 cis e fis <aes es c> es c aes |
      g b e fis dis4 gis4 | %m111
      <a e cis>1 | %m112
    }%end voice

    \new Voice = "mid" \relative c {
      \stemDown
      \set tieWaitForNote = ##t
      \time 5/4 
	a8[ e' gis e] a, f' a2 |
      \time 6/4 
	a,8[ e' gis e] a, f' a2. |
      \time 7/4	
	a,8[ e' gis e gis e] a, f' a2. |
      \time 7/4 
	a,8[ e' gis e gis e] a, f' a2. |
    
      \time 4/4 a,2 aes'2 | %m110
      g2 fis8 bis4. | %m111
      <a, e'>1 | %m112
    }%end voice
  >>
}%end guitarCoda

voice = {
  \init
  \clef "treble_8"
  \voiceHookI
  \voiceVerseI
  \voiceHookII
  \voiceVerseII
  \voiceBridge
  \voiceHookIII
  \voiceVerseIII
  \voiceCoda
}%end voice

words = {
  \wordsVerseI
  \wordsVerseII
  \wordsBridge
  \wordsVerseIII
  \wordsCoda
}
guitar = {
  \init
  \clef "treble_8"
  \guitarHookI
  \guitarVerseI
  \guitarHookII
  \guitarVerseII
  \guitarBridge
  \guitarHookIII
  \guitarVerseIII
  \guitarCoda
}%end guitar


\layout {
  \context {
    \Score
      %proportionalNotationDuration = #(ly:make-moment 1/1)
      %\override Score.SpacingSpanner.strict-note-spacing = ##t
  }%end context
  \context {
    \Staff
    \RemoveEmptyStaves
  }
}%end layout

\paper {
  #(set! paper-alist (cons '("montalvo" . (cons (* 11 in) (* 14 in))) paper-alist)) 
  #(set-paper-size "montalvo")
  top-margin = 0.7\in
  left-margin = 0.7\in
  right-margin = 0.6\in
  bottom-margin = 0.7\in

  indent = 0.3\in
  
  markup-system-spacing = 
    #'((basic-distance   . 20)
       (minimum-distance . 10)
       (padding          . 5 )
       (stretchability   . 1 ))

  system-system-spacing = 
    #'((basic-distance   . 21)
       (minimum-distance . 8)
       (padding          . 2 )
       (stretchability   . 1 ))
}%end paper

\score {
  \pointAndClickOff
  <<
    \new Staff \with {
      instrumentName = "Voice"
      shortInstrumentName = ""
      \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = 
	#13
    }{
      \new Voice = "voice" {
	\voice
      }
    }%end Staff

    \new Lyrics = "words"

    \new Staff \with {
      instrumentName = "Guitar"
      shortInstrumentName = ""
    }{
      \guitar
    }%end Staff

    \context Lyrics = "words" {
      \lyricsto "voice" {
	\words
      }
    }
  >>
}%end score

