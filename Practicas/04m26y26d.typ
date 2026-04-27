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

= New vocabulary

- 운영체제 $=>$ Operating system

= HW

이번 주 월요일에 여자인 친구 선물을 샀어요, 책이에요. 나중에, 오후에 
전자기학 시험이 있었어요. 그리고 밤에 운영체제 말하기 시험이 있었어요.
수요일 아침에 데이터베이스를 공부했어요. 그리고 나중에 오후에 시험이 있었어요.
그래서 이번 주에 헬스장 안 갔어요.

헬스장 $=>$ gym de personal

== en clase

중국에서 전기 공학을 공부할 거 예요.
나중에 다시 아르헨ㅊ티나에 돌아올 거예요.
그런데 (pero) 아직 (aun) 몰라요 (no se).
중국에서 답이 안 왔어요 (respuesta no )


#doubt[
  Cuando digo 전자기학, va un sufijo o es directamente 전자기학 시험이?
  La misma pregunta para 운영체제가, va el sufijo ahi o solo queda el de
  말하기?
][
  Directamente *전자기학 시험* y *운영체제 말하기 시험*. 
  En coreano, cuando un sustantivo modifica a otro (como "examen de X"), se pueden poner juntos sin partículas. Si pones *운영체제가*, estarías diciendo que el Sistema Operativo es el sujeto que realiza la acción.
]

=== Combinacion de verbos - Detalles importan

- 돌아오다 $=>$ Girar (volver) viniendo
- 돌아가다 $=>$ Girar (volver) yendo

- 나오다 $=>$ Salir viniendo
- 나가다 $=>$ Salir yendo

- 들어오다 $=>$ Entrar viniendo
- 들어가다 $=>$ Entrar yendo


=== Diferencias entre 은 / 는 / 이 / 가

