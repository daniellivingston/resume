// ---------------------------------------------------
// Single-Page Software Engineering Resume
// ---------------------------------------------------
// Author : Daniel Livingston
// Based off:
//    - https://github.com/jakegut/resume
//    - https://github.com/sb2nov/resume
// License : MIT
// ---------------------------------------------------

// Page and text settings (set rules must live in main.typ scope)
#set page(paper: "us-letter", margin: 0.30in)
#set text(size: 10pt)
#set par(justify: false, leading: 0.55em)
#show link: it => it

#include "src/header.typ"
#include "src/experience.typ"
#include "src/education.typ"
// #include "src/projects.typ"
#include "src/technologies.typ"
#include "src/honors.typ"
