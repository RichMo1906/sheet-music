
\clef treble

\defaultTimeSignature
\time 4/4

r1
\version "2.24.0"

\header {
  title = "The Girl From Ipanema"
  composer = "A.C. Jobim"
  key = "Ab Major"
}

chordsSection = \chordmode {
  % A Section
  af1:maj7 | af1:maj7 | bf1:7 | bf1:7 |
  ef1:m7 | af1:7 | df1:maj7 | ef1:7 |
  
  % Bridge (B Section)
  f1:maj7 | f1:maj7 | g1:7 | g1:7 |
  g1:m7 | c1:7 | f1:maj7 | f1:maj7 |
}

melody = \relative c'' {
  \key af \major
  \time 4/4
  \tempo "Bossa Nova" 4 = 120
  
  % A Section Theme
  f4. c8 e4. c8 | f4 c8 e4. c4 |
  f4. c8 e4. c8 | f4 c8 e4. c4 |
  ef4. c8 d4. c8 | ef4 c8 d4. c4 |
  c1 ~ | c2 r2 |
}

\score {
  <<
    \new ChordNames \chordsSection
    \new Staff \melody
  >>
  \layout { }
  \midi { }
}