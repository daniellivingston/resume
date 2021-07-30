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

WORKDIR /artifacts
RUN wget https://github.com/jgm/pandoc/releases/download/2.14.1/pandoc-2.14.1-1-amd64.deb && \
    dpkg -i pandoc-2.14.1-1-amd64.deb && \
    rm -f pandoc-2.14.1-1-amd64.deb

WORKDIR /data
VOLUME ["/data"]