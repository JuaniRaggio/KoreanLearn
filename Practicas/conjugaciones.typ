#set document(
  title: "Practica de conjugaciones",
  author: "Juan Ignacio Raggio",
)

#set page(
  paper: "a4",
  margin: (
    top: 2.5cm,
    bottom: 2.5cm,
    left: 2cm,
    right: 2cm,
  ),
  numbering: "1",
  number-align: bottom + right,

  header: [
    #set text(size: 9pt, fill: gray)
    #grid(
      columns: (1fr, 1fr, 1fr),
      align: (left, center, right),
      [Juan Ignacio Raggio],
      [한국어 - 서송은],
      [#datetime.today().display("[day]/[month]/[year]")]
    )
    #line(length: 100%, stroke: 0.5pt + gray)
  ],

  footer: context [
    #set text(size: 9pt, fill: gray)
    #line(length: 100%, stroke: 0.5pt + gray)
    #v(0.2em)
    #align(center)[
      페이지 #counter(page).display() / #counter(page).final().first()
    ]
  ]
)

#set text(
  font: "Apple SD Gothic Neo",
  size: 17pt,
  lang: "ko",
  hyphenate: true,
)

#set par(
  justify: true,
  leading: 0.65em,
  first-line-indent: 0em,
  spacing: 1.2em,
)

#set heading(numbering: "1.1")
#show heading.where(level: 1): set text(size: 16pt, weight: "bold")
#show heading.where(level: 2): set text(size: 14pt, weight: "bold")
#show heading.where(level: 3): set text(size: 12pt, weight: "bold")

#show heading: it => {
  v(0.5em)
  it
  v(0.3em)
}

#set list(indent: 1em, marker: ("•", "◦", "▪"))
#set enum(indent: 1em, numbering: "1.a.")

#show raw.where(block: false): box.with(
  fill: luma(240),
  inset: (x: 3pt, y: 0pt),
  outset: (y: 3pt),
  radius: 2pt,
)

#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)

#show link: underline

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

// ====================================
// PORTADA
// ====================================

#align(center)[
  #v(3cm)

  #text(size: 80pt)[🇦🇷] #h(1cm) #text(size: 80pt)[🇰🇷]

  #v(1cm)

  #text(size: 28pt, weight: "bold")[한국어]

  #v(0.5em)

  #text(size: 22pt)[Conjugaciones y Vocabulario]

  #v(1cm)

  #text(size: 14pt)[
    Practica
  ]

  #v(1cm)

  #text(size: 12pt, fill: gray)[
    *학생:* Juan Ignacio Raggio \
    *선생님:* 서송은
  ]

  #v(1cm)

  #text(size: 10pt, fill: gray)[
    Actualizado: #datetime.today().display("[day]/[month]/[year]")
  ]
]

#pagebreak()


= Practicando conjugaciones de verbos
- 가다 $->$ ir
  - Pasado: 갔어요
  - Presente: 가요
  - Futuro (=ire=): 가겠어요 $->$ Regla mnemotecnica en español tambien es siempre igual (estudiare, ire, volvere, caminare, correre)
  - Futuro (voy a ir): 가을 거예요

- 일하다 $->$ trabajar
  - Presente: 일해요
  - Pasado: 일했어요
  - Futuro (=trabajare=): 일하겠어요
  - Futuro (voy a trabajar): 일할거예요

- 공부하다 $->$ estudiar
  - Futuro (=estudiare=): 공부하겠어요
  - Pasado: 공부했어요
  - Presente: 공부해요
  - Futuro (voy a estudiar): 공부할거예요

- 운동하다 $->$ hacer ejercicio
  - Presente: 운동해요
  - Pasado: 운동했어요
  - Futuro (ejercitare): 운동하겠어요
  - Futuro (voy a ejercitar): 운동할거예요

- 자다 $->$ dormir
- 먹다 $->$ comer
  - Presente: 먹어요
  - Futuro (comere): =먹겠어요= $->$ Aca pasa lo mismo que abajo, que se juntan dos ㄱ. *Me veo venir que no deberian juntarse, pero en el ejemplo de leere, como te quedan 4 letras en una silaba, me pinto esa.*
  - Futuro (voy a comer): 먹을거예요
  - Pasado: 먹었어요

- 읽다 $->$ leer
  - *Futuro (leere): 일껬어요* $->$ esta bien este? cuando se juntan dos ㄱ se pasa siempre a ㄲ? Igualmente ahora que lo pienso, es como que te quedarian "6 letras" si lo dejo como ahora, por ㄱ + ㄱ = ㄲ, ㅓ + ㅣ = ㅔ, ㅅ + ㅅ = ㅆ aunque no necesariamente estaria mal, pero lo digo como dato
  - Futuro (voy a leer): 읽을거예요
  - Presente: 읽어요
  - Pasado: 읽었어요

- 쓰다 $->$ escribir
- 배우다 $->$ aprender
- 사다 $->$ comprar
- 만나다 $->$ encontrarse

= TODO Profesion y conjugar en pasado

== 누구 누가 (Quien) - Conjugacion tiempo pasado

1. 학생 이 연습했어요
2. 경찰 이 늦었어요
3. 소방관 이 운동하다
4. 선생님 이 생각했어요
5. 대학생 이 읽었어요
6. 간호사 가 봤어요

== 누구 누가 (Quien) - Conjugacion tiempo futuro

1. 학생 이 연습할거예요
2. 경찰 이 늦을거예요
3. 소방관 이 운동을거예요
4. 선생님 이 생각할거예요 / 생각하겠어요 (este segundo tiene mas enfasis en la deteminacion)
5. 대학생 이 읽을거예요
6. 간호사 가 볼거예요 / 보겠어요

= TODO Asignarle verbos a cada sustantivo

#note[
  En la mayoria de los casos voy a escribir verbos que tengan sentido con el
  sustantivo y luego los conjugare mentalmente
]

1. *의사*
#error[
  Ojo con olvidarse las contracciones 보아요 $->$ 봐요
]
  - 동사: 보다 / 봐요 / 봤어요 / 보겠어요 / 볼거예요
  - 동사: 마시다 / 마셔요 / 마셨어요 / 마실거예요 / 마시겠어요
  - 동사: 말하다 / 말해요 / 말할거예요 / 말했어요 / 말하겠어요

2. *계란* (eggs)
  - 동사: 보다 / 볼거예요 / 보겠어요 / 봐요 / 봤어요
  - 동사: 시키다 / 시켜요 / 시켰어요 / 시키겠어요 / 시킬거예요
  - 동사: 

3. *의자*
  - 동사: 보다 / 봐요 / 볼거예요 / 보겠어요
  - 동사: 있다
  - 동사: 앉아있다

4. *시게*
  - 동사: 있다
  - 동사: 버리다
  - 동사: 보다

5. *회사*
  - 동사: 반들다
  - 동사: 사다
  - 동사:

6. *빵*
  - 동사: 먹다
  - 동사: 시키다
  - 동사:

7. *딸기*
  - 동사: 먹다
  - 동사: 시키다
  - 동사:

8. *공원*
  - 동사: 걸어가다 / 걸어가요 / 걸어갔어요 / 걸어갈거예요 / 걸어가겠어요
  - 동사: 나가다 / 나가요 / 나갔어요 / 나가겠어요 / 나갈거예요
  - 동사: 널다

9. *닭고기*
  - 동사: 먹다
  - 동사: 닦다
  - 동사: 반들다

10. *펜*
  - 동사: 있다
  - 동사: 이다
  - 동사: 쓰다

11. *데님 재킷* (denim jacket)
  - 동사: 입다
  - 동사: 빼다
  - 동사: 닦다

12. *냉장고*
  - 동사: 있다
  - 동사: 닦다
  - 동사: 사다

- 사다 $->$ Comprar
- 살다 $->$ Vivir

= Elegir sustantivos para cada verbo

- 버리다: 의자 / 데님 재킷 / 시케
- 닫다:
- 청소하다:
- 들어가다:
- 기다리다:
- 배우다: 한굴 / 
- 얘기하다: 가수 / 경찰
- 열다: 창문 / 문 / 커튼
- 만들다: 의사 / 여사 / 
- 고르다: 
- 충전하다:
- 마시다:
- 타다:
- 정리하다:
- 연습하다:
- 연락하다:
- 쓰다:
- 앉아있다:
- 입다:
- 고르다:





