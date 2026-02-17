#set text(
  font: "D2Coding",
  size: 15pt,
  lang: "ko",
  hyphenate: true,
)

// Funcion para crear una caja de nota/observacion
#let nota(contenido) = {
  block(
    fill: rgb("#E3F2FD"),
    stroke: rgb("#1976D2") + 1pt,
    inset: 10pt,
    radius: 4pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: rgb("#1976D2"), size: 12pt)[참고:] #contenido
  ]
}

// Funcion para crear una caja de tip
#let tip(contenido) = {
  block(
    fill: rgb("#E8F5E9"),
    stroke: rgb("#388E3C") + 1pt,
    inset: 10pt,
    radius: 4pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: rgb("#388E3C"), size: 12pt)[팁:] #contenido
  ]
}

// Funcion para crear una caja de advertencia/importante
#let importante(contenido) = {
  block(
    fill: rgb("#FFF3E0"),
    stroke: rgb("#F57C00") + 1pt,
    inset: 10pt,
    radius: 4pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: rgb("#F57C00"), size: 12pt)[중요:] #contenido
  ]
}

// Funcion para crear una caja de error comun
#let error(contenido) = {
  block(
    fill: rgb("#FFEBEE"),
    stroke: rgb("#D32F2F") + 1pt,
    inset: 10pt,
    radius: 4pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: rgb("#D32F2F"), size: 12pt)[주의:] #contenido
  ]
}

// Funcion para crear una caja de duda con pregunta y respuesta
#let doubt(pregunta, respuesta) = {
  block(
    fill: rgb("#F3E5F5"),
    stroke: rgb("#7B1FA2") + 1pt,
    inset: 10pt,
    radius: 4pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: rgb("#7B1FA2"), size: 12pt)[질문:]
    #v(0.3em)
    #pregunta
    #v(0.5em)
    #line(length: 100%, stroke: 0.5pt + rgb("#7B1FA2"))
    #v(0.5em)
    #text(weight: "bold", fill: rgb("#7B1FA2"), size: 12pt)[답변:]
    #v(0.3em)
    #respuesta
  ]
}

// Funcion para desglosar frases en coreano con cantidad variable de partes
#let phrase(frase, significado, ..partes) = {
  block(
    fill: rgb("#E8EAF6"),
    stroke: rgb("#3F51B5") + 1.5pt,
    inset: 12pt,
    radius: 5pt,
    width: 100%,
  )[
    // Frase completa
    #text(weight: "bold", fill: rgb("#3F51B5"), size: 14pt)[전체 문장:]
    #align(center)[
      #text(size: 18pt, weight: "bold")[#frase]
      #text(size: 18pt)[#sym.arrow.r]
      #text(size: 15pt, style: "italic")[#significado]
    ]

    // Si hay desglose, mostrarlo
    #if partes.pos().len() > 0 {
      line(length: 100%, stroke: 1pt + rgb("#3F51B5"))
      for parte in partes.pos() {
        block(
          fill: rgb("#F5F5F5"),
          inset: 5pt,
          radius: 3pt,
          width: 100%,
        )[
          #text(size: 14pt, weight: "bold", fill: rgb("#3F51B5"))[#parte]
        ]
      }
    }
  ]
}

= 뉴스1
Source: #link("https://www.youtube.com/watch?v=OT3fG7fTaKc")[#text(fill: blue)[마트에서 휴머노이드 로봇 산다...가격은?]]

이렇게 제가 직접 인사를 하게되변 \
사람처럼 자연스럽게 반응하는데요 \
오늘부터 마트에서 3100 만원에 판배를 시작했습니다 \
지난 CES 2026에서 화제를 모은중국 기업의 휴머노이드 오봇인데 \
이제는 전시장이 아니라 마트에서 직접보고 살 수 있게 됐습니다 \

De esta manera si yo saludo \
reacciona naturalmente como una persona \
Desde hoy comienza la venta a 3100 (31 millones de wones) en los supermercados \
Es el robot humanoide de una empresa china que se convirtio en un tema destacado el pasado CES 2026 \
ahora se puede ver no solo en una exposicion, sino que se puede ver y comprar directamente en el supermercado. \

\

= 질문을 만드새요

1. ...? 주말에 엄마하고 저녁을 먹었어요

2. ...? 화요일 아침에 한국어 수업이있어요

3. ...? 방금 오빠하고 통후ㅏ했어요

4.

5.

6.

\

= 질문에 갑하세요

가) 언제 커피를 마셨어요?
오늘 새벽에 마셨어요

나) 누가 피자를 먹을 거예요?
송은가 먹을 거예요

다) 효리가 드하마를 봤어요?
네, 맞아요.

라) 수요일에 한국어 수업이 있어요?
아니요, 화요일 하고 일요일에 한국어 수업이 있어요

마) 언제 민수가 자요?
매일 점심 하고 밤에 민수가 자요

바) 금요일에 친구를 만날 거예요?
네, 맞아요. 금요일에 민수 하고 송은를 만날 거예요

사) 매일 일해요?
아니요, 금요일에 일한해요

아) 주말에 뭐를 했어요?
친구를 만났어요
공원를 운둥했어요

자) 언제 피자를 시켰어요?
방금 피자를 시켰어요

\

= 질문에 갑하세요

#nota[
  Siempre cuando decimos tiempos tipo
  월요일, 저녁, etc. hay que usar del mas general al mas especifico
]

1. 재일은 뭐를 해요?

2. 주말에 뭐를 했어요?

3. 한숫어 수업이 언제 있어요?

4.

5. 오늘 저녁에 뭐를 할 거예요?
공원을 운동할 거예요

6. 이번 주 주말에 친구를 만나요?
네, 맞아요


7. 다음 주 화요일에 뭐를할거예요?
가수를 들을거예요

8. 어제 오후에 뭐했어요?

9. 아침에 운동했어요?
아니요, 밤에 운동했어요


= 문장을 만드세요

1. 






