# My Resumé

[![Compile PDF](https://github.com/daniellivingston/resume/actions/workflows/build-latex.yml/badge.svg)](https://github.com/daniellivingston/resume/actions/workflows/build-latex.yml)
[![Compile HTML](https://github.com/daniellivingston/resume/actions/workflows/build-html.yml/badge.svg)](https://github.com/daniellivingston/resume/actions/workflows/build-html.yml)

My (probably, maybe?) up-to-date resume, written in LaTeX, and compiled/pushed as both PDF and HTML via GitHub Actions.

## Building Locally

A Docker container with the necessary components is used to drive local development and PDF / HTML export.

### Build the Docker container

```sh
$ make docker
```

This creates a container with the default name of `latex`.

### Compile Resume as PDF

```sh
$ make pdf
```

The exported files are found in `build/pdf/`.

### Compile Resume as HTML

```sh
$ make html
```

The exported files are found in `build/html/`.

## Inspiration / Sources

- https://github.com/jakegut/resume
- https://github.com/sb2nov/resume

## Viewing

- You can [view the PDF here](https://github.com/daniellivingston/resume/blob/pdf/livingston_daniel_resume.pdf).
- You can [view the HTML here](https://daniellivingston.github.io/resume).
- It's also rendered live [on my website here](https://daniel-livingston.com/resume/).