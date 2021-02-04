\version "2.20.0"

% semi-tone motif
mo-one = { c4( | des4) aes4 g4 d'4( | es4) ges,4 f4 e'4( | f2~ f8 es8 )}
mo-two = { c8[( cis8] | d4) aes4 g4 ges4 | dis'4( e4) ges,4 f4 | e4 f'4( ges) }
mo-three = { c4( | des4) aes4 g4 ges4 | d4( es4) f,4 }
mo-four = { c4( | des4) aes4 g4 ges4 | f d'4( es4) e | e,4 es4 d des | c2. }

mo-eleven = { c4( | d4) aes4 g4 d'4( | e4) ges,4 f4 e'4( | f2~ f8 es8 )}
mo-twelve = { c8[( cis8] | d4) a4 g4 ges4 | dis'4( e4) f,4 e4 | e4 fis'4( g) }
mo-thirteen = { c4( | d4) aes4 g4 f4 | d4( es4) f,4 }
mo-fourteen = { c4( | des4) a4 g4 ges4 | f d'4( e4) f | e,4 d4 c }

mo-thirtyone = { c4( | d4.) a4. g4. f4. | r4. d'4( e8) r4. e,4. | e'4.~( e4 f8~ f4.) r4. |  d,4 c8 r4 b8 a4 g8 r8 }
mo-thirtytwo = { b8( c8) | r2 d4 a4 g4 f4 | r2 r4 e'2( f4) | e,4 r4 d8 c8 g'4( a4) }
mo-thirtythree = { c4( | d4) r4 a4 r4 r4 g8 f8 | r4 e'4( f2) e,4 }
mo-thirtyfour = { c8( d8) | r4 a4 g4 f4 e4 e'8( f8) | r4 g4 d,4 r4 c4 r4 | b4 r4 a4 g4 f4 }

% seventh chords
% diatonic
a-sev = { r16[ a16 c16 gis'16] }
b-sev = { r16[ bes16 d16 a'16] }
c-sev = { r16[ c16 e16 b'16] }
d-sev = { r16[ d16 f16 c'16] }
e-sev = { r16[ e16 g16 d'16] }
f-sev = { r16[ f16 a16 e'16] }
g-sev = { r16[ g16 b16 fis'16] }
h-sev = { r16[ b16 d16 ais'16] }

% whole-tone zero
i-sev = { r16[ c16 e16 bes'16] }
j-sev = { r16[ d16 fis16 c'16] }
k-sev = { r16[ e16 gis16 d'16] }
l-sev = { r16[ fis16 ais16 e'16] }
m-sev = { r16[ aes16 c16 ges'16] }
n-sev = { r16[ bes16 d16 aes'16] }

o-sev = { r16[ c16 es16 b'16] }

% whole-tone one
p-sev = { r16[ des16 f16 b16] }
q-sev = { r16[ es16 g16 des'16] }
r-sev = { r16[ f16 a16 es'16] }
s-sev = { r16[ g16 b16 f'16] }
t-sev = { r16[ a16 cis16 g'16] }

u-sev = { r16[ b16 dis16 ais'16] }

% pentatonic
v-sev = { r16[ des16 ges16 bes16] }
w-sev = { r16[ es16 ges16 des'16] }
x-sev = { r16[ ges16 bes16 es16] }
y-sev = { r16[ aes16 des16 ges16] }
z-sev = { r16[ bes16 des16 aes'16] }

% pentatonic
v-sev-quint = { \tuplet 5/4 { r16[ des16. ges16. bes16] } }
w-sev-quint = { \tuplet 5/4 { r16[ es16. ges16. des'16] } }
x-sev-quint = { \tuplet 5/4 { r16[ ges16. bes16. es16] } }
y-sev-quint = { \tuplet 5/4 { r16[ aes16. des16 ges16.] } }
z-sev-quint = { \tuplet 5/4 { r16[ bes16. des16. aes'16] } }