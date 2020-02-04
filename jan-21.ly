% [notes] external for Pure Data
% development-version August 16, 2018 
% by Jaime E. Oliver La Rosa
% la.rosa@nyu.edu
% @ the Waverly Labs in NYU MUSIC FAS
% Open this file with Lilypond
% more information is available at lilypond.org
% Released under the GNU General Public License.

% HEADERS

glissandoSkipOn = {
	\override NoteColumn.glissando-skip = ##t
	\hide NoteHead
	\hide Accidental
	\hide Tie
	\override NoteHead.no-ledgers = ##t
}

glissandoSkipOff = {
	\revert NoteColumn.glissando-skip
	\undo \hide NoteHead
	\undo \hide Tie
	\undo \hide Accidental
	\revert NoteHead.no-ledgers
}

\header {
	title = "Algorithmic Sketch with Tonal Progression"
}

inst_part = \relative c 
{

\time 4/4
{
% ________________________________________bar 2 :
 \tuplet 6/4 { c,,16  c'16  g'16  c16  e16  g16 } 
	 \tuplet 5/4 { c,,,16  c'16  g'16  c16  e16 } 
		 \tuplet 5/4 { c,,16  c'16  g'16  c16  e16 } 
			 \tuplet 5/4 { c,,16  c'16  g'16  c16  e16 }  |
% ________________________________________bar 3 :
 \tuplet 5/4 { a,,16  a'16  e'16  a16  c16 } 
	 \tuplet 5/4 { g,,16  g'16  d'16  g16  b16 } 
		 \tuplet 5/4 { g,,16  g'16  d'16  g16  b16 } 
			 \tuplet 6/4 { g,,16  g'16  d'16  g16  b16  d16 }  |
% ________________________________________bar 4 :
 \tuplet 5/4 { g,,,16  g'16  d'16  g16  b16 } 
	 \tuplet 5/4 { g,,16  g'16  d'16  g16  b16 } 
		 \tuplet 5/4 { g,,16  g'16  d'16  g16  b16 } 
			 \tuplet 5/4 { g,,16  g'16  d'16  g16  b16 }  |
	% ________________________________________bar 5 :
	 \tuplet 5/4 { f,,16  f'16  c'16  f16  a16 } 
		 \tuplet 5/4 { f,,16  f'16  c'16  f16  a16 } 
			 \tuplet 6/4 { f,,16  f'16  c'16  f16  a16  c16 } 
				 \tuplet 6/4 { f,,,16  f'16  c'16  f16  a16  c16 }  |
	% ________________________________________bar 6 :
	 \tuplet 6/4 { f,,,16  f'16  c'16  f16  a16  c16 } 
		 \tuplet 6/4 { f,,,16  f'16  c'16  f16  a16  c16 } 
			 \tuplet 7/4 { d,,,16  d'16  a'16  d16  f16  a16  d16 } 
				 \tuplet 6/4 { d,,,16  d'16  a'16  d16  f16  a16 }  |
	% ________________________________________bar 7 :
	 \tuplet 6/4 { c,,,16  c'16  g'16  c16  e16  g16 } 
		 \tuplet 6/4 { c,,,16  c'16  g'16  c16  e16  g16 } 
			 \tuplet 6/4 { c,,,16  c'16  g'16  c16  e16  g16 } 
				 \tuplet 5/4 { c,,16  g'16  c16  e16  g16 }  |
	% ________________________________________bar 8 :
	 \tuplet 6/4 { c,,16  g'16  c16  e16  g16  c16 } 
		 \tuplet 6/4 { c,,16  g'16  c16  e16  g16  c16 } 
			 \tuplet 6/4 { c,,16  g'16  c16  e16  g16  c16 } 
				 \tuplet 6/4 { c,,16  g'16  c16  e16  g16  c16 }  |
	% ________________________________________bar 9 :
	 \tuplet 8/4 { c,,,16  c'16  g'16  c16  e16  g16  c16  e16 } 
		 \tuplet 7/4 { c,,,16  c'16  g'16  c16  e16  g16  c16 } 
			 \tuplet 8/4 { c,,,16  c'16  g'16  c16  e16  g16  c16  e16 } 
				 \tuplet 7/4 { c,,,16  c'16  g'16  c16  e16  g16  c16 }  |
	% ________________________________________bar 10 :
	 \tuplet 6/4 { a,16  e'16  a16  c16  e16  a16 } 
		 \tuplet 7/4 { g,,16  d'16  g16  b16  d16  g16  b16 } 
			 \tuplet 7/4 { g,,16  d'16  g16  b16  d16  g16  b16 } 
				 \tuplet 7/4 { g,,16  d'16  g16  b16  d16  g16  b16 }  |
	% ________________________________________bar 11 :
	 \tuplet 8/4 { g,,,16  g'16  d'16  g16  b16  d16  g16  b16 } 
		 \tuplet 7/4 { g,,,16  g'16  d'16  g16  b16  d16  g16 } 
			 \tuplet 7/4 { g,,,16  g'16  d'16  g16  b16  d16  g16 } 
				 \tuplet 7/4 { g,,,16  g'16  d'16  g16  b16  d16  g16 }  |
	% ________________________________________bar 12 :
	 \tuplet 8/4 { f,,,16  f'16  c'16  f16  a16  c16  f16  a16 } 
		 \tuplet 7/4 { f,,,16  f'16  c'16  f16  a16  c16  f16 } 
			 \tuplet 8/4 { f,,,16  f'16  c'16  f16  a16  c16  f16  a16 } 
				 \tuplet 8/4 { f,,,16  f'16  c'16  f16  a16  c16  f16  a16 }  |
	% ________________________________________bar 13 :
	 \tuplet 8/4 { f,,,16  f'16  c'16  f16  a16  c16  f16  a16 } 
		 \tuplet 8/4 { f,,,16  f'16  c'16  f16  a16  c16  f16  a16 } 
			 \tuplet 8/4 { d,,,,16  d'16  a'16  d16  f16  a16  d16  f16 } 
				 \tuplet 8/4 { d,,,16  d'16  a'16  d16  f16  a16  d16  f16 }  |
	% ________________________________________bar 14 :
	 \tuplet 8/4 { c,,,16  c'16  g'16  c16  e16  g16  c16  e16 } 
		 \tuplet 8/4 { c,,,16  c'16  g'16  c16  e16  g16  c16  e16 } 
			 \tuplet 8/4 { c,,,16  c'16  g'16  c16  e16  g16  c16  e16 } 
				 \tuplet 8/4 { c,,,16  c'16  g'16  c16  e16  g16  c16  e16 }  |
	% ________________________________________bar 15 :
	 \tuplet 7/4 { c,,16  g'16  c16  e16  g16  c16  e16 } 
		 \tuplet 8/4 { c,,16  g'16  c16  e16  g16  c16  e16  g16 } 
			 \tuplet 8/4 { c,,,16  g'16  c16  e16  g16  c16  e16  g16 } 
				 \tuplet 8/4 { c,,,16  g'16  c16  e16  g16  c16  e16  g16 }  |
	% ________________________________________bar 16 :
	 \tuplet 8/4 { g,,16  c16  e16  g16  c16  e16  g16  b16 } 
		 \tuplet 9/4 { g,,16  c16  e16  g16  c16  e16  g16  b16  c16 } 
			 \tuplet 9/4 { g,,16  c16  e16  g16  c16  e16  g16  b16  c16 } 
				 \tuplet 9/4 { g,,16  c16  e16  g16  c16  e16  g16  b16  c16 }  |
	% ________________________________________bar 17 :
	 \tuplet 9/4 { e,,16  a16  c16  e16  a16  c16  e16  g16  a16 } 
		 \tuplet 9/4 { d,,,16  g16  b16  d16  g16  b16  d16  f16  g16 } 
			 \tuplet 9/4 { d,,16  g16  b16  d16  g16  b16  d16  f16  g16 } 
				 \tuplet 9/4 { d,,16  g16  b16  d16  g16  b16  d16  f16  g16 }  |
	% ________________________________________bar 18 :
	 \tuplet 9/4 { d,,16  g16  b16  d16  g16  b16  d16  f16  g16 } 
		 \tuplet 10/4 { g,,,16  d'16  g16  b16  d16  g16  b16  d16  f16  g16 } 
			 \tuplet 9/4 { g,,,16  d'16  g16  b16  d16  g16  b16  d16  f16 } 
				 \tuplet 9/4 { g,,,16  d'16  g16  b16  d16  g16  b16  d16  f16 }  |
	% ________________________________________bar 19 :
	 \tuplet 8/4 { c,,16  f16  a16  c16  f16  a16  c16  e16 } 
		 \tuplet 9/4 { c,,16  f16  a16  c16  f16  a16  c16  e16  f16 } 
			 \tuplet 11/4 { f,,,16  c'16  f16  a16  c16  f16  a16  c16  e16  f16  a16 } 
				 \tuplet 10/4 { f,,,16  c'16  f16  a16  c16  f16  a16  c16  e16  f16 }  |
	% ________________________________________bar 20 :
	 \tuplet 11/4 { f,,,,16  f'16  c'16  f16  a16  c16  f16  a16  c16  e16  f16 } 
		 \tuplet 9/4 { f,,,16  c'16  f16  a16  c16  f16  a16  c16  e16 } 
			 \tuplet 9/4 { a,,,16  d16  f16  a16  d16  f16  a16  c16  d16 } 
				 \tuplet 10/4 { a,,16  d16  f16  a16  d16  f16  a16  c16  d16  f16 }  |
	% ________________________________________bar 21 :
	 \tuplet 10/4 { g,,,16  c16  e16  g16  c16  e16  g16  b16  c16  e16 } 
		 \tuplet 10/4 { g,,,16  c16  e16  g16  c16  e16  g16  b16  c16  e16 } 
			 \tuplet 10/4 { g,,,16  c16  e16  g16  c16  e16  g16  b16  c16  e16 } 
				 \tuplet 10/4 { g,,,16  c16  e16  g16  c16  e16  g16  b16  c16  e16 }  |
	% ________________________________________bar 22 :
	 \tuplet 10/4 { g,,,16  c16  e16  g16  c16  e16  g16  b16  c16  e16 } 
		 \tuplet 9/4 { c,,16  e16  g16  c16  e16  g16  b16  c16  e16 } 
			 \tuplet 10/4 { c,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16 } 
				 \tuplet 10/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16 }  |
	% ________________________________________bar 23 :
	 \tuplet 11/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16 } 
		 \tuplet 11/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16 } 
			 \tuplet 11/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16 } 
				 \tuplet 11/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16 }  |
	% ________________________________________bar 24 :
	 \tuplet 11/4 { a,,16  c16  e16  a16  c16  e16  g16  a16  c16  e16  f16 } 
		 \tuplet 11/4 { g,,,16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16 } 
			 \tuplet 11/4 { g,,,16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16 } 
				 \tuplet 11/4 { g,,,16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16 }  |
	% ________________________________________bar 25 :
	 \tuplet 11/4 { g,,,16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16 } 
		 \tuplet 12/4 { d,,,16  g16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16 } 
			 \tuplet 11/4 { d,,,16  g16  b16  d16  g16  b16  d16  f16  g16  b16  d16 } 
				 \tuplet 11/4 { d,,,16  g16  b16  d16  g16  b16  d16  f16  g16  b16  d16 }  |
	% ________________________________________bar 26 :
	 \tuplet 11/4 { c,,,16  f16  a16  c16  f16  a16  c16  e16  f16  a16  c16 } 
		 \tuplet 11/4 { c,,,16  f16  a16  c16  f16  a16  c16  e16  f16  a16  c16 } 
			 \tuplet 12/4 { c,,,16  f16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16 } 
				 \tuplet 12/4 { c,,,16  f16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16 }  |
	% ________________________________________bar 27 :
	 \tuplet 12/4 { c,,,16  f16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16 } 
		 \tuplet 12/4 { c,,,16  f16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16 } 
			 \tuplet 12/4 { a,,,16  d16  f16  a16  d16  f16  a16  c16  d16  f16  a16  b16 } 
				 \tuplet 12/4 { a,,,16  d16  f16  a16  d16  f16  a16  c16  d16  f16  a16  b16 }  |
	% ________________________________________bar 28 :
	 \tuplet 12/4 { g,,,16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16 } 
		 \tuplet 12/4 { g,,,16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16 } 
			 \tuplet 11/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16 } 
				 \tuplet 12/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16 }  |
	% ________________________________________bar 29 :
	 \tuplet 12/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16 } 
		 \tuplet 12/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16 } 
			 \tuplet 12/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16 } 
				 \tuplet 12/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16 }  |
	% ________________________________________bar 30 :
	 \tuplet 13/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16 } 
		 \tuplet 13/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16 } 
			 \tuplet 13/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16 } 
				 \tuplet 13/4 { c,,,16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16 }  |
	% ________________________________________bar 31 :
	 \tuplet 12/4 { c,,16  e16  a16  c16  e16  g16  a16  c16  e16  f16  g16  a16 } 
		 \tuplet 13/4 { b,,,16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16  g16  a16 } 
			 \tuplet 14/4 { g,,,16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16  g16  a16 } 
				 \tuplet 13/4 { g,,,16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16  g16 }  |
	% ________________________________________bar 32 :
	 \tuplet 13/4 { g,,,16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16  g16 } 
		 \tuplet 13/4 { g,,,16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16  g16 } 
			 \tuplet 12/4 { b,,,16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16  g16 } 
				 \tuplet 14/4 { g,,,16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16  g16  a16 }  |
	% ________________________________________bar 33 :
	 \tuplet 13/4 { f,,,16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16  e16  f16 } 
		 \tuplet 13/4 { f,,,16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16  e16  f16 } 
			 \tuplet 14/4 { f,,,16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16  e16  f16  g16 } 
				 \tuplet 14/4 { f,,,16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16  e16  f16  g16 }  |
	% ________________________________________bar 34 :
	 \tuplet 14/4 { f,,,16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16  e16  f16  g16 } 
		 \tuplet 14/4 { f,,,16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16  e16  f16  g16 } 
			 \tuplet 15/4 { a,,,,16  d16  f16  a16  d16  f16  a16  c16  d16  f16  a16  b16  c16  d16  e16 } 
				 \tuplet 14/4 { a,,,,16  d16  f16  a16  d16  f16  a16  c16  d16  f16  a16  b16  c16  d16 }  |
	% ________________________________________bar 35 :
	 \tuplet 14/4 { g,,,,16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16 } 
		 \tuplet 15/4 { c,,,,16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16 } 
			 \tuplet 14/4 { c,,,,16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16 } 
				 \tuplet 14/4 { c,,,,16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16 }  |
	% ________________________________________bar 36 :
	 \tuplet 14/4 { c,,,,16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16 } 
		 \tuplet 14/4 { c,,,,16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16 } 
			 \tuplet 14/4 { c,,,,16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16 } 
				 \tuplet 14/4 { c,,,,16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16 }  |
	% ________________________________________bar 37 :
	 \tuplet 15/4 { c,,,,16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16 } 
		 \tuplet 16/4 { c,,,,,16  c'16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16 } 
			 \tuplet 15/4 { c,,,,,16  c'16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16 } 
				 \tuplet 15/4 { c,,,,,16  c'16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16 }  |
	% ________________________________________bar 38 :
	 \tuplet 15/4 { a,,,,16  a'16  e'16  a16  c16  e16  a16  c16  e16  g16  a16  c16  e16  f16  g16 } 
		 \tuplet 15/4 { g,,,,,16  g'16  d'16  g16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16 } 
			 \tuplet 16/4 { g,,,,,16  g'16  d'16  g16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16  g16 } 
				 \tuplet 15/4 { g,,,,,16  g'16  d'16  g16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16 }  |
	% ________________________________________bar 39 :
	 \tuplet 16/4 { g,,,,,16  g'16  d'16  g16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16  g16 } 
		 \tuplet 15/4 { g,,,,,16  g'16  d'16  g16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16 } 
			 \tuplet 15/4 { g,,,,,16  g'16  d'16  g16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16 } 
				 \tuplet 15/4 { g,,,,,16  g'16  d'16  g16  b16  d16  g16  b16  d16  f16  g16  b16  d16  e16  f16 }  |
	% ________________________________________bar 40 :
	 \tuplet 15/4 { f,,,,,16  f'16  c'16  f16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16  e16 } 
		 \tuplet 15/4 { f,,,,,16  f'16  c'16  f16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16  e16 } 
			 \tuplet 16/4 { f,,,,,16  f'16  c'16  f16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16  e16  f16 } 
				 \tuplet 16/4 { f,,,,,16  f'16  c'16  f16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16  e16  f16 }  |
	% ________________________________________bar 41 :
	 \tuplet 16/4 { f,,,,,16  f'16  c'16  f16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16  e16  f16 } 
		 \tuplet 16/4 { f,,,,,16  f'16  c'16  f16  a16  c16  f16  a16  c16  e16  f16  a16  c16  d16  e16  f16 } 
			 \tuplet 16/4 { d,,,,,16  d'16  a'16  d16  f16  a16  d16  f16  a16  c16  d16  f16  a16  b16  c16  d16 } 
				 \tuplet 16/4 { d,,,,,16  d'16  a'16  d16  f16  a16  d16  f16  a16  c16  d16  f16  a16  b16  c16  d16 }  |
	% ________________________________________bar 42 :
	 \tuplet 16/4 { c,,,,,16  c'16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16 } 
		 \tuplet 17/4 { c,,,,,16  c'16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16  d16 } 
			 \tuplet 17/4 { c,,,,,16  c'16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16  d16 } 
				 \tuplet 16/4 { c,,,,,16  c'16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16 }  |
	% ________________________________________bar 43 :
	 \tuplet 16/4 { c,,,,,16  c'16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16 } 
		 \tuplet 15/4 { c,,,,16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16 } 
			 \tuplet 17/4 { c,,,,,16  c'16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16  d16 } 
				 \tuplet 15/4 { c,,,,16  g'16  c16  e16  g16  c16  e16  g16  b16  c16  e16  g16  a16  b16  c16 }
	}
}

\score {
	\new PianoStaff <<
		\new Staff = "up" {
			s1 * 30	
		}
		\new Staff = "down" {
			\clef "bass"
			\autochange
			\inst_part
		}
	>>
	\layout {
		\mergeDifferentlyHeadedOn
		\mergeDifferentlyDottedOn
		\set harmonicDots = ##t
		\override Glissando.thickness = #4
		\set Staff.pedalSustainStyle = #'mixed
		\override TextSpanner.bound-padding = #1.0
		\override TextSpanner.bound-details.right.padding = #1.3
		\override TextSpanner.bound-details.right.stencil-align-dir-y = #CENTER
		\override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
		\override TextSpanner.bound-details.right-broken.text = ##f
		\override TextSpanner.bound-details.left-broken.text = ##f
		\override Glissando.minimum-length = #4
		\override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
		\override Glissando.breakable = ##t
		\override Glissando.after-line-breaking = ##t
		\set baseMoment = #(ly:make-moment 1/8)
		\set beatStructure = #'(2 2 2 2)
		#(set-default-paper-size "a4")
	}
	\midi { }
}

\version "2.18.2"
% notes Pd External version testing 
