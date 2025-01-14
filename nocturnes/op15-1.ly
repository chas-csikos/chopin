\version  "2.24.4"
\language "english"

\include "include/paper.ily"
\include "include/layout.ily"

\header {
  title       = "Trois Nocturnes"
  composer    = "Chopin"
  opus        = "Op. 15–1"
  dedication  = "A son ami Ferdinand Hiller"
}

\paper{
  min-systems-per-page = #6
  max-systems-per-page = #7
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

global = {
  \tempo "Andante cantabile" 4=69
  \time  3/4
  \key f \major
}

upOne = \relative c'' {
  \global
  \partial 4 c4( |
  \barNumberCheck #1
    f2 e4 |
    d4 e c) |
    d8.( e16 f4 g |
    a2.) |
    g4( a8. g16 \tuplet 3/2 { g8 f e } |
    f4. e8 \tuplet 3/2 { d8 e f}) |
    e2( \tuplet 3/2 { e8 d a } |
    g2) \tuplet 3/2 { c8( d8. c16 } |
    \grace c8 f2) \scaleDurations 2/3 { \tuplet 3/2 { e16( f e  } g8) r8 } |
    \scaleDurations 2/3 { \tuplet 3/2 { d16( e d } f8) r8 } e4( c) |
    d8.( e16 f4 g |
    a2.) |
    bf2( a4 |
    g4 \grace { a8 g f g } a4 f) |
  \barNumberCheck #15
    \grace a,8 c4( f e |
    g2.) |
    bf2( a4 |
    g4 \grace { a8 g fs g } a4 f |
    c)
    g'4( ~ g8. f16 |
    f4) d'2*1/2(  \tiny \tuplet 8/2 {  \once \override TextScript.avoid-slur = #'inside \once \override TextScript.outside-staff-priority = ##f e,8^\markup {\italic \small "dolciss."} f e d e g f d } |
    \normalsize
    c4) g'( ~ g8. f16 |
    f2 e4 |
    d4 e c |
    d4 e) \once\oneVoice r4\fermata
  \bar "||"
  \key f \minor
  \barNumberCheck #25

  \key f \minor
  \scaleDurations 2/3 {
    <af,, f'>16^( <c af'>
      \repeat unfold 8 { <af f'>16 <c af'> } |
    \repeat unfold 8 { <bf f'>16 <df af'> } <bf f'>16 <df af'>) |
    <bf g'>16^( <f' bf> \repeat unfold 8 { <bf, g'> <f' bf> } |
    \repeat unfold 6 { <bf, gf'>16 <ef bf'> } <a, gf'> <ef' a>
      <a, gf'> <ef' a> <a, gf'> <ef' a>) |
    <f c'>16( <a f'> <f c'> <a f'> <f c'> <a f'>
      <f df'> <bf f'> <f df'> <bf f'> <f df'> <bf f'>
      <f df'> <cf' f> <f, df'> <cf' f> <f, df'> <cf' f> |
    <f, df'>16 <cf' f> <f, df'> <cf' f> <f, df'> <cf' f>
      <gf df'>\< <cf gf'> <gf df'> <cf gf'> <gf df'> <cf gf'>
      <af df> <cf af'> <af df> <cf af'> <af df> <cf af'>\! |
  }
  \voiceOne
  af'8. bf16 gf4 f |
  ef4 f2) |

  \barNumberCheck 33
  af8.( bf16 gf4 f |
  ef4 f2 |
  gf8. af16 \scaleDurations 2/3 { f8) \hideNotes s ef( } s4 |
  \unHideNotes
  \time 6/8
  \barNumberCheck 36
  af,8 gf f gf f e)
  \time 3/4
  \scaleDurations 2/3 {
    \oneVoice
    <af, f'>16^( <c af'> \repeat unfold 8 { <af f'>16 <c af'> } |
    \repeat unfold 8 { <bf f'>16 <df af'> } <bf f'>16 <df af'>) |
    <bf g'>16^( <f' bf> \repeat unfold 8 { <bf, g'> <f' bf> } |
    \repeat unfold 6 { <bf, gf'>16 <ef bf'> } <a, gf'> <ef' a>
      <a, gf'> <ef' a> <a, gf'> <ef' a>) |
      \barNumberCheck 41
    <c af'>16^( <gf' c> <c, af'> <gf' c> <c, af'> <gf' c>
      <df af'> <gf df'> <df af'> <gf df'> <df af'> <gf df'>
      <ef af> <gf ef'> <ef af> <gf ef'> <ef af> <gf ef'> |
    \repeat unfold 8 { <ef af> <gf ef'> } <ef af> <gf ef'>) |
    r16 <af d>^( <d, bf'> <af' d> <d, bf'> <af' d>
      <ef bf'> <af ef'> <ef bf'> <af ef'> <ef bf'> <af ef'>
      \stemUp
      <f bf> <af f'> <f bf> <af f'> <f bf> <af f'> |
    \repeat unfold 8 { <f bf> <af f'> } <f bf> <af f'>) |
  }
  \voiceOne
  f'8.->( gf16 ef4) f8.->( gf16 |
  ef4) ef8.( f16 df4~ |
  df4) c8.( df16 bf4~ |
  \time 6/8
  bf4. a4 g8) |

  \barNumberCheck 49
  \key f \major
  \time 3/4
  \oneVoice
  \stemNeutral
  \tempo "a Tempo primo" 4 = 69
  \appoggiatura { \slurUp c,8*1/64[ f a] } f'2( e4 |
  d4 e c) |
  d8.( e16 f4 g |
  a2.) |
  g4( a8. g16 \scaleDurations 2/3 { g8 f e } |
  f4. e8 \undo \omit TupletNumber \tuplet 7/4 { d16 e d cs d e f } |
  e4.) e8->~ ( \scaleDurations 2/3 { e8 d a } |
  b2 \scaleDurations 2/3 { c8~[ \scaleDurations 2/3 {
    c16 b c \acciaccatura { \slurUp c8 } e16 d c)] } } \slurNeutral |

  \barNumberCheck 57
  f2( \scaleDurations 2/3 { \scaleDurations 2/3 { e16[ f e } g8)] r } |
  \scaleDurations 2/3 { \scaleDurations 2/3 { d16([ e d } f8)] r } e4( c) |
  d8.( e16 f4 g |
  a2.) |
  bf2( a4 |
  g4 \grace { a8 g f g } a4\! f) |
  \grace { a,8^( } c4 f e |
  g2.) |

  \barNumberCheck 65
  bf2( a4 |
  g4 \grace { a8 g fs g }
    a4 f |
  c4) g'~( g8. f16 |
  f4) d'2*1/2->\( \omit TupletNumber \magnifyMusic 0.63 {
    \tuplet 8/2 { \stemUp e,8_(
                  f e d e \slashedGrace { e } g f d) } } |
  \stemNeutral c4\) g'4~( g8. f16 |
  f2 e4 |
  d4 e c |
  d4 e c) |

  \barNumberCheck 73
  \staffTwo \grace { \stemUp f,,,8*1/64^( c' g' bf c
                      \staffOne \stemDown e bf' c) } g'2.\( |
  \staffTwo \grace { \stemUp f,,,8*1/16^( c' a'
                      \staffOne \stemDown c f a c) } f2.\) |
  \bar "|."
}

downOne = \relative c' {
  \global
  \partial 4 r4 |
  \barNumberCheck #1
  \voiceOne
  \shiftOff
  \override Staff.Beam.collision-voice-only = ##t
    <f a,>4 <f a,> <e a,> |
    <d a> <e g,> <c g> |
    <d g,> <e g,> <c g> |
    <c f,> <cs g> <d f,> |
    <b f> <bf f> <bf e,> |
    <a e> <a d,> <a d,> |
    <gs d> <a c,> a |
    gs <e' gs,> <e bf> |
    <f a,> <f a,> <e a,> |
  \barNumberCheck #10
    <d a> <e g,> <c g> |
    <d g,> <e g,> <c g> |
    <c f,> <cs g> <cs g> |
    <df g,> <c g> <d a> |
    <e bf> <f a,> <gs b,> |
  \barNumberCheck #15
    s <f a,> <e g,> |
    <df g,> <df g,> <df g,> |
    <df \tweak duration-log 2 g,>2 * 1/2 g,4 <df' gf,> |
    <cs g> <c fs,> <b f> |
    c,2.*1/3 <f' bf,>4 <e bf>|
  \barNumberCheck #20
    <f a, >4 s <d f,> |
    s2.*1/3 <f bf,>4 <e bf> |
    <f a,> <f a,> <e a,> |
    <d a> <e g,> <c g> |
    <d g,> <e g,> \once\oneVoice r\fermata|
  \bar "||"
  \barNumberCheck #25
  \key f \minor
  \scaleDurations 2/3 {
    \voiceThree
    c,16 _( b c df c b  c bf af g f e  f ef df c bf af) |
    f16_([\< df' f bf df) r32 f-^]\!
  } \oneVoice f4-> r |
  \scaleDurations 2/3 {
    \voiceThree
    df16_( c df ef df c  df c bf a bf af  g f ef df c bf) |
    f16-^[\< gf'_( c ef gf) r32 c-^]\!
  } \oneVoice c4-> r |
  \voiceThree
  c8.( df16 bf4 af) |
  af8.( bf16 gf4 f~ |
  f4) gf( af |
  bf4 af df) |

  \barNumberCheck 33
  \grace { df,,8 } f'4( gf af |
  bf4 af df) |
  \oneVoice
  \scaleDurations 2/3 { \slashedGrace { c,8 } e'16 c e c e c } <f, f'>8 r r4 |
  \time 6/8
  R2. |
  \time 3/4
  \scaleDurations 2/3 {
    \voiceThree
    c16 _( b c df c b  c bf af g f e  f ef df c bf af) |
    f16_([\< df' f bf df) r32 f-^]\!
  } \oneVoice f4-> r |
  \scaleDurations 2/3 {
    \voiceThree
    df16_( c df ef df c  df c bf a bf af  g f ef df c bf) |
    f16-^[\< gf'_( c ef gf) r32 c-^]\!
  } \oneVoice c4-> r |

  \barNumberCheck 41
  \voiceThree
  ef,8. f16_( df4) c |
  <b, b'>8. <c c'>16_( <af af'>2) |
  f''8. gf16_( ef4) d |
  <cs, cs'>8. <d d'>16_( <bf bf'>2) |
  \scaleDurations 2/3 {
    \oneVoice
    \slashedGrace { bf'8 } d'16 bf d bf d bf  <ef, ef'> bf' ef bf ef bf
      \slashedGrace { bf,8 } d'16 bf d bf d bf |
    <ef, ef'> bf' ef bf ef bf  \slashedGrace { af,8 } c'16 af c af c af
      <df, df'> af' df af df af |
    df16 af df af df af  \slashedGrace { f,8 } a'16 f a f a f
      <bf, bf'> f' bf f bf f |
  }
  \time 6/8
  \repeat unfold 6 { bf f }

  \barNumberCheck 49
  \key f \major
  \time 3/4
  \voiceThree
  \grace { s8*1/64 s s } s4 <a f'> <a e'> |
  <a d>4 <g e'> <g c> |
  <g d'>4 <g e'> <g c> |
  <f c'>4 <g cs> <f d'> |
  <f b>4 <f bf> <e bf'> |
  <e a>4 <d a'> q |
  <d gs>4 <c a'> a' |
  gs4 <gs e'> <bf e> |

  \barNumberCheck 57
  <a f'>4 q <a e'> |
  <a d>4 <g e'> <g c> |
  <g d'>4 <g e'> <g c> |
  <f c'>4 <g cs> q |
  <g df'>4 <g c> <a d> |
  <bf e>4 <a f'> <b gs'> |
  s4 <a f'> <g e'> |
  <g df'>4 q q |

  \barNumberCheck 65
  <\tweak duration-log 2 g df'>2 * 1/2 g4 <gf df'> |
  <g cs>4 <fs c'> <f b> |
  c2. * 1/3 <bf' f'>4 <bf e> |
  <a f'>4 s <f d'> |
  c,2. * 1/3 <bf'' f'>4 <bf e> |
  <a f'>4 q <a e'> |
  <a d>4 <g e'> <g c> |
  <g d'>4 <g e'> <g c> |

  \barNumberCheck 73
  s2. |
  s2. |
}

downTwo = \relative a {
  \global
  \voiceFour
  \shiftOff
  \partial 4 s4
  \tuplet 3/2 { a8 c c } \tuplet 3/2 { a8 c c } \tuplet 3/2 { a8 c c } |
  \scaleDurations 2/3 {
    a8 bf bf g bf bf g bf bf |
    g8 bf bf g bf bf g bf bf |
    f8 a a g a a f a a |
    f8 g g f g g e g g |
    e8 f f d f f d f f |
    d8 e e c e e <a b, f>\arpeggio d, d |
    <gs b, e,>\arpeggio b b gs b b bf c c |
    \barNumberCheck 9
    a8 c c a c c a c c |
    a8 bf bf g bf bf g bf bf |
    g8 bf bf g bf bf g bf bf |
    f8 a a g a a g a a |
    g8 bf bf g bf bf a c c |
    bf8\< c c a c c b d d\! |
    c,8 c' c a c c g c c |
    g8 b b g b b g bf bf |

    \barNumberCheck 17
    g8 bf bf g bf bf gf a a |
    g8 a a fs a a f g g |
    c,8 c' c bf c c bf c c |
    a8 c c b,^. af' af f af af |
    \once \stemUp c,,8 c''^. c^. bf c c bf c c |
    a8 c c a c c a c c |
    a8 bf bf g bf bf g bf bf |
  }
  g8[ bf] g[ bf] s4 |
}

downThree = \relative f {
  \global
  \partial 4 s4
  \voiceTwo
  \override NoteColumn.force-hshift = #0.5
  f2. |
  f2. |
  \once\override NoteColumn.force-hshift = #1
  f2. |
  \once\override NoteColumn.force-hshift = #0
  \once\override Stem.length = #7.5
  f4 \override NoteColumn.force-hshift = #0.5 e d |
  d4 d c |
  c4 b2 |
  b4 a s |
  s4 s g' |
  \barNumberCheck 9
  f2. |
  f2 \override NoteColumn.force-hshift = #1 f4 |
  f2 f4 |
  f4 \override NoteColumn.force-hshift = #0.5 e2 |
  e2 fs4 |
  g4 f s |
  s2. |
  \once\override NoteColumn.force-hshift = #1
  f2 e4 |
  \barNumberCheck 17
  ef2 ef4 |
  ef4 d d |
  s4 g s |
  f4 s2 |
  \once\revert NoteColumn.force-hshift
  c,2.*1/3 g''4 s |
  \shape #'( (-0.5 . -1.5) (-0.5 . -2) (0 . -2) (0 . -1.5) ) Tie
  f2. ~ |
  f2. |
  \override NoteColumn.force-hshift = #1
  f4 f s |
  \barNumberCheck 25
  \key f \minor
}

\score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with {} <<
      \upOne
    >>
    \new Staff = "Down" \with {\clef bass} <<
      \downOne
      \downTwo
      \downThree
    >>
  >>
  \layout{
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    \override TupletNumber.whiteout = #1
  }
}
