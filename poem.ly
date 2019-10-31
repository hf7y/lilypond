%poem.ly
%Created on 08 02, 2019 at 14:17
\version "2.19.83"
summersleep = <<
    \context Voice = "soprano_voice" {
        { d''8 c'' c''4 } }
    \context Lyrics 
      \lyricsto "soprano_voice"  { Sum -- mer sleep } >>

imissedthedawn = <<
    \context Voice = "soprano_voice" {
      { es''8 \bar "'" d''8. g'16 g'4 } }
    \context Lyrics 
    \lyricsto "soprano_voice" { I missed the dawn } >>

mytiredeyes = <<
  \context Voice = "soprano_voice" {
    \relative c'' { es8 d c a4 } }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { My ti -- red eyes } } >>

tooheavytoopen = <<
  \context Voice = "soprano_voice" {
    \relative c'' { gis8 \tuplet 5/4 {b16 b b b e, } } }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { too hea -- vy to o -- pen } } >>

faroffbirdsargue = <<
  \context Voice = "soprano_voice" {
    \relative c'' { \tuplet 5/4 { c8 a a a8 a8 } } }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { Far off birds ar -- gue } } >>

freewayshiss = <<
  \context Voice = "soprano_voice" {
    \relative c'' { a8 g g4 } }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { free -- ways hiss } } >>

caralarmstrill = <<
  \context Voice = "soprano_voice" {
    \relative c'' { a16. g32 g8 g4 } }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { Car a -- larms trill } } >>

falseemergencies = <<
  \context Voice = "soprano_voice" {
    \relative c'' { \tuplet 5/4 { e16 e f e e } } }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { false e -- mer -- gen -- cies } } >>

indreamiamten = <<
  \context Voice = "soprano_voice" {
    \relative c'' {a8 \tuplet 3/2 {a' a a } a4 } }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { In dream I am ten } } >>

nappinginthemastershouse = <<
  \context Voice = "soprano_voice" {
    \relative c'' { g16 g g g \tuplet 3/2 { a8 g g } } }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { nap -- ping in the Ma -- ster's house } } >>

mysinglebed = <<
  \context Voice = "soprano_voice" {
    \relative c' { a8 f f f8  } }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { my sin -- gle bed } } >>

aonegirlcoffin = <<
  \context Voice = "soprano_voice" {
    \relative c'' {c c c c c } }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { a one girl cof -- fin } } >>

tootighticry = <<
  \context Voice = "soprano_voice" {
    \relative c'' {c c c c} }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { \markup \italic { Too tight! } I cry } } >>

myfeetcantfit = <<
  \context Voice = "soprano_voice" {
    \relative c'' {c c c c} }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { \markup \italic { my feet can't fit! } } } >>

hescowlsandsighs = <<
  \context Voice = "soprano_voice" {
    \relative c'' {c c c c } }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { He scowls and sighs } } >>

scornsmymediocrity = <<
  \context Voice = "soprano_voice" {
    \relative c'' {c c c c c c c } }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { scorns my me -- di -- o -- cri -- ty } } >>

raindances = <<
  \context Voice = "soprano_voice" {
    \relative c'' {} }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { Rain dan -- ces } } >>

deathcoinsontheroof = <<
  \context Voice = "soprano_voice" {
    \relative c'' {} }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { death coins on the roof } } >>

timedevoursus = << 
  \context Voice = "soprano_voice" {
    \relative c'' {} }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { Time de -- vours -- us } } >>

imperceptibly = <<
  \context Voice = "soprano_voice" {
    \relative c'' {} }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { im -- per -- cep -- ti -- bly } } >>

emptywomb = << 
  \context Voice = "soprano_voice" {
    \relative c'' {} }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { Emp -- ty womb} } >>

pupilsbegforentry = <<
  \context Voice = "soprano_voice" {
    \relative c'' {} }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { pu -- pils beg for en -- try } } >>

unfinishedpoems = <<
  \context Voice = "soprano_voice" {
    \relative c'' {} }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { Un -- fi -- nished po -- ems } } >>

dontknowhowmany = <<
  \context Voice = "soprano_voice" {
    \relative c'' {} }
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" { don't know how ma -- ny } } >>
