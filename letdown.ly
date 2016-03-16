\version "2.18.2"

global = {
	\time 4/4
	\key a \major
}

a = {
	\clef "treble"
	<<
		\relative c''
		{
			<fis d>4. <e cis>8~ <e cis> <d b>4 <e cis>8~ 	| <e cis>4. 		<d b>8~  <d b> <cis a>4.~ 		|   <cis a>1 				|
			<fis d>4. <e cis>8~ <e cis> <d b>4. 		| <e cis>4  <e cis>8->( <d b>8~) <d b> <cis a>4.~		|   <cis a>1 				|
			<fis d>4. <e cis>8~ <e cis> <d b>4. 		| <e cis>4. 		<d b>8~  <d b> <cis a>4 <b gis>8~ 	| <<{b       a   gis a gis e   b} 
															    		    {gis'    fis e   s s2}>>		| s1	|
		}
		
		\\
		
		\relative c'
		{
			d2 	   e,   				| a1~ 								|    a 					|
			d2 	   e, 					| a1~								|    a2                r8  d8.( cis	|
			d2) 	   e, 					| a1 								|    e2..                          e8~	| e1 	| 
		}
	>>
}

aa = {
	<<
		\new Voice = "ost"
		\relative c'''
		{
			\voiceThree
			s1						| s1								|    a4.        gis8~  gis e4.		|
			s1						| s1								|    a4.        gis8~  gis e4.		|
			s1						| s1								|    s4    gis8 a      gis e  b  gis,   |
		}

		\new Voice = "mids"
		\relative c''
		{
			\voiceOne			
			<fis d>4. <e cis>8~ <e cis>  <d b>4.		| <e' cis>4. 		<d b>8~  <d b> <cis a>4.~ 		|   <cis  a>1 				|
			<fis d>4. <e cis>8~ <e cis>  <d b>4.		| <e' cis>4  <e cis>8->( <d b>8~) <d b> <cis a>4.~		|   <cis  a>1 				|
			<fis d>4. <e cis>8~ <e cis>  <d b>4.    	| <e' cis>4  <e cis>8->( <d b>8~) <d b> <cis a>4 <b gis>8~	|   <b gis>1				| 
		}

		\new Voice = "ground"
		\relative c'
		{
			\voiceTwo
			d4. 	  e8	    <<{ e2 } \\ { s8 fis4 gis8 }>>| a1~ 								|    a 					|
			d4. 	  e8	    <<{ e2 } \\ { s8 fis4 gis8 }>>| a1~ 								|    a2   	       r8  d8.( cis     |
			d4.) 	  e8	    <<{ e2 } \\ { s8 fis4 gis8 }>>| a1~ 								|    e 					|
		}
	>>
}

bguitar = {
	<<
		{
			\voiceOne
			cis8  d     cis   d     a'    cis,  d     cis  	| d     e     cis   d     	cis   d     gis   cis   	|
			d     cis   d     e     cis   d     cis   d    	| a'    cis,  d     cis   	d     e     cis   d     	|
			cis   d     gis   cis   d     cis   d     e    	| cis   d     cis   d     	a'    cis,  d     cis   	|
			d     e     cis   d     cis   d     gis   cis  	| d     cis   d     e     	cis   d     cis   d     	|
		}

		\\

		{
			\voiceTwo
			a2			a			| a				a				|
			e,			e			| e				e				|
			fis'			fis			| fis				fis				|
			e,			e			| e				e				|
		}
	>>
}

bbguitar = {
	<<	
		\newVoice "ost"
		\relative c''
		{
			\voiceOne
			cis1						| a								|
			gis						| e								|
			cis'						| a								|
			gis						| e4.		    s8		s2				|
		}
		
		\newVoice "mids"
		\relative c'
		{
			\voiceThree
			d8   cis  d    d    cis    d     cis   d    	| d     cis   d     cis   	d     d     cis   d     	|
			cis  d    d    cis  d      cis   d     d 	| cis   d     cis   d		d     cis   d     cis     	|
			d    d    cis  d    cis    d     d     cis      | d     cis   d     d     	cis   d     cis   d      	|
			d    cis  d    cis  d      d     cis   d     	| cis   d     d     cis     	d     e     fis   gis     	|
		}

		\newVoice "ground"
		{
			\voiceTwo
			a4.             a8~ a 	   a4.			| a4.               a8~		a     a4.			|
			e,4.            e8~ a 	   e4.			| e4.               e8~		e     e4.			|
			fis'4.        fis8~ fis    fis4. 	  	| fis4.             fis8~	fis   fis4.			|
			e,4.             e8~ e 	   e4.			| e4.               e8~		e     e4.			|
		}
	>>
}

\score {
	\new Staff { 
	\global
	\a
	\aa
	\bguitar
	\bbguitar
	}
} 
