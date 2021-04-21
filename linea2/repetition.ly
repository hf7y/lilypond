\version "2.20.0"

% \include "./chorale.ly"
% \include "./contextualize.ly"
% \include "./lib.ly"
% \include "./texture.ly"
% \include "./textures/buzz.ly"
% \include "./textures/chance-rest.ly"
% \include "./textures/chance-zing.ly"
% \include "./textures/chance-bloom.ly"
% \include "./textures/chance-air.ly"
% \include "./textures/identity.ly"
% \include "./dot-play.ly"
% \include "./max-voices.ly"
% \include "./jazz-stabs.ly"

repeatZero = {
	$(define pitch-countdown (countdown 1))
	$(define pitch-countdown2 (countdown 5))
	$(define decoherence (countdown 1))
	$(chorale->texture 
		(chance-rest-proc 0)
		(pre-intro-chorale
			#{ << { a4 r1.. | f4 r2 | e4 r4 | es1 r1 } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(define pitch-countdown (countdown 15))
	$(define pitch-countdown2 (countdown 15))
	$(define decoherence (countdown 100))
	$(chorale->texture 
		(chance-zing-proc 10)
		(pre-intro-chorale
			#{ << { f4 r8 | a8. r4 | es'4. r4 | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(define pitch-countdown (countdown 30))
	$(chorale->texture 
		(chance-rest-proc 30)
		(pre-intro-chorale
				#{ << { 
					a8 r8 | f8 r8. | e'8. r8 | 
					c8 r4 | aes8 r8 | es4 r8 | 
					aes8 r8 | f8 r8 | a8 r8 | 
					} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(define pitch-countdown (countdown 30))
	$(chorale->texture 
		(chance-rest-proc 0)
		(descent-music
			#{ { e8 fis b,2 } #} 3 5)	
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 0)
		(descent-music
			#{ { a8 cis, gis,,2 } #} 4 15)	
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
	$(chorale->texture 
		(chance-zing-proc 10)
		(descent-music
			#{ { b,,8 fis, dis,,,2 } #} 6 65)	
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
		$(define pitch-countdown (countdown 30))

	$(chorale->texture 
		(chance-zing-proc 30)
		(descent-music
			#{ { e8 fis2 } #} 8 65)	
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 60)
		(descent-music
			#{ { a8 gis,,2 } #} 8 45)	
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
	$(chorale->texture 
		(chance-zing-proc 90)
		(descent-music
			#{ { b,,8 c2 } #} 8 25)	
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	% #(chorale->texture
	% 	identity-proc
	% 	#{ << { r1 | r1 } >> #}
	% 	(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
}


repeatOne = {
	$(define pitch-countdown (countdown 50))
	$(define pitch-countdown2 (countdown 5))
	$(define decoherence (countdown 100))
	$(chorale->texture 
		(chance-zing-proc 25)
		(chorale-add-w-bar
			(pre-intro-chorale
				#{ << { f8 r8. | c8 r8 | e8. r8 | bes'8 r8 |
					    f8 r8. | c8 r8 | e8. r8 | bes'8 r8 | } >> #})
			(chorale-add-w-bar
				(descent-music
					#{ { aes8 es ges,2 } #} 8)
				(descent-music
					#{ { a8 e g,2 } #} 8)))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))



	$(define pitch-countdown (countdown 30))
	$(chorale->texture 
		(chance-rest-proc 30)
		(descent-music
			#{ { e8 fis b,2 } #} 8 45)	
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 40)
		(descent-music
			#{ { a8 cis, gis,,2 } #} 8 35)	
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
	$(chorale->texture 
		(chance-rest-proc 30)
		(descent-music
			#{ { b,,8 fis, dis,,,2 } #} 6 25)	
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
		$(define pitch-countdown (countdown 30))

	$(chorale->texture 
		(chance-rest-proc 20)
		(descent-music
			#{ { e8 fis2 } #} 4 15)	
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 10)
		(descent-music
			#{ { a8 gis,,2 } #} 2 5)	
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
	$(chorale->texture 
		(chance-rest-proc 0)
		(descent-music
			#{ { b,,8 c2 } #} 1 0)	
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 10)
		(chorale-add-w-bar
			(descent-music
				#{ { es8 f bes,2 } #} 2 0)
			(descent-music
				#{ { es,8 f bes,2 } #} 3 5))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 30)
		(descent-music
			#{ { es,,8 f b,2 } #} 4 10)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 50)
		(descent-music
			#{ { es,,8 f bes,2 } #} 6 15)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 70)
		(descent-music
			#{ { e,,8 g c2 } #} 8 20)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
}


repeatTwo = {
	$(define pitch-countdown (countdown 150))
	$(define pitch-countdown2 (countdown 5))
	
	$(define decoherence (countdown 1))
	<<
		$(chorale->texture 
			(chance-zing-proc 100)
			(pre-intro-chorale
				#{ << { es'4 r1 r2. | } >> #})
			(list "cl" "bn" "va" "vc" "db"))

		$(chorale->texture 
			(chance-zing-proc 0)
			(descent-music
						#{ { es'8 d8 f1 g2. } #} 8 40)
			(list "fl" "tbn" "vn"))
	>>

	<<
		$(chorale->texture 
			(chance-zing-proc 100)
			(pre-intro-chorale
				#{ << { es'4 r1 r2. | } >> #})
			(list "bn" "va" "vc" "db"))

		$(chorale->texture 
			(chance-zing-proc 0)
			(descent-music
						#{ { es'8 d8 f1 g2. } #} 8 50)
			(list "fl" "cl" "tbn" "vn"))
	>>

	<<
		$(chorale->texture 
			(chance-zing-proc 100)
			(pre-intro-chorale
				#{ << { es'4 r1 r2. | } >> #})
			(list "va" "vc" "db"))

		$(chorale->texture 
			(chance-zing-proc 0)
			(descent-music
						#{ { es'8 d8 f1 g2. } #} 8 60)
			(list "fl" "cl" "bn" "tbn" "vn"))
	>>

	<<
		$(chorale->texture 
			(chance-zing-proc 100)
			(pre-intro-chorale
				#{ << { es'4 r1 r2. | } >> #})
			(list "vc" "db"))

		$(chorale->texture 
			(chance-zing-proc 0)
			(descent-music
						#{ { es'8 d8 f1 g2. } #} 8 70)
			(list "fl" "cl" "bn" "tbn" "vn" "va" ))
	>>

	<<
		$(chorale->texture 
			(chance-zing-proc 100)
			(pre-intro-chorale
				#{ << { es'4 r1 r2. | } >> #})
			(list "vc" ))

		$(chorale->texture 
			(chance-zing-proc 0)
			(descent-music
						#{ { es'8 d8 f1 g2. } #} 8 80)
			(list "fl" "cl" "bn" "tbn" "vn" "va" "db"))
	>>

	$(define pitch-countdown2 (countdown 5))


	$(chorale->texture 
		(chance-zing-proc 20)
		(descent-music
					#{ { es'8 d8 f1 e2. } #} 6)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 20)
		(descent-music
					#{ { es'8 d8 e1 e2. } #} 4)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 20)
		(descent-music
					#{ { es'8 e8 e1 d2. } #} 2)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
	
	$(chorale->texture 
		(chance-zing-proc 20)
		(descent-music
					#{ { es'8 e8 e1 e2. } #} 1)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 20)
		(descent-music
					#{ { g,8 g,8 g,1 g,2. } #} 1)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 20)
		(descent-music
					#{ { g,8 g,8 g,1 g,2. } #} 2)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 20)
		(descent-music
					#{ { g,8 g,8 g,1 g,2. } #} 1)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
}

repetition = {
	\repeatZero
	<< \context Staff = "fl" { \bar "||" \break }
	   \repeatOne >>
	<< \context Staff = "fl" { \bar "||" \break }
	   \repeatTwo >>
}