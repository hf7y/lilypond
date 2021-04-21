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


#(define range
	;place to define ranges for insts
	(lambda (id)
		(cond ((equal? id "fl")
			   (cons (ly:make-pitch 0 0) (ly:make-pitch 4 0)))
			  ((equal? id "cl")
			   (cons (ly:make-pitch -1 1) (ly:make-pitch 3 6 -1/2)))
			  ((equal? id "bn")
			   (cons (ly:make-pitch -3 6 -1/2) (ly:make-pitch 1 1)))
			  ((equal? id "tbn")
			   (cons (ly:make-pitch -2 2) (ly:make-pitch 1 2)))
			  ((equal? id "vn")
			   (cons (ly:make-pitch -1 4) (ly:make-pitch 4 5)))
			  ((equal? id "va")
			   (cons (ly:make-pitch -1 0) (ly:make-pitch 3 2)))
			  ((equal? id "vc")
			   (cons (ly:make-pitch -2 0) (ly:make-pitch 2 3)))
			  ((equal? id "db")
			   (cons (ly:make-pitch -3 2) (ly:make-pitch 0 4)))
			  (#t
			   (cons (ly:make-pitch -9 0) (ly:make-pitch 9 0))))))

recapZero = {
	$(define pitch-countdown (countdown 1))
	$(define pitch-countdown2 (countdown 5))
	$(define decoherence (countdown 1))
	$(chorale->texture 
		(chance-rest-proc 70 10)
		(pre-intro-chorale
			#{ << { aes2. r8 | aes2 r8 | aes4 r8 | f2 r1 | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		)

	$(chorale->texture 
		(chance-rest-proc 70 10)
		(pre-intro-chorale
			#{ << { aes2. r8 | e2 r4 | bes4 r8 | bes2 r8 | bes1 r1 | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(define decoherence (countup 15))
	$(define pitch-countdown (countup 15))
	$(chorale->texture 
		(chance-rest-proc 40)
		(pre-intro-chorale
			#{ << { aes4 r4 | f8 r8 | es8 r4 | g8 r8 | b'1 r2. | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(define pitch-countdown (countdown 5))
	$(chorale->texture 
		(chance-rest-proc 30)
		(pre-intro-chorale
				#{ << { 
					aes8 r2 | f8 r4. | es'8 r8 | 
					c8 r4 | b8 r4 | g4 r8 | 
					aes8. r4 | es8 r4 |
					} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(define decoherence (countup 1))
	$(chorale->texture 
		(chance-zing-proc 30)
		(chorale-add-w-bar
			(descent-music
				#{ { e8 e1 e,1 } #} 8 85)
			(chorale-add-w-bar
				(descent-music
					#{ { e,8 dis'1 e,,2 } #} 8 75)
				(descent-music
					#{ { e,,8 b,,1 dis,,,2... } #} 8 65)))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(define decoherence (countdown 1))
	$(chorale->texture 
		(chance-zing-proc 30)
		(chorale-add-w-bar
			(descent-music
				#{ { e,,8 b,,1 dis,,,2... } #} 6 65)
			(chorale-add-w-bar
				(descent-music
					#{ { e,8 dis'1 e,,2 } #} 4 75)
				(descent-music
					#{ { e8 e1 e,1 } #} 3 85)))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
}


recapOne = {
	$(define pitch-countdown (countdown 1))
	$(define pitch-countdown2 (countdown 5))
	$(define decoherence (countdown 100))
	$(chorale->texture 
		(chance-rest-proc 40)
		(pre-intro-chorale
			#{ << { d4 r2. | e4. r2 | d4 r2. | es'2 r2. } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 40)
		(pre-intro-chorale
			#{ << { d4 r8 | e4. r4. | d4 r2. | es'2 r1 } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 40 20)
		(pre-intro-chorale
			#{ << { d4 r2. | e4. r2 | d4 r2. | es'2 r2. } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 40 30)
		(pre-intro-chorale
			#{ << { d4 r8 | e4. r4. | d4 r2. | es'2 r1 } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	#(chorale->texture
		identity-proc
		#{ << { r1 | } >> #}
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(define pitch-countdown (countup 15))
	$(define pitch-countdown2 (countdown 15))
	$(chorale->texture 
		(chance-air-proc 30)
		(pre-intro-chorale
			#{ << { b1 r1 r1 | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-air-proc 40)
		(pre-intro-chorale
			#{ << { b1 r1. | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-air-proc 50)
		(pre-intro-chorale
			#{ << { b1 r1 r1 | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-air-proc 40)
		(pre-intro-chorale
			#{ << { b1 r1. | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-air-proc 30)
		(pre-intro-chorale
			#{ << { b1 r1 r1 | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-air-proc 20)
		(pre-intro-chorale
			#{ << { b1 r1. | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-air-proc 10)
		(pre-intro-chorale
			#{ << { b1 r1 r1 | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-air-proc 5)
		(pre-intro-chorale
			#{ << { b1 r1. | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	% << 
	% 	$(chorale->texture 
	% 		(chance-rest-proc 0)
	% 		(pre-intro-chorale
	% 			#{ << {  e'1 r1 | } >> #})
	% 		(list "cl" "bn" "vn" "va"))

	% 	$(chorale->texture 
	% 		(chance-rest-proc 0)
	% 		(descent-music
	% 			#{ { es8 ges bes,2. es8 ges bes,2. } #} 8 15)
	% 		(list "fl" "tbn" "vc" "db"))
	% >>

	% $(define decoherence (countdown 10))
	% $(chorale->texture 
	% 	(chance-rest-proc 30)
	% 	(chorale-add-w-bar
	% 		(descent-music
	% 			#{ { es8 ges bes,2 } #} 8 -15)
	% 		(chorale-add-w-bar
	% 			(descent-music
	% 				#{ { es,8 f, a,,2 } #} 8 0)
	% 			(descent-music
	% 				#{ { d,,8 f,, b,,,2 } #} 8 0)))
	% 	(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(define pitch-countdown (countdown 150))
	$(define decoherence (countup 50))
	$(chorale->texture 
		(chance-rest-proc 0)
		(pre-intro-chorale
			#{ << { 
				aes4 r4. | f4 r2. | es'8 r1 | 
				c4 r2 | g4 r4 |
				} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 30)
		(pre-intro-chorale
			#{ << { 
				e2. r1 | 
				} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 60)
		(pre-intro-chorale
			#{ << { 
				aes2 r4. | f4 r4 | es'2 r4 | 
				c2 r2 | g4 r4 |
				} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 70)
		(pre-intro-chorale
			#{ << { 
				e2. r1 | 
				} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 50)
		(pre-intro-chorale
			#{ << { 
				aes2 r4. | f4. r4 | es'2 r4 | 
				c2 r4 | g2 r4 |
				} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 30)
		(pre-intro-chorale
			#{ << { 
				e2. r1 | 
				} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 0)
		(pre-intro-chorale
			#{ << { 
				aes4. r8 | f4. r4 | es'4. r1 | 
				c2 r4 | g2 r8 |
				} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-zing-proc 30)
		(pre-intro-chorale
			#{ << { 
				e2. r1 | 
				} >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))


	#(define pitch-countdown (countup 70))
	$(chorale->texture 
		(chance-air-proc 40)
		(pre-intro-chorale
			#{ << { b1 r1. | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-air-proc 40)
		(pre-intro-chorale
			#{ << { b1 r1 r1 | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-air-proc 40)
		(pre-intro-chorale
			#{ << { b1 r1. | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-air-proc 40)
		(pre-intro-chorale
			#{ << { b1 r1 r1 | } >> #})
		(list "fl" "cl"  "vn" "db"))

	$(chorale->texture 
		(chance-air-proc 50)
		(pre-intro-chorale
			#{ << { b1 r1. | } >> #})
		(list "fl" "cl""vn" ))

	$(chorale->texture 
		(chance-air-proc 50)
		(pre-intro-chorale
			#{ << { b1 r1 r1 | } >> #})
		(list "fl" "cl" ))
}


recapTwo = {
	$(define pitch-countdown (countdown 150))
	$(define pitch-countdown2 (countdown 5))
	$(define decoherence (countdown 50))

	$(chorale->texture 
		(chance-zing-proc 20)
		(pre-intro-chorale
			#{ << { f2. r4 | es1 r4 | e4. r4. | d4. r4. |  } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 20)
		(pre-intro-chorale
			#{ << { f2. r4 | es1 r4 | e1 r2. | d4. r4. |  } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))


	$(chorale->texture 
		(chance-rest-proc 20)
		(pre-intro-chorale
			#{ << { f2. r4 | es1 r4 | e4 r4 |  } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	<<
		$(chorale->texture 
			(chance-rest-proc 0)
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
			(chance-zing-proc 20)
			(descent-music
					#{ { d8 c, b,1. } #} 8 75)
			(list "fl" "cl" "bn" "tbn" "vn" "db"))
		$(chorale->texture 
			(chance-rest-proc 0)
			(descent-music
						#{ { d8 c, b,1. } #} 8 45)
			(list "va" "vc"))
	>>

	$(define decoherence (countdown 50))
	$(define pitch-countdown2 (countdown 15))
	$(chorale->texture 
		(chance-rest-proc 10)
		(pre-intro-chorale
			#{ << { aes2 r8 | f2. r8 | } >> #})
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	%leave off for now

	<<
		$(chorale->texture 
			(chance-rest-proc 0)
			(pre-intro-chorale
				#{ << { e2. r4 | es'1 r1|  } >> #})
			(list "vn" "va" "vc" "db"))
		$(chorale->texture 
			(chance-rest-proc 0)
			(chorale-add-w-bar
				(descent-music
					#{ { d8 g, b,2. } #} 5 0)
				(descent-music
					#{ { c8 g, b,1.. } #} 2 0))
			(list "fl" "cl" "bn" "tbn" ))
	>>

	$(define pitch-countdown2 (countdown 45))
	{
		$(chorale->texture
			(chance-zing-proc 10)
			(pre-intro-chorale
				#{ << { 
					aes4 r4 | f4 r4. | es'8. r8 | 
					} >> #})
			(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

		$(chorale->texture 
			(chance-zing-proc 10)
			(pre-intro-chorale
				#{ << { 
					c4 r4 | g4 r2 | e2. r4 | 
					} >> #})
			(list "fl" "cl" "bn" "tbn" "db" "vn" "vc"))

		$(chorale->texture 
			(chance-zing-proc 20)
			(pre-intro-chorale
				#{ << { 
					aes4 r4 | f4 f,,8 | e8 e,,8 | 
					} >> #})
			(list "fl" "cl" "bn" "tbn" "db" "vn" "va" "vc" ))
	}

	$(chorale->texture
		(chance-rest-proc 30)
		(chorale-add-w-bar
			(descent-music
				#{ { es8 aes, des'2 } #} 8 50)
			(descent-music
				#{ { c8 g, d'2 } #} 5 45))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture
		(chance-rest-proc 20)
		(chorale-add-w-bar
			(descent-music
				#{ { es8 bes des2 } #} 3 40)
			(descent-music
				#{ { c8 a des2 } #} 1 35))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture
		(chance-rest-proc 10)
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
		(chance-zing-proc 80)
		(chorale-add-w-bar
			(descent-music
				#{ { es8 des d2 } #} 1 20)
			(descent-music
				#{ { c8 b des2 } #} 1 15))
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	#(chorale->texture
		identity-proc
		#{ << { cis1~ cis1 \bar "|."} >> #}
		(list "va" "vc" "db"))
}

recapitulation = {
	\recapZero
	\recapOne
	% \recapTwo
}