\version "2.24.1"

hornX = \relative c'' {
	\tuplet 5/4 { b16\p( bes a ais) b( } \tuplet 5/4 { c16 cis d des c) } 
		\tuplet 6/4 { b16\< bes a gis:32 a:32 ais:32 } b8\mp r8 | 
	\time 3/4 \tuplet 6/4 { b16(\p c cis d des c) } b16\> bes a ais b8\! r8 |
	\time 4/4 \tuplet 6/4 { b16\p\< bes a gis a ais } b4:32\mp \tuplet 5/4 { c16\< cis d des c } b4:32 | 
	\niente e1\mf\> |
	\niente \square e1^"air"\< |
	\clef "bass" d,,2\glissando\p deh4\glissando\< des\glissando | 
	
	c2\mp\< r2\! | 
	\clef "treble" 
	\transpose b g' \tuplet 5/4 { c'16:32\f b:32 bes:32 a:32 ais:32 } 
		\transpose c g' \tuplet 6/4 { c16:32 cis:32 d:32 \niente es:32\> d:32 cis:32 } 
		 a''4.:32 r8\! | 
}
harpX = \relative c'' {
	<< { 	
			\change Staff = "up" \oneVoice
			\tuplet 5/4 { ges8.[\sfz fis8]\p } \tuplet 5/4 { ges8[ fis8.]\laissezVibrer } 
				r8 \tuplet 3/2 { r16[ ces''\< b] } 
				\tuplet 5/4 { ces, b \change Staff = "down" ces, b d, } | %m46
			\change Staff = "up" 
			\time 3/4 r8\! \tuplet 3/2 { d'16\p es d } r16 d8. r8 \tuplet 3/2 { r16 fis'8 } |
		} \\ { 
			s1 
			\change Staff = "down" \oneVoice
			\time 3/4 g,,,2^\sfz g'4 |
		} >>
	\time 4/4 \change Staff = "up"
	<< { \oneVoice
			\tuplet 3/2 { ges''8 fis8 ges'\< } \tuplet 5/4 { fis16 ges, fis ges, fis } 
				s8 s8\mp s4 |
			\change Staff = "up" 
			\tuplet 7/4 { b,16-> ces dis es fis ges a } 
				\voiceOne \tuplet 7/4 { b16 ces dis es f ges a }
				\ottava #1 \tuplet 7/4 { b16 ces dis es f ges aes } b4 | \ottava #0
		} \\ {
			\change Staff = "down"
			s2 	\tuplet 5/4 { ges,, ,16 fis dis8. } \oneVoice
				\tuplet 7/4 { b16^\< ces dis es fis ges a } | %
			r4^\f \change Staff = "up" \voiceTwo \tuplet 5/4 { ces32[ dis es f ges] } \tuplet 5/4 { a[ b32 ces dis es] } 
				\tuplet 5/4 { f32[\> ges aes b32 ces] } \tuplet 5/4 { dis[ es f ges aes] } b4\mp\fermata
		} >>
	\change Staff = "up"
	\tuplet 7/4 {fes,8\pp e fes'16 e8 } \tuplet 7/4 {fes,8 e fes'8. }
		\tuplet 7/4 {fes,,8\< e fes'16 e8 } \tuplet 7/4 {fes'8 e fes,8.\! }
	<< { 
			\change Staff = "up" \oneVoice
			<g, g'>4\mp s2 \tuplet 6/4 { b16\< a g fes e d } |
			\change Staff = "down" \voiceOne
			\tuplet 7/4 { c16^\mp bis16 a g fes e d } \tuplet 5/4 { c'32[ bis a g fes] } \tuplet 5/4 { e[ d c bis a] }
				\tuplet 5/4 { g32[ fes e d c] } \change Staff = "up" s8\< \tuplet 7/4 { c'''16 b!16 a g fis e dis } |
			\tuplet 7/4 { c'16\mf\< b16 as g fis es dis } 
				\change Staff = "up" \tuplet 7/4 { c''16\f b16 a g fis es dis }
				\tuplet 7/4 { c16\> b16 a g fis es d } \oneVoice s8.. s32\! |
		} \\ { \oneVoice
			\change Staff = "down"
			s4 <g, g,>4 g,,4\! s4 | 
			\change Staff = "down" \voiceTwo
			c4 \tuplet 7/4 { c'16 bis16 a g fes e d } c8 b''!16[ a] g fis es dis |
			c'4 \change Staff = "up" \tuplet 5/4 { c'16 b16 a g fis } es16 dis c8 \change Staff = "down" \tuplet 7/4 { c16 b16 a g fis es c } |
		} >>
}
guitarX = <<
	\new Voice \relative c {
		r4 \voiceOne\tuplet 5/4 { d8.\p b'16 c } \oneVoice
			\tuplet 6/4 { cis16 d es d des c } b4:32\< | \voiceOne
		\time 3/4 b4:32\fp b'16\!\harmonic b16\harmonic b8\harmonic r4 |
		\time 4/4 \tuplet 3/2 { fis,,8\p b'8 b } \tuplet 5/4 { b16\< b b b b }
			\tuplet 5/4 { b'16\harmonic\mp b16\harmonic b16\harmonic b16\harmonic\< b16\harmonic }
			fis'4:32\harmonic | \oneVoice
		\niente b,,2:32\f\> \harmonic \half-harmonic { b'4:32 } r8\!\fermata fis'8\harmonic\p |
		e8\harmonic b\harmonic g\harmonic d\harmonic 
			e8\harmonic^"V" b\harmonic e,\harmonic g\mp\< |
		\tuplet 3/2 { d4 <d g>4 <d g b>4:32 } <d g b a'>4:32 <e, a d g b c'>:32 |

		<e a d g b c'>4.\mf <e c' d g b e>8:32\< <e a d g b c'>2:32  |
		<e a d g b es'>8\f[ g'] <es a, d g b es'>8:32\> r8 <g a, d g b g''>8:32 r8 <es es''>4\! |
	}
	\new Voice \relative c {
		\voiceTwo
		s1 |
		\time 3/4 g2. |
		\time 4/4 fis2. dis''4 |
		s1 |
		e,,1 |
		s1 |
		
		s1 |
		s1 |
	}
>>

hornXI = \relative c'' {
	b4\p( b c b) | g2. gis4 |
	a1\fermata |
}
harpXI = \relative c'' {
	<< {
			\change Staff = "up" \oneVoice
			d4\p dis e4 g |
			b4_\markup \italic "dolce" b4 c4 b |
			a4 e4 a2\fermata |
		} \\ {
			\change Staff = "down" \oneVoice
			g,,4 f e d | cis1\laissezVibrer | bis1 |
		} >>
}
guitarXI = \relative c {
	<g b d g b g'>4\p <f b d g b g'>4 << <b d gis b e>2 \\ {e,4 gis4} >> |
	<< { <d''' fis b>4^\markup { \italic "dolce" } <d f b> <e gis c> <e gis b> | } \\ cis,,1 >>
	<< <e a c e a>2 \\ { e,4\rest e } >> <a e' g c e a>2\fermata |
}

hornXII = <<
	\new Voice = "hornV" \relative c'' {
		g4 fis e8 fis4. |
		g2. r4 | \bar "|."
	}
	\context Lyrics = tenors \lyricsto "hornV" {
		and I al -- ways will.
	}
>>
harpXII = {
	<< \oneVoice
		\new Voice = "harpV" \relative c'' { 
			g4 fis e fis | g2. r4 | 
		}
		\context Lyrics = altos \lyricsto "harpV" {
			and I al -- ways will.
		} \\
		{ \oneVoice
			\change Staff = "down"
			 d2 d,2 | g,2. r4 \bar "|." 
		} >>
}
guitarXII = \relative c {
	 <d g b g'>4 \tuplet 3/2 { <d g b g'>4 8\upbow } \once \tupletDown \tuplet 3/2 { r4 <d a' c fis>8\upbow } 4 |
	\tuplet 3/2 { <g, d' g b d g>4 d'8 } \tuplet 3/2 { g8 b d } a'4 r4 \bar "|."
}


hornC = {
	\hornX
	\hornXI
	\hornXII
}


harpC = {
	\harpX
	\harpXI
	\harpXII
}


guitarC = {
	\guitarX
	\guitarXI
	\guitarXII
}