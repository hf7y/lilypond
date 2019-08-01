\version "2.18.2"
introGuit = {
	\time 4/4
	\key a \major 
	\relative c' {
		\harmonicsOn
		a1\5\pp
		d1\4\fermata
		a1\5
		d1\4\fermata

		fis2\2
		gis,,\6
		a'\4
		e''\1

		fis,2\2
		gis,,
		a'
		\override NoteHead.style = #'harmonic-black
		e''4 e,,\6\fermata

		\revert NoteHead.style
		\harmonicsOn
		a2\4\<
		g'\3
		fis\2
		e'\!

		\harmonicsOff
	}
}

introMel = {
	\key a \major
	\autoBeamOff
	\relative c' {
		\tupletUp
		a2^\pp gis | 
		e( fis4.)\fermata e8 | 
		a4 b \tuplet 3/2 { a gis \once \stemDown e } |
		e8[( d]) d2.\fermata |

		r2 fis8 e gis a( |
		fis2) cis'8([ gis]) gis([ fis])|
		r2 fis8 e a([ gis] |
		fis4) r e'8. e16 d4\fermata |

		a2^\< g fis( e4 d) |
	}
}

insetGuit = {
	\key d \major
<< 
	\relative c {
		\repeat unfold 2 {
			d8\5\p d fis fis d  d fis fis
			d8 d fis fis d  d fis fis
			b, b g'  g   b, b g'  g
			b, b g'  g   b, b g'  g
			d  d a'  a   d, d a'  a
			d, d a'  a   d, d a'  a
			b, b g'  g   b, b g'  g
			b, b g'  g   b, b g'  g
		}
		\repeat unfold 3 {
			\stemDown
			d8\rest[ d fis fis] d  d fis fis
			d8 d fis fis d  d fis fis
			b,\rest[  b g'  g]   b, b g'  g
			b, b g'  g   b, b g'  g
			d\rest[  d a'  a]   d, d a'  a
			d, d a'  a   d, d a'  a
			b,\rest[ b g'  g]   b, b g'  g
			b, b g'  g   b, b g'  g
		}
		d8 d fis fis \stemNeutral d  d fis fis
		e8^\markup {\italic "ritardando" } e gis gis d' d gis, gis
	} \\ \relative c' {
		s1 * 16
		fis1 cis d e fis e d s
		\repeat unfold 2 {
			\stemUp
			fis2 d16\rest fis4..
			cis2 d16\rest cis4..
			d2   d16\rest d4..
			e2   d16\rest e4..
			d16\rest fis4.. d16\rest fis4..
			e2   d16\rest e4..
			d1 e
		}
		fis1
		s1
	}
	>>
}

insetMel =  {
	\key d \major
	\autoBeamOff
	\relative c' {
		r4.\! a8^\p a a a b |
		b4 fis fis2 |
		r4 fis8 e fis4 fis8 e |
		fis4. a8 fis2 |
		r4 fis8 e fis4 fis4 |
		fis4 a fis e |
		r4 d8 e d4. d8 |
		\tuplet 3/2  { r4 a' g } \tuplet 3/2 { fis4 e( d~ }

		d4) r8 a' a a a b |
		b4. fis8 fis2 |
		r4 fis8 e fis4. e8 |
		fis8 a fis( e4.) r4 |
		r4 fis8 e fis4. e8 |
		fis4 a fis e8[( d]) |
		d4. e8 d4 r8 d |
		a'4 g fis e |
		fis1 |

		R1 * 15

		r4. a8^\p a a a b |
		b4 d cis2 |
		r4 fis,8 e fis4. e8 |
		fis8 a fis( e4.) r4 |
		r4 fis8 e fis4. e8 |
		fis4 a fis e8[( d]) |
		d4. e8 d4 r8 d |
		a'4 g fis e |
		fis1 | r1 |

	}
}


strumAGuit = {
	\time 5/4
	\key a \major
	\arpeggioArrowUp
	\relative c' {
		< a cis e a >4\f-\markup { "strumming" }
		< a cis e a>8\arpeggio
		< a cis e a >8[\upbow < a cis e a> < a cis e a >]
		< a cis e a>\downbow < a cis e a >
		< a cis e a>\downbow < a cis e a >
	}
	\relative c' \repeat unfold 3 {
		< a cis e gis >4 
		< a cis e gis>8\arpeggio 
		< a cis e gis>[ < a cis e gis> < a cis e gis >]
		< a cis e gis> < a cis e gis >
		< a cis e gis> < a cis e gis >

		< d, a' cis fis >4 
		< d a' cis fis >8\arpeggio 
		< d a' cis fis >[ < d a' cis fis> < d a' cis fis >]
		< d a' cis fis>[ < d a' cis fis >]
		< d a' cis fis>[ < d a' cis fis >]

		< d a' cis fis >4 
		< d a' cis fis >8\arpeggio 
		< d a' cis fis >[ < d a' cis fis> < d a' cis fis >]
		< d a' cis fis> < d a' cis fis >
		< d a' cis fis> < d a' cis fis >
	
		< a' cis e a >4 
		< a cis e a>8\arpeggio 
		< a cis e a>[ < a cis e a> < a cis e a >]
		< a cis e a> < a cis e a >
		< a cis e a> < a cis e a >
	}
	\relative c' {
		< a cis e gis >4 
		< a cis e gis>8\arpeggio 
		< a cis e gis>[ < a cis e gis> < a cis e gis >]
		< a cis e gis> < a cis e gis >
		< a cis e gis> < a cis e gis >

		< d, a' cis fis >4\> 
		< d a' cis fis >8\arpeggio 
		< d a' cis fis >[ < d a' cis fis> < d a' cis fis >]
		< d a' cis fis>[ < d a' cis fis >]
		< d a' cis fis>[ < d a' cis fis >]

		< d a' cis fis >4 
		< d a' cis fis >8\arpeggio 
		< d a' cis fis >[ < d a' cis fis> < d a' cis fis >]
		< d a' cis fis> < d a' cis fis >
		< d a' cis fis> < d a' cis fis >\!
	} << \relative c' {
		\stemUp
		< a cis e a >4\ff 
		< a cis e a>8\arpeggio 
		< a cis e a >[ < a cis e a> < a cis e a >]
		< a cis e a> < a cis e a >
		< a cis e a> < a cis e a >
	} \\ \relative c {
		\stemDown
		a4._\5 a a4 a
	} >>
	\repeat unfold 2 { << \relative c' {
		\stemUp
		< a cis e gis >4 
		< a cis e gis>8\arpeggio 
		< a cis e gis >[ < a cis e gis> < a cis e gis >]
		< a cis e gis> < a cis e gis >
		< a cis e gis> < a cis e gis >

		< d, a' cis fis >4 
		< d a' cis fis >8\arpeggio 
		< d a' cis fis >[ < d a' cis fis> < d a' cis fis >]
		< d a' cis fis>[ < d a' cis fis >]
		< d a' cis fis>[ < d a' cis fis >]

		< d a' cis fis >4 
		< d a' cis fis >8\arpeggio 
		< d a' cis fis >[ < d a' cis fis> < d a' cis fis >]
		< d a' cis fis> < d a' cis fis >
		< d a' cis fis> < d a' cis fis >

		< a' cis e a >4
		< a cis e a>8\arpeggio 
		< a cis e a >[ < a cis e a> < a cis e a >]
		< a cis e a> < a cis e a >
		< a cis e a> < a cis e a >
	} \\ \relative c {
		\stemDown
		a4.   a a4 a
		a4.   a a4 a
		a4.   a a4 a
		a4.   a a4 a
	} >> }
       << \relative c' {
		\stemUp
		\arpeggioArrowDown
		< a cis e gis >4 
		< a cis e gis>8\arpeggio 
		< a cis e gis >[ < a cis e gis> < a cis e gis >]
		< a cis e gis> < a cis e gis >
		< a cis e gis> < a cis e gis >

		< d, a' cis fis >4\< 
		< d a' cis fis >8\arpeggio 
		< d a' cis fis >[ < d a' cis fis> < d a' cis fis >]
		< d a' cis fis>[ < d a' cis fis >]
		< d a' cis fis>[ < d a' cis fis >]

		< d a' cis fis >4 
		< d a' cis fis >8\arpeggio 
		< d a' cis fis >[ < d a' cis fis> < d a' cis fis >]
		< d a' cis fis> < d a' cis fis >
		< d a' cis fis> < d a' cis fis >\!
	
		\stemNeutral
		\time 4/4
		\tuplet 3/2   { a'8\p cis e } < a, cis e a >2.
		\tuplet 3/2   { a'8 cis e } < a, cis e gis>2.
		\tuplet 3/2    { d,8 a' cis } < d, a' cis fis >2.~
		< d a' cis fis >1
	} \\ \relative c {
		a4. a a4 a |
		a4. a a4 a |
		a4. a a4 a |
	} >>
}

melodyA = \relative c {
	\key a \major
	\autoBeamOff
	r4. r4 e8^\f e fis a[ gis~ | 
	gis4.] r4 e8 e fis cis'4~|
	cis2. r2 | r2. r2|

	r4. r4 cis8 cis b e4 |
	r4. r4 gis,8 gis fis cis'([ b~] |
	b4. a4.) r2 | r2. r2 |	

	r4. r4 e8 e fis a[ gis~ |
	gis4.] r4 e8 e fis cis([ b~] |
	b a4) r4. r2 | r2. r2 |

	r4. cis'4. cis8 b gis4 |
	r4. cis4. cis8 b4 a8~( |
	a2.~ a2 | b2.~ b2) |

	r4. r4. e,8^\ff fis a[ gis~] | 
	gis4. r4 e8 e fis cis'4~|
	cis2.~ cis2 | r2. r2|

	r4. r4 cis8 cis b e4 |
	r4. r4 gis,8 gis fis cis'[ b~] |
	b4.( a4. gis2) | r2. r2 |	

	r4. r4. e8 fis a[ gis]~ |
	gis4. r4. e8 fis cis4~ |
	cis2. r2 | r2. r2 |

	r2 cis'4 b4 
	gis2 cis4 b |
	a4( b2.~ b1) |
}

text = \lyricmode {
	A -- gnus Dei __ qui tol -- lis pe -- cca -- ta mun -- di,
	Don -- na no -- bis __ pa -- cem. __
	Don -- na eis __ re -- qui -- em. __
	A -- gnus Dei __

	I hear you like an eve -- ning song
	qui -- et -- ly in a French sa -- lon,
	woo -- den floors all waxed and wai -- ting 
	for your voice to po -- lish them off. __
	You sing to me a song of peace: 
	how you work de -- vo -- ted -- ly,__
	eve -- ry word a thread of silk you
	weave in -- to a lace em -- broi -- de -- ry.

	Your song, it holds me soft and still
	kept a -- live with -- in your silk.
	Pa -- ra -- dise in eve -- ry word you
	sing to me. You sing a song of peace.

	A -- no -- ther day __ a -- no -- ther heart __
	A -- no -- ther break __  a -- no -- ther harm __
	I ne -- ver wait __ I ne -- ver warn __
	Just run a -- way, just write a song __

	A -- gnus Dei __ who takes a -- way __
	the sin of lust, the sin of hate, __
	don -- na eis __ re -- qui -- em, __
	grant us peace, __ grant us rest. __

	A -- gnus Dei __ mi -- se -- re -- re. __
	A -- gnus Dei __ mi -- se -- re -- re. __
	A -- gnus Dei __ mi -- se -- re -- re. __
	A -- gnus Dei __ 

	Don -- na no -- bis __ pa -- cem. __
	Don -- na eis __ re -- qui -- em. __
	Don -- na no -- bis __ pa -- cem. __
	Don -- na eis __ re -- qui -- em sem -- pi -- ter -- num.__

	With the last words, __ with the last song, __
	the king -- dom burns, __ the king -- dom falls. __
	For all I've hurt, __ for all I've harmed, __
	for -- give me ho -- li -- ness, for -- give my heart.__
}

minorBGuit = {
	<<
		\relative c, {
			\repeat unfold 4 {
				fis4.\p fis8 fis2 |
				gis4. gis8 gis2 |
				a4.   a8   a2   |
				e4.   e8   e2   |
			}
			\repeat unfold 4 {
				\stemDown
				fis4. fis8 fis2 |
				gis4. gis8 gis2 |
				a4.   a8   a2   |
				e4.   e8   e2   |
			}
		} \\ \relative c {
			s1* 16
			\repeat unfold 4 {
				\stemUp
				a8 a fis' fis a, a fis' fis
				b, b gis' gis b, b gis' gis
				cis, cis e e cis cis e e 
				b  b gis' gis b, b gis' gis
			}
		}
	>>
}

melodyB = {
	\relative c {
		r1 |fis4^\p e gis( a | fis2) r2 | cis'4. gis8 gis4 fis4~ | 
		fis4 r2. | fis4 e a( gis | fis2) r2 | e'4. e8 d2 |
		cis4 r2. | e4 b b( cis~ | cis2) r2 | cis4 gis4 gis8[( b]) a4 |
		r1 | fis4 e a( gis | a1 | gis2) r2 |

		r1 |fis4 e gis a( | fis2) r2 | cis'4( gis) gis4( fis4~ | 
		fis4) r2. | fis4 e a( gis | fis2) r2 | e'4. e8 d2( |
		cis4) r2. | e4 b b cis~ | cis2 r2 | cis4( gis4) gis8( b4.  |
		a4) r2. | fis4 e a( gis | fis2) e'4. e8 | d4  d8 d cis4 b8[( a]~ |
	}
}

strumCGuit = {
	\time 5/4
	\arpeggioArrowUp
	\harmonicsOff
	\relative c' {
		< a cis e a >4\p
		< a cis e a>8\arpeggio
		< a cis e a >8[\upbow < a cis e a> < a cis e a >]
		< a cis e a>\downbow < a cis e a >
		< a cis e a>\downbow < a cis e a >
	}
	\relative c' \repeat unfold 2 {
		< a cis e gis >4 
		< a cis e gis>8\arpeggio 
		< a cis e gis>[ < a cis e gis> < a cis e gis >]
		< a cis e gis> < a cis e gis >
		< a cis e gis> < a cis e gis >

		< d, a' cis fis >4 
		< d a' cis fis >8\arpeggio 
		< d a' cis fis >[ < d a' cis fis> < d a' cis fis >]
		< d a' cis fis>[ < d a' cis fis >]
		< d a' cis fis>[ < d a' cis fis >]

		< d a' cis fis >4 
		< d a' cis fis >8\arpeggio 
		< d a' cis fis >[ < d a' cis fis> < d a' cis fis >]
		< d a' cis fis> < d a' cis fis >
		< d a' cis fis> < d a' cis fis >
	
		< a' cis e a >4 
		< a cis e a>8\arpeggio 
		< a cis e a>[ < a cis e a> < a cis e a >]
		< a cis e a> < a cis e a >
		< a cis e a> < a cis e a >
	}
	\relative c' {
		< a cis e gis >4 
		< a cis e gis>8\arpeggio 
		< a cis e gis>[ < a cis e gis> < a cis e gis >]
		< a cis e gis> < a cis e gis >
		< a cis e gis> < a cis e gis >

		< d, a' cis fis >4 
		< d a' cis fis >8\arpeggio 
		< d a' cis fis >[ < d a' cis fis> < d a' cis fis >]
		< d a' cis fis>[ < d a' cis fis >]
		< d a' cis fis>[ < d a' cis fis >]

		< d a' cis fis >4 
		< d a' cis fis >8\arpeggio 
		< d a' cis fis >[ < d a' cis fis> < d a' cis fis >]
		< d a' cis fis> < d a' cis fis >
		< d a' cis fis> < d a' cis fis >
	}
	\relative c {
		\stemNeutral
		\time 4/4
		\tuplet 3/2   { a'8(\p cis e } a2.)
		\tuplet 3/2   { a,8( cis e } gis2.)
		\tuplet 3/2    { d,8( a' cis } fis2.)~
		r2 < d, a' d f>2 |
		< a e' gis cis e >1 | r1 |
	}
}

melodyC = \relative c {
	a'4.) r4 e8\p e a4 gis8~ | 
	gis4.] r4 e8 e fis4 cis8~|
	cis2. r2 | r2. r2|

	r4. r4 cis'8 cis b e4 |
	r4. r4 gis,8 gis fis cis'([ b~] |
	a8[ b] fis2~ fis2 | a2. gis2) |	

	r4. r4 e8 e a4 gis8~ |
	gis4. r4 e8 e fis cis([ b~] |
	a8 fis4.) r4 r2 | r2. r2 |

	r4. e'8 cis'4 b | 
	gis8 a gis e cis'4 b8[ a ] |
	\tuplet 3/2   { b16[( a fis] } a2..~
	a2) r2 | r1 | r1 |
}

\score {

	<< 
		\new Voice = "mel" {
			\clef "baritone"
			\introMel\break
			\bar "|.|"
			\insetMel
			\bar "|.|"\break
			\melodyA
			\bar "||"
			\melodyB
			\bar "||"
			\melodyC
			\bar "|."
		}
		\new Lyrics \lyricsto "mel" \text

		\new Staff { 
			\clef "treble_8"
			\introGuit
			\insetGuit
			\strumAGuit
			\minorBGuit
			\strumCGuit
		}
	>>
}
