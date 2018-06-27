\version "2.19.61"
\pointAndClickOff

\header {
	title = "Bác H."
	composer = "Z. V. Pine"
	tagline = ""
}

\paper {
	#(set! paper-alist (cons '("wide" . (cons (* 6.5 in) (* 59 in))) paper-alist))
%	#(set-paper-size "wide")
	#(set-paper-size "letter")
	top-margin = 1.0\in
	left-margin = 1.0\in
	right-margin = 1.0\in
	bottom-margin = 1.0\in

	system-system-spacing.basic-distance = #20
	system-system-spacing.minimum-distance = #15
	system-system-spacing.stretchability = #15
}

\layout {
    #(layout-set-staff-size 22.45)
	\context { 
		% add the RemoveEmptyStaffContext that erases rest-only staves
		\Staff 
		\RemoveEmptyStaves 
		\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)

	}

	\context {
		\DrumStaff
		\RemoveEmptyStaves
	}
	\context {
		\Score
%		Remove all-rest staves also in the first system
		\override VerticalAxisGroup.remove-first = ##t
		% If only one non-empty staff in a system exists, still print the starting bar
		\override SystemStartBar.collapse-height = #1
		\override MetronomeMark.padding = #6
	}
	indent = #7
	ragged-last = ##f
}

% Global Misc. Special Functions
textin = { 
	\once \override Staff.TextScript.outside-staff-priority = #240 }

ignore = \override NoteColumn.ignore-collision = ##t

parentheAll = % Put accidental within parenthesis 
	#(define-music-function (parser location note) (ly:music?)
		#{
  			\once \override ParenthesesItem.font-size = #-1
  			\once \override ParenthesesItem.stencil = #(lambda (grob)
       	
		(let* ((acc (ly:grob-object (ly:grob-parent grob Y) 'accidental-grob))
			(dot (ly:grob-object (ly:grob-parent grob Y) 'dot)))
        	(if (not (null? acc)) (ly:pointer-group-interface::add-grob grob 'elements acc))
         	(if (not (null? dot)) (ly:pointer-group-interface::add-grob grob 'elements dot))
         	(parentheses-item::print grob)))
			
			\parenthesize $note
		#})

% End Global Functions
                                          %%%
  %%%%% %%%%%% %     %      %%%%         %   %    %%
 %      %      %     %     %    %         %  %   %  %
%       %%%    %     %    %      %          % %%%%%%
%       %      %     %    %      %   %%%%%%%        %
 %      %      %     %     %    %                    % 
  %%%%% %%%%%% %%%%% %%%%%% %%%%                      %%
                                                        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Special Functions for the Cello

% For Harmonics
sflage = % small flageolet
	#(let ((m (make-articulation "flageolet")))
   		(set! (ly:music-property m 'tweaks)
   	      (acons 'font-size -3
   	             (ly:music-property m 'tweaks)))
   	m)

dots = % dots after diamond heads
	{ \set harmonicDots = ##t }


% Bow Position Markups
bridge =
	\markup { \italic "molto sul pont." }
ord = 
	\markup { \italic ord. }
ponticello = 
	\markup { \italic "sul ponticello" }
pont = 
	\markup { \italic "sul pont." }
tasto = 
	\markup { \italic "sul tasto" }

% String Name Markups
sulC = \markup { \tiny IV }
sulG = \markup { \tiny III }
sulD = \markup { \tiny "   II " }
sulA = \markup { \tiny "   I " }

% END CELLO FUNCTIONS

% ACTUAL CELLO NOTATION
                             %%%%%%%%%%%%%%%%%%%%%%%%%
                             %                       %
%%%%%%%%%%%%%%%%%%%%%%       %    Cello First Loop   %     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                             %                       %
                             %%%%%%%%%%%%%%%%%%%%%%%%%
celloOne = {
	\clef "bass"
	\dots

	<<	{ \set harmonicDots = ##t \textin d'1\harmonic^\pont
		_\markup { \halign #0 \tiny II }
		_\markup { \halign #0 \tiny III }
	a2\rest a4\rest d4_._\sulD | \once \voiceOne 
	d1^\tasto~ | 
	d2. s4\< | 

%M5 
		
	d1\fp^\bridge | 
	e'2\harmonic s2 | } 
	
			\\ { \set harmonicDots = ##t 
			g1\harmonic\glissando\<
			c8\harmonic cih8\harmonic b,2.\harmonic\p\< | 
			d1~\harmonic\spp |
			d2.\harmonic cih8\harmonic c\harmonic |
			
			a,1\harmonic\glissando 
			g2\harmonic\> d\rest\! | } >>

	R1 |
	\textin a1:32(^\tasto\pp_\sulD |

%M9

	<< { a1:32)\harmonic\> } {s2 s4^\ord}>> |
	\clef "treble"
	r2\! << { \textin \xNotesOn a'2_\sulA~ | 
	a'1\glissando \xNotesOff |
	e''1~^\sflage | } 
	
				% polyphony
				\\ { \xNotesOff e'2\harmonic\glissando\p  |
				d'1\harmonic | 
				d'1\harmonic\<  
				
	%\pageBreak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	%main melody 

	\clef "bass" \oneVoice R1\! }>>% end polyphony
	R1 | 
	R1 | 
	\textin r4 g2.\harmonic~\<_\sulG | 
	
	%\break %%
	
	g1\harmonic |
	g2.~\harmonic\spp g4-. |
	<< \textin {  g1~\harmonic\<} { b1~\harmonic }
		%markup for previous measure
		{s2_\sulD_\sulG^\markup { \italic "poco a poco al pont." } s2 } >> | 
	<< { g2\harmonic g2:32\harmonic\f^\bridge } { b2\harmonic b2\harmonic:32 } >> 
	
%M21
	
	r4\!^\ord << \textin { a4~_\sulA\spp a2} { s4 b2_\sulD_\sulA } >> |
	<< { a8 } { g8\< fis\! } >>  < fis b, >2._\sulD_\sulG~ |
	< fis\harmonic b,\harmonic >1\> |
	R1\!



	%\pageBreak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
}

celloTwo = {

	<< { r2\pp g2~ | 
	g1\< | 
	g1^\tasto~ | 
	g2 \tuplet 5/4 { fis4\< g b8 } | 
	
	%\break %%
		
	b1^\ord~\p |
	b4\! d'2.\<~ | 
	d'4\! } \\ 
		
			%polyphony
			{ s1 | 
			s1 | 
			s1 | 
			s1 |
		
			g,4\rest g,4-+ g,2\rest| 
			g,4\rest g,4-+ g,2\rest| 
			s4 } >> 
			% end polyphony

	r2 \clef "treble" 	g'4~_\sflage\pp^\pont | 
	g'1~ | 
	
	%\break %%
	
	g'4 \grace { f'8_\sflage } 
		\repeat tremolo 4 { g'16_\sflage^\markup { \halign #-4.3 \small \italic 10 }  
		f'_\sflage } g'16_\sflage f'16_\sflage g'16_\sflage f'16_\sflage | 
	g'4 \grace { d'8_\sflage } 
		\repeat tremolo 4 { g'16_\sflage^\markup { \halign #-4.3 \small \italic 10 }  
		d'_\sflage } g'8_\sflage d'8 | 
	\clef "bass" 
	<< { f'4.^\ord e'8\< d' c' bes4\glissando | \set harmonicDots = ##t d2.\harmonic\f } 
		\\ { d1_\sulG_\sulD | } >> r4 | 


	%\pageBreak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	

	\clef "bass"
	r2 e2~\pp\< | 
	e4 fis \tuplet 3/2 { g\p\< b d' } | 
	\textin < c\harmonic g\harmonic>1~_\sulD_\sulG\f |
	< c\harmonic g\harmonic >8 cih8\harmonic 
		<< { \once \stemDown \dots < e\harmonic b\harmonic>2.\< |
	
	%\break %%
	
	a4\rest\! g4_\sulD g2~\harmonic  | 
	g8\harmonic gih\harmonic gih2.\harmonic~^\pont\< | 
	gih8\harmonic g8 g2\harmonic^\ord\ff a4:16 | 
	\tuplet 3/2 { b4 a g } g8\< fis e d\! | } 

			% polyphony
				\\ { s2. |
			c1\sfz~_\sulG | 
			c4 c2.~ |
			c4 c2~ c4:16~ | 
				\hide TupletNumber \hide TupletBracket 
			\tuplet 3/2 { c4 b,\rest b,\rest } c8[ b,\rest c c] } >> 
			% end polyphony
	
	%\break %%
	
	<< { d2\sfz\glissando \tuplet 3/2 { b8\> a g } fis16 e d c | 
		\once \override TupletNumber.extra-offset = #'( 0.4 . -0.3 )
	\tuplet 5/4 { d'8.\f c'16\> b } \tuplet 5/4 { a16 g fis e d } 
		b2~ | b2\! }

			% polyphony
			\\ { 	g,2 g,4 g,4 |
			\textin g,2\laissezVibrer_\markup { \halign #-3.3 \italic l.v. } s2 | 
					g,2\laissezVibrer-\markup { \halign #-3.3 \italic l.v. } } >> 
			% outside of polyphonic structure. last half-note 			 
																			 r2 |
			% end polyphony	
	
	R1 | \bar "." 


	%\pageBreak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


} %%% end loop one
                              %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                             
							  %                             %
%%%%%%%%%%%%%%%%%%%%%%%       %       Cello SecondLoop      %      %%%%%%%%%%%%%%%%%%%%%%
							  %                             %
							  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
celloThree = {
	\dots
	\clef "bass"

	\textin g,2\(~^\tasto\<_\sulG\repeat tremolo 8 { g,32 g32_\sulG\harmonic}
	\textin < g\harmonic c\harmonic>2\)_\sulG_\sulC 
		< g\harmonic c\harmonic>\p\glissando\( |
	< e\harmonic a,\harmonic>1~|
	< e\harmonic a,\harmonic>\)^\tasto\> |

	%\break %%

	\textin < e\harmonic b\harmonic>\fp^\pont 
		_\markup { \halign #2.5 \tiny II }
		_\markup { \halign #1.7 \tiny III }|
	< e\harmonic b\harmonic>\glissando\> | 
	< cih\harmonic gih\harmonic>2\! < gih!\harmonic dih'\harmonic >~_\sulA_\sulD^\pont| 
	< gih\harmonic dih'\harmonic>2^\bridge < gih\harmonic dih'\harmonic>2:16\< |

	% more ponts tastos and tremolos ^^^^
	
	%\break %%
	
	\clef "treble"
	< a\harmonic e'\harmonic >1:16^\ord\f
	< gih\harmonic e'\harmonic >2:16^\pont < a\harmonic e'\harmonic>2:32\glissando\<
	< e'\harmonic b'\harmonic>1:32^\bridge
	< e' b'>1:32\ff\<

	
	%\pageBreak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	
	\xNotesOn
	R1\! | 
	<< { R1 } { \hide e'1 } >> | %% trumps RemoveEmptyStaves
	R1 | 
	R1 | 
	
	%\break %% 
	
	\clef "bass"
	r2. \textin g4_\sulG~\p|  
	g2\glissando \xNotesOff aih\harmonic\glissando
	e1:32\<\harmonic~
	e1:32\harmonic^\tasto\>


	%\break %%
	
	r2.\! << { \xNotesOn s4 |
	r4. d'8~ d'2~ |
	d'1 |
	a'1 | 

		% polyphony
		} \\ { \xNotesOn g4\pp~^\ord | 
		g1~ | 
		g1 |
		d'1 } 
		
		%Get around crescendo problem by terminating at last sixteenth
		{ s4 | s1 | s1 | s2...\< s16\! }>> 
	

	%\pageBreak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
}

celloFour = {

	\xNotesOn g2\p~ \xNotesOff g2\harmonic~ |
	g4^\ord fis\< \tuplet 3/2 { g4 b d' } |
	\clef "treble" g'1\harmonic^\tasto\! |
	g'2:16\harmonic^\ord g'2:32\harmonic^\pont\< | 
	
	%\break %%

	< g' d'' >2:32\harmonic\f\< < g' d''>2:32\harmonic\glissando |
	<< < e' b'>1:32\harmonic^\bridge\! { s4 s\> }>>
	< e' b'>2:32\harmonic r2\!
	r2 \xNotesOn d'2~\p |

	%\break %%

	d'2\! a'4\< d'4 |
	\clef "bass"
	g4. \xNotesOff a8\>\harmonic\glissando 
		ais,16\harmonic cih\harmonic b,\harmonic cih!\harmonic
	\tuplet 3/2 { ais,8\harmonic cih\harmonic b,\harmonic }
		cih!8\harmonic b,\harmonic\glissando d2\harmonic r4\! |
	R1 |

	% %\pageBreak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	%\break %%

	<< { s1 | 
	s1 | 
	s1 | 
	r4 \xNotesOff d'2:16_\sulG\harmonic^\pont\< c'4:16\harmonic\! | }

			% polyphony
			\\ { \xNotesOn \tieUp g2~^\tasto\pp\< \xNotesOff g2\harmonic~ | 
			g1^\ord\glissando\p\< | 
			c1:32\f |  
			c1:32 | } >> 
			% end polyphony

	%\break %%

	\once \stemUp c,8-.^\ord\! \once \stemDown b8. a \tuplet 5/4 { g8 fis e d c } | 
	\tuplet 5/4 { b4\< a g8 } \tuplet 5/4 { fis'8\! e' d' c' b } |
	a,8\< a8 c'4:32~\ff \tuplet 3/2 { c'8 b d' } \tuplet 5/4 { e'16\< d' c' b a } |
	\clef "treble" fis'2:32\! < fis' c'' >2:32^\pont\<

	%\break %%

	< g, b' e''~ >4\arpeggio\! \tuplet 3/2 { e''8 fis'' g'' } < d''' g'' >2\> |
	\clef "bass" \textin < e\harmonic b\harmonic >2_\sulD_\sulG\f\>
		< e\harmonic b\harmonic >2^\tasto\glissando\p\> 
	\xNotesOn < g d' >1 | \xNotesOff
	R1\! |

	%\pageBreak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


	\clef "treble"
	R1 |
	r2 e''2~^\tasto\<
	e''1~\pp |
	e''1\> |

	%\break %%

	d'''1\p~ | 
	d'''1\> |
	\clef "bass" \xNotesOn
	r2.\! c4~^\pont\pp\< \xNotesOff | 
	c2..\glissando\harmonic \revert NoteHead.style e,8~ | 
	
	%\break %%

	\clef "bass" e,1^\ord\f~ | 
	e,1~ | 
	e,1:32\< | 
	e,1:32^\pont\ff\<  |

	r4\! e2.\harmonic\spp |
	R1 |
	R1
	r4 e2.~\<\harmonic

	e1\harmonic\p |
	r4 fis \tuplet 5/4 { g8\harmonic\< b\harmonic d'\harmonic 
		f'\harmonic g'\harmonic }  |
	a'1\harmonic\f
	g,2. r4  |

	R1\! |
	R1 |
	R1
	<< R1 \hide c>>
} %% End Cello Second Loop %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





  %%%% %   %  %     %  %%%%    %%%   %      %%%%
 %      % %   %%   %%  %   %  %   %  %     % 
%        %    % % % %  %%%%   %%%%%  %      %%%       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %       %    %  %  %  %   % %     % %         %
  %%%%   %    %  %  %  %%%%  %     % %%%%% %%%%

%%%% Special Cymbal Functions
choke = 
	\markup { \center-align choke }

circ = 
	\markup { \halign #-1.2 ¢ }
circw =
	\markup { \halign #-1.78 ¢ }

circp =
	\markup { \halign #-0.7 (¢) } 

whole = { 
	\once \override Rest.staff-position = #-2 R1 \override Rest.staff-position = #0 
}

five = \markup { \halign #-0.2 \tiny \italic 5 }

%	Weblinks for reference
%
%	http://lilypondcookbook.com/post/74312396803/drum-music-1-getting-started
%	https://www.youtube.com/watch?v=qyzFgzcGMXg
%	https://www.youtube.com/watch?v=U6kfXxkWHFE

cymbalOne = \drummode {
	\override Rest.staff-position =  #0
	\override TextScript.outside-staff-priority = #240
	
	% Start Cymbals Notation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
	hh1^\markup{ \halign #-1.6 ¢ \raise #0.54 { (circular brushing)}}\<~ |
	hh4\pp hh4-> hh2^\circ~ |
	hh2. hh4:8 | 
	hh2.:8 hh4:16\< |

	%\break %%

	hh1^\circ\> | 
	r2.\! hh4:8 |
	\whole |
	<< hhp1^\markup {\halign #-0.4 \italic arco}\f\< { s2.. s8\ff}>>

	%\break %%

	\whole |
	\whole |
	hh4^\ord hh2.^\circ\pp~ | 
	hh2 hh2:16\< |
	
	
	%\pageBreak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	
	hh4->\p r4 r hh4 | 
	hh2.^\circ hhp4 | 
	\tuplet 3/2 { hh8\< hh hh } hh2.\spp^\circ~ | 
	hh4 hh2.:16\<
	
	%\break %%

	hh4^>\p r4 r hh4 | 
	hh4-> r4 \tuplet 3/2 { hh4\< hh hh } | 
	hh2.:8 hh8^+^\markup { \halign #1.2 (w. loop) } hh8 |
	hh2:32 hh4:16\> hh8^+ hh8 |
	
	%\break %%

	hh1~^\circw\pp | 
	hh2 r8 hh4.^+ | 
	r2 hh2^\circ~ | 
	hh2 hh8\< hh hh4:16_\five |


	
	%\pageBreak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
}
cymbalTwo = \drummode {

	hh4->\p r4 r4 hh4 |
	hh2^\circ~\< \tuplet 3/2 { hh4\! hh hh-+ } |
	hh4-> hh2.^\circ | 
	hh4 hh4 hh2:8_\five\< | 
	
	%\break %%
		
	\acciaccatura { hho8^+ } hhp2:16\f\< hhp2:16-> | 
	\tuplet 3/2 { hh8 hh-+ hh } hh4:32->\! \tuplet 6/4 { hh16-+[ hh hh] hh-+[ hh hh] } 
		hh4:16\> |
	hh4:8 hh2.\!^\circ | 

	r2\!  \stemDown hh2:8_\five\p\< |
	
	%\break %%

 	hh8->\! hh8^\circ\spp~ hh2~ \tuplet 3/2 { hh8 hho-+ hho-+ } |  
	\acciaccatura { hho-+ } hhp4 r4 r4 hh4^\circ~ |
	hh2\> r2\!
	\whole |



	% %\pageBreak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



	\whole | 
	r2 hh4\< hh |
	hh4->\f hh2^\circ hh4 |
	hh4-> hh2^\circ\< \tuplet 3/2 { hh8-+ hh-+ hh-+ } |
		

	% %\break %%
	
	hh2:32\! hh16 hh hh-+ hh hh4 | 
	\tuplet 3/2 { hh8 hh hh } r4 hh8-+ hh hh4:16\< |
	hh4:16_\five hh4\ff\<-> \tuplet 3/2{ hh8 hh hh } 
		\acciaccatura {hho16-+ } hh4:32 |
		% put five from fourth measure within tuplet bracket
	r2.\!^\choke r8 hh8 |
	
	%\break %%

	hh4-> hh hh2^\circ\> |
	hh4->\f hh8 hh8^\circ~\> hh4\p \tuplet 3/2 { hh8 hh hh } 
	hh1^\circ~\> | 
	<< { hh4 r2. } { s8. s\! } >> |


	% %\pageBreak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


}

cymbalThree = \drummode {
	r4. hh16\pp hh hh2^\circ |
	hh2:16\< \tuplet 3/2 { hh8\p hh hh } \tuplet 3/2 { hhp8 hhp hhp } |
	hh4:16 hh2.^\circ~ |
	hh4 r4 hh~^\circ \tuplet 3/2 { hh8 hho-+ hh^\circ~ } |

	%% \break %%

	\tuplet 3/2 { hh4^\circp hh\p hh } \tuplet 3/2 { hhp4 hhp8} hhp4:16\< | 
	hhp4\! r4 r4 hh4:16\< |
	r2^\choke\!  \acciaccatura { hho8-+ } hh2^\circ~\p | 
	hh4 hh4:8\< hhp2:16 |
	
	%% \break %%

	hhp4->\f r2. |
	r4 hh4:32 \tuplet 3/2 { hhp8[ hh hh] } \tuplet 3/2 { hh hh hh } |
	hh1:16\< |
	hhp1:32 |

	<< \whole s\! >> |
	\whole |
	r2 hh2^\circ\pp~|
	hh1~ |

	\tuplet 3/2 { hh8 hho-+ hho-+ } hh2.^\circ~ |
	hh2 hh2:16\< |
	hh4:32\! \tuplet 3/2 { hh8-> hh hhp } hh4^\circ~ hh4:32 |
	hh4:32\> hh2:16 hh4^\circ~ |

	hh1^\circp\!~ | 
	hh4. hho16-+ hho-+ hh2^\circ~ |
	hh4 hh4:16 hh2^\circ\> |
	<< \whole s\! >> |
}

cymbalFour = \drummode {
	r2 r8 hho-+ r4 |
	r2 hh2^\circ \< |
	hh4->\! hh2.^\circ\< |
	hh2:16\! hh2:32-> |

	hhp4.->\f hho16-+ hho-+ hhp4:32\< \tuplet 3/2 { hh8\! hhp-> hhp-> } |
	hhp4:32 \tuplet 3/2 { hhp8-> hhp hhp } hhp4:32-> hhp4:16 |
	hhp4:16 hhp16 hh hh8^\circ~ hh2~ |
	hh4 \tuplet 3/2 { hh8[ hh r] } r2 |

	\whole |
	hho4-+\pp r4 hh2^\circ~ |
	hh2. hh4:16_\five |
	hh8-> hh4.^\circ  r2 |

	\whole |
	hh1:32->\< |
	hhp8->\! hho16-+ hho-+ hh4:32 \tuplet 5/4 { hh16 hhp-> hh hho-+ hho-+ }
		hh4:32 |
	hhp8-^ hhp-^ hhp4:32-> \tuplet 3/2 { r8[ hho-+ hh-+] } hhp4:32-> |

	hhp4-^ r4 hh2:32 |
	hhp4-> \tuplet 3/2 { hho8-+ hh-+ hh-+ } hhp4:32-> \tuplet 3/2 { hh8 hho-+ hho-+ } |
	\tuplet 3/2 { hh8->\< hhp-> hhp-^ } hhp8:32-^\f \tuplet 3/2 { hh16-+ hh-+ hh-+ }
		hhp4:32-^ hhp16-+ hhp hhp-> hhp-^ |
	r2^\choke hho16-+\< hho-+ hh-+ hhp-+ hhp4:32-> |

	hhp8-^\! \tuplet 3/2 { hh16-+ hho-+ hho-+ } hh4:32-> hh8-> hh8-> hh4:32\> |
	hh4->\! hh8 hhp-+ hh4^\circ hh4:16 |
	hhp4 hh2.^\circ\>~ |
	hh4 r2.\! |

	% \pageBreak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	r2 \tuplet 3/2 { r8[ r hh-+]\pp } \tuplet 3/2 { r8[ hh-+ r8] } |
	r4. hh8 r8 hh4.^\circ\> |
	r4\! \tuplet 3/2 { r8[ hh-+ hh-+] } r8 hh8^\circ~ hh8 r8 | 
	r4 hh2^\circ \tuplet 3/2 { hho8-+[ r8 hho-+] } |
	
	r8 hh4.:16\< hh2^\circ\p | 
	\tuplet 3/2 { hh8\> hh hh\! } r4 hh2^\circ |
	hhp4\> hh2.^\circ |
	hh4:8\< hh4:16 hh4:32 hhp4:32-> |

	\tuplet 3/2 { hhp8-^\f hho8-+ hhp8-+ } hhp4:32-> 
		\tuplet 5/4 { hho16-+ hho-+ hho-+ hh-+ hhp-+ } hh4:32->| 
	\tuplet 3/2 { hhp8->\< hhp-> hhp->\! } hhp4:32-^ 
		\tuplet 5/4 { hho16-+ hho-+ hho-+ hh-+ hhp-+ }
		\tuplet 6/4 { hho16-+ hho-+ hho-+ hhp-+\< hhp-+ hhp-+ } |
	hh4-^\ff \tuplet 3/2 { hhp8-> hhp-> hhp-> } hhp4:32->
		\tuplet 6/4 { hho16-+ hho-+ hho-+ hhp-+ hho-+ hho-+ } |
	hhp8-^ hho-+ hh4:32->\< hhp8-> hh hhp-^ hh-> |

	<< { \once \hide R1\!^\choke } \whole >>
	hho4-+\pp r4 r4. hhp8-+ |
	hhp4. hh8 hh4 r4 | 
	r4 hhp2.:32\< |
	
	hh4->\p hh4^\circ hhp8-+ hh4.^\circ |
	\tuplet 3/2 { hh8 hh hh } hh8 hho-+ hh2:16\< |
	hhp8->\! hho-+ hh4:16_\five hh4^\circ~ \tuplet 3/2 { hh8 hh hhp } |
	hhp2:32 hh4 r4 |

	<< \whole \hide hh1 >>
	\whole
	\whole
	\whole
	\whole \bar "|."



}

denude = {  
	\override Staff.TextScript.stencil = ##f
	\override Staff.DynamicText.stencil = ##f
	\override Staff.Hairpin.stencil = ##f
}

\score {
<<
	% Setting up the drum staff
	% hh refers to standard cymbal hit
	% hho is above staff to refer to the bell
	% hhp is below staff to refer to edge 
	#(define mydrums '(( hihat		default #t  0)
					   ( openhihat	default #t  1)
					   ( pedalhihat	default #t -1)))

	\new StaffGroup \with {
		\override StaffGrouper.staffgroup-staff-spacing =
			#'((basic-distance . 24 )
				(minimum-distance . 13))
		\override InstrumentName.font-size = #3.5

		instrumentName = \markup { \huge "Loop" }
		shortInstrumentName = \markup { \null \raise #0 "⟳ " } 
	} <<
		\set StaffGroup.systemStartDelimiter = #'SystemStartBar
		\override StaffGroup.SystemStartBar.thickness = #5
		\new Staff \with { 
			\magnifyStaff #63/79 
			\override Staff.VerticalAxisGroup.remove-first = ##f
		 	\override VerticalAxisGroup.staff-staff-spacing =
      			#'((basic-distance . 6)
         			(minimum-distance . 3)
					( padding . 1 ))
		} {
			\denude

			\stopStaff s1 * 48
			\startStaff \celloOne \celloTwo \celloOne
		
		}
		\new Staff \with { 
			\magnifyStaff #63/79 
			\override Staff.VerticalAxisGroup.remove-first = ##f
		 	\override VerticalAxisGroup.staff-staff-spacing =
      			#'((basic-distance . 6)
         			(minimum-distance . 3)
					(padding . 1 ))
		} {
			\denude
	
			\stopStaff s1 * 96
			\startStaff \celloThree
		
		}
		%{\new DrumStaff \with { \magnifyStaff #63/79 } {
			\override Staff.StaffSymbol.line-positions = #'( 0 )
			\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
	
			\denude
        	s1 *48
			\slurNeutral \tieNeutral
			\stemDown \cymbalOne \cymbalTwo \cymbalOne
		}
		\new DrumStaff \with { \magnifyStaff #63/79 } {
			\override Staff.StaffSymbol.line-positions = #'( 0 )
			\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
	
			\denude

        	s1 *96
			\slurNeutral \tieNeutral
			\stemDown \cymbalThree
		}%}
	>>

	\new ChoirStaff \with { 
		\override StaffGrouper.staffgroup-staff-spacing =
			#'((basic-distance . 15 ))
	} <<
		\new Staff \with { 
		 	\override VerticalAxisGroup.staff-staff-spacing =
      			#'((basic-distance . 23)
         			(minimum-distance . 12))

			instrumentName = \markup { \huge "Cello" }
			shortInstrumentName = \markup { \null \raise #0.35 "Vc " }
		} <<
			\clef "bass"
			\tempo 4=96
			%\key g \major
			{ \celloOne \celloTwo \celloThree \celloFour }

			\new Voice =  "breaksForCello" {
				\repeat unfold 5 {	s1 * 4  \break | }
				s1 * 4 \break |
				s1 * 4 \break |
				s1 * 4 \break |
				s1 * 4 \break |
				s1 * 4 \break |
				\repeat unfold 8 {	s1 * 4 \break | }
				s1 s s \break 
				s s s s s \break
				\repeat unfold 10 {	s1 * 4 \break | }
				\bar "|."
			}
		>>%end Staff

		%{\new DrumStaff \with {
			instrumentName = \markup { \null \raise #0. "Cymbal " }
			shortInstrumentName = \markup { \null \raise #0.65"Cym " }
		}{
			\override Staff.StaffSymbol.line-positions = #'( 0 )
			\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
       	 
			\stemDown \slurUp \tieUp \cymbalOne \cymbalTwo
			\cymbalThree \cymbalFour
		}%}
	>>%end ChoirStaff
>>%end Score simultaneous

}%end Score total
