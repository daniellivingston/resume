// Page setup - matches LaTeX: letterpaper, 0.30in margin
#set page(paper: "us-letter", margin: 0.30in)

// Base text - matches LaTeX: 10pt, raggedright
#set text(size: 10pt)
#set par(justify: false, leading: 0.55em)

// Remove default list indent
#set list(indent: 0pt, body-indent: 0.5em)

// Hyperlink styling - no special color (hidelinks equivalent)
#show link: it => it
