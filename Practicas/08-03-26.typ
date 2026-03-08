// ====================================
// FUNCIONES UTILES
// ====================================

// Funcion para crear una caja de nota/observacion
#let nota(contenido) = {
  block(
    fill: rgb("#E3F2FD"),
    stroke: rgb("#1976D2") + 1pt,
    inset: 10pt,
    radius: 4pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: rgb("#1976D2"))[Nota:] #contenido
  ]
}

// Funcion para crear una caja de advertencia
#let importante(contenido) = {
  block(
    fill: rgb("#FFF3E0"),
    stroke: rgb("#F57C00") + 1pt,
    inset: 10pt,
    radius: 4pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: rgb("#F57C00"))[Importante:] #contenido
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
    #text(weight: "bold", fill: rgb("#D32F2F"))[Error Comun:] #contenido
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
    #text(weight: "bold", fill: rgb("#388E3C"))[Tip:] #contenido
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
    #text(weight: "bold", fill: rgb("#7B1FA2"), size: 11pt)[Pregunta:]
    #v(0.3em)
    #pregunta
    #v(0.5em)
    #line(length: 100%, stroke: 0.5pt + rgb("#7B1FA2"))
    #v(0.5em)
    #text(weight: "bold", fill: rgb("#7B1FA2"), size: 11pt)[Respuesta:]
    #v(0.3em)
    #respuesta
  ]
}

= Tarea
_Escribir que hice cada dia de la semana en coreano_


== Vocabulario a usar

- 운영체제 $=>$ Operating Systems
- 오에스 $=>$ "OS"
- 자료 기지 == 데이터베이스 $=>$ "database"


== Resumen semanal

요즘 제가 많이 공부했어요

#nota[
  Se que 많이 todavia no lo puedo usar porque es un
  adverbio y todavia no lo vi
]

\

== Noticias nuevas de mi vida

지난주에 석유 시추기 소프트웨어 팀장이 됐어요

#nota[
  Quise decirlo lo mas simple posible para no necesitar
  cosas que no vimos todavia
]

\

== 수요일

수요일 아침에 집에서 전자기학을 공부했어요. 그리고 다고기를 먹겄어요. 오후에 체육관에서 운동했어요. 나중에 집에서 밥을 목겄어요

#doubt[
  1. Entiendo que puedo omitir el objeto sin problema, es 
    decir si quiero decir que solo voy a entrenar al gym,
    podria decir 체육관에서 운동했어요?

  2. Cualquier "parte" de TSLOV se puede omitir?
][
]

\

== 

