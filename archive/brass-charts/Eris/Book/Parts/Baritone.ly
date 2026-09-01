\version "2.24.3"

\include "Global.ly"
\include "book-titling.ily"

\include "Anthem.ly"

\book {
  \bookpart {
    \score {
      #(anthem 'header)
      #(anthem 'baritone)
    }
  }
}