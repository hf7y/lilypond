\version "2.20.0"

%Multiphonics for Woodwinds

multiphonic-clA = {
 %Heather Roche Ultra-underblow #035
 	% #(print-keys-verbose 'clarinet (current-error-port))
 	\fixed c' <a\harmonic a' c''\harmonic>1
 	\tag #'part ^\markup \override #'(size . 0.5) \halign #0 \pad-markup #1
					  \woodwind-diagram #'clarinet #'((lh . (thumb R gis))
                    	(cc . (one two three))
                        (rh . (three four)))
}

multiphonic-clB = {
 %Heather Roche Ultra-underblow #001
 	% #(print-keys-verbose 'clarinet (current-error-port))
 	\fixed c' <gis\harmonic gis' dih''\harmonic>1
 	\tag #'part ^\markup \override #'(size . 0.5) \halign #0 \pad-markup #1
					  \woodwind-diagram #'clarinet #'((lh . (thumb R gis))
                    	(cc . (two three five six))
                        (rh . (fis)))
}	