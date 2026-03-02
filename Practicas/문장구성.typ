#set text(
  font: "D2Coding",
  size: 17pt,
  lang: "ko",
  hyphenate: true,
)

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

= Importantisimo tener en cuenta SOV $->$ Sujeto-Objeto-Verbo
*Duda*: No podria darse vuelta el orden del sujeto + sufijo con el objeto + sufijo?
A lo que voy es:
주부 가 강아지 를 거냈어요 $->$ 강아지 를 주부 가 거냈어요

Entiendo que en este caso no tiene sentido pero podria ser el caso?


= 분장구성 $->$ Armado de oraciones

1. 주부 가 강아지 를 거냈어요

2. 교수 가 데학생 을 버릴 거계요 (Deshechar)

3. 학생 이 첵 을 뺐어요 (Quitar)

A partir de aca me voy a poner el significado de los Verbos y voy a hacerlo oralmente porque
es mejor en terminos practicos, escribirlo es mucho mas facil porque tengo tiempo de pensar

강아지 

== Significados de los verbos

1. 꺼냈어요 $->$ Sacar

2. 버릴 거예요 $->$ Tirar/Desechar

3. 뺐어요 $->$ Quitar

4. 봐요 $->$ Ver

5. 열었어요 $->$ Abrir

6. 줄 거예요 $->$ Dar

7. 닦았어요 $->$ Limpiar

8. 충전해요 $->$ Cargar bateria

#doubt[
  En este me surgio lo siguiente:
  #align(center)[*가자인어 가 핸드폰 은 충전해요*]
  Esto entiendo que quiere decir que va a cargar el celular pero tiene otras
  cosas para cargar tambien (podria ser una computadora por ejemplo)
][
  Si perfecto.
]

9. 만날 거예요 $->$ Encontrar/Conocer

#doubt[
  En este me surgio la duda de si podriamos decir lo siguiente:
  #align(center)[*동생 이 강아지 는 만날 거예요*]
  Esto seria que hay mas animales para encontrar, quizas
  si se le perdio a la familia un perro y un gato, seria correcto decirlo de
  esta forma
][
  찾다 $->$ este seria el verbo que tendria que usar porque 반날 거예요 es mas de encontrarse con alguien
  Pero el razonamiento del 는 esta bien
]

10. 필요해요 $->$ Necesitar

11. 옮겨요 $->$ Mover

12. 정리했어요 $->$ Ordenar/Organizar


#nota[
  Creo que entendi perfectamente el uso de 가/이 - 를/을 pero necesito todavia confirmar
  si termine de entender el uso de 는/은.
]

