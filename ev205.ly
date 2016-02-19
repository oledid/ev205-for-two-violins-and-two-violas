\version "2.18.2"

\header {
  title = "EV205"
  composer = "Ole Morten Didriksen"
}

global = {
  \key c \major
  \time 3/4
}

dc = {
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT % Aligning to the Right
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible % Even at the end of the line
  \once \override Score.RehearsalMark #'direction = #DOWN
  \mark "D.C. al Fine"
}

scoreAViolinI = \relative c'' {
  \global
  a2. \downbow
  a2 (gis4)
  a2.
  a2 (gis4)
  c4. (b8) a4
  d4 e4 f4
  e2 (d4)
  c2 (c8) e8
  a4 b4 c4
  d4 d8 (c8) b8 a8
  gis4 (b4 b4)
  d,4 b'4 gis4
  a4 g8 (f8) e8 d8
  cis4 a4 cis4
  d2.
  (d2.
  \mark "Fine" \bar "||"
  d4) c8 (b8) c4
  a4 fis4 a4
  g8. (a16) b8. (c16) d8 f8
  e8 d8 c8 b8 a4
  g8. (a16) b4 g4
  gis8. (a16) b4 d4
  c4. (b8) a4
  a2 (gis4)
  \dc
  \bar "|."
}

scoreAViolinII = \relative c' {
  \global
  e2. \downbow
  e2 (d4)
  e2.
  e2 (d4)
  f2.
  gis4 (b4) a4 \upbow
  gis4 (a4) d,4 \upbow
  e2.
  c'4 b4 a4
  f'4 e4 d4
  e2.
  b4 (b4) d4
  c2.
  a2.
  a2.
  f2.
  \bar "||"
  a2.
  d,2.
  g2 b4
  a2.
  e4 (e4 e4)
  e4 (e4 e4)
  f2 (g4)
  e2 (d4)
}

scoreAViolaI = \relative c' {
  \global
  c2. \downbow
  d2.
  c2.
  d2.
  a'2.
  e2 f4
  e2.
  (e2.)
  e4 f4 e4
  d2. e2.
  e4 e4 d4
  a'2.
  a2.
  g4 f8 e8 f4
  d2.
  \bar "||"
  e2.
  c2.
  b2.
  c2.
  b4 (b4 b4)
  b4 (b4 b4)
  c2.
  b2.
}

scoreAViolaII = \relative c' {
  \global
  a2. \downbow
  b2.
  a2.
  b2 e4
  f2.
  e2 d4
  c2 gis4
  a2.
  a4 gis4 a4
  d,4 d8 e8 f8 a8
  b2.
  e,4 gis4 b4
  c2.
  e,2.
  d2.
  d2.
  \bar "||"
  a'2.
  d,2.
  g2 gis4
  a2.
  g4 (g4 g4)
  gis4 (gis4 gis4)
  a2.
  b2.
}

scoreAViolinIPart = \new Staff \with {
  instrumentName = "Violin I"
  midiInstrument = "violin"
} \scoreAViolinI

scoreAViolinIIPart = \new Staff \with {
  instrumentName = "Violin II"
  midiInstrument = "violin"
} \scoreAViolinII

scoreAViolaIPart = \new Staff \with {
  instrumentName = "Viola I"
  midiInstrument = "viola"
} { \clef alto \scoreAViolaI }

scoreAViolaIIPart = \new Staff \with {
  instrumentName = "Viola II"
  midiInstrument = "viola"
} { \clef alto \scoreAViolaII }

\score {
  <<
    \scoreAViolinIPart
    \scoreAViolinIIPart
    \scoreAViolaIPart
    \scoreAViolaIIPart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
