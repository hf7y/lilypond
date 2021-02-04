\version "2.20.0"

m = #0
n = #1
o = #2


\new Staff {
	\repeat unfold #m dis'1
	#(let ((x #{ \repeat unfold #m dis1 #}))
		  (if (> m 0) x))
	#(let ((x #{ \repeat unfold #n d1 #}))
		  (if (> n 0) x))
	#(let ((x #{ \repeat unfold #o des1 #}))
		  (if (> o 0) x))
}