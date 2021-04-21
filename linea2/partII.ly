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

% #(define range
% 	;place to define ranges for insts
% 	(lambda (id)
% 		(cond ((equal? id "fl")
% 			   (cons (ly:make-pitch 1 0) (ly:make-pitch 3 0)))
% 			  ((equal? id "cl")
% 			   (cons (ly:make-pitch 0 1) (ly:make-pitch 2 6 -1/2)))
% 			  ((equal? id "bn")
% 			   (cons (ly:make-pitch -1 6 -1/2) (ly:make-pitch 1 1)))
% 			  ((equal? id "tbn")
% 			   (cons (ly:make-pitch -2 2) (ly:make-pitch 0 2)))
% 			  ((equal? id "vn")
% 			   (cons (ly:make-pitch 1 4) (ly:make-pitch 4 5)))
% 			  ((equal? id "va")
% 			   (cons (ly:make-pitch 0 0) (ly:make-pitch 2 2)))
% 			  ((equal? id "vc")
% 			   (cons (ly:make-pitch -2 0) (ly:make-pitch 0 3)))
% 			  ((equal? id "db")
% 			   (cons (ly:make-pitch -4 2) (ly:make-pitch -2 4)))
% 			  (#t
% 			   (cons (ly:make-pitch -3 0) (ly:make-pitch 9 0))))))

partIIOne = {

	#(define pitch-countdown3 (countdown 1))
	$(chorale->texture* 
		(chance-rest-proc 0)
		(repeat-music
					#{ { g,8 r2.. r2 } #} 1 40)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\fp#})
		)

	$(chorale->texture*
		(chance-rest-proc 0)
		(repeat-music
					#{ { g,4 g,2 } #} 1 -40)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\<#})
		(list #{\f#}))
	<<
		$(chorale->texture*
			(chance-rest-proc 0)
			(repeat-music
						#{ { g,8 g,8 g,1 g,2. } #} 1 60)
			(list "fl" "cl" "db")
			(list #{\p#}))
		$(chorale->texture*
			(chance-rest-proc 0)
			(repeat-music
						#{ { g,8 g,8 g,1 g,2. } #} 1 10)
			(list "vn")
			(list #{\p#}))
	>>

	$(chorale->texture*
		(chance-rest-proc 0)
		(repeat-music
			#{ { g,8. g,2. } #} 1 10)
		(list "bn" "tbn" "vn" )
		(list #{\<#})
		(list #{\!#}))

	%tutti texture explosion decoherent
	#(define pitch-countdown3 (countdown 5))
	$(chorale->texture* 
		(chance-rest-proc 0)
		(repeat-music
					#{ { g,8. g,2. } #} 8)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\>#})
		(list #{\!#}))


	$(chorale->texture*
			(chance-rest-proc 0)
			(repeat-music
						#{ { bes,8 g,2. } #} 8 30)
			(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\<#})
		(list #{\f#}))

	$(chorale->texture* 
		(chance-rest-proc 0)
		(repeat-music
					#{ { bes,8 g,2.. } #} 4 55)
		(list "fl" "vn" "va" "vc")
		(list #{\p#}))

	$(chorale->texture* 
		(chance-rest-proc 0)
		(repeat-music
			#{ { bes,8 g,2.. } #} 2 55)
		(list "cl" "bn" "tbn" "db")
		(list #{\p#}))

	$(chorale->texture 
		(chance-rest-proc 40)
		(repeat-music
					#{ { bes,8 g,2 } #} 1 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 0)
		(repeat-music
			#{ { bes,8 g,2 } #} 1 55)
		(list "fl" "vn" "va" "vc" "db"))

	<<
		$(chorale->texture 
			(chance-bloom-proc #{ des a f #} 1)
			(repeat-music
						#{ { bes,4 g,2 } #} 1 55)
			(list "fl" "vn" "va" "vc" "db"))

		$(chorale->texture* 
			(chance-bloom-proc #{ des a f #} 100)
			(repeat-music
						#{ { bes,4 g,2 } #} 1 55)
			(list "cl" "bn" "tbn")
			(list #{\mp#}))
	>>

	<<
		$(chorale->texture 
			(chance-bloom-proc #{ des a f #}  0)
			(repeat-music
						#{ { des,8 g,2. } #} 1 60)
			(list "va" "vc" "db"))

		$(chorale->texture* 
			(chance-bloom-proc #{ des a f #}  100)
			(repeat-music
				#{ { des,8 g,2. } #} 1 60)
			(list "cl" "bn" "tbn" ))

		$(chorale->texture* 
			(chance-bloom-proc #{ des a f #}  100)
			(repeat-music
						#{ { des,8 g,2. } #} 1 60)
			(list "fl" "vn" )
			(list #{\mp#}))
	>>

	<<
		$(chorale->texture* 
			(chance-rest-proc 0)
			(repeat-music
						#{ { des,8 g,1 } #} 8 55)
			(list "fl" "cl" "bn" "tbn" "vn")
			(list #{\p#}))

		$(chorale->texture* 
			(chance-rest-proc 0)
			(repeat-music
						#{ { des,8 g,1 } #} 8 55)
			(list "va" "vc" "db")
			#f)		 
	>>

	$(chorale->texture 
		(chance-rest-proc 0)
		(repeat-music
					#{ { des,8 g,1 } #} 5 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 0)
		(repeat-music
					#{ { des,8 g,1 } #} 3 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture* 
		(chance-rest-proc 0)
		(repeat-music
					#{ { des,8 g,1 } #} 1 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\<#})
		(list #{\!#}))

	<<
		$(chorale->texture* 
			(chance-bloom-proc #{ fis a c e #} 100)
			(chorale-add-w-bar
				(repeat-music
						#{ { e,8 g,2. } #} 1 50)
				(repeat-music
						#{ { e,8 fis,2. } #} 1 40))
			(list "fl" "bn" "tbn" "vn" "va" "vc")
			(list #{\f#} #{\>#})
			(list #{\!#}))

		$(chorale->texture* 
			(chance-bloom-proc #{ fis a c e #} 0)
			(chorale-add-w-bar
				(repeat-music
						#{ { e,8 g,2. } #} 1 20)
				(repeat-music
						#{ { e,8 fis,2. } #} 1 30))
			(list "cl" "db")
			(list #{\p#})
			)
	>>

	<<
		$(chorale->texture 
			(chance-rest-proc 0)
			(repeat-music
						#{ { e,8 g,1. } #} 8 30)
			(list "cl"))
		$(chorale->texture* 
			(chance-rest-proc 0)
			(repeat-music
						#{ { e,8 g,1. } #} 8 30)
			(list "bn")
			(list #{\p#}))
	>>

	<<
		$(chorale->texture 
			(chance-rest-proc 0)
			(repeat-music
						#{ { e,8 g,1. } #} 8 40)
			(list "cl"))
		$(chorale->texture* 
			(chance-rest-proc 0)
			(repeat-music
						#{ { e,8 g,1. } #} 1 50)
			(list "vn" "va")
			(list #{\p#}))
	>>

	#(define pitch-countdown3 (countdown 50))
	<<
		$(chorale->texture* 
			(chance-zing-proc 70)
			(repeat-music
						#{ { e,8 g,1. } #} 1 50)
			(list "fl" "cl" "db" "vn" "va" )
			(list #{\<#})
			(list #{\!#}))

		$(chorale->texture* 
			(chance-rest-proc 0)
			(repeat-music
						#{ { e,8 g,1. } #} 2 50)
			(list "bn" "tbn" "vc")
			(list #{\p#}
				#{\<#})
			(list #{\!#}))
	>>
}

partIITwo = {
	$(chorale->texture* 
		(chance-rest-proc 0)
		(repeat-music
					#{ { e,8 g,4 } #} 1 30)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		)

	$(chorale->texture* 
		(chance-rest-proc 0)
		(repeat-music
			#{ { e,8 g,4. } #} 1 40)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{->#})
		)

	$(chorale->texture* 
		(chance-rest-proc 10)
		(repeat-music
					#{ { e,8 g,4 } #} 1 30)
		(list "fl" "cl" "bn" "tbn" "vn")
				(list #{->#})
		)

	$(chorale->texture* 
		(chance-rest-proc 0)
		(repeat-music
				#{ { e,8 g,4. } #} 2 25)
		(list "tbn" "vn" "va" "vc" "db")
				(list #{->#})
		)

	#(define pitch-countdown3 (countdown 300))
	$(chorale->texture* 
		(chance-bloom-proc #{g b dis fis#} 50)
		(repeat-music
				#{ { e,8 g,1 g1 } #} 8 35)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\f#}#{\>#})
		(list #{\!#}))

	$(chorale->texture* 
		(chance-rest-proc 0)
		(repeat-music
				#{ { e,8 g,2. } #} 4 45)
		(list "fl" "bn" "va" "db")
		(list #{\fp#}))

	<<
		$(chorale->texture* 
			(chance-rest-proc 60)
			(repeat-music
					#{ { e,8 g,2. } #} 3 55)
			(list "fl" "bn" "va" "db")
			(list #{->#})
			(list #{\!#}))
		$(chorale->texture* 
			(chance-rest-proc 0)
			(repeat-music
					#{ { e,8 g,2. } #} 3 55)
			(list "cl" "tbn")
			(list #{\fp#}))
	>>

	<<
		$(chorale->texture* 
			(chance-rest-proc 80 10)
			(repeat-music
					#{ { e,8 g,2. } #} 1 55)
			(list "fl" "cl" "bn" "tbn" "va" "db")
			(list #{->#})
			(list #{\!#}))

		$(chorale->texture* 
			(chance-rest-proc 0)
			(repeat-music
					#{ { e,8 g,2. } #} 1 25)
			(list "vn" "vc")
			(list #{\fp#}))
	>>

	$(chorale->texture* 
		(chance-rest-proc 50 20)
		(repeat-music
				#{ { e,8 g,1 } #} 1 35)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\<#})
		(list #{\!#}))

	$(chorale->texture* 
		(chance-bloom-proc #{g bes d fis#} 50)
		(repeat-music
				#{ { e,8 g,1 } #} 1 35)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\fp#}))

	$(chorale->texture* 
		(chance-bloom-proc #{g bes d fis#} 50)
		(repeat-music
				#{ { e,8 g,2 } #} 1 35)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\fp#}))

	$(chorale->texture 
		(chance-bloom-proc #{g b dis fis#} 70)
		(repeat-music
				#{ { e,8 r8 r2 } #} 1 25)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-bloom-proc #{g b dis fis#} 90)
		(repeat-music
				#{ { e,8 r8 r2 } #} 1 25)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))


	#(define pitch-countdown3 (countup 2))
	$(chorale->texture 
		(chance-bloom-proc #{g b dis fis#} 90)
		(repeat-music
				#{ { e,8 r8 r2 } #} 1 25)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 60 20)
		(repeat-music
				#{ { e,8 r8 r1 } #} 1 15)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 70 20)
		(repeat-music
				#{ { e,8 r8 r1 } #} 3 25)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 70 25)
		(repeat-music
				#{ { e,8 r8 r1 } #} 3 40)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	#(define pitch-countdown3 (countdown 15))
	$(chorale->texture 
		(chance-rest-proc 70 50)
		(repeat-music
				#{ { g,8 r8 r1 } #} 3 45)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
}

partIIThree = {

	$(chorale->texture* 
		(chance-rest-proc 0)
		(repeat-music
					#{ { g,8 g,4 } #} 1 20)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{->#})
		)

	$(chorale->texture* 
		(chance-rest-proc 0)
		(repeat-music
			#{ { g,8 g,4. } #} 1 40)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{->#})
		)

	$(chorale->texture* 
		(chance-rest-proc 10)
		(repeat-music
					#{ { g,8 g,4 } #} 1 30)
		(list "fl" "cl" "bn" "tbn" "vn")
				(list #{->#})
		)

	$(chorale->texture* 
		(chance-rest-proc 0)
		(repeat-music
				#{ { g,8 g,4. } #} 2 25)
		(list "tbn" "vn" "va" "vc" "db")
				(list #{->#})
		)

	#(define pitch-countdown3 (countdown 300))
	$(chorale->texture* 
		(chance-bloom-proc #{g b dis fis#} 50)
		(repeat-music
				#{ { g,8. g,1. } #} 8 35)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\f#}#{\>#})
		(list #{\!#}))

	$(chorale->texture* 
		(chance-rest-proc 0)
		(repeat-music
				#{ { fis,8 g,2. } #} 4 45)
		(list "fl" "bn" "va" "db")
		(list #{\fp#}))

	<<
		$(chorale->texture* 
			(chance-rest-proc 60 20)
			(repeat-music
					#{ { fis,8 g,2. } #} 3 55)
			(list "fl" "bn" "va" "db")
			(list #{->#})
			(list #{\!#}))
		$(chorale->texture* 
			(chance-rest-proc 0)
			(repeat-music
					#{ { fis,8 g,2. } #} 3 55)
			(list "cl" "tbn")
			(list #{\fp#}))
	>>

	<<
		$(chorale->texture* 
			(chance-rest-proc 80 30)
			(repeat-music
					#{ { fis,8 g,2 } #} 1 55)
			(list "fl" "cl" "bn" "tbn" "va" "db")
			(list #{->#})
			(list #{\!#}))

		$(chorale->texture* 
			(chance-rest-proc 0)
			(repeat-music
					#{ { fis,8 g,2 } #} 1 25)
			(list "vn" "vc")
			(list #{\fp#}))
	>>

	$(chorale->texture* 
		(chance-rest-proc 50 50)
		(repeat-music
				#{ { fis,8 g,1 } #} 1 35)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\<#})
		(list #{\!#}))

	$(chorale->texture* 
		(chance-bloom-proc #{g bes d fis#} 50)
		(repeat-music
				#{ { d,4 g,1. } #} 1 35)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\fp#}))

	$(chorale->texture* 
		(chance-bloom-proc #{g bes d fis#} 50)
		(repeat-music
				#{ { bes,8. g,2. } #} 2 45)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")
		(list #{\fp#}))

	$(chorale->texture 
		(chance-bloom-proc #{g b dis e#} 30)
		(repeat-music
				#{ { f,8 r8 r2 } #} 1 45)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-bloom-proc #{ges b e#} 50)
		(repeat-music
				#{ { f,8 r8 r2. } #} 1 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-bloom-proc #{ges b f#} 50)
		(repeat-music
				#{ { f,8 r8 r2. } #} 1 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 50 50)
		(repeat-music
				#{ { f,8 r8 r2 } #} 1 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-bloom-proc #{ges b f#} 50)
		(repeat-music
				#{ { e,8 r8 r2. } #} 1 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 50 50)
		(repeat-music
				#{ { ges,8 r8 r2 } #} 2 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-bloom-proc #{ges b f#} 70)
		(repeat-music
				#{ { e,8 r8 r2. } #} 3 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 70 50)
		(repeat-music
				#{ { ges,8 r8 r4 } #} 4 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-bloom-proc #{ges b f#} 50)
		(repeat-music
				#{ { e,8 r8 r2. } #} 5 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 50 50)
		(repeat-music
				#{ { ges,8 r8 r2 } #} 6 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-bloom-proc #{ges b f#} 70)
		(repeat-music
				#{ { e,8 r8 r2. } #} 7 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 70 50)
		(repeat-music
				#{ { ges,8 r8 r1 } #} 8 55)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 90 50)
		(repeat-music
				#{ { ges,8 r8 r1 } #} 8 65)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 90 50)
		(repeat-music
				#{ { g,8 r8 r1. } #} 8 75)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 80 50)
		(repeat-music
				#{ { g,8 r8 r1 } #} 8 75)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 80 50)
		(repeat-music
				#{ { g,8 r8 r1 } #} 8 75)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 80 50)
		(repeat-music
				#{ { g,8 r8 r2 } #} 8 75)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 90 50)
		(repeat-music
				#{ { g,8 r8 r1. } #} 8 75)
		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

	$(chorale->texture 
		(chance-rest-proc 80 50)
		(repeat-music
				#{ { g,8 r8 r1 } #} 8 75)
		(list "fl" "cl" "bn" "vn" "va" "vc" ))

	$(chorale->texture 
		(chance-rest-proc 80 50)
		(repeat-music
				#{ { g,8 r8 r1 } #} 8 75)
		(list "fl" "cl" "vn" "va"))

	$(chorale->texture 
		(chance-rest-proc 80 50)
		(repeat-music
				#{ { g,8 r8 r1 } #} 8 75)
		(list "fl" "cl" ))

% 	<<
% 		$(chorale->texture 
% 			(chance-bloom-proc #{g b dis fis#} 00)
% 			(repeat-music
% 					#{ { e,8 r8 r2 } #} 1 5)
% 			(list "bn" "tbn"))

% 		$(chorale->texture 
% 			(chance-bloom-proc #{g b dis fis#} 90)
% 			(repeat-music
% 					#{ { e,8 r8 r2 } #} 2 35)
% 			(list "fl" "cl" "vn" "va" "vc" "db"))
% 	>>

% 	$(chorale->texture 
% 		(chance-rest-proc 70)
% 		(repeat-music
% 					#{ { fis,8 g,1 } #} 3 30)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-rest-proc 70)
% 		(repeat-music
% 					#{ { fis,8 g,1. } #} 1 30)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-bloom-proc #{ fis c es #} 60)
% 		(repeat-music
% 					#{ { a,8 g,1. } #} 1 30)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-rest-proc 60)
% 		(repeat-music
% 					#{ { a,8 g,1. } #} 1 40)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-rest-proc 70)
% 		(repeat-music
% 					#{ { a,8 g,1. } #} 1 50)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-rest-proc 70)
% 		(repeat-music
% 					#{ { a,8 g,1. } #} 2 60)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-rest-proc 70)
% 		(repeat-music
% 					#{ { a,8 g,1. } #} 1 70)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-rest-proc 70)
% 		(repeat-music
% 					#{ { a,8 g,1. } #} 2 80)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-rest-proc 70)
% 		(repeat-music
% 					#{ { a,8 g,1. } #} 1 90)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-bloom-proc #{ a, c gis #} 60)
% 		(repeat-music
% 					#{ { f,8 g,1. } #} 1 60)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-rest-proc 30)
% 		(repeat-music
% 					#{ { f,8 g,1. } #} 1 60)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-bloom-proc #{ a, c gis #} 60)
% 		(repeat-music
% 					#{ { f,8 g,1. } #} 1 60)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-rest-proc 30)
% 		(repeat-music
% 					#{ { f,8 g,1. } #} 1 60)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-bloom-proc #{ aes, c b #} 60)
% 		(repeat-music
% 					#{ { f,8 g,1. } #} 1 60)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-rest-proc 30)
% 		(repeat-music
% 					#{ { f,8 g,4 } #} 1 60)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-bloom-proc #{ bes, c des #} 60)
% 		(repeat-music
% 					#{ { f,8 g,2 } #} 1 60)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-rest-proc 30)
% 		(repeat-music
% 					#{ { f,8 g,4 } #} 1 60)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-bloom-proc #{ aes, ces bes #} 50)
% 		(repeat-music
% 					#{ { f,8 g,2. } #} 1 60)
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-bloom-proc #{ aes, ces bes #} 20)
% 		(chorale-add-w-bar
% 			(chorale-add-w-bar
% 				(chorale-add
% 					(make-empty-chorale 8)
% 					(repeat-music
% 								#{ { f,8 g,2. } #} 1 60))
% 				(repeat-music
% 						#{ { f,8 g,2. } #} 3 60))
% 			(chorale-add-w-bar
% 				(repeat-music
% 							#{ { f,8 g,2. } #} 5 60)
% 				(repeat-music
% 						#{ { f,8 g,2. } #} 8 60)))
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-bloom-proc #{ aes, c bes #} 25)
% 		(chorale-add-w-bar
% 			(chorale-add-w-bar
% 				(chorale-add
% 					(make-empty-chorale 8)
% 					(repeat-music
% 								#{ { f,8 g,2. } #} 8 60))
% 				(repeat-music
% 						#{ { f,8 g,2. } #} 8 70))
% 			(chorale-add-w-bar
% 				(repeat-music
% 							#{ { f,8 g,2. } #} 8 80)
% 				(repeat-music
% 						#{ { f,8 g,2. } #} 8 90)))
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-bloom-proc #{ a, c bes #} 25)
% 		(chorale-add-w-bar
% 			(chorale-add-w-bar
% 				(chorale-add
% 					(make-empty-chorale 8)
% 					(repeat-music
% 								#{ { f,4 g,2. } #} 8 60))
% 				(repeat-music
% 						#{ { f,8 g,2. } #} 8 70))
% 			(chorale-add-w-bar
% 				(repeat-music
% 							#{ { f,4 g,2. } #} 8 80)
% 				(repeat-music
% 						#{ { f,8 g,2. } #} 8 90)))
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))

% 	$(chorale->texture 
% 		(chance-bloom-proc #{ a, c b #} 25)
% 		(chorale-add-w-bar
% 			(chorale-add-w-bar
% 				(chorale-add
% 					(make-empty-chorale 8)
% 					(repeat-music
% 								#{ { f,4 g,2. } #} 8 70))
% 				(repeat-music
% 						#{ { f,4 g,2. } #} 8 80))
% 			(chorale-add-w-bar
% 				(repeat-music
% 							#{ { f,8 g,2. } #} 8 90)
% 				(repeat-music
% 						#{ { f,4 g,2. } #} 8 95)))
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))


% #(define range
% 	;place to define ranges for insts
% 	(lambda (id)
% 		(cond ((equal? id "fl")
% 			   (cons (ly:make-pitch 0 0) (ly:make-pitch 4 0)))
% 			  ((equal? id "cl")
% 			   (cons (ly:make-pitch -1 1) (ly:make-pitch 3 6 -1/2)))
% 			  ((equal? id "bn")
% 			   (cons (ly:make-pitch -3 6 -1/2) (ly:make-pitch 1 1)))
% 			  ((equal? id "tbn")
% 			   (cons (ly:make-pitch -2 2) (ly:make-pitch 1 2)))
% 			  ((equal? id "vn")
% 			   (cons (ly:make-pitch -1 4) (ly:make-pitch 4 5)))
% 			  ((equal? id "va")
% 			   (cons (ly:make-pitch -1 0) (ly:make-pitch 3 2)))
% 			  ((equal? id "vc")
% 			   (cons (ly:make-pitch -2 0) (ly:make-pitch 2 3)))
% 			  ((equal? id "db")
% 			   (cons (ly:make-pitch -3 2) (ly:make-pitch 0 4)))
% 			  (#t
% 			   (cons (ly:make-pitch -9 0) (ly:make-pitch 9 0))))))

% 	$(chorale->texture 
% 		(chance-air-proc 100)
% 		(chorale-add-w-bar
% 			(chorale-add-w-bar
% 				(chorale-add
% 					(make-empty-chorale 8)
% 					(repeat-music
% 								#{ { f,4 g,2. } #} 8 70))
% 				(repeat-music
% 						#{ { f,4 g,2. } #} 8 80))
% 			(chorale-add-w-bar
% 				(repeat-music
% 							#{ { f,8 g,2. } #} 8 90)
% 				(repeat-music
% 						#{ { f,4 g,2. } #} 8 95)))
% 		(list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db"))
}

partII = {
	% \partIIOne
	% \partIITwo
	\partIIThree
}