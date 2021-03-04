\include "./gestures.ily"
\include "./instrument-names.ily"
\version "2.20.0"

phraseZero = {
	<< 
		\context Staff = "fl" {
			\makeTimeSig { s2. s2 s2. }
			\makeTimeSig { s2. s2. s1 }
			\makeTimeSig { s1.. }	
			\makeTimeSig { s1. }
			\makeTimeSig { s1. s1. }
			\makeTimeSig { s1. s2. s2 }	
		}
		{
			%m1
			\hiss #'(fl bn va db)  f2. f2
			\hiss #'(fl bn va db)  f2.
			%m2
			c2. \hiss #'(fl bn va db)  c2. c1
			%m3
			\hiss #'(fl bn va db)  aes1..
			%m4
			d1.
			%m5
			\hiss #'(fl bn va db)  es1. es2.
			\hiss #'(fl bn va db)  es2.
			%m6
			ges1. \hiss #'(fl bn va db) ges2 ges2.
		}
		{
			%m1
			\hiss #'(cl tbn vn vc)  f2. f2
			\hiss #'(cl tbn vn vc)  f2.
			%m2
			c2. \hiss #'(cl tbn vn vc)  c2. c1
			%m3
			\hiss #'(cl tbn vn vc)  aes1..
			%m4
			d1.
			%m5
			\hiss #'(cl tbn vn vc)  es1. es2.
			\hiss #'(cl tbn vn vc)  es2.
			%m6
			ges1. \hiss #'(cl tbn vn vc) ges2 ges2.
		}
	>>
 }
phraseOne = {
	<<
		\context Staff = "bn" {
			r16 c32 dih32 f2..~ | f2.\glissando e4\< |
			r32\! dih ges e f2..~ f1\glissando^"overblow" |
			<c' f>1~ | <c' f>1 |
		}
		\context Staff = "down" {
			s1 s1 |
			s1 s1 |
			f1->~ |
			f2 s2 |
		}
		\context Staff = "vn" {
			s1 s1 | 
			s1 \n e''1\harmonic\<~ | e''2\harmonic\> r4\!
		}
		{
			\clap #(sans bn) f8 \rests #(sans bn) { r2.. | R1 }
			<< \clap #'(down vn va vc db) c8 
			   \clap #'(fl cl tbn up) f8 >> \rests #(sans bn) { r2.. } << \rests #(sans bn (sans va (sans vn))) { R1 }
			   														   { \rests #'(va) r2.. \clap #'(va) e8 } >>
			\clap #'(fl) f4 \clap #'(cl db) a4 \clap #'(tbn vc) c'4 \clap #'(fl vn db) e4
				\clap #'(cl tbn va vc) a4 \clap #'(fl vn db) f4 \clap #'(fl cl tbn down) c4 \clap #'(down vn va vc db) f4
		}
	>> 
	\bar "||" %m7->
	<<
		\context Staff = "cl" {
			s1 s1 |
			s1 \n f'2. f'4:32\f |
		}
		\context Staff = "bn" \n-transpose f a {
			\tuplet 5/4 { e32 d c g aes} f2..~ | f1 |
			\tuplet 3/2 { d8 e d } f2.~ \n f2.\> r4\! | 
		}
		\context Staff = "db" \transpose f d { 
			r8 \n f2..\<~ | f4\glissando es2.\!~ | 
			es4 \relative c, { \tuplet 3/2 { d16 es d } es8~ es2~ | \n es2.\> r4\! | } 
		}
		{

			\clap #(sans bn (sans db)) f8 \rests #(sans bn (sans db)) { r2.. }
			<<
				{
					\rests #'(cl vn) { r2 } \n-transpose a fis \pluck #'(cl vn) a16 a2 
					\crackle #'(cl vn) fis16 fis2 \crackle #'(cl vn) g8 g2 |
					<<
						%{ \pluck #'(cl) a16 a4 \rests #'(cl) r2 \context Staff = "cl" \tuplet 5/4 \relative c' { e16[ dih c g' ges]} %}
						{ \rests #'(vn) r2 \pluck #'(vn) g16 g2 }
					>>
				}
				{
					\rests #'(fl vc) { r2. } \pluck #'(fl vc) c16 c2
					%{ s4 %} \crackle #'(fl vc) c'8 d'4 \rests #'(fl vc) r4 %{ s4 %}
					<<
						{ \pluck #'(fl) c16 c1 \crackle #'(fl) bes16 bes4 }
						{ \pluck #'(vc) g,16 g,1 \crackle #'(vc) g32 g4  }
					>>
				}
				{
					\rests #'(tbn va) { R 1 | 
					r8 } \pluck #'(tbn va) a,16 a,2.. |
					<<
						{ \rests #'(tbn) r4. \pluck #'(tbn) e,16 e,2 \crackle #'(tbn) bes,32 bes,8 }
						{  \rests #'(va) r4. \pluck #'(va) g16 g2 \crackle #'(va) c32 c8}
					>>
				}
				{
					\rests #'(up down) { R1 |
					R1 | } \pluck #'(up down) e,16 e1
				}
			>>
		}
		\rests #(sans bn (sans db)) { s1 | s1 | s1 | s2.\< s4\! } 
	>>
	\bar "||" %m11->
	<<
		\context Staff = "cl" \relative c' { 
			\tuplet 3/2 { f8 8 8 } f2.~ f1 |
			r32 dih ges e f2..~ f1\glissando^"overblow" |
			<c'' f,,>1~ | <c f,,>2.. \tuplet 5/4 { e,32 dih c g' aes} 
			f1~ f1~ |
		}
		\context Staff = "bn" {
			r16 c32 dih32 f2..~ f2.\glissando e4~ |
			e4. r32 dih ges e f2~ f1\glissando^"overblow" |
			<c' f>1~ | <c' f>2. r4 |
			\tuplet 5/4 { e,32 dih c g aes} f2..~ f1~ |
		}
		\context Staff = "vn" \transpose f c''' { 
			s1 s1 |
			s1 s1 |
			\tuplet 5/4 { e32 dih c g aes} f2..~ | f4. r32 dih ges e f2 |
			r16 c32 dih32 f2..~ | f1 |
		}
		\context Staff = "db" \relative c, { 
			s1 s1 |
			s1 s1 |
			s1 s1 |
			\set glissandoMap = #'((1 . 0))
			r4 <c f\harmonic>2.\glissando_~ c1 | \set glissandoMap = #'()
		}
		{
			<< \pluck #'(va db) f,32 f,8 
				   \clap #'(fl tbn up down vn vc) c8 >>
				\rests #(sans cl (sans bn)) { r2.. | R1 }
			<<
			{ %flute
				 \pluck #'(fl) f16 f4 \rests #'(fl) r2. | \pluck #'(fl) f16 f4 \rests #'(fl) r2. |
				 \rests #'(fl) r2.. \pluck #'(fl) f16 f4. \rests #'(fl) r2. |
				 \pluck #'(fl) f8 f1 | \rests #'(fl) r4. \pluck #'(fl) e'16 e4. \rests #'(fl) r8 \pluck #'(fl) e'16 e8 |
			}
			{ %trombone
				 \rests #'(tbn) r4 \pluck #'(tbn) f16 f4 \rests #'(tbn) r2 | \rests #'(tbn) r4. \pluck #'(tbn) f,16 f4. \rests #'(tbn) r4 |	
				 \rests #'(tbn) R1 | \rests #'(tbn) r8 \pluck #'(tbn) f,16 f4. \rests #'(tbn) r2 |	
				 \rests #'(tbn) r4 \pluck #'(tbn) c8 f1 \pluck #'(tbn) g,16 g2. |	
			}
			{ %piano
				\rests #'(up down) R1 | \rests #'(up down) r2 \pluck #'(up down) f8 f4 \rests #'(up down) r4 |
				\context Staff = "down" { f1->\laissezVibrer | } \rests #'(up down) r4. \pluck #'(up down) f16 f4. \rests #'(up down) r4 |
				\rests #'(up down) r2 \pluck #'(up down) f8 f1 << \pluck #'(up) e16 f2
																  \pluck #'(down) a,,16 f2 >> |
			}
			{ %violin
				\rests #'(vn) { R1 | r8 } \pluck #'(vn) f'16 f4. \rests #'(vn) r2 |
			}
			{ %viola
				\rests #'(va) R1 | \rests #'(va) r2. \inversion f' f' \pluck #'(va) f16 f2
				\rests #'(va) r2. | \rests #'(va) r2. \pluck #'(va) f16 f2
				\rests #'(va) { r4 r4 } \pluck #'(va) f16 f2. \rests #'(va) { r4 r16 } \pluck #'(va) f32 f8. |
			}
			{ %cello
				\rests #'(vc) r2. \pluck #'(vc) f,16 f4. \rests #'(vc) { r8 r8 } \pluck #'(vc) f8 f4. \rests #'(vc) r4  |
				\rests #'(vc) { r2. r8 } \pluck #'(vc) f,8 f4. \rests #'(vc) r8 \pluck #'(vc) f8 f4. \rests #'(vc) r4  |
				\rests #'(vc) r4. \pluck #'(vc) f16 f1 \pluck #'(vc) c16 f4. \pluck #'(vc) e,32 f4  |
			}
			{ %bass
				\rests #'(db) { R1 } | \rests #'(db) { r2 r8 } \pluck #'(db) f8 f4. 
				\rests #'(db) { r2 r8 } \pluck #'(db) e16 f4. | \rests #'(db) { r2 } \pluck #'(db) f,8 f2
				\rests #'(db) { s1 | s1 } |
			}
			>>
		}
	>>
	\bar "||"
	<<
		{ %flute
			\context Staff = "fl" { d'''4:32\> r2.\! } | \pluck #'(fl) g8 g2 \crackle #'(fl) f'8 f'2 |
			\crackle #'(fl) f'4 f'1 | \crackle #'(fl) g'4 e'1 |
			\crackle #'(fl) a'4 a'1 | \crackle #'(fl) g'4 g'1 |
		}
		{ %clarinet	
			\context Staff = "cl" \relative c' { f2.\> r4\! | r2. } \pluck #'(cl) f16 f2
			\rests #'(cl) { r4 r8 } \pluck #'(cl) e16 e2 \crackle #'(cl) e16 e4. \crackle #'(cl) e8 e2 |
			\crackle #'(cl) f8 f1 | \crackle #'(cl) g8 g1 |
		}
		{ %bassoon		
			\context Staff = "bn" { f1 | R1 | 
			r4. } \pluck #'(bn) c8 c4. \crackle #'(bn) c16 c4 | \crackle #'(bn) c16 c2 \crackle #'(bn) bes16 bes2 |
			\crackle #'(bn) a16 bes2 \crackle #'(bn) a8 a2 | \transpose c c, \crackle #'(bn) e8 c2. \rests #'(bn) r4 |
		}
		{ %trombone
			 \context Staff = "tbn" { f2.\> r4\! } | \rests #'(tbn) r4. \pluck #'(tbn) f16 f4. \crackle #'(tbn) f16 g4 |	
			 \crackle #'(tbn) a16 a4 \crackle #'(tbn) a8 a2. | \crackle #'(tbn) g8 g1 |
			 % \rests #'(tbn) r4 \pluck #'(tbn) f8 f1 \pluck #'(tbn) f,16 f2. |	
		}
		{ %piano
			<< \context Staff = "down" { bes,2 } 
			   \crackle #'(up) d16 f2 >> \rests #'(up down) r4 \pluck #'(up down) bes,16 bes4. \rests #'(up down) { r8 r4 } \pluck #'(up down) a,8 a2.
			   %{ s4 %} \crackle #'(up) a,8 a,2. | \crackle #'(up) g,8 g,2. \crackle #'(up) g,16 bes,4 |
			   \crackle #'(up) f,16 a,4 \crackle #'(up) f,8 f,2 \crackle #'(up) e,16 f,4 | \crackle #'(up) e,16 g,2 \crackle #'(up) e,16 g,2 |
		}
		{ %violin
			\context Staff = "vn" \relative c''' { <g d'>1~ <a d>1_~ | 
			<a c>1~ <g c>1~ |
			<f c'>1~ <e c'>1~ |
			}
		}
		{ %viola
			\crackle #'(va) g16 g4 \pluck #'(va) g8 g2 \pluck #'(va) a8 a4 | \context Staff = "va" { b'1 
			a'1\>  g'2 r2\! |
			R1 R1 | }
		}
		{ %cello
			\pluck #'(vc) es,16 f4 \context Staff = "vc" { \n d2.\<~  | \n d2\> r2\! |
			r2 e2\<~ e1\! | 
			f1\> | R1\! } 
		}
		{ %bass
			\context Staff = "db" \relative c, { 
			bes1~ bes1 |
			c1~ c1 |
			\n a2\> r2\! R1 | }
		}
	>> \bar "||"}
phraseTwo = {
	<<
		\context Staff = "vc" {
			dih16 f2...~ | f4\glissando e2. |
			\tuplet 3/2 { dih8 g e } f2.~ | f2\glissando fis2 | 
		}
		\context Staff = "fl" \relative c'' { 
			r8 \n f2..\<~ | f4\! e2.~ | 
			e4  \tuplet 3/2 { dih16 g e } f8~ f2~ | f4 fis2. |
		}
	>>}

arrangement = 
	\removeWithTag #'part 
	\removeWithTag #'verbose
{
	\phraseZero
	% \phraseOne
	% \phraseTwo
}