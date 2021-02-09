\version "2.20.0"

\include "./gestures.ily"
\include "./instrument-names.ily"

arrangement = 
	\removeWithTag #'verbose
	\removeWithTag #'part 
{
	<< 	\context Staff = "cl" \relative c'' { \partial 8 \n \shiftDurations #3 0 \clA\fp\>~ | \clA | r1\! | }
		\context Staff = "bn" \relative c {
			\clef "bass"
			<< { %m1
				 \partial 8 f,8
				 f'1\flageolet~ | f1~ 	| f\glissando |
				 c'\flageolet~ | c1:32\glissando |
				 f,\flageolet~ | f^\markup \italic "bis." } \\

			   { %m1
			   	 \partial 8 s8
			   	 f,1\harmonic\p~ | s1 	| s1\< |
			   	 \scaleDurations 1/2 { f1\harmonic \stemUp \headless c''1:16 }| s1\> |
				 f,,\harmonic\p~ | \repeat tremolo 16 { f32\harmonic bes,\harmonic }} >>
			   \bnB %key clicks
		}
		
		{ \partial 8 \clap #(sans '(cl bn)) c8 | \rests #(sans '(cl bn)) { s1 | s1 | s1 }
			 << { \rests #'(fl up db) r4 \buzz #'(fl up down db) e2 a4 } 
			    { \rests #'(cl tbn vc) r2 \buzz  #'(cl tbn vc) e4 f4 } >>
		  \buzz #'(fl cl tbn up down vc db) f2 e2 | 
		  \rests #(sans '(cl bn)) { s1 | s1 }
		  \crackle #(sans '(bn)) f8 a1
		}
	>>
	% \makeTimeSig \buzz f1 e4
	% \makeTimeSig \clap f4
	% \makeTimeSig \clap f4
	% c1:8
}


%ca. Max meeting 2
% arrangementOld =
% 		% \removeWithTag #'verbose 
% 		\removeWithTag #'part { 
% 	<<	\context Staff = "bn" \relative c' { 
% 			\clef "tenor" r8 \n f2..\<~ f1 \pp~ f2.~ f1~ f4 } 
% 		{ \time 4/4 { \clap #(sans 'bn) f4 
% 		  				 \rests #(sans 'bn) r2. }
% 		  \makeTimeSig { \rests #'(fl vc va) r2 \hiss #'(fl vc va) f1 a4 }
% 		  \makeTimeSig { \hiss #'(fl cl tbn vn db) a1 f4 }
% 		}
% 	>>
% 	<<	\time 4/4
% 		\context Staff = "bn" \relative c' { 
% 			\clef "tenor" f1~ f1..\pp }
% 		\context Staff = "down" \relative c { e4-> r2. r1 r4 \ottava #-1 f,,2 \ottava #0 }
% 		\context Staff = "vc" \relative c { \clef "bass" e1 c1..}
% 		\context Staff = "cl" \relative c' { r4 \n a2.\< a1..\pp}
% 		{ << \hiss #'(tbn) f2 f2
% 			\rests #'(fl vn va db) r1 >>
% 			\makeTimeSig \hiss #'(fl tbn vn va db) c1 f2.  }
% 	>>
% 	<<
% 		\time 7/4
% 		\context Staff = "cl" { bes1\> r2\! }
% 		\context Staff = "tbn" { bes,,1.. }
% 		\crackle #'(bn) bes4 f,1..
% 		\crackle #'(vc) f4 bes,1..
% 		\hiss #'(fl vn va db) bes1. g4
% 	>>
% 	<< 
% 		\crackle #'(fl) bes4 bes,2..
% 		\makeTimeSig << \crackle #'(bn vc up) bes4 d2..
% 						\crackle #'(vn) f''8 d'2.. >>
% 	   \hiss #'(va db) bes4. f2 >>
% 	\makeTimeSig << 
% 		{ \clap #winds c'2 \rests #winds r2 }
% 		\crackle #'(va up) bes8 d1.
% 		{ \crackle #'(vc) bes4 f2. \rests #'(vc) r2. }
% 		{ \crackle #'(vn) bes'4 f'2. \rests #'(vn vc) r2. } >>
% 	\makeTimeSig << \crackle #'(fl va) d8 bes1.
% 					{ \rests #'(cls bn tbn) r2 \hiss #'(cl bn tbn) c2 bes2 }
% 					{ \crackle #piano f4 a1 \rests #piano r2 } >>
% 	<<  \makeTimeSig \crackle #'(fl va db) f4 bes1.
% 		\hiss #'(cl bn tbn vc) c2. bes2 >>
% 	\makeTimeSig <<  \crackle #'(fl db) c4 a1.
% 		\hiss #'(cl bn tbn vn va vc) c2. f2. 
% 		\context Staff = "up" \relative c'' { c8 f g, a bes d f, g a c e g}>>
% 	<<  \makeTimeSig \crackle #'(fl db) c4 e1
% 		\hiss #'(cl bn tbn vn va vc) c2. e4 >>
% 	<<  \makeTimeSig \crackle #'(fl db up vc) e4 c1.
% 		\hiss #'(cl bn tbn vn va) e2. c2. >>
% 	<<  \makeTimeSig \crackle #'(fl bn tbn up vc db) e8 c1.
% 		\hiss #'(cl vn va) c1 f2 >>
% 	\makeTimeSig \crackle e16 c2.				
% }