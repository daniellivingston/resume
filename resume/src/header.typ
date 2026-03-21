#import "../meta/templating.typ": *
#import "../meta/contact.typ": *

// ==================================================
//                      FULL NAME
//             city | phone | email | web
// ==================================================
#align(center)[
  #text(size: 24pt, weight: "bold")[#smallcaps(fullname)]
  #v(3pt)
  #text(size: 9pt)[
    #city $|$
    #phone $|$
    #link(emaillink)[#underline(emailtext)]
    // $|$ #link(websitelink)[#underline(websitetext)]
  ]
]

// ===================================== //
// HEADER: with bounding box
// ===================================== //
#header-box(title: "Accomplished Scientific & GPU Software Engineer")[
  #align(center)[
    #text(size: 9pt)[
      GPU & Graphics Programming #idot Systems Programming #idot Computational Geometry #idot GIS/Geospatial Analysis \
      Project Management #idot Strong Communication #idot Great Collaborator #idot Creative Problem Solver \
      D.O.E., LANL & AMD Award Winner #idot LANL Top Performer #idot Security Clearance: Top Secret/D.O.E. Q-Level (Expired)\
    ]
  ]
]
