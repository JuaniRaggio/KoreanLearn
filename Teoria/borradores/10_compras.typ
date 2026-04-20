#set document(
  title: "Notas de Clase - Compras y Vocabulario",
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
)

#set text(
  font: "Noto Sans CJK KR",
  size: 11pt,
  lang: "ko",
)

#set par(
  justify: true,
  leading: 0.65em,
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

#align(center)[
  #text(size: 20pt, weight: "bold")[한국어 수업 노트]
  #v(0.5em)
  #text(size: 14pt)[Compras y Vocabulario]
]

#v(1cm)

= Música y Cultura

== Banda: 혁오 (HYUKOH)

*Canciones mencionadas:*
- 위잉위잉
- 영맨

#v(0.5em)

= Vocabulario: Edad y Juventud

*Conceptos de juventud:*
- 젊다 $->$ ser joven (adjetivo)
- 젊은이 $->$ persona joven
- 나이가 어리다 $->$ tener edad pequeña
- 어린 사람 $->$ persona pequeña/niño

#v(0.5em)

= Orden de Consonantes

Orden alfabético de consonantes:
```
ㄱ > ㄴ > ㅁ > ㅍ > ㄹ > ㅂ
```

#v(0.5em)

= Ejercicio: Objetos en la Habitación

== Pregunta inicial

*방에 뭐가 있어요?* (¿Qué hay en la habitación?)

*Respuesta:*
방에 의자하고 책상하고 펜하고 가방하고 침대하고 책하고 베개가 있어요.

En la habitación hay: silla, escritorio, pluma, mochila, cama, libro y almohada.

== Ubicaciones específicas

*의자가 어디에 있어요?*
- 의자가 책상 앞에 있어요. $->$ La silla está delante del escritorio.

*책상이 어디에 있어요?*
- 책상이 침대 옆에 있어요. $->$ El escritorio está al lado de la cama.

*펜이 어디에 있어요?*
- 펜이 책상 위에 있어요. $->$ La pluma está encima del escritorio.

*가방이 어디에 있어요?*
- 가방이 침대 위에 있어요. $->$ La mochila está encima de la cama.

*침대가 어디에 있어요?*
- 침대가 책상 옆에 있어요. $->$ La cama está al lado del escritorio.

*책이 어디에 있어요?*
- 책이 책상 위에 있어요. $->$ El libro está encima del escritorio.

*베개가 어디에 있어요?*
- 베개가 침대 위하고 가방 옆에 있어요. $->$ La almohada está encima de la cama y al lado de la mochila.

== Objetos adicionales

- 컴퓨터가 책상 위에 있어요. $->$ La computadora está encima del escritorio.
- 시계가 침대 옆에 있어요. $->$ El reloj está al lado de la cama.
- 옷이 침대 위에 있어요. $->$ La ropa está encima de la cama.

#pagebreak()

= Vocabulario de Negocios

*Hora:* 9:10

*Vocabulario:*
- 악수하다 $->$ dar la mano / estrechar la mano
- 명함 $->$ tarjeta de presentación

#v(0.5em)

= Compras (쇼핑)

== Lista de compras

*쇼핑할 물건* (Cosas para comprar):
- 사과 $->$ manzana
- 우유 $->$ leche
- 오렌지 $->$ naranja
- 주스 $->$ jugo
- 빵 $->$ pan
- 물 $->$ agua

#v(0.5em)

= Vocabulario: Tiendas y Productos

== Frutería (과일 가게)

*과일 가게에 뭐가 있어요?* (¿Qué hay en la frutería?)

#grid(
  columns: 2,
  gutter: 1em,
  [
    - 사과 $->$ manzana
    - 오렌지 $->$ naranja
    - 수박 $->$ sandía
    - 포도 $->$ uva
    - 딸기 $->$ fresa
    - 망고 $->$ mango
    - 파파야 $->$ papaya
    - 파인애플 $->$ piña
  ],
  [
    - 멜론 $->$ melón
    - 키위 $->$ kiwi
    - 리치 $->$ lichi
    - 바나나 $->$ banana
    - 블루베리 $->$ arándano
    - 체리 $->$ cereza
    - 라즈베리 $->$ frambuesa
    - 복숭아 $->$ durazno
  ]
)

=== Pregunta personal

*무슨 과일 좋아해요?* (¿Qué fruta te gusta?)

*뭐 vs 무슨:*

뭐 $=>$ siempre despues viene un verbo por ejemplo (하다, 먹다, 사다)

무슨 ... de que tipo?

왜냐면

*Respuesta:*
저는 파인애플하고 바나나 좋아해요. $->$ Me gusta la piña y la banana.

== Verdulería (야채/채소 가게)

*야채(채소) 가게에 뭐가 있어요?* (¿Qué hay en la verdulería?)

#grid(
  columns: 2,
  gutter: 1em,
  [
    - 마늘 $->$ ajo
    - 양파 $->$ cebolla
    - 파 $->$ cebollín/puerro
    - 고추 $->$ ají/chile
    - 당근 $->$ zanahoria
    - 오이 $->$ pepino
    - 호박 $->$ calabaza
    - 감자 $->$ papa
    - 애호박 $->$ calabacín
  ],
  [
    - 고구마 $->$ camote/batata
    - 버섯 $->$ hongo/champiñón
    - 배추 $->$ col china
    - 상추 $->$ lechuga
    - 양배추 $->$ repollo
    - 양상추 $->$ lechuga romana
    - 시금치 $->$ espinaca
    - 고수 $->$ cilantro
  ]
)

== Tienda de Conveniencia (편의점)

*편의점에 뭐가 있어요?* (¿Qué hay en la tienda de conveniencia?)

=== Comida básica
- 빵 $->$ pan
- 우유 $->$ leche
- 물 $->$ agua
- 주스 $->$ jugo
- 음료수 $->$ bebida
- 컵라면 $->$ ramen en vaso
- 삼각김밥 $->$ onigiri/kimbap triangular
- 도시락 $->$ bento/comida preparada

=== Snacks y dulces
- 과자 $->$ galletas/snacks
- 사탕 $->$ caramelos
- 초콜릿 $->$ chocolate
- 젤리 $->$ gomitas
- 껌 $->$ chicle
- 아이스크림 $->$ helado
- 커피 $->$ café

=== Bebidas alcohólicas (술)
- 소주 $->$ soju
- 맥주 $->$ cerveza
- 와인 $->$ vino
- 데킬라 $->$ tequila
- 보드카 $->$ vodka

#pagebreak()

= Repaso de Gramática

== Partículas

=== Partícula de tópico
- ~은/는 $->$ indica el tema de la oración
  - Consonante final $->$ 은
  - Vocal final $->$ 는

=== Partícula de sujeto
- ~이/가 $->$ indica el sujeto
  - Consonante final $->$ 이
  - Vocal final $->$ 가

=== Partícula de objeto
- ~을/를 $->$ indica el objeto directo
  - Consonante final $->$ 을
  - Vocal final $->$ 를

== Ejemplo con partícula de objeto

*Verbo base:*
- 먹어요 $->$ como/comes/come

*Con objeto:*
- 저는 사과를 먹어요. $->$ Yo como manzana.

#v(1cm)

#align(center)[
  #text(size: 14pt, weight: "bold")[축하해요!]
  #v(0.3em)
  #text(size: 11pt)[¡Felicidades!]
]
