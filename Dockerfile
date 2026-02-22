FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    make \
    latexmk \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-pictures \
    texlive-bibtex-extra \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /work

CMD ["make", "pdf"]
