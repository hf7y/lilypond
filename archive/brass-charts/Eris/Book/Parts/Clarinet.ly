\version "2.24.3"

\include "../Global.ly"
\include "../book-titling.ily"

\include "../Pieces/Anthem.ly"
\include "../Pieces/Artemisia.ly"
\include "../Pieces/BookOfFive.ly"

\book {
  \bookpart {
    \score {
      \anthem-title-markup
      \new Staff \transpose bes, c { 
        \anthem-woodwind
      }
    }
  }
  \bookpart {
    \score {
      \artemisia-title-markup
      \new Staff \transpose bes, c { 
        \artemisia-woodwind
      }
    }
  }
  \bookpart {
    \score {
      \bookOfFive-title-markup
      \new Staff \transpose bes, c { 
        \bookOfFive-woodwind
      }
    }
  }

}
