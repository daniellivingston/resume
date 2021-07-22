#!/usr/bin/env bash

JOBNAME="livingston_daniel_resume.pdf"

docker build -t pdflatex -f Dockerfile ./
cd ../
mkdir build || echo ""
docker run -it -v $(pwd):/var/local pdflatex bash -c "pdflatex -jobname=${JOBNAME} main.tex"
