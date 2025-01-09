\version "2.24.3"
\language "english"

\include "include/paper.ily"
\include "include/layout.ily"

\header {
  title = "Nocturne 1"
  composer = "Chopin"
  dedication = "A Madame Camilla Pleyel"
  opus = "Op. 9-1"
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

soprano = \relative bf'' {
  \key df \major
  \time 6/4
  \tempo "Larghetto"
  \oneVoice
    \partial 2.  bf8( c8 df8 a8 bf8 gf8 |
    f4-. f4-. f4) -. f4( gf8 f8 ef8 c8 ) |
    df2( bf4) \tuplet 11/6 { bf'8( c df a bf a gs a c bf gf } |
    \tuplet 22/12 { f8-. gf-. e-. f-. bf-. a-. af-. g-. gf-. f-. e-. ef-. d-. df-. c-. df-. c-. b c f e ef) } |
    df2( bf4) bf'-.( bf-. bf-.) |
  \voiceOne
    af1 ~ af4. gf8 |
  \oneVoice
    f2. ef4( f8 ef df bff |
    af2) df4( ef f8 ef df ef |
    f2.) bf8( c df a \grace c bf g |
    f4-.)( f-. f-.) f( gf8 f ef c) |
  \barNumberCheck #10
    df2 ( bf4 ) \tuplet 11/6 { bf'8( c8 df8 a8 bf8 a8 gs8 a8 c8 bf8 gf8 } |
    \tuplet 3/2 { f-!)[
    \ottava #1
        f''( e] } %\bar"'"
      \tuplet 3/2 { ef[ df c] } %\bar"'"
      \tuplet 3/2 { bf[ gf f] } %\bar"'"
    \ottava #0
      \tuplet 3/2 { e[ ef df] } %\bar"'"
      \tuplet 3/2 { c[ bf a] }  %\bar"'"
      \tuplet 3/2 { gf[ ef c]) } |
    df2( bf4) bf'-.( bf-. bf-.) |
    bf2( d,4) ef\trill( d8 ef gf8. f16) |
    f2( e4) \grace { f8 gf! } \tuplet  7/6 { f8( e f g a-. bf-. c-. } |
  \barNumberCheck #15
    df2 \tuplet 3/2 { bf8 gf bf, } )  df2( c4) |
    \slashedGrace bf8 f''4.( df8) \tuplet 3/2 { bf[( gf bf,]) } df2( c4) |
    \slashedGrace bf8 \ottava #1 df''4 ~ \tuplet 3/2 { df8[ bf-. gf-.] } \ottava #0 \tuplet 3/2 { df-.[ bf-. bf,-.] } cf2( a4 |
    bf2.) r2 r4 |
    <f f'>2.( <ff ff'> |
    <ef ef'>8 <f f'> <ef ef'>4 <c c'> <bf bf'> <af af'>2 |
    <bf bf'>4 <c c'>2 <df df'>4 <ef ef'>2) |
    <f f'>8( <gf gf'> <bf bf'>4 <af af'> <f f'>2.) |
    <f f'>2. <e e'> |
    <d d'>8( <e e'> <d d'>4 <a a'> <b b'>2.) |
  \barNumberCheck #25
    <d d'>8( <e e'> <d d'>4 <a a'>) \once \slurDashed 
  \tempo "a tempo"
      <bf bf'>2.( |
    <c c'>2. <df df'>) |
    <f f'>2.( <ff ff'> |
    <ef ef'>8 <f f'> <ef ef'>4 <c c'> <bf bf'> <af af'>2 |
    <bf bf'>4 <c c'>2 <df df'>4 <ef ef'>2) |
  \barNumberCheck #30
    <f f'>8( <gf gf'> <bf bf'>4 <af af'>) \slashedGrace <af af'>8 <f f'>2. |
    <f f'>2. <e e'> |
    <d d'>8( <e e'> <d d'>4 <a a'> <b b'>2.) |
    <d d'>8( <e e'> <d d'>4 <a a'>) \once \slurDashed <bf bf'>2.( |
    <c c'>2. <df df'>) |
  \barNumberCheck #35
    <ef ef'>2.( <f f'> |
    \once\stemDown <gf gf'>4 <f f'>8 <gf gf'> <af af'> <bf bf'> <bf bf'>4 \once\stemDown <ef, ef'>) <af af'> ~ |
    <af af'>4( <bf bf'>8 <af af'> <gf gf'> <f f'>) <f f'>4( <gf gf'>8 <f f'> <ef ef'> <df df'>) |
    <ef ef'>1 ~ 
  \stemDown
      <ef ef'>4 \once\slurDashed <e e'>( |
    <f f'>2. <e e'>)|
  \stemNeutral
  \barNumberCheck #40
    <d d'>8( <e e'> <d d'>4 <a a'> <b b'>2.) |
    <d d'>8( <e e'> <d d'>4 <a a'>) 
  \tempo "a tempo"
      <bf bf'>2.( |
    <c c'>2. <df df'>) |
    <ef ef'>2.( <f f'> |
    <gf gf'>4 <f f'>8 <gf gf'> <af af'> <bf bf'> <bf bf'>4 \once\stemDown <ef, ef'>) <af af'> ~ |
    <af af'>4( <bf bf'>8 <af af'> <gf gf'> <f f'>) <f f'>4( <gf gf'>8 <f f'> <ef ef'> <df df'>) |
    <ef ef'>1 ~ 
  \stemDown
      <ef ef'>4 <e e'>( |
    <f f'>2. <e e'>)|
  \stemNeutral
    <d d'>8( <e e'> <d d'>4 <a a'> <b b'>2.) |
    <d d'>8( <e e'> <d d'>4 <a a'>) 
  \tempo "a tempo"
      \once\slurDashed <bf bf'>2.( |
  \barNumberCheck #50
    <c c'>2. <df df'>) |
  \voiceOne
    \once\slurDashed f'2( ef8 f ) \once\slurDashed ef2( df4) |
  \oneVoice
    <cf af'>4.( <df bf'>8 <cf af'> <df bf'> <cf af'>4.) r8 r4 |
  \voiceOne
    \once\slurDashed f2( ef8 f ) \once\slurDashed ef2( df4) |
  \oneVoice
    <cf af'>8( <df bf'> <cf af'> <df bf'> <cf af'> <df bf'> <cf af'>2.) |
  \barNumberCheck #55
    <df' f>4.( <cf ef>8 <af cf> <ef af> <cf f>2) <cf ef gf>4( |
  \voiceOne
    <bf' gf>2. <f af> ) |
  \oneVoice 
    \once\slurDashed <df f>4.( <cf ef>8 <af cf> <f af> <cf f>2)
  \voiceOne 
      <ef gf>4( |
    <gf bf>2. <f af>) |
  \oneVoice
    R1.
  \barNumberCheck #60
    R1.
    <df' f>2( <af ef'>8 <df f>) <af ef'>2( \once\stemDown <f df'>4) |
    <ef' af>4.( <bf' gf>8 <f af> <bf gf> <f af>4.) r8 r4 |
    <df f>2( <af ef'>8 <df f>) <af ef'>2( \once\stemDown <f df'>4) |
    <f' af>8( <gf bf> <f af>8 <gf bf> <f af>8 <gf bf> <f af>2.) |
  \barNumberCheck #65
    <df' f>4.( <af ef'>8 <f df'> <af f>) <df, f>2( <ef gf>4 |
    <gf bf>2. <f af>) |
    <df f>1. ~ |
    <df f>1. ~ |
    <df f>1. |
  \barNumberCheck #70
    r2 r4 bf'8( af df a-> bf-> gf) |
    f4-.( f-. f-.) f( gf8 f ef c |
    df2 bf4) \once\slurDashed bf'8( c df a \tuplet 3/2 {c bf gf}) |
    \once\omit TupletBracket
    \tuplet 3/2{ f( gf e } \tuplet 3/2 { f[) \ottava #1 f''( e] } \tuplet 3/2 { ef[ df c] }  \tuplet 20/6 { bf a gf f e ef df c \ottava #0 bf a gf f gf e f b, c f ef df }  |
    df2) bf4( bf') bf-.( bf-.) |
    bf2( d,4) \once \override TupletNumber.text = "(7)" \tuplet 7/6 { ef8( f ef d ef gf8. f16) } |
    f2( e4)  
    \once \override Script.script-priority = #-100
      f^\markup { \teeny\parenthesize\flat }\trill \grace { e16 f } g8 a bf c |
    df2 \tuplet 3/2 { bf8( gf bf,) } df2( c4) |
    \slashedGrace bf8 \once\slurDashed f''4.( df8) \tuplet 3/2 { bf[( gf bf,]) } df2( c4) |
    \slashedGrace bf8 \ottava #1 df''4 ~
      \once \override TupletNumber.text = "(3)"
      \tuplet 3/2 { df8 bf-. gf-. } \ottava #0 \once \override TupletNumber.text = "(3)" \tuplet 3/2 { df-. bf-. bf,-. }  cf2( a4 |
    bf2.) cf2( a4 |
    bf2.) cf16 ef f cf ef8 r4 a,8( |
    bf2) r4 <ef' gf>2. ~ |
    <ef gf>8 <cf ef>-> <a cf>-> <gf a>-> <ef gf>-> <cf ef>-> <a f>-> <f a>-> <ef gf>-> <cf ef>-> \staffTwo\voiceOne <a cf>-> <gf a ef'>-> |
    <f bf d>2.( <f bf d>4-. <f bf d>-. <bf d>-.)
    <d, f bf d>1.\arpeggio
}

alto = \relative bf'{
  \key df \major
  \time 6/4
  \tempo "Larghetto"
  \partial 2.
  s2. |
  s1.*4 |
  r2 r4 df4 bf8[ c df gf] |
  s1.*9 |
  \staffTwo\voiceOne
  \mergeDifferentlyHeadedOn
  s2. s8 f,,2 s8 |
  s2. s8 f2   s8 |
  s2. s2 f4 |
  s1.*32
  \barNumberCheck #50
  s1. |
  \staffOne\voiceTwo
  <f' cf'>2. <f cf'> |
  s1.
  <f cf'>1 <f cf'>2 |
  s1.*2
  \barNumberCheck #56
  cf'1. |   
  s2. s2 cf,4 ~ |
  cf1. |
  s1.*11
  \staffTwo\voiceOne
  \omit TupletNumber \omit TupletBracket
  s2 s8 \times 1/2 { bf,4 df f } s2 |
  s1.*6
  s2. s8 f2 s8 |
  s2. s8 f2 s8 |
  s2. s8 s4. f4 |
  \voiceThree
  s1.*4 s2. s2 gf8 f
}

bass = \relative c {
  \key df \major
  \time 6/4
  \tempo "Larghetto"
  \barNumberCheck #1
    r2 r4 |
  \shape #'((0 . -1.75) (0.5 . 2) (2.25 . 2.25) (0 . -2.75) ) Slur
    bf8( f' df' bf f' f,)
  \shape #'((0 . -1.75) (0 . 2) (2.5 . 2) (0 . -2.25) ) Slur
    bf,( f' ef' a, f' f,) |
  \shape #'((0 . -1.75) (0.5 . 2) (2.25 . 2.25) (0 . -2.75) ) Slur
    bf,8( f' df' bf f' f,) bf,( f' df' bf f' f,) |
    bf,8( f' df' bf f' f,) bf,( f' ef' a, f' f,) |
    bf,8( f' df' bf f' f,) bf,( f' df' bf f' f,) |
  \barNumberCheck #5
    df,8( f' df' bf f' f,) gf,( df' bf' gf df' df,) |
    df,8( df' af' f df' df,) gf,8( df' bff' gf df' df,) |
    df,8( df' af' f df' df,) gf,8( df' bff' gf ef' c,) |
    f,8( c' a' f ef' a,) bf,8( f' df' bf f' f,) |
    bf,8( f' df' bf f' f,) bf,( f' ef' a, f' f,) |
  \barNumberCheck #10
    bf,8( f' df' bf f' f,) bf,( f' df' bf f' f,) |
    bf,8( f' df' bf f' f,) bf,( f' ef' a,  f' f,)
    bf,8( f' df' bf f' f,) bf,( f' df' bf f' f,) |
    bf,8( f' d' bf af' f,) bf,( f' ef' bf gf' ef) |
    c,8( g' e' cf bf' cf,) f,( cf' 
  \clef treble 
      a' ef c' f,) |
  \barNumberCheck #15
  \clef bass
    bf,,8( f' df' bf ef, gf') f,,( f' bf f' ef a,) |
    bf,8( f' df' bf ef, gf') f,,( f' bf f' ef a,) |
    gf,( df' gf bf ff' gf,) ef( gf cf ef) f, ef' |
  %\stemDown
    bf,8( f' ef' bf f' df bf f df bf f ef) |
    df8( af' df af' df, af) df,( af' df aff' df, af!) |
  \barNumberCheck #20
    df,8( af' c gf' c, af) df,8( af' c gf' c, af) |
    df,8( af' c gf' c, af) df,8( af' c gf' c, af) |
    df,8( af' ef' af c, af) df,( af' df af' df, af) |
    df,8( af' ef' af c, af) cs,( a' cs g' cs, a) |
    d,8( a' d fs d a) d,( g d' g d g,) |
  \barNumberCheck #25
    d8( a' d fs d a) a( cs e bf' e, cs) |
    af8( ef' gf bff af af,) df,( af' df af' df, af) |
    df,8( a' df af' df, af) df,( af' df aff' df, af) |
    df,8( af' c gf' c, af) df,( af' c gf' c, af) |
    df,8( af' c gf' c, af) df,( af' c gf' c, af) |
  \barNumberCheck #30
    df,8( af' ef' af c, af) df,( af' df af' df, af) |
    df,8( af' df af' df, af) cs,( a' cs g' cs, a) |
    d,8( a' d fs d a) d,( g d' g d g,) |
    d8( a' d fs d a) g( cs e bf' e, cs) |
    af8( ef' gf bff af af,) df,( af' df af' df, bf!) |
  \barNumberCheck #35
    af8( ef' af c af ef) af,( d f bf f d) |
    gf,8( bf ef bf' ef, bf) gf( c ef af ef c) |
    f,8( af df af' df, af)  df,( af' df af' df, af) |
    df,8( bf' ef g ef bf) df,( a' c gf' c, af) |
    df,( af' df af' df, af) cs,( a' cs g' cs, a) |
  \barNumberCheck #40
    d,8( a' d fs d a) d,( g d' g d g,) |
    d8( a' d fs d a) g( cs e bf' e, cs) |
    af8( ef' gf bff af af,) df,( af' df af' df, bf!) |
    af8( ef' af c af ef) af,( d f bf f d) |
    gf,8( bf ef bf' ef, bf) gf( c ef af ef c) |
  \barNumberCheck #45
    f,8( af df af' df, af)  df,( af' df af' df, af) |
    df,8( bf' ef g ef bf) df,( a' c gf' c, af) |
    df,( af' df af' df, af) cs,( a' cs g' cs, a) |
    d,8( a' d fs d a) d,( g d' g d g,) |
    d8( a' d fs d a) g( cs e bf' e, cs) |
  \barNumberCheck #50
    af8( ef' gf bff af af,) df,( af' df af' df, bf!) |
    df,8( af' df af' df, af) df,( af' df af' df, af) |
    df,8( af' df af' df, af) df,( af' df af' df, af) |
    df,8( af' df af' df, af) df,( af' df af' df, af) |
    df,8( af' df af' df, af) df,( af' df af' df, af) |
  \barNumberCheck #55
    df,8( af' df af' df, af) df,( af' df af' df, af) |
    df,8( af' df af' df, af) df,( af' df af' df, af) |
    df,8( af' df af' df, af) df,( af' df af' df, af) |
    df,8( af' df af' df, af) df( af' df af df, af) |
    df8( af' df af df, af) df( af' df af df, af) |
  \barNumberCheck #60
    df8( af' df af df, af) df( af' df af df, af) |
    df8( af' df af df, af) df( af' df af df, af) |
    df8( af' df af df, af) df( af' df af df, af) |
    df8( af' df af df, af) df( af' df af df, af) |
    df8( af' df af df, af) df( af' df af df, af) |
    df8( af' df af df, af) df( af' df af df, af) |
    df8( af' df af df, af) df( af' df af df, af) |
    df8 af' df af df, a(  df a' df) a df, af( |
    df8 af' df) af df, gf,( df' gf df') gf, df af( |
    df8 af' df) af df, a( df a' df) a df, a( |
  \barNumberCheck #70
    df8 a' df) a df, bf df( f df' bf f' f,)|
    bf,8( f' df' bf f' f,) bf,( f' ef' a, f' f,) |
    bf,8( f' df' bf f' f,) bf,( f' df' bf f' f,) |
    bf,8( f' df' bf f' f,) bf,( f' ef' a, f' f,) |
    bf,8( f' df' bf f' f,) bf,( f' df' bf f' f,) |
    bf,8( f' d' bf af' bf,) ef,( gf ef' bf gf' ef) |
    c,8( g' 
  \clef treble
      e' c bf' c,) f,( c' a' ef c' f,) |
  \clef bass
    bf,,8( f' df' bf c, gf'') f,,( f' bf f' ef a,) |
    bf,8( f' df' bf c, gf'') f,,( f' bf f' ef a,) |
    gf,( df' gf bf ff' gf,) ef( gf cf ef) f,! ef' |
  \barNumberCheck #80
    bf,8( f' df' bf f' f,) bf,( f' ef' a, f' f,) |
    bf,8( f' df' bf f' f,) bf,( f' ef' a, f' f,) |
    bf,8( f' df' bf f' f,) bf,( gf' a cf ef gf) |
    a4 r r r2 
  \voiceTwo
      r4 |
    <bf,, bf,>2. <bf bf,>4 <bf bf,> <bf bf,>
    bf,1.\arpeggio\fermata \bar "|." |
}

\score {
  \new PianoStaff = "Grand" \with {} <<
    \new Staff = "Up" \with {} <<
      \new Voice \soprano
      \new Voice \alto
    >>
    % \new Dynamics \dynamics
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \bass
    >>
  >>
}