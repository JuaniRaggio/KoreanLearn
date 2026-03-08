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
  Notemos que ambas tienen en comun "고기" $=>$ "carne"
]

- 토마토 $->$ tomate

- 야채 $->$ 

- 사과 $->$ manzana
- 과일 $->$ fruta
#nota[
  Notemos que ambas tienen en comun "과" $=>$ es una fruta
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

- 책상 $->$ escritorio

- 의자 $->$ silla

- 옷장 $->$ armario

- 책장 $->$ librero

- 나이트테이블 (협탁) $->$ mesa de noche

- 거울 $->$ espejo

- 화장대 $->$ tocador

- 화장하다 $->$ maquillarse

- 화장품 $->$ cosméticos

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

= Expresiones y Frases Útiles

== Saludos por Nivel de Formalidad

#importante[
Usar el nivel de formalidad correcto es CRUCIAL en coreano. Puede ser considerado muy maleducado usar el nivel incorrecto.
]

- 안녕하십니까? $->$ Hola (formal)
- 안녕하세요? $->$ Hola
- 안녕? $->$ Hola

- 안녕히 계십시오 $->$ Adiós (quédate bien - cuando tú te vas)
- 안녕히 계세요 $->$ Adiós (quédate bien)

- 안녕히 가십시오 $->$ Adiós (vete bien - cuando la otra persona se va)
- 안녕히 가세요 $->$ Adiós (vete bien)
- 안녕! $->$ Adiós


- 한국어 할 수 있어요? $->$ Hablas coreano?


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

== Indicadores de tiempo

=== Llevan 에

- 월요일 $->$ Lunes
- 화요일 $->$ Martes
- 수요일 $->$ Miercoles
- 목요일 $->$ Jueves
- 금요일 $->$ Viernes
- 토요일 $->$ Sabado
- 일요일 $->$ Domingo

- 아침 $->$ Manana
- 점심 $->$ Mediodia
- 오후 $->$ Tarde
- 저녁 $->$ Atardecer
- 밤 $->$ Noche
- 새벽 $->$ Madrugada
- 주말 $->$ Fin de semana
- 주중 $->$ Entre la semana
- 올해 $->$ This year
- 작년 $->$ 
- 내년 $->$ Next year
- 평일 $->$ Dias habiles
- 휴일 $->$ Feriado
- 이번주 $->$ Esta semana
- 지난주 $->$ Semana pasada

=== NO llevan 에

- 지금 $->$ Ahora
- 방금 $->$ Recien
- 이따가 $->$ En un rato
- 나중에 $->$ Despues
- 가끔 $->$ A veces
- 항상 $->$ Siempre
- 매일 $->$ Todos los dias
- 금방 $->$ Enseguida / Rapido / Ya (caso ya vuelvo)
- 일찍 $->$ Temprano
- 읒게 $->$ Tarde
- 오을 $->$ Hoy
- 어제 $->$ Ayer
- 내일 $->$ Morning
- 아까 $->$ Hace un rato
- 요즘 $->$ Ultimamente / En estos dias

= Vocabulario especifico informatica

- 운영체제 $=>$ Operating Systems
- 오에스 $=>$ "OS"
- 자료 기지 == 데이터베이스 $=>$ "database"
