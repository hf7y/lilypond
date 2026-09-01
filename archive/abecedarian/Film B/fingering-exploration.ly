\version "2.24.1"

%From https://music.stackexchange.com/questions/127175/lilypond-transpose-a-sequence-to-modes-with-different-intervallic-structure
transposeScale =
#(define-music-function (scaleA scaleB music) (ly:music? ly:music? ly:music?)
   (let* ((scaleA (ly:music-property scaleA 'elements))
          (scaleB (ly:music-property scaleB 'elements))
          (scaleA (map (lambda (x) (ly:music-property x 'pitch)) scaleA))
          (scaleB (map (lambda (x) (ly:music-property x 'pitch)) scaleB))
          (rootsA (map ly:pitch-notename scaleA)))
   (map-some-music
    (lambda (m)
      (let ((p (ly:music-property m 'pitch)))
        (if (not (null? p))
            (let* ((nn (ly:pitch-notename p))
                   (oct (ly:pitch-octave p))
                   (alt (ly:pitch-alteration p))
                   (pos (list-index (lambda (x) (= x nn)) rootsA))
                   (p2 (list-ref scaleA pos))
                   (oct2 (ly:pitch-octave p2))
                   (alt2 (ly:pitch-alteration p2))
                   (p3 (list-ref scaleB pos))
                   (new-pitch (ly:pitch-transpose p3 (ly:make-pitch (- oct oct2) 0 (- alt alt2)))))
              (ly:music-set-property! m 'pitch new-pitch)
              m)
            #f)))
    music)
   music))

scaleA = { c d e f g b }  % diatonic default to compose in
scaleB = { c d e f g bes }  % 0 and 1
scaleC = { c dis e fis g b } % 0 and 2
scaleD = { c des e fes g beses } % 0 and 3


motif = { b8[ d' f'] c'[ e' g'] e'[ g' b'] g'[ b' d''] }

\score {
	\new Staff {
		\time 12/8
		\transposeScale \scaleA \scaleB \motif
		\transposeScale \scaleA \scaleC \motif
		\transposeScale \scaleA \scaleD \motif
	}
}

%greek enharmonic scales
scaleA = { b c d e f g a }  % diatonic default to compose in
scaleB = { b c des es fis g aes }
scaleC = { b c des e  f   g aes }
scaleD = { b c des e  fis g aes }


motif = \relative c' { c[ d e f] g[ a b c] }

\score {
	\new Staff {
		\relative c' { c[ dis e f] g[ ais b c] }
		\relative c' { c[ des e f] g[ aes b c] }
		\relative c' { c[ des eeses f] g[ aes beses c] }
		\break
	}
}

\score {
	\layout { ragged-right = ##t }
	\new Staff {
		\transpose des fis
			\transposeScale \scaleA \scaleC
			\transpose f des \motif
		\relative c' { c[ des e f] g[ aes b c] }
		\relative c' { c[ des eeses f] g[ aes beses c] }
		\break

		\transpose dis b, \relative c' { dis[ e f] g[ ais b c] dis } \break
		\transpose b b \relative c' { b c[ des e f] g[ aes b] } \break
		\transpose c' b \relative c' { c[ des eeses f] g[ aes beses c] }
	}
}