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

== Verbo Ser (이다)

El verbo 이다 es equivalente al verbo "ser" en español.

#importante[
El coreano tiene 3 niveles de formalidad que se deben distinguir según el contexto: formal, semi-formal e informal.
]

=== Formal (~입니다 / ~입니까?)

*Uso:* Con superiores, desconocidos, situaciones oficiales.

*Estructura:* Sustantivo + 입니다 (afirmación) / 입니까? (pregunta)

*Ejemplos:*
- 저는 이선주입니다 $->$ Soy Lee Sunjoo
- 저는 후안입니다 $->$ Soy Juan
- 아르헨티나 사람입니까? $->$ ¿Es argentino?
- 네, 아르헨티나 사람입니다 $->$ Sí, soy argentino

=== Semi-formal (~이에요 / ~예요)

*Uso:* Situaciones neutras, amigables, conversación cotidiana.

*Estructura:*
- Consonante final $->$ ~이에요
- Vocal final $->$ ~예요

*Ejemplos:*
- 후안이에요 $->$ Soy Juan (termina en consonante ㄴ)
- 이선주예요 $->$ Soy Lee Seon-ju (termina en vocal ㅜ)
- 학생이에요? $->$ ¿Es estudiante?

#error[
No usar 이에요 después de vocal, ni 예요 después de consonante.
]

=== Informal (~이야 / ~야)

*Uso:* Amigos cercanos, familia, personas de menor edad.

*Estructura:*
- Consonante final $->$ ~이야
- Vocal final $->$ ~야

*Ejemplos:*
- 후안이야 $->$ Soy Juan
- 아르헨티나 사람이야? $->$ ¿Eres argentino?
- 응, 아르헨티나 사람이야 $->$ Sí, soy argentino

#pagebreak()

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
  antes de 다 y decidir si es sol, luna o irregular
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

#pagebreak()

== Verbos Específicos Conjugados

Aquí los verbos más comunes que verás en clase:

=== 일하다 (trabajar)
- 일합니다 / 일해요 / 일해
- 저는 오늘 일해요 $->$ Hoy trabajo

=== 공부하다 (estudiar)
- 공부합니다 / 공부해요 / 공부해
- 오늘 우리는 한국어 공부해요 $->$ Hoy estudiamos coreano

=== 운동하다 (hacer ejercicio)
- 운동합니다 / 운동해요 / 운동해
- 마리아 씨는 내일 운동해요 $->$ María hace ejercicio mañana

=== 자다 (dormir)
- 잡니다 / 자요 / 자
- 저는 오늘 일찍 자요 $->$ Hoy duermo temprano

#error[
자다 es irregular: se conjuga como 자요, NO como 자아요
]

=== 먹다 (comer)
- 먹습니다 / 먹어요 / 먹어
- 밥 먹어요 $->$ Como arroz

=== 마시다 (beber)
- 마십니다 / 마셔요 / 마셔
- 물 마셔요 $->$ Bebo agua

=== 읽다 (leer)
- 읽습니다 / 읽어요 / 읽어
- 책 읽어요 $->$ Leo un libro

=== 전화하다 (llamar)
- 전화합니다 / 전화해요 / 전화해
- 엄마는 오늘 전화해요 $->$ Mamá llama hoy

=== 이야기하다 / 말하다 (hablar)
- 이야기합니다 / 이야기해요 / 이야기해
- 다니엘은 학교 숙제 이야기해요 $->$ Daniel habla de la tarea

#pagebreak()

== Existencia: 있다 $<=>$ 없다

Los verbos 있다 (haber/existir/tener) y 없다 (no haber/no existir/no tener) son fundamentales.

#importante[
Estos verbos usan la partícula 이/가 (sujeto) en lugar de 은/는 cuando indican existencia pura.
]

*Estructura:* [Sustantivo]이/가 있다/없다

- Consonante final $->$ 이
- Vocal final $->$ 가

*Conjugaciones:*

*있다:*
- 있습니다 (formal)
- 있어요 (semi-formal)
- 있어 (informal)

*없다:*
- 없습니다 (formal)
- 없어요 (semi-formal)
- 없어 (informal)

*Ejemplos básicos:*
- 책상이 있습니다 $->$ Hay un escritorio
- 의자가 없어요 $->$ No hay silla
- 펜이 있어 $->$ Hay una pluma
- 가방이 없습니다 $->$ No hay mochila

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
Si la pregunta es "¿Dónde?", usa 어디에. Si es "¿A dónde?", también usa 어디에 가요?
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

Las palabras interrogativas son fundamentales para hacer preguntas.

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

*Estructura básica:* [Interrogativa] + verbo + (요)?

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

= Vocabulario Esencial

== Pronombres Personales

*Yo:*
- 저 (formal/semi-formal)
- 나 (informal)

*Nosotros:*
- 저희 (formal - cuando se habla de uno mismo)
- 우리 (general)

#importante[
Usar 저 y 저희 en situaciones formales. Usar 나 solo con amigos cercanos.
]

== Nacionalidades

*Patrón:* País + 사람

Principales países:
- 한국 사람 $->$ coreano
- 아르헨티나 사람 $->$ argentino
- 중국 사람 $->$ chino
- 일본 사람 $->$ japonés
- 미국 사람 $->$ estadounidense
- 영국 사람 $->$ británico
- 스페인 사람 $->$ español
- 이탈리아 사람 $->$ italiano
- 태국 사람 $->$ tailandés
- 베트남 사람 $->$ vietnamita
- 브라질 사람 $->$ brasileño
- 멕시코 사람 $->$ mexicano

*Idiomas:*

Para formar el idioma, usa: País + 어

- 한국어 $->$ coreano (idioma)
- 스페인어 $->$ español (idioma)
- 영어 $->$ inglés
- 일본어 $->$ japonés (idioma)
- 이탈리아어 $->$ italiano (idioma)

#pagebreak()

== Profesiones (직업)

*Preguntas:*
- 직업이 뭡니까? (formal)
- 직업이 뭐예요? (semi-formal)
- 직업이 뭐야? (informal)

*Profesiones comunes:*

- 학생 $->$ estudiante
  - 초등학생 $->$ estudiante de primaria
  - 중학생 $->$ estudiante de secundaria
  - 고등학생 $->$ estudiante de preparatoria
  - 대학생 $->$ universitario
- 선생님 $->$ profesor
- 교수님 $->$ profesor universitario
- 회사원 / 직장인 $->$ empleado de oficina
- 의사 $->$ médico
- 간호사 $->$ enfermera
- 경찰 / 경찰관 $->$ policía
- 소방관 $->$ bombero
- 공무원 $->$ funcionario público
- 엔지니어 $->$ ingeniero
- 디자이너 $->$ diseñador
- 쉐프 / 요리사 $->$ chef/cocinero
- 변호사 $->$ abogado
- 건축가 $->$ arquitecto

#pagebreak()

== Lugares (장소)

=== Educación
- 학교 $->$ escuela
- 초등학교 $->$ escuela primaria
- 중학교 $->$ secundaria
- 고등학교 $->$ preparatoria
- 대학교 $->$ universidad

=== Comercios
- 가게 $->$ tienda
- 옷가게 $->$ tienda de ropa
- 신발가게 $->$ zapatería
- 빵집 $->$ panadería
- 꽃집 $->$ florería
- 술집 $->$ bar
- 편의점 $->$ tienda 24h
- 마트 $->$ supermercado
- 쇼핑몰 $->$ shopping/plaza
- 백화점 $->$ gran tienda/galería

=== Establecimientos
- 회사 $->$ empresa
- 집 $->$ casa
- 방 $->$ sala/habitación
- 노래방 $->$ karaoke
- PC방 (피씨방) $->$ cibercafé
- 찜질방 $->$ sauna coreana
- 식당 / 음식점 $->$ restaurante
- 시장 $->$ mercado
- 공원 $->$ parque
- 극장 / 영화관 $->$ teatro/cine
- 공항 $->$ aeropuerto
- 병원 $->$ hospital
- 은행 $->$ banco
- 대사관 $->$ embajada

#pagebreak()

== Objetos de la Casa

=== Salón de clases (교실)
- 책상 $->$ escritorio
- 의자 $->$ silla
- 펜 $->$ pluma
- 가방 $->$ mochila
- 컴퓨터 $->$ computadora
- 노트북 / 랩탑 $->$ laptop
- 텔레비전 (티비) $->$ televisión
- 책 $->$ libro
- 공책 $->$ cuaderno
- 칠판 $->$ pizarrón

=== Habitación (방 / 침실)
- 침대 $->$ cama
- 책상 $->$ escritorio
- 의자 $->$ silla
- 옷장 $->$ armario
- 책장 $->$ librero
- 나이트테이블 (협탁) $->$ mesa de noche
- 거울 $->$ espejo
- 화장대 $->$ tocador
- 화장하다 $->$ maquillarse
- 화장품 $->$ cosméticos
- 시겨 $->$ reloj
- 옷 $->$ ropa

=== Cocina (주방 / 부엌)
- 식탁 $->$ mesa de comedor
- 냉장고 $->$ refrigerador
- 가스 레인지 $->$ estufa de gas
- 전자 레인지 $->$ microondas
- 오븐 $->$ horno
- 믹서기 $->$ licuadora
- 칼 $->$ cuchillo
- 도마 $->$ tabla de cortar
- 그릇 $->$ plato/tazón
- 숟가락 $->$ cuchara
- 젓가락 $->$ palillos
- 포크 $->$ tenedor
- 가위 $->$ tijeras
- 컵 (잔) $->$ vaso/taza
- 후라이팬 $->$ sartén
- 냄비 $->$ olla

=== Baño (화장실 / 욕실)
- 수건 $->$ toalla
- 휴지 $->$ papel higiénico
- 휴지통 (쓰레기통) $->$ basurero
- 칫솔 $->$ cepillo de dientes
- 치약 $->$ pasta dental
- 샴푸 $->$ champú
- 린스 (트리트먼트) $->$ acondicionador
- 바디워시 $->$ jabón corporal
- 비누 $->$ jabón
- 욕조 $->$ bañera

=== Sala (거실)
- 티비 $->$ TV
- 소파 $->$ sofá
- 거실 테이블 $->$ mesa de sala
- 가족 사진 $->$ foto familiar

=== Balcón (베란다)
- 김치 냉장고 $->$ refrigerador de kimchi
- 세탁기 $->$ lavadora
- 건조기 $->$ secadora

=== Patio (마당)
- 나무 $->$ árbol
- 꽃 $->$ flor
- 자전거 $->$ bicicleta
- 자동차 (차) $->$ automóvil

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

=== Preguntas sobre Fechas

- 오늘 며칠이에요? $->$ ¿Qué fecha es hoy?
- 이천이십오년 십일월 십사일이에요 $->$ Es 14 de noviembre de 2025

- 생일 언제예요? $->$ ¿Cuándo es tu cumpleanos?
- 제 생일은 이천이년 팔월 이십일이에요 $->$ Mi cumpleanos es el 20 de agosto de 2002

#pagebreak()

== Acciones (동사)

=== Actividades cotidianas
- 가다 $->$ ir
- 일하다 $->$ trabajar
- 공부하다 $->$ estudiar
- 운동하다 $->$ hacer ejercicio
- 자다 $->$ dormir
- 먹다 $->$ comer
- 읽다 $->$ leer
- 쓰다 $->$ escribir
- 배우다 $->$ aprender
- 사다 $->$ comprar
- 만나다 $->$ encontrarse

=== Comunicación
- 전화하다 $->$ llamar por teléfono
- 이야기하다 $->$ hablar/contar
- 말하다 $->$ hablar
- 듣다 $->$ escuchar
- 대답하다 $->$ responder
- 질문하다 $->$ preguntar

=== Otros
- 사랑하다 $->$ amar
- 좋아하다 $->$ gustar
- 마시다 $->$ beber
- 부탁하다 $->$ pedir un favor

#pagebreak()

= Expresiones y Frases Útiles

== Saludos por Nivel de Formalidad

#importante[
Usar el nivel de formalidad correcto es CRUCIAL en coreano. Puede ser considerado muy maleducado usar el nivel incorrecto.
]

=== Formal
- 안녕하십니까? $->$ Hola (formal)
- 안녕히 계십시오 $->$ Adiós (quédate bien - cuando tú te vas)
- 안녕히 가십시오 $->$ Adiós (vete bien - cuando la otra persona se va)

=== Semi-formal
- 안녕하세요? $->$ Hola
- 안녕히 계세요 $->$ Adiós (quédate bien)
- 안녕히 가세요 $->$ Adiós (vete bien)

=== Informal
- 안녕? $->$ Hola
- 안녕! $->$ Adiós

#tip[
Para recordar 계세요 vs 가세요: 계 viene de 있다 (quedarse/estar), 가 viene de 가다 (ir). Usar 계세요 cuando uno se va, y 가세요 cuando la otra persona se va.
]

== Cortesía

=== Agradecer

*Formal:*
- 고맙습니다
- 감사합니다

*Semi-formal:*
- 고마워요
- 감사해요

*Informal:*
- 고마워
- ㄱㅅ (abreviación de texto)

*Respuesta:*
- 천만에요 $->$ De nada (semi-formal)
- 천만에 $->$ De nada (informal)

=== Disculparse

*Formal:*
- 미안합니다
- 죄송합니다

*Semi-formal:*
- 미안해요
- 죄송해요

*Informal:*
- 미안해
- 미안
- ㅈㅅ (abreviación de texto)

=== Respuestas básicas

*Sí:*
- 예 / 네 (formal/semi-formal)
- 응 / 어 (informal)

*No:*
- 아니에요 (semi-formal)
- 아니야 (informal)

*Está bien:*
- 괜찮습니다 (formal)
- 괜찮아요 (semi-formal)
- 괜찮아 (informal)

== Presentaciones

- 만나서 반갑습니다 $->$ Mucho gusto (formal)
- 만나서 반가워요 $->$ Mucho gusto (semi-formal)
- 만나서 반가워 $->$ Mucho gusto (informal)
- 잘 부탁드립니다 $->$ Bien te pido/encantado de trabajar contigo (formal)
- 잘 부탁드려요 $->$ ídem (semi-formal)
- 잘 부탁해 $->$ ídem (informal)

== Celebraciones

- 축하해요! $->$ ¡Felicidades!
- 생일 축하해요 $->$ ¡Feliz cumpleaños!
- 화이팅! $->$ ¡Ánimo! / ¡Vamos!

== Comandos de Clase

Estos comandos los escucharás constantemente en clase:

- 책을 펴세요 $->$ Abran el libro
- 책을 보세요 $->$ Miren el libro
- 잘 들으세요 $->$ Escuchen bien
- 따라 하세요 $->$ Repitan
- 읽으세요 $->$ Lean
- 쓰세요 $->$ Escriban
- 질문하세요 $->$ Pregunten
- 대답하세요 $->$ Respondan
- 알겠어요? $->$ ¿Entienden?
- 질문 있어요? $->$ ¿Hay preguntas?

#pagebreak()

= Notas Culturales

== Orden de Palabras

#importante[
  El coreano tiene un orden de palabras COMPLETAMENTE diferente 
al español
]

*Español/Inglés:* S + V + O + C

*Coreano:* S + C + O + V

*Ejemplo:*
- *Coreano:* 저는 집에서 사과를 먹어요 (Yo casa-en manzana como)

#tip[
  El verbo SIEMPRE va al final en coreano. Evitar traducir de 
Español, intentar pensar en Coreano
]

== Fiestas y Celebraciones

- 설날 $->$ Año Nuevo lunar
- 추석 $->$ Festival de la cosecha (Chuseok)
- 한글날 $->$ Día del Hangeul (9 de octubre)
- 개천절 $->$ Día de la fundación de Corea
- 광복절 $->$ Día de la liberación

== Literatura y Cultura

- 채식주의자 $->$ La vegetariana (Han Kang)
- 소년이 온다 (Han Kang)
- 안중근 $->$ Héroe nacional coreano

#pagebreak()

= Diálogos Modelo

== Conversación 1: Presentación básica

*A:* 안녕하세요? 저는 유키예요. 이름이 뭐예요?

*B:* 안녕하세요? 저는 치엔이에요. 유키 씨는 어느 나라 사람이에요?

*A:* 저는 일본 사람이에요. 치엔 씨는 대만 사람이에요?

*B:* 아니요. 저는 중국 사람이에요.

*A:* 아, 네. 만나서 반가워요. 잘 부탁해요.

*B:* 저도요. 잘 부탁해요.

== Conversación 2: ¿Qué haces hoy?

*A:* 후안 씨, 오늘 뭐 해요?

*B:* 오늘 학교에 가요. 한국어 공부해요. 마리아 씨는요?

*A:* 저는 오늘 집에 있어요. 책 읽어요.

*B:* 아, 네. 좋아요!

== Conversación 3: Ubicaciones

*A:* 가방이 어디에 있어요?

*B:* 방에 있어요. 책상 아래에 있어요.

*A:* 책은 가방 안에 있어요?

*B:* 네, 가방 안에 있어요.

#pagebreak()

= Errores Comunes y Tips Finales

== Errores más frecuentes

#error[
Olvidarse que el verbo va al FINAL de la oración.
Correcto: 저는 집에서 사과를 먹어요 \
Incorrecto: 저는 먹어요 사과를 집에서
]

#tip[
  Intentar *evitar a toda costa* el traducir de español a Coreano,
en cambio pensar directamente lo que sea que estemos diciendo en
Coreano. Puede que al principio sea raro o dificil pero va a 
ayudar mucho en la adaptacion del idioma
]

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

