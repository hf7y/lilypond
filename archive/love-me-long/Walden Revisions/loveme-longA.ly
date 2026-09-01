\version "2.24.1"
\pointAndClickOff

hornI = \relative c {
	R1 | 
	\clef "bass"
	\time 6/4 \nienteOn aes4\<\glissando \tuplet 5/4 { g16 fis b bes a } 
		aes2\p\> \glissando \square g4.^"air" r8\! | 
	\time 4/4 fis2.\<~ \tuplet 5/4 { fis16 a b cis dis } |
	\tuplet 7/4 { f8\p\> ges8 fih16 fih8 } \tuplet 5/4 { f8 f8 feh16~ } feh4. r8\! | 

	\time 3/4 e8\p 8 \tuplet 3/2 { disih8 8 8 } \nienteOff
		\tuplet 6/4 { e16 dis aes'\< g fis e\! } |
	\clef "treble"  
	\time 4/4 \grace { s8 } \nienteOff \tuplet 5/4 { r16[ dis'\mp\> aes' g fis] } c'16 b ais f' 
		\tuplet 3/2 { e8 es b' } ais8 c | 
	\time 3/4 \grace { s8 } b4\p r4 \clef "bass" \tuplet 5/4 { d,,,16\< a' c \clef "treble" dis g } |
	\tuplet 3/2 { b8\mp dis fis } \niente g\> a  b4\! | %m8
}

harpI = \relative c' {
	<< { 
			<b ces>2.\pp \tuplet 6/4 { d16\< b f' e a g } |
			\change Staff = "up"
			\oneVoice
			\time 6/4 b8\p\> ces b ces r2\! r2
		} \\ { 
			s1 |
			\change Staff = "down" 
			\oneVoice
			\time 6/4 r4 \tuplet 5/4 { r8.[ g,,16^\p fis] } aes16 g ces b aes8 fis8 g2\harmonic |
		} >> 
	<< { 
			\change Staff = "up" 
			\time 4/4
			b'''2\<
			b8 ces8 b4 | \oneVoice
			<dis es>2:32\fp s2\! |
		} \\ { 
			\time 4/4 \change Staff = "up"
			fis,,4 g \grace { e8~ } e4 \grace { dis8~ } dis4 |
			s2 \change Staff = "down" \voiceOne r4\! \change Staff = "down" \voiceOne \tuplet 7/4 { fes,,16^\< g aes b ces dis e!\! } |
		} >>
	

	\time 4/4 << \new Voice { 
			\change Staff = "down"
			\time 3/4 \tuplet 7/4 { fes8^\mp e8 \change Staff = "up" b'16\> ces8 } 
					\tuplet 7/4 { r16[ fes8 e8 <e' fes>8]~\! } 8 
					\tuplet 3/2 { r16[ ais\< c] } |
			\voiceOne
			\time 4/4 \grace { s8 } \tuplet 5/4 { ces,16\mp\> b ces b ces } ces,16 b ces b
			s4. s8\! |
		} \\ \new Voice { 
			s2.
			\change Staff = "down" 
			<< { s2 \tuplet 3/2 { ces,8 b ces } ces,8 b\! | } 
			{ \grace { e8~ } e1 | } >>
		} >> |
	\time 3/4 << \new Voice { 
			\change Staff = "up" 
			\grace { s8 } ces'''16\sfz b\p ces bes 
				ces ais bes ais 
				bes\< a bes a
			aes\mp gis aes gis
				aes\> g aes g 
				aes fis g fis\! | %m8
		} \\ \new Voice { 
			\change Staff = "down" 
			\grace { d,,8~ } d2. | 
			\grace { des8~ } des2. | %m8
		} >>
}

guitarI = <<
	\new Voice \relative c' { 
		b'2\laissezVibrer\harmonic\sfz r4 \tuplet 7/4 { r16[ b,\pp\< g fis es c aes] } |
		\voiceOne \time 6/4 r4\p b'4 \half-harmonic b'^"rh" \half-harmonic fis'\laissezVibrer r2\! |
		\time 4/4 b,,2:32 \half-harmonic b'4:32 s4 | 
		b,4 \tuplet 10/8 { fih32[\< b32 b b b32 b b b32 b b] }
			\tuplet 7/4 { \mergeDifferentlyHeadedOn f,!16[\mp\> b'16 b b b16 b b] }
			\tuplet 3/2 { b8 b b\! } |

		\time 3/4 r4 b\p \oneVoice
			\tuplet 6/4 { b'16\< \repeat unfold 3 b16\harmonic ais c\mp } | \voiceOne
		\time 4/4 \grace { s8 } \half-harmonic b4.:32\> r8\! e,8^"open"\p [ g,] b[ d,] |
		\time 3/4 \grace { s8 } b'2:32\fp <b g>4:32 |  
		<e b g d>4:32 <e b g>4:32 <e b>4:32 | %m8
	}

	\new Voice \relative c {
		\voiceTwo
		s1 | 
		\time 6/4 gih2 g1 |
		\time 4/4 fisih4\glissando\pp fis2 \oneVoice \tuplet 6/4 { f16\< a b c e f_~ } |
		\voiceTwo f4\p fih4 f,2 | 

		e2.\sfz |
		e1 |
		\time 3/4 \grace { s8 } s2 s4\< |
		s4\mp \niente s4..\> s16\! |
	} %m8
>>

hornII = \relative c'' {
	\clef "treble" \time 4/4
	\tuplet 3/2 { gis8\pp\< a ais } b4~ b4:32\p \tuplet 3/2 { fis8\pp b bes } |
	\tuplet 5/4 { a16 bes a\< gis a } bes8 gis <e a>2^"split"\mp |
	g!8\p\< fis \tuplet 3/2 { g8 aes fis } <d g>2^"split"\mf |
	\clef "bass" \niente f,2.\> r4\! |

	\transpose b g { \tuplet 3/2 { gis16\p\< a ais } b4.\mp~ \niente b4.:32\> } r8\! |
	\time 3/4 \clef "treble" \transpose b fis' { \tuplet 3/2 { gis8 a ais } b4~\< b4:32 } | %m14
}

harpII = \relative c'' {
	\time 4/4
	<< { 
			\change Staff = "up" \oneVoice
			g2\p <b c>4.:32\> r8\! 
		} \\ { 
			\change Staff = "down" 
			c,,,1 
		} >>
	<< { 
			\change Staff = "up" \oneVoice
			r4\p <bes''' c>4:32\<  <a c>4.:32\mp\> r8\! 
		} \\ { 
			\change Staff = "down" 
			c,,,1 
			} >>
	\tuplet 6/4 { c''''8[\mp a e c] b'[ g } \tuplet 6/4 { d b] bes'[\< g d bes] } 
	a'8\mf\> f c a f4\p es | 

	<< {
			\change Staff = "up" \oneVoice
			ces'4\mp b4 <ces' fis>8 b'8 r8 <b, ces>8:32\mf |
		} \\ {
			\change Staff = "down"
			d,,,,1 |
		} >>
	<< {
		\change Staff = "up" s2\< << <b'' c!>4:32 { s8.. s32\! } >> | %m14
		} \\ {
		\change Staff = "down" \time 3/4 <b ces>2:32 s4 | %m14
		}>>
}

guitarII = <<
	\time 4/4
	\new Voice { 
		\voiceOne
		\tuplet 5/4 { b8\p bes a ais b } \tuplet 3/2 { c4 b bes } |
		\transpose b a' b8\< bes a ais a2:32 | 
		\oneVoice \transpose b g' \tuplet 5/4 { c'8\mp b bes a ais } 
			\transpose c g' \tuplet 6/4 { c8[\< cis d es d des] } | \voiceOne
		g'2\mf \transpose c ais \tuplet 7/4 { c8\p\< des d es d des c } |

		<b d_\laissezVibrer>2\mp \tuplet 3/2 { b8 8 8 } \oneVoice \tuplet 5/4 { b'16\harmonic\< \repeat unfold 4 b'16\harmonic }
		\time 3/4 \half-harmonic <b' g'>4:32\mf\< \half-harmonic <b' g' d'>4:32  
			<b'\harmonic g'\harmonic d'\harmonic a\harmonic e\harmonic>8:32 
			<b g d a, e,>8:32\! | %m14
	}

	\new Voice \transpose c c, {
		\voiceTwo
		c'2 s2 | 
		c'1 | 
		e1 | 
		c'2 s2 |

		s1  |
		\time 3/4  s2. | %m14
	}
>>

hornIII = {
	\time 4/4
	\clef "bass"
	\transpose c c, {
		\niente g2\fp\> r4\! geh4\pp\glissando | 
		\square fis4.^"air" \tuplet 3/2 { r8[\! g16(] } \niente fih4)\fp\>\glissando \square fih8 r8\! | 
		\time 2/4 \tuplet 3/2 { f8\p 8 f'8~ } \transpose c c' { \tuplet 5/4 { f16\< ges f e feh } }
		\time 3/4 e'2\mp\< bes4\mf\< |
	}

	\relative c' { 
		a,2\mf \clef "treble" \tuplet 7/4 { f'''8\p\< 8 16 8 } |
		\time 4/4 f8 f \niente feh4\mp\>\glissando e4 r4\! |
		fis4\pp-. a,4-. r4 f4-. |
		e4-. r4 es4-. r4 | %m22
	}
}

harpIII = \relative c'' {
	\time 4/4
	\change Staff = "up"
	\tuplet 6/4 { c,16\f b f' e aes g } \tuplet 5/4 { c16\mp\> b f' e aes } 
		\tuplet 3/2 { g8 c8 b8\p } des16 c8. |
	<< { \oneVoice
			\niente <ces b>4.:32\> r8\! s2  |
		} \\ { \oneVoice
			\change Staff = "down" r4.
			\tuplet 3/2 { r16\![ aes,,^\mp g] } \tuplet 6/4 { c16^\> b! aes g f es }
			\change Staff = "down" \tuplet 5/4 {  des16^\< ces16 b a g\!} |
		} >>
	\change Staff = "down" \time 2/4 \tuplet 3/2 { f4^\mp eis8 } \tuplet 5/4 { f'16[ eis16 r32] } r8 |
	\time 3/4 << { 
			\change Staff = "up" \oneVoice
			r4  \tuplet 7/4 { eis'16 fes gis aes bis16 c d }
				\ottava #1 \tuplet 7/4 { eis16 fes gis aes bis16 c d } | \ottava #0
		} \\ {
			\change Staff = "down" 
			\tuplet 7/4 { eis,,,16^\mf fes gis aes bis16 ces d } \tuplet 5/4 { eis,32[ fes gis aes bis32] }
				\change Staff = "up" \tuplet 5/4 { c[\< d  eis fes gis] } 
				\tuplet 5/4 {  aes[ bis ces d eis] } \tuplet 5/4 { fes gis ais bis ces\! } |
		} >>
	
	<< {
			\change Staff = "up" \ottava #1  \oneVoice
			fes2 \ottava #0
			\change Staff = "up" \tuplet 7/4 { a,,16\< bes cis d eis fes gis\! } |
		} \\ {
			\change Staff = "down" \oneVoice
			\tuplet 3/2 { r4^\f a,,!8^\mp~ } 
			\tuplet 7/4 { 8 fes4 a,16~ }
			a4 |
		} >>
	\change Staff = "up"
	\time 4/4  <a'' eis'>2:32\mf\glissando^"ped. gliss." <a e'!>2:32\> | 
	r2\! a2\pp |
	\change Staff = "down" a,4 e a,2 | %m22
}

guitarIII = <<
	\time 4/4
	\new Voice \relative c' { 
		\voiceOne
		<b g d a e>1\f |
		s2 r8 \tuplet 3/2 { b16\> 16 16 } b4\! | 
		\time 2/4 \once \omit TupletBracket \once \omit TupletNumber \tuplet 3/2 { f,32[ b' b b] c,32[ b' b b] b,32 c' c c } c4:32
		\time 3/4 r8 \tuplet 7/4 { r32[ c16\< c c] } b4:32 gis'4:32 |

		\oneVoice \tuplet 6/4 { cis16\f\< ais fis d! dis'\> b } \tuplet 7/4 { gis16 e b' fis d a a'\mp\< } \tuplet 5/4 { e16 c g gis d } |
		\time 4/4 <e, a e'' a>1:32\mf\> |  
		s1\pp | 
		a1 | %m22
	}

	\new Voice \relative c {
		s1 | \oneVoice
		fis,4\p~ \transpose g f, \tuplet 6/4 { gis16 g\< c' b bes a } \voiceTwo fih2\mp |
		\time 2/4 \tuplet 3/2 { f8\p\< c'8  b} \grace c8~ c4\mp\< |
		\time 3/4 e,2.\mf |

		a2. |
		\time 4/4 s1 |
		\oneVoice a2 fis' | 
		s1 | %m22
	}
>>

hornIV = {
	\clef "bass"
	\transpose c c {
		d4-. r4 deh4-. r4 | 
		dih4-. r4 d4-. deh'4-. | 
		d4-. deh4-. r4 des'4-. | 
		deh4-. des4-. c'4-. r4 |

		b4-. c'4-. r4 b4-. | 
		bes4-. r4 b4-.\< bes4-. | \clef "treble"
		a'4-. aes'4-.\mp r4 a''4-. | 
		bes'4-.\< a'4-. aes''4 << d'4 { s8. s16 \! } >> | %m30
	}
}

harpIV = <<
	\relative c' {  \oneVoice
		\change Staff = "up"
		s1 * 4 |

		r8. d16_~ 4 2
		r16 8. <d g>4 r16 <d g>8. r16 <g b>8 <g b>16
		\change Staff = "down" \voiceOne
		r16 <g, b>8 16 
			\change Staff = "up" \oneVoice
			<e' g>8. b'16 r16 <d f>8. <ees g bes>8. <ees' g>16
		\change Staff = "down" \voiceOne
		r16 <ees,,, g>8. 
			\change Staff = "up"  \oneVoice
			r16\< <g' bes>8. <d' f aes>4 r16 <ges bes>16 des'8\! | %m30

	} \\ \relative c { 
		\change Staff = "down"
		\oneVoice
		aes8 g8 ges4 f2 |
		ges2 f8 aes4 ges8 |
		f8 ges4 f8 e2 |
		f4 ges8 aes8 bes8 aes8 g4 |

		g16 g8. fis4 g4 r16 aes8 g16~ |
		g4 e16^\< aes8 g16 g16 g16 g8 fis4^\p |
		\voiceTwo fis16 g8 e16 \oneVoice d4 ees'8^\< f16 aes16 bes16 aes16 g8^\mp |
		\voiceTwo e,8 f16 aes16 \oneVoice bes16 aes16 ges8 f'16 ges8 es16 des4 | %m30
	}
>>

guitarIV = <<
	\new Voice { 
		\voiceOne
		s2. d4~ | 
		d2. <d g>4~ | 
		2 d2~ | 
		d1 |

		r16 d16 8 4 2
		16\< 8 16 <d g>8.^"strum"\p <d g b>16 <d g>4 <d g b>8. <g b>16
		16\< 8. r16 <g b e'>8. <d g b e'>4\mp r16 <d g b>16 <d g>8
		\oneVoice \tuplet 3/2 { 8[ 16] } r8
			\tuplet 3/2 { r8[ <a, d g b>16]\< } \tuplet 3/2 { 8[ 16] }
			\tuplet 3/2 { r8[ <d g b e'>16] } \tuplet 3/2 { r8[ <d g b e'>16] } 
			\tuplet 3/2 { r16[ 16 <d g b e'>16] } \tuplet 3/2 { 16 16 <d[ g b e'>16]\! } | %m30
	}

	\new Voice \transpose c c, {
		g4 fis2 \voiceTwo e4|  
		fis2 e4 \voiceTwo  g4|  
		e4 fis4 \voiceTwo  g2 | 
		<fis a>1 |

		g1 | 
		s1 * 3 | %m30
	}
>>

hornA = { 
	\hornI %m8
	\hornII \bar "||" %m14
	\hornIII %m33
	\hornIV %m30
}

harpA = { 
	\harpI %m8
	\harpII \bar "||" %m14
	\harpIII %m33
	\harpIV  %m30
}

guitarA = { 
	\guitarI %m8
	\guitarII \bar "||" %m14
	\guitarIII %m33
	\guitarIV %m30
}