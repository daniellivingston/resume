// ==== INLINE SEPARATOR ====
// Matches \idot: tiny centered bullet
#let idot = h(0.3em) + sym.bullet + h(0.3em)

// ==== CODE MONOSPACE ====
#let code(content) = raw(content)

// ==== SECTION HEADING ====
// Matches \titleformat{\section}: large, scshape, raggedright, rule below
// \vspace{-4pt} before, rule, \vspace{-5pt} after
#let section-heading(title) = {
  v(-4pt)
  block(width: 100%)[
    #text(size: 12pt, weight: "regular", font: "New Computer Modern")[
      #smallcaps(title)
    ]
    #v(-10pt)
    #line(length: 100%, stroke: 0.4pt + black)
    #v(-5pt)
  ]
}

// ==== HEADER BOX ====
// Matches tcolorbox headerbox: sharp corners, 0.3mm rule, white bg,
// title centered bold large at top center (yshift=-4mm)
#let header-box(title: "", body) = {
  v(2pt)
  block(
    width: 100%,
    stroke: 0.3mm + black,
    inset: (top: 14pt, left: 6pt, right: 6pt, bottom: 6pt),
  )[
    // Floating title - positioned at top center
    #place(top + center, dy: -20pt)[
      #box(fill: white, inset: (x: 4pt))[
        #text(size: 12pt, weight: "bold")[#title]
      ]
    ]
    #body
  ]
  v(2pt)
}

// ==== RESUME SUBHEADING ====
// Matches \resumeSubheading{org}{date}{role}{location}
// 2-row grid: bold org + right date, italic small role + italic small location
// \vspace{-2pt} before item, \vspace{-7pt} after
#let resume-subheading(org, date, role, location) = {
  v(-2pt)
  block(width: 100%, spacing: 0pt)[
    #grid(
      columns: (1fr, auto),
      gutter: 0pt,
      [*#org*], [#date],
      [#text(style: "italic", size: 9pt)[#role]], [#text(style: "italic", size: 9pt)[#location]],
    )
  ]
  v(-7pt)
}

// ==== RESUME SUB-SUBHEADING ====
// Matches \resumeSubSubheading{role}{date}
// 1-row italic small grid
#let resume-sub-subheading(role, date) = {
  block(width: 100%)[
    #grid(
      columns: (1fr, auto),
      gutter: 0pt,
      [#text(style: "italic", size: 9pt)[#role]], [#text(style: "italic", size: 9pt)[#date]],
    )
  ]
  v(-7pt)
}

// ==== RESUME PROJECT HEADING ====
// Matches \resumeProjectHeading{content}{date}
// 1-row grid: left small content, right date
#let resume-project-heading(content, date) = {
  block(width: 100%)[
    #grid(
      columns: (1fr, auto),
      gutter: 0pt,
      [#text(size: 9pt)[#content]], [#text(size: 9pt)[#date]],
    )
  ]
  v(-7pt)
}

// ==== RESUME ITEM ====
// Matches \resumeItem: small text bullet, \vspace{-2pt}
#let resume-item(content) = {
  list(
    indent: 1em,
    body-indent: 0.5em,
    marker: [•],
    text(size: 9pt)[#content #v(-2pt)],
  )
}

// ==== RESUME ITEM LIST (wrapper) ====
// Matches \resumeItemListStart / \resumeItemListEnd: adds \vspace{-5pt} at end
#let resume-item-list(..items) = {
  for item in items.pos() {
    resume-item(item)
  }
  v(-5pt)
}

// ==== RESUME SUBHEADING LIST ====
// Matches \resumeSubHeadingListStart / End: leftmargin=0.15in, no label
// We handle this as a block with slight left indent
#let resume-subheading-list(body) = {
  block(inset: (left: 0pt), body)
}
