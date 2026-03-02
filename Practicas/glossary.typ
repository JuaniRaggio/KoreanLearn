#set document(
  title: "Vocabulary, Phrases and Type practice",
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
#let note(contenido) = {
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
#let important(contenido) = {
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
      #text(size: 18pt)[$->$]
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

  #text(size: 22pt)[Vocabulary]

  #v(1cm)

  #text(size: 14pt)[
    Vocabulary Practice
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

= Vocabulary - Anki practice

- 진구 $->$  friend / same age person

- 커피 $->$  coffee

- 커피숍 $->$ coffee shop

- 가다 $->$  to go

- 사람 $->$  person

- 학교 $->$  school

- 말하다 $->$ to speak

- 밥 $->$ rice (cooked) / meal

- 잭 $->$ book

- 선생님 $->$ teacher

- 아버지 $->$ father

- 어머니 $->$ mother

- 어디 $->$  where

- 좋다 $->$ to be good / be nice / to like

- 시간 $->$ time

- 마시다 $->$ to drink

- 보다 $->$ to see

- 영화 $->$ movie

- 공부하다 $->$ to study

- 오다 $->$ to come

- 그 $->$ that

- 미국 $->$  USA

- 하다 $->$ to do

- 크다 $->$ to be big / to grow

#note[
  저:  It could be "I" but also "that" (over there)
]


#note[
- 거/것: something
- 이: It could go after the subject but it also means this
- 이거 $->$ this thing
]

- 네 $->$  yes (semi-formal)

- 여자 $->$ woman / female

- 만나다 $->$ to meet

- 오늘 $->$  today

#pagebreak()

= Sentences - Anki Practice

#phrase[
  필요없어요
][
  There is no need / It's unnecessary
][
  필요: need
][
  없어요: to not exist
]

#phrase[
  끝났어요
][
  It has finished
][
  *끝나다: to end*
][
  -ㅆ어요: (simple past)
]

#phrase[
  제 전공은 경제학이에요
][
  My major is economics
][
  *전공*: major
][
  *은*: Subject particle (if previous word ends in consonant)
][
  *경제*: economics
][
  *학*: logic/study/science
][
  *이에요*: present sufix semi-formal
]

#error[
  I always make the same mistake of confusing school, student and study...

  학교: *school*\
  학생: *student*\
  공부: *study*\
]

#phrase[
  버려요
][
  Throw it away
][
  버리다: to throw away
]

#phrase[
  사과없어요
][
  There are no apples
][
  사과:  apple
]

#phrase[
  네.  재미없어요
][
  _It means:_ "Yes, I agree that its not interesting"
][
  에:  yes (in this case, since they are saying that it's not something, it means that the speaker is positive of agreeing)
][
  재미:  fun
]

#phrase[
  쉬워요
][
  It's easy
][
  싑다:  to be easy
]

#phrase[
  파티없어요
][
  There is no party
][
  파티:  party
]

#phrase[
  이거물이에요
][
  This thing is water
][
  이:  After the subject or refers to this
][
  거:  Something
][
  물:  Water
]

#phrase[
  먹어요
][
  We're eating
][
  먹다:  to eat
]

#phrase[
  봐요
][
  I watch
][
  보다:  to watch
]

#phrase[
  네 맞아요
][
  Yes, that's correct
][
  맞다:  to be correct
][
  아요:  present tense semi-formal ending
]

#phrase[
  이거 카메라예요
][
  This thing is a camara / This is a camara
][
  이: This / Sufix of object
][
  거: Something
][
  카메라예요:  Camara + present sufix of to be for vowel ending word
]

#phrase[
  간단해요
][
  It's simple
][
  간단: Simple
][
  간단하다:  to be simple
]

#phrase[
  여러분사랑해요
][
  I love you all
][
  사랑하다:  to love
][
  여러분:  everyone
]

#important[
  사랑하다
]

#phrase[
  밀랍남자
][
  Wax Men
][
  밀랍:  Wax
][
  남자:  Man / Male
]

#phrase[
  안녕히 계세요
][
  Goodbye (If you are leaving and the other person is staying)
]

#phrase[
  같이 공부해요
][
  Let's study together
][
  같이:  together
][
  공부하다:  to study
]

#important[
  같이
]

#phrase[
  여기어디예요
][
  Where is here? = Where is this place?
][
  여기:  here
]

#phrase[
  그거  고양이  아니에요
][
  That's not a cat
][
  고양이:  cat
][
  그: that
][
  거: something
]

#important[
  - 고양이
  - 그
  - 거
]

#phrase[
  시간있어요
][
  Do you have time?
][
  시간:  time (hours)
]

#doubt[
  When we just say Subject + Verb, why can we implicitly say that we are asking to someone?

  In English, it's not exactly the same asking:

  - Do you have time?
  - Have time?

  Even though we could guess by the body language if the person is asking to someone specifically, its not the same. Is there a way of asking explicitly "Do you ...?"
][]

#phrase[
  저 학생 아니에요
][
  I'm not a student
][
  아니에요:  am not
]

#phrase[
  차를 마셔요
][
  I drink tea / Drink some tea
][
  차:  tea
][
  마시다:  to drink
][
  를:  object particle
]

#doubt[
  In this case, how could we differenciate between:

  - "I drink tea"
  - "Drink some tea"
  - "He drinks tea" (not sure if this one is also equivalent)

  _I guess the only way it would be by context_
  _Its easier to use beacuse there are less options, but harder to 
  understand cause of the same reason_
][
  Without 저 its like a suggestion, else you could guess by context. In a text
  it should be explicit
]

#phrase[
  밥을 먹어요
][
  I eat a meal / He eats a meal
][
  밥:  meal
][
  을:  object marking particle
]


#phrase[
  죄송합니다
][
  It's easy
][
  쉽다: to be easy
]



