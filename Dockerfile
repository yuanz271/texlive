FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -qq update \
    && apt-get -qq install -y texlive-full biber latexmk wget \
    && apt-get clean
RUN wget -q -O pandoc.deb https://github.com/jgm/pandoc/releases/download/2.7/pandoc-2.7-1-amd64.deb \
    && dpkg -i pandoc.deb \
    && rm pandoc.deb