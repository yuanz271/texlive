FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update \
    && apt-get -y install texlive-xetex texlive-fonts-extra biber latexmk wget \
    && apt-get -y clean
RUN wget -q -O pandoc.deb https://github.com/jgm/pandoc/releases/download/2.7/pandoc-2.7-1-amd64.deb \
    && dpkg -i pandoc.deb \
    && rm pandoc.deb
