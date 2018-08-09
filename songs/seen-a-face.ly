\version "2.19.80"
A_a = {
  \key a \major
  \relative c' {
    r8 < a cis e>4 < a cis e>8 < a cis e>4 < a cis e> |
	< gis cis e> < gis cis e> r8 < gis cis e>4 < g cis e>8~ |
	< g cis e> < g c e>4 < g b e>8 < g b e>4 < g b e> |
	< fis b dis >4 < fis b dis > r8 < eis b' d >4 < fis a cis>8~ |
	< fis a cis > < fis a cis >4 < fis a cis >8 < fis a cis>4 < fis a cis>|
	< f a cis > < f a cis > r8 < f a cis >4 < e a cis>8 |
	< e a cis> < e a cis>4 <e a cis>8 <e a cis>4 < e a cis> |
	< dis b' fis > < dis b' fis> r8 < dis >4 < d>8~
    < d > < d>4 < d>8 < d>4 < d> |
	< cis > < cis> r8 < c> 4 < b>8~|
	< b> < b>4 < b>8 < bes>4 < bes>4 |
	a1 \bar "|." \break
  }
}

B_a = {
  \key fis \minor
  \relative c {
    \partial 4 < cis eis b' d>4 | 
    \time 6/8
	<<{ \voiceTwo 
	  fis,2.    | fis     |
	  fis4. fis | fis e   |
	  d'2.      | d       |
	  d4.   d   | d   cis |
	  b2.       | b4. bis |
	  cis2.     | cis2.   |
	  cis4. cis | cis cis |
      d2.       | d       |
      d4.   d   | d   d   |
	  e2.       | e       |
	  \time 4/4
	  f1 |
	  } \\ { \voiceOne 
	  a8 fis a fis a fis 

	}>>
  }
}
\score {
  \new Staff {
    \clef "treble_8"
    \A_a
	\B_a
  }
}
