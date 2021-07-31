SRC_MAIN:=main.tex
OUTPUT_DIR:=build/
ROOT_DIR:=resume/
OUTFILE_PREFIX:=resume

PANDOC_FLAGS:=--standalone --self-contained --mathjax --from latex --to html5 --css=../static/pandoc_styles.css --include-in-header=../static/allow_iframe_embed.html
PDFTEX_FLAGS:=-output-directory=/data/${OUTPUT_DIR}/pdf/ -output-format=pdf -halt-on-error

MAKE4HT_FLAGS:=--utf8  --output-dir /data/${OUTPUT_DIR}/html/ 
MAKE4HT_OPTS:=html5+mathjaxnode+svg-inline+fonts

.PHONY: all docker pdf html html2

docker:
	docker build -t latex .

# Uses `pandoc`
html:
	docker run --rm -i -v "${PWD}":/data latex /bin/bash -c "cd /data/${ROOT_DIR} && mkdir -p /data/${OUTPUT_DIR}/html/ && pandoc ${PANDOC_FLAGS} -s ${SRC_MAIN} -o /data/${OUTPUT_DIR}/html/${OUTFILE_PREFIX}.html"

# Uses `make4ht` - not working great
html2:
	docker run --rm -i -v "${PWD}":/data latex /bin/bash -c "cd /data/${ROOT_DIR} && mkdir -p /data/${OUTPUT_DIR}/html/ && make4ht ${MAKE4HT_FLAGS} ${SRC_MAIN} \"${MAKE4HT_OPTS}\""

pdf:
	docker run --rm -i -v "${PWD}":/data latex /bin/bash -c "cd /data/${ROOT_DIR} && mkdir -p /data/${OUTPUT_DIR}/pdf/ && pdflatex ${PDFTEX_FLAGS} ${SRC_MAIN}"

all: docker pdf html
