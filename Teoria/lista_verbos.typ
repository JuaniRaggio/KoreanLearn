#set document(
  title: "Lista de verbos coreano",
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
      [한국어 - 이선주],
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

  #text(size: 22pt)[Lista de verbos]

  #v(1cm)

  #text(size: 14pt)[
    Verbos Coreano
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

#table(
  columns: 2,
  align: center,
  [*동사*], [*Significado*],
  [가다], [Ir],
  [걱정하다], [Preocuparse],
  [걸어가다], [Ir caminando],
  [기억나다], [Recordar cosas repentino],
  [꺼내다], [Sacar],
  [나가다], [Salir (ir)],
  [내리다], [Bajar],
  [놀다], [Jugar / joder],
  [늦다], [Demorar/Llegar tarde],
  [시키다], [Pedir/Pedir delivery/Ordenar a alguien que haga algo],
  [세우다], [Parar algo o a alguien],
  [달려가다], [Ir corriendo],
  [대답하다], [Responder hablado],
  [돌아가다], [Volver (ir)],
  [오다], [Venir],
  [설거지하다], [Lavar los platos],
  [외우다], [Memorizar],
  [앉아있다], [Estar sentado],
  [서있다], [Estar parado],
  [버리다], [Desechar],
  [팔다], [Vender],
  [올라가다], [Ir subiendo],
  [복습하다], [Repasar],
  [닦다], [Limpiar cosas puntuales],
  [씻다], [Lavar bajo el agua],
  [치우다], [Limpiar previamente],
  [빼다], [Quitar/Sacar],
  [벗다], [Desvestirse],
  [다치다], [Lastimarse],
  [알다], [Conocer/saber],
  [싫어하다], [No gustar],
  [시작하다], [Comenzar],
  [전화하다], [Llamar por telefono],
  [정리하다], [Ordenar],
  [준비하다], [Preparar],
  [좋아하다], [Gustar],
  [청소하다], [Limpiar lugares],
  [타다], [Montar],
  [통화하다], [Hablar por telefono],
  [하다], [Hacer],
  [끝나다], [Finalizar],
  [생각하다], [Pensar],
  [쉬다], [Descansar],
  [쓰다], [Escribir / Usar],
  [숙제하다], [Hacer la tarea],
  [들어가다], [Entrar (ir)],
  [되다], [Poder],
  [마시다], [Beber],
  [만나다], [Encontrarse con personas],
  [만들다], [Armar],
  [먹다], [Comer],
  [말하다], [Hablar Disertar],
  [문자하다], [Mandar mensajes],
  [물어보다], [Preguntar],
  [받다], [Recibir],
  [보다], [Mirar / Ver],
  [배우다], [Aprender],
  [사다], [Comprar],
  [살다], [Vivir],
  [이해하다], [Entender],
  [앉다], [Sentarse],
  [요리하다], [Cocinar],
  [없다], [No haber / no estar (no tener)],
  [있다], [Haber / estar (tener)],
  [일하다], [Trabajar],
  [읽다], [Leer],
  [얘기하다], [Conversar],
  [연습하다], [Practicar],
  [주다], [Dar],
  [자다], [Dormir],
  [보내다], [Enviar mandar],
  [기다리다], [Esperar],
  [게임하다], [Jugar a los videos],
  [예약하다], [Reservar],
  [아니다], [Irregular - No ser (아니에요)],
  [만지다], [Tocar],
  [잡다], [Agarrar sostener],
  [놓다], [Dejar soltar],
  [충전하다], [Cargar bateria],
  [넣다], [Agregar Poner],
)
