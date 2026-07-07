// Common styling for all Bamberg Tavern books
// Uses EB Garamond for body text and Libertinus for headings
// to evoke the early 17th-century setting.

#let bamberg-book(
  title: "",
  subtitle: "",
  author: "Bamberg Tavern RPG",
  lang: "en",
  body,
) = {
  set document(title: title, author: author)
  set text(font: "EB Garamond", size: 11pt, lang: lang)
  set heading(numbering: "1.1")
  set par(justify: true, leading: 0.65em)
  set page(
    paper: "a4",
    margin: (top: 2.5cm, bottom: 2.5cm, left: 2cm, right: 2cm),
    header: context {
      if counter(page).get().first() > 1 {
        set text(size: 9pt, style: "italic")
        title
        h(1fr)
        counter(page).display()
      }
    },
  )

  // Title page
  page(margin: (top: 6cm))[
    #set align(center)
    #set text(font: "Libertinus Serif")
    #text(size: 28pt, weight: "bold")[#title]
    #v(1em)
    #text(size: 16pt, style: "italic")[#subtitle]
    #v(4em)
    #text(size: 12pt)[#author]
  ]

  pagebreak()

  // Table of contents
  outline(depth: 3)
  pagebreak()

  // Body
  body
}

// Styled example box
#let example(title: none, body) = {
  block(
    width: 100%,
    inset: 12pt,
    radius: 4pt,
    fill: luma(245),
    stroke: (left: 3pt + luma(180)),
  )[
    #if title != none {
      [*#title* \ ]
    }
    #set text(size: 10pt)
    #body
  ]
}

// Rule callout
#let rule-box(body) = {
  block(
    width: 100%,
    inset: 12pt,
    radius: 4pt,
    fill: rgb("#f5f0e8"),
    stroke: 1pt + rgb("#8b7355"),
  )[
    #body
  ]
}

// Dialogue formatting for scenes
#let gm(body) = {
  [*Game Master:* #body]
}

#let player(name, body) = {
  [*#name:* #body]
}

// Dice notation
#let d6 = [d6]
