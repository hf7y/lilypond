%station2.ly
%Created on 07 29, 2019 at 11:38
\version "2.19.83"
\header {
  title = "Station2"
  subtitle = ""
  composer = "Z.V. Pine"
  tagline = "" }

\include "../z/score.ily"
\include "../z/paper.ily"
  \z_montalvo %11 x 14 in^2
\include "./orders.ily"


stringChorus = <<
  \context Voice = "coroIII_s_voice" {
    g8 g g g }
  \context Lyrics = "coroIII_s_lyrics" \lyricmode { 
    go go go go }

  \context Voice = "coroIII_a_voice" {
    g8 g g g }
  \context Lyrics = "coroIII_a_lyrics" \lyricmode { 
    go go go go }

  \context Voice = "coroIII_t_voice" {
    g8 g g g }
  \context Lyrics = "coroIII_t_lyrics" \lyricmode { 
    go go go go }

  \context Voice = "coroIII_b_voice" {
    g8 g g g }
  \context Lyrics = "coroIII_b_lyrics" \lyricmode { 
    go go go go }

  \context Staff = "vln" {
    g8 g g g }
  \context Staff = "vc" {
    g8 g g g }
>>

\score {
  <<
    \asScoreOrder
    %\chorusIII
    \stringChorus
  >>
}

