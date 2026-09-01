\version "2.24.1"
fpp = #(make-dynamic-script "fpp")
hornV = \relative c'' { 
	\clef "treble"
	d8\sfz r8 \tuplet 3/2 { es,8\p g fis } \pitchedTrill 
		g4.\startTrillSpan\> fis r8\!\stopTrillSpan | %m33
	fis'8\sfz r8 \transpose d g'' \tuplet 9/8 { d16.~\p d16. g,32 fis, g, } \pitchedTrill 
		fis,4\>\startTrillSpan eis g8\stopTrillSpan r8\!| 
	cis8\sfz r16 gis'16\p \tuplet 5/4 { a16 bes a gis fis } \tuplet 3/2 { e8\< fis gis } gis4\fp~ |
	gis4\! e4:32\fp \transpose g a'' \tuplet 5/4 { gis16( a gis a e } a8) r8 |
}
harpV = \relative c'' { 
	<< { \oneVoice
		\change Staff = "up" 
		d8\sfz fis,16\p g <es dis>2:32\>\glissando r4\! | 
		\transpose d fis' \retrograde \tuplet 5/4 { d16 g fis g d'16\sfz\> } <g d>4\p 
			\tuplet 5/4 \retrograde { des16 g fis g aes } aes'4 |
	} \\ { \oneVoice
		\change Staff = "down"  
		<d,, g,>4 s2. |
		d4 \tuplet 3/2 { g8 d e } fis8 des8 <b g'>:32 <bes g'>:32 |
	} >>
	<< { \oneVoice
		\change Staff = "up" \tuplet 3/2 { <a''! des>8\sfz e16 } r8 \tuplet 3/2 { bes8\p e a }
			\tuplet 5/4 { c16\< bes a bes fis } a4\mp | 
		r8 aes16 e b'8 e8 aes, des aes' des, |
	} \\ { \oneVoice
		\change Staff = "down" <a,, fis'>4 r8 a'16 e bes8 d <des cis>4:32 |
		r16 e16^\p^\< des e aes,4^\mp r4 \grace aes8~ { aes4 }
	} >>
	
}
guitarV = { 
	\grace { \transpose e g <gis, c e>8\arpeggio }
		<g, b, es g b e'>4\f es8\p g \transpose e b { e,16 aes, c e } d'4:32\> | 
	\tuplet 5/4 { \transpose a, d <a, cis eis gis>8.\sfz\> fis16 bes } 
		\tuplet 9/8 \transpose d g { d32\p fis a cis' a fis d32 fis a } 
		fis'4.:32\> r8\! | 
	\transpose e fis { <e, a, d g b e'>8\sfz } f'8\p d' bes16 c'
		\transpose a, e { a,16 cis f gis } \transpose cis a { <a, cis eis gis>4:32\fp } | 
	\transpose e a { e,16\< gis, c e } \transpose a, e <a, cis eis gis>4:32\fp \transpose ais a \tuplet 3/2 { r8 dis g } \transpose e a { <e gis b dis'>4:32_\fpp }  |
}

hornVI = \relative c'' {
	\tuplet 5/4 { g16\< fis eis fis:32 g:32 } d'4:32\f\>\glissando \square d4 \clef "bass" des,,4\mp\> |
	c4 b4 bes4 a | 
	gih4\p\glissando g4 \clef "treble" \transpose e a' { r16 e-. a8 } \clef "bass" d'4 |
}
harpVI = \relative c'' {
	<< { \oneVoice
		\change Staff = "up" 
		<bis c>4:32\< \tuplet 5/4 { b!16\f\> g' fis c' b } 
		fis'16\mf e fis eis fis8 b, | 
	} \\ { \oneVoice
		\change Staff = "down" 
		r4 d,,,4 des c | 
	} >>
	\change Staff = "up" <f''! eis>4:32\> <f e>4:32 <fes e>4:32 <fis e>4:32 | 
	g4\p\laissezVibrer \ottava #1 \tuplet 3/2 { r8 <es' g c>4 } \ottava #0
		<< { \oneVoice r4 r16 e,, a!8 | } \\ { \oneVoice \change Staff = "down" a,,4 aes | } >>
}
guitarVI = {
	g'8\< d' <bes e' a' dis''>4:32\mf d4\> \grace { <g b dis'>8 } fis'16 dis' b g  | 
	\transpose d g \retrograde { d16 aes cis' g'\mp } \transpose d fis { d16 aes cis' g' } a'8\> dis' \transpose d fis \retrograde { d8 aes } |
	\transpose a, g { a,8 es  a d' } e'8\p c' g d | 
}


hornVII = \relative c'' {
	\time 5/4 \clef "treble"
	d4:32\fp\glissando g,8 r8 \tuplet 5/4 { r16[ fis' e( fis g] } 
		\transpose g fis'' \tuplet 3/2 { g8 fis e) } r4 | %m40 
	fis,16 fis'8.\fp \transpose d g' { d16 gis fis gis } \niente \pitchedTrill 
		g,2\startTrillSpan\> fis r4\!\stopTrillSpan | 
	\time 4/4 a'8\glissando\pp gisih\glissando a8 r16 e16
		\stemDown \tuplet 5/4 { dis16( cis dis e fis } \stemNeutral \tuplet 5/4 { eis16) dis\< eis fis gis } |
	a4\glissando\spp gisih\glissando a4 r4 |
}
harpVII = \relative c'' {
	\time 5/4 
	<< { \oneVoice
			\change Staff = "up" 
			d16\sfz g, fis g \tuplet 3/2 { d8\p g fis } 
				\tuplet 5/4 { d16\! g fis g fis } <g fis>4.:32\> r8\! |
			\transpose d fis' \retrograde { d16 g fis\sfz g } g4 s2 s4 |
		} \\ { \oneVoice
			\change Staff = "down"
			g,1 r4 |
			r16 d8. r8. ais'16^\p
				\tuplet 3/2 { g8 fis e } d2 |
		} >>
	<< { \oneVoice
			\time 4/4
			\change Staff = "up"
			r16 e'' a8 \transpose a e''' { r16 e a8 } a4 e'4 |
			\transpose e a' \retrograde { a16 e a8\p } { a,16 e a8 } 
				\transpose g f''' \tuplet 5/4 { g16\< fis e fis g } \tuplet 3/2 { e'8 f ges\! } |
		} \\ { \oneVoice
			\change Staff = "down"
			cis,,,1^\p |
			s1 |
		} >>
}
guitarVII = {
	\time 5/4 
	\transpose e g { e,8\sfz gis,\p bis, e } \transpose a b' { a,16 cis f aes } a'4 r4 | 
	r16 <d fis a    cis'>8.\sfz \tuplet 5/4 \transpose d g' { r16[ d\p fis a    cis'] } 
		\transpose d fis' { d16 fis a    cis'} << { \niente fis''4.:32\> r8\! } \\ { d2 } >>|
	\time 4/4 \transpose cis a \retrograde { d8 fis a    cis'\pp } 
		\transpose a, e { a,,16 cis\< f gis } \transpose d a { d32[ fis a    cis'] } \transpose cis a { d32 fis a    cis' } |
	\transpose b a { b,16\spp dis g ais } e,4 \transpose d a { d,16\< aes cis' g' }  
		\ottava #1 \tuplet 6/4 \transpose d bes' { d16 gis cis' fisis' cis' gis\! } \ottava #0
}

hornVIII = \relative c'' {
	\tuplet 5/4 { g8\p\< fis e dis:32 eis:32 } \niente fis4.:32\mp\> r8\! |
	\tuplet 5/4 { f8\p\< e dis e:32 eis:32 } \niente fis4.:32\mp\> r8\! |
}
harpVIII = \relative c'' {
	<< { 
			g4.\mp \tuplet 5/4 { r32 <des' ges a>8\p } r2 |
		} \\ {
			\change Staff = "down"
			g,,1
		} >>
	\change Staff = "up"
	\transpose g fes' { g16\< fis e fis } \transpose g fes' \retrograde { g16 fis e g } ges''2\mp | 
}
guitarVIII = {	
	e''8\harmonic\p b'\harmonic g'\harmonic d'\harmonic \once \tupletUp \tuplet 3/2 { es'4\< bes ges }  | 
	d4\mp a,4 d2 |
}


hornB = { 
	\hornV
	\hornVI \bar "||"
	\hornVII
	\hornVIII \bar "||"
}

harpB = { 
	\harpV
	\harpVI \bar "||"
	\harpVII
	\harpVIII \bar "||"
}

guitarB = { 
	\guitarV
	\guitarVI \bar "||"
	\guitarVII
	\guitarVIII \bar "||"
}