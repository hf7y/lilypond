\version "2.20.0"
\include "./arrangement.ly"

\layout {
	\context {
	  \type "Engraver_group"
	  \consists "Time_signature_engraver"
	  \consists "Axis_group_engraver"
	  \name "TimeSig"
	  \alias "Staff"
	  \override TimeSignature.font-size = #2
	  \override TimeSignature.break-align-symbol = ##f
	  \override TimeSignature.X-offset =
	    #ly:self-alignment-interface::x-aligned-on-self
	  \override TimeSignature.self-alignment-X = #CENTER
	  \override TimeSignature.after-line-breaking =
	    #shift-right-at-line-begin
	}

	\context {
	  \type "Engraver_group"
	  \consists "Axis_group_engraver"
	  \name "Spacer"
	  \alias "Staff"
	}

	\context {
      \Score
      \accepts TimeSig
      \accepts Spacer
      proportionalNotationDuration = #(ly:make-moment 1/8)
      % \override SpacingSpanner.strict-note-spacing = ##t
      % \override SpacingSpanner.uniform-stretching = ##t
      % \override StaffGrouper.staffgroup-staff-spacing.padding = #5
   	  % \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #15
   	  % \override StaffGrouper.staffgroup-staff-spacing.minimum-distance = #5
    }
    \context {
    	\Staff
    	% \remove "Time_signature_engraver"
    }
    \context {
    	\DrumStaff
    	% \remove "Time_signature_engraver"
    }

    \context {
    	\GrandStaff
    	\override TimeSignature.break-visibility = ##(#f #t #t)
    }
	\context {
	  \StaffGroup
	  \accepts TimeSig
	  \remove "Span_bar_engraver"
	}
}


\score {
	<<
		\new StaffGroup = "i" 
		\with { instrumentName = #"i" } <<
			\new GrandStaff = "pc" 
			\with { instrumentName = #"pc" } <<
				\new Staff = "up" {}
				\new DrumStaff = "down" {} >>

			\new GrandStaff = "pf" 
			\with { instrumentName = #"pf" } <<
				\new Staff = "up" {}
				\new Staff = "down" { \clef "bass" } >>
		>>

		\new StaffGroup = "ii" 
		\with { instrumentName = #"ii" } <<
			\new GrandStaff = "pc" 
			\with { instrumentName = #"pc" } <<
				\new Staff = "up" {}
				\new DrumStaff = "down" {} >>

			\new GrandStaff = "pf" 
			\with { instrumentName = #"pf" } <<
				\new Staff = "up" {}
				\new Staff = "down" { \clef "bass" } >>
		>>
	\arrangement
	>>
}