FROM ubuntu:xenial
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && \
    apt-get install -qy \
    curl \
    jq \
    texlive-full \
    python-pygments \
    gnuplot \
    make \
    git \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN wget -o /tmp/pandoc.deb https://github.com/jgm/pandoc/releases/download/2.14.1/pandoc-2.14.1-1-amd64.deb && \
    dpkg -i /tmp/pandoc.deb && \
    rm -f /tmp/pandoc.deb

WORKDIR /data
VOLUME ["/data"]