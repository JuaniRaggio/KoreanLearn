#set document(
  title: "Sagradas del Coreano - Resumen Completo",
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
      Pagina #counter(page).display() de #counter(page).final().first()
    ]
  ]
)

#set text(
  font: "Noto Sans CJK KR",
  size: 16pt,
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

// Funcion para crear una caja de duda con pregunta y respuesta
#let doubt(pregunta, respuesta) = {
  block(
    fill: rgb("#F3E5F5"),
    stroke: rgb("#7B1FA2") + 1pt,
    inset: 10pt,
    radius: 4pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: rgb("#7B1FA2"), size: 11pt)[질문:]
    #v(0.3em)
    #pregunta
    #v(0.5em)
    #line(length: 100%, stroke: 0.5pt + rgb("#7B1FA2"))
    #v(0.5em)
    #text(weight: "bold", fill: rgb("#7B1FA2"), size: 11pt)[대답:]
    #v(0.3em)
    #respuesta
  ]
}

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

// ====================================
// PORTADA
// ====================================

#align(center)[
  #v(3cm)

  #text(size: 80pt)[🇦🇷] #h(1cm) #text(size: 80pt)[🇰🇷]

  #v(1cm)

  #text(size: 28pt, weight: "bold")[한국어]

  #v(0.5em)

  #text(size: 22pt)[Sagradas del Coreano]

  #v(1cm)

  #text(size: 14pt)[
    Resumen completo de gramática y vocabulario
  ]

  #v(1cm)

  #text(size: 12pt, fill: gray)[
    *학생:* Juan Ignacio Raggio \
    *선생님:* 이선주
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

// ====================================
// CONTENIDO PRINCIPAL
// ====================================

= Guía de Uso

Este documento utiliza cajas de colores para resaltar información importante:

#tip[
팁 - Consejos prácticos y reglas mnemotécnicas que facilitan el aprendizaje.
]

#importante[
중요 - Información fundamental que debe memorizarse o que tiene un impacto significativo en la comunicación.
]

#error[
주의 - Errores comunes que deben evitarse. Incluye ejemplos de uso incorrecto y correcto.
]

#nota[
참고 - Referencias adicionales y aclaraciones para profundizar en el tema.
]

#pagebreak()

= Pronunciación y Alfabeto

== Vocales básicas

Las vocales coreanas se dividen en dos categorías importantes: vocales "sol" y vocales "luna".

#importante[
Esta clasificación de vocales sol/luna es FUNDAMENTAL para la conjugación de verbos. Memorizarla ahorrará muchísimos errores.
]

*Vocales Sol (Yang - 양):*
- ㅏ (a) - vocal abierta
- ㅗ (o) - vocal cerrada

*Vocales Luna (Eum - 음):*
- ㅓ (eo) - vocal abierta
- ㅜ (u) - vocal cerrada
- ㅔ (e)
- ㅕ (yeo)
- ㅣ (i)

#tip[
Regla mnemotécnica: Las vocales "sol" tienen líneas verticales u horizontales arriba (ㅏ, ㅗ), como el sol en el cielo. Las vocales "luna" tienen líneas a la izquierda o abajo (ㅓ, ㅜ).
]

== Trabalenguas (잰말놀이)

Los trabalenguas son excelentes para practicar pronunciación. Aquí algunos de los más usados:

1. *육통통장 적금은 \
황색적금통장이고 \
팔통통장 적금통장은 \
녹색적금통장이다*

2. *작은 토끼 토끼통\
옆에는 큰 토끼 \
토끼통이 있고 큰 \
토끼 토끼통 옆에는 \
작은 토끼 토끼통이 있다*

3. *봄 꿀밤, 단 꿀밤 가을 꿀밤, 안 단 꿀밤*

4. *경찰청창살은 \
외철창살이고 \
검찰청창살은 \
쌍철창살이다*

#pagebreak()

= Gramática Fundamental

== Conjugación en Presente

La conjugación de verbos regulares en presente sigue patrones basados en las vocales sol/luna.

#importante[
    Aquí es donde se usa la clasificación de vocales sol/luna. Prestar mucha atención a este punto.
]

=== Semi-formal (아요/어요/해요)

*Reglas:*

1. *Vocal sol (ㅏ, ㅗ) $->$ 아요*
   - 가다 $->$ 가요 (ir)
   - 사다 $->$ 사요 (comprar)
   - 만나다 $->$ 만나요 (encontrarse)

2. *Vocal luna (ㅓ, ㅜ, ㅔ, ㅕ, ㅣ) $->$ 어요*
   - 먹다 $->$ 먹어요 (comer)
   - 읽다 $->$ 읽어요 (leer)
   - 배우다 $->$ 배워요 (aprender)

3. *하다 $->$ 해요* (irregular)
   - 공부하다 $->$ 공부해요 (estudiar)
   - 운동하다 $->$ 운동해요 (hacer ejercicio)
   - 사랑하다 $->$ 사랑해요 (amar)

#tip[
    Para saber que terminacion usar, basta ver la ultima letra 
  antes de 다 y decidir si es sol, luna o irregular. Recordar
  que el 다 se "borra" cuando hacemos la conjugacion
]

=== Formal (습니다/ㅂ니다)

*Reglas:*
- Consonante final $->$ 습니다
- Vocal final $->$ ㅂ니다

*Ejemplos:*
- 가다 $->$ 갑니다 (ir)
- 먹다 $->$ 먹습니다 (comer)
- 배우다 $->$ 배웁니다 (aprender)
- 사랑하다 $->$ 사랑합니다 (amar)

=== Informal (sin 요)

Simplemente quita el 요 de la forma semi-formal:

- 가다 $->$ 가 (ir)
- 먹다 $->$ 먹어 (comer)
- 배우다 $->$ 배워 (aprender)
- 사랑하다 $->$ 사랑해 (amar)

=== Existencia (ejemplo de verbo importante): 있다 $<=>$ 없다

Los verbos 있다 (haber/existir/tener) y 없다 (no haber/no existir/no tener) son fundamentales.

#importante[
    Estos verbos usan la partícula 이/가 (sujeto) en lugar de 은/는 cuando indican existencia pura.
]

*Estructura:* [Sustantivo]이/가 있다/없다

- Con 받침 $->$ 이
- Sin 받침 $->$ 가

#doubt[
    Que significa "tener 받침"?
][
    Quiere decir que tenes 2 o 3 consonantes en la ultima silaba. Cuando se tiene 받침, la
    ultima consonante se coloca debajo de la silaba, por ejemplo 책 tiene 받침 ya que tiene
    dos consonantes, por lo tanto ㄱ (la ultima consonante) se escribe debajo
]

*Ejemplos básicos:*
- 책상이 있습니다 $->$ Hay un escritorio
- 의자가 없어요 $->$ No hay silla
- 펜이 있어 $->$ Hay una pluma
- 가방이 없습니다 $->$ No hay mochila

== Conjugacion en Futuro

#nota[
_En este caso usamos 받침 X / O $->$ Sin / Con_
]

=== Primera regla:

#nota[
    Esta regla seria "Voy a ..."
]

- Con 받침 $->$ *~을 거예요*
- Sin 받침 $->$ *~ㄹ 거예요*

==== Ejemplos:

- 자다 $->$ 자을 거예요
- 만나다 $->$ 만나을 거예요
- 있다 $->$ 있을 거예요
- 먹다 $->$ 먹을 거예요

=== Segunda regla:

#nota[
    Esta regla seria "Comere", "Cantare", "Ire", etc
]

- Sin importar 받침 o no $->$ *~겠어요*

==== Ejemplos:

- 자다 $->$ 자겠어요
- ... $->$ es muy sencillo, se elimina la terminacion y se reemplaza por 겠어요

== Conjugacion en Pasado

#nota[
    Es mas sencillo partir del presente en este caso. Simplemente pasamos a presente y
    agregasmos *~ㅆ어요*
]

- 가다 $->$ 가요 $->$ 갔어요
- 해다 $->$ 해요 $->$ 했어요

#doubt[
    Porque lo estamos pasando a presente y no decimos "elimina la terminacion" como en el pasaje a presente?
][]

#pagebreak()

== Partículas de Lugar (~에)

La partícula ~에 indica ubicación (estar en) o dirección (ir a).

*Ubicación (~에 있다/없다):*
- 학교에 있어요 $->$ Está en la escuela
- 공원에 있어요 $->$ Está en el parque

*Dirección (~에 가다):*
- 학교에 가요 $->$ Voy a la escuela
- 공원에 가요 $->$ Voy al parque

#tip[
Si la pregunta es "¿Dónde?" $->$ usa 어디에.

Si es "¿A dónde?" $->$ 어디에 가요?
]

*Ejemplos completos:*
- 어디에 있어요? $->$ ¿Dónde está?
- 학교에 있어요 $->$ Está en la escuela
- 어디에 가요? $->$ ¿A dónde vas?
- 학교에 가요 $->$ Voy a la escuela

#pagebreak()

== Posiciones (위치)

Las preposiciones de lugar son esenciales para describir ubicaciones.

*Vocabulario de posiciones:*

#table(
  columns: 3,
  [*Coreano*], [*Español*], [*Ejemplo*],
  [앞], [adelante], [가방이 의자 앞에 있어요],
  [뒤], [atrás], [가방이 의자 뒤에 있어요],
  [위], [arriba/encima], [가방이 의자 위에 있어요],
  [아래 / 밑], [abajo/debajo], [가방이 의자 밑에 있어요],
  [옆], [al lado], [가방이 의자 옆에 있어요],
  [왼쪽], [izquierda], [가방이 의자 왼쪽에 있어요],
  [오른쪽], [derecha], [가방이 의자 오른쪽에 있어요],
  [안], [adentro], [책이 가방 안에 있어요],
  [밖], [afuera], [사람이 집 밖에 있어요],
  [가운데], [centro/medio], [책상이 가운데에 있어요],
  [사이], [entre], [컵하고 책 사이에 있어요],
)

#nota[
아래 y 밑 son sinónimos, ambos significan "debajo".
]

*Patrón de pregunta:*
- [Objeto] [Posición]에 뭐가 있어요? $->$ ¿Qué hay [posición] de [objeto]?

#error[
        뭐 no tiene 받침, ya que tiene 1 consonante y 2 VOALES, el 받침 es cuando se tienen 2 o 3 CONSONANTES
]

*Ejemplos:*
- 책상 위에 뭐가 있어요? $->$ ¿Qué hay encima del escritorio?
- 컴퓨터가 있어요 $->$ Hay una computadora
- 가방 안에 뭐가 있어요? $->$ ¿Qué hay dentro de la mochila?
- 책이 있어요 $->$ Hay un libro

#pagebreak()

== Conectores "y" (하고 / 랑-이랑 / 와-과)

Hay tres formas de decir "y" para conectar sustantivos, con diferentes niveles de formalidad.

=== ~하고 (conversacional)

La forma más neutra y conversacional.

*Ejemplos:*
- 책상하고 의자하고 펜이 있어요 $->$ Hay escritorio y silla y pluma
- 저하고 친구가 가요 $->$ Yo y mi amigo vamos

=== ~랑 / ~이랑 (informal)

La forma más casual, se usa con amigos y familia.

*Regla:*
- Vocal final $->$ 랑
- Consonante final $->$ 이랑

*Ejemplos:*
- 책상이랑 의자랑 펜이 있어요 $->$ Hay escritorio y silla y pluma
- 나랑 친구가 가 $->$ Yo y mi amigo vamos

=== ~와 / ~과 (formal/escrito)

La forma más formal, se usa en escritura académica y documentos oficiales.

*Regla:*
- Vocal final $->$ 와
- Consonante final $->$ 과

*Ejemplos:*
- 책상과 의자와 펜이 있어요 $->$ Hay escritorio y silla y pluma
- 한국과 아르헨티나 $->$ Corea y Argentina

#error[
No mezclar los niveles. Usar solo un tipo de conector en cada oración: 하고 O 랑/이랑 O 와/과.
]

== Partícula ~도 (también)

La partícula ~도 significa "también" y reemplaza las partículas de sujeto (이/가) u objeto (을/를).

*Estructura:* Sustantivo + 도

*Ejemplos:*
- 저도 학생이에요 $->$ Yo también soy estudiante
- 이것도 있어요 $->$ Esto también está/hay
- 후안도 한국어 공부해요 $->$ Juan también estudia coreano

#tip[
Al usar 도, no usar 이/가 o 은/는 al mismo tiempo. ~도 las reemplaza.
]

#pagebreak()

== Palabras Interrogativas

#table(
  columns: 4,
  [*Coreano*], [*Español*], [*Inglés*], [*Ejemplo*],
  [뭐 / 무엇], [qué], [what], [이게 뭐예요?],
  [누구], [quién], [who], [누구예요?],
  [어디], [dónde], [where], [어디 가요?],
  [언제], [cuándo], [when], [언제 가요?],
  [왜], [por qué], [why], [왜요?],
  [어떻게], [cómo], [how], [어떻게 해요?],
  [어느], [cuál], [which], [어느 나라 사람이에요?],
  [몇], [cuántos], [how many], [몇 살이에요?],
)

*Ejemplos detallados:*

=== 뭐 / 무엇 (qué)
- 뭐예요? $->$ ¿Qué es?
- 이게 뭐예요? $->$ ¿Qué es esto?
- 뭐 해요? $->$ ¿Qué haces?

#nota[
뭐 es la forma corta de 무엇. En conversación se usa casi siempre 뭐.
]

=== 누구 (quién)
- 누구예요? $->$ ¿Quién es?
- 이 사람은 누구예요? $->$ ¿Quién es esta persona?

=== 어디 (dónde)
- 어디예요? $->$ ¿Dónde es?
- 어디 가요? $->$ ¿A dónde vas?
- 화장실이 어디예요? $->$ ¿Dónde está el baño?

=== 언제 (cuándo)
- 언제예요? $->$ ¿Cuándo es?
- 언제 가요? $->$ ¿Cuándo vas?

=== 왜 (por qué)
- 왜요? $->$ ¿Por qué?
- 왜 공부해요? $->$ ¿Por qué estudias?

=== 어떻게 (cómo)
- 어떻게 지내요? $->$ ¿Cómo estás?
- 이거 어떻게 해요? $->$ ¿Cómo hago esto?

=== 어느 (cuál)
- 어느 나라 사람이에요? $->$ ¿De qué país eres?
- 어느 것이 좋아요? $->$ ¿Cuál te gusta?

=== 몇 (cuántos)
- 몇 살이에요? $->$ ¿Cuántos años tienes?

#pagebreak()

== Peticiones Corteses: ~(으)세요

La terminacion ~(으)세요 se usa para hacer peticiones o dar instrucciones de manera cortés.

#importante[
Esta forma es muy usada en clase y en situaciones cotidianas para pedir algo educadamente.
]

*Estructura:*
- Raiz termina en consonante $->$ ~으세요
- Raiz termina en vocal $->$ ~세요

*Ejemplos regulares:*
- 먹다 $->$ 먹으세요 (coma por favor)
- 가다 $->$ 가세요 (vaya por favor)
- 보다 $->$ 보세요 (mire por favor)
- 주다 $->$ 주세요 (de por favor)

*Frases de ejemplo:*
- 칠십이 페이지 보세요! $->$ ¡Miren la pagina 72!

=== Verbos Irregulares con ~(으)세요

#error[
Algunos verbos tienen cambios irregulares al conjugar con ~(으)세요. Memorizar estos patrones.
]

*Irregular ㅂ* (ㅂ se elimina, se agrega 우):
- 줍다 $->$ 주우세요 (recoja por favor)
- 쓰레기를 주우세요 $->$ Recoja la basura por favor

*Irregular ㄷ* (ㄷ cambia a ㄹ):
- 듣다 $->$ 들으세요 (escuche por favor)
- 잔나비 노래를 들으세요 $->$ Escuche canciones de Jannabi

*Irregular ㄹ* (ㄹ se elimina):
- 팔다 $->$ 파세요 (venda por favor)
- 이 핸드폰을 중고시장에서 파세요 $->$ Venda este celular en el mercado de segunda mano

#pagebreak()

== Fechas (날짜)

*Estructura:* ~년 ~월 ~일 (ano, mes, dia)

=== Meses del Ano (월)

#table(
  columns: 3,
  [*Mes*], [*Coreano*], [*Nota*],
  [1월], [일월], [],
  [2월], [이월], [],
  [3월], [삼월], [],
  [4월], [사월], [],
  [5월], [오월], [],
  [6월], [유월], [irregular],
  [7월], [칠월], [],
  [8월], [팔월], [],
  [9월], [구월], [],
  [10월], [시월], [irregular],
  [11월], [십일월], [],
  [12월], [십이월], [],
)

#error[
6월 se pronuncia 유월 (no 육월) y 10월 se pronuncia 시월 (no 십월). Estos son irregulares.
]

=== Ejemplos - preguntas sobre fechas

- 오늘 며칠이에요? $->$ ¿Qué fecha es hoy?

- 이천이십오년 십일월 십사일이에요 $->$ Es 14 de noviembre de 2025

- 생일 언제예요? $->$ ¿Cuándo es tu cumpleanos?

- 제 생일은 이천이년 팔월 이십일이에요 $->$ Mi cumpleanos es el 20 de agosto de 2002

#pagebreak()

= Resumen Visual Rápido

== Conjugacion Rapida

#align(center)[
  #table(
    columns: 4,
    [*Verbo*], [*Formal*], [*Semi-formal*], [*Informal*],
    [가다], [갑니다], [가요], [가],
    [먹다], [먹습니다], [먹어요], [먹어],
    [공부하다], [공부합니다], [공부해요], [공부해],
    [자다], [잡니다], [자요], [자],
    [있다], [있습니다], [있어요], [있어],
    [없다], [없습니다], [없어요], [없어],
  )
]

== Particulas Esenciales

#align(center)[
  #table(
    columns: 3,
    [*Partícula*], [*Uso*], [*Ejemplo*],
    [이/가], [Sujeto], [책이 있어요],
    [은/는], [Tópico], [저는 학생이에요],
    [을/를], [Objeto], [밥을 먹어요],
    [에], [Lugar/Dirección], [학교에 가요],
    [도], [También], [저도 가요],
    [하고/랑/과], [Y (conectar)], [책하고 펜],
  )
]

== Unidades para armar numeros

#importante[
  Recordar empaquetar de a 10k los numeros
]

#table(
  columns: 2,
  [*Numero*], [*Nombre*],
  [1], [일],
  [2], [이],
  [3], [삼],
  [4], [사],
  [5], [오],
  [6], [육],
  [7], [실],
  [8], [팔],
  [9], [구],
  [10], [십],
  [100], [백],
  [1,000], [천],
  [10,000], [만],
  [100,000], [십만],
  [1,000,000], [백만],
  [10,000,000], [천만],
  [100,000,000], [억],
)

