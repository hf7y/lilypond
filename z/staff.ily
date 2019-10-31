\version "2.19.82"

one-line = #(define-music-function (music)(ly:music?) #{
  \stopStaff
  \override Staff.StaffSymbol.line-count = #1
  \startStaff
  \override NoteHead.no-ledgers = ##t
  $music
  \revert NoteHead.no-ledgers
  \stopStaff
  \revert Staff.StaffSymbol.line-count
  \startStaff
#})

fat-line = #(define-music-function (music)(ly:music?) #{
  \stopStaff
  \override Staff.StaffSymbol.line-positions =
    #'( -0.4 -0.2 0 0.2 0.4 )
  \startStaff
  \override NoteHead.no-ledgers = ##t
  $music
  \revert NoteHead.no-ledgers
  \stopStaff
  \revert Staff.StaffSymbol.line-positions
  \startStaff
#})

no-line = #(define-music-function (music)(ly:music?) #{
  \stopStaff
  %\override Staff.StaffSymbol.line-count = #0
  \override Staff.StaffSymbol.transparent = ##t
  \startStaff
  \override NoteHead.no-ledgers = ##t
  $music
  \revert NoteHead.no-ledgers
  \stopStaff
  \revert Staff.StaffSymbol.transparent
  \revert Staff.StaffSymbol.line-count
  \startStaff
#})
