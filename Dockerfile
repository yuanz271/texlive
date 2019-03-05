FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y texlive-full biber fonts-font-awesome wget \
    && apt-get clean
RUN wget -O pandoc.deb https://github.com/jgm/pandoc/releases/download/2.7/pandoc-2.7-1-amd64.deb \
    && dpkg -i pandoc.deb
