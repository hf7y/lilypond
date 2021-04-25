% Created on Sun Feb 26 14:01:54 PST 2012
% Accessed Wed Apr 21 02:50:00 CDT 2021
% at http://moronisuke.blogspot.com/p/lilypond-examples.html

\version "2.14.0"

\header {
	title = "A Poor Wayfaring Man of Grief" 
 	composer = "James Montgomery and George Coles" 
 	
 	%tagline = "169"
}
\paper {
 oddFooterMarkup = \markup { "Hymn 29" } 
 
}
 
mynotes = {

	s2 s8 <c ees>16 des
	c8 (<c ees>) <ees aes> <ees aes> (g) <ees aes>
	<ees bes'>4 \autoBeamOff <ees bes'>8 \autoBeamOn <ees bes'> (c') <ees, des'>
	<ees c'>4 \autoBeamOff <ees aes>8 \autoBeamOn  <ees aes> (g) <ees aes> 
	<ees bes'>4 ees8 ees4 <c ees>16 des 
	c8 (<c ees>) <ees aes> <ees aes> (g) <ees aes> 
	<ees bes'>4 \autoBeamOff <ees bes'>8 \autoBeamOn <ees bes'> (c') <ees, des'>
	<ees c'>4 \autoBeamOff <ees des'>8 \autoBeamOn <ees ees'> (des') <ees, c'>
	<des bes'> (aes') <des, bes'> <c aes'>4 <ees c'>16 des'16
	<ees, ees'>4   <ees ees'>8 \autoBeamOn <ees ees'> (des') <ees, c'>
	<ees des'>4 \autoBeamOff <ees des'>8 \autoBeamOn <ees des'> (c') <ees, bes'>
	<ees c'>4 \autoBeamOff <ees aes>8 \autoBeamOn <ees aes> (g) <ees aes>
	<ees bes'>4  ees8 ees4 <c ees>16 des
	c8 (<c ees>) <ees aes> <ees aes> (g) <ees aes>
	<ees bes'>4 \autoBeamOff <ees bes'>8 \autoBeamOn <ees bes'> (c') <ees, des'>
	<ees c'>4 \autoBeamOff <ees des'>8 \autoBeamOn <ees ees'> (des') <ees, c'>
	<des bes'> (aes') <des, bes'> <c aes'>4 s8
	

}


\score { 
	<<
			
	\new Staff {
		\time 6/8	
		\clef treble
		\key aes \major
		\relative c' { 	
		 % Type notes here 
		  \mynotes			
		}	
	}
	
	
	\addlyrics {
		%verse 1
		A ___ poor way -- far -- ing Man of grief hath 
		of -- ten crossed me on my way, Who ___ sued so hum -- bly
		for  re -- lief  that I could nev -- er an -- swer nay.
		I ___ had not pow'r to ask his name, Where -- to he went, or
		whence he came; Yet ___ there was some -- thing in his eye That
		won my love; I knew not why.
	}
	\addlyrics{
		%verse 2
		Once, ___ when my scant -- y meal was spread, He 
		en -- tered; not a word he spake, Just ___
		per -- ish -- ing for want of bread. I gave him all; 
		he blessed it, brake, And ___ ate, but gave me
		part a -- gain. Mine was an an -- gel's por -- tion then, 
		For ___ while I fed with ea -- ger haste, The crust was 
		man -- na to my taste.
		
	}
	\addlyrics {
		%verse 3
		I ___ spied him where a foun -- tain burst Clear 
		from the rock; his strength was gone. The ___ heed -- less
		wa -- ter mocked his thirst; He heard it, saw it 
		hur -- rying on. I ___ ran and raised the 
		suf --f'rer up; Thrice from the stream he drained my cup,
		Dipped ___ and re -- turned it run -- ning o'er; I drank
		and nev -- er thirst -- ed more.
		
	}
	\new TabStaff {
		\set TabStaff.stringTunings = #ukulele-tuning
		\relative c'{
			\mynotes
			
		}
	}
	

>>
%end score
}	
	

%\midi{}




