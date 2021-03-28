### for David Friend
### solo pianoforte

Structure of the Project
------------------------

1. Timeline variables
	a. tonic/fundamental
	b. pitch-class-set
	c. duration-set
	d. intensity

2. Music Generators
	a. composite gesture
		(made up of simple gestures)
	b. simple gesture

3. Conductor/Timekeeper



1. Timeline variables
---------------------
	* Global variables always available to the music generators in a naive way
	* The generators just evaluate a function i.e. (tonic) and receive the current value
	* The variable ticks ahead each time it is called according to its own internal logic
	  the generator does not know about.

a. tonic/fundamental
	This changes very rarely during the piece, mapping out big sections
	Returns a single ly:make-pitch
	Does not tick itself forward

b. pitch-class-set
	?can be called in a recursive way in a recursive way? i.e. pitch->list of pitches
	returns a function that, when called, returns a list of pitches
	advances internally to return a new set next time

c. duration-set
	returns a function that, when called, returns a list of durations
	advances internally to return a new set next time

d. intensity
	returns some integer
	0 is mezzo, positive is number of fortes, negative is number of pianissimos
	perhaps steps through a polynomial returning integer
	steps forward every time its called


2. Music Generators
-------------------
a. composite gesture
	wraps around simple gestures in a way that they know about each other
	takes duration set, pitch set, intensity 
	calls simple gesture zero to two times for each duration
	returns grandstaff of material for length of duration list

		--------------bdfbdfbdfbdf---
  fig.  -------<ce><ce><ce>----------
		---cccccc--------------cccccc

		; special case for two hand same register (black keys white keys)

b. simple gesture
	takes duration, pitch list, register
	returns music for one staff, agnostic to which

	examples include
		i.   tremolo
		ii.  arpeggio that fits in one hand
		iii. single note
		iv.  chord that fits in one hand
		v.   pianissimo chromaticisms surrounding a pitch


3. Conductor/Timekeeper
-----------------------
	* keeps track of the timeline of the composition
	* changes some global variables
	* calls music generators