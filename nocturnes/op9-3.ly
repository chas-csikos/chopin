\version "2.24.3"
\language "english"

\include "include/paper.ily"
\include "include/layout.ily"

\header {
  composer = "Chopin"
  title    = "Nocturne 3"
  piece    = "Nocturne 3"
  opus     = "Op. 9–3"
}

\paper{
  min-systems-per-page = #5
  max-systems-per-page = #6
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

sectionOne = {
  \key b \major
  \time 6/8
  \tempo "Allegertto" 4. = 66
}

sectionTwo = {
  \key d \major
  \time 2/2
  \tempo "Agitato"
}

upOne = \relative c' {
  \sectionOne
  \partial 8 fs8(
  \barNumberCheck #1
    ds')[ r16 css( ds8]
    \once\override Script.avoid-slur = #'outside
      d-![) r16 cs( d8]) |
    cs4. ~ cs8 ds( e |
    fs8 gs8. fs16
    \once\override Script.avoid-slur = #'outside
      es8-!) f8.( es16 |
    e4.) ~ e4 ds8 |
  \barNumberCheck #5
    c8. bs16( cs8 ds) r16 cs( ds8 |
    fs8-!) e2-^ e8( |
    e8 gs, as) \tuplet 3/2 { b16( cs b) } as bf df16.-> cs32 |
    as2 ~
      \once\override TupletNumber.text = "(3)"
      \tuplet 3/2 { as16 es fs } gs32 as b cs |
    \tuplet 5/3 { ds8( f e css ds) } \tuplet 5/3 { d( e ds cs d) } |
  \barNumberCheck #10
    cs4.-^ ~ \tuplet 7/6 { cs16( bs cs css ds e es) }
    \once\override TupletNumber.text = "(9)"
    \tuplet 9/6 { fs16( fss gs a as b c a fs }
      \once\override TupletNumber.text = "(9)"
      \tuplet 9/6 { es fs fss gs a as b gs es) } |
    e4. ~ e4 ds8 |
    cs8 ds-> cs gs4 cs8( |
    \slashedGrace cs8 as'4.) \tuplet 4/3 { gs8( fs es ds) }
  \barNumberCheck #15
    cs8 ds8. cs16 gs4 cs8 |
    \appoggiatura { fs,16 cs' } as'8 b8. a16 \tuplet 4/3 { gs8( fs es ds) } |
    cs8[ \grace { ds16 es } ds8. cs16] \slashedGrace cs8 gs4 cs8( |
    e2.-^) |
    r8 fs,16-.( gs-. as-. b-. cs8-.) r ds( |
  \barNumberCheck #20
    b2) r4 |
    ds8-.[ r16 css( ds8] d-![) r16 cs( ds8] |
    cs4. ~ cs8) \once\slurDashed ds( e |
    f8-.) gs ~ gs32( fs gs fs) es8( fs16 es b' es,) |
    e4. ~ e4 ds8 |
    cs8\trill[ r16 b( cs8] ds[) r16 cs( ds8] |
    fs8) e2-> ~ e8 ~ |
    e8 \tuplet 21/16 { fs,32( as gs fss gs as b cs ds e fs! fss as gs fs e ds e ds cs ds) } e32->[ gs, ds'32.( c64)] |
    as2 ~
      \once\override TupletNumber.text = "(3)"
      \tuplet 3/2 { as16 es-. fs-. } gs32-. as-. b-. cs-. |
    ds8-. f16( e css ds) d8-. e16( ds cs d) |
    cs4. ~ cs8 bs16( cs ds e) |
    \once\override TupletNumber.text = "(8)"
    \tuplet 8/6 { es fs gs fs b c c' gs, }
      \once\override TupletNumber.text = "(8)"
      \tuplet 8/6 { e es fs es as b b' f, }
    e4. ~ e4 ds8 |
    cs8( ds-> cs gs4 cs8 |
    as'4.) \tuplet 4/3 { gs8( fs es ds) }
  \barNumberCheck #35
    cs8 ds8. cs16 \slashedGrace cs8 gs4 cs8 |
    \grace { fs,16 cs' } as'8 b8. as16 \tuplet 4/3 { gs8( fs es ds) } |
    cs8[ \grace { ds16 es } ds8. cs16] \slashedGrace cs8 gs4 cs8( |
    e2.) |
    r8 fs,16-.( gs-. as-. b-. cs8) r ds(
  \barNumberCheck #40
    b2) as8( b |
    cs4. fs4 d8 |
    cs4. b) |
    b'8. as16( gs fs es fs gs b, cs gs) |
    as2. ~ |
  \barNumberCheck #45
    as4. ds4( b8 |
    as4 gs8)
    <<{ s4. | s4. s4 \tuplet 3/2 { b16[ s as] } }
      \\
      { \once\tieUp gs'4. ~ | \once\slurUp gs16( fs es ds css ds e16 es) gss, as \tuplet 3/2 { b es, as } }
    >> |
  \oneVoice
    gs4. fs4( ~ fs16 es |
    es4) as4. as8 |
  \barNumberCheck #50
    as8( b) r8 r4 r8 |
    b8. bs16( \tuplet 3/2 { ds cs bs} bs8) r8 bs( |
    bs8-!) cs2 cs8( |
    cs8-!) css2 css8 |
    css4 ds8( fs'4.) ~ |
    \tuplet 7/6 { fs16( es ds cs b ds as } \tuplet 14/6 { gss fs es ds css es ds cs b as gss f es d) } |
    css8-> as'4._\fermata b8-.( bs-. |
    cs8 ds8. cs16 gs4) cs8 |
    as'4. \tuplet 4/3 { gs8( fs es ds) } |
    cs[ \grace { ds16 es } ds8. cs16] \slashedGrace cs8 gs4 cs8 |
  \barNumberCheck #60
    \grace { fs,16 cs' } as'8 b8. as16 \tuplet 4/3 { gs8( fs es ds) } |
    cs8 ds cs \slashedGrace cs8 gs4 cs8( |
    e2.) |
    r8 fs,16-.( gs-. as-. b-. cs8-.) r ds( |
    b2) as8( b |
    cs4. fs4 ds8) |
    cs4. b8 \slashedGrace b8 b'4 |
    b16( as gs fs
      \once\override Script.avoid-slur = #'inside
      es\trill ds es fs gs b, cs gs) |
    as2. ~ |
    as4. \grace { b8 as gss as}
      <<
        {
          \once\override TupletNumber.text = "(6)"
          \once\override Beam.beam-thickness = #0.4
          \tuplet 6/3 {  ds8[ \teeny d cs c \normalsize b] }
        }
        \\
        {
          ds4 b8
        }
      >> |
  \barNumberCheck #70
    as4 gs8 \once\tieDashed gs'4.( ~ |
    \once\override TupletNumber.text = "(8)"
    \tuplet 8/6 { gs16 fs es ds css ds css cs) }
      << { s8 s8 \once\omit TupletNumber \tuplet 3/2 { b16[ s as] }  }
      \\ { \once\override TupletNumber.text = "(9)" \tuplet 9/6 { \once\slurUp  css( ds e es gss, as b es, as) } }
      >> |
    gs4.( fs4) r16 es |
    es8 as2 as8 |
    as8( b) r8 r4 b8( |
    b8-.[ r16 bs16]) \tuplet 3/2 { ds16( cs bs) } bs8 r8 bs8( |
    \once\override Script.avoid-slur = #'outside bs8-!) cs2 cs8( |
    \once\override Script.avoid-slur = #'outside cs-!) css2 cs8 |
    css4 ds8( fs'4.) ~ |
    \set subdivideBeams = ##t
    fs32([ es ds fs cs b ds as gss ds' gs, fs gss es ds fs cs b ds as gss fs es ds] |
    \set subdivideBeams = ##f
    css8) as'4._\fermata b8-.( bs-.) |
    cs8 ds8. cs16 gs4( cs8 |
    as'4. \tuplet 4/3 { gs8 fs es ds } ) |
    cs8[ \grace { ds16 es } ds8. cs16] gs4 cs8 |
    \grace { fs,16 cs' } as'8 b8. as16 \tuplet 4/3 { gs8( fs es ds) }
  \barNumberCheck #85
    cs8 ds cs \slashedGrace cs8 gs4 cs8( |
    e2.) |
    r8 fs,16-.( gs-. as-. bs-. cs8-.) r8 d8 |
  \bar "||"
  \sectionTwo
  \barNumberCheck #88
  \voiceOne
    b2.( as8. b16 |
    d2 cs)
    ds2.( css8 ds |
    fs2 e4) \once\stemDown b' |
    e,4 e8. fs16 ds4 ds8. e16 |
  \oneVoice
    <cs b e,>8-! r8 <b b'>4 r
  \voiceOne
      <d b fs>( |
    cs4) cs8. cs16 cs4 \slashedGrace e8 d8. cs16 |
  \barNumberCheck #95
    cs2 <cs as>4.. cs16 |
    b2.( as8. b16 |
    ds2 cs) |
    ds2.( css8 ds |
    e1) |
  \barNumberCheck #100
    c4 c8. d16 b4 b8. c16 |
  \oneVoice
    <a g c,>8 r <a g g'>4 r <b g d>( |
    <c g e>4)
  \voiceOne
      c8. d16 b4 b8. c16 |
    <as g>2. b4\rest |
    d2 d4\arpeggio c8. b16 |
  \barNumberCheck #105
    <b fs d>2 b\rest |
    <cs b gs cs,>2 cs4. cs8 |
    <e ~ cs d,>1 |
    e4 e8. f16 d4 d8. e16 |
  \oneVoice
    <cs a e>8-. r <a a'>4 r <fss cs'>(|
  \barNumberCheck #110
    <bs gs>-.)
  \voiceOne
      bs8.cs16 as4 as8. bs16 |
  \oneVoice
    <gs bs,>8 r <gs gs'>4 r2 |
    <ds' cs as ds,>2
  \voiceOne
      ds4. ds8 |
    <fs ~ ds fs,>1 |
    fs4 fs8. g16 e4 e8. fs16 |
  \barNumberCheck #115
  \oneVoice
    \once\override Script.padding = #0.5
    <ds b fs>8\parenthesize-. r <b b'>4 r <b gs d!> |
    <as cs,>4 \voiceOne as8. b16 gs4 gs8. as16 |
    fs8 b\rest as8. b16 gs4 gs8. as16 |
    \oneVoice <fs as,>4 r r2 |
    R1 |
  \barNumberCheck #120
    \voiceOne b2.( as8. b16 |
    ds2 cs) |
    ds2.( css8 ds |
    e1) |
    c4 c8. d16 b4 b8. c16 |
  \oneVoice
    <a g c,>8\parenthesize-! r  <g a g'>4 r <b g d> |
    <c g e>4
  \voiceOne
      c8. d16 b4 d8. c16 |
    <gs a>2. \oneVoice r4 |
    <d fs d'>2 \voiceOne d'4\arpeggio d8. cs16
    \oneVoice <gs b cs gs'>2\fermata s2 |
  \barNumberCheck #130
  \bar "||"
  \key b \major
  \time 6/8
  \tempo "Tempo I"
    e'2. |
    r8 ds,16-.( gs-. as-. b-. cs8-.) r8 css( |
    ds8) r16 css( ds8
    \once\override Script.avoid-slur = #'outside
      d-!) r16 cs( ds8 |
      cs4.) ~ cs8 ds e |
    fs gs8. fs16 es8 fs8. es16 |
    e4. ~ e4 ds8 |
    cs8\trill[ r16 b16( cs8] ds) r16 cs16( ds8 |
    fs8-.) e2 ~ e8 ~ |
    e8 ds'16( cs b gs \tuplet 8/6 { e cs b gs as b ds cs } |
    as2) ~
      \once\override TupletNumber.text = "(3)"
      \tuplet 3/2 { as16( es fs } gs32 as b cs) |
    \tuplet 5/3 { ds8( f es css ds) } \tuplet 5/3 { d( es ds cs d) } |
    cs4. ~ \tuplet 7/6 { cs16( bs cs css ds e es } |
    \override TupletNumber.text = "(9)"
    \tuplet 9/6 { fs16 fss gs a as b c a fs) } \tuplet 9/6 { es( fs fss gs a as b gs es) } |
    \revert TupletNumber.text
    e4. ~ e4 ds8 |
    cs8 ds8. cs16 gs4( cs8 |
    as'4. \tuplet 4/3 { gs8 fs es ds) } |
    cs8[ \grace {ds16 es} ds8. cs16] \slashedGrace cs8 gs4 cs8 |
    \grace { fs,16 cs' } as'8 b8. as16 \tuplet 4/3 { gs8( fs es ds) }
    cs8 ds cs gs4 cs8( |
    e2.) |
    r8 \tuplet 11/8 { fs,16-.( gs-. as-. b-. cs-. ds-. e-. fs-. gs-. as-. b-.) } \tuplet 3/2 { cs[ r ds]( }
    b4.)( as4 gs8 |
    fs4. e4 ds8 |
    cs8 ds cs <b fss>4 as8) |
    gs4.\startTrillSpan \grace { fss16\stopTrillSpan gs } as4 b8 |
  \barNumberCheck #155
  \set Score.timing = ##f
    \slashedGrace b fs2 ~ fs8[ b]
  \override Beam.beam-thickness = #0.39
  \teeny
      cs8[ e fs b cs ds]
      \ottava #1
        \repeat unfold 4 { e16[ cs fs g cs, ds] } \bar""
        e[ <as cs> gs] <a c>[ fss <gs b>] fs[ <g bf> es] <fs as>[ e <f af>] ds[ <e g> css]
        <ds fs>[ cs <d f>] bs[ <cs e> b] <c ef>[ as <b d>] a[ <bs df> gs] <a c>[ fss <gs b>]
      \ottava #0
      \bar""\break
        fs[ <g bf> es]  <fs a>[ e <f af>] ds[ <e g> css] <ds fs>[ cs <d f>]
        << { \teeny s16 e8[ ds16 cs] } \\ { \teeny bs[ cs b] as16.[ e32] } >>
  \set Score.timing = ##t
  \revert Beam.beam-thickness
  \normalsize
  \bar "||"
  \tempo "Adagio"
  \time 2/2
    <ds b'>8 gs''16([ fs cs b fs cs]) b fs b fs' gs \ottava #1 fs' b cs |
    ds1\fermata \ottava #0
  \bar "|."
}

upTwo = \relative c' {
  \sectionOne
  \partial 8 s8
  s2.*87
  \barNumberCheck #88
  \sectionTwo
  \voiceTwo
    r8 <d f>4 \once\tieDashed <d f>8 ~ <d f> <d f>4 <d f>8 |
    r8 <e g b>4 \once\tieDashed <e g b>8 ~ <e g b> <e g b>4 <e g b>8
    <ds a' b>8 <ds a' b>4 <ds a' b> <ds a' b> <ds a' b>8 |
    r8 <b' g>4 <b g>4. b4 ~ |
    <b g>4 <b g> <b fs> <b fs>
    s1 |
    <b g>2 <b fs> |
    <b es,>2 e, ~ |
    e8 d4-> d8 d <d fs>4 <d fs>8 |
    r8 <e g b>4 \once\tieDashed <e g b>8 ~ <e g b> <e g b>4 <e g b>8 |
    <b' a ds,>8 <b a ds,>4 <b a ds,> <a ds,> <a ds,>8 |
    <g e>8 <g e>4 <g e>4. <g e>4 ~ |
    <g e>4 <g e> <g d> <g d> |
    s1 |
    s4 <g e> <g d> <g d> |
    cs,2( e4) s |
    <fs d>2 <fs e>\arpeggio |
    s1 |
    s2 <cs fs a>2
    as'2 gs |
    g4 <g a> <f a> <f a> |
    s1 |
    s4 ds4 cs <ds cs> |
    s1 |
    s2 <ds gs b> |
    b'2 as |
    a4 a g <g b> |
  \barNumberCheck #115
    s1 |
    s4 cs,4 b <cs b> |
    as4 cs b <cs b>
    s1*2 |
    r8 <d fs>4 \once\tieDashed <d fs>8 ~ <d fs> <d fs>4 <d fs>8 |
    r8 <e g b>4 \once\tieDashed <e g b>8 ~ <e g b> <e g b>4 <e g b>8 |
    <ds a' b>8 <ds a' b>4 <ds a' b> <d a'>4 <d a'>8 |
    <e g>8 <e g>4 <e g>4. \once\tieDashed <e g>4 ~ |
    <e g>4 <e g> <d g> <d g> |
    s1 |
    s4 <e g> <d g> <d g> |
    cs2( e4) s |
    s2 <e fs>\arpeggio |
    s1 |
  \bar "||"
  \time 6/8
  \tempo "Tempo I"
}

down = \relative c {
  \sectionOne
  \partial 8 r8 |
    b8( fs' fs') b,,( f' f') |
    b,,8 e fs' b,, g' g' |
    b,,8 a' a' b,, gs' gs' |
    b,,8 g' g' b,, fs' fs' |
    b,,8 e e' b, fs' fs' |
    cs,,8 cs'[( gs' cs gs e']) |
    cs,8[ e b' gs e' b] |
    fs,[ cs' as' fs e' as,] |
    b,8( fs' fs') b,,( f' f') |
    b,,8( e e') b,( g' g') |
    b,,8 a' a' b,, gs' gs' |
    b,,8 g' g' b,, fs' fs' |
    es,,8[( cs' b' es, cs' cs,]) |
    fs,8[( cs' as' fs cs' cs,]) |
    es,8[( cs' b' es, cs' cs,]) |
    fs,8[( cs' as' fs cs' cs,]) |
    es,8[( cs' b' es, cs' cs,]) |
    fs,8[( cs' b' g e' b]) |
    fs,8[( cs' as' fs e' ds]) |
    b,([ fs' ds' b fs' fs,)] |
    b,8 fs' fs' b,, f' f' |
    b,,8 e e' b, g' g' |
    b,,8 a' a' b,, gs' gs' |
    b,,8 g' g' b,, fs' fs' |
    b,,8 e e' b, fs' fs' |
    cs,,8( cs'[ gs' cs gs es']) |
    cs,8[ e( b' gs e' b)] |
    fs,8[( cs' as' fs e' as,)] |
    b,8( fs' fs') b,,( f' f') |
    b,,8 e e' b, g' g' |
    b,,8 as' a' b,, gs' gs' |
    b,,8 g' g' b,, fs' fs' |
  %\stemDown
    es,,8[( as b' es, cs' cs, ]) |
    fs,8[( cs' as' fs cs' cs, )] |
  \barNumberCheck #35
    es,8[( cs' b' es, cs' cs, )] |
    fs,8[( cs' as' fs cs' cs, )] |
    es,8[( cs' b' es, cs' cs, )] |
    fs,8[( cs' b' g e' b )] |
    fs,8[( cs' as' fs e' as, )] |
  \barNumberCheck #40
    b,8[( fs' ds' b fs' fs, )] |
    as,8[( cs fs cs cs' fs,)] |
    gs,8[( ds' fs ds b' fs)] |
    gs,8[( cs es cs b' es,)] |
    fs,8[( cs' es cs as' es)] |
  \barNumberCheck #45
    fs,8[( b ds b as' ds,)] |
    es,8[( b' ds b gs' ds)] |
    es,8[( as css as gs' css,)] |
    ds,8[( as' fs' ds as' fs)] |
    as,8[( es' css' as es' es,)] |
  \barNumberCheck #50
    as,8[( fs' ds' a fs' fs,)] |
    as,8[( fss' dss' as fss' fss,)] |
    as,8[( gs' es' b gs' gs,)] |
    as,8[( gs' es' as, gs' gs,)] |
    as,8[( fs' ds' as fs' fs,)] |
  \barNumberCheck #55
    as,8[( fs' ds' gss, fs' fs,)] |
    \tuplet 5/3 { as,( es' as css as) } es'4.\fermata |
    es,,8[( cs' b' es, cs' cs,)] |
    fs,8[( cs' as' fs cs' cs,)] |
    es,8[( cs' b' es, cs' cs,)] |
  \barNumberCheck #60
    ds,8[( cs' as' fs cs' cs,)] |
    es,8[( cs' b' es, cs' cs,)] |
    fs,8[( cs' b' g e' b)] |
    fs,8[( cs' as' fs es' as,)] |
    b,8[( fs' ds' b fs' fs,)] |
  \barNumberCheck #65
    as,8[( cs fs cs cs' fs,)] |
    gs,8[( ds' fs ds b' fs)] |
    gs,8[( cs es cs b' es,)] |
    fs,8[( cs' es cs as' es)] |
    fs,8[( b ds b as' ds,)] |
  \barNumberCheck #70
    es,8[( b' ds b gs' ds)] |
    es,8[( as css as gs' css,)] |
    ds,8[( as' fs' ds as' fs)] |
    as,8[( es' css' as es' es,)] |
    as,8[( fs' ds' a fs' fs,)] |
  \barNumberCheck #75
    as,8[( fss' dss' as fss' fss,)] |
    as,8[( gs' es' b gs' gs,)] |
    as,8[( gs' es' as, gs' gs,)] |
    as,8[( fs' ds' as fs' fs,)] |
    as,8[( fs' ds' gss, fs' fs,)] |
  \barNumberCheck #80
    \tuplet 5/3 { as,8[( es' as css as] } es'4.\fermata) |
    es,,8[( cs' b' es, cs' cs,)] |
    fs,8[( cs' as' fs cs' cs,)] |
    es,8[( cs' b' es, cs' cs,)] |
    ds,8[( cs' as' fs cs' cs,)] |
  \barNumberCheck #85
    es,8[( cs' b' es, cs' cs,)] |
    ds,8[( cs' b' g e' b)] |
    ds,,8[( cs' as' fs es' as,)] |
  \bar "||"
  \sectionTwo
    \tuplet 3/2 { b,( es fs) } \tuplet 3/2 { g( fs fs,) } \tuplet 3/2 { b( es fs) } \tuplet 3/2 { g( fs fs,) }
  \omit TupletNumber
  \omit TupletBracket
  \tuplet 3/2 {
    b( fs' g) a( g b,) e( fs g) a( g b,) |
  \barNumberCheck #90
    fs' as b c b b, fs' as b c b b, |
    e as b c b b, e as b c b b, |
    e as b cs b b, fs' as b cs b b, |
    g' as b cs b b, fs' as b cs b b, |
    e gs b cs b b, fs' as b cs b b, |
    gs' as b cs b b, g' as b cs b b, |
    b es fs g fs fs, b es fs g fs fs, |
    b fs' g a g b, e fs g a g b, |
    fs' as b c b b, fs' a b cs b b, |
    c fs g a g g, c fs g a g g, |
  \barNumberCheck #100
    c fs g a g g, d' fs g a g g, |
    e' fs g a g g, d' fs g a g g, |
    c fs g a fs g, d' fs g a g g, |
    e' fs e fs e d cs d cs d cs fs, |
    b es fs g fs fs, as es' fs g fs fs, |
  \barNumberCheck #105
    b es fs g fs fs, b es fs g fs b, |
    es, bs' cs d cs es, fs bs cs d cs fs, |
    fss ds' e fs e fss, gs ds' e fs e gs, |
    a gs' a bf a a, d gs a bf a a, |
    e' gs a bf a e a, ds e fs e a, |
  \barNumberCheck #110
    gs css ds es ds ds, fss css' ds e-> ds ds, |
    gs css ds e ds ds, gs css ds e ds gs, |
    fss css' ds e ds fss, gs css ds e ds gs, |
    a es' fs gs fs a, as es' fs gs fs as, |
    b as' b c b b, e as b c b b, |
  \barNumberCheck #115
    fs' as b c b b, es, cs' d e d es, |
    fs bs cs ds cs cs, es bs' cs d-> cs cs, |
    fs bs cs ds cs cs, es bs' cs d-> cs cs, |
    fs bs cs d cs cs, fs bs cs d cs cs, |
    fs( bs cs d cs fs,) e'([ d fs,)] fs'([ e fs,)] |
  \barNumberCheck #120
    b es fs g fs fs, bs es fs g fs fs, |
    b fs' g a g b, e fs g a g b, |
    fs' as b c b b, fs' a g c b b, |
    c fs g a g g, c fs g a g g, |
    c fs g a g g, d' fs g a g g, |
    e' fs g a g g, d' fs g a g g, |
    c fs g a g g, d' fs g a g g, |
    e' fs e fs e d cs d cs d cs fs, |
    b es fs g fs fs, as es' fs g fs fs, |
    es( cs' b' gs cs b
  }
      \staffOne\voiceTwo gs'2^\fermata) |
  \staffTwo\oneVoice
  \bar "||"
  \time 6/8
  \key b \major
  \barNumberCheck #130
    fs,,8([ cs' b' g e' b]) |
    fs,8([ cs' as' fs e' as,]) |
    b,8 fs' fs' b,, f' f' |
    b,,8 e e' b, g' g' |
    b,,8 a' a' b,, gs' gs' |
  \barNumberCheck #135
    b,,8 g' g' b,, fs' fs' |
    b,,8 e e' b, fs' fs' |
    cs,,8-! cs'[( gs' cs gs e']) |
    %cs,,8-! cs'( g' cs g e' ) |
    cs,8[ e b' gs e' b] |
    fs,[ cs' as' fs e' as,] |
    b,8( fs' fs') b,,( f' f') |
    b,,8( e e') b,( g' g') |
    b,,8 a' a' b,, gs' gs' |
    b,,8 g' g' b,, fs' fs' |
    es,,8[( cs' b' es, cs' cs,]) |
    fs,8[( cs' as' fs cs' cs,]) |
    es,8[( cs' b' es, cs' cs,]) |
    fs,8[( cs' as' fs cs' cs,]) |
    es,8[( cs' b' es, cs' cs,]) |
    fs,8([ cs' b' g e' b]) |
  \barNumberCheck #150
    fs,8([ cs' as' fs e' as,]) |
    gs,8 ds' b' gs, e' b' |
    as,8 fs' cs' b, fs' ds' |
    cs,8 as' e' ds, cs' fss |
    e,8 b' e es, gs d' |
    fs,,8([ cs' fs b e]) r8 |
    \set Score.timing = ##f
    \set tieWaitForNote = ##t
    \override Beam.beam-thickness = #0.39
    \teeny
    s2. s4.*4
      \times 3/4 { fs,,16[ ~ cs' ~ fs ~ as ~] } \small \times 27/28 { <fs, cs' fs as e'>1.. } s8.*4
    \normalsize
    \revert Beam.beam-thickness
     \times 3/2 { r8 } fs' ~ |
     \bar"||"
    \set Score.timing = ##t
  \time 2/2
  \set Score.currentBarNumber = #156
  \barNumberCheck #156
    <fs b,>8 \stemDown b,,16([ fs' b fs' b cs]) ds cs b fs ds cs b fs |
    b,1_\fermata |

}

downTwo = \relative c {
  \sectionOne
  \mergeDifferentlyHeadedOn
  \partial 8 s8 |
  \voiceOne |
    s8 fs4 s8 f4 |
    s8 e4 s8 g4 |
    s8 a4 s8 gs4 |
    s8 g4 s8 fs4 |
  \barNumberCheck #5
    s8 e4 s8 fs4 |
    s2. |
    cs2 s4 |
    s2. |
    s8 fs4 s8 f4 |
  \barNumberCheck #10
    s8 e4 s8 g4 |
    s8 a4 s8 gs4 |
    s8 g4 s8 fs4 |
    s2.*8 |
  \barNumberCheck #21
    s8 fs4 s8 f4 |
    s8 e4 s8 g4 |
    s8 a4 s8 gs4 |
    s8 g4 s8 fs4 |
    s8 e4 s8 fs4 |
    s2. |
    cs2 s4 |
    s2. |
    s8 fs4 s8 f4 |
  \barNumberCheck #30
    s8 e4 s8 g4 |
    s8 a4 s8 gs4 |
    s8 g4 s8 fs4 |
    s2.*55 |
  \time 2/2
    s1*42 |
  \time 6/8
    s2.*2 |
  \barNumberCheck #132
    s8 fs4 s8 f4 |
    s8 e4 s8 g4 |
    s8 a4 s8 gs4 |
    s8 g4 s8 fs4 |
    s8 e4 s8 fs4 |
    s2. |
    cs2 s4 |
    s2. |
    s8 fs4 s8 f4 |
    s8 e4 s8 g4 |
    s8 a4 s8 gs4 |
    s8 g4 s8 fs4 |
    s2.*7
  \barNumberCheck #151
  \omit TupletNumber
  \omit TupletBracket
    \times 1/2 {
      gs,4  ds' s gs, e' s |
      as, fs' s  b, fs' s |
      cs as' s ds, cs' s |
      e, b' s es, g s|
    }
}

\score {
   \new PianoStaff \with { } <<
     \new Staff = "Up" \with {} <<
      \upOne
      \upTwo
    >>
    \new Staff = "Down" \with {\clef bass} <<
      \down
      \downTwo
    >>
   >>
   \layout{
       %\set pedalSustainStyle = #'mixed
       %\override TupletNumber.whiteout = #1.25
       \set PianoStaff.connectArpeggios = ##t
       \accidentalStyle piano
      \context {
        \PianoStaff
        % default 9,7,1,5
        \override StaffGrouper.staff-staff-spacing = #'(
            (basic-distance   . 12)
            (minimum-distance . 7)
            (padding          . 2)
            (stretchability   . 12))
      }
   }
}
