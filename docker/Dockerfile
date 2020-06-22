
FROM debian:testing-slim

RUN apt-get -qq update && apt-get install -y \
  biber \
  texlive-bibtex-extra \
  texlive-fonts-extra \
  texlive-fonts-recommended \
  texlive-formats-extra \
  texlive-lang-czechslovak \
  texlive-lang-english \
  texlive-latex-extra \
  texlive-latex-recommended \
  texlive-luatex \
  texlive-pictures \
  texlive-publishers \
  texlive-science \
  texlive \
  ghostscript \
  make

RUN rm -fr /var/lib/apt /var/cache/apt
