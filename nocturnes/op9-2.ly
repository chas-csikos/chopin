\version "2.24.3"
\language "english"

\include "include/paper.ily"
\include "include/layout.ily"

\header {
  title    = "Nocturne 2"
  composer = "Chopin"
  opus     = "Op. 9–2"
}

\paper {
  ragged-bottom = ##f
  min-systems-per-page = #6
  max-systems-per-page = #7
  ragged-last-bottom = ##f
}
global = {
  \key ef \major
  \time 12/8
  \tempo "Adante" 8 = 132
}

upOne = \relative bf' {
  \global
  \partial 8 bf8
  \barNumberCheck #1
    g'4. ~ g8( f g f4. ef4) bf8( |
    g'4 c,8\turn c'4 g8 bf4. af4 g8) |
    f4. g4( d8) \once\slurDashed ef4.( c) |
    bf8( d') c( bf16 af g af) c,( d ef4.) r4 bf8( |
  \barNumberCheck #5
    g'4. g16) g f\prall e f g f8 ef4 ~ ef16 f ef\prall d ef f |
    g16 b, c df->( c) f->( e) af->( g) df'( c g bf!4.) af4 g8 |
    f4.\startTrillSpan \grace { e16\stopTrillSpan f} g8-. g( d) ef4.( c) |
    bf8( d') c( bf16 af g af \slashedGrace af c, d) ef4. ~ ef8 d( ef |
    f4.) g4( f8) f4.( c) |
  \barNumberCheck #10
  \tempo "poco rit."
    ef8-.( ef-. ef-. ef) d16( ef f16. ef32 ef4.) bf4. |
  \tempo "a tempo"
    \once\slurDashed bf'4.( a4 g8 <f a,>4. <d bf> |
    <ef g,>4.) <d a>8-.( <c a>-. <d a>-. <bf f>-.)
  \tempo "poco rall."
      \once\override DynamicLineSpanner.direction = #UP
        <b fs>-.\<( <b e,>-. <c bf e,>-. <c a f>-. <d af>-.\!) |
  \tempo "a tempo"
    \appoggiatura { g,16 bf ef } g4( a,16 bf cf bf cs d g16. f32) f4 \once\phrasingSlurDashed ef8\( ~ ef16 f ef\prall d ef f |
    g16 b, c df( c) f( e) af( g) df'( c g  bf!4.) af4 g8 |
  \barNumberCheck #15
    f4.\startTrillSpan \) \grace { e16\stopTrillSpan f } g8-. f( d)  \once\slurDashed ef4. c |
    bf8( d') cs-.( \tuplet  13/6 { c16-. b-. bf-. a-. af-. f-. d-. cf->) bf d g f ef } ef4. ~ ef8 d e |
    f4.( g4 f8) f4.( c) |
    \tuplet 4/3 { ef8( ef ef ef } ef d16 ef f16. ef32 ef4.) bf |
    \once\slurDashed bf'4.( a4 g8 <f a,>4. <d bf> |
  \barNumberCheck #20
    <ef g,>4.) <d a>8-.( <c a>-. <d a>-.
  \tempo "poco rall."
      <bf f>-.) <b fs>-.(
      \once\override DynamicLineSpanner.direction = #UP
        <b e,>\< <c bf e,>-. <c a f>-. <d af>-.\!) |
  \tempo "a tempo"
    \once\phrasingSlurDashed \appoggiatura { g,16\( bf ef } g4 a,16( bf cf-> bf cs d g16.-> f32) f4 ef8 ~ ef16 f
      \once\override Script.avoid-slur = #'inside
      ef\trill d ef f |
    g16\) b, c df->( c) f->( e) af->( g) df'->( c g \slashedGrace g8 bf!4.) af4 g8 |
    f4.\startTrillSpan \grace { e16\stopTrillSpan f } g8-! g( d) \once\slurDashed ef4.( c) |
    bf16( d'8 cs16.-. c16-. b32-. bf16-.[ a-.]) af32-! a,( bf b
      \once\override TupletNumber.text = "(3)"
      \tuplet 3/2 { c cs d }
      \tuplet 3/2 { g f ef) }
      ef2. |
  \barNumberCheck #25
    ef4. f8( ef f g2.) |
    ef4. ~ ef16( f ef) f( ef f g4) ef8\turn( ef'8) d c |
    bf4 a8( af) c, d ef f16 ef\parenthesize\mordent d ef \acciaccatura ef8 g'-. f16-.( ef-. d-. c-. |
    cf8 bf bff) bff16( af) af( g) g16.( f32 ef2.) |
    ef4. ~ \tuplet 8/4 { ef16 f ef( f ef) f( ef f) } g4. r r8 |
  \barNumberCheck #30
    ef8-! af,16( bf af g af cf ef af ef) r32 f\( g8( ef)\)
  \ottava #1
      <ef'' ef,>4 <d d,>8 <c c,> |
    <cf cf,>8 <bf bf,> <bff bff,> <af af,> <g g,> <d d,> \once\stemDown <ef ef,> <ef' ef,>4. <f, f,>8 <c' c,> |
  \set Score.timing = ##f
    <cf cf,>2. <d d,>\fermata \bar""
    %after grace faked to allow system break
    \tiny
    \repeat unfold 12 { cf16[ bf c a] } \bar"" \break cf[ bf d c] bf[ a af g] f[( d ef c] \ottava #0 d8[ a c, d])
  \set Score.timing = ##t
  \normalsize
    \bar"|"
    <ef g,>8( bf g' <ef g,> bf g' <ef g,> bf g' <ef g,> bf g') |
    <ef g,>4. <ef' g,> <ef,, g,>2.\fermata
    \bar "|."
}
downOne = \relative e, {
  \global
  \partial 8 r8
  \barNumberCheck #1
  %\override Beam.auto-knee-gap = #4
    ef8-. <g' ef'>( <bf ef g>) ef,-. <af d>( <cf d af'>) ef,,-. <g' ef'>( <bf ef g>) d,,-. <g' ef'>( <bf ef g>) |
    c,,8 <g'' e'> <bf e g> c, <g' e'> <c e bf'> f,, <f' df'> <bf df e> f, <f' c'> <af c f> |
    bf, <f' d'> <bf d af'> b, <g' f'> <d' f g> c, <g' ef'> <c ef g> a, <gf' ef'> <c ef gf> |
    bf, <f' ef'> <bf ef af> bf,, <f'' d'> <bf af'> ef,, <g' ef'> <bf ef g> ef, <f ef'> <bf ef af>
    ef,8-. <g ef'>( <bf ef g>) ef,-. <af d>( <cf d af'>) ef,-. <g ef'>( <bf ef g>) d,-. <g ef'>( <bf ef g>) |
    c,8 <g' e'> <bf e g> c, <g' e'> <c e bf'> f,, <f' df'> <bf df e> f, <f' c'> <af c f> |
    bf, <f' d'> <bf d af'> b, <g' f'> <d' f g> c, <g' ef'> <c ef g> a, <gf' ef'> <c ef gf> |
    bf, <f' ef'> <bf ef af> bf,, <f'' d'> <bf af'> ef,, <g' ef'> <bf ef g> ef, <g ef'> <bf ef g> |
    bf, <f' d'> <bf d f> bf, <f' d'> <bf d f> a, <f' c'> <c' f> a, <f' c'> <c' f> |
  \barNumberCheck #10
    af, <ef' c'> <af c ef> a,, <ef'' cf'> <af c ef> ef, <g' ef'> <bf ef g> ef, <g ef'> <bf ef g> |
    e,, <e' df'> <bf' df g> e,, <e' c'> <bf' c g'> f, <f' ef'> <c' ef a> g, <g' d'> <bf d bf'> |
    c,, <g'' ef> <c ef g> f,, <f' ef'> <c' ef f> <bf d> <a ds> gs g <f! c' ef> <bf f'> |
    ef,, <g' ef'> <bf ef g> ef, <af d> <bf d a'> ef, <g ef'> <bf ef g> f <g ef'> <bf ef g> |
    c, <g' e'> <bf e g> c, <g' e'> <c e bf'> f,, <f' df'> <bf df e> f, <f' c'> <af c f> |
  \barNumberCheck #15
    bf, <f' d'> <bf d af'> b, <g' f'> <d' f g> c, <g' ef'> <c ef g> a, <gf' ef'> <c ef gf> |
    bf, <f' ef'> <bf ef af> bf,, <f'' d'> <bf d af'> ef,, <g' ef'> <bf g'> ef, <g ef'> <bf g'> |
    bf, <f' ef'> <bf d f> bf, <f' ef'> <bf d f> a, <f' c'> <c' f> a, <f' c'> <c' f> |
    af, <ef' c'> <af c ef> af,, <ef'' cf'> <af cf ef> ef, <g' ef'> <bf ef g> ef, <g ef'> <bf ef g> |
    e,, <e' df'> <bf' df g> e,, <e' c'> <bf' c g'> f, <f' ef'> < c'ef a> g, <g' d'> <bf d bf'> |
  \barNumberCheck #20
    c,, <g'' ef'> <c ef g> f,, <f' ef'> <c' ef f> <bf d> <a ds> gs g <f c' ef!> <bf f'> |
    ef,,-. <g' ef'> <bf ef g> ef,-. <af d>( <bf d af'>) ef,-. <g ef'>( <bf ef g>) d,( <g ef'> <bf ef g>) |
    ef,-. <g e'>( <bf e g>) ef,-.( <g ef'> <c ef bf'>) f,, <f' bf df> <bf df ef> f, <f' c'> <af c f> |
    bf, <f' d'> <bf d af'> b, <g' f'> <d' f g> c, <g ef'> <c' ef g> a, <gf' ef'> <c ef gf> |
    bf, <f' ef'> <bf ef af> bf,, <f'' d'> <bf d af'> ef,,-. <g' ef'>( <bf ef g>) ef,-. <g ef'>( <bf ef g>) |
  \barNumberCheck #25
    ef,, <af' cf ef> <cf ef af> ef, <af cf ef> <cf ef af> ef,,-. <g' ef'>( <bf ef g>) ef,-. <g ef'>( <bf ef g>) |
    ef,, < af' cf ef> <cf ef af> ef, <af cf ef> <cf ef af> ef,, <g' bf ef> <bf ef g> ef, <g ef'> <bf ef g> |
    ef, <f d'> <bf af'> ef, <f d'> <bf af'> ef, <g ef'> <bf g'> a, <f' ef'> <c' ef f> |
    bf, <f' ef'> <bf ef af> bf,, <f'' d'> <bf d af'> ef,, <g' ef'> <bf ef g> ef, <g ef'> <bf ef g> |
    af,, <ef'' af cf> <af cf ef> <cf ef af> <af cf ef> <ef af cf> ef, <g' ef'> <bf ef g> ef, <g ef'> <bf ef g> |
  \barNumberCheck #30
    af,, <ef'' af cf> <af cf ef> <ef af cf> <af cf ef> <ef af cf> ef, <g' ef> <bf ef g> a, <f' ef'> <c' ef f> |
    bf, <f' bf ef> <bf ef af> b, <g' f'> <d' f g> c, <g' ef'> <c g'> a, \voiceOne <c' ef>8[ <c ef f>] |
  \oneVoice
  \stemDown
  \once\override TupletNumber.text = "(8:6)"
    \tuplet 8/6 { bf,,[( bf' f' af d bf \clef treble f' af]) } d2.\fermata
    \set Score.timing = ##f
    \repeat unfold 15 { s16*4 } s8 s8 s8 s8
    \set Score.timing = ##t
    \clef bass ef,,,8( bf'' bf, ef bf' bf,) ef,( bf'' bf, ef bf' bf, |
    ef4.) \clef treble \stemNeutral <ef' bf'> \clef bass <ef,, bf'>2._\fermata

}

temp = \relative f {
  \global
  \partial 8 s8
  s1.*30
  \voiceTwo
  \barNumberCheck #31
  s4.*3 s8 f4 |
  s1.
  \set Score.timing = ##f
  \repeat unfold 15 { s16*4 } s8 s8 s8 s8
  \set Score.timing = ##t
  \voiceOne
  s8 bf4 s8 bf4 s8 bf4 s8 bf4 ~
  \oneVoice \shiftOff bf4.
}

\score {
  \new PianoStaff \with { } <<
      \new Staff = "Up" \with {} <<
        \upOne
      >>
      %\new Dynamics \dynamics
      \new Staff = "Down" \with {\clef bass} <<
        \downOne
        \temp
      >>
      %\new Dynamics \pedal
      >>
  \layout{
       \set pedalSustainStyle = #'mixed
  }
}
