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
