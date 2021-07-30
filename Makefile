SRC_MAIN:=main.tex
OUTPUT_DIR:=build/
ROOT_DIR:=resume/

PANDOC_FLAGS:=--standalone --mathjax --from latex --to html5
PDFTEX_FLAGS:=-output-directory=/data/${OUTPUT_DIR}/pdf/ -output-format=pdf -halt-on-error

.PHONY: all docker pdf html

docker:
	docker build -t latex .

html:
	docker run --rm -i -v "${PWD}":/data latex /bin/bash -c "cd /data/${ROOT_DIR} && mkdir -p /data/${OUTPUT_DIR}/html/ && pandoc ${PANDOC_FLAGS} -s ${SRC_MAIN} -o /data/${OUTPUT_DIR}/html/resume.html"

pdf:
	docker run --rm -i -v "${PWD}":/data latex /bin/bash -c "cd /data/${ROOT_DIR} && mkdir -p /data/${OUTPUT_DIR}/pdf/ && pdflatex ${PDFTEX_FLAGS} ${SRC_MAIN}"

all: docker pdf html
