#import "../meta/templating.typ": *

// ----------- PROJECTS -----------
#section-heading("Projects")

#resume-subheading-list[
  #resume-project-heading(
    [*Gitlytics* $|$ _Python, Flask, React, PostgreSQL, D3_],
    [],
  )
  #resume-item-list(
    [Developed a full-stack web application using Flask serving a REST API with React as the frontend],
    [Implemented GitHub OAuth to get data from user's repositories. Visualized GitHub data to show collaboration],
    [Used Celery and Redis for asynchronous tasks],
  )

  #resume-project-heading(
    [*Simple Paintball* $|$ _Spigot API, Java, Maven, TravisCI, Git_],
    [],
  )
  #resume-item-list(
    [Developed a Minecraft server plugin to entertain kids during COVID-19 pandemic],
    [Published plugin to websites gaining 2K+ downloads and an average 4.5/5-star review],
    [Implemented continuous delivery using TravisCI to build the plugin upon new a release],
  )
]
