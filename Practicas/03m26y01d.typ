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

#nota[
  Siempre recordar la estructura de las oraciones en coreano:

  언제 - 누가 - 어디 - 뭐 - 동사

  Tiempo - Sujeto - Lugar - Objeto - Verbo

  TSLOV
]

= 문장을 만들어요

- 언제? - 누가? - 어디에서? - 뭐를? - 공부해요

매일 후안니가 학교에서 전자기학를 공부해요

\

- 언제? - 누가? - 어디에서? - 뭐를? - 씻었어요 -> Limpiar

매일 후안니가 집에서 방를 씻었어요

\

- 언제? - 누가? - 어디에서? - 뭐를? - 생각해요 -> Pensar

평일 항상에 후안이 집에서 전자기학를 생각해요

\

- 언제? - 누가? - 어디에서? - 뭐를? - 마셔요

매일 모두가 물을 마셔요

\

- 언제? - 누가? - 어디에서? - 뭐를? - 버렸어요

주말에 후안이 쓰레기에서 쓰레기를 버렸어요

\

- 언제? - 누가? - 어디에서? - 뭐를? - 배워요

월요일 하고 수요일 하고 금요일에 후안이 학교에서 전자기학를 배워요

\

= En este ejercicio tengo que describir lo que esta pasando en la imagen

- 지금 새희가 식탁에서 전자기학를 공부해요

- 주말에 엄마가 마트에서 밥을 사요

- 평일에 요리사가 주방에서 밥을 요리해요

- 

- 평일에 회사원이 회사에서 일해요



