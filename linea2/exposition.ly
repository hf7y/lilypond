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

$(define decoherence (countdown 1))

phraseZero = {
	$(define pitch-countdown (countdown 50))
	$(define pitch-countdown2 (countdown 5))
	$(define decoherence (countdown 100))
	$(chorale->texture* 
		(chance-rest-proc 70)
		(pre-intro-chorale
			#{ << { aes8 r8 | f8 r8 | e8 r8 | es1 r1 } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\mf#})
		)

	$(define pitch-countdown (countdown 50))
	$(define pitch-countdown2 (countdown 15))
	$(chorale->texture 
		(chance-rest-proc 40)
		(pre-intro-chorale
			#{ << { aes8 r4 | f4 r8 | a8 r4 | e8 r8 | es'1 r2. | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(define pitch-countdown (countdown 100))
	$(chorale->texture 
		(chance-rest-proc 30)
		(pre-intro-chorale
				#{ << { 
					aes8 r8 | f8 r8. | es'8 r8 | 
					c8 r4 | g8 r8 | e4 r8 | 
					aes8. r8 | f8 r8 | e8 r16 | 
					} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 30)
		(chorale-add-w-bar
			(descent-music
				#{ { es8 f bes,2 } #} 8 65)
			(chorale-add-w-bar
				(descent-music
					#{ { es,8 f, bes,,2 } #} 8 80)
				(descent-music
					#{ { es,,4 f,, bes,,,2 } #} 8 90)))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	#(chorale->texture
		identity-proc
		#{ << { r1. | } >> #}
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
}

phraseOne = {
	$(define pitch-countdown (countdown 50))
	$(define pitch-countdown2 (countdown 5))
	$(define decoherence (countdown 100))

	$(chorale->texture 
		(chance-rest-proc 0)
		(pre-intro-chorale #{ << { aes4 r4 } >> #})
		(list "bn" "vn"))

	$(chorale->texture 
		(chance-rest-proc 70)
		(pre-intro-chorale
			#{ << { f4 r2. | e4. r2 | es'2. r1 } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	#(chorale->texture
		identity-proc
		#{ << { r1 | } >> #}
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
	%end phrase

	$(define pitch-countdown (countdown 50))
	$(define pitch-countdown2 (countdown 15))
	$(chorale->texture 
		(chance-rest-proc 50)
		(pre-intro-chorale
			#{ << { aes2 r4 | f4 r8 | f4 r8 | es2 r2 | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	#(chorale->texture
		identity-proc
		#{ << { r1 | } >> #}
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(define pitch-countdown (countdown 50))
	$(define pitch-countdown2 (countdown 15))
	$(chorale->texture 
		(chance-rest-proc 50)
		(pre-intro-chorale
			#{ << { aes2 r4 | f4 r8 | f4 r8 | es4 r4 | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	<< 
		$(chorale->texture 
			(chance-rest-proc 0)
			(pre-intro-chorale
				#{ << {  e'1 r1 | } >> #})
			(list "cl" "bn" "vn" "va"))

		$(chorale->texture 
			(chance-rest-proc 0)
			(descent-music
				#{ { es8 ges bes,2. es8 ges bes,2. } #} 8 15)
			(list "fl" "tbn" "vc" "db"))
	>>

	$(chorale->texture 
		(chance-rest-proc 0)
		(descent-music
			#{ { es8 ges bes,2. es8 ges bes,4 } #} 8 35)
		(list "fl" "cl" "bn" "vn" ))

	$(chorale->texture 
		(chance-rest-proc 0)
		(descent-music
			#{ { es8 ges bes,2. es8 ges bes,4 } #} 8 55)
		(list "fl" "bn" "vn" ))

	$(define decoherence (countdown 10))
	$(chorale->texture 
		(chance-rest-proc 30)
		(descent-music
			#{ { es8 ges bes,2 } #} 8 -15)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
	$(chorale->texture 
		(chance-rest-proc 40)
		(descent-music
			#{ { es,8 f, a,,2 } #} 8 0)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
	$(chorale->texture 
		(chance-rest-proc 50)
		(descent-music
			#{ { d,,4 f,, b,,,2 } #} 8 5)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	#(chorale->texture
		identity-proc
		#{ << { r2. | } >> #}
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
	%end phrase

	$(define pitch-countdown (countup 100))
	$(define decoherence (countup 100))
	$(chorale->texture 
		(chance-rest-proc 0)
		(pre-intro-chorale
			#{ << { 
				aes4 r8 | f4 r4. | es'8. r8 | 
				c4 r8 | g4 r8 |
				} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 40)
		(pre-intro-chorale
			#{ << { 
				e4 r4 | 
				} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 0)
		(pre-intro-chorale
			#{ << { 
				aes4 r8 | f8 r8 | es'8. r8 | 
				c8 r8 | g8 r8 |
				} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 40)
		(pre-intro-chorale
			#{ << { 
				e2. r4 | 
				} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
	
	$(define decoherence (countdown 50))
	$(chorale->texture 
		(chance-rest-proc 0)
		(pre-intro-chorale
			#{ << { 
				aes4 r8 | f4 r8 | es'8 r8 | 
				c8 r8 | g8 r8 | b8 r8 | ges8 f8 |
				} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 0)
		(descent-music
			#{ { es,,8 f b,2 } #} 2)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 30)
		(descent-music
			#{ { es,,8 f bes,2 } #} 6)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 45)
		(descent-music
			#{ { e,,8 g c2 } #} 8)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 25)
		(descent-music
			#{ { e,,8 f d2. } #} 2)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
}


phraseTwo = {
	$(define pitch-countdown (countdown 150))
	$(define pitch-countdown2 (countdown 5))
	$(define decoherence (countdown 150))

	$(chorale->texture 
		(chance-zing-proc 10)
		(pre-intro-chorale
			#{ << { f2. r8 | es1 r4 | e4. r8 | d2 r4 |  } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 20)
		(pre-intro-chorale
			#{ << { f2. r4 | es1 r4 | e1 r2. | d2. r8 |  } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))


	$(chorale->texture 
		(chance-zing-proc 10)
		(pre-intro-chorale
			#{ << { f2. r4 | es1 r4 | e2 r8 |  } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	<<
		$(chorale->texture 
			(chance-zing-proc 20)
			(pre-intro-chorale
				#{ << { d'4 r1 r2. | } >> #})
			(list "fl" "cl" "bn" "tbn" "vn" "db"))
		$(chorale->texture 
			(chance-rest-proc 0)
			(descent-music
						#{ { d8 c, b,1.. } #} 8 15)
			(list "va" "vc"))
	>>

	<<
		$(chorale->texture 
			(chance-zing-proc 40)
			(descent-music
					#{ { d8 c, b,1. } #} 8 25)
			(list "fl" "cl" "bn" "tbn" "vn" "db"))
		$(chorale->texture 
			(chance-rest-proc 0)
			(descent-music
						#{ { d8 c, b,1. } #} 1 5)
			(list "va" "vc"))
	>>

	$(define decoherence (countdown 50))
	$(define pitch-countdown (countdown 1))
	$(chorale->texture 
		(chance-rest-proc 50)
		(pre-intro-chorale
			#{ << { aes2 r8 | f2. r8 |
					e2. r8 | es2 r4 | d4 r4 | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(define decoherence (countdown 3))
	<<
		$(chorale->texture 
			(chance-zing-proc 100)
			(pre-intro-chorale
				#{ << { e2. r4 | es'1 r1|  } >> #})
			(list "vn" "va" "vc" "db"))
		$(chorale->texture 
			(chance-rest-proc 0)
			(chorale-add-w-bar
				(descent-music
					#{ { d8 g, b,2. } #} 5)
				(descent-music
					#{ { c8 g, bes,1.. } #} 2))
			(list "fl" "cl" "bn" "tbn" ))
	>>

	<<
		$(chorale->texture 
			(chance-zing-proc 100)
			(pre-intro-chorale
				#{ << { e2. r4 | es'1 r1|  } >> #})
			(list "va" "vc" "db"))
		$(chorale->texture 
			(chance-rest-proc 10)
			(chorale-add-w-bar
				(descent-music
					#{ { c8 aes, b,2. } #} 5)
				(descent-music
					#{ { c8 a, bes,1.. } #} 2))
			(list "cl" "bn" "tbn" "vn"))
	>>

	<<
		$(chorale->texture 
			(chance-zing-proc 100)
			(pre-intro-chorale
				#{ << { e2. r4 | es'1 r1|  } >> #})
			(list "vc" "db"))
		$(chorale->texture 
			(chance-rest-proc 10)
			(chorale-add-w-bar
				(descent-music
					#{ { c8 bes,1 } #} 5)
				(descent-music
					#{ { c8 b,1 } #} 2))
			(list "bn" "tbn" "vn" "va" ))
	>>

		% $(chorale->texture 
		% 	(chance-rest-proc 100)
		% 	(descent-music
		% 		#{ { c8 bes,1 } #} 5)
		% 	(list "bn" "tbn" "vn" "va" ))

	$(chorale->texture
		(chance-rest-proc 0)
		(chorale-add-w-bar
			(descent-music
				#{ { es8 aes, des'2 } #} 1 60)
			(descent-music
				#{ { c8 g, d'2 } #} 1 55))
		(list "bn" "tbn" "vn" "va"))

	$(chorale->texture
		(chance-rest-proc 20)
		(chorale-add-w-bar
			(descent-music
				#{ { es8 bes des2 } #} 3 40)
			(descent-music
				#{ { c8 a des2 } #} 1 35))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture
		(chance-zing-proc 30)
		(chorale-add-w-bar
			(descent-music
				#{ { es8 c, d2 } #} 2 30)
			(descent-music
				#{ { c8 a b2 } #} 4 25))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture
		(chance-rest-proc 0)
		(chorale-add-w-bar
			(descent-music
				#{ { es8 des d2 } #} 6 20)
			(descent-music
				#{ { c8 b des2 } #} 8 15))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture
		(chance-zing-proc 25)
		(chorale-add-w-bar
			(descent-music
				#{ { es8 aes, des'2 } #} 7 50)
			(descent-music
				#{ { c8 g, d'2 } #} 6 45))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture
		(chance-zing-proc 40)
		(chorale-add-w-bar
			(descent-music
				#{ { es8 bes des2 } #} 5 40)
			(descent-music
				#{ { c8 a des2 } #} 4 35))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture
		(chance-zing-proc 65)
		(chorale-add-w-bar
			(descent-music
				#{ { es8 c, d2 } #} 3 30)
			(descent-music
				#{ { c8 a b2 } #} 2 25))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture
		(chance-zing-proc 70)
		(chorale-add-w-bar
			(descent-music
				#{ { es8 des d2 } #} 1 20)
			(descent-music
				#{ { c8 b des2 } #} 1 15))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	% #(chorale->texture
	% 	identity-proc
	% 	#{ << { cis1~ cis1 \bar "|."} >> #}
	% 	(list "bn" "tbn" "vn" ))
}

exposition = {
	\phraseZero
	<< \context Staff = "fl" { \bar "||" \break }
	   \phraseOne >>
	<< \context Staff = "fl" { \bar "||" \break }
	   \phraseTwo >>
}