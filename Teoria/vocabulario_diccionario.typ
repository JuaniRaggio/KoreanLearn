#set document(
  title: "단너",
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

  #text(size: 22pt)[Vocabulario]

  #v(1cm)

  #text(size: 14pt)[
    Archivo con vocabulario importante
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

// ====================================
// TABLA DE CONTENIDOS
// ====================================

#outline(
  title: [Índice],
  depth: 3,
  indent: auto,
)

#pagebreak()

= Tips pronunciacion

#doubt[
  Hay una letra que nos la hacen asociar con una del alfabeto latin, que no
  recuerdo cual era que 송은 no lo recomendaba, pero no llegue a anotar cual
][

]

= 단너(Vocabulario)

== Habitacion

- 창문 $->$ ventana
- 문 $->$ puerta
#nota[
  Ver que ventana y puerta tienen en comun "puerta", pero lo que los
  distingue es 창 $->$ "ventana literal". Entonces entiendo que 창문 es
  literalmente "ventana-puerta", que probablemente se refiera a una
  ventana que se puede abrir
]

- 커튼 $->$ cortina

- 액자 $->$ cuadro

- 침대 $->$ cama

- 책 $->$ libro
- 책꽂이 $->$ biblioteca / estante
- 책상 $->$ escritorio
#nota[
  Notar que los tres:

  _libro, biblioteca, escritorio_

  Contienen "책" == libro, tiene sentido ya que todos tienen que ver con libros
]

- 의자 $->$ silla

- 스탠드 $->$ lampara de escritorio

- 축구꽁 $->$ pelota de futbol

- 화분 $->$ planta

- 베개 $->$ almohada

- 이불 $->$ frazada

- 전등 $->$ lampara de techo

- 방 $->$ habitacion

- 슬리퍼 / 실내화 $->$ pantuflas

- 소파 $->$ sofa

- 티비 $->$ televisor

- 시게 $->$ reloj

- 티비장 / 거실장 $->$ mesa para televisor

\

== Alimentos

- 아이스크림 $->$ helado

- 케이크 $->$ torta

- 계란 $->$ huevo

- 우유 $->$ leche

- 주스 $->$ jugo

- 물 $->$ agua

- 음료수 $->$ gaseosa

- 빵 $->$ pan

- 바나나 $->$ banana

- 치즈 $->$ queso

- 파이 $->$ pastel

- *호박 $->$ calabaza*

- 포도 $->$ uva

- 오렌지 $->$ naranja

- 머핀 $->$ muffin

- 요거트 $->$ 

- 초콜릿 $->$ chocolate

- 고기 $->$ carne
- 닭고기 $->$ carne de pollo
#nota[
  Notemos que ambas tienen en comun "고기" => "carne"
]

- 토마토 $->$ tomate

- 야채 $->$ 

- 사과 $->$ manzana
- 과일 $->$ fruta
#nota[
  Notemos que ambas tienen en comun "과" => es una fruta
]

- 소시지 $->$ salchicha

- 양파 $->$ cebolla

- 통조림 $->$ alimentos enlatados

- 오렌지조스 $->$ jugo de naranja

\

== Transportes

- 버스 $->$ bus

- 배 $->$ barco

- 앰뷸런스 $->$ ambulancia

- 자전거 $->$ bicicleta

- 택시 $->$ taxi

- 비행기 $->$ avion

- 차 $->$ auto

- 기차 $->$ tren

